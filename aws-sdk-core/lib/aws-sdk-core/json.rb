require 'json'

module Aws
  # @api private
  module Json

    autoload :Builder, 'aws-sdk-core/json/builder'
    autoload :ErrorHandler, 'aws-sdk-core/json/error_handler'
    autoload :Handler, 'aws-sdk-core/json/handler'
    autoload :Parser, 'aws-sdk-core/json/parser'

    class ParseError < StandardError

      def initialize(error)
        @error = error
        super(error.message)
      end

      attr_reader :error

    end

    class << self

      def load(json)
        ENGINE.load(json)
      rescue ENGINE_ERROR => e
        raise ParseError.new(e)
      end

      def load_file(path)
        self.load(File.open(path, 'r', encoding: 'UTF-8') { |f| f.read })
      end

      def dump(value)
        ENGINE.dump(value, *ENGINE_DUMP_OPTIONS)
      end

      private

      def oj_engine
        require 'oj'
        [Oj, [{ mode: :compat }], Oj::ParseError]
      rescue LoadError
        false
      end

      def json_engine
        [JSON, [], JSON::ParserError]
      end

    end

    # @api private
    ENGINE, ENGINE_DUMP_OPTIONS, ENGINE_ERROR = oj_engine || json_engine

  end
end
