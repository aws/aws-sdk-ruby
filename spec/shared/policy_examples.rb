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

module AWS
  module Core

    shared_examples_for 'generic policy statement' do

      let(:statement) { described_class.new }

      context '#initialize' do

        it 'should yield the statement object' do
          yielded = nil
          described_class.new{|p| yielded = p }
          yielded.should be_an_instance_of(described_class)
        end

        it 'should work without a block' do
          lambda { S3::Policy::Statement.new }.should_not raise_error
        end

        it_should_behave_like 'singular constructor arg', :effect, "Effect"
        it_should_behave_like 'singular constructor arg', :sid, "Sid"
        it_should_behave_like 'array constructor arg', :actions, "Action", "s3:*"
        it_should_behave_like 'array constructor arg', :excluded_actions, "NotAction", "s3:*"
        it_should_behave_like 'array constructor arg', :principals, "Principal", "1234"
        it_should_behave_like 'array constructor arg', :resources, "Resource", "mybucket/mykey"

        it 'should not output both Action and NotAction' do
          h = Policy::Statement.new(:actions => "s3:*").to_h
          h.should_not have_key("NotAction")
          h.should have_key("Action")
        end

        context 'Principal hash option' do

          it 'should accept a hash' do
            Policy::Statement.new("Principal" => {}).principals.should == []
          end

          it 'should accept a single AWS principal' do
            Policy::Statement.new("Principal" => {
                                    "AWS" => "1234"
                                  }).principals.should == ["1234"]
          end

          it 'should accept multiple AWS principals' do
            Policy::Statement.new("Principal" => {
                                    "AWS" => ["1234", "5678"]
                                  }).principals.should == ["1234", "5678"]
          end

        end

        context 'Condition hash option' do

          it 'should construct a ConditionBlock' do
            Policy::ConditionBlock.stub(:new)
            Policy::ConditionBlock.should_receive(:new).with({})
            Policy::Statement.new("Condition" => {})
          end

        end

      end

      context 'empty' do

        context '#to_h' do

          it 'should have an Sid generated from a UUID' do
            UUIDTools::UUID.stub(:timestamp_create).
              and_return(UUIDTools::UUID.parse("934257b4-452e-11e0-8f5e-00254bfffeb7"))
            statement.to_h["Sid"].should == "934257b4452e11e08f5e00254bfffeb7"
          end

          it 'should not have a principal' do
            statement.to_h.should_not include("Principal")
          end

          it 'should not have a condition block' do
            statement.to_h.should_not include("Condition")
          end

        end

      end

      context 'with an effect' do

        before(:each) { statement.effect = :allow }

        it 'should generate an Effect' do
          statement.to_h["Effect"].should == "Allow"
        end

      end

      context 'with AWS account principals' do

        before(:each) { statement.principals = ["1234", "5678"] }

        it 'should generate a multi-valued Principal' do
          statement.to_h["Principal"].should == { "AWS" => ["1234", "5678"] }
        end

      end

      context 'with any AWS account principal' do

        before(:each) { statement.principals = [:any] }

        it 'should generate a wildcard Principal' do
          statement.to_h["Principal"].should == { "AWS" => ["*"] }
        end

      end

      context 'with a prefixed string action' do

        before(:each) { statement.actions = ["s3:*"] }

        it 'should generate an Action' do
          statement.to_h["Action"].should == ["s3:*"]
        end

      end

      context 'with any action' do

        it 'should generate a wildcard Action' do
          statement.actions = [:any]
          statement.to_h["Action"].should == ["*"]
        end

      end

      context 'with multiple actions' do

        before(:each) { statement.actions = ['svc:ActionA', 'svc:ActionB'] }

        it 'should generate a multi-valued Action' do
          statement.to_h["Action"].should == ["svc:ActionA", "svc:ActionB"]
        end

      end

      context 'excluded actions' do

        it 'should generate a multi-valued NotAction' do
          statement.excluded_actions = %w(svc:ActionA svc:ActionB)
          statement.to_h["NotAction"].should == %w(svc:ActionA svc:ActionB)
        end

      end

      context '#include_actions' do

        it 'should generate a multi-valued Action' do
          statement.include_actions('svc:ActionA', 'svc:ActionB')
          statement.to_h["Action"].should == ['svc:ActionA', 'svc:ActionB']
        end

        it 'should add to existing actions' do
          statement.actions = ['svc:ActionA']
          statement.include_actions('svc:ActionB')
          statement.to_h["Action"].should == %w(svc:ActionA svc:ActionB)
        end

      end

      context '#exclude_actions' do

        it 'should generate a multi-valued NotAction' do
          statement.exclude_actions('svc:ActionA', 'svc:ActionB')
          statement.to_h["NotAction"].should == %w(svc:ActionA svc:ActionB)
        end

        it 'should add to existing actions' do
          statement.excluded_actions = ['svc:ActionA']
          statement.exclude_actions('svc:ActionB')
          statement.to_h["NotAction"].should == %w(svc:ActionA svc:ActionB)
        end

      end

      context 'with a resource ARN' do

        it 'should generate a Resource key' do
          statement.resources = ["arn:aws:s3:::mybucket"]
          statement.to_h["Resource"].should == ["arn:aws:s3:::mybucket"]
        end

      end

      context 'with :any as the resource' do

        it 'should generate a wildcard for the Resource' do
          statement.resources = [:any]
          statement.to_h["Resource"].should == ["*"]
        end

      end

      context 'with a condition block' do

        it 'should generate a Condition key' do
          statement.conditions = double("condition block",
                                        :to_h => { "foo" => "bar" })
          statement.to_h["Condition"].should == { "foo" => "bar" }
        end

      end

      context '#conditions' do

        it 'should be a ConditionBlock by default' do
          statement.conditions.should be_a(Policy::ConditionBlock)
        end

      end

    end

    shared_examples_for 'array constructor arg' do |name, string_name, example_arg|

      def opts(name, value)
        opts = {}
        opts[name] = value
        opts
      end

      it "should accept #{name} (single)" do
        st = described_class.new(opts(name, example_arg))
        st.send(name).should == [example_arg]
      end

      it "should accept #{string_name} (single)" do
        st = described_class.new(opts(string_name, example_arg))
        st.send(name).should == [example_arg]
      end

      it "should accept #{name} (multiple)" do
        st = described_class.new(opts(name, [example_arg, example_arg]))
        st.send(name).should == [example_arg, example_arg]
      end

      it "should accept #{string_name} (multiple)" do
        st = described_class.new(opts(string_name, [example_arg, example_arg]))
        st.send(name).should == [example_arg, example_arg]
      end

    end

    shared_examples_for 'singular constructor arg' do |sym_name, hash_name|

      it "should accept #{hash_name}" do
        opts = {}
        opts[hash_name] = "123abc"
        described_class.new(opts).send(sym_name).should == "123abc"
      end

      it "should accept :#{sym_name}" do
        opts = {}
        opts[sym_name] = "123abc"
        described_class.new(opts).send(sym_name).should == "123abc"
      end

      it "should output the :#{sym_name} constructor arg" do
        opts = {}
        opts[sym_name] = "123abc"
        described_class.new(opts).to_h[hash_name].should == "123abc"
      end

      it "should not have a #{sym_name} value when it is explicitly nil" do
        opts = {}
        opts[sym_name] = nil
        described_class.new(opts).send(sym_name).should be_nil
      end

    end

    shared_examples_for 'service specific policy statement' do

      let(:statement) { described_class.new }

      context 'symbolized action names' do

        it 'raises error for unknown actions' do
          lambda {
            statement.actions = [:foo_bar]; statement.to_h
          }.should raise_error(ArgumentError, /unrecognized action: foo_bar/)
        end

        it 'translates action names' do
          described_class::ACTION_MAPPING.each_pair do |key,value|
            statement.actions = [key]
            statement.to_h["Action"].should == [value]
          end
        end

        it 'translates excluded actions' do
          described_class::ACTION_MAPPING.each_pair do |key,value|
            statement.excluded_actions = [key]
            statement.to_h["NotAction"].should == [value]
          end
        end

      end

    end
  end
end
