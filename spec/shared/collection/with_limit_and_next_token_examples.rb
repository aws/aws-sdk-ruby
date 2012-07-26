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

  shared_examples_for "a pageable collection with limits" do

    let(:collection) { raise NotImplementedError }

    let(:client_method) { raise NotImplementedError }

    let(:request_options) {{}}

    let(:next_token_key) { raise NotImplementedError }

    let(:next_token_response_key) { next_token_key }

    let(:limit_key) { raise NotImplementedError }

    let(:response) { client.stub_for(client_method) }

    let(:member_class) { eval("#{described_class.name.sub(/Collection$/,'')}") }

    def stub_next_token(response, token)
      response.data[next_token_response_key] = token
    end

    before(:each) do
      client.stub(client_method).and_return(response)
      stub_n_members(response, 0)
    end

    it_behaves_like "a core collection"

    context '#each' do

      context 'with :limit' do

        it 'passes :limit as limit_key' do

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 11)).
            and_return(response)

          stub_n_members(response, 1)

          collection.each(:limit => 11) {|obj|}

        end

        it 'makes requests until :limit items yielded' do

          # return 2 items
          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 2)

          # return 2 items
          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'mno')
          stub_n_members(resp2, 2)

          # return 1 items
          resp3 = client.new_stub_for(client_method)
          stub_next_token(resp3, 'xyz')
          stub_n_members(resp3, 1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 3, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 1, next_token_key => 'mno')).
            ordered.and_return(resp3)

          # ask for a maximum of 5 items, will take 3 requests
          collection.each(:limit => 5) {|obj|}

        end

        it 'stops short of the limit if a truncated response is returned' do

          # return 2 items
          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 2)

          # return 2 items, and no next-token (no more items)
          resp2 = client.new_stub_for(client_method)
          stub_n_members(resp2, 2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 3, next_token_key => 'abc')).
            ordered.and_return(resp2)

          # ask for a maximum of 5 items, but get only 4 back
          num_yielded = 0
          collection.each(:limit => 5) {|obj| num_yielded += 1 }
          num_yielded.should == 4

        end

      end

      context 'with :batch_size param' do

        it 'convert batch size into a limit' do

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 10)).
            and_return(response)
          stub_n_members(response, 1)

          collection.each(:batch_size => 10) {|obj|}

        end

        it 'requests :batch_size num elements until response is truncated' do

          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 1)

          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'xyz')
          stub_n_members(resp2, 1)

          resp3 = client.new_stub_for(client_method)
          stub_n_members(resp3, 1)
          # no next token

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 5, next_token_key => 'xyz')).
            ordered.and_return(resp3)

          collection.each(:batch_size => 5) {|obj|}

        end

      end

      context 'with :limit and :batch_size' do

        it 'makes requests while response is truncated' do

          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 2)

          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'mno')
          stub_n_members(resp2, 2)

          resp3 = client.new_stub_for(client_method)
          stub_n_members(resp3, 1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 2)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 2, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 1, next_token_key => 'mno')).
            ordered.and_return(resp3)

          collection.each(:limit => 5, :batch_size => 2) {|obj|}

        end

      end

    end
  end
end
