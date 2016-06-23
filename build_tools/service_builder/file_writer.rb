require 'fileutils'
require 'logger'

module BuildTools
  class ServiceBuilder
    class FileWriter

      NEW = 'n'
      REPLACE = 'r'
      SKIP = '.'

      # @param [String] path
      def initialize(path, logger:default_logger)
        @path = path
        @logger = logger
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
        if ruby_file?
          _write(code_gen_warning + data)
        else
          _write(data)
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
          _write(data)
        end
      end

      private

      def log(mode)
        @logger.info("#{mode} #{path}\n")
      end

      def _write(data)
        FileUtils.mkdir_p(File.dirname(path))
        File.open(path, 'wb') do |file|
          file.write(data)
        end
      end

      def ruby_file?
        File.extname(path) == '.rb'
      end

      def code_gen_warning
        <<-CODE_GEN_WARNING
# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE

        CODE_GEN_WARNING
      end

      def default_logger
        logger = Logger.new($stdout)
        logger.formatter = proc {|severity, datetime, progname, msg| msg }
        logger
      end

    end
  end
end
