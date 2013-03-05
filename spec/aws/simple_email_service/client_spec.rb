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
  class SimpleEmailService

    describe Client do

      let(:test_credentials) do
        { :access_key_id => "access key id",
          :secret_access_key => "secret access key" }
      end

      let(:http_handler) { double("handler",
                                  :handle => true) }

      let(:client) do
        Client.new(test_credentials.merge(:http_handler => http_handler))
      end

      context "error parsing" do

        it 'should raise the correct error class' do
          http_handler.stub(:handle) do |req, resp|
            resp.status = 400
            resp.body = <<END
<ErrorResponse xmlns="http://ses.amazonaws.com/doc/2010-12-01/">
<Error>
  <Type>Sender</Type>
  <Code>Foo</Code>
  <Message>BAR</Message>
</Error>
<RequestId>abc123</RequestId>
</ErrorResponse>
END
          end
          lambda { client.list_verified_email_addresses }.
            should raise_error(SimpleEmailService::Errors::Foo, "BAR")
        end

      end

    end

  end
end
