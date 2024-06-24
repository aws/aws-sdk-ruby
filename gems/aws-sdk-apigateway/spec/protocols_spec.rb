# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module APIGateway
    describe Client do

      let(:client) { Client.new(stub_responses: true) }

      # {
      #     id: "ApiGatewayAccept",
      #     documentation: "API Gateway requires that this Accept header is set on all requests.",
      #     protocol: restJson1,
      #     method: "GET",
      #     uri: "/restapis",
      #     headers: {
      #         "Accept": "application/json",
      #     },
      #     body: "",
      #     params: {},
      # }
      it 'ApiGatewayAccept' do
        resp = client.get_rest_apis
        request = resp.context.http_request
        expect(request.headers['accept']).to eq('application/json')
      end
    end
  end
end
