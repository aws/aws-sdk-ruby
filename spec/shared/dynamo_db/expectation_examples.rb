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

  shared_examples_for "a DynamoDB method accepting expectations" do

    let(:client_method) { raise NotImplementedError }
    def use_expectations(options)
      raise NotImplementedError
    end

    context ':if option' do

      it 'should support a hash of attributes and values' do
        client.should_receive(client_method).
          with(hash_including(:expected => {
                                "foo" => {
                                  :value => { :s => "bar" }
                                },
                                "baz" => {
                                  :value => { :n => 21.to_s }
                                }
                              }))
        use_expectations(:if => {
                           :foo => "bar",
                           :baz => 21
                         })
      end

    end

    context ':unless_exists option' do

      it 'should support a list of attribute names' do
        client.should_receive(client_method).
          with(hash_including(:expected => {
                                "foo" => {
                                  :exists => false
                                },
                                "bar" => {
                                  :exists => false
                                }
                              }))
        use_expectations(:unless_exists => ["foo", "bar"])
      end

      it 'should support a single attribute name' do
        client.should_receive(client_method).
          with(hash_including(:expected => {
                                "foo" => {
                                  :exists => false
                                }
                              }))
        use_expectations(:unless_exists => "foo")
      end

    end

  end

end
