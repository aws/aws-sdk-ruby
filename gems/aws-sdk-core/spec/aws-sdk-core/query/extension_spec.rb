# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Query
      describe QueryExtension do
        let(:string_shape) { Smithy::Schema::Shapes::StringShape.new }
        let(:member_shape) { Smithy::Schema::Shapes::MemberShape.new(target: string_shape) }

        describe 'cached metadata' do
          it 'stores metadata under the dedicated extension key' do
            shape = Smithy::Schema::Shapes::StringShape.new(name: 'Shape')

            expect(shape[:aws_query]).to be_nil
            expect(described_class.query_name(shape)).to eq('Shape')
            expect(described_class.fetch(shape)).to equal(shape[:aws_query])
          end

          it 'builds Query and EC2 indexes keyed by Ruby member name' do
            structure = Smithy::Schema::Shapes::StructureShape.new
            member = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape, name: 'ModeledName'
            )
            structure.add_member(:modeled_name, member)

            expect(described_class.query_index(structure)[:modeled_name].first).to eq('ModeledName')
            expect(described_class.ec2_query_index(structure)[:modeled_name].first).to eq('ModeledName')
          end
        end

        describe '.query_name' do
          it 'prefers the smithy xmlName trait' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'IgnoredWireName' }
            )
            expect(described_class.query_name(shape)).to eq('IgnoredWireName')
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
            expect(described_class.fetch(shape)[:query_name]).to eq('WireName')
          end

          it 'falls back to the modeled member name' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              name: 'ModeledName'
            )
            expect(described_class.query_name(shape)).to eq('ModeledName')
            expect(described_class.fetch(shape)[:query_name]).to eq('ModeledName')
          end
        end

        describe '.ec2_query_name' do
          it 'prefers the EC2 Query name trait' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'wireName', 'aws.protocols#ec2QueryName' => 'IgnoredQueryName' }
            )
            expect(described_class.ec2_query_name(shape)).to eq('IgnoredQueryName')
          end

          it 'applies ec2QueryName before capitalization' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlName' => 'wireName', 'aws.protocols#ec2QueryName' => 'QueryName' }
            )

            expect(described_class.ec2_query_name(shape)).to eq('QueryName')
            expect(described_class.fetch(shape)[:ec2_query_name]).to eq('QueryName')
          end

          it 'capitalizes the resolved name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape, traits: { 'smithy.api#xmlName' => 'wireName' }
            )

            expect(described_class.ec2_query_name(shape)).to eq('WireName')
            expect(described_class.fetch(shape)[:ec2_query_name]).to eq('WireName')
          end

          it 'capitalizes the modeled member name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(target: string_shape, name: 'modeledName')

            expect(described_class.ec2_query_name(shape)).to eq('ModeledName')
            expect(described_class.fetch(shape)[:ec2_query_name]).to eq('ModeledName')
          end
        end

        describe '.flattened?' do
          it 'resolves smithy xmlFlattened traits' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlFlattened' => {} }
            )

            expect(described_class.flattened?(shape)).to be(true)
            expect(described_class.fetch(shape)).to be_a(Hash)
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

      describe Query::Extension do
        it 'delegates the legacy Query extension API' do
          string_shape = Smithy::Schema::Shapes::StringShape.new
          member = Smithy::Schema::Shapes::MemberShape.new(
            target: string_shape, name: 'ModeledName'
          )

          expect(described_class.query_name(member)).to eq('ModeledName')
          expect(described_class.ec2_query_name(member)).to eq('ModeledName')
        end
      end
    end
  end
end
