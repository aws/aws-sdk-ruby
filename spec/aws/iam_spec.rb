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
  describe IAM do

    let(:config) { stub_config }

    let(:client) { config.iam_client }

    let(:iam) { IAM.new(:iam_client => client) }

    it_behaves_like 'a class that accepts configuration', :iam_client

    context '#users' do

      it 'returns a user collection' do
        iam.users.should be_a(IAM::UserCollection)
      end

      it 'returns a collection with the correct config' do
        iam.users.config.should == iam.config
      end

    end

    context '#groups' do

      it 'returns a group collection' do
        iam.groups.should be_a(IAM::GroupCollection)
      end

      it 'returns a collection with the correct config' do
        iam.groups.config.should == iam.config
      end

    end

    context '#signing_certificates' do

      it 'returns a signing certificate collection' do
        signing_certs = iam.signing_certificates
        signing_certs.should be_a(IAM::SigningCertificateCollection)
        signing_certs.user.should == nil
        signing_certs.config.should == iam.config
      end

    end

    context '#access_keys' do

      it 'returns an access key collection' do
        keys = iam.access_keys
        keys.should be_an(IAM::AccessKeyCollection)
        keys.config.should == iam.config
      end

    end

    context '#server_certificates' do

      it 'returns a server certificates collection' do
        server_certs = iam.server_certificates
        server_certs.should be_a(IAM::ServerCertificateCollection)
        server_certs.config.should == iam.config
      end

    end

    context '#account_aliases' do

      it 'returns an account alias collection' do
        aliases = iam.account_aliases
        aliases.should be_an(IAM::AccountAliasCollection)
        aliases.config.should == iam.config
      end

    end

    context '#virtual_mfa_devices' do

      it 'returns a virtual mfa devices collection' do
        devices = iam.virtual_mfa_devices
        devices.should be_an(IAM::VirtualMfaDeviceCollection)
        devices.config.should == iam.config
      end

    end

    context '#account_alias' do

      it 'returns the first account alias' do
        resp = client.stub_for(:list_account_aliases)
        resp.data[:account_aliases] = ['foo']
        client.should_receive(:list_account_aliases).and_return(resp)
        iam.account_alias.should == 'foo'
      end

    end

    context '#account_alias=' do

      it 'replaces the account alias' do
        client.should_receive(:create_account_alias).
          with(:account_alias => 'foo')
        iam.account_alias = 'foo'
      end

      it 'deletes the account alias if received nil' do

        resp = client.stub_for(:list_account_aliases)
        resp.data[:account_aliases] = ['foo']
        client.should_receive(:list_account_aliases).and_return(resp)
        client.should_receive(:delete_account_alias).
          with(:account_alias => 'foo')

        iam.account_alias = nil

      end

    end

    context '#remove_account_alias' do

      it 'calls delete on the current account alias' do

        resp = client.stub_for(:list_account_aliases)
        resp.data[:account_aliases] = ['foo']

        client.should_receive(:list_account_aliases).and_return(resp)
        client.should_receive(:delete_account_alias).
          with(:account_alias => 'foo')

        iam.remove_account_alias

      end

    end


    context '#account_summary' do

      it 'calls get_account_summary' do
        client.should_receive(:get_account_summary).
          and_return(client.stub_for(:get_account_summary))
        iam.account_summary
      end

      it 'returns a hash with symbol-ized keys' do
        resp = client.stub_for(:get_account_summary)
        resp.data[:summary_map] = { 'FooBar' => 'baz' }
        client.stub(:get_account_summary).and_return(resp)
        iam.account_summary.should == {
          :foo_bar => "baz"
        }
      end

    end

    context '#change_password' do

      it 'calls #change_password on the client' do
        client.should_receive(:change_password).with(
          :old_password => 'old',
          :new_password => 'new')
        iam.change_password('old', 'new')
      end

    end

    context '#update_account_password_policy' do

      it 'calss #update_account_password_policy on the client' do
        client.should_receive(:update_account_password_policy).with(
          :minimum_password_length => 10,
          :require_symbols => true,
          :require_numbers => false,
          :require_uppercase_characters => true,
          :require_lowercase_characters => true)
        iam.update_account_password_policy(
          :minimum_password_length => 10,
          :require_symbols => true,
          :require_numbers => false,
          :require_uppercase_characters => true,
          :require_lowercase_characters => true)
      end

    end

    context '#delete_account_password_policy' do

      it 'calls #delete_account_password_policy with no options' do
        client.should_receive(:delete_account_password_policy).with(no_args)
        iam.delete_account_password_policy
      end

    end

    context '#account_password_policy' do

      it 'returns the policy as a hash' do
        resp = client.stub_for(:get_account_password_policy)
        resp.stub(:password_policy).and_return(double('policy',
          :minimum_password_length => 11,
          :require_symbols? => false,
          :require_numbers? => true,
          :require_uppercase_characters? => false,
          :require_lowercase_characters? => true
        ))
        iam.account_password_policy.should == {
          :minimum_password_length => 11,
          :require_symbols => false,
          :require_numbers => true,
          :require_uppercase_characters => false,
          :require_lowercase_characters => true,
        }
      end

      it 'returns nil if there is no policy' do
        client.stub(:get_account_password_policy).and_raise(IAM::Errors::NoSuchEntity)
        iam.account_password_policy.should == nil
      end

    end

  end
end
