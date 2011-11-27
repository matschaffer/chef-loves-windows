name "iis_server"
description "Sets up an IIS server"
run_list ["recipe[iis]", "recipe[windows_extras::chef_client]"]
default_attributes chef_client: { interval: 10 }, iis: { accept_eula: true }