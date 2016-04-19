#!/bin/bash
called_path=${0%/*}
stripped=${called_path#[^/]*}
real_path=`pwd`$stripped
#echo "called path: $called_path"
#echo "stripped: $stripped"
#echo "pwd: `pwd`"
echo "real path: $real_path"

connstring=
USERPWD=
#connstring=--ibname /F"~/projects/onec/itil"
#USERPWD=--db-user base --db-pwd 234567890
export RUNNER_ENV=production

oscript $real_path/runner.os decompileepf ./build/epf/ ./epf/ $connstring $USERPWD 

