# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceSkipParams
    class << self

      def compute(shape, request)
        if shape
          shape['members'].inject([]) do |skip, (member_name, member_ref)|
            skip << member_name if request_param?(member_name, request)
            skip
          end
        else
          []
        end
      end

      private

      def request_param?(member_name, request)
        request.fetch('params', []).any? do |param|
          if
            param['target'].match(/^#{member_name}\b/) &&
            !(param['target'].include?('[') &&
            param['target'].include?('.'))
          then
            true
          else
            false
          end
        end
      end

    end
  end
end
