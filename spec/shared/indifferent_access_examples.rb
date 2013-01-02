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

  shared_examples_for 'a collection with indifferent access' do |*args|

    opts = args.flatten.last || {}
    item = opts[:item] || item_class.to_s
    item_key = opts[:item_key] || "#{item} name"

    let(:required_item_constructor_args) { [] }

    # seems like there should be a better way...  in 1.8.7 and above
    # these parameters are also available as class methods, but for
    # some reason in 1.8.6 they aren't so we have to pass them into
    # every invocation.
    def expect_item_constructor(collection, item_class, required_args, key)
      item_class.should_receive(:new).
        with(*(required_args +
               [key,
                { :config => collection.config }]))
    end

    context '#[]' do

      context 'with a string' do

        it "should return a #{item} object" do
          collection["foo"].should be_an(item_class)
        end

        it "should pass the #{item_key} to the #{item} constructor" do
          expect_item_constructor(collection,
                                  item_class,
                                    required_item_constructor_args,
                                  "foo")
          collection["foo"]
        end

      end

      context 'with a symbol' do

        it "should return a #{item} object" do
          collection[:foo].should be_an(item_class)
        end

        it "should pass the #{item_key} to the #{item} constructor" do
          expect_item_constructor(collection,
                                  item_class,
                                    required_item_constructor_args,
                                  "foo")
          collection[:foo]
        end

      end

    end

    context '#method_missing' do

      it "should return a #{item} object" do
        collection.foo.should be_an(item_class)
      end

      it "should pass the #{item_key} to the #{item} constructor" do
        expect_item_constructor(collection,
                                item_class,
                                  required_item_constructor_args,
                                "foo")
        collection.foo
      end

      it 'should not apply to method calls with arguments' do
        lambda { collection.foo(2) }.should raise_error(NoMethodError)
      end

      it 'should not apply to method calls with blocks' do
        lambda { collection.foo { 2 } }.should raise_error(NoMethodError)
      end

    end

  end

end
