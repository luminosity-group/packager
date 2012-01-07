require 'packager/options'
require 'packager/packager'

module Packager
  class Cli
    def initialize
      
    end

    def parse(args)
      packager = Packager.new(Options.new)
    end

    def self.run(argv)
      packager = self.new
      packager.parse(argv)
    end
  end
end
