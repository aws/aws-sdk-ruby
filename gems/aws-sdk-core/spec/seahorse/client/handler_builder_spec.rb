# frozen_string_literal: true

require_relative '../../spec_helper'
require 'ostruct'

module Seahorse
  module Client
    describe HandlerBuilder do

      let(:klass) {
        Class.new do

          include HandlerBuilder

          def initialize
            @handlers = HandlerList.new
          end

          attr_reader :handlers

        end
      }

      let(:obj) { klass.new }

      describe '#handler' do

        it 'registers a handler' do
          handler_class = Class.new(Handler)
          obj.handler(handler_class)
          expect(obj.handlers).to include(handler_class)
        end

        it 'accepts a step option' do
          handler1 = Class.new(Handler)
          handler2 = Class.new(Handler)
          obj.handler(handler1, step: :validate)
          obj.handler(handler2, step: :build)
          expect(obj.handlers).to include(handler1)
          expect(obj.handlers).to include(handler2)
        end

        it 'builds a handler from a block' do
          handler_class = obj.handler do |context|
            context
          end
          expect(handler_class.ancestors).to include(Handler)
          expect(handler_class.new.call('context')).to eq('context')
        end

        it 'accepts a step with the block' do
          obj.handler(step: :validate) do |context|
            context << :validate
            super(context)
          end
          obj.handler(step: :build) do |context|
            context << :build
            @handler.call(context)
          end
          obj.handler(step: :sign) do |context|
            context << :sign
            handler.call(context)
          end
          obj.handler(step: :send) do |context|
            context << :send
            context
          end
          resp = obj.handlers.to_stack.call([])
          expect(resp).to eq([:validate, :build, :sign, :send])
        end

        it 'returns the handler class' do
          handler_class = Class.new(Handler)
          expect(obj.handler(handler_class)).to be(handler_class)
        end

      end

      describe '#handle_request' do

        it 'passes the context to the block' do
          yielded = nil
          handler = obj.handle_request do |context|
            yielded = context
          end
          handler.new(->(_) { }).call('context')
          expect(yielded).to eq('context')
        end

        it 'calls the next handler in the stack reguardless of the return' do
          handler = obj.handle_request do |context|
            nil # still calls the next handler, despite the block return value
          end
          context = Object.new
          resp = handler.new(->(c) { c }).call(context)
          expect(resp).to be(context)
        end

      end

      describe '#handle_response' do

        it 'is called when the response is signaled complete' do
          called = false
          handler = obj.handle_response { |response| called = true }
          handler.new(->(_) { Response.new.tap {|r| r.context.http_response.status_code = 200 } }).call(nil)
          expect(called).to be(true)
        end

        it 'is not called if the response is not signaled complete' do
          called = false
          handler = obj.handle_response { |response| called = true }
          handler.new(->(_) { Response.new }).call(nil)
          expect(called).to be(false)
        end

      end

      describe 'naming handlers inside modules' do

        let(:mod) {
          Module.new do
            extend HandlerBuilder
            def self.handlers
              @handlers ||= HandlerList.new
            end
          end
        }

        it 'assigns the handler to a constant if a name is given' do
          expect(mod.const_defined?('MyHandler')).to be(false)
          handler_class = mod.handler('MyHandler') { |arg| }
          expect(mod::MyHandler).to be(handler_class)
        end

        it 'accepts the handler name as a symbol' do
          handler_class = mod.handler(:MyHandler) { |arg| }
          expect(mod::MyHandler).to be(handler_class)
        end

        it 'accepts a name and options at the same time' do
          mod.handler(:FirstSendHandler, step: :send) { |arg| }
          mod.handler(:SecondSendHandler, step: :send) { |arg| }
          expect(mod.handlers).not_to include(mod::FirstSendHandler)
          expect(mod.handlers).to include(mod::SecondSendHandler)
        end

        it 'can assign a name when calling handle_request' do
          handler_class = mod.handle_request(:MyHandler) { |arg| }
          expect(mod::MyHandler).to be(handler_class)
        end

        it 'can assign a name when calling handle_response' do
          handler_class = mod.handle_response(:MyHandler) { |arg| }
          expect(mod::MyHandler).to be(handler_class)
        end

      end
    end
  end
end
