name "hello_world"
description "Sets up a hello world ASP app"
run_list ["role[iis]", "recipe[hello_world]"]