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

    shared_examples_for "validation" do |test_opts|

      let(:invalid_value) { nil }

      let(:opts) { {} }

      let(:klass) { Class.new(Record::Base) }

      let(:obj) { klass.new }

      let(:message_opt) { :message }

      let(:sdb_data) { double('sdb-item-data', :attributes => { 'value' => [] }) }

      before(:each) do
        klass.stub_chain(:sdb_domain, :items, :[], :data).and_return(sdb_data)
        klass.stub(:name).and_return('ExampleModel')
      end

      let(:true_block) { lambda{|obj| true } }

      let(:false_block) { lambda{|obj| false } }

      before(:each) do
        klass.send(:attr_accessor, :value)
        klass.send(:define_method, :true_method) { true }
        klass.send(:define_method, :false_method) { false }
      end

      unless test_opts[:accepts_allow_nil] == false

        context ':allow_nil' do

          it 'skips validation when :allow_nil and it has a nil value' do
            klass.send(validation_macro, :value, opts.merge(:allow_nil => true))
            obj = klass.new
            obj.value = nil
            obj.valid?.should == true
          end

          it 'adds an error message when :allow_nil is false and it is invalid' do
            klass.send(validation_macro, :value, opts.merge(:allow_nil => false))
            obj.value = invalid_value
            obj.valid?.should == false
            obj.errors[:value].should_not be_empty
          end

        end
      end

      unless test_opts[:accepts_allow_blank] == false

        context ':allow_blank' do

          it 'skips validation when :allow_blank and it has a blank value' do
            klass.send(validation_macro, :value, opts.merge(:allow_blank => true))
            obj = klass.new :value => " "
            obj.value.should == " "
            obj.valid?.should == true
          end

          it 'adds an error message when :allow_blank is false and it is invalid' do
            klass.send(validation_macro, :value, opts.merge(:allow_blank => false))
            obj.value = " "
            obj.valid?.should == false
            obj.errors[:value].should_not be_empty
          end

        end
      end

      context ':if' do

        it 'validates :if method returns true' do
          klass.send(validation_macro, :value, opts.merge(:if => :true_method))
          obj.value = invalid_value
          obj.valid?.should == false
        end

        it 'skips validation :if method returns false' do
          klass.send(validation_macro, :value, opts.merge(:if => :false_method))
          obj.value = invalid_value
          obj.valid?.should == true
        end

        it 'validates :if block returns true' do
          klass.send(validation_macro, :value, opts.merge(:if => true_block))
          obj.value = invalid_value
          obj.valid?.should == false
        end

        it 'skips validation :if block returns false' do
          klass.send(validation_macro, :value, opts.merge(:if => false_block))
          obj.value = invalid_value
          obj.valid?.should == true
        end

      end

      context ':unless' do

        it 'validates when :unless method returns false' do
          klass.send(validation_macro, :value, opts.merge(:unless => :false_method))
          obj.value = invalid_value
          obj.valid?.should == false
        end

        it 'skips validation when :unelss method returns true' do
          klass.send(validation_macro, :value, opts.merge(:unless => :true_method))
          obj.value = invalid_value
          obj.valid?.should == true
        end

        it 'validates when :unless block returns false' do
          klass.send(validation_macro, :value, opts.merge(:unless => false_block))
          obj.value = invalid_value
          obj.valid?.should == false
        end

        it 'skips validation when :unelss block returns true' do
          klass.send(validation_macro, :value, opts.merge(:unless => true_block))
          obj.value = invalid_value
          obj.valid?.should == true
        end

      end

      context ':on' do

        it 'accepts :save' do
          lambda {
            klass.send(validation_macro, :value, opts.merge(:on => :save))
          }.should_not raise_error
        end

        it 'rejects values other than :save, :create, :update' do
          lambda {
            klass.send(validation_macro, :value, opts.merge(:on => :foo))
          }.should raise_error(ArgumentError)
        end

        it 'validates on :create for new records' do
          klass.send(validation_macro, :value, opts.merge(:on => :create))
          obj = klass.new
          obj.value = invalid_value
          obj.valid?.should == false
        end

        it 'skips validation on :create for existing records' do
          klass.send(validation_macro, :value, opts.merge(:on => :create))
          obj = klass['id']
          obj.value = invalid_value
          obj.valid?.should == true
        end

        it 'skips validation on :update for new records' do
          klass.send(validation_macro, :value, opts.merge(:on => :update))
          obj = klass.new
          obj.value = invalid_value
          obj.valid?.should == true
        end

        it 'validates on :update for existing records' do
          klass.send(validation_macro, :value, opts.merge(:on => :update))
          obj = klass['id']
          obj.value = invalid_value
          obj.valid?.should == false
        end

      end

      unless test_opts[:accepts_message] == false

        context ':message' do

          it 'overides the default message' do
            klass.send(validation_macro, :value, opts.merge(message_opt => 'custom message'))
            obj.value = invalid_value
            obj.valid?
            obj.errors[:value].should == ['custom message']
          end

        end

      end

    end

  end
end
