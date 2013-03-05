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
            with(request_options.merge(limit_key => 21)).
            and_return(response)

          stub_n_members(response, 1)

          collection.each(:limit => 21) {|obj|}

        end

        it 'makes requests until :limit items yielded' do

          # return 30 items
          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 30)

          # return 30 items
          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'mno')
          stub_n_members(resp2, 30)

          # return 20 items
          resp3 = client.new_stub_for(client_method)
          stub_next_token(resp3, 'xyz')
          stub_n_members(resp3, 20)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 80)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 50, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 20, next_token_key => 'mno')).
            ordered.and_return(resp3)

          # ask for a maximum of 5 items, will take 3 requests
          collection.each(:limit => 80) {|obj|}

        end

        it 'stops short of the limit if a truncated response is returned' do

          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 20)

          resp2 = client.new_stub_for(client_method)
          stub_n_members(resp2, 20)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 50)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 30, next_token_key => 'abc')).
            ordered.and_return(resp2)

          # ask for a maximum of 5 items, but get only 4 back
          num_yielded = 0
          collection.each(:limit => 50) {|obj| num_yielded += 1 }
          num_yielded.should == 40

        end

      end

      context 'with :batch_size param' do

        it 'convert batch size into a limit' do

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 25)).
            and_return(response)
          stub_n_members(response, 1)

          collection.each(:batch_size => 25) {|obj|}

        end

        it 'requests :batch_size num elements until response is truncated' do

          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 25)

          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'xyz')
          stub_n_members(resp2, 25)

          resp3 = client.new_stub_for(client_method)
          stub_n_members(resp3, 25)
          # no next token

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 25)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 25, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 25, next_token_key => 'xyz')).
            ordered.and_return(resp3)

          collection.each(:batch_size => 25) {|obj|}

        end

      end

      context 'with :limit and :batch_size' do

        it 'makes requests while response is truncated' do

          resp1 = client.new_stub_for(client_method)
          stub_next_token(resp1, 'abc')
          stub_n_members(resp1, 30)

          resp2 = client.new_stub_for(client_method)
          stub_next_token(resp2, 'mno')
          stub_n_members(resp2, 30)

          resp3 = client.new_stub_for(client_method)
          stub_n_members(resp3, 20)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 30)).
            ordered.and_return(resp1)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 30, next_token_key => 'abc')).
            ordered.and_return(resp2)

          client.should_receive(client_method).
            with(request_options.merge(limit_key => 20, next_token_key => 'mno')).
            ordered.and_return(resp3)

          collection.each(:limit => 80, :batch_size => 30) {|obj|}

        end

      end

    end
  end
end
