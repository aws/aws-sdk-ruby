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
  module Client
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

        it 'defaults priority to :build' do
          handlers.add('before', priority: :before_build)
          handlers.add('on')
          handlers.add('after', priority: :after_build)
          handlers.to_a.must_equal(['after', 'on', 'before'])
        end

        it 'accepts multiple handlers with the same priority' do
          handlers.add('h1', priority: :validate)
          handlers.add('h2', priority: :validate)
          handlers.add('h3', priority: :build)
          handlers.add('h4', priority: :build)
          handlers.to_a.must_equal(['h3', 'h4', 'h1', 'h2'])
        end

        %w(validate build sign).each do |priority|

          describe(priority) do

            it "has a before and after level for #{priority}" do
              handlers.add('before', priority: :"before_#{priority}")
              handlers.add('on', priority: priority.to_sym)
              handlers.add('after', priority: :"after_#{priority}")
              handlers.to_a.must_equal(['after', 'on', 'before'])
            end

          end

        end

        describe 'send' do

          it 'has a before level for send' do
            handlers.add('before', priority: :before_send)
            handlers.add('on', priority: :send)
            handlers.to_a.must_equal(['on', 'before'])
          end

          it 'does not support after send' do
            assert_raises(ArgumentError) do
              handlers.add('handler', priority: :after_send)
            end
          end

          it 'only keeps the latest send handler' do
            handlers.add('handler1', priority: :send)
            handlers.add('handler2', priority: :send)
            handlers.add('handler3', priority: :send)
            handlers.to_a.must_equal(['handler3'])
          end

        end
      end
    end
  end
end
