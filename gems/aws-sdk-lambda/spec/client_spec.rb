require_relative 'spec_helper'

module Aws
  module Lambda
    describe Client do
      describe '#get_function' do

        let(:client) { Client.new(stub_responses: true) }

        it 'returns #last_modified as a Time value' do
          time = "2015-01-02T10:11:12Z"
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(200, {})
            context.http_response.signal_data(<<-JSON)
              {
                "Configuration": {
                  "LastModified": "#{time}"
                }
              }
            JSON
            context.http_response.signal_done
            Seahorse::Client::Response.new(context: context)
          end

          resp = client.get_function(function_name: 'name')
          expect(resp.configuration.last_modified).to be_kind_of(Time)
          expect(resp.configuration.last_modified.iso8601).to eq(time)
        end

      end
    end
  end
end
