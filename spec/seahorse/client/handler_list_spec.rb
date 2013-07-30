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

require 'spec_helper'

module Seahorse
  module Client
    describe HandlerList do

      def handlers
        @handlers ||= HandlerList.new
      end

      it 'is enumerable' do
        expect(handlers).to be_kind_of(Enumerable)
      end

      describe '#add' do

        it 'adds a handler' do
          handler = Class.new
          handlers.add(handler)
          expect(handlers.to_a).to eq([handler])
        end

        it 'preserves insertion order' do
          handler1 = Class.new
          handler2 = Class.new
          handlers.add(handler1)
          handlers.add(handler2)
          expect(handlers.to_a).to eq([handler1, handler2])
        end

        it 'sorts handlers by reverse (stack) priority' do
          handlers.add('validate', priority: :validate)
          handlers.add('build', priority: :build)
          handlers.add('sign', priority: :sign)
          handlers.add('send', priority: :send)
          expect(handlers.to_a).to eq(%w(send sign build validate))
        end

        it 'defaults priority to :build' do
          handlers.add('before', priority: :before_build)
          handlers.add('on')
          handlers.add('after', priority: :after_build)
          expect(handlers.to_a).to eq(['after', 'on', 'before'])
        end

        it 'accepts multiple handlers with the same priority' do
          handlers.add('h1', priority: :validate)
          handlers.add('h2', priority: :validate)
          handlers.add('h3', priority: :build)
          handlers.add('h4', priority: :build)
          expect(handlers.to_a).to eq(['h3', 'h4', 'h1', 'h2'])
        end

        %w(validate build sign).each do |priority|

          describe(priority) do

            it "has a before and after level for #{priority}" do
              handlers.add('before', priority: :"before_#{priority}")
              handlers.add('on', priority: priority.to_sym)
              handlers.add('after', priority: :"after_#{priority}")
              expect(handlers.to_a).to eq(['after', 'on', 'before'])
            end

          end

        end

        describe 'send' do

          it 'has a before level for send' do
            handlers.add('before', priority: :before_send)
            handlers.add('on', priority: :send)
            expect(handlers.to_a).to eq(['on', 'before'])
          end

          it 'does not support after send' do
            expect do
              handlers.add('handler', priority: :after_send)
            end.to raise_error(ArgumentError)
          end

          it 'only keeps the latest send handler' do
            handlers.add('handler1', priority: :send)
            handlers.add('handler2', priority: :send)
            handlers.add('handler3', priority: :send)
            expect(handlers.to_a).to eq(['handler3'])
          end

        end
      end
    end
  end
end
