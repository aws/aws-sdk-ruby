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

require 'aws/base_client'
require 'aws/configured_client_methods'
require 'aws/sqs/request'
require 'aws/sqs/client/xml'
require 'aws/sqs/errors'
require 'aws/sqs/policy'

module AWS
  class SQS

    # @private
    class Client < BaseClient

      include ConfiguredClientMethods

      API_VERSION = '2009-02-01'

      # @private
      REQUEST_CLASS = SQS::Request

      configure_client

    end
  end
end
