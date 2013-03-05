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

  shared_examples_for "a DynamoDB method accepting :return" do

    let(:client_method) { raise NotImplementedError }
    let(:required_args) { [] }
    let(:block) { nil }
    def compute_value(args, block)
      raise NotImplementedError
    end

    context 'return value' do

      let(:args) { required_args }
      let(:value) { compute_value(args, block) }

      context 'when :return is set' do

        let(:response) { double("response",
                                :request_type => client_method,
                                :data => {
                                  "Attributes" => {
                                    "attr1" => { "S" => "foo" }
                                  }
                                }) }

        let(:args) { required_args + [{ :return => :all_old }] }

        it 'should pass :return_values' do
          client.should_receive(client_method).
            with(hash_including(:return_values => "ALL_OLD")).
            and_return(response)
          value
        end

        it 'should return the response attributes' do
          client.stub(client_method).and_return(response)
          value.should == { "attr1" => "foo" }
        end

      end

    end

  end

end
