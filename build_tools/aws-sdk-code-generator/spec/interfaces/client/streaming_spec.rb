# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support Block Streaming' do

    before(:all) do
      SpecHelper.generate_service(['Streaming'], multiple_files: false)
    end

    let(:client) {
      Streaming::Client.new(
        region: 'us-west-2',
        credentials: Aws::Credentials.new('akid', 'secret'),
        stub_responses: true
      )
    }

    it 'support block streaming for streaming operations' do
      resp = client.foo {|part| part}
      expect(resp.context[:response_target]).to be_a(Proc)
      expect(resp.body).to be_a(Seahorse::Client::BlockIO)

      resp = client.bar {|part| part}
      expect(resp.context[:response_target]).to be_a(Proc)
      expect(resp.payload_member).to be_a(Seahorse::Client::BlockIO)

      resp = client.baz {|part| part}
      expect(resp.context[:response_target]).to be_a(Proc)
      expect(resp.payload_member).to be_a(Seahorse::Client::BlockIO)
    end

  end
end
