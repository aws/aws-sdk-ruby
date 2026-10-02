# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe Extension do
      let(:service) do
        Smithy::Schema::Shapes::ServiceShape.new(
          id: 'com.example#Example',
          traits: {
            'aws.protocols#awsJson1_1' => {},
            'aws.protocols#awsQueryCompatible' => {}
          }
        )
      end

      it 'resolves and caches flat AWS JSON protocol metadata' do
        operation = Smithy::Schema::Shapes::OperationShape.new(name: 'GetThing')

        expect(described_class.json_content_type(service)).to eq('application/x-amz-json-1.1')
        expect(described_class.json_target(service, operation)).to eq('Example.GetThing')
        expect(described_class.query_compatible?(service)).to be(true)
        expect(service[:aws_json_content_type]).to eq('application/x-amz-json-1.1')
        expect(service[:aws_json_target_prefix]).to eq('Example')
        expect(service[:aws_query_compatible]).to be(true)
        expect(operation[:aws_json_target]).to eq('Example.GetThing')
      end

      it 'resolves the AWS SDK service ID' do
        service = Smithy::Schema::Shapes::ServiceShape.new(
          traits: { 'aws.api#service' => { 'sdkId' => 'Example Service' } }
        )

        expect(described_class.service_id(service)).to eq('Example Service')
        expect(service[:aws_service_id]).to eq('Example Service')
      end
    end
  end
end
