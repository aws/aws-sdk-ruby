# frozen_string_literal: true

require_relative '../../spec_helper'
require 'stringio'

module Aws
  module Stubbing
    describe EmptyStub do

      it 'supports complex recursive structures' do
        now = Time.now
        allow(Time).to receive(:now).and_return(now)
        rules = ApiHelper.sample_api.operation(:example_operation).output
        stub = EmptyStub.new(rules).stub
        expect(stub.to_h).to eq({
          nested_list: [],
          nested_map: {},
          number_list: [],
          string_map: {},
          byte: 0,
          boolean: false,
          character: 'CharacterShape',
          double: 0.0,
          float: 0.0,
          integer: 0,
          long: 0,
          short: 0,
          string: 'StringShape',
          string_with_consecutive_spaces: 'StringShape',
          string_with_lf: 'StringShape',
          sensitive_string: 'SensitiveStringShape',
          timestamp: now
        })
      end

      it 'does not stub paging markers' do

        svc = ApiHelper.sample_service(
          api: {
            'operations' => {
              'OperationName' => {
                'http' => { 'method' => 'POST', 'requestUri' => '/' },
                'input' => { 'shape' => 'StructureShape' },
                'output' => { 'shape' => 'StructureShape' }
              }
            },
            'shapes' => {
              'StructureShape' => {
                'type' => 'structure',
                'members' => {
                  'MaxResults' => { 'shape' => 'String' },
                  'NextToken' => { 'shape' => 'String' },
                  'IsTruncated' => { 'shape' => 'Boolean' },
                  'Results' => { 'shape' => 'StringList' }
                }
              },
              'String' => { 'type' => 'string' },
              'Boolean' => { 'type' => 'boolean'},
              'StringList' => {
                'type' => 'list',
                'member' => { 'shape' => 'String' }
              }
            }
          },
          paginators: {
            'pagination' => {
              'OperationName' => {
                'limit_key' => 'MaxResults',
                'input_token' => 'NextToken',
                'output_token' => 'NextToken',
                'more_results' => 'IsTruncated'
              }
            }
          }
        )

        client = svc::Client.new(stub_responses: true)
        stub = client.operation_name
        expect(stub[:results]).to eq([])
        expect(stub[:next_token]).to be(nil)
        expect(stub[:is_truncated]).to be(false)
      end

    end
  end
end
