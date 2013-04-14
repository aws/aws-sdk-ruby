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

      context 'validates_confirmation_of' do

        it_behaves_like("validation", :accepts_allow_nil => false, :accepts_allow_blank => false) do

          let(:validation_macro) { :validates_confirmation_of }

          let(:invalid_value) { 'abc' }

          let(:default_message) { "doesn't match confirmation" }

          context 'accesors' do

            it 'adds accessors when they dont already exist' do
              obj = klass.new
              obj.should_not respond_to(:password_confirmation)
              obj.should_not respond_to(:password_confirmation=)
              klass.validates_confirmation_of :password
              obj.should respond_to(:password_confirmation)
              obj.should respond_to(:password_confirmation=)
            end

            it 'does not replace existing accessors' do

              klass.send(:attr_accessor, :password_confirmation)

              getter = obj.method(:password_confirmation)
              setter = obj.method(:password_confirmation=)

              klass.validates_confirmation_of :password

              obj.method(:password_confirmation).should == getter
              obj.method(:password_confirmation=).should == setter

            end

          end

          it 'has a sensible default message' do
            klass.string_attr :foo
            klass.validates_confirmation_of :foo
            obj.foo = 'bar'
            obj.foo_confirmation = 'yuck'
            obj.valid?
            obj.errors[:foo].should == [default_message]
          end

          it 'plays nicely with an :if attribute changed condition' do

            sdb_data.stub(:attributes).and_return('password' => %w(abc))
            klass.string_attr :password
            klass.validates_confirmation_of :password,
              :if => :password_changed?

            obj = klass['item-id']
            obj.password.should == 'abc'
            obj.password_confirmation.should == nil
            obj.password_changed?.should == false
            obj.valid?.should == true
            obj.password = 'new password'
            obj.valid?.should == false

          end

          it 'validates nil confirmation values if told to' do
            klass.string_attr :foo
            klass.validates_confirmation_of :foo
            obj.foo = 'bar'
            obj.foo_confirmation.should be_nil
            obj.valid?.should == false
          end

          it 'accepts matching values' do
            klass.string_attr :foo
            klass.validates_confirmation_of :foo
            obj.foo = 'bar'
            obj.foo_confirmation = 'bar'
            obj.valid?.should == true
          end

        end

      end
    end
  end
end
