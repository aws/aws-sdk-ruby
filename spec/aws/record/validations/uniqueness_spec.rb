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

      context 'validates_uniqueness_of' do

        it_behaves_like("validation", {}) do

          let(:validation_macro) { :validates_uniqueness_of }

          let(:invalid_value) do
            klass.send(:string_attr,:name)
            existing_obj = klass.new(:name => 'abc')
            existing_obj.save
            'abc'
          end 

          #it 'adds an error when the value is nil' do
            #klass.string_attr :name
            #klass.validates_uniqueness_of :name
            #obj.name = nil
            #obj.valid?
            #obj.errors[:name].should == ['is already taken']
          #end

          #it 'adds an error when the value is an empty string' do
            #klass.string_attr :name
            #klass.validates_uniqueness_of :name
            #obj.name = ''
            #obj.valid?
            #obj.errors[:name].should == ['is already taken']
          #end

          #it 'adds an error when the value is an empty set' do
            #klass.string_attr :tags, :set => true
            #klass.validates_uniqueness_of :tags
            #obj.tags = []
            #obj.valid?
            #obj.errors[:tags].should == ['is already taken']
          #end

          #it 'defaults the message to "is already taken"' do
            #klass.string_attr :name
            #klass.validates_uniqueness_of :name
            #obj.valid?
            #obj.errors[:name].should == ['is already taken']
          #end

        end

      end

    end
  end
end

