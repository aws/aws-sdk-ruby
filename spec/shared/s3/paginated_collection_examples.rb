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

  shared_examples_for 'an S3 paginated collection' do

    def stub_members(resp, quantity)
      raise "stub_members should stub some members in the response"
    end

    def stub_markers(resp, value)
      raise "stub_markers should stub next_key_marker, etc."
    end

    def expect_markers(client, value)
      raise "expect_markers should check for the given marker value "+
        "when the client is called"
    end

    context '#each' do

      let(:resp) { client.new_stub_for(list_method) }

      before(:each) do
        client.stub(list_method).and_return(resp)
      end

      it 'should call the list method' do
        client.should_receive(list_method)
        collection.each { |upload| }
      end

      it 'should pass a default batch size' do
        client.should_receive(list_method).
          with(hash_including(Hash[[[limit_param, 1000]]]))
        collection.each { |u| }
      end

      it 'should request the next page for a truncated response' do
        truncated_resp = client.new_stub_for(list_method)
        truncated_resp.data[:truncated] = true
        truncated_resp.data[:next_marker] = nil
        stub_markers(truncated_resp, "first")
        client.should_receive(list_method).
          and_return(truncated_resp)
        expect_markers(client, "first")
        collection.each { |u| }
      end

      context 'limits' do

        let(:truncated_resp) { client.new_stub_for(list_method) }

        before(:each) do
          truncated_resp.data[:truncated] = true
          truncated_resp.data[:next_marker] = nil
          stub_markers(truncated_resp, "first")
        end

        it 'should limit by the batch size if it is smaller than the limit' do
          client.should_receive(list_method).exactly(2).times.
            with(hash_including(Hash[[[limit_param, 2]]])).
            and_return(truncated_resp, resp)
          collection.each(:batch_size => 2, :limit => 100) { |u| }
        end

        it 'should limit by the provided limit if it is smaller than the batch size' do
          client.should_receive(list_method).
            with(hash_including(Hash[[[limit_param, 2]]])).
            and_return(truncated_resp)
          collection.each(:batch_size => 100, :limit => 2) { |u| }
        end

      end

      it 'should request the remainder of the requested number of items' do
        expect_limits = [2, 2, 1]
        results = [
          client.new_stub_for(list_method),
          client.new_stub_for(list_method),
          client.new_stub_for(list_method),
        ]
        results[0].data[:truncated] = true
        results[1].data[:truncated] = true
        results[2].data[:truncated] = false

        results.each do |result|
          result.data[:next_marker] = nil
        end
        
        ["first", "second", "third"].zip(results).each do |name, result|
          stub_markers(result, name)
        end

        [1, 1, 0].zip(results).each do |quantity, result|
          stub_members(result, quantity)
        end

        client.should_receive(list_method) do |opts|
          expect_limits.should_not be_empty
          opts[limit_param].should == expect_limits.shift
          results.shift
        end
        collection.each(:limit => 2) { |u| }
      end

    end

  end

end
