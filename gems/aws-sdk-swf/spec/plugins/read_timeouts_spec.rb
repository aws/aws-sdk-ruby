# frozen_string_literal: true

require_relative '../spec_helper'
require 'aws-sdk-swf/client'

module Aws
  module SWF
    describe Plugins::ReadTimeouts do
      let(:client) do
        Client.new(stub_responses: true, http_read_timeout: 60)
      end

      it 'uses a request-local read timeout for poll_for_activity_task' do
        client.poll_for_activity_task(
          domain: 'domain',
          task_list: { name: 'task-list' }
        )

        request = client.api_requests.last
        expect(request[:context].config.http_read_timeout).to eq(90)
        expect(client.config.http_read_timeout).to eq(60)
      end

      it 'uses a request-local read timeout for poll_for_decision_task' do
        client.poll_for_decision_task(
            domain: 'domain',
            task_list: { name: 'task-list' }
        )

        request = client.api_requests.last
        expect(request[:context].config.http_read_timeout).to eq(90)
        expect(client.config.http_read_timeout).to eq(60)
      end
    end
  end
end
