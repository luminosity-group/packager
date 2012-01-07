require 'yaml'

module Packager
  CONFIG_FILE = "Packfile"
  class Options
    def initialize
      if !File.exists?(CONFIG_FILE)
        puts "No Packfile in current directory"
        exit_now!
      end
    end
  end
end
