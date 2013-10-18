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
  class SimpleDB
    module Errors

      shared_examples_for "modeled sdb exception" do |base|

        let(:error_xml) { <<-XML.strip }
          <Response>
            <Errors>
              <Error>
                <Code>DuplicateItemName</Code>
                <Message>Something bad happened.</Message>
                <BoxUsage>1.234</BoxUsage>
              </Error>
            </Errors>
            <RequestID>75297cee-3e48-9379-5d07-1769be265c2d</RequestID>
          </Response>
        XML

        let(:http_request) { double("http request") }

        let(:http_response) {
          double("http response", :body => error_xml, :status => 400)
        }

        let(:exception) do
          described_class.new(http_request, http_response)
        end

        it "should be a kind of #{base}" do
          exception.should be_kind_of(base)
        end

      end

      describe DuplicateItemName do
        it_should_behave_like "modeled sdb exception", ClientError
      end

    end
  end
end
