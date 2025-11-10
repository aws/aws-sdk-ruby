# frozen_string_literal: true

require_relative 'plugins/simple_attributes'

module Aws
  module DynamoDBStreams
    # A utility class that translates DynamoDBStream events from Lambda
    # functions into their simple attribute equivalents.
    class AttributeTranslator
      # Parse a DynamoDBStream event hash from Lambda that contains 1 or more records.
      # When using the SDK to retrieve DynamoDB stream records, use the `simple_attributes: true` client option instead.
      #
      # @param [Hash] event A DynamoDBStream event.
      # @example Parse a DynamoDB stream event from Lambda
      #   def lambda_handler(event:, context:)
      #     records = Aws::DynamoDBStreams::AttributeTranslator.from_event(event)
      #     records.each do |record|
      #       puts record.dynamodb.new_image
      #       #=> { "size" => 123, "enabled" => true, ... }
      #     end
      #   end
      def self.from_event(event)
        return unless event.is_a?(Hash)

        ref = Smithy::Schema::Shapes::ShapeRef.new(shape: Schema::GetRecordsOutput)
        translator = Plugins::SimpleAttributes::ValueTranslator.new(ref, :unmarshal)
        parser = Smithy::Json::Parser.new
        input = parser.parse(ref, Smithy::Json.dump(event))
        translator.apply(input).records
      end
    end
  end
end
