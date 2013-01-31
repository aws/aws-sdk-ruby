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

  describe AsyncHandle do

    let(:handle) do
      h = Object.new
      h.extend AsyncHandle
      h
    end

    let(:obj) { double("some object") }

    context '#on_success' do

      it 'should do nothing immediately if success has not been signaled' do
        lambda do
          handle.on_success { raise "FOO" }
        end.should_not raise_error
      end

      it 'should call the block immediately if success is already signaled' do
        handle.signal_success
        obj.should_receive(:success)
        handle.on_success { obj.success }
      end

    end

    context '#on_failure' do

      it 'should do nothing immediately if failure has not been signaled' do
        lambda do
          handle.on_failure { raise "FOO" }
        end.should_not raise_error
      end

      it 'should call the block immediately if failure is already signaled' do
        handle.signal_failure
        obj.should_receive(:failure)
        handle.on_failure { obj.failure }
      end

    end

    context '#on_complete' do

      it 'should do nothing immediately if no status has been signaled' do
        lambda do
          handle.on_complete { raise "FOO" }
        end.should_not raise_error
      end

      it 'should call the block immediately if success is already signaled' do
        handle.signal_success
        obj.should_receive(:complete)
        handle.on_complete { obj.complete }
      end

      it 'should call the block immediately if failure is already signaled' do
        handle.signal_failure
        obj.should_receive(:complete)
        handle.on_complete { obj.complete }
      end

    end

    context '#signal_success' do

      context 'with no callback' do

        it "doesn't raise an exception" do
          lambda { handle.signal_success }.should_not raise_error
        end

      end

      context 'with one success callback' do

        before(:each) { handle.on_success { obj.success } }

        it 'calls the callback' do
          obj.should_receive(:success)
          handle.signal_success
        end

      end

      context 'with two success callbacks' do

        before(:each) do
          handle.on_success { obj.success1 }
          handle.on_success { obj.success2 }
        end

        it 'calls each callback' do
          obj.should_receive(:success1)
          obj.should_receive(:success2)
          handle.signal_success
        end

      end

      context 'with one complete callback' do

        before(:each) { handle.on_complete { |*args| obj.complete(*args) } }

        it 'calls the callback' do
          obj.should_receive(:complete).with(:success)
          handle.signal_success
        end

      end

      context 'with two complete callbacks' do

        before(:each) do
          handle.on_complete { obj.complete1 }
          handle.on_complete { obj.complete2 }
        end

        it 'calls the callback' do
          obj.should_receive(:complete1)
          obj.should_receive(:complete2)
          handle.signal_success
        end

      end

      context 'with one of each kind of callback' do

        before(:each) do
          obj.stub(:complete)
          obj.stub(:success)
          obj.stub(:failure)
        end

        before(:each) { handle.on_complete { obj.complete } }
        before(:each) { handle.on_success { obj.success } }
        before(:each) { handle.on_failure { obj.failure } }

        it 'calls the success callback' do
          obj.should_receive(:success)
          handle.signal_success
        end

        it 'calls the complete callback' do
          obj.should_receive(:complete)
          handle.signal_success
        end

        it 'does not call the failure callback' do
          obj.should_not_receive(:failure)
          handle.signal_success
        end

      end

    end

    context '#signal_failure' do

      context 'with no callback' do

        it "doesn't raise an exception" do
          lambda { handle.signal_failure }.should_not raise_error
        end

      end

      context 'with one failure callback' do

        before(:each) { handle.on_failure { obj.failure } }

        it 'calls the callback' do
          obj.should_receive(:failure)
          handle.signal_failure
        end

      end

      context 'with two failure callbacks' do

        before(:each) do
          handle.on_failure { obj.failure1 }
          handle.on_failure { obj.failure2 }
        end

        it 'calls each callback' do
          obj.should_receive(:failure1)
          obj.should_receive(:failure2)
          handle.signal_failure
        end

      end

      context 'with one complete callback' do

        before(:each) { handle.on_complete { |*args| obj.complete(*args) } }

        it 'calls the callback' do
          obj.should_receive(:complete).with(:failure)
          handle.signal_failure
        end

      end

      context 'with two complete callbacks' do

        before(:each) do
          handle.on_complete { obj.complete1 }
          handle.on_complete { obj.complete2 }
        end

        it 'calls the callback' do
          obj.should_receive(:complete1)
          obj.should_receive(:complete2)
          handle.signal_success
        end

      end

      context 'with one of each kind of callback' do

        before(:each) do
          obj.stub(:complete)
          obj.stub(:success)
          obj.stub(:failure)
        end

        before(:each) { handle.on_complete { obj.complete } }
        before(:each) { handle.on_success { obj.success } }
        before(:each) { handle.on_failure { obj.failure } }

        it 'calls the failure callback' do
          obj.should_receive(:failure)
          handle.signal_failure
        end

        it 'calls the complete callback' do
          obj.should_receive(:complete)
          handle.signal_failure
        end

        it 'does not call the success callback' do
          obj.should_not_receive(:success)
          handle.signal_failure
        end

      end

    end

  end

end
