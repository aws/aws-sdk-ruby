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
  class DynamoDB
    describe Client do

      it 'returns a V20111205 client by default' do
        Client.new.should be_a(Client::V20111205)
      end

      it 'accpets an :api_version of 2011-12-05' do
        client = Client.new(:api_version => '2011-12-05')
        client.should be_a(Client::V20111205)
      end

      it 'accpets an :api_version of 2012-08-10' do
        client = Client.new(:api_version => '2012-08-10')
        client.should be_a(Client::V20120810)
      end

      it 'suports the deprecated ClientV2' do
        client = ClientV2.new
        client.should be_a(Client::V20120810)
      end

      it 'can be constructed from the subclass clients' do
        Client::V20111205.new.should be_a(Client::V20111205)
        Client::V20120810.new.should be_a(Client::V20120810)
      end

      context 'with default versions' do

        def set_default(api_version)
          AWS.config.stub(:dynamo_db).and_return(:api_version => api_version)
        end

        it 'returns the configured default' do
          Client.new.should be_a(Client::V20111205)
          set_default('2012-08-10')
          Client.new.should be_a(Client::V20120810)
        end

        it 'can construct specific clients using their versioned class' do
          set_default('2000-01-02')
          Client::V20111205.new.should be_a(Client::V20111205)
          Client::V20120810.new.should be_a(Client::V20120810)
        end

        it 'uses :api_version from new over AWS.config' do
          set_default('2011-12-05')
          Client.new(:api_version => '2012-08-10').should be_a(Client::V20120810)
        end

      end


    end
  end
end
