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
    describe EventEmitter do

      let(:event_emitter) { EventEmitter.new }

      describe '#on' do

        it 'returns nil' do
          expect(event_emitter.on(:event_name) { true }).to eq(nil)
        end

        it 'accepts symbolized event names' do
          called = false
          event_emitter.on(:evt) { called = true }
          event_emitter.emit(:evt)
          expect(called).to eq(true)
        end

        it 'accepts string event names' do
          called = false
          event_emitter.on('evt') { called = true }
          event_emitter.emit(:evt)
          expect(called).to eq(true)
        end

        it 'accepts listeners as objects that respond to #call' do
          listener = double('listener')
          expect(listener).to receive(:call)
          event_emitter.on(:evt, listener)
          event_emitter.emit(:evt)
        end

        it 'raises an argument error if no listener (or block) is passed' do
          expect { event_emitter.on(:evt) }.to raise_error(ArgumentError)
        end

        it 'raises an argument error if the listener does not respond to call' do
          expect do
            event_emitter.on(:evt, Object.new)
          end.to raise_error(ArgumentError)
        end

      end

      describe '#emit' do

        it 'calls all listeners registered to an event' do
          called = []
          event_emitter.on(:evt) { called << :listener_a }
          event_emitter.on(:evt) { called << :listener_b }
          event_emitter.emit(:evt)
          expect(called).to eq([:listener_a, :listener_b])
        end

        it 'accepts strings for event names' do
          called = false
          event_emitter.on(:evt) { called = true }
          event_emitter.emit('evt')
          expect(called).to eq(true)
        end

        it 'returns nil' do
          event_emitter.on(:evt) {}
          expect(event_emitter.emit(:evt)).to eq(nil)
        end

        it 'passes along additional args to the listeners' do
          arg_list = ['abc', 123]
          yielded = nil
          event_emitter.on(:evt) {|*args| yielded = args }
          event_emitter.emit(:evt, *arg_list)
          expect(yielded).to eq(arg_list)
        end

      end

    end
  end
end
