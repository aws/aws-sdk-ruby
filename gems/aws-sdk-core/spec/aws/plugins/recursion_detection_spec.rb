# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe RecursionDetection do

      RecursionDetectionClient = ApiHelper.sample_service(
        api: {
          'metadata' => {
            'apiVersion' => '2022-02-22',
            'protocol' => 'rest-json',
            'endpointPrefix' => 'svc',
            'signatureVersion' => 'v4'
          },
          'operations' => {
            'OperationWithTraceId' => {
              'name' => 'OperationWithTraceId',
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'FooInput'}
            }
          },
          'shapes' => {
            'FooInput' => {
              'type' => 'structure',
              'members' => {
                'TraceId' => {
                  'shape' => 'String',
                  'location' => "header",
                  'locationName' => "x-amzn-trace-id"
                }
              }
            },
            'String' => { 'type' => 'string' }
          }
        }
      ).const_get(:Client)

      let(:creds) { Aws::Credentials.new('akid', 'secret') }
      let(:client) do
        RecursionDetectionClient.new(credentials: creds, region: 'us-west-2', stub_responses: true)
      end

      let(:lambda_function_name) { 'lambda_function_name' }

      context 'no ENV variables set' do
        it 'does not set the header when ENV is not set' do
          resp = client.operation_with_trace_id
          expect(resp.context.http_request.headers.key?('x-amzn-trace-id')).to be_falsey
        end
      end

      context 'AWS_LAMBDA_FUNCTION_NAME is not set' do
        let(:env_trace_id) { 'Root=1-5759e988-bd862e3fe1be46a994272793;Parent=53995c3f42cd8ad8;Sampled=1;lineage=a87bd80c:0,68fd508a:5,c512fbe3:2' }
        before do
          allow(ENV).to receive(:[]).and_return(nil)
          allow(ENV).to receive(:[]).with('_X_AMZN_TRACE_ID')
                                    .and_return(env_trace_id)
        end

        it 'does not set the header' do
          resp = client.operation_with_trace_id
          expect(resp.context.http_request.headers.key?('x-amzn-trace-id')).to be_falsey

        end

      end

      context 'both ENV variables are set' do
        let(:env_trace_id) { 'Root=1-5759e988-bd862e3fe1be46a994272793;Parent=53995c3f42cd8ad8;Sampled=1;lineage=a87bd80c:0,68fd508a:5,c512fbe3:2' }
        before do
          allow(ENV).to receive(:[]).and_return(nil)
          allow(ENV).to receive(:[]).with('AWS_LAMBDA_FUNCTION_NAME')
                                    .and_return(lambda_function_name)
          allow(ENV).to receive(:[]).with('_X_AMZN_TRACE_ID')
                                    .and_return(env_trace_id)
        end

        it 'sets the header' do
          resp = client.operation_with_trace_id
          expect(resp.context.http_request.headers['x-amzn-trace-id']).to eq(env_trace_id)
        end

        it 'does not override the header when the value is already set' do
          user_trace_id = "user_trace_id"
          resp = client.operation_with_trace_id(trace_id: user_trace_id)
          expect(resp.context.http_request.headers['x-amzn-trace-id']).to eq(user_trace_id)
        end

        context 'X_AMX_TRACE_ID with invalid characters' do
          (0..31).each do |char|
            let(:env_trace_id) { "invalid header" + char.chr }

            it "validates the trace-id with #{char} and raises an error" do
              expect do
                client.operation_with_trace_id
              end.to raise_error(ArgumentError)
            end
          end
        end

        context 'X_AMZ_TRACE_ID is unset' do
          let(:env_trace_id) { nil }

          it 'does not set the header' do
            resp = client.operation_with_trace_id
            expect(resp.context.http_request.headers['x-amzn-trace-id']).to be_nil
          end
        end
      end
    end
  end
end
