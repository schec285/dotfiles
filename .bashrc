# 履歴ファイルサイズとbash起動時の読み込みサイズ
HISTFILESIZE=100000
HISTSIZE=100000

# fzfのインクリメンタル検索を有効化する
## source path/key-bindings.bash

# zoxide設定
## eval "$(zoxide init bash)"

####### エイリアス ######
# fzfでプレビューウィンドウを使う
## alias fzfp='fzf --preview "cat {}" --preview-window=up:30% --color:border=#ffff00'
alias ehist='vim ~/.bash_history'

####### 関数定義 #######
function e() {
    path=$1
    if [[ ! -d $1 ]]; then
        path=$(dirname $path)
    fi
    explorer $(cygpath -w $path)
}
