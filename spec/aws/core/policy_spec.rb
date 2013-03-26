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

  describe Policy do

    let(:policy) { Policy.new }

    context '#initialize' do

      it 'yields the policy instance' do
        obj = double("receiver")
        obj.should_receive(:call).with(an_instance_of(Policy))
        Policy.new { |p| obj.call(p) }
      end

      it 'should work with no block' do
        lambda { Policy.new }.should_not raise_error
      end

      it_should_behave_like 'singular constructor arg', :id, "Id"
      it_should_behave_like 'singular constructor arg', :version, "Version"

      it 'should accept Statement and construct statements' do
        Policy::Statement.should_receive(:new).with({})
        Policy.new("Statement" => [{}])
      end

      it 'should accept :statements and construct statements' do
        Policy::Statement.should_receive(:new).with({})
        Policy.new(:statements => [{}])
      end

    end

    context '::from_json' do

      it 'passes the parsed JSON to the constructor' do
        Policy.should_receive(:new).with({})
        Policy.from_json("{}")
      end

    end

    context 'empty' do

      context '#to_h' do

        let(:hash) { policy.to_h }

        it 'should contain a version key' do
          hash["Version"].should == "2008-10-17"
        end

        it 'should use a UUID to generate an alphanumeric ID' do
          UUIDTools::UUID.stub(:timestamp_create).
            and_return(UUIDTools::UUID.parse("934257b4-452e-11e0-8f5e-00254bfffeb7"))
          hash["Id"].should == "934257b4452e11e08f5e00254bfffeb7"
        end

      end

      context '#to_json' do

        it 'should serialize the result of to_h' do
          policy.stub(:to_h).and_return({})  # needed because of the UUIDs
          policy.to_json.should == policy.to_h.to_json
        end

      end

    end

    context 'with a statement' do

      let(:statement) do
        st = Policy::Statement.new
        st.stub(:to_h).and_return({})
        st
      end

      let(:policy) do
        Policy.new do |policy|
          policy.statements << statement
        end
      end

      context '#to_h' do

        it 'should have the statement hash in the Statement array' do
          policy.to_h["Statement"].should == [{}]
        end

      end

    end

    context 'adding statements' do

      let(:condition_block) { double("condition block",
                                     :add => nil) }

      let(:statement) { double("statement",
                               :effect= => nil,
                               :actions= => nil,
                               :principals= => nil,
                               :conditions => condition_block) }

      before(:each) { Policy::Statement.stub(:new).and_return(statement) }

      context '#allow' do

        it 'should construct a statement with the allow effect' do
          Policy::Statement.should_receive(:new).
            with(:effect => :allow).and_return(statement)
          policy.allow
        end

        it 'should pass any hash arguments to the statement constructor' do
          Policy::Statement.should_receive(:new).
            with(:effect => :allow,
                 :actions => :any,
                 :principals => ["me", "you"],
                 :resources => "*").and_return(statement)
          policy.allow(:actions => :any,
                       :principals => ["me", "you"],
                       :resources => "*")
        end

        it 'should let you set a condition' do
          condition_block.should_receive(:add).with(:is, "s3:prefix", "foo")
          policy.allow.where("s3:prefix").is("foo")
        end

        it 'should let you set a condition for multiple values' do
          condition_block.should_receive(:add).with(:is, "s3:prefix", "foo", "bar")
          policy.allow.where("s3:prefix").is("foo", "bar")
        end

        it 'should let you set multiple conditions' do
          condition_block.should_receive(:add).with(:is, "s3:prefix", "foo")
          condition_block.should_receive(:add).with(:is, "aws:SecureTransport", true)
          policy.allow.where("s3:prefix").is("foo").
            where("aws:SecureTransport").is(true)
        end

        shared_examples_for 'condition operator builder' do |sym|
          it 'should let you construct a condition using the #{sym} operator' do
            condition_block.should_receive(:add).with(sym, "s3:prefix", "foo")
            policy.allow.where("s3:prefix").send(sym, "foo")
          end
        end

        [:not,
         :like,
         :not_like,
         :greater_than,
         :greater_than_equals,
         :gt,
         :gte,
         :less_than,
         :less_than_equals,
         :lt,
         :lte,
         :is_ip_address,
         :not_ip_address,
         :is_arn,
         :not_arn,
         :is_arn_like,
         :not_arn_like].each do |sym|
          it_should_behave_like 'condition operator builder', sym
        end

        it 'should let you directly specify the operator as a string' do
          condition_block.should_receive(:add).with("SomehowResembles", "s3:prefix", "foo")
          policy.allow.where("s3:prefix", "SomehowResembles", "foo")
        end

        it 'should append the statement to the policy' do
          policy.allow
          policy.statements.should include(statement)
        end

      end

      context '#deny' do

        it 'should construct a statement with the deny effect' do
          Policy::Statement.should_receive(:new).
            with(:effect => :deny).and_return(statement)
          policy.deny
        end

        it 'should append the statement to the policy' do
          policy.deny
          policy.statements.should include(statement)
        end

      end

    end

  end

  describe Policy::Statement do

    it_should_behave_like 'generic policy statement' do

      it 'raises an error for symbolized action names' do
        lambda {
          statement.actions = [:foo_bar]
          statement.to_h
        }.should raise_error(ArgumentError, /symbolized action names/)
      end

    end

  end

  describe Policy::ConditionBlock do

    let(:block) { Policy::ConditionBlock.new }

    context '#initialize' do

      it 'should accept a hash' do
        lambda { Policy::ConditionBlock.new({}) }.
          should_not raise_error
      end

      it 'should output the provided hash by default' do
        hash = {
          "FooLike" => { "sns:someKey" => "bla" }
        }
        c = Policy::ConditionBlock.new(hash)
        c.to_h.should == hash
      end

      it 'should not modify the hash when conditions are added' do
        hash = {
          "FooLike" => { "sns:someKey" => "bla" }
        }
        hash.freeze
        hash["FooLike"].freeze
        c = Policy::ConditionBlock.new(hash)
        lambda { c.add(:is, :secure_transport, true) }.should_not raise_error
      end

    end

    context '#add' do

      it 'should raise an error for duplicate operator-key combinations' do
        block.add("StringEquals", "s3:prefix", "badstuff")
        lambda { block.add("StringEquals", "s3:prefix", "otherstuff") }.
          should raise_error("duplicate StringEquals conditions for s3:prefix")
      end

    end

    context '#[]' do

      before(:each) do
        block.add(:is, "aws:Foo", "bar")
        block.add(:lte, "aws:Bar", 12)
        block.add(:gt, "aws:Bar", 2)
        block.add(:is, "s3:something-else", true)
        block.add(:like, "aws:Zap", "a*b")
      end

      it 'should return another condition block' do
        block["aws:Foo"].should be_a(Policy::ConditionBlock)
      end

      it 'should filter out operators where no triples match' do
        block["aws:Bar"].operators.should_not include("StringEquals",
                                                      "Bool",
                                                      "StringLike")
      end

      it 'should filter out keys where no triples match' do
        block[:is].keys.should_not include("aws:Bar",
                                           "aws:Zap")
      end

      context 'string filters' do

        it 'should filter by operator' do
          block["StringEquals"].values.should == ["bar"]
        end

        it 'should filter by key' do
          values = block["aws:Bar"].values
          values.should include(12, 2)
          values.size.should == 2
        end

      end

      context 'symbol key filters' do

        it 'should work for global keys' do
          values = block[:bar].values
          values.should include(12, 2)
          values.size.should == 2
        end

        it 'should work for header-style S3 keys' do
          block[:s3_something_else].values.should == [true]
        end

      end

      context 'symbol operator filters' do

        before(:each) do
          block.add(:is_ip_address, "aws:SourceIp", "1.2.3.4/0")
          block.add(:not_ip_address, "aws:SourceIp", "4.3.2.1/32")
          block.add("DateGreaterThan", "aws:CurrentTime", "2010-10-12")
        end

        it 'should work for unambiguous operators' do
          block[:is_ip_address].values.should == ["1.2.3.4/0"]
          block[:not_ip_address].values.should == ["4.3.2.1/32"]
        end

        it 'should return all possibilities for type-sensitive operators' do
          values = block[:is].values
          values.should include("bar", true)
          values.size.should == 2
        end

        it 'should work for date operators with string values' do
          values = block[:gt].values
          values.should include(2, "2010-10-12")
          values.size.should == 2
        end

      end

    end

    context '#values' do

      it 'should return all the values in the block' do
        block.add(:is, "foo", "bar")
        block.add(:like, "foo", "bar*")
        block.add(:gt, "foo", 12)
        block.values.should include("bar", "bar*", 12)
        block.values.size.should == 3
      end

      it 'should work when the condition block was passed to the constructor' do
        block = Policy::ConditionBlock.new("StringLike" => { "s3:prefix" => "foo" })
        block.values.should include("foo")
        block.values.size.should == 1
      end

    end

    context '#keys' do

      it 'should return all the unique keys in the block' do
        block.add(:is, "foo", "bar")
        block.add(:like, "foo", "bar*")
        block.add(:gt, "bar", 12)
        block.keys.sort.should == ["bar", "foo"]
      end

      it 'should work when the condition block has a no keys for an operator' do
        block = Policy::ConditionBlock.new("StringLike" => { })
        block.keys.should == []
      end

    end

    context '#operators' do

      it 'should return all the operators in the block ' do
        block.add(:is, "foo", "bar")
        block.add(:like, "foo", "bar*")
        block.add(:gt, "foo", 12)
        block.operators.sort.should == ["NumericGreaterThan", "StringEquals", "StringLike"]
      end

      it 'should not return operators that are not used in any condition' do
        block = Policy::ConditionBlock.new("StringLike" => { })
        block.operators.should be_empty
      end

    end

    context 'with a condition' do

      context 'single value' do

        it 'should generate a nested hash structure' do
          block.add("StringNotEquals", "s3:prefix", "badstuff")
          block.to_h.should == {
            "StringNotEquals" => {
              "s3:prefix" => ["badstuff"]
            }
          }
        end

      end

      context 'multiple values' do

        it 'should generate a nested hash structure' do
          block.add("StringNotEquals", "s3:prefix", "badstuff", "otherstuff")
          block.to_h.should == {
            "StringNotEquals" => {
              "s3:prefix" => ["badstuff", "otherstuff"]
            }
          }
        end

      end

      context 'multiple keys for the same operator' do

        it 'should merge them' do
          block.add("StringNotEquals", "s3:prefix", "badstuff", "otherstuff")
          block.add("StringNotEquals", "aws:UserAgent", "Mozilla")
          block.to_h.should == {
            "StringNotEquals" => {
              "s3:prefix" => ["badstuff", "otherstuff"],
              "aws:UserAgent" => ["Mozilla"]
            }
          }
        end

      end

      context 'symbol operators' do

        let(:generated) { block.to_h.to_a.first.first }

        it 'should raise an error for unrecognized symbols' do
          lambda { block.add(:foobar, "s3:prefix", "foo") }.
            should raise_error(ArgumentError, "unrecognized operator foobar")
        end

        shared_examples_for 'symbol translation' do |symbol, expected|
          it "#{symbol.inspect} should become #{expected}" do
            block.add(symbol, "s3:prefix", example_value)
            generated.should == expected
          end
        end

        context 'string values' do

          let(:example_value) { "foo" }

          it_should_behave_like "symbol translation", :is, "StringEquals"
          it_should_behave_like "symbol translation", :not, "StringNotEquals"
          it_should_behave_like "symbol translation", :like, "StringLike"
          it_should_behave_like "symbol translation", :not_like, "StringNotLike"
          it_should_behave_like("symbol translation",
                                :is_ignoring_case, "StringEqualsIgnoreCase")
          it_should_behave_like("symbol translation",
                                :not_ignoring_case, "StringNotEqualsIgnoreCase")

        end

        context 'numeric values' do

          let(:example_value) { 12 }

          it_should_behave_like "symbol translation", :is, "NumericEquals"
          it_should_behave_like "symbol translation", :not, "NumericNotEquals"
          it_should_behave_like "symbol translation", :less_than, "NumericLessThan"
          it_should_behave_like "symbol translation", :less_than_equals, "NumericLessThanEquals"
          it_should_behave_like "symbol translation", :greater_than, "NumericGreaterThan"
          it_should_behave_like("symbol translation",
                                :greater_than_equals, "NumericGreaterThanEquals")
          it_should_behave_like "symbol translation", :lt, "NumericLessThan"
          it_should_behave_like "symbol translation", :lte, "NumericLessThanEquals"
          it_should_behave_like "symbol translation", :gt, "NumericGreaterThan"
          it_should_behave_like("symbol translation", :gte, "NumericGreaterThanEquals")

        end

        shared_examples_for "date/time values" do
          it_should_behave_like "symbol translation", :is, "DateEquals"
          it_should_behave_like "symbol translation", :not, "DateNotEquals"
          it_should_behave_like "symbol translation", :less_than, "DateLessThan"
          it_should_behave_like "symbol translation", :less_than_equals, "DateLessThanEquals"
          it_should_behave_like "symbol translation", :greater_than, "DateGreaterThan"
          it_should_behave_like("symbol translation",
                                :greater_than_equals, "DateGreaterThanEquals")
          it_should_behave_like "symbol translation", :lt, "DateLessThan"
          it_should_behave_like "symbol translation", :lte, "DateLessThanEquals"
          it_should_behave_like "symbol translation", :gt, "DateGreaterThan"
          it_should_behave_like("symbol translation", :gte, "DateGreaterThanEquals")
        end

        context 'Time' do
          let(:example_value) { Time.utc(2010, 10, 12, 10, 0, 0) }

          it_should_behave_like "date/time values"

          it 'should be converted to ISO 8601' do
            block.add(:is, "aws:CurrentTime", example_value)
            # it's hard to validate the time zone
            block.to_h["DateEquals"]["aws:CurrentTime"].first.should =~ /^2010-10-12T\d+:\d+:\d+/
          end
        end

        context 'Date' do
          let(:example_value) { Date.parse("2010-10-12T00:00:00Z") }

          it_should_behave_like "date/time values"

          it 'should be converted to ISO 8601' do
            block.add(:is, "aws:CurrentTime", example_value)
            block.to_h["DateEquals"]["aws:CurrentTime"].should == ["2010-10-12"]
          end
        end

        context 'DateTime' do
          let(:example_value) { DateTime.parse("2010-10-12T10:00:00Z") }

          it_should_behave_like "date/time values"

          it 'should be converted to ISO 8601' do
            block.add(:is, "aws:CurrentTime", example_value)
            # it's hard to validate the time zone
            block.to_h["DateEquals"]["aws:CurrentTime"].first.should =~ /^2010-10-12T\d+:\d+:\d+/
          end
        end

        context 'boolean values' do
          let(:example_value) { true }

          it_should_behave_like "symbol translation", :is, "Bool"
        end

        context 'ip addresses' do
          let(:example_value) { "any string" }

          it_should_behave_like "symbol translation", :is_ip_address, "IpAddress"
          it_should_behave_like "symbol translation", :not_ip_address, "NotIpAddress"
        end

        context 'arns' do
          let(:example_value) { "any string" }

          it_should_behave_like "symbol translation", :is_arn, "ArnEquals"
          it_should_behave_like "symbol translation", :not_arn, "ArnNotEquals"
          it_should_behave_like "symbol translation", :is_arn_like, "ArnLike"
          it_should_behave_like "symbol translation", :not_arn_like, "ArnNotLike"
        end

      end

      context 'symbol keys' do

        it 'should use the aws:* prefix by default' do
          block.add(:gt, :current_time, Time.now)
          block.to_h["DateGreaterThan"].keys.should include("aws:CurrentTime")
        end

        it 'should use s3:* when the symbol starts with s3_' do
          block.add(:like, :s3_prefix, "photos/*")
          block.to_h["StringLike"].keys.should include("s3:prefix")
        end

        it 'should use lower-case-and-dashes for S3 keys' do
          block.add(:is, :s3_x_amz_acl, "public-read")
          block.to_h["StringEquals"].keys.should include("s3:x-amz-acl")
        end

        it 'should special-case VersionId' do
          block.add(:is, :s3_version_id, "foo")
          block.to_h["StringEquals"].keys.should include("s3:VersionId")
        end

        it 'should special-case LocationConstraint' do
          block.add(:is, :s3_location_constraint, "foo")
          block.to_h["StringEquals"].keys.should include("s3:LocationConstraint")
        end

      end

    end

  end

end
