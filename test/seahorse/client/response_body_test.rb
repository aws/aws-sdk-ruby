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
    describe ResponseBody do

      def body
        @body ||= ResponseBody.new
      end

      describe '#write' do

        it 'makes data available to #read' do
          body.write('abc')
          body.read.must_equal('abc')
        end

        it 'can be called multiple times' do
          body.write('abc')
          body.write('mno')
          body.write('xyz')
          body.read.must_equal('abcmnoxyz')
        end

        it 'is aliased as <<' do
          body << 'abc'
          body << 'mno'
          body << 'xyz'
          body.read.must_equal('abcmnoxyz')
        end

        it 'raises an error if it is called after the body has been read' do
          body << 'abc'
          body.read
          err = assert_raises(ResponseBody::BodyClosedError) { body << 'xyz' }
          err.message.must_equal('unable to write after #read has been called')
        end

      end

      describe '#read' do

        it 'returns the body contents' do
          body.write('abc')
          body.read.must_equal('abc')
        end

        it 'can be called multiple times' do
          body.write('abc')
          body.read.must_equal('abc')
          body.read.must_equal('abc')
        end

      end

      describe '#reset!' do

        it 'resets the body contents' do
          body.write('abc')
          body.reset!
          body.read.must_equal('')
        end

        it 'reopens the body for writing' do
          body.write('abc')
          body.reset!
          body.write('xyz')
          body.read.must_equal('xyz')
        end

      end

    end
  end
end
