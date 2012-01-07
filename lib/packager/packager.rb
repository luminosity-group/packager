require 'juicer'
require 'tmpdir'

module Packager
  class Packager
    def initialize(options)
      @options = options
      build
    end

    def build
      build_dir   = Dir.tmpdir
      current_dir = Dir.pwd
      system "cp -r . #{build_dir}"
      Dir.chdir(build_dir)

      unless @options[:stylesheets].empty?
        puts "Minifying and merging stylesheets"
        merge(@options[:app_stylesheet], @options[:stylesheets])
      end
      unless @options[:javascripts].empty?
        puts "Minifying and merging javascripts"
        merge(@options[:app_javascripts], @options[:javascripts])
      end
    end

    def merge(output, input)
      # Juicer::Cli.run("merge --force -s -i -o #{output} #{input}")
    end
  end
end
