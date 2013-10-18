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

module AWS

  shared_examples_for "accepts :consistent_read option" do |block|

    it 'calls the client method with the passed true' do
      object.client.should_receive(client_method).
        with(hash_including(:consistent_read => true)).
        and_return(response)
      object.send(method, { :consistent_read => true }, &block)
    end

    it 'calls the client method with the passed false' do
      object.client.should_receive(client_method).
        with(hash_including(:consistent_read => false)).
        and_return(response)
      object.send(method, { :consistent_read => false }, &block)
    end

    it 'defaults to true when AWS.config.simple_db_consistent_reads? is true' do
      object.config.stub(:simple_db_consistent_reads?).and_return(false)
      object.client.should_receive(client_method).
        with(hash_including(:consistent_read => false)).
        and_return(response)
      object.send(method, {}, &block)
    end

    it 'defaults to false when AWS.config.simple_db_consistent_reads? is false' do
      object.config.stub(:simple_db_consistent_reads?).and_return(true)
      object.client.should_receive(client_method).
        with(hash_including(:consistent_read => true)).
        and_return(response)
      object.send(method, {}, &block)
    end

    it 'consistent_read block overrides configured default' do

      object.config.stub(:simple_db_consistent_reads?).and_return(false)
      object.client.should_receive(client_method).
        with(hash_including(:consistent_read => true)).
        and_return(response)

      SimpleDB.consistent_reads do
        object.send(method, {}, &block)
      end

    end

  end

end
