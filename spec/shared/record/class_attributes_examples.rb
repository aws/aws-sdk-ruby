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

  shared_examples_for "class attributes collection" do

    it 'returns a hash' do
      klass.attributes.should == {}
    end

    it 'contains an entry for each string_attr' do
      klass.string_attr :foo
      klass.string_attr :bar
      klass.attributes.keys.collect{|k| k.to_s }.sort.should == %w(bar foo)
    end

    it 'returns a hash of attributes with string keys' do
      klass.string_attr :foo
      klass.attributes['foo'].should be_a(Record::Attributes::BaseAttr)
    end

    it 'keeps track of attributes by classes seperately' do

      klass1 = Class.new(klass)
      klass1.string_attr :foo

      klass2 = Class.new(klass)
      klass2.string_attr :bar

      klass1.attributes.keys.should == ['foo']
      klass2.attributes.keys.should == ['bar']

    end

  end

end
