#!/bin/bash
pyflakes=/usr/local/Cellar/python/2.7.1/bin/pyflakes
pep8=/usr/local/Cellar/python/2.7.1/bin/pep8

$pyflakes "$1"
$pep8 --ignore=E501 --repeat "$1"
true
