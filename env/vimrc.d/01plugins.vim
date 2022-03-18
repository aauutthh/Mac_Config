if ScriptRunFlagCheckAndSet("g:RcPluginsFlag")
  finish
endif

set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call vundle#begin('~/.vim/plugged')
"""  外观插件
" Plug 'junegunn/seoul256.vim'
" Plug 'junegunn/goyo.vim'
" Plug 'junegunn/limelight.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fsouza/go.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'fatih/vim-go'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'taglist.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" ctrl+p 提示
Plugin 'kien/ctrlp.vim'
Plugin 'orestis/pysmell'
"Plugin 'webframp/pysmell.vim'
Plugin 'daeyun/vim-matlab', { 'do': function('DoRemote') }
Plugin 'pangloss/vim-javascript'
Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
call vundle#end()

filetype plugin indent on
