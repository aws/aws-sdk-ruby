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
require 'tempfile'

module AWS
  class GameConnect
    describe Client do
      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) {
        double("a handler", :handle => true, :handle_async => false)
      }

      let(:client) do
        Client.new(test_credentials.merge(:http_handler => http_handler))
      end

      def has_param? param_name, value = nil
        client.params
      end

      it_should_behave_like "an aws client", :link_account, {"account_token" => "yoo", "kind" => "LOGIN", "addresses" => [], "request_token" => "sgdgfdg"}
    end
  end
end
