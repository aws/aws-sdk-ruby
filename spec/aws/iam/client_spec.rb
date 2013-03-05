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
    describe Client do

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) { double("handler",
                                  :handle => true) }

      let(:client) do
        Client.new(test_credentials.merge(:http_handler => http_handler))
      end

      context '#list_groups' do

        let(:method) { :list_groups }
        let(:opts) { {} }
        it_should_behave_like "uses cached responses"

      end

      context '#get_group' do

        let(:method) { :get_group }
        let(:opts) { { :group_name => "foo" } }
        it_should_behave_like "uses cached responses"

      end

      context '#get_group_policy' do

        let(:method) { :get_group_policy }
        let(:opts) { { :group_name => "foo", :policy_name => "bar" } }
        it_should_behave_like "uses cached responses"

      end

      context '#list_group_policies' do

        let(:method) { :list_group_policies }
        let(:opts) { { :group_name => "foo" } }
        it_should_behave_like "uses cached responses"

      end

      context '#list_groups_for_user' do

        let(:method) { :list_groups_for_user }
        let(:opts) { { :user_name => "foo" } }
        it_should_behave_like "uses cached responses"

      end

      context '#list_server_certificates' do

        let(:method) { :list_server_certificates }
        let(:opts) { { } }
        it_should_behave_like "uses cached responses"

      end

    end
  end
end
