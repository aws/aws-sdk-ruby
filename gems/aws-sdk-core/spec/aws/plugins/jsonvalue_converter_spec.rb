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

    it 'converts ruby object to json string before validation' do
      ruby_types = {
        hash: {'bar' => 'baz'},
        array: ['bar', 'baz'],
        num: 12345,
        str: 'foobarbaz',
        bool: true,
        time: Time.now
      }
      ruby_types.each do |_k,v|
        resp = client.foo(header_field: v)
        expect(resp.context.params[:header_field]).to eq(v.to_json)
      end
    end

    it 'raises exception when an object is not JSON serializable' do
      hash = {'bar' => 'baz'}
      hash.instance_eval('undef :to_json')
      expect {
        client.foo(header_field: hash)
      }.to raise_error(ArgumentError)
    end
    end
  end
end
