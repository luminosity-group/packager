require 'yaml'
require 'methadone'

module Packager
  CONFIG_FILE = "Packfile"
  class Options
    def initialize
      load_yaml
    end

    # Loads a Packfile configuration
    def load_yaml
      if !File.exists?(CONFIG_FILE)
        puts "No Packfile in current directory"
        exit
      end
      config = YAML::load(File.open(CONFIG_FILE))
      @options = {
        :package          => config['package']      || 'assets.zip',
        :app_styleshseet  => config['stylesheet']   || 'application.css',
        :app_javascript   => config['javascript']   || 'application.js',
        :stylesheets      => config['stylesheets']  || [ ],
        :javascripts      => config['javascripts']  || [ ],
        :extras           => config['extras']       || [ ],
      }

      @options[:stylesheets] = @options[:stylesheets].join(" ")
      @options[:javascripts] = @options[:javascripts].join(" ")
      @options[:extras]      = @options[:extras].join(" ")
    end

    def [](key)
      @options[key]
    end
  end
end
