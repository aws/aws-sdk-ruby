# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module MachineLearning
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      describe '#predict' do
        #   {
        #       id: "MachinelearningPredictEndpoint",
        #       documentation: """
        #           MachineLearning's api makes use of generated endpoints that the
        #           customer is then expected to use for the Predict operation. Having
        #           to alter the endpoint for a specific operation would be cumbersome,
        #           so an AWS client should be able to do it for them.""",
        #       protocol: awsJson1_1,
        #       method: "POST",
        #       uri: "/",
        #       host: "example.com",
        #       resolvedHost: "custom.example.com",
        #       body: "{\"MLModelId\": \"foo\", \"Record\": {}, \"PredictEndpoint\": \"https://custom.example.com/\"}",
        #       bodyMediaType: "application/json",
        #       headers: {"Content-Type": "application/x-amz-json-1.1"},
        #       params: {
        #           MLModelId: "foo",
        #           Record: {},
        #           PredictEndpoint: "https://custom.example.com/",
        #       }
        #   }
        it 'MachinelearningPredictEndpoint' do
          endpoint = 'https://custom.example.com/'
          body = '{"MLModelId":"foo","Record":{},"PredictEndpoint":"https://custom.example.com/"}'
          headers = { 'Content-Type' => 'application/x-amz-json-1.1' }
          resp = client.predict(
            ml_model_id: 'foo',
            record: {},
            predict_endpoint: endpoint
          )
          request = resp.context.http_request
          expect(request.endpoint.to_s).to eq(endpoint)
          expect(request.body_contents).to eq(body)
          expect(request.headers['content-type']).to eq(headers['Content-Type'])
        end
      end
    end
  end
end
