# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module MachineLearning
    describe Client do

      let(:client) { Client.new(stub_responses:true) }

      describe '#predict' do

        it 'uses the :predict_endpoint parameter as the http endpoint' do

          endpoint = nil
          client.handle(step: :send) do |context|
            endpoint = context.http_request.endpoint
            Seahorse::Client::Response.new(context: context)
          end
          client.predict(
            predict_endpoint: 'https://foo.com',
            ml_model_id: 'id',
            record: {}
          )
          expect(endpoint.to_s).to eq('https://foo.com')
        end

      end
    end
  end
end
