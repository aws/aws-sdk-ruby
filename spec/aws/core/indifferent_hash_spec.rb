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
  module Core

    describe IndifferentHash do

      let(:hash) { IndifferentHash.new }

      it 'should be a hash' do
        hash.should be_a(Hash)
      end

      context '#intialize' do

        it 'converts incoming shallow hashes to string keys' do
          hash = IndifferentHash.new(:a => 1)
          hash.should == { 'a' => 1 }
        end

      end

      context '#[]=' do

        it 'converts symbol keys into strings' do
          hash[:key] = 1
          hash['key'].should == 1
        end

        it 'converts incomming key objects into strings' do
          key = double('key', :to_s => 'key')
          hash[key] = 1
          hash['key'].should == 1
        end

      end

      context '#[]' do

        it 'allows accessing values by symbols' do
          hash['key'] = 1
          hash[:key].should == 1
        end

      end

      context '#merge!' do

        it 'modifies the hash in place' do
          hash.merge!(:a => 1)
          hash.should == { 'a' => 1 }
        end

      end

      context '#update' do

        it 'should be an alias of #merge!' do
          hash.method(:update).should == hash.method(:merge!)
        end

      end

      context '#merge' do

        it 'modifies the hash in place' do
          hash.merge!(:a => 1)
          hash.should == { 'a' => 1 }
        end

      end

      context '#has_key?' do

        it 'accepts symbol keys' do
          hash['a'] = 1
          hash.has_key?(:a).should == true
        end

        it 'has aliases' do
          hash.method(:has_key?).should == hash.method(:key?)
          hash.method(:has_key?).should == hash.method(:member?)
          hash.method(:has_key?).should == hash.method(:include?)
        end

      end

      context '#fetch' do

        it 'accepts symbol keys' do
          hash['a'] = 1
          hash.fetch(:a).should == 1
        end

        it 'still provides the default behaviour' do
          hash.fetch(:a, 'default').should == 'default'
        end

      end

      context '#delete' do

        it 'accepts symbol keys' do
          hash['a'] = 1
          hash['b'] = 2
          hash.delete(:b)
          hash.should == { 'a' => 1 }
        end

      end

    end
  end
end
