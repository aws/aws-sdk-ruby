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
require 'aws/ec2/request'
require 'aws/ec2/client/xml'
require 'aws/ec2/errors'
require 'aws/inflection'

module AWS
  class EC2

    # @private
    class Client < BaseClient

      include ConfiguredClientMethods

      API_VERSION = '2011-02-28'

      REQUEST_CLASS = EC2::Request

      # @private
      CACHEABLE_REQUESTS = Set[
        :describe_instances,
        :describe_instance_attribute,
        :describe_images,
        :describe_image_attribute,
        :describe_volumes,
        :describe_security_groups,
        :describe_addresses,
        :describe_key_pairs,
        :describe_regions,
        :describe_availability_zones,
        :describe_reserved_instances,
        :describe_reserved_instances_offerings,
        :describe_snapshots,
        :describe_snapshot_attribute,
        :describe_tags
      ]

      configure_client

    end
  end
end
