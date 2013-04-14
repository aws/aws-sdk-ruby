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
    describe Quotas do

      let(:config) { stub_config }

      let(:client) { config.simple_email_service_client }

      let(:quotas) { Quotas.new(:config => config) }

      let(:response) { client.stub_for(:get_send_quota) }

      before(:each) do
        response.data[:max_24_hour_send] = 200.0
        response.data[:max_send_rate] = 1.0
        response.data[:sent_last_24_hours] = 10.0
        client.stub(:get_send_quota).and_return(response)
      end

      context '#to_h' do

        it 'calls get_send_quota' do
          client.should_receive(:get_send_quota)
          quotas.to_h
        end

        it 'returns a hash with 3 stats' do
          quotas.to_h.should == {
            :max_24_hour_send => 200,
            :max_send_rate => 1.0,
            :sent_last_24_hours => 10,
          }
        end

      end

      context '#max_24_hour_send' do

        it 'returns a value from #to_h' do
          quotas.max_24_hour_send.should == 200.0
        end

      end

      context '#max_send_rate' do

        it 'returns a value from #to_h' do
          quotas.max_send_rate.should == 1.0
        end

      end

      context '#sent_last_24_hours' do

        it 'returns a value from #to_h' do
          quotas.sent_last_24_hours.should == 10.0
        end

      end

      context '#inspect' do

        it 'returns a string with the details' do
          quotas.inspect.should match(/max_24_hour_send/)
          quotas.inspect.should match(/max_send_rate/)
          quotas.inspect.should match(/sent_last_24_hours/)
        end

      end

    end
  end
end
