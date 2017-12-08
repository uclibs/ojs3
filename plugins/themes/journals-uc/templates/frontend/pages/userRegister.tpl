{**
* templates/frontend/pages/userRegister.tpl
*
* Copyright (c) 2014-2017 Simon Fraser University Library
* Copyright (c) 2003-2017 John Willinsky
* Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
*
* User registration form.
*}
{include file="frontend/components/header.tpl" pageTitle="user.register"}

<div id="main-content" class="page page_register">

	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="user.register"}

	<form class="pkp_form register" id="register" method="post" action="{url op="register"}">
		{csrf}

		{if $source}
			<input type="hidden" name="source" value="{$source|escape}" />
		{/if}

		{include file="common/formErrors.tpl"}

		{include file="frontend/components/registrationForm.tpl"}

		{* When a user is registering with a specific journal *}
		{if $currentContext}

			{* Users are opted into the Reader and Author roles in the current
			   journal/press by default. See RegistrationForm::initData() *}
			{assign var=contextId value=$currentContext->getId()}
			{foreach from=$readerUserGroups[$contextId] item=userGroup}
				{if in_array($userGroup->getId(), $userGroupIds)}
					{assign var="userGroupId" value=$userGroup->getId()}
					<input type="hidden" name="readerGroup[{$userGroupId}]" value="1">
				{/if}
			{/foreach}
			{foreach from=$authorUserGroups[$contextId] item=userGroup}
				{if in_array($userGroup->getId(), $userGroupIds)}
					{assign var="userGroupId" value=$userGroup->getId()}
					<input type="hidden" name="authorGroup[{$userGroupId}]" value="1">
				{/if}
			{/foreach}

			{* Allow the user to sign up as a reviewer *}
			{assign var=userCanRegisterReviewer value=0}
			{foreach from=$reviewerUserGroups[$contextId] item=userGroup}
				{if $userGroup->getPermitSelfRegistration()}
					{assign var=userCanRegisterReviewer value=$userCanRegisterReviewer+1}
				{/if}
			{/foreach}
			{if $userCanRegisterReviewer}
				<fieldset class="reviewer">
					<legend>
						{translate key="user.reviewerPrompt"}
					</legend>
					<div class="fields">
						<div id="reviewerOptinGroup" class="form-group optin">
							{foreach from=$reviewerUserGroups[$contextId] item=userGroup}
								{if $userGroup->getPermitSelfRegistration()}
									<label>
										{assign var="userGroupId" value=$userGroup->getId()}
										<input type="checkbox" name="reviewerGroup[{$userGroupId}]" value="1"{if in_array($userGroupId, $userGroupIds)} checked="checked"{/if}>
										{translate key="user.reviewerPrompt.userGroup" userGroup=$userGroup->getLocalizedName()}
									</label>
								{/if}
							{/foreach}
						</div>
					</div>
				</fieldset>
			{/if}
		{/if}

		{include file="frontend/components/registrationFormContexts.tpl"}

		{* recaptcha spam blocker *}
		{if $reCaptchaHtml}
			<fieldset class="recaptcha_wrapper">
				<div class="fields">
					<div class="form-group recaptcha">
						{$reCaptchaHtml}
					</div>
				</div>
			</fieldset>
		{/if}

		<div class="buttons">
			<button class="btn btn-primary submit" type="submit">
				{translate key="user.register"}
			</button>

			{url|assign:"rolesProfileUrl" page="user" op="profile" path="roles"}
			<a class="btn btn-default" href="{url page="login" source=$rolesProfileUrl}" class="login">
				{translate key="user.login"}
			</a>
		</div>
	</form>


{include file="common/frontend/footer.tpl"}
