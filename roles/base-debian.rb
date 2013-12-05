#base-debian.rb
name "base-debian"
description "Base role for Debian servers"
run_list "recipe[apt]","recipe[mc]","recipe[chef-client::cron]"
