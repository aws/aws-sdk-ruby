# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'aws/option_grammar'

module AWS

  describe OptionGrammar do

    context 'default behavior' do

      let(:grammar) { OptionGrammar }

      context '#validate' do

        it 'should not raise an error for an empty option set' do
          lambda { grammar.validate({}) }.should_not raise_error
        end

        it 'should raise an error for any option that is passed' do
          lambda { grammar.validate(:foo => "bar") }.
            should raise_error(ArgumentError, "unexpected option foo")
        end

      end

      context '#request_params' do

        it 'should return an empty list for an empty option set' do
          grammar.request_params({}).should be_empty
        end

        it 'should raise exceptions as thrown by validate' do
          grammar.stub(:validate).and_raise("FOO")
          lambda { grammar.request_params({}) }.should raise_error("FOO")
        end

      end

    end

    context '#customize' do

      it 'should return a subclass of OptionGrammar' do
        (OptionGrammar.customize {}).ancestors.should include(OptionGrammar)
      end

      context 'hint data' do

        shared_examples_for 'basic options' do

          let(:names) { [:foo, :bar] }

          let(:opts) do
            opts = {}
            names.each_with_index do |name, i|
              opts[name.to_s] = i.to_s
            end
            opts
          end

          context 'per-option validators' do

            it 'should exist for each configured option' do
              names.each do |name|
                grammar.should respond_to("validate_#{name}")
              end
            end

          end

          context '#validate' do

            it 'should not raise an error for any of the options named in the list' do
              lambda { grammar.validate(opts) }.
                should_not raise_error
            end

            it 'should accept string option names' do
              lambda { grammar.validate(opts) }.
                should_not raise_error
            end

            it 'should raise an error for any options not listed' do
              lambda { grammar.validate(:zap => "12") }.
                should raise_error(ArgumentError, "unexpected option zap")
            end

          end

          context '#request_params' do

            it 'should construct request parameters for each option' do
              grammar.request_params(opts).sort.should ==
                [Http::Request::Param.new("Bar", 1),
                 Http::Request::Param.new("Foo", 0)]
            end

          end

        end

        context 'as strings' do

          let(:grammar) { OptionGrammar.customize(["Foo", "Bar"]) }

          it_behaves_like 'basic options'

          context 'per-option validators' do

            it 'should raise an exception if the value does not have to_str' do
              lambda { grammar.validate_foo(12) }.
                  should raise_error(ArgumentError, "expected string value for option foo")
            end

            it 'should not raise an exception if the value is a string' do
              lambda { grammar.validate_foo("12") }.
                should_not raise_error
            end

          end

        end

        context 'as hashes' do

          it 'should raise an error if the hash is empty' do
            lambda do
              OptionGrammar.customize [{}]
            end.should raise_error(ArgumentError, "passed empty hash where an option was expected")
          end

          it 'should raise an error if the hash has more than one entry' do
            lambda do
              OptionGrammar.customize [{:a => 1, :b => 2}]
            end.should raise_error(ArgumentError, "too many entries in option description")
          end

          it 'should raise an error if the value is not an array' do
            lambda do
              OptionGrammar.customize [{:foo => "foo"}]
            end.should raise_error(ArgumentError, /expected an array for value description of option foo/)
          end

          it 'should not raise an error if the value is nil' do
            lambda do
              OptionGrammar.customize [{:foo => nil}]
            end.should_not raise_error
          end

          let(:grammar) { OptionGrammar.customize [{ "Foo" => [] }, { "Bar" => [] }] }

          it_behaves_like 'basic options'

        end

        context 'top-level hash' do

          let(:grammar) { OptionGrammar.customize("Foo" => [],
                                                  "Bar" => []) }

          it_behaves_like 'basic options'

        end

        context 'value descriptors' do

          let(:grammar) { OptionGrammar.customize [{ "Foo" => descriptors }] }

          context 'required' do

            let(:descriptors) { [:required] }

            it 'should cause validate to reject hashes without the option' do
              lambda do
                grammar.validate({})
              end.should raise_error(ArgumentError, "missing required option foo")
            end

            it 'should not change the behavior if the option is provided' do
              lambda do
                grammar.validate(:foo => "12")
              end.should_not raise_error
            end

          end

          context 'integer' do

            let(:descriptors) { [:integer] }

            it 'should cause validate to reject values that do not support to_int' do
              lambda { grammar.validate(:foo => "12") }.
                should raise_error(ArgumentError, "expected integer value for option foo")
            end

            it 'should accept integers' do
              lambda { grammar.validate(:foo => 12) }.should_not raise_error
            end

          end

          context 'boolean' do

            let(:descriptors) { [:boolean] }

            it 'should cause validate to reject values that are not boolean' do
              lambda { grammar.validate(:foo => "12") }.
                should raise_error(ArgumentError, "expected boolean value for option foo")
            end

            it 'should accept booleans' do
              lambda { grammar.validate(:foo => true) }.should_not raise_error
              lambda { grammar.validate(:foo => false) }.should_not raise_error
            end

          end

          context 'string' do

            let(:descriptors) { [:string] }


            it 'should cause validate to reject values that do not support to_str' do
              lambda { grammar.validate_foo(12) }.
                  should raise_error(ArgumentError, "expected string value for option foo")
            end

            it 'should accept strings' do
              lambda { grammar.validate(:foo => "12") }.should_not raise_error
            end

          end

          context 'list' do

            let(:descriptors) { [{ :list => [:string] }] }

            it 'should cause validate to reject values that do not support each' do
              lambda { grammar.validate_foo(12) }.
                should raise_error(ArgumentError,
                                   "expected enumerable value for option foo")
            end

            it 'should accept arrays' do
              lambda { grammar.validate_foo([]) }.should_not raise_error
            end

            it 'should send an empty list as an empty parameter' do
              grammar.request_params(:foo => []).should ==
                [Http::Request::Param.new("Foo", "")]
            end

            it 'should send items with the list name and a 1-based index as prefix' do
              grammar.request_params(:foo => ["12"]).should ==
                [Http::Request::Param.new("Foo.1", "12")]
            end

          end

          context 'list of integers' do

            let(:descriptors) { [{ :list => [:integer] }] }

            it 'should cause validate to reject lists of strings' do
              lambda { grammar.validate(:foo => ["12"]) }.
                should raise_error(ArgumentError,
                                   "expected integer value for member 1 of option foo")
            end

          end

          context 'structure' do

            let(:descriptors) { [{ :structure => { "Prop" => [:string] } }] }

            it 'should cause validate to accept a hash' do
              lambda { grammar.validate(:foo => {}) }.
                should_not raise_error
            end

            it 'should cause validate to reject strings' do
              lambda { grammar.validate(:foo => "foo") }.
                should raise_error(ArgumentError, "expected hash value for option foo")
            end

            it 'should cause validate to reject an integer value for the member' do
              lambda { grammar.validate(:foo => { :prop => 12 }) }.
                should raise_error(ArgumentError,
                                   "expected string value for key prop of option foo")
            end

            it 'should cause validate to reject a hash with an unexpected entry' do
              lambda { grammar.validate(:foo => { :burp => "blah" }) }.
                should raise_error(ArgumentError,
                                   "unexpected key burp for option foo")
            end

            it 'should cause validate to reject a hash without a required entry' do
              grammar2 = grammar.customize("Foo" =>
                                           [{ :structure => { "Prop" => [:required] } }])
              lambda { grammar2.validate(:foo => {}) }.
                should raise_error(ArgumentError,
                                   "missing required key prop for option foo")
            end

            it 'should send members prefixed by the structure name' do
              grammar.request_params(:foo => { :prop => "12" }).should ==
                [Http::Request::Param.new("Foo.Prop", "12")]
            end

          end

          context 'list of structures' do

            let(:descriptors) do
              [{ :list =>
                 [{ :structure =>
                    { "Prop" => [:integer, :required] } }] }]
            end

            it 'should cause validate to reject a string for the prop member of the structure' do
              lambda { grammar.validate(:foo => [{ :prop => 12 },
                                                 { :prop => "foo" }]) }.
                should raise_error(ArgumentError,
                                   "expected integer value for key prop of member 2 of option foo")
            end

            it 'should prefix parameters appropriately' do
              grammar.request_params(:foo => [{ :prop => 12},
                                              { :prop => 14}]).should ==
                [Http::Request::Param.new("Foo.1.Prop", "12"),
                 Http::Request::Param.new("Foo.2.Prop", "14")]
            end

          end

          context 'structure with list' do

            let(:descriptors) do
              [{ :structure =>
                 { "MyListOfStuff" =>
                   [{ :rename => "my_list" },
                    { :list => [:integer] }] } }]
            end

            it 'should cause validate to reject strings in the list' do
              lambda { grammar.validate(:foo => { :my_list => ["foo"] }) }.
                should raise_error(ArgumentError,
                                   "expected integer value for member 1 of "+
                                   "key my_list of option foo")
            end

            it 'should prefix parameters appropriately' do
              grammar.request_params(:foo => { :my_list => [12, 14] }).should ==
                [Http::Request::Param.new("Foo.MyListOfStuff.1", "12"),
                 Http::Request::Param.new("Foo.MyListOfStuff.2", "14")]
            end

          end

          context 'rename' do

            let(:descriptors) { [{ :rename => "bar" }] }

            it 'should cause validation to reject the original name' do
              lambda { grammar.validate(:foo => "12") }.
                should raise_error(ArgumentError, "unexpected option foo")
            end

            it 'should cause validation to use the new name in exceptions' do
              lambda { grammar.validate(:bar => 12) }.
                should raise_error(ArgumentError, "expected string value for option bar")
            end

            it 'should cause validation to accept the new name' do
              lambda { grammar.validate(:bar => "12") }.
                should_not raise_error
            end

            it 'should construct the parameter with the original name' do
              grammar.request_params(:bar => "12").
                should == [Http::Request::Param.new("Foo","12")]
            end

            it 'should rubyize the name' do
              grammar = OptionGrammar.customize("Foo" => [{ :rename => "Bar" }])
              grammar.request_params(:bar => "12").
                should == [Http::Request::Param.new("Foo","12")]
            end

          end

          context 'inherited descriptors' do

            let(:super_grammar) do
              OptionGrammar.customize [{ "Foo" => [:integer] }]
            end

            let(:grammar) do
              super_grammar.customize [{ "Foo" => [{ :rename => "bar" }] }]
            end

            it 'should cause validate to accept integers' do
              lambda {
                grammar.validate(:bar => 12)
              }.should_not raise_error
            end

            it 'should not modify the original grammar' do
              lambda {
                super_grammar.validate(:bar => 12)
              }.should raise_error(ArgumentError, "unexpected option bar")
            end

          end

        end

      end

    end

  end

end
