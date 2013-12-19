name "base"
description "Base server role"
def_run_list = ["recipe[chef-client::delete_validation]", "recipe[motd]", "recipe[users]" ]
env_run_lists({
	"_default" => def_run_list,
	"dev" => def_run_list,
	"production" => [ "recipe[motd]" ]
	})
