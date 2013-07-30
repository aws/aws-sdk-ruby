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
    module Http
      describe ResponseBodyStream do

        def body
          @body ||= ResponseBodyStream.new {}
        end

        describe '#write' do

          it 'yields chunks directly to the block' do
            chunks = []
            body = ResponseBodyStream.new { |chunk| chunks << chunk }
            body.write('abc')
            body.write('mno')
            body.write('xyz')
            chunks.should eq(%w(abc mno xyz))
          end

        end

        describe '#read' do

          it 'returns nil' do
            body.read.should eq(nil)
          end

          it 'returns even if data has been written to it' do
            body.write('abc')
            body.read.should eq(nil)
          end

        end

        describe '#available?' do

          it 'is always false' do
            body.available?.should eq(false)
            body.write('abc')
            body.available?.should eq(false)
          end

        end

        describe '#size' do

          it 'returns 0 for a new streaming response body' do
            body.size.should eq(0)
          end

          it 'returns the total number of bytes written/yielded' do
            body.write('abc')
            body.write('mno')
            body.write('xyz')
            body.size.should eq(9)
          end

        end

        describe '#can_reset' do

          it 'returns true if the body has not been written to' do
            body.can_reset?.should eq(true)
          end

          it 'returns false once the body has been written to' do
            body.write('abc')
            body.can_reset?.should eq(false)
          end

        end

        describe '#reset!' do

          it 'can be safely called on a body that has not been written to' do
            body.reset!
          end

          it 'raises an error if the body has already been written to' do
            message = 'unable to reset, data has already been yielded'
            body.write('abc')
            expect { body.reset! }.to raise_error(
              ResponseBody::ResetNotPossibleError, message)
          end

        end
      end
    end
  end
end
