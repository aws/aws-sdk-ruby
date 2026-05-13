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
              method_name = Underscore.underscore(member_name)
              return_type = Docstring.ucfirst(member_body['type'] || '::String')
              overload = if method_name == 'detailed_message'
                           "(?highlight: bool) -> #{return_type}"
                         else
                           "() -> #{return_type}"
                         end
              MethodSignature.new(method_name: method_name, overloads: [overload])
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
