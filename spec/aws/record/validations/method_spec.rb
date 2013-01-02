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
  module Record
    describe Base do

      context 'validate' do

        let(:klass) { Class.new(Record::Base) }

        let(:obj) { klass.new }

        before(:each) do
          klass.send(:define_method, :true_method) { true }
          klass.send(:define_method, :false_method) { false }
        end

        it 'calls the method name during validation' do
          klass.validate :method_validator
          obj.should_receive(:method_validator)
          obj.valid?
        end

        it 'accepts a method name as a string' do
          klass.validate 'method_validator'
          obj.should_receive(:method_validator)
          obj.valid?
        end

        it 'accepts a list of method names' do
          klass.validate :method_a, :method_b, :method_c
          obj.should_receive(:method_a)
          obj.should_receive(:method_b)
          obj.should_receive(:method_c)
          obj.valid?
        end

        context ':if option' do

          it 'calls the method when the if condition passes' do
            klass.validate :method_validator, :if => :true_method
            obj.should_receive(:method_validator)
            obj.valid?
          end

          it 'skips the method when the if condition fails' do
            klass.validate :method_validator, :if => :false_method
            obj.should_not_receive(:method_validator)
            obj.valid?
          end

          it 'accepts :if procs' do
            klass.validate :method_validator, :if => lambda{|obj| true }
            obj.should_receive(:method_validator)
            obj.valid?
          end

          it 'fails :if procs' do
            klass.validate :method_validator, :if => lambda{|obj| false }
            obj.should_not_receive(:method_validator)
            obj.valid?
          end

        end

        context ':unless option' do

          it 'calls the method when the unless condition fails' do
            klass.validate :method_validator, :unless => :false_method
            obj.should_receive(:method_validator)
            obj.valid?
          end

          it 'skips the method when the unless condition passes' do
            klass.validate :method_validator, :unless => :true_method
            obj.should_not_receive(:method_validator)
            obj.valid?
          end

          it 'accepts :unless procs' do
            klass.validate :method_validator, :unless => lambda{|obj| true }
            obj.should_not_receive(:method_validator)
            obj.valid?
          end

          it 'fails :unless procs' do
            klass.validate :method_validator, :unless => lambda{|obj| false }
            obj.should_receive(:method_validator)
            obj.valid?
          end

        end

        context ':on option' do

          it 'calls the method when the on condition is met' do
            klass.validate :method_validator, :on => :create
            obj.stub(:persisted?).and_return(false)
            obj.should_receive(:method_validator)
            obj.valid?
          end

          it 'skips the method when the on condition is not' do
            klass.validate :method_validator, :on => :update
            obj.stub(:persisted?).and_return(false)
            obj.should_not_receive(:method_validator)
            obj.valid?
          end

        end
      end
    end
  end
end
