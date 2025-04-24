# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Support APIs operations' do
    before(:all) do
      SpecHelper.generate_service(['Sample'], multiple_files: false)
    end

    let(:client) { Sample::Client.new(region: 'us-west-2', stub_responses: true) }
    let(:request) { double('request') }

    before(:each) do
      allow(client).to receive(:build_request).and_return(request)
    end

    it 'responds to each operation name' do
      client.operation_names.each do |operation_name|
        expect(client).to respond_to(operation_name)
      end
    end

    it 'builds and sends a request when it receives a request method' do
      expect(client)
        .to receive(:build_request)
        .with(:create_band, { band_name: 'ruby' })
        .and_return(request)
      expect(request).to receive(:send_request)

      client.create_band(band_name: 'ruby')
    end

    it 'passes block arguments to the request method' do
      expect(request)
        .to receive(:send_request)
        .and_yield('foo')
        .and_yield('bar')
        .and_yield('baz')

      chunks = []
      client.get_band(band_name: 'ruby') { |c| chunks << c }
      expect(chunks).to eq(%w(foo bar baz))
    end
  end
end
