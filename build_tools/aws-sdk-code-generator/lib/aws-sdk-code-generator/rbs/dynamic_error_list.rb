# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    class DynamicErrorList
      def initialize(service_name:)
        @list =
          case service_name
          when "SQS"
            json = Pathname("dynamic_error_list/sqs.json").expand_path(__dir__).read
            JSON.parse(json)
          else
            {}
          end
      end

      def source
        @list["source"]
      end

      def to_a
        @list.fetch("errors", [])
      end

      def empty?
        to_a.empty?
      end
    end
  end
end
