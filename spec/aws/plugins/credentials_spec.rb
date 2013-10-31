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

        it 'raises an error if you construct a client without credentials' do
          client_class = Seahorse::Client.define
          client_class.add_plugin(Credentials)
          expect { client_class.new }.to raise_error(Errors::MissingCredentialsError)
        end

      end

    end
  end
end
