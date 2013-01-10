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
  class S3
    module Errors

      shared_examples_for "modeled s3 exception" do |status, base|

        let(:error_xml) do
          "<Error><Code>NoSuchBucket</Code>" +
            "<Message>Something bad happened</Message>" +
            "</Error>"
        end

        let(:http_request) { double("http request") }

        let(:http_response) { double("http response",
                                     :body => error_xml,
                                     :status => status) }

        let(:exception) do
          described_class.new(http_request, http_response)
        end

        it 'should parse the exception XML' do
          exception.message.should =~ /Something bad happened/
        end

        it "should be a kind of #{base}" do
          exception.should be_kind_of(base)
        end

      end

      describe BadRequest do
        it_should_behave_like "modeled s3 exception", 400, ClientError
      end

      describe NoSuchBucket do
        it_should_behave_like "modeled s3 exception", 404, ClientError
      end

      describe InternalError do
        it_should_behave_like "modeled s3 exception", 500, ServerError
      end

      describe NotImplemented do
        it_should_behave_like "modeled s3 exception", 500, ServerError
      end

      describe SlowDown do
        it_should_behave_like "modeled s3 exception", 503, ServerError
      end

    end
  end
end
