# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class ErrorList
      include Enumerable

      def initialize(api:, module_name:)
        @api = api
        @module_name = module_name
        @errors = @api['shapes'].inject([]) do |es, (name, shape)|
          if error_struct?(shape)
            members = shape["members"].map do |member_name, member_body|
              MethodSignature.new(
                method_name: Underscore.underscore(member_name),
                overloads: ["() -> #{Docstring.ucfirst(member_body['type'] ||'::String')}"]
              )
            end
            es << {
              name: name,
              members: members,
            }
          end
          es
        end
      end

      def error_struct?(shape)
        shape['type'] == 'structure' && !!!shape['event'] &&
          (shape['error'] || shape['exception'])
      end

      def to_a
        @errors
      end
    end
  end
end
