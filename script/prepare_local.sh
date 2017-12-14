#!/bin/bash

# Disable patch for production https default

cp ./script/PKPRequest.inc.php.DEVELOP ./lib/pkp/classes/core/PKPRequest.inc.php
mkdir ./public/
touch ./public/index.html
