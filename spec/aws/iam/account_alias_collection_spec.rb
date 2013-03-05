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
  class IAM

    describe UserCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:aliases) { AccountAliasCollection.new(:config => config) }

      context '#create' do

        let(:response) { client.stub_for(:create_account_alias) }

        it 'calls create_account_alias on the client' do
          client.should_receive(:create_account_alias).
            with(:account_alias => 'alias')
          aliases.create('alias')
        end

        it 'returns the alias' do
          aliases.create('alias').should == 'alias'
        end

      end

      context '#delete' do

        it 'calls delete_account_alias on the client' do
          client.should_receive(:delete_account_alias).
            with(:account_alias => 'alias')
            aliases.delete('alias')
        end

        it 'returns nil' do
          aliases.delete('alias').should == nil
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { aliases }
        let(:client_method)  { :list_account_aliases }
        let(:next_token_key) { :marker }
        let(:limit_key)      { :max_items }
        let(:member_class)   { String }

        def stub_n_members response, count
          response.data[:account_aliases] = (1..count).map do |n|
            "account-alias-#{n}"
          end
        end

      end

    end

  end
end
