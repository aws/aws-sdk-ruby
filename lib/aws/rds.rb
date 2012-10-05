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

require 'aws/core'
require 'aws/rds/config'

module AWS

  # Provides an expressive, object-oriented interface to RDS.
  #
  # == Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the RDS interface:
  #
  #   rds = AWS::RDS.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # == RDS Client
  #
  # {RDS::Client} provides one method for each service operation.  The client
  # method arguments map 1-to-1 with the API parameters.
  #
  #   rds = AWS::RDS.new
  #
  #   # describe all of your reserved instances
  #   resp = rds.client.describe_reserved_db_instances
  #   resp[:reserved_database_instances].each do |inst|
  #     # inst is another hash
  #   end
  #
  #   # describe a single instance
  #   resp = rds.client.describe_reserved_db_instances(:reserved_db_instance_id => 'id')
  #   inst = resp[:reserved_database_instances].first
  #
  # The client methods all document their input and output structures.
  #
  class RDS

    AWS.register_autoloads(self) do
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :Request, 'request'
    end

    include Core::ServiceInterface

  end

end
