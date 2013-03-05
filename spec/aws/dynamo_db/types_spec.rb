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
  class DynamoDB

    describe Types do

      let(:mod) { Module.new { extend Types } }

      let(:bin_value) { 'bin-value' }

      let(:wrapped_bin_value) { DynamoDB::Binary.new(bin_value) }

      before(:each) do
        mod.stub_chain(:config, :dynamo_db_big_decimals).and_return(true)
      end

      context '#value_from_response' do

        it 'should extract string values' do
          mod.value_from_response("S" => "foo").should == "foo"
        end

        it 'should work with :s' do
          mod.value_from_response(:s => "foo").should == "foo"
        end

        it 'should convert number values to BigDecimal' do
          n = mod.value_from_response("N" => "12")
          n.should be_a(BigDecimal)
          n.should == BigDecimal("12")
        end

        it 'should convert number values to floats when configured' do
          mod.stub_chain(:config, :dynamo_db_big_decimals).and_return(false)
          n = mod.value_from_response("N" => "12")
          n.should be_a(Float)
          n.should eq(12.0)
        end

        it 'should work with numeric literals' do
          n = mod.value_from_response("N" => 12)
          n.should be_a(BigDecimal)
          n.should == BigDecimal("12")
        end

        it 'should work with :n' do
          n = mod.value_from_response(:n => "12")
          n.should be_a(BigDecimal)
          n.should == BigDecimal("12")
        end

        it 'should work with :b' do
          b = mod.value_from_response("B" => bin_value)
          b.should eq(wrapped_bin_value)
        end

        it 'should extract bin sets' do
          mod.value_from_response("BS" => [bin_value]).should
            eq(Set[wrapped_bin_value])
        end

        it 'should extract string sets' do
          mod.value_from_response("SS" => ["12"]).should == Set["12"]
        end

        it 'should work with :ss' do
          mod.value_from_response(:ss => ["12"]).should == Set["12"]
        end

        it 'should convert number sets to BigDecimal arrays' do
          ns = mod.value_from_response("NS" => ["12", "24"])
          ns.all? { |n| n.should be_a(BigDecimal) }
          [BigDecimal("12"),
           BigDecimal("24")].
            all? { |expected| ns.should include(expected) }
          ns.size.should == 2
        end

        it 'should work with numeric literals in number sets' do
          ns = mod.value_from_response("NS" => [12, 24])
          ns.all? { |n| n.should be_a(BigDecimal) }
          [BigDecimal("12"),
           BigDecimal("24")].
            all? { |expected| ns.should include(expected) }
          ns.size.should == 2
        end

        it 'should work with :ns' do
          ns = mod.value_from_response(:ns => ["12", "24"])
          ns.all? { |n| n.should be_a(BigDecimal) }
          [BigDecimal("12"),
           BigDecimal("24")].
            all? { |expected| ns.should include(expected) }
          ns.size.should == 2
        end

      end

      context '#values_from_response_hash' do

        it 'should translate each value in the hash' do
          mod.values_from_response_hash("1" => { "S" => "1" },
                                        "2" => { "SS" => ["2", "22"] },
                                        "3" => { :s => "3" },
                                        "4" => { :ss => ["4", "44"] },
                                        "5" => { "N" => 5 },
                                        "6" => { "NS" => [6, 66] },
                                        "7" => { :n => BigDecimal("7") },
                                        "8" => { :ns => [BigDecimal("8"),
                                                         BigDecimal("88")] }).
            should == {
            "1" => "1",
            "2" => Set["2", "22"],
            "3" => "3",
            "4" => Set["4", "44"],
            "5" => BigDecimal("5"),
            "6" => Set[BigDecimal("6"), BigDecimal("66")],
            "7" => BigDecimal("7"),
            "8" => Set[BigDecimal("8"), BigDecimal("88")]
          }
        end

      end

      context '#format_attribute_value' do

        it 'should use :b for DynamoDB::Binary' do
          mod.format_attribute_value(wrapped_bin_value).should
            eq(:b => bin_value)
        end

        it 'should use :bs for DynamoDB::Binary sets' do
          mod.format_attribute_value([wrapped_bin_value]).should
            eq(:bs => [bin_value])
        end

        it 'should use :s for strings' do
          mod.format_attribute_value("foo").should == { :s => "foo" }
        end

        it 'should use :n for numbers' do
          mod.format_attribute_value(12).should == { :n => 12.to_s }
        end

        it 'should use :n for floats' do
          mod.format_attribute_value(12.3).should == { :n => 12.3.to_s }
        end

        it 'should use :n for BigDecimal' do
          mod.format_attribute_value(BigDecimal("12")).
            should == { :n => BigDecimal("12").to_s }
        end

        it 'should use :ss for arrays containing strings' do
          mod.format_attribute_value(["foo"]).should == { :ss => ["foo"] }
        end

        it 'should use :ns for arrays containing numbers' do
          mod.format_attribute_value([12]).should == { :ns => [12.to_s] }
        end

        it 'should use :ns for arrays containing floats' do
          mod.format_attribute_value([12.3]).should == { :ns => [12.3.to_s] }
        end

        it 'should use :ns for arrays containing BigDecimal' do
          mod.format_attribute_value([BigDecimal("12")]).
            should == { :ns => [BigDecimal("12").to_s] }
        end

        it 'should raise an error on mixed types in an array input' do
          lambda { mod.format_attribute_value([12, "foo"], "CONTEXT") }.
            should raise_error("mixed types in CONTEXT")
        end

        it 'should raise an error on nested arrays in input' do
          lambda { mod.format_attribute_value([12, ["b"]], "CONTEXT") }.
            should raise_error("nested collections in CONTEXT")
        end

        it 'should raise an error on unsupported types in array input' do
          lambda { mod.format_attribute_value([12, Object.new], "CONTEXT") }.
            should raise_error("unsupported attribute type Object in CONTEXT")
        end

      end

    end

  end
end
