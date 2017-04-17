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

module AWS
  class EC2

    # Represents an Amazon EC2 Prefix List.
    #
    # @attr_reader [Array<String>] cidr_set The IP address range of the AWS service.
    #
    # @attr_reader [String] name The name of the prefix.
    #
    class PrefixList < Resource

      # @api private
      def initialize(id, opts = {})
        @id = id
        super(opts)
      end

      # @return [String] Returns the prefix list ID.
      attr_reader :id

      attribute :cidr_set, :static => true

      attribute :prefix_list_name, :static => true

      alias_method :name, :prefix_list_name

      populates_from(:describe_prefix_lists) do |resp|
        resp.prefix_list_index[id]
      end

    end

  end
end
