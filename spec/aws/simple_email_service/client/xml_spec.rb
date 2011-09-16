# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    class Client < Core::Client

      describe XML::ListVerifiedEmailAddresses do

        let(:response) { described_class.parse(<<-XML.strip) }
          <ListVerifiedEmailAddressesResponse xmlns="http://ses.amazonaws.com/doc/2010-12-01/">
            <ListVerifiedEmailAddressesResult>
              <VerifiedEmailAddresses>
                <member>foo@example.com</member>
              </VerifiedEmailAddresses>
            </ListVerifiedEmailAddressesResult>
            <ResponseMetadata>
              <RequestId>1b7a7ecd-88ac-11e0-ad3c-57e65aafd2c3</RequestId>
            </ResponseMetadata>
          </ListVerifiedEmailAddressesResponse>
        XML

        it 'should have a list of email addresses' do
          response.verified_email_addresses.
            should == ["foo@example.com"]
        end

      end

    end
  end
end
