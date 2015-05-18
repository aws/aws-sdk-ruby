require 'pp'

module Aws
  module Api
    module Docs
      class ResponseStructureExample

        include Utils

        def self.tag(*args)
          new(*args).build_tag
        end

        def initialize(method_name, operation)
          @method_name = method_name
          @operation = operation
        end

        def build_tag
          parts = []
          parts << "@example Response structure with placeholder values\n\n"
          parts += to_str.lines.map { |line| "  " + line }
          tag(parts.join)
        end

        private

        def to_str
          stub = ClientStubs::Stub.new(@operation.output)
          PP.pp(stub.format, '')
        end

      end
    end
  end
end
