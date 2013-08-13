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

      let(:handlers) { HandlerList.new }

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
          expect(handlers.to_a).to eq([handler2, handler1])
        end

        it 'sorts handlers by reverse (stack) step' do
          handlers.add('validate', step: :validate)
          handlers.add('build', step: :build)
          handlers.add('sign', step: :sign)
          handlers.add('send', step: :send)
          expect(handlers.to_a).to eq(%w(send sign build validate))
        end

        it 'defaults step to :build' do
          handlers.add('before', step: :before_build)
          handlers.add('on')
          handlers.add('after', step: :after_build)
          expect(handlers.to_a).to eq(['after', 'on', 'before'])
        end

        it 'accepts multiple handlers with the same step' do
          handlers.add('h1', step: :validate)
          handlers.add('h2', step: :validate)
          handlers.add('h3', step: :build)
          handlers.add('h4', step: :build)
          expect(handlers.to_a).to eq(['h4', 'h3', 'h2', 'h1'])
        end

        %w(validate build sign).each do |step|

          describe(step) do

            it "has a before and after level for #{step}" do
              handlers.add('before', step: :"before_#{step}")
              handlers.add('on', step: step.to_sym)
              handlers.add('after', step: :"after_#{step}")
              expect(handlers.to_a).to eq(['after', 'on', 'before'])
            end

          end

        end

        describe 'send' do

          it 'has a before level for send' do
            handlers.add('before', step: :before_send)
            handlers.add('on', step: :send)
            expect(handlers.to_a).to eq(['on', 'before'])
          end

          it 'does not support after send' do
            expect do
              handlers.add('handler', step: :after_send)
            end.to raise_error(ArgumentError)
          end

          it 'only keeps the latest send handler' do
            handlers.add('handler1', step: :send)
            handlers.add('handler2', step: :send)
            handlers.add('handler3', step: :send)
            expect(handlers.to_a).to eq(['handler3'])
          end

        end
      end
    end
  end
end
