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

      it 'resolves modeled HTTP checksum members and header bindings' do
        input = Smithy::Schema::Shapes::StructureShape.new(name: 'Input')
        input.add_member(
          :checksum_algorithm,
          Smithy::Schema::Shapes::MemberShape.new(
            name: 'ChecksumAlgorithm',
            target: Smithy::Schema::Shapes::StringShape.new,
            traits: { 'smithy.api#httpHeader' => 'x-amz-sdk-checksum-algorithm' }
          )
        )
        input.add_member(
          :checksum_mode,
          Smithy::Schema::Shapes::MemberShape.new(
            name: 'ChecksumMode',
            target: Smithy::Schema::Shapes::StringShape.new
          )
        )
        operation = Smithy::Schema::Shapes::OperationShape.new(
          input: input,
          traits: {
            'aws.protocols#httpChecksum' => {
              'requestAlgorithmMember' => 'ChecksumAlgorithm',
              'requestChecksumRequired' => true,
              'requestValidationModeMember' => 'ChecksumMode',
              'responseAlgorithms' => %w[CRC32 SHA256]
            }
          }
        )

        expect(described_class.http_checksum(operation)).to eq(
          request_algorithm_member: :checksum_algorithm,
          request_algorithm_header: 'x-amz-sdk-checksum-algorithm',
          request_checksum_required: true,
          request_validation_mode_member: :checksum_mode,
          response_algorithms: %w[CRC32 SHA256]
        )
      end

      it 'returns nil when an operation has no HTTP checksum trait' do
        operation = Smithy::Schema::Shapes::OperationShape.new(traits: {})

        expect(described_class.http_checksum(operation)).to be_nil
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
