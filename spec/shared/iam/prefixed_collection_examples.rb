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
  shared_examples_for "a collection using a path prefix" do

    context '#with_prefix' do

      it 'should return a collection with the prefix set' do
        collection.with_prefix("/foo/").prefix.should == "/foo/"
      end

      it 'should add a leading slash if missing' do
        collection.with_prefix("foo/").prefix.should == "/foo/"
      end

      it 'should keep the same configuration' do
        collection.with_prefix("/foo/").config.should be(collection.config)
      end

      it 'should call the client method with a :path_prefix option' do
        client.should_receive(client_method).
          with(hash_including(:path_prefix => "/foo/"))
        collection.with_prefix("/foo/").to_a
      end

    end

    context '#each' do

      it 'should send :prefix as :path_prefix' do
        client.should_receive(client_method).
          with(hash_including(:path_prefix => "/foo/"))
        collection.each(:prefix => "/foo/")
      end

      it 'should add a leading slash if missing' do
        client.should_receive(client_method).
          with(hash_including(:path_prefix => "/foo/"))
        collection.each(:prefix => "foo/")
      end

    end

  end
end
