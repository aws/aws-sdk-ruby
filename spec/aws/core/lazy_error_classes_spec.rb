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

  module FooService
    module Errors
      extend Core::LazyErrorClasses
    end
  end

  module Core

    describe LazyErrorClasses do

      let(:mod) { FooService::Errors }

      context '#error_class' do

        it 'should get the same class as const_missing' do
          mod.error_class("SomethingBad").should == mod::SomethingBad
        end

        it 'should change "." to "::"' do
          mod.error_class("Foo.Bar").should == mod::Foo::Bar
        end

        it 'should generate unique classes by segmented code' do
          mod.error_class("Foo.Bar").
            should_not == mod.error_class("Baz.Bar")
        end

        it 'should generate named classes' do
          mod.error_class("Foo.Bar").name.
            should == "AWS::FooService::Errors::Foo::Bar"
        end

        it 'works with codes that are already Ruby class names' do
          mod.error_class("Range.Bar").name.
            should == "AWS::FooService::Errors::Range::Bar"
        end

        it 'works with codes that are already defined in Core' do
          mod.error_class("Resource.Bar").name.
            should == "AWS::FooService::Errors::Resource::Bar"
        end

      end

    end

  end
end
