# Copyright 2011-2015 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

    # Represents a collection of Amazon Prefix Lists.  Typically you
    # should get an instance of this class by calling {EC2#prefix_lists}.
    class PrefixListCollection < Collection

      # @yield [Volume] Yields each prefix list in the collection.
      # @return [nil]
      def each(&block)
        resp = filtered_request(:describe_prefix_lists)
        resp.prefix_list_set.each do |pl|
          prefix_list = PrefixList.new_from(:describe_prefix_lists, pl,
            pl.prefix_list_id, :config => config)

          yield(prefix_list)

        end
        nil
      end

      # @api private
      protected
      def member_class
        PrefixList
      end

    end

  end
end
