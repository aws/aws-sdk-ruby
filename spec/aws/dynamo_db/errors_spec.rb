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

module AWS
  class DynamoDB

    describe Errors do

      context 'generated error classes' do

        let (:error_class) { Errors::Foo }

        it 'should include ClientError if the status code is less than 500' do
          req = double('request')
          resp = double("response", :body => "{}", :status => 499)
          error_class.new(req, resp).should be_kind_of(Errors::ClientError)
          error_class.new(req, resp).should_not be_kind_of(Errors::ServerError)
        end

        it 'should include ServerError if the status code is gte 500' do
          req = double('request')
          resp = double("response", :body => "{}", :status => 500)
          error_class.new(req, resp).should_not be_kind_of(Errors::ClientError)
          error_class.new(req, resp).should be_kind_of(Errors::ServerError)
        end

        it 'should include ServerError if the status code is greater than or equal to 500' do
          req = double('request')
          resp = double("response", :body => "{}", :status => 500)

          error_class.new(req, resp).should be_kind_of(Errors::ServerError)
          error_class.new(req, resp).should_not be_kind_of(Errors::ClientError)
        end

      end

    end

  end
end
