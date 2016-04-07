require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe Action do
        describe 'code' do

          it 'supports basic actions that return the client response' do
            action = Action.new(
              name: 'ActionName',
              action: {
                'request' => {
                  'operation' => 'OperationName',
                }
              },
              api: {
                'operations' => {
                  'OperationName' => {}
                }
              }
            )
            expect(SpecHelper.code(action)).to eq(<<-CODE)
def action_name(options = {})
  resp = @client.operation_name(options)
  resp.data
end
            CODE
          end

          it 'supports actions that return a resource object with data' do
            action = Action.new(
              name: 'CreateObject',
              action: {
                'request' => {
                  'operation' => 'PutObject',
                  'params' => [
                    {
                      'target' => 'Bucket',
                      'source' => 'identifier',
                      'name' => 'Name',
                    },
                  ]
                },
                'resource' => {
                  'type' => 'Object',
                  'identifiers' => [
                    {
                      'target' => 'BucketName',
                      'source' => 'identifier',
                      'name' => 'Name',
                    },
                    {
                      'target' => 'Key',
                      'source' => 'requestParameter',
                      'path' => 'Key',
                    },
                  ],
                  'path' => 'Object'
                }
              },
              api: {
                'operations' => {
                  'PutObject' => {
                    'input' => { 'shape' => 'PutObjectRequest' }
                  }
                },
                'shapes' => {
                  'PutObjectRequest' => {
                    'type' => 'structure',
                    'required' => ['Bucket', 'Key'],
                    'members' => {
                      'Bucket' => { 'shape' => 'String' },
                      'Key' => { 'shape' => 'String' },
                    },
                  },
                  'String' => { 'type' => 'string' }
                }
              }
            )
            expect(SpecHelper.code(action)).to eq(<<-CODE)
def create_object(options = {})
  resp = @client.put_object(options.merge(bucket: @name))
  Object.new(
    bucket_name: @name,
    key: options[:key],
    data: resp.data.object,
    client: @client
  )
end
            CODE
          end

          it 'supports actions that return a batch of resource objects' do
            action = Action.new(
              name: 'CreateInstances',
              action: {
                'request' => { 'operation' => 'RunInstances' },
                'resource' => {
                  'type' => 'Instance',
                  'identifiers' => [
                    {
                      'target' => 'Id',
                      'source' => 'response',
                      'path' => 'Reservations[].Instances[].InstanceId',
                    },
                  ],
                  'path' => 'Reservations[].Instances[]'
                }
              },
              api: {
                'operations' => {
                  'RunInstances' => {}
                }
              }
            )
            expect(SpecHelper.code(action)).to eq(<<-CODE)
def create_instances(options = {})
  batch = []
  resp = @client.run_instances(options)
  resp.data.reservations.each do |r|
    r.instances.each do |i|
      batch << Instance.new(
        id: i.instance_id,
        data: i,
        client: @client
      )
    end
  end
  Instance::Collection.new([batch], size: batch.size)
end
            CODE
            expect(SpecHelper.return_tags(action)).to eq(<<-DOCS)
# @return [Instance::Collection]
            DOCS
          end

        end

        describe 'return tag' do

          it 'supports actions that have no output'

          it 'supports actions that return client responses'

          it 'supports actions that return a resource object'

          it 'supports actions that return a batch of resource objects'

        end

        describe 'option tags' do

          it 'documents options with their type' do
            action = Action.new(
              name: 'ActionName',
              action: {
                'request' => {
                  'operation' => 'OperationName',
                }
              },
              api: {
                'operations' => {
                  'OperationName' => {
                    'input' => { 'shape' => 'OperationNameRequest' }
                  }
                },
                'shapes' => {
                  'OperationNameRequest' => {
                    'type' => 'structure',
                    'members' => {
                      'Blob' => { 'shape' => 'Blob' },
                      'Byte' => { 'shape' => 'Byte' },
                      'Boolean' => { 'shape' => 'Boolean' },
                      'Character' => { 'shape' => 'Character' },
                      'Double' => { 'shape' => 'Double' },
                      'Float' => { 'shape' => 'Float' },
                      'Integer' => { 'shape' => 'Integer' },
                      'ListOfStrings' => { 'shape' => 'ListOfStrings' },
                      'ListOfMaps' => { 'shape' => 'ListOfMaps' },
                      'ListOfStructures' => { 'shape' => 'ListOfStructures' },
                      'Long' => { 'shape' => 'Long' },
                      'MapOfStrings' => { 'shape' => 'MapOfStrings' },
                      'MapOfListOfStrings' => { 'shape' => 'MapOfListOfStrings' },
                      'MapOfStructures' => { 'shape' => 'MapOfStructures' },
                      'String' => { 'shape' => 'String' },
                      'Structure' => { 'shape' => 'Structure' },
                      'Timestamp' => { 'shape' => 'Timestamp' },
                    }
                  },
                  'Blob' => { 'type' => 'blob' },
                  'Byte' => { 'type' => 'byte' },
                  'Boolean' => { 'type' => 'boolean' },
                  'Character' => { 'type' => 'character' },
                  'Double' => { 'type' => 'double' },
                  'Float' => { 'type' => 'float' },
                  'Integer' => { 'type' => 'integer' },
                  'ListOfStrings' => {
                    'type' => 'list',
                    'member' => { 'shape' => 'String' }
                  },
                  'ListOfMaps' => {
                    'type' => 'list',
                    'member' => { 'shape' => 'MapOfStrings' }
                  },
                  'ListOfStructures' => {
                    'type' => 'list',
                    'member' => { 'shape' => 'Structure' }
                  },
                  'Long' => { 'type' => 'long' },
                  'MapOfStrings' => {
                    'type' => 'map',
                    'key' => { 'shape' => 'String' },
                    'value' => { 'shape' => 'String' },
                  },
                  'MapOfListOfStrings' => {
                    'type' => 'map',
                    'key' => { 'shape' => 'String' },
                    'value' => { 'shape' => 'ListOfStrings' },
                  },
                  'MapOfStructures' => {
                    'type' => 'map',
                    'key' => { 'shape' => 'String' },
                    'value' => { 'shape' => 'Structure' },
                  },
                  'String' => { 'type' => 'string' },
                  'Structure' => {
                    'type' => 'structure',
                    'members' => {
                      'String' => { 'shape' => 'String' }
                    }
                  },
                  'Timestamp' => { 'type' => 'timestamp' },
                }
              }
            )
            expect(SpecHelper.option_tags(action)).to eq(<<-CODE)
# @option options [String, IO] :blob
# @option options [Integer] :byte
# @option options [Boolean] :boolean
# @option options [String] :character
# @option options [Float] :double
# @option options [Float] :float
# @option options [Integer] :integer
# @option options [Array<String>] :list_of_strings
# @option options [Array<Hash>] :list_of_maps
# @option options [Array<Types::Structure>] :list_of_structures
# @option options [Integer] :long
# @option options [Hash<String,String>] :map_of_strings
# @option options [Hash<String,Array>] :map_of_list_of_strings
# @option options [Hash<String,Types::Structure>] :map_of_structures
# @option options [String] :string
# @option options [Types::Structure] :structure
# @option options [Time,DateTime,Date,Integer,String] :timestamp
            CODE
          end

          it 'does not document options set by the action' do
            action = Action.new(
              name: 'Update',
              action: {
                'request' => {
                  'operation' => 'UpdateThing',
                  'params' => [
                    {
                      'target' => 'ThingId',
                      'source' => 'identifier',
                      'name' => 'id',
                    },
                  ],
                }
              },
              api: {
                'operations' => {
                  'UpdateThing' => {
                    'input' => { 'shape' => 'UpdateThingRequest' },
                    'output' => { 'shape' => 'UpdateThingResponse' }
                  }
                },
                'shapes' => {
                  'UpdateThingRequest' => {
                    'type' => 'structure',
                    'members' => {
                      'ThingId' => { 'shape' => 'String' },
                      'Description' => { 'shape' => 'String' },
                    }
                  },
                  'UpdateThingResponse' => {
                    'type' => 'structure',
                    'members' => {}
                  },
                  'String' => { 'type' => 'string' },
                }
              }
            )
            expect(SpecHelper.option_tags(action)).to eq(<<-CODE)
# @option options [String] :description
            CODE
          end

        end
      end
    end
  end
end
