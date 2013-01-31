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

module AWS::Core

  describe ResourceCache do

    let(:cache) { described_class.new }

    context '#store' do

      it 'should cause the provided attributes to be cached' do
        cache.store("some_resource", :foo => "BAR")
        cache.cached?("some_resource", :foo).should be_true
      end

      it 'should not remove attributes that are already cached' do
        cache.store("some_resource", :foo => "BAR")
        cache.store("some_resource", :bla => "BAZ")
        cache.cached?("some_resource", :bla).should be_true
      end

      it 'should update the stored values of the provided attributes' do
        cache.store("some_resource", :foo => 1)
        cache.store("some_resource", :foo => 2)
        cache.get("some_resource", :foo).should == 2
      end

    end

    context '#cached?' do

      it 'should return false if the resource is cached without the attribute' do
        cache.store("resource", :foo => "BAR")
        cache.cached?("resource", :bar).should be_false
      end

      it 'should return true if the attribute is cached with a nil value' do
        cache.store("resource", :foo => nil)
        cache.cached?("resource", :foo).should be_true
      end

    end

    context '#get' do

      it 'should return the stored value' do
        cache.store("resource", :foo => "BAR")
        cache.get("resource", :foo).should == "BAR"
      end

      it 'should raise an error if the resource is not cached' do
        lambda { cache.get("foo", :bar) }.
          should raise_error
      end

    end

  end

end
