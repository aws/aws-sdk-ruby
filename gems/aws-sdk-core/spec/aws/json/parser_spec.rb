# frozen_string_literal: true

require_relative '../../spec_helper'
require 'base64'
require 'time'

module Aws
  module Json
    describe Parser do

      let(:shapes) { ApiHelper.sample_shapes }

      def parse(json)
        api = ApiHelper.sample_api(shapes: shapes)
        rules = api.operation(:example_operation).output
        Parser.new(rules).parse(json).to_hash
      end

      it 'returns an empty hash when the JSON is {}' do
        expect(parse('{}')).to eq({})
      end

      it 'parses complex and nested documents' do
        json = <<-JSON
        {
          "Nested": {
            "Nested": {
              "Nested": {
                "Integer": 3
              },
              "Integer": 2
            },
            "Integer": 1
          },
          "NestedList": [
            { "String": "v1" },
            { "String": "v2" },
            { "Nested": { "String": "v3" }}
          ],
          "NestedMap": {
            "First": { "String": "v1" },
            "Second": { "Nested": { "String": "v2" }}
          },
          "NumberList": [1,2,3,4,5],
          "StringMap": {
            "Size": "large",
            "Color": "red"
          },
          "Blob": "#{Base64.strict_encode64('data')}",
          "Byte": "a",
          "Boolean": true,
          "Character": "b",
          "Double": 123.456,
          "Float": 654.321,
          "Intger": 123,
          "Long": 321,
          "String": "Hello",
          "Timestamp": 123456789
        }
        JSON
        expect(parse(json)).to eq({
          nested: {
            nested: {
              nested: { integer: 3 },
              integer: 2
            },
            integer: 1
          },
          nested_list: [
            { string: "v1" },
            { string: "v2" },
            { nested: { string: "v3" }}
          ],
          nested_map: {
            "First" => { string: "v1" },
            "Second" => { nested: { string: "v2" }},
          },
          number_list: [1,2,3,4,5],
          string_map: {
            "Size" => "large",
            "Color" => "red",
          },
          blob: "data",
          byte: "a",
          boolean: true,
          character: "b",
          double: 123.456,
          float: 654.321,
          long: 321,
          string: "Hello",
          timestamp: Time.at(123456789),
        })
      end

      it 'observes structure member locationNames' do
        shapes['StructureShape']['members']['Integer']['locationName'] = 'Nesting'
        json = '{ "Nesting": 0}'
        expect(parse(json)).to eq(integer: 0)
      end

      it 'ignores unknown json object keys' do
        json = '{ "Integer": 123, "Unknown": "data" }'
        expect(parse(json)).to eq({integer: 123})
      end

      it 'supports unix timestamps' do
        now = Time.now.to_i
        json = "{ \"Timestamp\": #{now.inspect} }"
        expect(parse(json)).to eq({timestamp: Time.at(now) })
      end

      it 'supports iso8601 strings' do
        now = Time.now.iso8601
        json = "{ \"Timestamp\": #{now.inspect} }"
        expect(parse(json)).to eq({timestamp: Time.parse(now) })
      end

      it 'supports rfc822 strings' do
        now = Time.now.rfc822
        json = "{ \"Timestamp\": #{now.inspect} }"
        expect(parse(json)).to eq({timestamp: Time.parse(now) })
      end

      it 'supports quoted and unquoted booleans' do
        expect(parse('{ "Boolean": true }')).to eq(boolean: true)
        expect(parse('{ "Boolean": false }')).to eq(boolean: false)
        expect(parse('{ "Boolean": "true" }')).to eq(boolean: true)
        expect(parse('{ "Boolean": "false" }')).to eq(boolean: false)
      end

      it 'does not trap json parsing errors' do
        expect { parse('{"abc') }.to raise_error(StandardError)
      end

      describe 'AwsQueryCompatible' do
        AwsQueryCompatibleClient = ApiHelper.sample_service(
          api: {
            'metadata' => {
              'apiVersion' => '2018-11-07',
              'awsQueryCompatible' => {},
              'protocol' => 'json',
              'jsonVersion' => '1.1',
              'endpointPrefix' => 'svc',
              'signatureVersion' => 'v4',
              'errorPrefix' => 'Prefix' # service customization needs to set this
            },
            'operations' => {
              'Foo' => {
                'name' => 'Foo',
                'http' => { 'method' => 'POST', 'requestUri' => '/' },
                'output' => { 'shape' => 'FooOutput'}
              }
            },
            'shapes' => {
              'FooOutput' => {
                'type' => 'structure',
                'members' => {
                  'FlattenedList' => { 'shape' => 'FlattenedList' },
                  'FlattenedMap' => { 'shape' => 'FlattenedMap' }
                }
              },
              'FlattenedList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' },
                'flattened' => true
              },
              'FlattenedMap' => {
                'type' => 'map',
                'key' => { 'shape' => 'String' },
                'value' => { 'shape' => 'String' },
                'flattened' => true
              },
              'String' => { 'type' => 'string' }
            }
          }
        ).const_get(:Client)

        let(:client_aws_query_compatible) do
          AwsQueryCompatibleClient.new(
            region: 'us-west-2',
            retry_limit: 0,
            credentials: Aws::Credentials.new('akid', 'secret'),
            stub_responses: true
          )
        end

        before do
          # nil values for flattened members need to be parsed as empty arrays
          # and hashes to preserve backwards compatibility with Query/XML
          client_aws_query_compatible.stub_responses(:foo, {})
        end

        it 'defaults flattened list to empty array' do
          expect(client_aws_query_compatible.foo.flattened_list).to be_a(Array)
        end

        it 'defaults flattened map to empty hash' do
          expect(client_aws_query_compatible.foo.flattened_map).to be_a(Hash)
        end
      end

    end
  end
end
