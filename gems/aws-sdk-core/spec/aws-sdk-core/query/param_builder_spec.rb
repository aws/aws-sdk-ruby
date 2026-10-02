# frozen_string_literal: true

require 'cgi'

require_relative '../../spec_helper'

module Aws
  module Core
    module Query
      describe ParamBuilder do
        def parse(params)
          CGI.parse(params.to_s)
        end

        it 'uses query_name metadata for flattened query lists' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          list_shape = Smithy::Schema::Shapes::ListShape.new
          list_shape.member = Smithy::Schema::Shapes::MemberShape.new(target: Smithy::Schema::Shapes::StringShape.new)
          member =
            Smithy::Schema::Shapes::MemberShape.new(
              target: list_shape,
              name: 'FlattenedListArgWithXmlName',
              traits: { 'smithy.api#xmlFlattened' => {} }
            )
          member[:query_name] = 'Hi'
          structure.add_member(:list_arg, member)

          result = ParamList.new
          described_class.new.build(structure, { list_arg: %w[A B] }, result)

          expect(parse(result)).to eq('Hi.1' => ['A'], 'Hi.2' => ['B'])
        end

        it 'uses query_name metadata for query map names and members' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          map_shape = Smithy::Schema::Shapes::MapShape.new
          map_shape.key = Smithy::Schema::Shapes::MemberShape.new(target: Smithy::Schema::Shapes::StringShape.new)
          map_shape.value = Smithy::Schema::Shapes::MemberShape.new(target: Smithy::Schema::Shapes::StringShape.new)
          map_shape.key[:query_name] = 'K'
          map_shape.value[:query_name] = 'V'
          member =
            Smithy::Schema::Shapes::MemberShape.new(
              target: map_shape,
              name: 'MapWithXmlMemberName'
            )
          structure.add_member(:map_arg, member)

          result = ParamList.new
          described_class.new.build(structure, { map_arg: { 'foo' => 'Foo' } }, result)

          expect(parse(result)).to eq(
            'MapWithXmlMemberName.entry.1.K' => ['foo'],
            'MapWithXmlMemberName.entry.1.V' => ['Foo']
          )
        end

        it 'uses the modeled list member name when present' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          list_shape = Smithy::Schema::Shapes::ListShape.new
          list_shape.member = Smithy::Schema::Shapes::MemberShape.new(
            target: Smithy::Schema::Shapes::StringShape.new,
            name: 'Item'
          )
          member =
            Smithy::Schema::Shapes::MemberShape.new(
              target: list_shape,
              name: 'ListArg'
            )
          structure.add_member(:list_arg, member)

          result = ParamList.new
          described_class.new.build(structure, { list_arg: %w[A B] }, result)

          expect(parse(result)).to eq('ListArg.Item.1' => ['A'], 'ListArg.Item.2' => ['B'])
        end

        it 'uses modeled key and value member names when present' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          map_shape = Smithy::Schema::Shapes::MapShape.new
          map_shape.key = Smithy::Schema::Shapes::MemberShape.new(
            target: Smithy::Schema::Shapes::StringShape.new,
            name: 'K'
          )
          map_shape.value = Smithy::Schema::Shapes::MemberShape.new(
            target: Smithy::Schema::Shapes::StringShape.new,
            name: 'V'
          )
          member =
            Smithy::Schema::Shapes::MemberShape.new(
              target: map_shape,
              name: 'MapWithModeledMemberName'
            )
          structure.add_member(:map_arg, member)

          result = ParamList.new
          described_class.new.build(structure, { map_arg: { 'foo' => 'Foo' } }, result)

          expect(parse(result)).to eq(
            'MapWithModeledMemberName.entry.1.K' => ['foo'],
            'MapWithModeledMemberName.entry.1.V' => ['Foo']
          )
        end

        it 'uses smithy ec2QueryName traits for ec2 query names' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          list_shape = Smithy::Schema::Shapes::ListShape.new
          list_shape.member = Smithy::Schema::Shapes::MemberShape.new(target: Smithy::Schema::Shapes::StringShape.new)
          member =
            Smithy::Schema::Shapes::MemberShape.new(
              target: list_shape,
              name: 'ListArgWithXmlName',
              traits: { 'aws.protocols#ec2QueryName' => 'Hi' }
            )
          structure.add_member(:list_arg, member)

          result = ParamList.new
          described_class.new(ec2: true).build(structure, { list_arg: %w[A B] }, result)

          expect(parse(result)).to eq('Hi.1' => ['A'], 'Hi.2' => ['B'])
        end

        it 'preserves milliseconds in timestamp parameters' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          member = Smithy::Schema::Shapes::MemberShape.new(
            target: Smithy::Schema::Shapes::TimestampShape.new,
            name: 'Timestamp',
            traits: { 'smithy.api#timestampFormat' => 'epoch-seconds' }
          )
          structure.add_member(:timestamp, member)
          result = ParamList.new

          described_class.new.build(
            structure,
            { timestamp: Time.at(1_700_000_000, 123_456_789, :nanosecond) },
            result
          )

          expect(parse(result)).to eq('Timestamp' => ['1700000000.123'])
        end

        it 'uses the configured default timestamp format' do
          structure = Smithy::Schema::Shapes::StructureShape.new
          member = Smithy::Schema::Shapes::MemberShape.new(
            target: Smithy::Schema::Shapes::TimestampShape.new,
            name: 'Timestamp'
          )
          structure.add_member(:timestamp, member)
          time = Time.utc(2026, 9, 23, 12, 34, 56)
          result = ParamList.new

          described_class.new(default_timestamp: 'epoch-seconds').build(
            structure,
            { timestamp: time },
            result
          )

          expect(parse(result)).to eq('Timestamp' => [time.to_i.to_s])
        end
      end
    end
  end
end
