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

    # Most of the AWS::EC2 collections include TaggedCollection.  This
    # module provides methods for filtering the collection with
    # tags.
    #
    #     collecion.tagged('prod').each do {|obj| ... }
    #
    module TaggedCollection

      # Filter the collection by one or more tag keys.  If you pass multiple
      # tag keys they will be be treated as OR conditions.  If you want to
      # AND them together call tagged multiple times (chained).
      #
      # Filter the collection to items items tagged 'live' OR 'test'
      #
      #     collection.tagged('live', 'test')
      #
      # Filter the collection to items tagged 'live' AND 'webserver'
      #
      #     collection.tagged('live').tagged('webserver')
      #
      def tagged *keys
        filter('tag-key', *keys)
      end

      # Filter the collection by one or more tag values.  If you pass multiple
      # tag values they will be be treated as OR conditions.  If you want to
      # AND them together call tagged multiple times (chained).
      #
      #     collection.tagged('stage').tagged_values('production')
      #
      def tagged_values *values
        filter('tag-value', *values)
      end

    end
  end
end
