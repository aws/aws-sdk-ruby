require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe Builder do

        it 'can construct a resource without identifiers' do
          builder = Builder.new(
            request_made: true,
            resource: {
              'type' => 'ResourceName'
            }
          )
          expect(builder.to_s).to eq(<<-CODE)
ResourceName.new(client: @client)
          CODE
        end

        it 'can construct a resource with identifiers' do
          builder = Builder.new(
            request_made: true,
            resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'Identifier1',
                  'source' => 'string',
                  'value' => 'identifier-1'
                },
                {
                  'target' => 'Identifier2',
                  'source' => 'integer',
                  'value' => 123,
                },
                {
                  'target' => 'Identifier3',
                  'source' => 'identifier',
                  'name' => 'Id3',
                },
                {
                  'target' => 'Identifier4',
                  'source' => 'data',
                  'path' => 'Member.Name',
                },
                {
                  'target' => 'Identifier5',
                  'source' => 'response',
                  'path' => 'Foo.Bar',
                },
                {
                  'target' => 'Identifier6',
                  'source' => 'requestParameter',
                  'path' => 'Param',
                },
              ]
            }
          )
          expect(builder.to_s).to eq(<<-CODE)
ResourceName.new(
  identifier_1: "identifier-1",
  identifier_2: 123,
  identifier_3: @id_3,
  identifier_4: data.member.name,
  identifier_5: resp.data.foo.bar,
  identifier_6: options[:param],
  client: @client
)
          CODE
        end

        it 'supports data paths of @' do
          builder = Builder.new(
            request_made: true,
            resource: {
              'type' => 'ResourceName',
              'identifiers' => [
                {
                  'target' => 'Name',
                  'source' => 'string',
                  'value' => 'name'
                },
              ],
              'path' => '@'
            }
          )
          expect(builder.to_s).to eq(<<-CODE)
ResourceName.new(
  name: "name",
  data: resp.data,
  client: @client
)
          CODE
        end

      end
    end
  end
end
