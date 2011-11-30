name "hello_worldjs"
description "Sets up a hello world Node.js app"
run_list ["recipe[nodejs]", "recipe[hello_worldjs]"]