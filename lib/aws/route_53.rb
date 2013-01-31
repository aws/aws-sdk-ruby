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

require 'aws/core'
require 'aws/route_53/config'

module AWS

  # This class is the starting point for working with Amazon Route 53.
  #
  # To use Amazon Route 53 you must first
  # {sign up here}[http://aws.amazon.com/route53/].
  #
  # For more information about Amazon Route 53:
  #
  # * {Amazon Route 53}[http://aws.amazon.com/route53/]
  # * {Amazon Route 53 Documentation}[http://aws.amazon.com/documentation/route53/]
  #
  # = Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the AWS::Route53 interface:
  #
  #   r53 = AWS::Route53.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # = Using the Client
  #
  # AWS::Route53 does not provide higher level abstractions for Route 53 at
  # this time.  You can still access all of the API methods using
  # {AWS::Route53::Client}.  Here is how you access the client and make
  # a simple request:
  #
  #   r53 = AWS::Route53.new
  #
  #   resp = r53.client.list_hosted_zones
  #   resp[:hosted_zones].each do |zone|
  #     # ...
  #   end
  #
  # See {Client} for documentation on all of the supported operations.
  #
  class Route53

    AWS.register_autoloads(self, 'aws/route_53') do
      autoload :ChangeRequest, 'change_batch'
      autoload :ChangeBatch, 'change_batch'
      autoload :ChangeInfo, 'change_info'
      autoload :Client, 'client'
      autoload :CreateRequest, 'change_batch'
      autoload :DeleteRequest, 'change_batch'
      autoload :Errors, 'errors'
      autoload :HostedZone, 'hosted_zone'
      autoload :HostedZoneCollection, 'hosted_zone_collection'
      autoload :Request, 'request'
      autoload :ResourceRecordSet, 'resource_record_set'
      autoload :ResourceRecordSetCollection, 'resource_record_set_collection'
    end

    include Core::ServiceInterface

    # @return [HostedZoneCollection]
    def hosted_zones
      HostedZoneCollection.new(:config => config)
    end

  end
end
