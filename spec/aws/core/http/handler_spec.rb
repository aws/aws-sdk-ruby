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

module AWS::Core
  module Http
    describe Handler do

      class DoNothingHandler

        @handle_called = false

        def handle request, response
          @handle_called = true

        end

        def handle_called?
          @handle_called
        end

      end

      let(:base_handler) { DoNothingHandler.new }

      context '#intialize' do

        it 'accepts a base handler and a handle method block' do
          Handler.new(base_handler){|req,resp|}
        end

        it 'requires the base handler to response to #handle' do
          lambda {
            broken_handler = 'I dont respond to #handle'
            Handler.new(broken_handler){|req,resp|}
          }.should raise_error(ArgumentError)
        end

        it 'requires the block to accept 2 arguments' do
          lambda {
            Handler.new(base_handler){|foo|}
          }.should raise_error(ArgumentError)
        end

      end

      context '#handle' do

        it 'should execute the passed block when called' do
          block_called = false
          handler = Handler.new(base_handler) do |req, resp|
            block_called = true
          end
          handler.handle('req', 'resp')
          block_called.should be_true
        end

        it 'provides access to the base handler from the block via super' do
          handler = Handler.new(base_handler) do |req, resp|
            super(req,resp)
          end
          handler.handle('request', 'response')
          base_handler.handle_called?.should be_true
        end

        it 'should pass the #handle request to the block' do
          block_request_param = nil
          handler = Handler.new(base_handler) do |req, resp|
            block_request_param = req
          end
          handler.handle('request', 'response')
          block_request_param.should == 'request'
        end

        it 'should pass the #handle response to the block' do
          block_response_param = nil
          handler = Handler.new(base_handler) do |req, resp|
            block_response_param = resp
          end
          handler.handle('request', 'response')
          block_response_param.should == 'response'
        end

        it 'should not trap exceptions' do
          handler = Handler.new(base_handler) do |req, resp|
            raise 'catch me if you can!'
          end
          lambda {
            handler.handle('req', 'resp')
          }.should raise_error('catch me if you can!')
        end

      end

      context '#base' do

        it 'should return the base hander' do
          handler = Handler.new(base_handler) {|req, resp|}
          handler.base.should == base_handler
        end

      end

      context 'with synchronous base' do

        context '#handle_async' do

          let(:handle) { double("handle",
                                :signal_success => true,
                                :signal_failure => true) }

          before(:each) { Thread.stub(:new).and_yield }

          it 'should execute the passed block in a new thread when called' do
            obj = double("an object")
            Thread.should_receive(:new).and_yield
            obj.should_receive(:handle).with("foo", "bar")
            handler = Handler.new(base_handler) { |req, resp| obj.handle(req, resp) }
            handler.handle_async('foo', 'bar', handle)
          end

          it 'provides access to the base handler from the block via super' do
            base_handler.should_receive(:handle).with('request', 'response')
            handler = Handler.new(base_handler) do |req, resp|
              super(req,resp)
            end
            handler.handle_async('request', 'response', handle)
          end

          it 'should trap exceptions' do
            handler = Handler.new(base_handler) do |req, resp|
              raise 'catch me if you can!'
            end
            lambda {
              handler.handle_async('req', 'resp', handle)
            }.should_not raise_error
          end

          it 'should signal failure on an exception' do
            handle.should_receive(:signal_failure)
            handler = Handler.new(base_handler) do |req, resp|
              raise 'catch me if you can!'
            end
            handler.handle_async('req', 'resp', handle)
          end

          it 'should signal success on completion' do
            handle.should_receive(:signal_success)
            handler = Handler.new(base_handler) { |req, resp| }
            handler.handle_async('req', 'resp', handle)
          end

        end

      end

      context 'with asynchronous base' do

        let(:handle) { double("handle",
                              :signal_success => true,
                              :signal_failure => true) }

        class AsyncDoNothingHandler
          def handle_async; end
        end

        let(:base_handler) { AsyncDoNothingHandler.new }

        let(:obj) { double("some object",
                           :handle_async => true) }

        let(:handler) do
          myobj = obj
          Handler.new(base_handler) do |req, resp, handle|
            myobj.handle_async(req, resp, handle)
          end
        end

        context '#initialize' do

          it 'should accept a handler that responds to handle_async' do
            Handler.new(base_handler) { |req, resp, handle| }
          end

          it 'should raise an error if the block does not have arity 3' do
            lambda do
              Handler.new(base_handler) { |req, resp| }
            end.should raise_error(ArgumentError)
          end

        end

        context '#handle_async' do

          it 'should call the block' do
            obj.should_receive(:handle_async).with('req', 'resp', handle)
            handler.handle_async('req', 'resp', handle)
          end

          it 'should provide access to the base handler via super' do
            base_handler.should_receive(:handle_async).with('req', 'resp', handle)
            h = Handler.new(base_handler) { |req, resp, handle| super(req, resp, handle) }
            h.handle_async('req', 'resp', handle)
          end

        end

        context '#handle' do

          it 'should raise an error' do
            lambda { handler.handle('req', 'resp') }.
              should raise_error("attempted to call #handle on an async handler")
          end

        end

      end

    end
  end
end
