# frozen_string_literal: true

require 'set'

module BuildTools
  class FileWriter

    def initialize(options)
      @directory = options.fetch(:directory)
      @custom = options[:custom] || false
    end

    def write_files(generator)
      generator.each do |path, code|
        write_file(File.join(@directory, path), code)
      end
    end

    def write_file(path, code)
      if File.exist?(path)
        if skip?(path)
          skip(path)
        else
          replace(path, code)
        end
      else
        create(path, code)
      end
    end

    def skip?(path)
      path == "#{@directory}/VERSION" ||
      path == "#{@directory}/features/step_definitions.rb" ||
      path.match(/^#{@directory}\/lib\/aws-sdk-\w+\/customizations\.rb$/)
    end

    def skip(path)
      log("    skip #{gems_path(path)}")
    end

    def replace(path, code)
      log(" replace #{gems_path(path)}")
      write(path, code)
    end

    def create(path, code)
      log("  create #{gems_path(path)}")
      write(path, code)
    end

    def write(path, code)
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'wb') do |file|
        file.write(code)
      end
    end

    def log(msg)
      puts(msg) if ENV['VERBOSE']
    end

    def gems_path(path)
      return path if @custom
      'gems/' + path.split('/gems/', 2)[1]
    end

  end
end
