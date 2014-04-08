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
    describe Identity do

      let(:config) { stub_config }

      let(:client) { config.simple_email_service_client }

      shared_examples_for "an ses identity" do

        context 'notification attributes' do

          let(:resp) { client.stub_for(:get_identity_notification_attributes) }

          let(:attributes) {{}}

          before(:each) do
            resp.data[:notification_attributes] = {}
            resp.data[:notification_attributes][identity.identity] = attributes
            client.stub(:get_identity_notification_attributes).and_return(resp)
          end

          context '#bounce_topic_arn' do

            it 'calls #get_identity_notification_attributes on the client' do
              client.should_receive(:get_identity_notification_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)
              identity.bounce_topic_arn
            end

            it 'returns the bounce notification topic arn' do
              attributes[:bounce_topic] = 'bounce-arn'
              identity.bounce_topic_arn.should eq('bounce-arn')
            end

            it 'returns nil when not present' do
              attributes.delete(:bounce_topic)
              identity.bounce_topic_arn.should eq(nil)
            end

            it 'is mutable' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Bounce',
                :sns_topic => 'arn')
              identity.bounce_topic_arn = 'arn'
            end

            it 'accepts nil' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Bounce')
              identity.bounce_topic_arn = nil
            end

          end

          context '#complaint_topic_arn' do

            it 'calls #get_identity_notification_attributes on the client' do
              client.should_receive(:get_identity_notification_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)
              identity.complaint_topic_arn
            end

            it 'returns the complaint notification topic arn' do
              attributes[:complaint_topic] = 'complaint-arn'
              identity.complaint_topic_arn.should eq('complaint-arn')
            end

            it 'returns nil when not present' do
              attributes.delete(:complaint_topic)
              identity.complaint_topic_arn.should eq(nil)
            end

            it 'is mutable' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Complaint',
                :sns_topic => 'arn')
              identity.complaint_topic_arn = 'arn'
            end

            it 'accepts nil' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Complaint')
              identity.complaint_topic_arn = nil
            end

          end

          context '#forwarding_enabled' do

            it 'calls #get_identity_notification_attributes on the client' do
              client.should_receive(:get_identity_notification_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)
              identity.forwarding_enabled
            end

            it 'returns the state' do
              attributes[:forwarding_enabled] = true
              identity.forwarding_enabled?.should == true
            end

            it 'is aliased with a question mark' do
              identity.method(:forwarding_enabled?).should
                eq(identity.method(:forwarding_enabled))
            end

            it 'is mutable' do
              client.should_receive(:set_identity_feedback_forwarding_enabled).with(
                :identity => identity.identity,
                :forwarding_enabled => true)
              identity.forwarding_enabled = true
            end

            it 'can be set to false' do
              client.should_receive(:set_identity_feedback_forwarding_enabled).with(
                :identity => identity.identity,
                :forwarding_enabled => false)
              identity.forwarding_enabled = false
            end

          end

          context '#bounce_topic' do

            it 'wraps the arn in a sns topic' do
              attributes[:bounce_topic] = 'topic-arn'
              identity.bounce_topic.should be_a(SNS::Topic)
              identity.bounce_topic.arn.should eq('topic-arn')
              identity.config.should eq(config)
            end

            it 'returns nil when there is not arn' do
              attributes.delete(:bounce_topic)
              identity.bounce_topic.should eq(nil)
            end

          end

          context '#bounce_topic=' do

            it 'accpets a topic object' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Bounce',
                :sns_topic => 'arn')
              identity.bounce_topic = SNS::Topic.new('arn')
            end

            it 'accepts a topic arn' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Bounce',
                :sns_topic => 'arn')
              identity.bounce_topic = 'arn'
            end

            it 'accepts nil' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Bounce')
              identity.bounce_topic = nil
            end

          end

          context '#complaint_topic' do

            it 'wraps the arn in a sns topic' do
              attributes[:complaint_topic] = 'topic-arn'
              identity.complaint_topic.should be_a(SNS::Topic)
              identity.complaint_topic.arn.should eq('topic-arn')
              identity.config.should eq(config)
            end

            it 'returns nil when there is not arn' do
              attributes.delete(:complaint_topic)
              identity.complaint_topic.should eq(nil)
            end

          end

          context '#complaint_topic=' do

            it 'accpets a topic object' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Complaint',
                :sns_topic => 'arn')
              identity.complaint_topic = SNS::Topic.new('arn')
            end

            it 'accepts a topic arn' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Complaint',
                :sns_topic => 'arn')
              identity.complaint_topic = 'arn'
            end

            it 'accepts nil' do
              client.should_receive(:set_identity_notification_topic).with(
                :identity => identity.identity,
                :notification_type => 'Complaint')
              identity.complaint_topic = nil
            end

          end

        end

        context 'dkim attributes' do

          let(:resp) { client.stub_for(:get_identity_dkim_attributes) }

          let(:attributes) {{}}

          before(:each) do
            resp.data[:dkim_attributes] = {}
            resp.data[:dkim_attributes][identity.identity] = attributes
            client.stub(:get_identity_dkim_attributes).and_return(resp)
          end

          context '#dkim_enabled' do

            it 'calls #get_identity_dkim_attributes on the client' do

              client.should_receive(:get_identity_dkim_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)

              identity.dkim_enabled

            end

            it 'is aliased as #dkim_enabled?' do
              identity.method(:dkim_enabled).should
                eq(identity.method(:dkim_enabled?))
            end

            it 'returns the dkim enabled state' do
              state = double('dkim-enabled-state')
              attributes[:dkim_enabled] = state
              identity.dkim_enabled.should eq(state)
            end

          end

          context '#dkim_enabled=' do

            it '#calls #set_identity_dkim_enabled with the state' do

              state = double('dkim-enabled-state')

              client.should_receive(:set_identity_dkim_enabled).with(
                :identity => identity.identity,
                :dkim_enabled => state)

              identity.dkim_enabled = state

            end

          end

          context '#dkim_tokens' do

            it 'calls #get_identity_dkim_attributes on the client' do

              client.should_receive(:get_identity_dkim_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)

              identity.dkim_tokens

            end

            it 'returns the dkim tokens' do
              tokens = double('dkim-enabled-tokens')
              attributes[:dkim_tokens] = tokens
              identity.dkim_tokens.should eq(tokens)
            end

          end

          context '#dkim_verification_status' do

            it 'calls #get_identity_dkim_attributes on the client' do

              client.should_receive(:get_identity_dkim_attributes).
                with(:identities => [identity.identity]).
                and_return(resp)

              identity.dkim_verification_status

            end

            it 'returns the dkim verification status' do
              status = double('dkim-verification-status')
              attributes[:dkim_verification_status] = status
              identity.dkim_verification_status.should eq(status)
            end

          end

        end

        context 'verification attributes' do

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

        context '#verify_dkim' do
          it 'raises a RuntimeError' do
            expect { identity.verify_dkim }.to raise_exception(RuntimeError)
          end
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

        context '#verify_dkim' do
          let(:resp) { client.stub_for(:verify_domain_dkim) }

          let(:attributes) { ['TOKEN1', 'TOKEN2'] }

          before(:each) do
            resp.data[:dkim_tokens] = attributes
            client.stub(:verify_domain_dkim).and_return(resp)
          end


          it 'calls #verify_domain_dkim on the client' do

            client.should_receive(:verify_domain_dkim).
              with(:domain => identity.identity).
              and_return(resp)
              
            identity.verify_dkim

          end

          it 'returns the dkim tokens' do

            identity.verify_dkim.should eq(attributes)

          end
        end

      end

    end
  end
end
