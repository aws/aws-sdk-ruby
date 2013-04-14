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
    module Attributes

      shared_examples_for "aws record attribute" do

        def type_casts raw_value, type_casted_value, options = {}
          attribute = described_class.new(:attr_name, options)
          attribute.type_cast(raw_value).should == type_casted_value
        end

        def serializes type_casted_value, serialized_value, options = {}
          attribute = described_class.new(:attr_name, options)
          attribute.serialize(type_casted_value).should == serialized_value
        end

        let(:opts) { {} }

        let(:attribute) { described_class.new(:attr_name, opts) }

        context '#name' do

          it 'returns the attribute name' do
            described_class.new('foo', opts).name.should == 'foo'
          end

          it 'stringifies the name' do
            described_class.new(:foo, opts).name.should == 'foo'
          end

        end

        context '#options' do

          it 'returns the options the object was constructed with' do
            attribute = described_class.new(:foo, opts.merge(:required => true))
            attribute.options.should == opts.merge(:required => true)
          end

          it 'dups the options internally' do
            options = opts.merge(:required => true)
            attribute = described_class.new(:foo, options)
            options[:required] = false
            attribute.options.should == opts.merge(:required => true)
          end

        end

        context '#type_cast' do

          it 'returns nil as nil' do
            attribute.type_cast(nil).should == nil
          end

          it 'returns empty string as nil' do
            attribute.type_cast('').should == nil
          end

        end

        context '#serialize' do

          it 'raises an exception when serializing nil' do
            lambda {
              attribute.serialize(nil)
            }.should raise_error(ArgumentError, /^expected a.+, got/)
          end

        end

      end

      describe StringAttr do

        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'can preserve empty string' do
              type_casts('', '', :preserve_empty_strings => true)
            end

            it 'returns strings unmodified' do
              type_casts('abc', 'abc')
            end

            it 'calls #to_s on other objects' do
              raw = double('raw-value')
              raw.should_receive(:to_s).and_return('abc')
              type_casts(raw, 'abc')
            end

          end

          context '#serialize' do

            it 'accepts string objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(String).and_return(true)
              lambda {
                attribute.serialize(value)
              }.should_not raise_error
            end

            it 'raises argument error for non-string objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(String).and_return(false)
              lambda {
                attribute.serialize(value)
              }.should raise_error(ArgumentError)
            end

            it 'returns strings unmodified' do
              serializes('abc', 'abc')
            end

          end

        end
      end

      describe IntegerAttr do
        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'returns integers unmodified' do
              type_casts(1, 1)
            end

            it 'deals with negative numbers' do
              type_casts(-1, -1)
              type_casts('-1', -1)
            end

            it 'calls #to_i on other objects' do
              raw = double('raw-value')
              raw.should_receive(:to_i).and_return(1)
              type_casts(raw, 1)
            end

          end

          context '#serialize' do

            it 'accepts integer objects' do
              lambda {
                attribute.serialize(123)
              }.should_not raise_error
            end

            it 'raises argument error for non-integer objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(Integer).and_return(false)
              lambda {
                attribute.serialize(value)
              }.should raise_error(ArgumentError)
            end

            it 'returns integers as integers' do
              serializes(1, 1)
            end

            it 'returns negative integers as strings' do
              serializes(-123, -123)
            end

          end
        end
      end

      describe Model::Attributes::SortableIntegerAttr do

        it_behaves_like "aws record attribute" do

          let(:opts) { { :range => 0..10 } }

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil, :range => 0..10)
            end

            it 'converts empty string to nil' do
              type_casts('', nil, :range => 0..10)
            end

            it 'returns integers unmodified' do
              type_casts(1, 1, :range => 0..10)
            end

            it 'deals with negative numbers' do
              type_casts(-1, -1, :range => -10..10)
              type_casts('-1', -1, :range => -10..10)
            end

            it 'calls #to_i on other objects' do
              raw = double('raw-value')
              raw.should_receive(:to_i).and_return(1)
              type_casts(raw, 1, :range => 0..10)
            end

          end

          context '#serialize' do

            it 'raises an argument error for missing range' do
              lambda {
                serializes(123, '123', {})
              }.should raise_error(ArgumentError, /range/)
            end

            it 'raises argument error for non-integer objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(Integer).and_return(false)
              lambda {
                serializes(value, '', :range => 0..500)
              }.should raise_error(ArgumentError, /Integer/)
            end

            it 'raises argument error for integers outside the range' do
              lambda {
                serializes(11, '', :range => 0..10)
              }.should raise_error(/outside the range/)
            end

            it 'returns integers as strings' do
              serializes(1, '1', :range => 0..9)
            end

            it 'zero-pads integers for lexicographical sorting' do
              serializes(1, '001', :range => 0..100)
            end

            it 'offsets negative numbers to be positive based on range' do
              serializes(-500, '0000', :range => (-500..500))
              serializes(-100, '0400', :range => (-500..500))
              serializes(   0, '0500', :range => (-500..500))
              serializes( 500, '1000', :range => (-500..500))
            end

          end
        end
      end

      describe FloatAttr do

        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'returns floats unmodified' do
              type_casts(1.2, 1.2)
            end

            it 'handles negative floats' do
              type_casts('-1.2', -1.2)
            end

            it 'calls #to_f on other objects' do
              raw = double('raw-value')
              raw.should_receive(:to_f).and_return(1.2)
              type_casts(raw, 1.2)
            end

          end

          context '#serialize' do

            it 'accepts float objects' do
              lambda {
                attribute.serialize(12.34)
              }.should_not raise_error
            end

            it 'raises argument error for non-integer objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(Float).and_return(false)
              lambda {
                attribute.serialize(value)
              }.should raise_error(ArgumentError)
            end

            it 'returns floats as floats' do
              serializes(12.34, 12.34)
            end

            it 'returns negative floats as floats' do
              serializes(-12.34, -12.34)
            end

          end

        end
      end

      describe Model::Attributes::SortableFloatAttr do

        it_behaves_like "aws record attribute" do

          let(:opts) { { :range => 0..10 } }

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil, :range => 0..10)
            end

            it 'converts empty string to nil' do
              type_casts('', nil, :range => 0..10)
            end

            it 'returns floats unmodified' do
              type_casts(1.2, 1.2, :range => 0..10)
            end

            it 'handles negative floats' do
              type_casts('-1.2', -1.2, :range => -10..10)
            end

            it 'calls #to_f on other objects' do
              raw = double('raw-value')
              raw.should_receive(:to_f).and_return(1.2)
              type_casts(raw, 1.2, :range => 0..10)
            end

          end

          context '#serialize' do

            it 'raises argument error for non-float values' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(Float).and_return(false)
              lambda {
                serializes(value, '', :range => 0..10)
              }.should raise_error(ArgumentError, /Float/)
            end

            it 'raises an error if the value is outside the range' do
              lambda {
                serializes(10.34, '', :range => 0..10)
              }.should raise_error(/outside the range/)
            end

            it 'zero-pads floats' do
              serializes(12.34, '0012.34', :range => 0..1000)
            end

            it 'handles arbitrary decimal percision' do
              serializes(
                12.1234567890123,
                '12.1234567890123',
                :range => 0..20)
            end

            it 'ignores trailing float zeros' do
              serializes(12.340000, '012.34', :range => 0..100)
            end

            it 'zero pads and offsets float values (especially negatives)' do
              serializes(-500.0, '0000.0', :range => (-500..500))
              serializes(-100.0, '0400.0', :range => (-500..500))
              serializes(   0.0, '0500.0', :range => (-500..500))
              serializes( 500.0, '1000.0', :range => (-500..500))
            end

          end

        end
      end

      describe DateAttr do
        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'returns Date objects unmodified' do
              date = Date.parse('2011-1-2')
              type_casts(date, date)
            end

            it 'treats integers as timestamps' do
              now = Time.now
              timestamp = now.to_i
              date = Date.parse(now.to_s)
              type_casts(timestamp, date)
            end

            it 'uses Date.parse on the string value of everything else' do
              now = Time.now
              date = Date.parse(now.to_s)
              value = double('raw-value', :to_s => now.to_s)
              type_casts(value, date)
            end

          end

          context '#serialize' do

            it 'accepts Date objects' do
              lambda {
                attribute.serialize(Date.parse(Time.now.to_s))
              }.should_not raise_error
            end

            it 'raises argument error for non-DateTime objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(Date).and_return(false)
              lambda {
                attribute.serialize(value)
              }.should raise_error(ArgumentError)
            end

            it 'returns dates as strings' do
              date = Date.parse(Time.now.to_s)
              serializes(date, date.strftime('%Y-%m-%d'))
            end

          end

        end
      end

      describe DateTimeAttr do
        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'returns DateTime objects unmodified' do
              datetime = DateTime.parse(Time.now.to_s)
              type_casts(datetime, datetime)
            end

            it 'treats integers as timestamps' do
              now = Time.now
              timestamp = now.to_i
              datetime = DateTime.parse(now.to_s)
              type_casts(timestamp, datetime)
            end

            it 'uses DateTime.parse on the string value of everything else' do
              now = Time.now
              datetime = DateTime.parse(now.to_s)
              value = double('raw-value', :to_s => now.to_s)
              type_casts(value, datetime)
            end

          end

          context '#serialize' do

            it 'accepts DateTime objects' do
              lambda {
                attribute.serialize(DateTime.parse(Time.now.to_s))
              }.should_not raise_error
            end

            it 'raises argument error for non-DateTime objects' do
              value = double('type-casted-value')
              value.should_receive(:is_a?).with(DateTime).and_return(false)
              lambda {
                attribute.serialize(value)
              }.should raise_error(ArgumentError)
            end

            it 'returns datetimes as strings' do
              datetime = DateTime.parse(Time.now.to_s)
              serializes(datetime, datetime.strftime('%Y-%m-%dT%H:%M:%S%Z'))
            end

          end

        end
      end

      describe BooleanAttr do
        it_behaves_like "aws record attribute" do

          context '#type_cast' do

            it 'returns nil as nil' do
              type_casts(nil, nil)
            end

            it 'converts empty string to nil' do
              type_casts('', nil)
            end

            it 'returns false unmodified' do
              type_casts(false, false)
            end

            it 'returns everything else as true' do
              raw = double('raw-value')
              type_casts(raw, true)
            end

          end

          context '#serialize' do

            it 'accepts true values' do
              lambda { attribute.serialize(true) }.should_not raise_error
            end

            it 'accepts false values' do
              lambda { attribute.serialize(false) }.should_not raise_error
            end

            it 'raises argument error for non-boolean values' do
              lambda {
                attribute.serialize('true')
              }.should raise_error(ArgumentError)
            end

            it 'serializes true to the integer 1' do
              serializes(true, 1)
            end

            it 'serializes false to the integer 0' do
              serializes(false, 0)
            end

          end

        end

      end
    end
  end
end
