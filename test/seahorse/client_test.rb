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
  describe Client do

    describe 'VERSION' do

      it 'is a semver compatible version string' do
        Client::VERSION.must_match(/\d+\.\d+\.\d+/)
      end

    end

    describe '.define' do

      it 'creates a new client class' do
        client_class = Client.define({})
        client_class.ancestors.must_include(Client::Base)
      end

      it 'sets the api on the client class' do
        api = {}
        client_class = Client.define(api)
        client_class.api.must_be_same_as(api)
      end

      it 'extends from subclasses of client' do
        klass1 = Client.define({})
        klass2 = klass1.define({})
        klass2.ancestors.must_include(klass1)
        klass2.ancestors.must_include(Client::Base)
      end

    end
  end
end
