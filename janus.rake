vim_plugin_task "nerdtree", "git://github.com/hyperbolist/nerdtree.git"
vim_plugin_task "minibufexpl", "git://github.com/fholgado/minibufexpl.vim.git"
vim_plugin_task "bufkill", "git://github.com/vim-scripts/bufkill.vim.git"
vim_plugin_task "vim-ruby-debugger", "git://github.com/astashov/vim-ruby-debugger.git"
vim_plugin_task "birds-of-paradise" do
 sh " curl https://github.com/kennethlove/Birds-of-Paradise-VIM-Theme/raw/master/birds_of_paradise.vim > colors/birds-of-paradise.vim"
end
skip_vim_plugin "color-sampler"
skip_vim_plugin "conque"
skip_vim_plugin "haml"
