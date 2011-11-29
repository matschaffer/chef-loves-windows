name "iis_server"
description "Sets up an IIS server"
run_list ["recipe[iis]"]
default_attributes iis: { accept_eula: true }