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

  shared_examples_for 'an S3 prefixed collection' do

    context '#prefix' do

      it 'defaults to nil' do
        collection.prefix.should be_nil
      end

      it 'can be passed to initialize' do
        collection = described_class.new(bucket, :prefix => '/foo')
        collection.prefix.should == '/foo'
      end

    end

    context '#with_prefix' do

      it 'gripes about other modes' do
        lambda {
          collection.with_prefix('/bar', :foo)
        }.should raise_error(ArgumentError, /mode/)
      end

      it 'should be chainable' do
        c2 = collection.with_prefix('/foo').with_prefix('/bar', :append)
        c2.prefix.should == '/foo/bar'
      end

      it 'should be chainable without altering parent collection' do
        c2 = collection.with_prefix('/foo').with_prefix('/bar', :append)
        collection.prefix.should be_nil
        c2.prefix.should == '/foo/bar'
      end

      it 'should pass the config' do
        collection.with_prefix("/foo").config.should be(config)
      end

    end

    context '#each' do

      it 'should pass the prefix when there is one' do
        client.should_receive(list_method).
          with(hash_including(:prefix => "foo/")).
          and_return(client.stub_for(list_method))
        collection.with_prefix("foo/").each { |u| }
      end

    end

  end

end
