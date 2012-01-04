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

    context '#account_alias' do

      it 'returns the first account alias' do
        resp = client.stub_for(:list_account_aliases)
        resp.stub(:account_aliases).and_return(['foo'])
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
        resp.stub(:account_aliases).and_return(['foo'])
        client.should_receive(:list_account_aliases).and_return(resp)
        client.should_receive(:delete_account_alias).
          with(:account_alias => 'foo')

        iam.account_alias = nil

      end

    end

    context '#remove_account_alias' do
      
      it 'calls delete on the current account alias' do

        resp = client.stub_for(:list_account_aliases)
        resp.stub(:account_aliases).and_return(['foo'])
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
        client.stub(:get_account_summary).
          and_return(double("account summary",
                            :summary_map => { "FooBar" => "baz" }))
        iam.account_summary.should == {
          :foo_bar => "baz"
        }
      end

    end

  end
end
