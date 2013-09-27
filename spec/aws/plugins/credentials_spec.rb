require 'spec_helper'

module Aws
  module Plugins
    describe Credentials do

      let(:env) {{}}

      let(:plugin) { Plugins::Credentials.new }

      before do
        stub_const("ENV", env)
      end

      describe 'configuration' do

        let(:config) { Seahorse::Client::Configuration.new }

        it 'adds a credentials option' do
          plugin.add_options(config)
          expect(config.build!).to respond_to(:credentials)
        end

        it 'defaults to a Credentials object' do
          plugin.add_options(config)
          expect(config.build!.credentials).to be_kind_of(Aws::Credentials)
        end

        it 'hydrates credentials from the env (AWS_)' do
          env['AWS_ACCESS_KEY_ID'] = 'akid'
          env['AWS_SECRET_ACCESS_KEY'] = 'secret'
          env['AWS_SESSION_TOKEN'] = 'token'
          plugin.add_options(config)
          cfg = config.build!
          expect(cfg.credentials.set?).to be(true)
          expect(cfg.credentials.access_key_id).to eq('akid')
          expect(cfg.credentials.secret_access_key).to eq('secret')
          expect(cfg.credentials.session_token).to eq('token')
        end

        it 'hydrates credentials from the env (AMAZON_)' do
          env['AMAZON_ACCESS_KEY_ID'] = 'akid2'
          env['AMAZON_SECRET_ACCESS_KEY'] = 'secret2'
          env['AMAZON_SESSION_TOKEN'] = 'token2'
          plugin.add_options(config)
          cfg = config.build!
          expect(cfg.credentials.set?).to be(true)
          expect(cfg.credentials.access_key_id).to eq('akid2')
          expect(cfg.credentials.secret_access_key).to eq('secret2')
          expect(cfg.credentials.session_token).to eq('token2')
        end

      end

      describe 'handler' do

        let(:config) {
          config = Seahorse::Client::Configuration.new
          plugin.add_options(config)
          config
        }

        it 'raises a runtime error if credentials are not set' do
          expect {
            call_handler(Credentials::Handler, credentials: nil)
          }.to raise_error(Errors::MissingCredentialsError)
        end

        it 'raises a runtime error if credentials are empty' do
          credentials = Aws::Credentials.new(nil, nil)
          expect {
            call_handler(Credentials::Handler, credentials: credentials)
          }.to raise_error(Errors::MissingCredentialsError)
        end

        it 'accepts populated credentials' do
          credentials = Aws::Credentials.new('akid', 'secret')
          expect {
            call_handler(Credentials::Handler, credentials: credentials)
          }.not_to raise_error
        end

        it 'accepts credentials populated from ENV' do
          env['AWS_ACCESS_KEY_ID'] = 'akid'
          env['AWS_SECRET_ACCESS_KEY'] = 'secret'
          env['AWS_SESSION_TOKEN'] = 'token'
          expect {
            call_handler(Credentials::Handler, config: config)
          }.not_to raise_error
        end

      end

    end
  end
end
