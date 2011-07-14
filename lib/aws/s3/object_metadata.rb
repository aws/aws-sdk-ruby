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

require 'aws/model'

module AWS
  class S3

    # Returns an object that represents the metadata for an S3 object.
    class ObjectMetadata

      include Model

      # @param [S3Object]
      # @param [Hash] options
      # @option options [String] :version_id A specific version of the object
      #   to get metadata for
      def initialize(object, options = {})
        @object = object
        @version_id = options[:version_id]
        super
      end

      # @return [S3Object]
      attr_reader :object

      # Returns the value for the given name stored in the S3Objects
      # metadata:
      #
      #   bucket.objects['myobject'].metadata['purpose']
      #   # returns nil if the given metadata key has not been set
      #
      # @return [String,nil] Returns the metadata for the given name.
      def [] name
        to_h[name.to_s]
      end

      # Proxies the method to {#[]}.
      # @return (see #[])
      def method_missing name
        self[name]
      end

      # @return [Hash] Returns the user-generated metadata stored with 
      #   this S3 Object.
      def to_h
        options = {}
        options[:bucket_name] = object.bucket.name
        options[:key] = object.key
        options[:version_id] = @version_id if @version_id
        client.head_object(options).meta
      end

    end

  end
end
