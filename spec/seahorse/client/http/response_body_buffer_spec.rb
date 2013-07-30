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
      describe ResponseBodyBuffer do

        def body
          @body ||= ResponseBodyBuffer.new
        end

        describe '#write' do

          it 'makes data available to #read' do
            body.write('abc')
            expect(body.read).to eq('abc')
          end

          it 'can be called multiple times' do
            body.write('abc')
            body.write('mno')
            body.write('xyz')
            expect(body.read).to eq('abcmnoxyz')
          end

          it 'returns the chunk passed in' do
            expect(body.write('abc')).to eq('abc')
          end

        end

        describe '#read' do

          it 'returns the body contents' do
            body.write('abc')
            expect(body.read).to eq('abc')
          end

          it 'can be called multiple times' do
            body.write('abc')
            expect(body.read).to eq('abc')
            expect(body.read).to eq('abc')
          end

        end

        describe '#reset!' do

          it 'resets the body contents' do
            body.write('abc')
            body.reset!
            expect(body.read).to eq('')
          end

          it 'reopens the body for writing' do
            body.write('abc')
            body.reset!
            body.write('xyz')
            expect(body.read).to eq('xyz')
          end

        end

        describe '#empty?' do

          it 'returns true for a new response body' do
            expect(body.empty?).to eq(true)
          end

          it 'returns false after writing to a body' do
            body.write('abc')
            expect(body.empty?).to eq(false)
          end

          it 'returns true after being reset' do
            body.write('abc')
            body.reset!
            expect(body.empty?).to eq(true)
          end

          it 'returns true if empty string is written to it' do
            body.write('')
            expect(body.empty?).to eq(true)
          end

        end

        describe '#size' do

          it 'returns 0 for a new response body' do
            expect(body.size).to eq(0)
          end

          it 'returns the total size' do
            body.write('abc')
            body.write('mno')
            body.write('xyz')
            expect(body.size).to eq(9)
          end

          it 'returns the same size as the read value' do
            expect(body.read.size).to eq(body.size)
          end

        end
      end
    end
  end
end
