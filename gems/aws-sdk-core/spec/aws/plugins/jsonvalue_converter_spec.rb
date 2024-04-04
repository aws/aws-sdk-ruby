# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe JsonvalueConverter do
      JsonValueClient = ApiHelper.sample_service(api: JSON.parse(<<~JSON
        {
          "version":"2.0",
          "metadata":{
            "endpointPrefix":"svc",
            "protocol": "rest-json",
            "signatureVersion":"v4"
          },
          "operations":{
            "Foo" : {
              "name" : "Foo",
              "http" : {
                "method" : "POST",
                "requestUri" : "/"
              },
              "input" : {
                "shape" : "FooRequest"
              }
            }
          },
          "shapes": {
              "FooRequest": {
                "type": "structure",
                "payload": "Body",
                "members": {
                  "HeaderField": {
                    "shape": "StringType",
                    "jsonvalue": true,
                    "location": "header",
                    "locationName": "X-Amz-Foo"
                  },
                  "QueryField": {
                    "shape": "StringType",
                    "jsonvalue": true,
                    "location": "querystring",
                    "locationName": "Bar"
                  },
                  "Body": {
                    "shape": "BodyStructure"
                  }
                }
              },
              "StringType": {
                "type": "string"
              },
              "ListType": {
                "type": "list",
                "member": {
                  "shape": "StringType",
                  "jsonvalue": true
                }
              },
              "MapType": {
                "type": "map",
                "key": {
                  "shape": "StringType"
                },
                "value": {
                  "shape": "StringType",
                  "jsonvalue": true
                }
              },
              "BodyStructure": {
                "type": "structure",
                "members": {
                  "BodyField": {
                    "shape": "StringType",
                    "jsonvalue": true
                  },
                  "BodyStructureField": {
                    "shape": "BodyStructure"
                  },
                  "BodyListField": {
                    "shape": "ListType"
                  },
                  "BodyMapField": {
                    "shape": "MapType"
                  }
                }
              }
            }
        }
      JSON
      )).const_get(:Client)

      let(:client) { JsonValueClient.new(stub_responses: true) }
      let(:hash) { { 'bar' => 'baz' } }
      let(:hash_no_json) do
        hash = { 'bar' => 'baz' }
        hash.instance_eval('undef :to_json', __FILE__, __LINE__)
        hash
      end

      it 'converts ruby object to json string before validation' do
        ruby_types = {
          hash: { 'bar' => 'baz' },
          array: %w[bar baz],
          num: 12_345,
          str: 'foobarbaz',
          bool: true,
          time: Time.now
        }
        ruby_types.each do |_k, v|
          resp = client.foo(header_field: v)
          expect(resp.context.params[:header_field]).to eq(v.to_json)
        end
      end

      it 'does not serialize unset jsonvalue members' do
        resp = client.foo(body: {})
        expect(resp.context.params[:body]).to eq({})
      end

      it 'serializes jsonvalue members set to nil' do
        resp = client.foo(body: { body_field: nil })
        expect(resp.context.params[:body]).to eq({ body_field: 'null' })
      end

      it 'serializes jsonvalue members of nested structures' do
        resp = client.foo(
          body: {
            body_structure_field: {
              body_field: hash
            }
          }
        )
        expect(resp.context.params[:body][:body_structure_field][:body_field])
          .to eq(hash.to_json)
      end

      it 'serializes jsonvalue members of lists' do
        resp = client.foo(
          body: {
            body_list_field: [hash, hash]
          }
        )
        expect(resp.context.params[:body][:body_list_field])
          .to eq([hash.to_json, hash.to_json])
      end

      it 'serializes jsonvalue values of maps' do
        resp = client.foo(
          body: {
            body_map_field: { key1: hash, key2: hash }
          }
        )
        expect(resp.context.params[:body][:body_map_field])
          .to eq({ 'key1' => hash.to_json, 'key2' => hash.to_json })
      end

      it 'raises exception when an object is not JSON serializable' do
        expect do
          client.foo(header_field: hash_no_json)
        end.to raise_error(
          ArgumentError,
          'The value of params[header_field] is not JSON serializable.'
        )
      end

      it 'raises exceptions when structure member is not JSON serializable' do
        expect do
          client.foo(
            body: {
              body_structure_field: {
                body_field: hash_no_json
              }
            }
          )
        end.to raise_error(
          ArgumentError,
          'The value of params[body][body_structure_field][body_field] '\
          'is not JSON serializable.'
        )
      end

      it 'raises exceptions when a list member is not JSON serializable' do
        expect do
          client.foo(
            body: {
              body_list_field: [hash, hash_no_json]
            }
          )
        end.to raise_error(
          ArgumentError,
          'The value of params[body][body_list_field][1] '\
          'is not JSON serializable.'
        )
      end

      it 'raises exceptions when a map value is not JSON serializable' do
        expect do
          client.foo(
            body: {
              body_map_field: { key1: hash, key2: hash_no_json }
            }
          )
        end.to raise_error(
          ArgumentError,
          'The value of params[body][body_map_field][key2] '\
          'is not JSON serializable.'
        )
      end
    end
  end
end
