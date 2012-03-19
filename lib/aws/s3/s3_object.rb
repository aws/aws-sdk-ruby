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

require 'uri'

module AWS
  class S3

    # Represents an object in S3 identified by a key.
    #
    #   object = bucket.objects["key-to-my-object"]
    #   object.key #=> 'key-to-my-object'
    #
    # See {ObjectCollection} for more information on finding objects.
    # 
    # == Writing and Reading S3Objects
    #
    #   obj = bucket.objects["my-text-object"]
    #
    #   obj.write("MY TEXT")
    #   obj.read
    #   #=> "MY TEXT"
    #
    #   obj.write(File.new("README.txt"))
    #   obj.read
    #   # should equal File.read("README.txt")
    #
    class S3Object

      include Core::Model
      include DataOptions

      # @param [Bucket] bucket The bucket this object belongs to.
      # @param [String] key The object's key.
      def initialize(bucket, key, opts = {})
        super
        @key = key
        @bucket = bucket
      end

      # @return [String] The objects unique key
      attr_reader :key

      # @return [Bucket] The bucket this object is in.
      attr_reader :bucket

      # @private
      def inspect
        "<#{self.class}:#{bucket.name}/#{key}>"
      end

      # @return [Boolean] Returns true if the other object belongs to the
      #   same bucket and has the same key.
      def ==(other)
        other.kind_of?(S3Object) and other.bucket == bucket and other.key == key
      end

      alias_method :eql?, :==

      def exists?
        head
      rescue Errors::NoSuchKey => e
        false
      else
        true
      end

      # Performs a HEAD request against this object and returns an object
      # with useful information about the object, including:
      #
      # * metadata (hash of user-supplied key-value pairs)
      # * content_length (integer, number of bytes)
      # * content_type (as sent to S3 when uploading the object)
      # * etag (typically the object's MD5)
      # * server_side_encryption (the algorithm used to encrypt the
      #   object on the server side, e.g. +:aes256+)
      # 
      # @param [Hash] options
      # @option options [String] :version_id Which version of this object
      #   to make a HEAD request against.
      # @return A head object response with metatadata, 
      #   content_length, content_type, etag and server_side_encryption.
      def head options = {}
        client.head_object(options.merge(
          :bucket_name => bucket.name, :key => key))
      end

      # Returns the object's ETag.  
      #
      # Generally the ETAG is the MD5 of the object.  If the object was 
      # uploaded using multipart upload then this is the MD5 all of the
      # upload-part-md5s.
      #
      # @return [String] Returns the object's ETag
      def etag
        head.etag
      end

      # Returns the object's last modified time.
      #
      # @return [Time] Returns the object's last modified time.
      def last_modified
        head.last_modified
      end

      # @return [Integer] Size of the object in bytes.
      def content_length
        head.content_length
      end

      # @note S3 does not compute content-type.  It reports the content-type
      #   as was reported during the file upload.
      # @return [String] Returns the content type as reported by S3, 
      #   defaults to an empty string when not provided during upload.
      def content_type
        head.content_type
      end

      # @return [DateTime,nil]
      def expiration_date
        head.expiration_date
      end

      # @return [String,nil]
      def expiration_rule_id
        head.expiration_date
      end

      # @return [Symbol, nil] Returns the algorithm used to encrypt
      #   the object on the server side, or +nil+ if SSE was not used
      #   when storing the object.
      def server_side_encryption
        head.server_side_encryption
      end

      # @return [true, false] Returns true if the object was stored
      #   using server side encryption.
      def server_side_encryption?
        !server_side_encryption.nil?
      end

      # Deletes the object from its S3 bucket.
      #
      # @param [Hash] options
      # @option [String] :version_id (nil) If present the specified version
      #   of this object will be deleted.  Only works for buckets that have
      #   had versioning enabled.
      # @return [nil]
      def delete options = {}
        options[:bucket_name] = bucket.name
        options[:key] = key
        client.delete_object(options)
        nil
      end

      # @option [String] :version_id (nil) If present the metadata object
      #   will be for the specified version.
      # @return [ObjectMetadata] Returns an instance of ObjectMetadata 
      #   representing the metadata for this object.
      def metadata options = {}
        options[:config] = config
        ObjectMetadata.new(self, options)
      end

      # Returns a colletion representing all the object versions 
      # for this object.
      #
      #   bucket.versioning_enabled? # => true
      #   version = bucket.objects["mykey"].versions.latest
      #
      # @return [ObjectVersionCollection] 
      def versions
        ObjectVersionCollection.new(self)
      end

      # Writes data to the object in S3.  This method will attempt
      # to intelligently choose between uploading in one request and
      # using {#multipart_upload}.
      #
      # Unless versioning is enabled, any data currently in S3 at {#key}
      # will be replaced.
      #
      # You can pass +:data+ or +:file+ as the first argument or as
      # options.  Example usage:
      #
      #   obj = s3.buckets.mybucket.objects.mykey
      #   obj.write("HELLO")
      #   obj.write(:data => "HELLO")
      #   obj.write(Pathname.new("myfile"))
      #   obj.write(:file => "myfile")
      #
      #   # writes zero-length data
      #   obj.write(:metadata => { "avg-rating" => "5 stars" })
      #
      # @overload write(options = {})
      # @overload write(data, options = {})
      #
      # @param data The data to upload (see the +:data+
      #   option).
      #
      # @param options [Hash] Additional upload options.
      #
      # @option options :data The data to upload.  Valid values include:
      #   * A string
      #
      #   * A Pathname object
      #
      #   * Any object responding to +read+ and +eof?+; the object
      #     must support the following access methods:
      #       read                     # all at once
      #       read(length) until eof?  # in chunks
      #
      #     If you specify data this way, you must also include the
      #     +:content_length+ option.
      #
      # @option options [String] :file Can be specified instead of +:data+;
      #   its value specifies the path of a file to upload.
      #
      # @option options [Boolean] :single_request If this option is
      #   true, the method will always generate exactly one request
      #   to S3 regardless of how much data is being uploaded.
      #
      # @option options [Integer] :content_length If provided, this
      #   option must match the total number of bytes written to S3
      #   during the operation.  This option is required if +:data+
      #   is an IO-like object without a +size+ method.
      #
      # @option options [Integer] :multipart_threshold Specifies the
      #   maximum size in bytes of a single-request upload.  If the
      #   data being uploaded is larger than this threshold, it will
      #   be uploaded using {#multipart_upload}.
      #
      # @option options [Integer] :multipart_min_part_size The
      #   minimum size of a part if a multi-part upload is used.  S3
      #   will reject non-final parts smaller than 5MB, and the
      #   default for this option is 5MB.
      #
      # @option options [Hash] :metadata A hash of metadata to be
      #   included with the object.  These will be sent to S3 as
      #   headers prefixed with +x-amz-meta+.  Each name, value pair
      #   must conform to US-ASCII.
      #
      # @option options [Symbol] :acl (private) A canned access
      #   control policy.  Valid values are:
      #
      #   * +:private+
      #   * +:public_read+
      #   * +:public_read_write+
      #   * +:authenticated_read+
      #   * +:bucket_owner_read+
      #   * +:bucket_owner_full_control+
      #
      # @option options [Symbol] :storage_class Controls whether
      #   Reduced Redundancy Storage is enabled for the object.
      #   Valid values are +:standard+ (the default) or
      #   +:reduced_redundancy+.
      #
      # @option options :cache_control [String] Can be used to specify
      #   caching behavior.  See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
      #
      # @option options :content_disposition [String] Specifies
      #   presentational information for the object.  See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec19.5.1
      #
      # @option options :content_encoding [String] Specifies what
      #   content encodings have been applied to the object and thus
      #   what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the +Content-Type+ header field.
      #   See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11
      #
      # @option options :content_type A standard MIME type
      #   describing the format of the object data.
      #
      # @option options [Symbol] :server_side_encryption (nil) If this
      #   option is set, the object will be stored using server side
      #   encryption.  The only valid value is +:aes256+, which
      #   specifies that the object should be stored using the AES
      #   encryption algorithm with 256 bit keys.  By default, this
      #   option uses the value of the +:s3_server_side_encryption+
      #   option in the current configuration; for more information,
      #   see {AWS.config}.
      #
      # @return [S3Object, ObjectVersion] If the bucket has versioning
      #   enabled, returns the {ObjectVersion} representing the
      #   version that was uploaded.  If versioning is disabled,
      #   returns self.
      def write(options_or_data = nil, options = nil)

        (data_options, put_options) =
          compute_put_options(options_or_data, options)

        add_configured_write_options(put_options)

        if use_multipart?(data_options, put_options)
          put_options.delete(:multipart_threshold)
          multipart_upload(put_options) do |upload|
            each_part(data_options, put_options) do |part|
              upload.add_part(part)
            end
          end
        else
          opts = { :bucket_name => bucket.name, :key => key }
          resp = client.put_object(opts.merge(put_options).merge(data_options))
          if resp.version_id
            ObjectVersion.new(self, resp.version_id)
          else
            self
          end
        end
      end

      # Performs a multipart upload.  Use this if you have specific
      # needs for how the upload is split into parts, or if you want
      # to have more control over how the failure of an individual
      # part upload is handled.  Otherwise, {#write} is much simpler
      # to use.
      #
      # @example Uploading an object in two parts
      #   bucket.objects.myobject.multipart_upload do |upload|
      #     upload.add_part("a" * 5242880)
      #     upload.add_part("b" * 2097152)
      #   end
      #
      # @example Uploading parts out of order
      #   bucket.objects.myobject.multipart_upload do |upload|
      #     upload.add_part("b" * 2097152, :part_number => 2)
      #     upload.add_part("a" * 5242880, :part_number => 1)
      #   end
      #
      # @example Aborting an upload after parts have been added
      #   bucket.objects.myobject.multipart_upload do |upload|
      #     upload.add_part("b" * 2097152, :part_number => 2)
      #     upload.abort
      #   end
      #
      # @example Starting an upload and completing it later by ID
      #   upload = bucket.objects.myobject.multipart_upload
      #   upload.add_part("a" * 5242880)
      #   upload.add_part("b" * 2097152)
      #   id = upload.id
      #
      #   # later or in a different process
      #   upload = bucket.objects.myobject.multipart_uploads[id]
      #   upload.complete(:remote_parts)
      #
      # @yieldparam [MultipartUpload] upload A handle to the upload.
      #   {MultipartUpload#close} is called in an +ensure+ clause so
      #   that the upload will always be either completed or
      #   aborted.
      #
      # @param [Hash] options Options for the upload.
      #
      # @option options [Hash] :metadata A hash of metadata to be
      #   included with the object.  These will be sent to S3 as
      #   headers prefixed with +x-amz-meta+.  Each name, value pair
      #   must conform to US-ASCII.
      #
      # @option options [Symbol] :acl (private) A canned access
      #   control policy.  Valid values are:
      #
      #   * +:private+
      #   * +:public_read+
      #   * +:public_read_write+
      #   * +:authenticated_read+
      #   * +:bucket_owner_read+
      #   * +:bucket_owner_full_control+
      #
      # @option options [Boolean] :reduced_redundancy (false) If true,
      #   Reduced Redundancy Storage will be enabled for the uploaded
      #   object.
      #
      # @option options :cache_control [String] Can be used to specify
      #   caching behavior.  See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
      #
      # @option options :content_disposition [String] Specifies
      #   presentational information for the object.  See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec19.5.1
      #
      # @option options :content_encoding [String] Specifies what
      #   content encodings have been applied to the object and thus
      #   what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the +Content-Type+ header field.
      #   See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.11
      #
      # @option options :content_type A standard MIME type
      #   describing the format of the object data.
      #
      # @option options [Symbol] :server_side_encryption (nil) If this
      #   option is set, the object will be stored using server side
      #   encryption.  The only valid value is +:aes256+, which
      #   specifies that the object should be stored using the AES
      #   encryption algorithm with 256 bit keys.  By default, this
      #   option uses the value of the +:s3_server_side_encryption+
      #   option in the current configuration; for more information,
      #   see {AWS.config}.
      #
      # @return [S3Object, ObjectVersion] If the bucket has versioning
      #   enabled, returns the {ObjectVersion} representing the
      #   version that was uploaded.  If versioning is disabled,
      #   returns self.
      def multipart_upload(options = {})

        options = options.dup
        add_configured_write_options(options)

        upload = multipart_uploads.create(options)

        if block_given?
          begin
            yield(upload)
            upload.close
          rescue
            upload.abort
          end
        else
          upload
        end
      end

      # @example Abort any in-progress uploads for the object:
      #
      #  object.multipart_uploads.each(&:abort)
      #
      # @return [ObjectUploadCollection] Returns an object representing the
      #   collection of uploads that are in progress for this object.
      def multipart_uploads
        ObjectUploadCollection.new(self)
      end

      # Moves an object to a new key. 
      #
      # This works by copying the object to a new key and then
      # deleting the old object.  This function returns the 
      # new object once this is done.
      #
      #   bucket = s3.buckets['old-bucket']
      #   old_obj = bucket.objects['old-key']
      #
      #   # renaming an object returns a new object
      #   new_obj = old_obj.move_to('new-key')
      #
      #   old_obj.key     #=> 'old-key'
      #   old_obj.exists? #=> false
      #   
      #   new_obj.key     #=> 'new-key'
      #   new_obj.exists? #=> true
      #
      # If you need to move an object to a different bucket, pass
      # +:bucket+ or +:bucket_name+.
      #
      #   obj = s3.buckets['old-bucket'].objects['old-key]
      #   obj.move_to('new-key', :bucket_name => 'new_bucket')
      # 
      # If the copy succeeds, but the then the delete fails, an error
      # will be raised.  
      #
      # @param [String] target The key to move this object to.
      #
      # @param [Hash] options
      #
      # @option (see #copy_to)
      #
      # @return [S3Object] Returns a new object with the new key.
      #
      def move_to target, options = {}
        copy = copy_to(target, options)
        delete
        copy
      end
      alias_method :rename_to, :move_to

      # Copies data from one S3 object to another.  
      #
      # S3 handles the copy so the clients does not need to fetch the data
      # and upload it again.  You can also change the storage class and 
      # metadata of the object when copying.
      #
      # @note This operation does not copy the ACL, storage class
      #   (standard vs. reduced redundancy) or server side encryption
      #   setting from the source object.  If you don't specify any of
      #   these options when copying, the object will have the default
      #   values as described below.
      #
      # @param [Mixed] source
      #
      # @param [Hash] options
      #
      # @option options [String] :bucket_name The name of the bucket
      #   the source object can be found in.  Defaults to the current
      #   object's bucket.
      #
      # @option options [Bucket] :bucket The bucket the source object
      #   can be found in.  Defaults to the current object's bucket.
      #
      # @option options [Hash] :metadata A hash of metadata to save
      #   with the copied object.  Each name, value pair must conform
      #   to US-ASCII.  When blank, the sources metadata is copied.
      #
      # @option options [String] :content_type The content type of
      #   the copied object.  Defaults to the source object's content
      #   type.
      #
      # @option options [Boolean] :reduced_redundancy (false) If true the
      #   object is stored with reduced redundancy in S3 for a lower cost.
      #
      # @option options [String] :version_id (nil) Causes the copy to
      #   read a specific version of the source object.
      #
      # @option options [Symbol] :acl (private) A canned access
      #   control policy.  Valid values are:
      #
      #   * +:private+
      #   * +:public_read+
      #   * +:public_read_write+
      #   * +:authenticated_read+
      #   * +:bucket_owner_read+
      #   * +:bucket_owner_full_control+
      #
      # @option options [Symbol] :server_side_encryption (nil) If this
      #   option is set, the object will be stored using server side
      #   encryption.  The only valid value is +:aes256+, which
      #   specifies that the object should be stored using the AES
      #   encryption algorithm with 256 bit keys.  By default, this
      #   option uses the value of the +:s3_server_side_encryption+
      #   option in the current configuration; for more information,
      #   see {AWS.config}.
      #
      # @option options :cache_control [String] Can be used to specify
      #   caching behavior.  See
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
      #
      # @return [nil]
      def copy_from source, options = {}

        copy_opts = { :bucket_name => bucket.name, :key => key }

        copy_opts[:copy_source] = case source
        when S3Object 
          "#{source.bucket.name}/#{source.key}"
        when ObjectVersion 
          copy_opts[:version_id] = source.version_id
          "#{source.object.bucket.name}/#{source.object.key}"
        else
          case 
          when options[:bucket]      then "#{options[:bucket].name}/#{source}"
          when options[:bucket_name] then "#{options[:bucket_name]}/#{source}"
          else "#{self.bucket.name}/#{source}"
          end
        end

        copy_opts[:metadata_directive] = 'COPY'

        if options[:metadata]
          copy_opts[:metadata] = options[:metadata]
          copy_opts[:metadata_directive] = 'REPLACE'
        end

        if options[:content_type]
          copy_opts[:content_type] = options[:content_type]
          copy_opts[:metadata_directive] = "REPLACE"
        end

        copy_opts[:acl] = options[:acl] if options[:acl]
        copy_opts[:version_id] = options[:version_id] if options[:version_id]
        copy_opts[:server_side_encryption] =
          options[:server_side_encryption] if
          options.key?(:server_side_encryption)
        copy_opts[:cache_control] = options[:cache_control] if 
          options[:cache_control]
        add_configured_write_options(copy_opts)

        if options[:reduced_redundancy]
          copy_opts[:storage_class] = 'REDUCED_REDUNDANCY'
        else
          copy_opts[:storage_class] = 'STANDARD'
        end

        client.copy_object(copy_opts)

        nil

      end

      # Copies data from the current object to another object in S3.
      #
      # S3 handles the copy so the client does not need to fetch the data
      # and upload it again.  You can also change the storage class and 
      # metadata of the object when copying.
      #
      # @note This operation does not copy the ACL, storage class
      #   (standard vs. reduced redundancy) or server side encryption
      #   setting from this object to the new object.  If you don't
      #   specify any of these options when copying, the new object
      #   will have the default values as described below.
      #
      # @param [S3Object,String] target An S3Object, or a string key of
      #   and object to copy to.
      #
      # @param [Hash] options
      #
      # @option options [String] :bucket_name The name of the bucket
      #   the object should be copied into.  Defaults to the current object's
      #   bucket.
      #
      # @option options [Bucket] :bucket The bucket the target object
      #   should be copied into. Defaults to the current object's bucket.
      #
      # @option options [Hash] :metadata A hash of metadata to save
      #   with the copied object.  Each name, value pair must conform
      #   to US-ASCII.  When blank, the sources metadata is copied.
      #
      # @option options [Boolean] :reduced_redundancy (false) If true
      #   the object is stored with reduced redundancy in S3 for a
      #   lower cost.
      #
      # @option options [Symbol] :acl (private) A canned access
      #   control policy.  Valid values are:
      #
      #   * +:private+
      #   * +:public_read+
      #   * +:public_read_write+
      #   * +:authenticated_read+
      #   * +:bucket_owner_read+
      #   * +:bucket_owner_full_control+
      #
      # @option options [Symbol] :server_side_encryption (nil) If this
      #   option is set, the object will be stored using server side
      #   encryption.  The only valid value is +:aes256+, which
      #   specifies that the object should be stored using the AES
      #   encryption algorithm with 256 bit keys.  By default, this
      #   option uses the value of the +:s3_server_side_encryption+
      #   option in the current configuration; for more information,
      #   see {AWS.config}.
      #
      # @return [S3Object] Returns the copy (target) object.
      #
      def copy_to target, options = {}

        unless target.is_a?(S3Object)

          bucket = case
          when options[:bucket] then options[:bucket]
          when options[:bucket_name] 
            Bucket.new(options[:bucket_name], :config => config)
          else self.bucket
          end

          target = S3Object.new(bucket, target)
        end

        copy_opts = options.dup
        copy_opts.delete(:bucket)
        copy_opts.delete(:bucket_name)

        target.copy_from(self, copy_opts)
        target
        
      end

      # Fetches the object data from S3.
      #
      # @example Reading data as a string
      #   object.write('some data')
      #   object.read
      #   #=> 'some data'
      #
      # @param [Hash] options
      # @option options [String] :version_id Reads data from a
      #   specific version of this object.
      #
      # @option options [Time] :if_unmodified_since If specified, the
      #   method will raise
      #   <tt>AWS::S3::Errors::PreconditionFailed</tt> unless the
      #   object has not been modified since the given time.
      #
      # @option options [Time] :if_modified_since If specified, the
      #   method will raise <tt>AWS::S3::Errors::NotModified</tt> if
      #   the object has not been modified since the given time.
      #
      # @option options [String] :if_match If specified, the method
      #   will raise <tt>AWS::S3::Errors::PreconditionFailed</tt>
      #   unless the object ETag matches the provided value.
      #
      # @option options [String] :if_none_match If specified, the
      #   method will raise <tt>AWS::S3::Errors::NotModified</tt> if
      #   the object ETag matches the provided value.
      #
      # @option options [Range] :range A byte range to read data from
      #
      def read(options = {}, &blk)
        options[:bucket_name] = bucket.name
        options[:key] = key
        client.get_object(options).data
      end

      # @private
      module ACLProxy

        attr_accessor :object

        def change
          yield(self)
          object.acl = self
        end

      end

      # Returns the object's access control list.  This will be an
      # instance of AccessControlList, plus an additional +change+
      # method:
      #
      #  object.acl.change do |acl|
      #    # remove any grants to someone other than the bucket owner
      #    owner_id = object.bucket.owner.id
      #    acl.grants.reject! do |g|
      #      g.grantee.canonical_user_id != owner_id
      #    end
      #  end
      #
      # Note that changing the ACL is not an atomic operation; it
      # fetches the current ACL, yields it to the block, and then
      # sets it again.  Therefore, it's possible that you may
      # overwrite a concurrent update to the ACL using this
      # method.
      #
      # @return [AccessControlList]
      #
      def acl
        acl = client.get_object_acl(
          :bucket_name => bucket.name,
          :key => key
        ).acl
        acl.extend ACLProxy
        acl.object = self
        acl
      end

      # Sets the object's access control list.  +acl+ can be:
      # * An XML policy as a  string (which is passed to S3 uninterpreted)
      # * An AccessControlList object
      # * Any object that responds to +to_xml+
      # * Any Hash that is acceptable as an argument to
      #   AccessControlList#initialize.
      #
      # @param (see Bucket#acl=)
      # @return [nil]
      def acl=(acl)
        client.set_object_acl(
          :bucket_name => bucket.name,
          :key => key,
          :acl => acl)
        nil
      end

      # @private
      REQUEST_PARAMETERS = Request.query_parameters.map do |p|
        p.tr("-","_").to_sym
      end

      # Generates a presigned URL for an operation on this object.
      # This URL can be used by a regular HTTP client to perform the
      # desired operation without credentials and without changing
      # the permissions of the object.
      #
      # @example Generate a url to read an object
      #   bucket.objects.myobject.url_for(:read)
      #
      # @example Generate a url to delete an object
      #   bucket.objects.myobject.url_for(:delete)
      #
      # @example Override response headers for reading an object
      #   object = bucket.objects.myobject
      #   url = object.url_for(:read, :response_content_type => "application/json")
      #
      # @example Generate a url that expires in 10 minutes
      #   bucket.objects.myobject.url_for(:read, :expires => 10*60)
      #
      # @param [Symbol, String] method The HTTP verb or object
      #   method for which the returned URL will be valid.  Valid
      #   values:
      #
      #   * +:get+ or +:read+
      #   * +:put+ or +:write+
      #   * +:delete+
      #
      # @param [Hash] options Additional options for generating the URL.
      #
      # @option options :expires Sets the expiration time of the
      #   URL; after this time S3 will return an error if the URL is
      #   used.  This can be an integer (to specify the number of
      #   seconds after the current time), a string (which is parsed
      #   as a date using Time#parse), a Time, or a DateTime object.
      #   This option defaults to one hour after the current time.
      #
      # @option options [Boolean] :secure (true) Whether to generate a
      #   secure (HTTPS) URL or a plain HTTP url.
      #
      # @option options [String] :response_content_type Sets the
      #   Content-Type header of the response when performing an
      #   HTTP GET on the returned URL.
      #
      # @option options [String] :response_content_language Sets the
      #   Content-Language header of the response when performing an
      #   HTTP GET on the returned URL.
      #
      # @option options [String] :response_expires Sets the Expires
      #   header of the response when performing an HTTP GET on the
      #   returned URL.
      #
      # @option options [String] :response_cache_control Sets the
      #   Cache-Control header of the response when performing an
      #   HTTP GET on the returned URL.
      #
      # @option options [String] :response_content_disposition Sets
      #   the Content-Disposition header of the response when
      #   performing an HTTP GET on the returned URL.
      #
      # @option options [String] :response_content_encoding Sets the
      #   Content-Encoding header of the response when performing an
      #   HTTP GET on the returned URL.
      # @return [URI::HTTP, URI::HTTPS]
      def url_for(method, options = {})
        req = request_for_signing(options)

        method = http_method(method)
        expires = expiration_timestamp(options[:expires])
        req.add_param("AWSAccessKeyId", config.signer.access_key_id)
        req.add_param("versionId", options[:version_id]) if options[:version_id]
        req.add_param("Signature", signature(method, expires, req))
        req.add_param("Expires", expires)
        req.add_param("x-amz-security-token", config.signer.session_token) if
          config.signer.session_token

        build_uri(options[:secure] != false, req)
      end

      # Generates a public (not authenticated) URL for the object.
      #
      # @param [Hash] options Options for generating the URL.
      #
      # @option options [Boolean] :secure Whether to generate a
      #   secure (HTTPS) URL or a plain HTTP url.
      #
      # @return [URI::HTTP, URI::HTTPS]
      #
      def public_url(options = {})
        req = request_for_signing(options)
        build_uri(options[:secure] != false, req)
      end

      # Generates fields for a presigned POST to this object.  This
      # method adds a constraint that the key must match the key of
      # this object.  All options are sent to the PresignedPost
      # constructor.
      #
      # @see PresignedPost
      # @return [PresignedPost]
      def presigned_post(options = {})
        PresignedPost.new(bucket, options.merge(:key => key))
      end

      # @note Changing the storage class of an object incurs a COPY
      #   operation.
      #
      # Changes the storage class of the object to enable or disable
      # Reduced Redundancy Storage (RRS).
      #
      # @param [true,false] value If this is true, the object will be
      #   copied in place and stored with reduced redundancy at a
      #   lower cost.  Otherwise, the object will be copied and stored
      #   with the standard storage class.
      #
      # @return [true,false] The +value+ parameter.
      def reduced_redundancy= value
        copy_from(key, :reduced_redundancy => value)
        value
      end

      # @private
      private
      def build_uri(secure, request)
        uri_class = secure ? URI::HTTPS : URI::HTTP
        uri_class.build(:host => request.host,
                        :path => request.path,
                        :query => request.querystring)
      end

      # @private
      private
      def signature(method, expires, request)

        parts = []
        parts << method
        parts << ""
        parts << ""
        parts << expires
        parts << "x-amz-security-token:#{config.signer.session_token}" if
          config.signer.session_token
        parts << request.canonicalized_resource

        string_to_sign = parts.join("\n")

        config.signer.sign(string_to_sign, "sha1")

      end

      # @private
      private
      def expiration_timestamp(input)
        case input
        when Time
          expires = input.to_i
        when DateTime
          expires = Time.parse(input.to_s).to_i
        when Integer
          expires = (Time.now + input).to_i
        when String
          expires = Time.parse(input).to_i
        else
          expires = (Time.now + 60*60).to_i
        end
      end

      # @private
      private
      def http_method(input)
        symbol = case input
                 when :read then :get
                 when :write then :put
                 else
                   input
                 end
        symbol.to_s.upcase
      end

      # @private
      private
      def request_for_signing(options)
        req = Request.new

        req.bucket = bucket.name
        req.key = key
        req.host = config.s3_endpoint

        REQUEST_PARAMETERS.each do |param|
          req.add_param(param.to_s.tr("_","-"),
                        options[param]) if options.key?(param)
        end

        req
      end

      # @private
      private
      def compute_put_options(options_or_data, options)
        put_opts = {}

        if options

          raise ArgumentError.new("Object data passed twice (argument and file path)") if
            options[:file]

          raise ArgumentError.new("Object data passed twice (argument and option)") if
            options[:data]

          [{ :data => options_or_data }, options]
        elsif options_or_data.kind_of?(Hash)
          if file = options_or_data[:file]
            data_options = { :file => file }
          else
            data_options = { :data => options_or_data[:data] || "" }
          end

          [data_options, options_or_data]
        else
          [{ :data => options_or_data || "" }, {}]
        end
      end

      private
      def add_configured_write_options(options)
        options[:server_side_encryption] =
          config.s3_server_side_encryption unless
          options.key?(:server_side_encryption)
        options.delete(:server_side_encryption) if
          options[:server_side_encryption] == nil
      end

      # @private
      private
      def use_multipart?(data_options, options)
        threshold = options[:multipart_threshold] ||
          config.s3_multipart_threshold

        !options[:single_request] and
          size = content_length_from(data_options.merge(options)) and
          size > threshold
      end

      # @private
      private
      def each_part(data_options, options)
        total_size = content_length_from(data_options.merge(options))
        part_size = optimal_part_size(total_size, options)
        stream = data_stream_from(data_options.merge(options))
        while !stream.eof?
          yield(stream.read(part_size))
        end
      end

      # @private
      private
      def optimal_part_size(total_size, options)
        maximum_parts = config.s3_multipart_max_parts
        min_size = options[:multipart_min_part_size] ||
          config.s3_multipart_min_part_size

        [(total_size.to_f / maximum_parts.to_f).ceil,
         min_size].max.to_i
      end

    end

  end
end
