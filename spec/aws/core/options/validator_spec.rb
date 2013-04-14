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
    module Options
      describe Validator do

        let(:options) {{}}

        let(:rules) {{}}

        let(:validate!) { Validator.new(rules).validate!(options) }

        context 'rejecting unexpected options' do

          it 'raises an ArgumentError when an unknown option is passed' do
            options[:unexpected] = 'value'
            lambda {
              validate!
            }.should raise_error(ArgumentError, 'unexpected option :unexpected')
          end

          it 'raises no error when given described options' do
            rules[:expected] = { :type => :string }
            options[:expected] = 'value'
            lambda {
              validate!.should == { :expected => 'value' }
            }.should_not raise_error
          end

          it 'rejects nested arguments that are unexpected' do
            rules[:config] = {
              :type => :hash,
              :members => {
                :abc => { :type => :string },
                :xyz => { :type => :integer },
              }
            }
            options[:config] = { :mno => true }
            lambda {
              validate!
            }.should raise_error(ArgumentError, 'unexpected option :mno')
          end

        end

        context 'required options' do

          it 'raises an error when a required option is missing' do
            rules[:id] = { :type => :string, :required => true }
            lambda {
              validate!
            }.should raise_error(ArgumentError, 'missing required option :id')
          end

          it 'raises no error when a required option is present' do
            rules[:id] = { :type => :string, :required => true }
            options[:id] = 'abc'
            lambda {
              validate!.should == { :id => 'abc' }
            }.should_not raise_error
          end

          it 'safely ignores requires for options whos parent is missing' do
            rules[:config] = {
              :type => :hash,
              :members => {
                :name => { :type => :string },
                :enabled => { :type => :boolean, :required => true },
              },
            }
            options.should == {}
            lambda {
              validate!
            }.should_not raise_error
          end

          it 'expects nested required options to be present' do
            rules[:config] = {
              :type => :hash,
              :members => {
                :name => { :type => :string },
                :enabled => { :type => :boolean, :required => true },
              },
            }
            options[:config] = { :name => 'abc' }
            lambda {
              validate!
            }.should raise_error(ArgumentError, 'missing required option :enabled')
          end

        end

        context 'types' do

          context ':string' do

            it 'accepts strings' do
              rules[:name] = { :type => :string }
              options[:name] = 'abc'
              validate!.should == { :name => 'abc' }
            end

            it 'accepts objects that respond to to #to_str' do
              rules[:name] = { :type => :string }
              options[:name] = double("string-type-object", :to_str => 'value')
              validate!.should == { :name => 'value' }
            end

            it 'raises an error for other objects' do
              rules[:name] = { :type => :string }
              options[:name] = 123
              msg = 'expected string value for option :name'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

          end

          context ':integer' do

            it 'accepts integers' do
              rules[:count] = { :type => :integer }
              options[:count] = 123
              validate!.should == { :count => 123 }
            end

            it 'accepts objects that respond to to #to_int' do
              rules[:count] = { :type => :integer }
              options[:count] = 123.0
              validate!.should == { :count => 123 }
            end

            it 'raises an error for other objects' do
              rules[:count] = { :type => :integer}
              options[:count] = 'abc'
              msg = 'expected integer value for option :count'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

          end

          context ':boolean' do

            it 'accepts true' do
              rules[:enabled] = { :type => :boolean }
              options[:enabled] = true
              validate!.should == { :enabled => true }
            end

            it 'accepts false' do
              rules[:enabled] = { :type => :boolean }
              options[:enabled] = false
              validate!.should == { :enabled => false }
            end

            it 'raises an error for other objects' do
              rules[:enabled] = { :type => :boolean }
              options[:enabled] = 'abc'
              msg = 'expected true or false for option :enabled'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

          end

          context ':hash' do

            it 'accepts a hash' do
              rules[:config] = {
                :type => :hash,
                :members => {
                  :abc => { :type => :string },
                  :mno => { :type => :integer },
                  :xyz => { :type => :boolean },
                }
              }
              hash = { :abc => 'a', :mno => 1, :xyz => true }
              options[:config] = hash
              validate!.should == { :config => hash }
            end

          end

          context ':map' do

            let(:rules) {{
              :data => {
                :type => :map,
                :keys => { :name => 'key', :type => 'string' },
                :members => {
                  :type => :hash,
                  :members => {
                    :abc => { :type => :string },
                    :xyz => { :type => :boolean },
                  }
                }
              }
            }}

            it 'accepts variable keys' do
              # valid map of hashes
              options[:data] = {
                'foo' => { :abc => 'abc1', :xyz => true },
                'bar' => { :abc => 'abc2', :xyz => false },
              }
              validate!.should eq(:data => options[:data])
            end

            it 'validates each hash value (member)' do
              lambda {
                options[:data] = {
                  'foo' => { :abc => 'abc1', :xyz => true },
                  'bar' => { :abc => 'abc2', :xyz => 123 }, # expects boolean!
                }
                validate!.should eq(:data => options[:data])
              }.should raise_error(ArgumentError, 'expected true or false for option :xyz')
            end

          end

          context ':array' do

            it 'accpets an arrays' do
              rules[:list] = { :type => :array, :members => { :type => :string }}
              options[:list] = %w(a b c)
              validate!.should == { :list => ['a', 'b', 'c'] }
            end

            it 'accpets anything that respond to #each yielding values' do
              value = double('enumerable')
              value.stub(:each).
                and_yield(1).
                and_yield(2).
                and_yield(3).
                and_yield(4)
              options[:list] = value
              rules[:list] = { :type => :array, :members => { :type => :integer }}
              validate!.should == { :list => [1,2,3,4] }
            end

            it 'raises an error if the object does not respond to #each' do
              rules[:list] = { :type => :array, :members => { :type => :string }}
              options[:list] = double('non-enumerable-value')
              msg = 'expected enumerable value for option :list'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

            it 'validates the types for the list members (strings)' do
              rules[:list] = { :type => :array, :members => { :type => :string }}
              options[:list] = %w(a b c)
              validate!.should == { :list => ['a','b','c'] }
            end

            it 'validates the types for the list members (integers)' do
              rules[:list] = { :type => :array, :members => { :type => :integer }}
              options[:list] = [1,2,3]
              validate!.should == { :list => [1,2,3] }
            end

            it 'rejects invalid member types (string)' do
              rules[:list] = { :type => :array, :members => { :type => :string }}
              options[:list] = [1, '2', '3']
              msg = 'expected string value for member 0 of :list'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

            it 'rejects invalid member types (integer)' do
              rules[:list] = { :type => :array, :members => { :type => :integer }}
              options[:list] = [1,'2',3]
              msg = 'expected integer value for member 1 of :list'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

            it 'rejects invalid member types (boolean)' do
              rules[:list] = { :type => :array, :members => { :type => :boolean }}
              options[:list] = [true, false, 1]
              msg = 'expected true or false for member 2 of :list'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

            it 'rejects invalid member types (hash)' do
              rules[:list] = {
                :type => :array,
                :members => {
                  :type => :hash,
                  :members => {
                    :value => { :type => :string },
                  }
                }
              }
              options[:list] = [{ :value => 'abc'}, 'abc']
              msg = 'expected hash value for member 1 of :list'
              lambda {
                validate!
              }.should raise_error(ArgumentError, msg)
            end

          end
        end
      end
    end
  end
end
