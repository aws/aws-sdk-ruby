# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Protocols Resolution:' do
  it 'raises on fake protocols' do
    expect {
      SpecHelper.generate_service(['ProtocolsFake'], multiple_files: false)
    }.to raise_error(/unsupported protocol/)
  end

  context 'with smithy rpc protocol support' do
    it 'selects smithy rpc v2 with priority' do
      SpecHelper.generate_service(['ProtocolsRpcJson'], multiple_files: false)
      client = ProtocolsRpcJson::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::RpcV2::Handler)
      Object.send(:remove_const, :ProtocolsRpcJson)
    end

    it 'selects smithy rpc v2 if it is the only choice' do
      SpecHelper.generate_service(['ProtocolsRpc'], multiple_files: false)
      client = ProtocolsRpc::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::RpcV2::Handler)
      Object.send(:remove_const, :ProtocolsRpc)
    end

    it 'selects smithy rpc v2 out of a list' do
      SpecHelper.generate_service(['ProtocolsRpcJsonQuery'], multiple_files: false)
      client = ProtocolsRpcJsonQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::RpcV2::Handler)
      Object.send(:remove_const, :ProtocolsRpcJsonQuery)
    end

    it 'selects json as fallback if smithy rpc v2 is not modeled' do
      SpecHelper.generate_service(['ProtocolsJsonQuery'], multiple_files: false)
      client = ProtocolsJsonQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Json::Handler)
      Object.send(:remove_const, :ProtocolsJsonQuery)
    end

    it 'selects query if it is the only choice' do
      SpecHelper.generate_service(['ProtocolsQuery'], multiple_files: false)
      client = ProtocolsQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Query::Handler)
      Object.send(:remove_const, :ProtocolsQuery)
    end
  end

  context 'without smithy rpc protocol support' do
    before do
      protocols = AwsSdkCodeGenerator::Service::SUPPORTED_PROTOCOLS
      protocols = protocols.reject { |p| p == 'smithy-rpc-v2-cbor' }
      stub_const('AwsSdkCodeGenerator::Service::SUPPORTED_PROTOCOLS', protocols)
    end

    it 'selects json as a fallback' do
      SpecHelper.generate_service(['ProtocolsRpcJson'], multiple_files: false)
      client = ProtocolsRpcJson::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Json::Handler)
      Object.send(:remove_const, :ProtocolsRpcJson)
    end

    it 'raises an error if the protocol is not supported' do
      expect {
        SpecHelper.generate_service(['ProtocolsRpc'], multiple_files: false)
      }.to raise_error(/unsupported protocol/)
    end

    it 'selects json out of a list with unsupported protocols' do
      SpecHelper.generate_service(['ProtocolsRpcJsonQuery'], multiple_files: false)
      client = ProtocolsRpcJsonQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Json::Handler)
      Object.send(:remove_const, :ProtocolsRpcJsonQuery)
    end

    it 'selects json out of a list' do
      SpecHelper.generate_service(['ProtocolsJsonQuery'], multiple_files: false)
      client = ProtocolsJsonQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Json::Handler)
      Object.send(:remove_const, :ProtocolsJsonQuery)
    end

    it 'selects query if it is the only choice' do
      SpecHelper.generate_service(['ProtocolsQuery'], multiple_files: false)
      client = ProtocolsQuery::Client.new(stub_responses: true)
      expect(client.handlers).to include(Aws::Query::Handler)
      Object.send(:remove_const, :ProtocolsQuery)
    end
  end
end
