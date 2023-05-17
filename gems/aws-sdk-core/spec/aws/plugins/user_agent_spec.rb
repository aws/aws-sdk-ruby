# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Plugins
    describe UserAgent do
      let(:svc) { ApiHelper.sample_service }
      let(:client) { svc::Client.new(stub_responses: true) }


      tests = JSON.load_file(
        File.join(File.dirname(__FILE__), 'user_agent_tests.json')
      )


      puts tests.first

      context 'sets user agent' do
        it 'sets the user agent' do
          resp = client.example_operation
          header = resp.context.http_request.headers['User-Agent']
          puts header
          expect(header).to match(/aws-sdk-ruby3/)
        end
      end
    end
  end
end
