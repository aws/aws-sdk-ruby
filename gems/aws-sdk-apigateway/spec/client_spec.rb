# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module APIGateway
    describe Client do

      let(:client) { Client.new(stub_responses:true) }

      it 'supports maps for querystrings' do
        resp = client.get_sdk({
          rest_api_id: 'rest-api-id',
          stage_name: 'stage-name',
          sdk_type: 'sdk-type',
          parameters: {
            'abc' => 'xyz',
            'key' => 'value',
            'string' => 'string',
          }
        })

        expect(resp.context.http_request.endpoint.to_s).to match(/\?abc=xyz&key=value&string=string$/)

      end

    end
  end
end
