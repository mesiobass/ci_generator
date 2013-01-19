#!/bin/bash

##########################################################################
# custom_controller_generate.sh
#
# * Rails風にviewでlayoutを使用できるカスタムコントローラを設置する
#
##########################################################################

CI_ROOT=$(cd `dirname $0` && cd ../../../ && pwd)                      # CI のルートパス
templates_dir_path=$(cd `dirname $0` && cd ../ && cd templates && pwd) # templatesディレクトリ
app_dir_path=${CI_ROOT}/application                                    # applicationディレクトリ


# カスタムコントローラをcoreディレクトリにコピー
printf "==> Copy Custom Controller.\n"
cp $templates_dir_path/MY_Controller.php $app_dir_path/core/


# layoutディレクトリ作成
printf "==> Create layout directory.\n"
mkdir -p $app_dir_path/views/layout

printf "Finish.\n"
exit 0

