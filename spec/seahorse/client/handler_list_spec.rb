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
          handlers.add('validate', step: :validate)
          handlers.add('build')
          handlers.add('sign', step: :sign)
          expect(handlers.to_a).to eq(['sign', 'build', 'validate'])
        end

        it 'accepts multiple handlers with the same step' do
          handlers.add('h1', step: :validate)
          handlers.add('h2', step: :validate)
          handlers.add('h3', step: :build)
          handlers.add('h4', step: :build)
          expect(handlers.to_a).to eq(['h4', 'h3', 'h2', 'h1'])
        end

        describe 'send' do

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
