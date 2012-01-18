# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

  describe Configuration do

    let(:config) { config_class.new }

    context 'basic options' do

      let(:config_class) do
        Class.new(Configuration)
      end

      it 'adds a method for options' do
        config_class.add_option :basic
        config.should respond_to(:basic)
      end

      it 'adds a question method for boolean options' do
        config_class.add_option :basic, true, :boolean => true
        config.should respond_to(:basic)
        config.should respond_to(:basic?)
        config.basic?.should == true
      end

      it 'defaults basic options to nil' do
        config_class.add_option :basic
        config.basic.should == nil
      end

      it 'observes defined default values' do
        config_class.add_option :basic, 'default'
        config.basic.should == 'default'
      end

      it 'allows you to override defaults at the getter' do
        config_class.add_option :basic, 'default'
        basic = config.basic { 'custom-default' }
        basic.should == 'custom-default'
      end

      it 'block-level default overrides do no hide provided values' do
        config_class.add_option :basic, 'default'
        config2 = config.with(:basic => 'provided')
        value = config2.basic { 'override' }
        value.should == 'provided'
      end

      it 'allows you to blank out default values' do
        config_class.add_option :basic, 'default'
        config_class.new(:basic => nil).basic.should == nil
      end

      it 'can transform values' do
        config_class.add_option :basic, 'default' do |v| "|#{v}|" end
        config.basic.should == '|default|'
      end

      it 'passes default nil values to the transform block' do
        config_class.add_option :basic do |v| "|#{v}|" end
        config.basic.should == '||'
      end

      it 'returns values as passed to #new' do
        config_class.add_option :basic
        config_class.new(:basic => 'foo').basic.should == 'foo'
      end

      it 'returns passed values instead of defaults' do
        config_class.add_option :basic, 'default'
        config_class.new(:basic => 'foo').basic.should == 'foo'
      end

      it 'transforms values as passed to #new' do
        config_class.add_option :basic do |v| "|#{v}|" end
        config_class.new(:basic => 'foo').basic.should == '|foo|'
      end

      it 'has a short inspect string' do
        config_class.new.inspect.should == "<#{config_class.name}>"
      end

      it 'can be compared to another config' do
        config_class.add_option :basic

        c1 = config_class.new(:basic => 1)
        c2 = c1.with(:basic => 2)
        c3 = c2.with(:basic => 1)

        c1.should_not == c2
        c2.should_not == c3
        c1.should == c3

        c1.object_id.should_not == c3.object_id
        
      end

      context '#with' do

        it 'returns a new configuration object' do
          config_class.add_option :basic
          c1 = config_class.new(:basic => 'abc')
          c2 = c1.with(:basic => 'xyz')
          c2.should be_a(config_class)
        end

        it 'returns a new configuration object with the value overridden' do
          config_class.add_option :basic
          c1 = config_class.new(:basic => 'abc')
          c2 = c1.with(:basic => 'xyz')
          c2.basic.should == 'xyz'
        end

        it 'does not modify the source configuration object' do
          config_class.add_option :basic
          c1 = config_class.new(:basic => 'abc')
          c2 = c1.with(:basic => 'xyz')
          c1.basic.should == 'abc'
        end

        it 'returns self if the object would not change' do
          config_class.add_option :basic
          c1 = config_class.new(:basic => 'abc')
          c2 = c1.with(:basic => 'abc')
          c1.object_id.should == c2.object_id
        end

        it 'returns a config object with all overriden values intact' do
          config_class.add_option :foo
          config_class.add_option :bar
          c1 = config_class.new(:foo => 'foo', :bar => 'bar')
          c2 = c1.with(:foo => 'newfoo')
          c2.foo.should == 'newfoo'
          c2.bar.should == 'bar'
        end
        
      end

    end

    context 'options with needs' do
    
      class DummyClass
        attr_reader :opts
        def initialize opts = {}
          @opts = opts
        end
      end

      let(:config_class) do
        Class.new(Configuration) do

          add_option :abc

          add_option :mno

          add_option :xyz

          add_option_with_needs :dummy1, [:abc, :mno] do |config|
            DummyClass.new(:abc => config.abc, :mno => config.mno)
          end

          add_option_with_needs :dummy2, [:dummy1] do |config|
            DummyClass.new(:dummy1 => config.dummy1)
          end

          add_option_with_needs :dummy3, [:dummy2, :xyz] do |config|
            DummyClass.new(:dummy2 => config.dummy2, :xyz => config.xyz)
          end

        end
      end

      it 'adds a method for each option (including those with needs)' do
        config.should respond_to(:abc)
        config.should respond_to(:mno)
        config.should respond_to(:xyz)
        config.should respond_to(:dummy1)
        config.should respond_to(:dummy2)
        config.should respond_to(:dummy3)
      end

      it 'call the create block to construct objects with needs' do
        opts = { :abc => 1, :mno => 2 }
        config = config_class.new(opts)
        config.dummy1.should be_a(DummyClass)
        config.dummy1.opts.should == opts
      end

      it 'only calls the create block once normally' do
        d1 = config.dummy1
        d2 = config.dummy1
        d1.should == d2
      end

      it 'keeps constructed objects between configurations' do

        c1 = config_class.new(:abc => 'abc', :mno => 'mno')
        d1 = c1.dummy1

        c2 = c1.with(:xyz => 'xyz')
        d2 = c2.dummy1

        c1.dummy1.should == c2.dummy1

      end

      it 'reconstructs objects when one of their needs changes' do

        c1 = config_class.new(:abc => 'abc', :mno => 'mno')
        d1 = c1.dummy1

        c2 = c1.with(:abc => 'newabc')
        d2 = c2.dummy1

        c1.dummy1.should_not == c2.dummy1
        c1.dummy1.opts.should == {:abc => 'abc', :mno => 'mno'}
        c2.dummy1.opts.should == {:abc => 'newabc', :mno => 'mno'}

      end

      it 'does not change the original constructed object when the needs change in a derived config' do

        c1 = config_class.new(:abc => 'abc', :mno => 'mno')
        d1 = c1.dummy1

        c2 = c1.with(:abc => 'newabc')
        d2 = c2.dummy1

        c1.dummy1.should_not == c2.dummy1
        c1.dummy1.should be(d1)
        c2.dummy1.should be(d2)
        c1.dummy1.opts.should == {:abc => 'abc', :mno => 'mno'}
        c2.dummy1.opts.should == {:abc => 'newabc', :mno => 'mno'}

      end

      it 'chains deeply on dependencies' do

        c1 = config_class.new(:abc => 'abc', :mno => 'mno')
        c1.dummy3.opts.should == {
          :dummy2 => c1.dummy2, 
          :xyz => nil,
        }
        
      end

      it 'rebuilds only those affected by changes' do

        c1 = config_class.new(:abc => 'abc', :mno => 'mno', :xyz => 'xyz')
        c1.dummy1
        c1.dummy2
        c1.dummy3

        c2 = c1.with(:xyz => 'newxyz')

        c1.should_not == c2
        c1.abc.should == c2.abc
        c1.mno.should == c2.mno
        c1.dummy1.object_id.should == c2.dummy1.object_id
        c1.dummy2.object_id.should == c2.dummy2.object_id
        c1.dummy3.object_id.should_not == c2.dummy3.object_id
        c1.xyz.should_not == c2.xyz
        
      end

      it 'can return a hash of all configuration values' do

        config = config_class.new(:abc => 'abc', :mno => 'mno', :xyz => 'xyz')
        config.to_h.should == {
          :abc => 'abc',
          :mno => 'mno',
          :xyz => 'xyz',
          :dummy1 => config.dummy1,
          :dummy2 => config.dummy2,
          :dummy3 => config.dummy3,
        }

      end

    end

  end
end
