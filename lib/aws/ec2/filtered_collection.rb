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

module AWS
  class EC2

    # @private
    module FilteredCollection

      def initialize options = {}
        @filters = options[:filters] || []
        super
      end

      # Specify one or more criteria to filter elastic IP addresses by.
      # A subsequent call to #each will limit the results returned
      # by provided filters.
      # 
      # * Chain multiple calls of #filter together to AND multiple conditions
      #   together.
      #
      # * Supply multiple values to a singler #filter call to OR those 
      #   value conditions together.
      #
      # * '*' matches one or more characters and '?' matches any one
      #   character.
      #
      def filter filter_name, *values
        filters = @filters.dup
        filters << { :name => filter_name, :values => values.flatten }
        collection_with(:filters => filters)
      end

      # @private
      def filtered_request client_method, options = {}, &block
        options[:filters] = @filters unless @filters.empty?
        client.send(client_method, options)
      end

      # @private
      protected
      def preserved_options
        { :config => config,
          :filters => @filters }
      end

      # @private
      protected
      def collection_with(options = {})
        self.class.new(preserved_options.merge(options))
      end

    end
  end
end
