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
  module Http
    class Request
      describe Param do

        let(:name) { 'Param Name' }
        let(:value) { 'Param Value with = Funny stuff & more' }
        let(:param) { Param.new(name, value) }

        it 'has a name' do
          param.name.should == name
        end

        it 'has a value' do
          param.value.should == value
        end

        it 'should be sortable by their names' do
          p1 = Param.new('abc', 'value')
          p2 = Param.new('mno', 'value')
          p3 = Param.new('xyz', 'value')
          [p3, p1, p2].sort.should == [p1, p2, p3]
        end

        context '#initialize' do

          it 'requires a name' do
            lambda { Param.new }.should raise_error(ArgumentError)
          end

          it 'defaults value to nil' do
            Param.new('name only').value.should be_nil
          end

        end

        context '#to_s' do

          it 'should return the name and value joined by a =' do
            Param.new('name', 'value').to_s.should == 'name=value'
          end

          it 'should not encode the name or value' do
            Param.new('na me', 'val ue').to_s.should == 'na me=val ue'
          end

          it 'should not return an = sign when value is not present' do
            Param.new('name_only').to_s.should == 'name_only'
          end


        end

        context '#encoded' do

          it 'should return a url safe string name/value pair joined by =' do
            param.encoded.split('=').each do |part|
              part.should match(/^[a-z0-9\-_%]+$/i)
            end
          end

          it 'should convert spaces to %20' do
            param = Param.new('name', 'value with spaces')
            param.encoded.should == 'name=value%20with%20spaces'
          end

          it 'should encode the name' do
            param = Param.new('Name!', 'value')
            param.encoded.should == 'Name%21=value'
          end

          it 'should encode extra equal signs' do
            param = Param.new('name', 'value=value')
            param.encoded.should == 'name=value%3Dvalue'
          end

          it 'should encode new-lines' do
            param = Param.new('name', "value\nvalue")
            param.encoded.should == 'name=value%0Avalue'
          end

          it 'should not encode tilde' do
            param = Param.new('name', "value~")
            param.encoded.should == 'name=value~'
          end

          context 'with transcoding support' do

            it 'should convert to UTF-8 before encoding' do
              param = Param.new('name', 'something in LATIN-1')
              param.value.stub(:encode).with("UTF-8").and_return("ENCODED VALUE")
              param.encoded.should == "name=ENCODED%20VALUE"
            end

          end

        end

      end
    end
  end
end
