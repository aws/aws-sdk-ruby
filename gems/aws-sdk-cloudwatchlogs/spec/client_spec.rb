# frozen_string_literal: true

require_relative 'spec_helper'

module Aws
  module CloudWatchLogs
    describe Client do

      let(:client) { Client.new(stub_responses:true) }

      describe '#get_log_events' do

        it 'stops paginating when the next tokens are fixed' do
          json = []
          json << (<<-JSON)
{
  "events": [
    {
      "ingestionTime": 1396035394997,
      "timestamp": 1396035378988,
      "message": "Example Event 1"
    }
  ],
  "nextForwardToken": "abc"
}
          JSON
          json << (<<-JSON)
{
  "events": [
    {
      "ingestionTime": 1396035394997,
      "timestamp": 1396035378988,
      "message": "Example Event 2"
    }
  ],
  "nextForwardToken": "mno"
}
          JSON
          json << (<<-JSON)
{
  "events": [],
  "nextForwardToken": "mno"
}
          JSON
          client.handle(step: :send) do |context|
            context.http_response.signal_headers(200, {})
            context.http_response.signal_data(json.shift)
            context.http_response.signal_done
            Seahorse::Client::Response.new(context:context)
          end

          yield_count = 0
          params = { log_group_name:'name', log_stream_name:'name' }
          client.get_log_events(params).each { |resp| yield_count += 1 }
          expect(yield_count).to eq(3)
        end
      end
    end
  end
end
