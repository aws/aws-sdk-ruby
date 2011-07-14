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
require 'aws/sns/request'
require 'aws/sns/client/xml'
require 'aws/sns/client/options'

module AWS
  class SNS

    # @private
    class Client < BaseClient

      include ConfiguredClientMethods

      API_VERSION = '2010-03-31'

      # @private
      REQUEST_CLASS = SNS::Request

      configure_client

    end
  end
end
