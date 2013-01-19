#!/bin/bash

#########################################################################
# first_generate.sh (仮
# 
# * {CI_ROOT}/script/ci_generator/bin以下にこのシェルスクリプトがあることを前提とする
#
########################################################################

CI_ROOT=$(cd `dirname $0` && cd ../../../ && pwd) # CI のルートパス
public_dir_path=${CI_ROOT}/public                 # 作成するpublicディレクトリ


printf "CI Root Path is ..\n"
printf "${CI_ROOT}\n\n"

# public ディレクトリにjs、css、imagesディレクトリを作成する
printf "==> Create public directory.\n"
printf "====> Create js directory.\n"
mkdir -p $public_dir_path/js

printf "====> Create css directory.\n"
mkdir -p $public_dir_path/css

printf "====> Create images directory.\n"
mkdir -p $public_dir_path/images


printf "==> Move index.php\n"
mv index.php $public_dir_path


printf "Finish.\n"
exit 0
