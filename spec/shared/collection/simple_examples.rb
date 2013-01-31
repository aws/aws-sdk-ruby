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

  shared_examples_for "a simple collection" do

    let(:collection) { raise NotImplementedError }

    let(:client_method) { raise NotImplementedError }

    let(:response) { client.stub_for(client_method) }

    let(:member_class) { eval("#{described_class.name.sub(/Collection$/,'')}") }

    before(:each) do
      client.stub(client_method).and_return(response)
      stub_n_members(response, 0)
    end

    it_should_behave_like "a core collection" do

      let(:response) { client.stub_for(client_method) }

      it 'calls the client method to enumerate objects' do

        client.should_receive(client_method).
          with(request_options).
          and_return(response)

        collection.each {|obj|}

      end

      it 'should yield the right number of objects' do
        stub_n_members(response, 2)
        collection.to_a.size.should eq(2)
      end

    end

  end

end
