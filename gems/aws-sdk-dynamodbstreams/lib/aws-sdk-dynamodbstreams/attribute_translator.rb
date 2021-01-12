module Aws
  module DynamoDBStreams
    # A utility class that translates DynamoDBStream events from Lambda
    # functions into their simple attribute equivalents.
    class AttributeTranslator
      # Parse a DynamoDBStream event hash from Lambda that contains 1 or more
      # records. When using the SDK to retrieve DynamoDB stream records, use the
      # `simple_attributes: true` client option instead.
      #
      # @param [Hash] event A DynamoDBStream event.
      #
      # @example Parse a DynamoDB stream event from Lambda
      #   def lambda_handler(event:, context:)
      #     records = Aws::DynamoDBStreams::AttributeTranslator.from_event(event)
      #     records.each do |record|
      #       puts record.dynamodb.new_image
      #       # => { "size" => 123, "enabled" => true, ... }
      #     end
      #   end
      def self.from_event(event)
        return unless event.is_a?(Hash)

        # TODO: This implementation is slow and inefficient. It would be
        # better to write a switch-case that has similar logic to AttributeValue
        # used in the ValueTranslator. This implementation however provides
        # consistency between both DynamoDB and DynamoDBStreams. The translator
        # only works with shapes and structs and not a regular Ruby hash.
        shape_ref = ClientApi::Shapes::ShapeRef.new(
          shape: ClientApi::GetRecordsOutput
        )
        translator = Plugins::SimpleAttributes::ValueTranslator.new(
          shape_ref, :unmarshal
        )
        parser = Aws::Json::Parser.new(shape_ref)
        input = parser.parse(Aws::Json.dump(event))
        translator.apply(input).records
      end
    end
  end
end
