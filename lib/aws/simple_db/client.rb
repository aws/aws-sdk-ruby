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
require 'aws/simple_db/request'
require 'aws/simple_db/client/xml'
require 'aws/simple_db/client/options'
require 'aws/inflection'
require 'aws/simple_db/errors'
require 'time'

module AWS
  class SimpleDB
    
    # @private
    class Client < BaseClient

      include ConfiguredClientMethods

      API_VERSION = '2009-04-15'

      REGION_US_E1 = 'sdb.amazonaws.com'
      REGION_US_W1 = 'sdb.us-west-1.amazonaws.com'
      REGION_EU_W1 = 'sdb.eu-west-1.amazonaws.com'
      REGION_APAC_SE1 = 'sdb.ap-southeast-1.amazonaws.com'

      REQUEST_CLASS = SimpleDB::Request

      configure_client

      def valid_domain_name? name
        self.class.valid_domain_name?(name)
      end

      def self.valid_domain_name? name
        name.to_s =~ /^[a-z_\-\.]{3,255}$/i ? true : false
      end

    end
  end
end
