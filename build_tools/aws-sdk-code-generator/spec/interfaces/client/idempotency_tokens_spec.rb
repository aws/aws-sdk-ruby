require_relative '../../spec_helper'

describe 'Client Interface:' do
  describe 'Idempotency Tokens' do

    before(:all) do
      SpecHelper.generate_service(['IdempotencyToken'], multiple_files: false)
    end

    let(:client) {
      IdempotencyToken::Client.new(
        region: 'us-west-2',
        access_key_id: 'akid',
        secret_access_key: 'secret',
        stub_responses: true
      )
    }

    it 'auto-populates request parameters that are idempotency tokens' do
      allow(SecureRandom).to receive(:uuid).and_return('RANDOMTOKEN')
      resp = client.operation_with_idempotency_token
      expect(resp.context.params[:client_token]).to eq('RANDOMTOKEN')
    end

    it 'does not modify given idempotency tokens' do
      expect(SecureRandom).not_to receive(:uuid)
      resp = client.operation_with_idempotency_token(client_token: 'xyz')
      expect(resp.context.params[:client_token]).to eq('xyz')
    end

  end
end
