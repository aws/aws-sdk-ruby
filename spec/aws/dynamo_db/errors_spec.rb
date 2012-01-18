# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

        it 'should include DynamoDB::Errors::ModeledError instead of AWS::Errors::ModeledError' do
          error_class.should include(Errors::ModeledError)
          error_class.should_not include(AWS::Errors::ModeledError)
        end

        it 'should have an error code matching its class name' do
          error_class.new.code.should == "Foo"
        end

        it 'should have the error code as its default message' do
          error_class.new.message.should == "Foo"
        end

        it 'should store the request object' do
          request = double("request")
          error_class.new(request).http_request.should == request
        end

        it 'should store the response' do
          response = double("response",
                            :status => 200,
                            :body => "{}")
          error_class.new(nil, response).http_response.should == response
        end

        it 'should parse the response body to get the message' do
          response = double("response",
                            :status => 200,
                            :body => '{"message":"FOO"}')
          error_class.new(nil, response).message.should == "FOO"
        end

        it 'should default to the code if the response body does not contain a message' do
          response = double("response",
                            :status => 200,
                            :body => '{}')
          error_class.new(nil, response).message.should == "Foo"
        end

        it 'should default to the code if the response body message is null' do
          response = double("response",
                            :status => 200,
                            :body => '{"message":null}')
          error_class.new(nil, response).message.should == "Foo"
        end

        it 'should include ClientError if the status code is less than 500' do
          response = double("response",
                            :body => "{}",
                            :status => 499)
          error_class.new(nil, response).should be_kind_of(Errors::ClientError)
          error_class.new(nil, response).should_not be_kind_of(Errors::ServerError)
        end

        it 'should include ServerError if the status code is greater than or equal to 500' do
          response = double("response",
                            :body => "{}",
                            :status => 500)
          error_class.new(nil, response).should be_kind_of(Errors::ServerError)
          error_class.new(nil, response).should_not be_kind_of(Errors::ClientError)
        end

      end

    end

  end
end
