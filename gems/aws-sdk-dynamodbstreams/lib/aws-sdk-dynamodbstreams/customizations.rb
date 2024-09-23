# frozen_string_literal: true

# utility classes
module Aws
  module DynamoDBStreams
    autoload :AttributeTranslator, 'aws-sdk-dynamodbstreams/attribute_translator'
    autoload :AttributeValue, 'aws-sdk-dynamodbstreams/attribute_value'
  end
end
