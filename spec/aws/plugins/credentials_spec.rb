# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

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
          expect(config).to respond_to(:credentials)
        end

        it 'defaults to a Credentials object' do
          plugin.add_options(config)
          expect(config.credentials).to be_kind_of(Aws::Credentials)
        end

        it 'hydrates credentials from the env (AWS_)' do
          env['AWS_ACCESS_KEY_ID'] = 'akid'
          env['AWS_SECRET_ACCESS_KEY'] = 'secret'
          env['AWS_SESSION_TOKEN'] = 'token'
          plugin.add_options(config)
          expect(config.credentials.set?).to be(true)
          expect(config.credentials.access_key_id).to eq('akid')
          expect(config.credentials.secret_access_key).to eq('secret')
          expect(config.credentials.session_token).to eq('token')
        end

        it 'hydrates credentials from the env (AMAZON_)' do
          env['AMAZON_ACCESS_KEY_ID'] = 'akid2'
          env['AMAZON_SECRET_ACCESS_KEY'] = 'secret2'
          env['AMAZON_SESSION_TOKEN'] = 'token2'
          plugin.add_options(config)
          expect(config.credentials.set?).to be(true)
          expect(config.credentials.access_key_id).to eq('akid2')
          expect(config.credentials.secret_access_key).to eq('secret2')
          expect(config.credentials.session_token).to eq('token2')
        end

      end

      describe 'handler' do

        let(:options) {{}}

        let(:config) {
          config = Seahorse::Client::Configuration.new(options)
          plugin.add_options(config)
          config
        }

        it 'raises a runtime error if credentials are not set' do
          options[:credentials] = nil
          expect {
            call_handler(Credentials::Handler, config: config)
          }.to raise_error(Credentials::MissingCredentialsError)
        end

        it 'raises a runtime error if credentials are empty' do
          options[:credentials] = Aws::Credentials.new(nil, nil)
          expect {
            call_handler(Credentials::Handler, config: config)
          }.to raise_error(Credentials::MissingCredentialsError)
        end

        it 'accepts populated credentials' do
          options[:credentials] = Aws::Credentials.new('akid', 'secret')
          expect {
            call_handler(Credentials::Handler, config: config)
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
