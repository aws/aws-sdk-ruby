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

module Seahorse::Client::Http
  describe StreamingResponseBody do

    describe '#write' do

      it 'yields chunks directly to the block' do
        chunks = []
        body = StreamingResponseBody.new { |chunk| chunks << chunk }
        body.write('abc')
        body.write('mno')
        body.write('xyz')
        chunks.must_equal(%w(abc mno xyz))
      end

    end

    describe '#read' do

      it 'returns an empty string' do
        body = StreamingResponseBody.new {}
        body.write('abc')
        body.read.must_equal('')
      end

    end

    describe '#empty?' do
    end

  end
end
