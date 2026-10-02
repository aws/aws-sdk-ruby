# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Query
      describe QueryExtension do
        let(:string_shape) { Smithy::Schema::Shapes::StringShape.new }
        let(:member_shape) { Smithy::Schema::Shapes::MemberShape.new(target: string_shape) }

        describe 'cached metadata' do
          it 'stores flat Query metadata' do
            shape = Smithy::Schema::Shapes::StringShape.new(name: 'Shape')

            expect(described_class.query_name(shape)).to eq('Shape')
            expect(shape[:aws_query_name]).to eq('Shape')
            expect(shape[:aws_query_ec2_name]).to eq('Shape')
            expect(shape[:aws_query_flattened]).to be_nil
            expect(described_class.flattened?(shape)).to be(false)
            expect(shape[:aws_query_flattened]).to be(false)
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
            expect(shape[:aws_query_name]).to eq('WireName')
          end

          it 'falls back to the modeled member name' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              name: 'ModeledName'
            )
            expect(described_class.query_name(shape)).to eq('ModeledName')
            expect(shape[:aws_query_name]).to eq('ModeledName')
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
            expect(shape[:aws_query_ec2_name]).to eq('QueryName')
          end

          it 'capitalizes the resolved name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape, traits: { 'smithy.api#xmlName' => 'wireName' }
            )

            expect(described_class.ec2_query_name(shape)).to eq('WireName')
            expect(shape[:aws_query_ec2_name]).to eq('WireName')
          end

          it 'capitalizes the modeled member name for ec2 query' do
            shape = Smithy::Schema::Shapes::MemberShape.new(target: string_shape, name: 'modeledName')

            expect(described_class.ec2_query_name(shape)).to eq('ModeledName')
            expect(shape[:aws_query_ec2_name]).to eq('ModeledName')
          end
        end

        describe '.flattened?' do
          it 'resolves smithy xmlFlattened traits' do
            shape = Smithy::Schema::Shapes::MemberShape.new(
              target: string_shape,
              traits: { 'smithy.api#xmlFlattened' => {} }
            )

            expect(described_class.flattened?(shape)).to be(true)
            expect(shape[:aws_query_flattened]).to be(true)
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

      describe Ec2QueryExtension do
        let(:string_shape) { Smithy::Schema::Shapes::StringShape.new }

        it 'uses EC2 Query wire names and indexes from shared Query metadata' do
          member = Smithy::Schema::Shapes::MemberShape.new(
            target: string_shape,
            name: 'modeledName',
            traits: { 'aws.protocols#ec2QueryName' => 'Ec2Name' }
          )
          structure = Smithy::Schema::Shapes::StructureShape.new
          structure.add_member(:modeled_name, member)

          expect(described_class.query_name(member)).to eq('Ec2Name')
          expect(described_class.query_index(structure)[:modeled_name]).to eq(['Ec2Name', member])
          expect(described_class.flattened?(member)).to be(false)
          expect(described_class.timestamp_format(member)).to eq(:default)
          expect(structure[:aws_query_index]).to equal(QueryExtension.query_index(structure))
          expect(structure[:aws_query_ec2_index]).to equal(QueryExtension.ec2_query_index(structure))
        end
      end
    end
  end
end
