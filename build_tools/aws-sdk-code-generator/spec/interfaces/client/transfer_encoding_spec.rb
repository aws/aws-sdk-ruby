require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Transfer Encoding' do
    before(:all) do
      SpecHelper.generate_service(['TransferEncoding'], multiple_files: false)
    end

    let(:client) do
      TransferEncoding::Client.new(
        region: 'us-west-2',
        access_key_id: 'akid',
        secret_access_key: 'secret',
        stub_responses: true,
        endpoint: 'https://svc.us-west-2.amazonaws.com'
      )
    end

    it 'adds `Transfer-Encoding` header for `v4-unsigned-body` auth types' do
      resp = client.unsign_streaming(body: StringIO.new('hey'))
      expect(resp.context.http_request.headers['Transfer-Encoding']).to be(nil)
      expect(resp.context.http_request.headers['Content-Length']).to eq('3')

      rd, wr = IO.pipe
      wr.puts 'hey'
      resp = client.unsign_streaming(body: rd)
      expect(
        resp.context.http_request.headers['Transfer-Encoding']
      ).to eq('chunked')
      expect(resp.context.http_request.headers['Content-Length']).to eq(nil)
    end

    it 'raises error when `Content-Length` header is required but cannot be set' do
      rd, wr = IO.pipe
      wr.puts 'hey'
      msg = 'Required `Content-Length` value missing for the request.'
      expect do
        client.streaming(body: rd)
      end.to raise_error(Aws::Errors::MissingContentLength, msg)
      expect do
        client.unsign_require_len_streaming(body: rd)
      end.to raise_error(Aws::Errors::MissingContentLength, msg)
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
