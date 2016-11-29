require 'set'

module BuildTools
  class FileWriter

    def initialize(options)
      @directory = options.fetch(:directory)
    end

    def write_files(generator)
      generator.each do |path, code|
        write_file(File.join(@directory, path), code)
      end
    end

    def write_file(path, code)
      if File.exists?(path)
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
      log("    skip #{path}")
    end

    def replace(path, code)
      log(" replace #{path}")
      write(path, code)
    end

    def create(path, code)
      log("  create #{path}")
      write(path, code)
    end

    def write(path, code)
      File.open(path, 'wb') do |file|
        file.write(code)
      end
    end

    def log(msg)
      puts(msg)
    end

  end
end
