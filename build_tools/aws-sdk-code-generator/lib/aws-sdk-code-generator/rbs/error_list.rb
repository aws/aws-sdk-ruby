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
              underscored = Underscore.underscore(member_name)
              overloads = if AwsSdkCodeGenerator::ErrorList::EXCEPTION_KWARGS_METHODS.include?(underscored)
                [
                  "() -> #{Docstring.ucfirst(member_body['type'] || '::String')}",
                  "(**untyped) -> String"
                ]
              else
                ["() -> #{Docstring.ucfirst(member_body['type'] ||'::String')}"]
              end
              MethodSignature.new(
                method_name: underscored,
                overloads: overloads
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
