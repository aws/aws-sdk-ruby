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

module AWS
  class S3

    # Represents a single S3 bucket.  
    #
    # @example Creating a Bucket
    # 
    #   bucket = s3.buckets.create('mybucket')
    #
    # @example Getting an Existing Bucket
    #
    #   bucket = s3.buckets['mybucket']
    #
    class Bucket

      include Core::Model

      # @param [String] name
      # @param [Hash] options
      # @option options [String] :owner (nil) The owner id of this bucket.
      def initialize(name, options = {})
        # the S3 docs disagree with what the service allows,
        # so it's not safe to toss out invalid bucket names
        # S3::Client.validate_bucket_name!(name)
        @name = name
        @owner = options[:owner]
        super
      end

      # @return [String] The bucket name
      attr_reader :name

      # Returns the url for this bucket.
      # @return [String] url to the bucket
      def url
        if client.dns_compatible_bucket_name?(name)
          "http://#{name}.s3.amazonaws.com/"
        else
          "http://s3.amazonaws.com/#{name}/"
        end
      end

      # @return [Boolean] Returns true if the bucket has no objects
      #   (this includes versioned objects that are delete markers).
      def empty?
        versions.first ? false : true
      end

      # @return [String,nil] Returns the location constraint for a bucket 
      #   (if it has one), nil otherwise.
      def location_constraint
        client.get_bucket_location(:bucket_name => name).location_constraint
      end

      # Enables versioning on this bucket. 
      # @return [nil]
      def enable_versioning
        client.set_bucket_versioning(
          :bucket_name => @name,
          :state => :enabled)
        nil
      end

      # Suspends versioning on this bucket. 
      # @return [nil]
      def suspend_versioning
        client.set_bucket_versioning(
          :bucket_name => @name,
          :state => :suspended)
        nil
      end

      # @return [Boolean] returns +true+ if version is enabled on this bucket.
      def versioning_enabled?
        versioning_state == :enabled
      end
      alias_method :versioned?, :versioning_enabled?

      # Returns the versioning status for this bucket.  States include:
      #
      # * +:enabled+ - currently enabled
      # * +:suspended+ - currently suspended
      # * +:unversioned+ - versioning has never been enabled
      #
      # @return [Symbol] the versioning state
      def versioning_state
        client.get_bucket_versioning(:bucket_name => @name).status
      end

      # Deletes all objects from this bucket.
      # @return [nil]
      def clear!
        versions.each_batch do |versions|
          objects.delete(versions)
        end
      end

      # Deletes the current bucket.  An error will be raised if the
      # bucket is not empty.
      # @return [nil]
      def delete
        client.delete_bucket(:bucket_name => @name)
        nil
      end

      # Deletes all objects in a bucket and then deletes the bucket.
      # @return [nil]
      def delete!
        clear!
        delete
      end

      # @return [String] bucket owner id
      def owner
        @owner || client.list_buckets.owner
      end

      # @private
      def inspect
        "#<AWS::S3::Bucket:#{name}>"
      end

      # @return [Boolean] Returns true if the two buckets have the same name.
      def ==(other)
        other.kind_of?(Bucket) && other.name == name
      end

      # @return [Boolean] Returns true if the two buckets have the same name
      def eql?(other_bucket)
        self == other_bucket
      end

      # @note This method only indicates if there is a bucket in S3, not
      #   if you have permissions to work with the bucket or not.
      # @return [Boolean] Returns true if the bucket exists in S3.
      def exists?
        begin
          versioned? # makes a get bucket request without listing contents
                     # raises a client error if the bucket doesn't exist or
                     # if you don't have permission to get the bucket 
                     # versioning status.
          true
        rescue Errors::NoSuchBucket => e
          false # bucket does not exist
        rescue Errors::ClientError => e
          true # bucket exists
        end
      end

      # @return [ObjectCollection] Represents all objects(keys) in 
      #   this bucket.
      def objects
        ObjectCollection.new(self)
      end

      # @return [BucketVersionCollection] Represents all of the versioned
      #   objects stored in this bucket.
      def versions
        BucketVersionCollection.new(self)
      end

      # @return [MultipartUploadCollection] Represents all of the
      #   multipart uploads that are in progress for this bucket.
      def multipart_uploads
        MultipartUploadCollection.new(self)
      end

      # @private
      module ACLProxy

        attr_accessor :bucket

        def change
          yield(self)
          bucket.acl = self
        end

      end

      # Returns the bucket's access control list.  This will be an
      # instance of AccessControlList, plus an additional +change+
      # method:
      #
      #   bucket.acl.change do |acl|
      #     acl.grants.reject! do |g|
      #       g.grantee.canonical_user_id != bucket.owner.id
      #     end
      #   end
      #
      # @return [AccessControlList]
      def acl
        acl = client.get_bucket_acl(:bucket_name => name).acl
        acl.extend ACLProxy
        acl.bucket = self
        acl
      end

      # Sets the bucket's access control list.  +acl+ can be:
      #
      # * An XML policy as a string (which is passed to S3 uninterpreted)
      # * An AccessControlList object
      # * Any object that responds to +to_xml+
      # * Any Hash that is acceptable as an argument to
      #   AccessControlList#initialize.
      # 
      # @param [AccessControlList] acl
      # @return [nil]
      def acl=(acl)
        client.set_bucket_acl(:bucket_name => name, :acl => acl)
        nil
      end

      # @private
      module PolicyProxy

        attr_accessor :bucket

        def change
          yield(self)
          bucket.policy = self
        end

        def delete
          bucket.client.delete_bucket_policy(:bucket_name => bucket.name)
        end

      end

      # Returns the bucket policy.  This will be an instance of
      # Policy.  The returned policy will also have the methods of
      # PolicyProxy mixed in, so you can use it to change the
      # current policy or delete it, for example:
      #
      #  if policy = bucket.policy
      #    # add a statement
      #    policy.change do |p|
      #      p.allow(...)
      #    end
      #
      #    # delete the policy
      #    policy.delete
      #  end
      #
      # Note that changing the policy is not an atomic operation; it
      # fetches the current policy, yields it to the block, and then
      # sets it again.  Therefore, it's possible that you may
      # overwrite a concurrent update to the policy using this
      # method.
      #
      # @return [Policy,nil] Returns the bucket policy (if it has one),
      #   or it returns +nil+ otherwise.
      def policy
        policy = client.get_bucket_policy(:bucket_name => name).policy
        policy.extend(PolicyProxy)
        policy.bucket = self
        policy
      rescue Errors::NoSuchBucketPolicy => e
        nil
      end

      # Sets the bucket's policy.
      #
      # @param policy The new policy.  This can be a string (which
      #   is assumed to contain a valid policy expressed in JSON), a
      #   Policy object or any object that responds to +to_json+.
      # @see Policy
      # @return [nil]
      def policy=(policy)
        client.set_bucket_policy(:bucket_name => name, :policy => policy)
        nil
      end

      # The primary interface for editing the lifecycle configuration.
      # See {BucketLifecycleConfiguration} for more information.
      #
      # @example Adding rules to a bucket's lifecycle configuration
      #
      #   bucket.lifecycle_configuration.update do
      #     add_rule 'cache-1/', 30
      #     add_rule 'cache-2/', 30
      #   end
      #
      # @example Deleting the lifecycle configuration
      #
      #   bucket.lifecycle_configuration.clear
      #
      # @return [BucketLifecycleConfiguration]
      #
      def lifecycle_configuration
        @lifecycle_cfg ||= BucketLifecycleConfiguration.new(self)
      end

      # You can call this method if you prefer to build your own
      # lifecycle configuration.
      #
      #   bucket.lifecycle_configuration = <<-XML
      #     <LifecycleConfiguration>
      #       ...
      #     </LifecycleConfiguration>
      #   XML
      #
      # You can also use this method to copy a lifecycle configuration
      # from another bucket.
      #
      #   bucket.lifecycle_configuration = other_bucket.lifecycle_configuration
      #
      # If you call this method, passing nil, the lifecycle configuration 
      # for this bucket will be deleted.
      #
      # @param [String,Object] config You can pass an xml string or any 
      #   other object that responds to #to_xml (e.g. 
      #   BucketLifecycleConfiguration).
      #
      # @return [nil]
      #
      def lifecycle_configuration= config

        if config.nil?

          client_opts = {}
          client_opts[:bucket_name] = name
          client.delete_bucket_lifecycle_configuration(client_opts)

          @lifecycle_cfg = BucketLifecycleConfiguration.new(self, :empty => true)

        else
        
          xml = config.is_a?(String) ? config : config.to_xml

          client_opts = {}
          client_opts[:bucket_name] = name
          client_opts[:lifecycle_configuration] = xml
          client.set_bucket_lifecycle_configuration(client_opts)

          @lifecycle_cfg = BucketLifecycleConfiguration.new(self, :xml => xml)

        end

        nil

      end

      # Returns a tree that allows you to expose the bucket contents
      # like a directory structure.
      #
      # @see Tree
      # @param [Hash] options
      # @option options [String] :prefix (nil) Set prefix to choose where
      #   the top of the tree will be.  A value of +nil+ means
      #   that the tree will include all objects in the collection.
      #
      # @option options [String] :delimiter ('/') The string that separates
      #   each level of the tree.  This is usually a directory separator.
      #
      # @option options [Boolean] :append (true) If true, the delimiter is
      #   appended to the prefix when the prefix does not already end
      #   with the delimiter.
      #
      # @return [Tree]
      def as_tree options = {}
        objects.as_tree(options)
      end

      # Generates fields for a presigned POST to this object.  All
      # options are sent to the PresignedPost constructor.
      #
      # @see PresignedPost
      def presigned_post(options = {})
        PresignedPost.new(self, options)
      end

    end

  end
end
