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

require 'test_helper'

module Seahorse
  class Client
    describe Configuration do

      it 'can be constructed without any arguments' do
        Configuration.new.must_be_kind_of(Configuration)
      end

      describe '.add_option' do

        it 'defines a getter' do
          config = Configuration.new
          config.wont_respond_to(:new_getter)
          Configuration.add_option(:new_getter)
          config.must_respond_to(:new_getter)
        end

      end

    end
  end
end
