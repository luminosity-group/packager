require 'juicer'
require 'tmpdir'

module Packager
  class Packager
    def initialize(options)
      @options = options
      build
    end

    def build
      current_dir = Dir.pwd
      Dir.mktmpdir do |build_dir|
        system "cp -r . #{build_dir}"
        Dir.chdir(build_dir)

        unless @options[:stylesheets].empty?
          puts "Minifying and merging stylesheets"
          merge(@options[:app_stylesheet], @options[:stylesheets])
        end
        unless @options[:javascripts].empty?
          puts "Minifying and merging javascripts"
          merge(@options[:app_javascript], @options[:javascripts])
        end
        zip
        system "cp #{@options[:package]} #{current_dir}"
      end
    end

    def merge(output, input)
      system "juicer merge --force -s -i -o #{output} #{input}"
    end

    def zip
      system "zip #{@options[:package]} #{@options[:app_stylesheet]} #{@options[:app_javascript]} #{@options[:extras]}"
    end
  end
end
