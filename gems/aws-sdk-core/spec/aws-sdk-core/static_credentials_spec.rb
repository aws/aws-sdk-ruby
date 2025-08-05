# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  module Core
    describe StaticCredentials do
      it 'returns the credentials' do
        provider = StaticCredentials.new(
          access_key_id: 'ACCESS_KEY_1',
          secret_access_key: 'SECRET_KEY_1',
          session_token: 'TOKEN_1',
          account_id: '123456789012'
        )
        creds = provider.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.account_id).to eq('123456789012')
      end
    end
  end
end
