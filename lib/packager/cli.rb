module Packager
  class Cli
    def initialize
      
    end

    def parse(args)
      options = Options.new
    end

    def self.run(argv)
      packager = self.new
      packager.parse(argv)
    end
  end
end
