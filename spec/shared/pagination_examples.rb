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

  shared_examples_for "paginated collection" do

    it 'continunes calling get_topics when a next_token is returned' do

      r1 = client.new_stub_for(client_method)
      r2 = client.new_stub_for(client_method)
      r3 = client.new_stub_for(client_method)

      stub_two_members(r1)
      stub_two_members(r2)
      stub_two_members(r3)

      r1.data[:next_token] = 'abc'
      r2.data[:next_token] = 'xyz'
      r3.data.delete(:next_token)

      client.should_receive(client_method).ordered.
        with(hash_not_including(:next_token)).
        and_return(r1)

      client.should_receive(client_method).ordered.
        with(hash_including(:next_token => "abc")).
        and_return(r2)

      client.should_receive(client_method).ordered.
        with(hash_including(:next_token => "xyz")).
        and_return(r3)

      # three pages with two members each
      collection.to_a.size.should == 6

    end

  end

end
