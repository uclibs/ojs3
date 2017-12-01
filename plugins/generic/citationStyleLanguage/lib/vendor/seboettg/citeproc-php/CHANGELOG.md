# CHANGELOG

## 2.0.2 - 2017-10-04

* bugfix for issue [41](https://github.com/seboettg/citeproc-php/issues/41): fixed missing suppression of substituted values
* bugfix for issue [42](https://github.com/seboettg/citeproc-php/issues/42): citeproc-php caused a fatal error if php 5.6 was used
* citeproc-php uses now version 1.2 of [seboettg/collection](https://packagist.org/packages/seboettg/collection)

## 2.0.1 - 2017-05-23

* bugfix for issue [36](https://github.com/seboettg/citeproc-php/issues/36).
* bugfix for issue [37](https://github.com/seboettg/citeproc-php/issues/37).
* solves a problem of exceeded script runtime which sometimes occurs while running `composer update`. Now, 
the depended citation styles and locales are not longer composer dependencies but will be cloned by a shell script instead which simply will triggered from `composer update`.

## 2.0.0 - 2017-05-11

* 1st stable release
* fix issues that causing if styles using uncertain dates
* add info node parser and getInfo() method in Context class. Thus, it's now possible to get meta data of given stylesheet
* fix issues in et-al abbreviation which was appearing in citation

## 2.0.0-beta 2017-05-01

* beta release
* all features of milestone "Version 2.0" have been implemented
