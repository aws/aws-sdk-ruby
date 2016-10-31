require 'fileutils'
require 'logger'

module BuildTools
  class FileWriter

    NEW = '+'
    REPLACE = 'r'
    SKIP = '.'

    # @param [String] path
    # @option options [Logger] :logger (Logger.new($stdout))
    def initialize(path, options = {})
      @path = path
      @logger = options[:logger] || default_logger
    end

    # @return [String]
    def path
      @path
    end

    # Writes `data` to {#path}. Replaces the file if it already exists.
    # Creates directories as needed.
    # @param [String] data
    # @return [void]
    def write(data)
      log(File.exists?(path) ? REPLACE : NEW)
      open_file do |file|
        if ruby_file?
          file.write(GENERATED_SRC_WARNING)
          file.write("\n\n")
        end
        file.write(data)
      end
    end

    # Writes `data` to {#path} unless a file is already present.
    # Creates directories as needed.
    # @param [String] data
    # @return [void]
    def bootstrap(data)
      if File.exists?(path)
        log(SKIP)
      else
        write(data)
      end
    end

    private

    def log(mode)
      @logger.info("#{mode} #{path}\n")
    end

    def open_file(&block)
      FileUtils.mkdir_p(File.dirname(path))
      File.open(path, 'wb') do |file|
        yield(file)
      end
    end

    def ruby_file?
      File.extname(path) == '.rb'
    end

    def default_logger
      logger = Logger.new($stdout)
      logger.formatter = proc {|severity, datetime, progname, msg| msg }
      logger
    end

  end
end
