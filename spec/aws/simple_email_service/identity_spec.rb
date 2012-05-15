# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    describe Identity do

      let(:config) { stub_config }

      let(:client) { config.simple_email_service_client }

      shared_examples_for "an ses identity" do

        context 'attributes' do

          let(:resp) { client.stub_for(:get_identity_verification_attributes) }

          let(:attributes)  {{}}

          before(:each) do
            resp.data[:verification_attributes] = {}
            resp.data[:verification_attributes][identity.identity] = attributes
            client.stub(:get_identity_verification_attributes).and_return(resp)
          end

          context "#verification_status" do

            it 'calls :get_identity_verificiation_attributes on the client' do

              client.should_receive(:get_identity_verification_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)

              identity.verification_status

            end

            it 'returns the status' do
              attributes[:verification_status] = 'STATUS-VALUE'
              identity.verification_status.should == 'STATUS-VALUE'
            end

          end

          context '#verification_token' do

            it 'calls :get_identity_verificiation_attributes on the client' do

              client.should_receive(:get_identity_verification_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)

              identity.verification_token

            end

            it 'returns the token' do
              attributes[:verification_token] = 'TOKEN'
              identity.verification_token.should == 'TOKEN'
            end

            it 'returns nil when not provided' do
              attributes.delete(:verification_token)
              identity.verification_token.should == nil
            end

            it 'is static' do
              client.should_not_receive(:get_identity_verification_attributes)
              i = Identity.new('foo', :verification_token => 'abc')
              i.verification_token.should == 'abc'
            end

          end

          context '#verified?' do

            it 'returns true when the verification status is "Success"' do
              attributes[:verification_status] = 'Success'
              identity.verified?.should == true
            end

            it 'returns false when the verification status is not "Success"' do
              attributes[:verification_status] = 'Pending'
              identity.verified?.should == false
            end

          end

          context '#pending?' do

            it 'returns true when the verification status is "Pending"' do
              attributes[:verification_status] = 'Pending'
              identity.pending?.should == true
            end

            it 'returns false when the verification status is not "Pending"' do
              attributes[:verification_status] = 'Success'
              identity.pending?.should == false
            end

          end

        end

        context '#delete' do

          it 'calls #delete_identity on the client' do
            client.should_receive(:delete_identity).
              with(:identity => identity.identity)
            identity.delete
          end

        end

      end

      context 'email addresses' do
        
        let(:identity) { Identity.new('email@domain.com', :config => config) }

        it_should_behave_like "an ses identity"

        it 'returns true from #email_address?' do
          identity.email_address?.should == true
        end

        it 'returns false from #domain?' do
          identity.domain?.should == false
        end

      end

      context 'domains' do
        
        let(:identity) { Identity.new('domain.com', :config => config) }

        it_should_behave_like "an ses identity"

        it 'returns false from #email_address?' do
          identity.email_address?.should == false
        end

        it 'returns true from #domain?' do
          identity.domain?.should == true
        end

      end

    end
  end
end
