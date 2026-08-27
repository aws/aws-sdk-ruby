# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Query
      describe Extension do
        let(:string_shape) { Smithy::Schema::Shapes::StringShape.new }
        let(:member_shape) { Smithy::Schema::Shapes::MemberShape.new(target: string_shape) }

        describe '.query_name' do
          it 'prefers member metadata' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'IgnoredWireName' }
            )
            shape[:query_name] = 'WireName'
            expect(described_class.query_name(shape)).to eq('WireName')
          end

          it 'returns nil when no query name can be resolved' do
            expect(described_class.query_name(member_shape)).to be_nil
          end

          it 'resolves smithy xmlName traits' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'WireName' }
            )
            expect(described_class.query_name(shape)).to eq('WireName')
            expect(shape[:query_name]).to eq('WireName')
          end

          it 'falls back to the modeled member name' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              name: 'ModeledName'
            )
            expect(described_class.query_name(shape)).to eq('ModeledName')
            expect(shape[:query_name]).to eq('ModeledName')
          end
        end

        describe '.ec2_query_name' do
          it 'prefers member metadata' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'wireName', 'aws.protocols#ec2QueryName' => 'IgnoredQueryName' }
            )
            shape[:ec2_query_name] = 'QueryName'

            expect(described_class.ec2_query_name(shape)).to eq('QueryName')
          end

          it 'applies ec2QueryName before capitalization' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'wireName', 'aws.protocols#ec2QueryName' => 'QueryName' }
            )

            expect(described_class.ec2_query_name(shape)).to eq('QueryName')
            expect(shape[:ec2_query_name]).to eq('QueryName')
          end

          it 'capitalizes the resolved name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape, traits: { 'smithy.api#xmlName' => 'wireName' }
            )

            expect(described_class.ec2_query_name(shape)).to eq('WireName')
            expect(shape[:ec2_query_name]).to eq('WireName')
          end

          it 'capitalizes the modeled member name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(target: string_shape, name: 'modeledName')

            expect(described_class.ec2_query_name(shape)).to eq('ModeledName')
            expect(shape[:ec2_query_name]).to eq('ModeledName')
          end
        end

        describe '.flattened?' do
          it 'resolves smithy xmlFlattened traits' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlFlattened' => {} }
            )

            expect(described_class.flattened?(shape)).to be(true)
            expect(shape[:xml_flattened]).to be(true)
          end
          it 'returns false when the shape is not flattened' do
            expect(described_class.flattened?(member_shape)).to be(false)
          end
        end

        describe '.sparse?' do
          it 'uses the shared schema extension helpers' do
            shape = Smithy::Schema::Shapes::ListShape.new(traits: { 'smithy.api#sparse' => {} })

            expect(described_class.sparse?(shape)).to be(true)
          end
        end
      end
    end
  end
end
