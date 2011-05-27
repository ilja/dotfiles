def remove_plugin_task(name)
  task(name).clear
  task("#{name}:pull").clear
  task("#{name}:install").clear
  file(File.expand_path("tmp/#{name}") => "tmp").clear
end

def override_plugin_task(name, repo=nil, &block)
  remove_plugin_task name
  vim_plugin_task name, repo, &block
end

def extend_plugin_task(name, &block)
  task "#{name}:install" do
    yield block
  end
end

#skip_vim_plugin "snipmate"
skip_vim_plugin "supertab"
#vim_plugin_task "autocomplpop", "git://github.com/vim-scripts/AutoComplPop.git"
#vim_plugin_task "snipmate1", "git://github.com/garbas/vim-snipmate.git"
#vim_plugin_task "snipmate2", "git://github.com/msanders/snipmate.vim.git"
#vim_plugin_task "vim-addon-mw-utils" "git://github.com/MarcWeber/vim-addon-mw-utils.git"
#vim_plugin_task "tlib" "git://github.com/tomtom/tlib_vim.git"
#vim_plugin_task "neocomplcache", "git://github.com/Shougo/neocomplcache.git"
override_plugin_task "nerdtree", "git://github.com/scrooloose/nerdtree.git"

vim_plugin_task "scss", "https://github.com/cakebaker/scss-syntax.vim.git"
vim_plugin_task "minibufexpl", "git://github.com/fholgado/minibufexpl.vim.git"
vim_plugin_task "bufkill", "git://github.com/vim-scripts/bufkill.vim.git"
vim_plugin_task "vim-ruby-debugger", "git://github.com/astashov/vim-ruby-debugger.git"
vim_plugin_task "birds-of-paradise" do
 sh " curl https://github.com/kennethlove/Birds-of-Paradise-VIM-Theme/raw/master/birds_of_paradise.vim > colors/birds-of-paradise.vim"
end
skip_vim_plugin "color-sampler"
skip_vim_plugin "conque"
skip_vim_plugin "haml"

vim_plugin_task "css-color", "https://github.com/ap/vim-css-color.git" do
  sh "cp after/syntax/{css,less}.vim"
  sh "cp after/syntax/{css,scss}.vim"
end

vim_plugin_task "snipmate", "git://github.com/msanders/snipmate.vim.git" do
	sh "rm snippets/*.snippets"
end

vim_plugin_task "html5-syntax",     "git://github.com/othree/html5-syntax.vim.git"


vim_plugin_task "html5",            "git://github.com/othree/html5.vim.git" do
  Dir.chdir "tmp/html5" do
    sh "make install"
  end
end


