# frozen_string_literal: true

require_relative '../../spec_helper'
require 'stringio'

module Aws
  module Plugins
    describe HttpChecksum do
      let(:http_checksum_client) do
        ApiHelper.sample_service(
          metadata: { 'protocol' => 'rest-xml' },
          operations: {
            'Operation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'StructureShape' },
              'output' => { 'shape' => 'StructureShape' }
            },
            'ChecksumOperation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'StructureShape' },
              'output' => { 'shape' => 'StructureShape' },
              'httpChecksumRequired' => { 'required' => 'true' }
            },
            'ChecksumStreamingOperation' => {
              'http' => { 'method' => 'POST', 'requestUri' => '/' },
              'input' => { 'shape' => 'PayloadStructureShape' },
              'output' => { 'shape' => 'PayloadStructureShape' },
              'httpChecksumRequired' => { 'required' => 'true' }
            }
          }
        ).const_get(:Client)
      end

      let(:client) do
        http_checksum_client.new(stub_responses: true)
      end

      context 'checksum not required' do
        it 'does not compute MD5 and does not send the content-md5 header' do
          resp = client.operation(string: 'i am just a string')
          expect(resp.context.http_request.headers['content-md5']).to be_nil
        end
      end

      context 'httpChecksumRequired operations' do
        it 'computes MD5 of the http body and sends as content-md5 header' do
          resp = client.checksum_operation(string: 'md5 me captain')
          expect(resp.context.http_request.headers['content-md5']).to eq(
            'rqd/0N8H2GgZWzmo3oY9tA=='
          )
        end

        it 'computes the MD5 by reading the body 1MB at a time' do
          body = StringIO.new('.' * 5 * 1024 * 1024) # 5MB
          allow(body).to receive(:read)
            .with(1024 * 1024, any_args).and_call_original
          resp = client.checksum_streaming_operation(streaming_blob: body)
          expect(resp.context.http_request.headers['content-md5']).to eq(
            '+kDD2/74SZx+Rz+/Dw7I1Q=='
          )
        end
      end
    end
  end
end
