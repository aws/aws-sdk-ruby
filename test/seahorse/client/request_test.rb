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
    describe Request do

      def request
        @request ||= Request.new
      end

      describe '#send' do

        it 'returns a Response' do
          request.send.must_be_kind_of(Response)
        end

        it 'returns a different Response object everytime #send is called' do
          resp1 = request.send
          resp2 = request.send
          resp1.wont_be_same_as(resp2)
        end

      end
    end
  end
end
