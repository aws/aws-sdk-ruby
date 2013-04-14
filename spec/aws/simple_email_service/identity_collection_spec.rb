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

module AWS
  class SimpleEmailService

    describe IdentityCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_email_service_client }

      let(:identities) { IdentityCollection.new(:config => config) }

      context '#verify' do

        context 'email addresses' do

          it 'calls #verify_email_identity on the client' do
            client.should_receive(:verify_email_identity).
              with(:email_address => 'email@domain.com').
              and_return(client.stub_for(:verify_email_identity))
            identities.verify('email@domain.com')
          end

          it 'returns an identity' do
            identity = identities.verify('email@domain.com')
            identity.identity.should == 'email@domain.com'
            identity.email_address?.should == true
            identity.verification_token.should == nil
            identity.config.should == config
          end

        end

        context 'domains' do

          let(:resp) { client.stub_for(:verify_domain_identity) }

          before(:each) do
            resp.data[:verification_token] = 'TOKEN'
            client.stub(:verify_domain_identity).and_return(resp)
          end

          it 'calls #verify_email_identity on the client' do
            client.should_receive(:verify_domain_identity).
              with(:domain => 'domain.com').
              and_return(resp)
            identities.verify('domain.com')
          end

          it 'returns an identity' do
            identity = identities.verify('domain.com')
            identity.identity.should == 'domain.com'
            identity.domain?.should == true
            identity.config.should == config
            identity.verification_token.should == 'TOKEN'
          end

        end

      end

      context '#create' do

        it 'is an alias of verify' do
          identities.method(:create).should == identities.method(:verify)
        end

      end

      context '#[]' do

        it 'returns an identity' do
          i = identities['abc']
          i.identity.should == 'abc'
        end

        it 'returns an identity with the correct configuration' do
          identities['abc'].config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { identities }
        let(:client_method)   { :list_identities }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_items }
        let(:request_options) {{}}

        def stub_n_members response, n
          response.data[:identities] = (1..n).map{|i| "identity-#{i}" }
        end

      end

      context '#email_addresses' do

        it_behaves_like "a pageable collection with limits" do

          let(:collection)      { identities.email_addresses }
          let(:client_method)   { :list_identities }
          let(:next_token_key)  { :next_token }
          let(:limit_key)       { :max_items }
          let(:request_options) {{ :identity_type => 'EmailAddress'}}

          def stub_n_members response, n
            response.data[:identities] = (1..n).map{|i| "identity-#{i}" }
          end

        end

      end

      context '#domains' do

        it_behaves_like "a pageable collection with limits" do

          let(:collection)      { identities.domains }
          let(:client_method)   { :list_identities }
          let(:next_token_key)  { :next_token }
          let(:limit_key)       { :max_items }
          let(:request_options) {{ :identity_type => 'Domain'}}

          def stub_n_members response, n
            response.data[:identities] = (1..n).map{|i| "identity-#{i}" }
          end

        end

      end

    end
  end
end
