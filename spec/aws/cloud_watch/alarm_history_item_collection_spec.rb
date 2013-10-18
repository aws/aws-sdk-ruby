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
  class CloudWatch
    describe AlarmHistoryItemCollection do

      let(:config) { stub_config }

      let(:client) { config.cloud_watch_client }

      let(:alarm_history_items) { AlarmHistoryItemCollection.new(:config => config) }

      let(:items) { alarm_history_items }

      context '#filter' do

        it 'returns another collection' do
          items.filter('name','value').should be_a(described_class)
        end

        it 'returns a collection with the proper config' do
          items.filter('name','value').config.should eq(config)
        end

        it 'returns a collection that applies the filter when enumerating' do
          client.should_receive(:describe_alarm_history).with(
            :abc => 'xyz',
            :mno => 'hjk'
          ).and_return(client.stub_for(:describe_alarm_history))
          items.filter('abc', 'xyz').filter('mno', 'hjk').to_a
        end

      end

      context 'chainable filter methods' do

        let(:collection) { items }
        let(:client_method) { :describe_alarm_history }

        shared_examples_for "an alarm history filter method" do |method,filter|

          let(:value) { double('filter-value') }

          let(:translated_value) { value }

          it 'is applied when enumerating' do

            resp = client.stub_for(client_method)

            client.should_receive(client_method).
              with(hash_including(filter => translated_value)).
              and_return(resp)

            collection.send(method, value).to_a

          end

        end

        it_behaves_like "an alarm history filter method",
          :with_start_date, :start_date do
          let(:now) { Time.now }
          let(:value) { now }
          let(:translated_value) { now.iso8601 }
        end

        it_behaves_like "an alarm history filter method",
          :with_end_date, :end_date do
          let(:now) { Time.now }
          let(:value) { now }
          let(:translated_value) { now.iso8601 }
        end

        it_behaves_like "an alarm history filter method",
          :with_type, :history_item_type

        it_behaves_like "an alarm history filter method",
          :with_alarm_name, :alarm_name

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { alarm_history_items }
        let(:client_method)   { :describe_alarm_history }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}
        let(:now) { Time.now }

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:alarm_history_items] = (1..n).map{|i|
            {
              :alarm_name => "alarm_name#{i}",
              :history_data => "history_data#{i}",
              :history_item_type => "history_item_type#{i}",
              :history_summary => "history_summary#{i}",
              :timestamp => now,
            }
          }
        end

        it 'yields alarm history items' do

          stub_n_members(response,2)

          items = alarm_history_items.to_a
          items.length.should eq(2)
          items.each{|i| i.should be_a(AlarmHistoryItem) }
          items[0].alarm_name.should eq('alarm_name1')
          items[0].history_data.should eq('history_data1')
          items[0].history_item_type.should eq('history_item_type1')
          items[0].history_summary.should eq('history_summary1')
          items[0].timestamp.should eq(now)
          items[1].alarm_name.should eq('alarm_name2')
          items[1].history_data.should eq('history_data2')
          items[1].history_item_type.should eq('history_item_type2')
          items[1].history_summary.should eq('history_summary2')
          items[1].timestamp.should eq(now)

        end

      end

    end
  end
end
