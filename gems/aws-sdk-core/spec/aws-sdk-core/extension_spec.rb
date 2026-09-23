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

      it 'caches AWS-wide service metadata' do
        metadata = described_class.fetch(service)

        expect(described_class.fetch(service)).to equal(metadata)
        expect(service[described_class::KEY]).to equal(metadata)
      end

      it 'resolves AWS JSON protocol metadata' do
        operation = Smithy::Schema::Shapes::OperationShape.new(name: 'GetThing')

        expect(described_class.json_content_type(service)).to eq('application/x-amz-json-1.1')
        expect(described_class.json_target(service, operation)).to eq('Example.GetThing')
        expect(described_class.query_compatible?(service)).to be(true)
      end

      it 'resolves the AWS SDK service ID' do
        service = Smithy::Schema::Shapes::ServiceShape.new(
          traits: { 'aws.api#service' => { 'sdkId' => 'Example Service' } }
        )

        expect(described_class.service_id(service)).to eq('Example Service')
      end
    end
  end
end
