# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'test_helper'

module Seahorse
  class Client
    describe HandlerList do

      def handlers
        @handlers ||= HandlerList.new
      end

      it 'is enumerable' do
        handlers.must_be_kind_of(Enumerable)
      end

      describe '#add' do

        it 'adds a handler' do
          handler = Class.new
          handlers.add(handler)
          handlers.to_a.must_equal([handler])
        end

        it 'preserves insertion order' do
          handler1 = Class.new
          handler2 = Class.new
          handlers.add(handler1)
          handlers.add(handler2)
          handlers.to_a.must_equal([handler1, handler2])
        end

        it 'sorts handlers by reverse (stack) priority' do
          handlers.add('validate', priority: :validate)
          handlers.add('build', priority: :build)
          handlers.add('sign', priority: :sign)
          handlers.add('send', priority: :send)
          handlers.to_a.must_equal(%w(send sign build validate))
        end

      end

    end
  end
end
