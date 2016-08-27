# https://github.com/lucapette/dotfiles/blob/master/pryrc
# http://lucapette.com/pry/pry-everywhere/
# https://github.com/pry/pry/wiki/Customization-and-configuration#pager
# https://github.com/asok/projectile-rails#debugging
# https://github.com/pry/pry/wiki/Customization-and-configuration#Config_prompt
Pry.config.pager = false
Pry.config.prompt_name = File.basename(Dir.pwd)
# I am not a Vim person anymore
#Pry.config.editor = 'vim'
