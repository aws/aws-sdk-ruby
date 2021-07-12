# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module DynamoDBStreams
    describe AttributeTranslator do
      let(:event) do
        {
          'Records' => [
            {
              'eventID' => '123',
              'eventName' => 'INSERT',
              'eventVersion' => '1.1',
              'eventSource' => 'aws:dynamodb',
              'awsRegion' => 'us-west-2',
              'dynamodb' => {
                'ApproximateCreationDateTime' => 123,
                'Keys' => {
                  'id' => { 'S' => 'key' }
                },
                'NewImage' => {
                  'size' => { 'N' => '69' },
                  'name' => { 'S' => 'new-name' },
                  'enabled' => { 'BOOL' => true },
                  'id' => { 'S' => 'key' }
                },
                'SequenceNumber' => '12345',
                'SizeBytes' => 420,
                'StreamViewType' => 'NEW_AND_OLD_IMAGES'
              },
              'eventSourceARN' => 'arn:aws:dynamodb:us-west-2:foo'
            }
          ]
        }
      end

      let(:simple_attributes) do
        {
          'enabled' => true,
          'id' => 'key',
          'name' => 'new-name',
          'size' => 0.69e2
        }
      end

      describe '.from_event' do
        it 'parses an event from Lambda' do
          records = AttributeTranslator.from_event(event)
          image = records.first.dynamodb.new_image
          expect(image).to eq simple_attributes
        end
      end

    end
  end
end
