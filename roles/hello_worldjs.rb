name "hello_worldjs"
description "Sets up a hello world Node.js app"
run_list ["recipe[windows_extras::chef_client]", "recipe[nodejs]", "recipe[hello_worldjs]"]
default_attributes chef_client: { interval: 10 }
