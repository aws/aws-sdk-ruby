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

  shared_examples_for "a pageable collection" do

    let(:collection) { raise NotImplementedError }

    let(:client_method) { raise NotImplementedError }

    let(:response) { client.stub_for(client_method) }

    let(:request_options) {{}}

    let(:next_token_key) { raise NotImplementedError }

    let(:next_token_response_key) { next_token_key }

    let(:member_class) { eval("#{described_class.name.sub(/Collection$/,'')}") }

    def stub_next_token response, token
      response.data[next_token_response_key] = token
    end

    before(:each) do
      client.stub(client_method).and_return(response)
      stub_n_members(response, 0)
    end

    it_behaves_like "a core collection"

    context '#each' do

      it 'calls the client method to list objects' do

        client.should_receive(client_method).
          with(request_options).
          and_return(response)

        collection.each{|obj|}

      end

      it 'passes options to the client method' do
        client.should_receive(client_method).
          with(hash_including(:foo => 'bar')).
          and_return(response)
        collection.each(:foo => 'bar'){|obj|}
      end

      it 'yields once for each member' do
        stub_n_members(response, 3)
        collection.to_a.size.should eq(3)
      end

    end

  end
end
