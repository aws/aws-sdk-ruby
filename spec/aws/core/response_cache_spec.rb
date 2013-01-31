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

  describe ResponseCache do

    let(:cache) { described_class.new }

    context '#add' do

      it 'should add to the beginning of the cached responses list' do
        r1 = double("resp 1")
        r2 = double("resp 2")
        cache.add(r1)
        cache.add(r2)
        cache.cached_responses.should == [r2, r1]
      end

    end

    context '#cached_responses' do

      it 'should default to an empty array' do
        cache.cached_responses.should == []
      end

    end

    context '#select' do

      context 'without a block' do

        it 'should return each response of the given type' do
          cache.stub(:cached_responses).
            and_return([double("resp 1",
                               :request_type => :foo),
                        double("resp 2",
                               :request_type => :bar),
                        double("resp 3",
                               :request_type => :bar)])
          cache.select(:bar).should == cache.cached_responses[1,2]
        end

        it 'should accept multiple types' do
          cache.stub(:cached_responses).
            and_return([double("resp 1",
                               :request_type => :foo),
                        double("resp 2",
                               :request_type => :baz),
                        double("resp 3",
                               :request_type => :bar)])
          cache.select(:baz, :bar).should == cache.cached_responses[1,2]
        end

        it 'should accept strings' do
          cache.stub(:cached_responses).
            and_return([double("resp 1",
                               :request_type => :foo),
                        double("resp 2",
                               :request_type => :baz),
                        double("resp 3",
                               :request_type => :bar)])
          cache.select("baz", "bar").should == cache.cached_responses[1,2]
        end

      end

      context 'with a block' do

        it 'should match the type and filter by the block' do
          cache.stub(:cached_responses).
            and_return([double("resp 1",
                               :foo => :a,
                               :request_type => :foo),
                        double("resp 2",
                               :foo => :b,
                               :request_type => :bar),
                        double("resp 3",
                               :foo => :a,
                               :request_type => :bar),
                        double("resp 4",
                               :foo => :a,
                               :request_type => :bar)])
          cache.select(:bar) { |r| r.foo == :a }.
            should == cache.cached_responses.last(2)
        end

      end

    end

    context '#cached' do

      let(:resp) { double("resp",
                          :cache_key => "key") }

      before(:each) { cache.add(resp) }

      it 'should return the cached response if the key matches' do
        cache.cached(double("new resp",
                            :cache_key => "key")).should be(resp)
      end

      it 'should return nil if none match' do
        cache.cached(double("new resp",
                            :cache_key => "key2")).should be_nil
      end

    end

    context '#resource_cache' do

      it 'should be an instance of ResourceCache' do
        cache.resource_cache.should be_a(ResourceCache)
      end

      it 'should use a new cache each time a response is received' do
        rc = cache.resource_cache
        cache.resource_cache.should be(rc)
        cache.add(double("resp",
                         :cache_key => "key"))
        cache.resource_cache.should_not == rc
      end

    end

  end

end
