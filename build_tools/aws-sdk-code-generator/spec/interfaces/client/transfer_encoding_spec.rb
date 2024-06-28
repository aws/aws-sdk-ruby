# frozen_string_literal: true

require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Transfer Encoding' do
    before(:all) do
      SpecHelper.generate_service(['TransferEncoding'], multiple_files: false)
    end

    let(:client) do
      TransferEncoding::Client.new(stub_responses: true)
    end

    it 'adds `Transfer-Encoding` header for `v4-unsigned-body` auth types' do
      resp = client.unsign_streaming(body: StringIO.new('hey'))
      expect(resp.context.http_request.headers['Transfer-Encoding']).to be(nil)
      expect(resp.context.http_request.headers['Content-Length']).to eq('3')

      tf = Tempfile.new('transfer-encoding-test')
      tf.write('hey')
      io = IO.new(IO.sysopen(tf))

      resp = client.unsign_streaming(body: io)
      expect(
        resp.context.http_request.headers['Transfer-Encoding']
      ).to eq('chunked')
      expect(resp.context.http_request.headers['Content-Length']).to eq(nil)

      tf.close
      tf.unlink
    end

    it 'raises error when `Content-Length` header is required but cannot be set' do
      tf = Tempfile.new('transfer-encoding-test')
      tf.write('hey')
      io = IO.new(IO.sysopen(tf))

      msg = 'Required `Content-Length` value missing for the request.'
      expect do
        client.streaming(body: io)
      end.to raise_error(Aws::Errors::MissingContentLength, msg)
      expect do
        client.unsign_require_len_streaming(body: io)
      end.to raise_error(Aws::Errors::MissingContentLength, msg)

      tf.close
      tf.unlink
    end

    it 'allows `requireLength` and `v4-unsigned-body` for streaming operations' do
      resp = client.unsign_require_len_streaming(body: StringIO.new('hey'))
      expect(resp.context.http_request.headers['Transfer-Encoding']).to be(nil)
      expect(resp.context.http_request.headers['Content-Length']).to eq('3')
    end

    it 'sets `Content-Length` header for streaming operations' do
      resp = client.streaming(body: 'heyhey')
      expect(resp.context.http_request.headers['Content-Length']).to eq('6')
    end

    it 'sets `Content-Length` header for non streaming operations' do
      resp = client.non_streaming(body: 'heyhey')
      expect(resp.context.http_request.headers['Content-Length']).to eq('19')
    end
  end
end
