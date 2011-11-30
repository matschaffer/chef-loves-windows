require 'chef/shell_out'

class Chef
  class ShellOut
    def valid_exit_codes
      [0,42]
    end
  end
end