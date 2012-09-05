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

require 'rexml/document'
require 'pathname'
require 'stringio'
require 'json'
require 'digest/md5'

module AWS
  class S3

    # Client class for Amazon Simple Storage Service (S3).
    class Client < Core::Client

      API_VERSION = '2006-03-01'

      XMLNS = "http://s3.amazonaws.com/doc/#{API_VERSION}/"

      AWS.register_autoloads(self) do
        autoload :XML, 'xml'
      end

      # @private
      EMPTY_BODY_ERRORS = {
        304 => Errors::NotModified,
        403 => Errors::Forbidden,
        404 => Errors::NoSuchKey,
      }

      # @private
      CACHEABLE_REQUESTS = Set[]

      include DataOptions
      include Core::UriEscape

      protected

      def self.bucket_method(method_name, verb, *args, &block)

        method_options = (args.pop if args.last.kind_of?(Hash)) || {}
        xml_grammar = (args.pop if args.last.respond_to?(:rules))
        verb = verb.to_s.upcase
        subresource = args.first

        add_client_request_method(method_name) do

          configure_request do |req, options|

            require_bucket_name!(options[:bucket_name])

            req.http_method = verb
            req.bucket = options[:bucket_name]
            req.add_param(subresource) if subresource

            if header_options = method_options[:header_options]
              header_options.each do |(opt, header)|
                if value = options[opt]
                  # for backwards compatability we translate canned acls
                  # header values from symbols to strings (e.g.
                  # :public_read translates to 'public-read')
                  value = (opt == :acl ? value.to_s.tr('_', '-') : value)
                  req.headers[header] = value
                end
              end
            end

          end

          instance_eval(&block) if block

          if xml_grammar

            parser = Core::XML::Parser.new(xml_grammar.rules)

            process_response do |resp|
              resp.data = parser.parse(resp.http_response.body)
              super(resp)
            end

            simulate_response do |resp|
              resp.data = parser.simulate
              super(resp)
            end

          end

        end
      end

      def self.object_method(method_name, verb, *args, &block)
        bucket_method(method_name, verb, *args) do
          configure_request do |req, options|
            validate_key!(options[:key])
            super(req, options)
            req.key = options[:key]
          end

          instance_eval(&block) if block
        end
      end

      public

      # Creates a bucket.
      # @overload create_bucket(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      bucket_method(:create_bucket, :put, :header_options => {
        :acl => 'x-amz-acl',
        :grant_read => 'x-amz-grant-read',
        :grant_write => 'x-amz-grant-write',
        :grant_read_acp => 'x-amz-grant-read-acp',
        :grant_write_acp => 'x-amz-grant-write-acp',
        :grant_full_control => 'x-amz-grant-full-control',
      }) do

        configure_request do |req, options|
          validate_bucket_name!(options[:bucket_name])
          if location = options[:location_constraint]
            xmlns = "http://s3.amazonaws.com/doc/#{API_VERSION}/"
            req.body = <<-XML
              <CreateBucketConfiguration xmlns="#{xmlns}">
                <LocationConstraint>#{location}</LocationConstraint>
              </CreateBucketConfiguration>
            XML
          end
          super(req, options)
        end

      end
      alias_method :put_bucket, :create_bucket

      # Deletes an empty bucket.
      # @overload delete_bucket(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:delete_bucket, :delete)

      # @overload set_bucket_lifecycle_configuration(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :lifecycle_configuration
      #   @return [Core::Response]
      bucket_method(:set_bucket_lifecycle_configuration, :put) do

        configure_request do |req, options|
          xml = options[:lifecycle_configuration]
          md5 = Base64.encode64(Digest::MD5.digest(xml)).strip
          req.add_param('lifecycle')
          req.body = xml
          req.headers['content-md5'] = md5
          super(req, options)
        end

      end

      # @overload get_bucket_lifecycle_configuration(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:get_bucket_lifecycle_configuration, :get) do

        configure_request do |req, options|
          req.add_param('lifecycle')
          super(req, options)
        end

        process_response do |resp|
          xml = resp.http_response.body
          resp.data = XML::GetBucketLifecycleConfiguration.parse(xml)
        end

      end

      # @overload delete_bucket_lifecycle_configuration(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:delete_bucket_lifecycle_configuration, :delete) do

        configure_request do |req, options|
          req.add_param('lifecycle')
          super(req, options)
        end

      end

      # @overload list_buckets(options = {})
      #   @param [Hash] options
      #   @return [Core::Response]
      add_client_request_method(:list_buckets) do

        configure_request do |req, options|
          req.http_method = "GET"
        end

        process_response do |resp|
          resp.data = XML::ListBuckets.parse(resp.http_response.body)
        end

        simulate_response do |resp|
          resp.data = Core::XML::Parser.new(XML::ListBuckets.rules).simulate
        end

      end

      # Sets the access policy for a bucket.
      # @overload set_bucket_policy(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :policy This can be a String
      #     or any object that responds to +#to_json+.
      #   @return [Core::Response]
      bucket_method(:set_bucket_policy, :put, 'policy') do

        configure_request do |req, options|
          require_policy!(options[:policy])
          super(req, options)
          policy = options[:policy]
          policy = policy.to_json unless policy.respond_to?(:to_str)
          req.body = policy
        end

      end

      # Gets the access policy for a bucket.
      # @overload get_bucket_policy(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:get_bucket_policy, :get, 'policy') do

        process_response do |resp|
          resp.data[:policy] = resp.http_response.body
        end

      end

      # Deletes the access policy for a bucket.
      # @overload delete_bucket_policy(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:delete_bucket_policy, :delete, 'policy')

      # @overload set_bucket_versioning(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :state
      #   @return [Core::Response]
      bucket_method(:set_bucket_versioning, :put, 'versioning') do

        configure_request do |req, options|
          state = options[:state].to_s.downcase.capitalize
          unless state =~ /^(Enabled|Suspended)$/
            raise ArgumentError, "invalid versioning state `#{state}`"
          end
          super(req, options)
          req.body = <<-XML.strip
            <VersioningConfiguration xmlns="#{XMLNS}">
              <Status>#{state}</Status>
            </VersioningConfiguration>
          XML
        end

      end

      # Gets the bucket's location constraint.
      # @overload get_bucket_location(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:get_bucket_location, :get, 'location') do

        process_response do |response|
          regex = />(.*)<\/LocationConstraint>/
          matches = response.http_response.body.to_s.match(regex)
          response.data[:location_constraint] = matches ? matches[1] : nil
        end

      end

      # @overload get_bucket_versioning(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:get_bucket_versioning, :get, 'versioning',
        XML::GetBucketVersioning)

      # @overload list_object_versions(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [String] :prefix
      #   @option options [String] :delimiter
      #   @option options [String] :max_keys
      #   @option options [String] :key_marker
      #   @option options [String] :version_id_marker
      #   @return [Core::Response]
      bucket_method(:list_object_versions, :get, 'versions',
        XML::ListObjectVersions) do

        configure_request do |req, options|
          super(req, options)
          params = %w(delimiter key_marker max_keys prefix version_id_marker)
          params.each do |param|
            if options[param.to_sym]
              req.add_param(param.gsub(/_/, '-'), options[param.to_sym])
            end
          end
        end

      end

      # Sets the access control list for a bucket.  You must specify an ACL
      # via one of the following methods:
      #
      # * as a canned ACL (via +:acl+)
      # * as a list of grants (via the +:grant_*+ options)
      # * as an access control policy document (via +:access_control_policy+)
      #
      # @example Using a canned acl
      #   s3_client.put_bucket_acl(
      #     :bucket_name => 'bucket-name',
      #     :acl => 'public-read')
      #
      # @example Using grants
      #   s3_client.put_bucket_acl(
      #     :bucket_name => 'bucket-name',
      #     :grant_read => 'uri="http://acs.amazonaws.com/groups/global/AllUsers"',
      #     :grant_full_control => 'emailAddress="xyz@amazon.com", id="8a9...fa7"')
      #
      # @example Using an access control policy document
      #   policy_xml = <<-XML
      #     <AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
      #       <Owner>
      #         <ID>852b113e7a2f25102679df27bb0ae12b3f85be6BucketOwnerCanonicalUserID</ID>
      #         <DisplayName>OwnerDisplayName</DisplayName>
      #       </Owner>
      #       <AccessControlList>
      #         <Grant>
      #           <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser">
      #             <ID>BucketOwnerCanonicalUserID</ID>
      #             <DisplayName>OwnerDisplayName</DisplayName>
      #           </Grantee>
      #           <Permission>FULL_CONTROL</Permission>
      #         </Grant>
      #         <Grant>
      #           <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group">
      #             <URI xmlns="">http://acs.amazonaws.com/groups/global/AllUsers</URI>
      #           </Grantee>
      #           <Permission xmlns="">READ</Permission>
      #         </Grant>
      #       </AccessControlList>
      #     </AccessControlPolicy>
      #
      #   XML
      #   s3_client.put_bucket_acl(
      #     :bucket_name => 'bucket-name',
      #     :access_control_policy => policy_xml)
      #
      # @overload put_bucket_acl(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [String] :access_control_policy An access control
      #     policy description as a string of XML.  See the S3 API
      #     documentation for a description.
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      bucket_method(:put_bucket_acl, :put, 'acl', :header_options => {
        :acl => 'x-amz-acl',
        :grant_read => 'x-amz-grant-read',
        :grant_write => 'x-amz-grant-write',
        :grant_read_acp => 'x-amz-grant-read-acp',
        :grant_write_acp => 'x-amz-grant-write-acp',
        :grant_full_control => 'x-amz-grant-full-control',
      }) do

        configure_request do |req, options|
          move_access_control_policy(options)
          require_acl!(options)
          super(req, options)
          req.body = options[:access_control_policy] if
             options[:access_control_policy]
        end

      end
      alias_method :set_bucket_acl, :put_bucket_acl

      # Gets the access control list for a bucket.
      # @overload get_bucket_acl(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @return [Core::Response]
      bucket_method(:get_bucket_acl, :get, 'acl', XML::GetBucketAcl)

      # Sets the access control list for an object.  You must specify an ACL
      # via one of the following methods:
      #
      # * as a canned ACL (via +:acl+)
      # * as a list of grants (via the +:grant_*+ options)
      # * as an access control policy document (via +:access_control_policy+)
      #
      # @example Using a canned acl
      #   s3_client.put_object_acl(
      #     :bucket_name => 'bucket-name',
      #     :key => 'object-key',
      #     :acl => 'public-read')
      #
      # @example Using grants
      #   s3_client.put_bucket_acl(
      #     :bucket_name => 'bucket-name',
      #     :key => 'object-key',
      #     :grant_read => 'uri="http://acs.amazonaws.com/groups/global/AllUsers"',
      #     :grant_full_control => 'emailAddress="xyz@amazon.com", id="8a9...fa7"')
      #
      # @example Using an access control policy document
      #   policy_xml = <<-XML
      #     <AccessControlPolicy xmlns="http://s3.amazonaws.com/doc/2006-03-01/">
      #       <Owner>
      #         <ID>852b113e7a2f25102679df27bb0ae12b3f85be6BucketOwnerCanonicalUserID</ID>
      #         <DisplayName>OwnerDisplayName</DisplayName>
      #       </Owner>
      #       <AccessControlList>
      #         <Grant>
      #           <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="CanonicalUser">
      #             <ID>BucketOwnerCanonicalUserID</ID>
      #             <DisplayName>OwnerDisplayName</DisplayName>
      #           </Grantee>
      #           <Permission>FULL_CONTROL</Permission>
      #         </Grant>
      #         <Grant>
      #           <Grantee xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:type="Group">
      #             <URI xmlns="">http://acs.amazonaws.com/groups/global/AllUsers</URI>
      #           </Grantee>
      #           <Permission xmlns="">READ</Permission>
      #         </Grant>
      #       </AccessControlList>
      #     </AccessControlPolicy>
      #
      #   XML
      #   s3_client.put_bucket_acl(
      #     :bucket_name => 'bucket-name',
      #     :key => 'object-key',
      #     :access_control_policy => policy_xml)
      #
      # @overload put_object_acl(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [String] :access_control_policy An access control
      #     policy description as a string of XML.  See the S3 API
      #     documentation for a description.
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      object_method(:put_object_acl, :put, 'acl', :header_options => {
        :acl => 'x-amz-acl',
        :grant_read => 'x-amz-grant-read',
        :grant_write => 'x-amz-grant-write',
        :grant_read_acp => 'x-amz-grant-read-acp',
        :grant_write_acp => 'x-amz-grant-write-acp',
        :grant_full_control => 'x-amz-grant-full-control',
      }) do

        configure_request do |req, options|
          move_access_control_policy(options)
          require_acl!(options)
          super(req, options)
          req.body = options[:access_control_policy] if
             options[:access_control_policy]
        end

      end
      alias_method :set_object_acl, :put_object_acl

      # Gets the access control list for an object.
      # @overload get_object_acl(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @return [Core::Response]
      object_method(:get_object_acl, :get, 'acl', XML::GetBucketAcl)

      # Puts data into an object, replacing the current contents.
      #
      #   s3_client.put_object({
      #     :bucket_name => 'bucket-name',
      #     :key => 'readme.txt',
      #     :data => 'This is the readme for ...',
      #   })
      #
      # == Block Form
      #
      # In block form, this method yields a stream to the block that
      # accepts data chunks.  For example:
      #
      #   s3_client.put_object(
      #     :bucket_name => 'mybucket',
      #     :key => 'some/key'
      #     :content_length => File.size('myfile')
      #   ) do |buffer|
      #
      #     File.open('myfile') do |io|
      #       buffer.write(io.read(length)) until io.eof?
      #     end
      #
      #   end
      #
      # This form is useful if you need finer control over how
      # potentially large amounts of data are read from another
      # source before being sent to S3; for example, if you are
      # using a non-blocking IO model and reading from a large file
      # on disk or from another network stream.  Some HTTP handlers
      # do not support streaming request bodies, so if you plan to
      # upload large objects using this interface you should make
      # sure the HTTP handler you configure for the client meets
      # your needs.
      #
      # @overload put_object(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [required,String,Pathname,File,IO] :data
      #     The data to upload.  This can be provided as a string,
      #     a Pathname object, or any object that responds to
      #     +#read+ and +#eof?+ (e.g. IO, File, Tempfile, StringIO, etc).
      #   @option options [Integer] :content_length
      #     Required if you are using block form to write data or if it is
      #     not possible to determine the size of +:data+.  A best effort
      #     is made to determine the content length of strings, files,
      #     tempfiles, io objects, and any object that responds
      #     to +#length+ or +#size+.
      #   @option options [Hash] :metadata
      #     A hash of metadata to be included with the
      #     object.  These will be sent to S3 as headers prefixed with
      #     +x-amz-meta+.
      #   @option options [Symbol] :acl (:private) A canned access
      #     control policy.  Accepted values include:
      #     * +:private+
      #     * +:public_read+
      #     * ...
      #   @option options [String] :storage_class+ ('STANDARD')
      #     Controls whether Reduced Redundancy Storage is enabled for
      #     the object.  Valid values are 'STANDARD' and
      #     'REDUCED_REDUNDANCY'.
      #   @option options [Symbol,String] :server_side_encryption (nil) The
      #     algorithm used to encrypt the object on the server side
      #     (e.g. :aes256).
      #   object on the server side, e.g. +:aes256+)
      #   @option options [String] :cache_control
      #     Can be used to specify caching behavior.
      #   @option options [String] :content_disposition
      #     Specifies presentational information.
      #   @option options [String] :content_encoding
      #     Specifies the content encoding.
      #   @option options [String] :content_md5
      #     The base64 encoded content md5 of the +:data+.
      #   @option options [String] :content_type
      #     Specifies the content type.
      #   @option options [String] :expires
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      #
      object_method(:put_object, :put, :header_options => {
        :acl => 'x-amz-acl',
        :grant_read => 'x-amz-grant-read',
        :grant_write => 'x-amz-grant-write',
        :grant_read_acp => 'x-amz-grant-read-acp',
        :grant_write_acp => 'x-amz-grant-write-acp',
        :grant_full_control => 'x-amz-grant-full-control',
        :content_md5 => 'Content-MD5',
        :cache_control => 'Cache-Control',
        :content_disposition => 'Content-Disposition',
        :content_encoding => 'Content-Encoding',
        :content_type => 'Content-Type',
        :expires => 'Expires'
      }) do

        configure_request do |request, options|

          options = compute_write_options(options)
          set_body_stream_and_content_length(request, options)

          request.metadata = options[:metadata]
          request.storage_class = options[:storage_class]
          request.server_side_encryption = options[:server_side_encryption]

          super(request, options)

        end

        process_response do |response|

          response.data[:version_id] =
            response.http_response.header('x-amz-version-id')

          response.data[:etag] = response.http_response.header('ETag')

          if time = response.http_response.header('Last-Modified')
            response.data[:last_modified] = Time.parse(time)
          end

          add_sse_to_response(response)

        end

        simulate_response do |response|
          response.data[:etag] = 'abc123'
          response.data[:version_id] = nil
        end

      end

      # Gets the data for a key.
      # @overload get_object(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [Time] :if_modified_since If specified, the
      #     response will contain an additional +:modified+ value that
      #     returns true if the object was modified after the given
      #     time.  If +:modified+ is false, then the response
      #     +:data+ value will be +nil+.
      #   @option options [Time] :if_unmodified_since If specified, the
      #     response will contain an additional +:unmodified+ value
      #     that is true if the object was not modified after the
      #     given time.  If +:unmodified+ returns false, the +:data+
      #     value will be +nil+.
      #   @option options [String] :if_match If specified, the response
      #     will contain an additional +:matches+ value that is true
      #     if the object ETag matches the value for this option.  If
      #     +:matches+ is false, the +:data+ value of the
      #     response will be +nil+.
      #   @option options [String] :if_none_match If specified, the
      #     response will contain an additional +:matches+ value that
      #     is true if and only if the object ETag matches the value for
      #     this option.  If +:matches+ is true, the +:data+ value
      #     of the response will be +nil+.
      #   @option options [Range<Integer>] :range A byte range of data to request.
      #   @return [Core::Response]
      #
      object_method(:get_object, :get,
                    :header_options => {
                      :if_modified_since => "If-Modified-Since",
                      :if_unmodified_since => "If-Unmodified-Since",
                      :if_match => "If-Match",
                      :if_none_match => "If-None-Match"
                    }) do
        configure_request do |req, options|

          super(req, options)

          if options[:version_id]
            req.add_param('versionId', options[:version_id])
          end

          ["If-Modified-Since",
           "If-Unmodified-Since"].each do |date_header|
            case value = req.headers[date_header]
            when DateTime
              req.headers[date_header] = Time.parse(value.to_s).rfc2822
            when Time
              req.headers[date_header] = value.rfc2822
            end
          end

          if options[:range]
            range = options[:range]
            range = "bytes=#{range.first}-#{range.last}" if range.is_a?(Range)
            req.headers['Range'] = range
          end

        end

        process_response do |resp|
          resp.data[:data] = resp.http_response.body
          resp.data[:version_id] = resp.http_response.header('x-amz-version-id')
          add_sse_to_response(resp)
        end
      end

      # @overload head_object(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [String] :version_id
      #   @return [Core::Response]
      object_method(:head_object, :head) do

        configure_request do |req, options|
          super(req, options)
          if options[:version_id]
            req.add_param('versionId', options[:version_id])
          end
        end

        process_response do |resp|

          # create a hash of user-supplied metadata
          meta = {}
          resp.http_response.headers.each_pair do |name,value|
            if name =~ /^x-amz-meta-(.+)$/i
              meta[$1] = [value].flatten.join
            end
          end
          meta
          resp.data[:meta] = meta

          if expiry = resp.http_response.headers['x-amz-expiration']
            expiry.first =~ /^expiry-date="(.+)", rule-id="(.+)"$/
            exp_date = DateTime.parse($1)
            exp_rule_id = $2
          else
            exp_date = nil
            exp_rule_id = nil
          end

          resp.data[:expiration_date] = exp_date
          resp.data[:expiration_rule_id] = exp_rule_id

          {
            'x-amz-version-id' => :version_id,
            'content-type' => :content_type,
            'etag' => :etag,
          }.each_pair do |header,method|
            resp.data[method] = resp.http_response.header(header)
          end

          if time = resp.http_response.header('Last-Modified')
            resp.data[:last_modified] = Time.parse(time)
          end

          resp.data[:content_length] =
            resp.http_response.header('content-length').to_i

          add_sse_to_response(resp)

        end
      end

      # @overload delete_object(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [String] :version_id
      #   @return [Core::Response]
      object_method(:delete_object, :delete) do

        configure_request do |req, options|
          super(req, options)
          if options[:version_id]
            req.add_param('versionId', options[:version_id])
          end
        end

        process_response do |resp|
          resp.data[:version_id] = resp.http_response.header('x-amz-version-id')
        end

      end

      # @overload list_objects(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [String] :delimiter
      #   @option options [String] :marker
      #   @option options [String] :max_keys
      #   @option options [String] :prefix
      #   @return [Core::Response]
      bucket_method(:list_objects, :get, XML::ListObjects) do
        configure_request do |req, options|
          super(req, options)
          params = %w(delimiter marker max_keys prefix)
          params.each do |param|
            if options[param.to_sym]
              req.add_param(param.gsub(/_/, '-'), options[param.to_sym])
            end
          end
        end
      end

      alias_method :get_bucket, :list_objects

      # @overload initiate_multipart_upload(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [Hash] :metadata
      #   @option options [Symbol] :acl
      #   @option options [String] :cache_control
      #   @option options [String] :content_disposition
      #   @option options [String] :content_encoding
      #   @option options [String] :content_type
      #   @option options [String] :storage_class+ ('STANDARD')
      #     Controls whether Reduced Redundancy Storage is enabled for
      #     the object.  Valid values are 'STANDARD' and
      #     'REDUCED_REDUNDANCY'.
      #   @option options [Symbol,String] :server_side_encryption (nil) The
      #     algorithm used to encrypt the object on the server side
      #     (e.g. :aes256).
      #   @option options [String] :expires
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      object_method(:initiate_multipart_upload, :post, 'uploads',
                    XML::InitiateMultipartUpload,
                    :header_options => {
                      :acl => 'x-amz-acl',
                      :grant_read => 'x-amz-grant-read',
                      :grant_write => 'x-amz-grant-write',
                      :grant_read_acp => 'x-amz-grant-read-acp',
                      :grant_write_acp => 'x-amz-grant-write-acp',
                      :grant_full_control => 'x-amz-grant-full-control',
                      :cache_control => 'Cache-Control',
                      :content_disposition => 'Content-Disposition',
                      :content_encoding => 'Content-Encoding',
                      :content_type => 'Content-Type',
                      :expires => 'Expires'
                    }) do

        configure_request do |req, options|
          req.metadata = options[:metadata]
          req.storage_class = options[:storage_class]
          req.server_side_encryption = options[:server_side_encryption]
          super(req, options)
        end

        process_response do |response|
          add_sse_to_response(response)
        end

      end

      # @overload list_multipart_uploads(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [String] :delimiter
      #   @option options [String] :key_marker
      #   @option options [String] :max_keys
      #   @option options [String] :upload_id_marker
      #   @option options [String] :max_uploads
      #   @option options [String] :prefix
      #   @return [Core::Response]
      bucket_method(:list_multipart_uploads,
                    :get, 'uploads',
                    XML::ListMultipartUploads) do
        configure_request do |req, options|
          super(req, options)
          params = %w(delimiter key_marker max_keys) +
            %w(upload_id_marker max_uploads prefix)
          params.each do |param|
            if options[param.to_sym]
              req.add_param(param.gsub(/_/, '-'), options[param.to_sym])
            end
          end
        end
      end

      # @overload delete_objects(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,Array<String>] :keys
      #   @option options [Boolean] :quiet (true)
      #   @return [Core::Response]
      bucket_method(:delete_objects, :post, 'delete', XML::DeleteObjects) do
        configure_request do |req, options|

          super(req, options)

          quiet = options.key?(:quiet) ? options[:quiet] : true

          # previously named this option :objects, since renamed
          keys = options[:objects] || options[:keys]

          objects = keys.inject('') do |xml,o|
            xml << "<Object><Key>#{REXML::Text.normalize(o[:key])}</Key>"
            xml << "<VersionId>#{o[:version_id]}</VersionId>" if o[:version_id]
            xml << "</Object>"
          end

          xml = '<?xml version="1.0" encoding="UTF-8"?>'
          xml << "<Delete><Quiet>#{quiet}</Quiet>#{objects}</Delete>"

          req.body = xml

          md5 = Base64.encode64(Digest::MD5.digest(xml)).strip

          req.headers['content-md5'] = md5

        end
      end

      # @overload upload_part(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [required,String] :upload_id
      #   @option options [required,Integer] :part_number
      #   @option options [required,String,Pathname,File,IO] :data
      #     The data to upload.  This can be provided as a string,
      #     a Pathname object, or any object that responds to
      #     +#read+ and +#eof?+ (e.g. IO, File, Tempfile, StringIO, etc).
      #   @return [Core::Response]
      object_method(:upload_part, :put,
                    :header_options => {
                      :content_md5 => 'Content-MD5'
                    }) do
        configure_request do |request, options|

          options = compute_write_options(options)
          set_body_stream_and_content_length(request, options)

          require_upload_id!(options[:upload_id])
          request.add_param('uploadId', options[:upload_id])

          require_part_number!(options[:part_number])
          request.add_param('partNumber', options[:part_number])

          super(request, options)

        end

        process_response do |response|
          response.data[:etag] = response.http_response.header('ETag')
          if time = response.http_response.header('Last-Modified')
            response.data[:last_modified] = Time.parse(time)
          end
          add_sse_to_response(response)
        end

        simulate_response do |response|
          response.data[:etag] = 'abc123'
        end
      end

      # @overload complete_multipart_upload(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [required,String] :upload_id
      #   @option options [required,Array<String>] :parts
      #   @return [Core::Response]
      object_method(:complete_multipart_upload, :post,
                    XML::CompleteMultipartUpload) do
        configure_request do |req, options|
          require_upload_id!(options[:upload_id])
          validate_parts!(options[:parts])
          super(req, options)
          req.add_param('uploadId', options[:upload_id])
          parts_xml = options[:parts].map do |part|
            "<Part>"+
              "<PartNumber>#{part[:part_number].to_i}</PartNumber>"+
              "<ETag>#{REXML::Text.normalize(part[:etag].to_s)}</ETag>"+
              "</Part>"
          end.join
          req.body =
            "<CompleteMultipartUpload>#{parts_xml}</CompleteMultipartUpload>"
        end

        process_response do |response|
          add_sse_to_response(response)
          response.data[:version_id] =
            response.http_response.header('x-amz-version-id')
        end

        simulate_response do |response|
          response.data[:version_id] = nil
        end
      end

      # @overload abort_multipart_upload(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [required,String] :upload_id
      #   @return [Core::Response]
      object_method(:abort_multipart_upload, :delete) do
        configure_request do |req, options|
            require_upload_id!(options[:upload_id])
          super(req, options)
          req.add_param('uploadId', options[:upload_id])
        end
      end

      # @overload list_parts(options = {})
      #   @param [Hash] options
      #   @option options [required,String] :bucket_name
      #   @option options [required,String] :key
      #   @option options [required,String] :upload_id
      #   @option options [Integer] :max_parts
      #   @option options [Integer] :part_number_marker
      #   @return [Core::Response]
      object_method(:list_parts, :get, XML::ListParts) do

        configure_request do |req, options|
            require_upload_id!(options[:upload_id])
          super(req, options)
          req.add_param('uploadId', options[:upload_id])
          req.add_param('max-parts', options[:max_parts])
          req.add_param('part-number-marker', options[:part_number_marker])
        end

      end

      # Copies an object from one key to another.
      # @overload copy_object(options = {})
      #   @param [Hash] options
      #   @option options [required, String] :bucket_name Name of the bucket
      #     to copy a object into.
      #   @option options [required, String] :key Where (object key) in the
      #     bucket the object should be copied to.
      #   @option options [required, String] :copy_source The source
      #     bucket name and key, joined by a forward slash ('/').
      #     This string must be URL-encoded. Additionally, you must
      #     have read access to the source object.
      #   @option options [String] :acl A canned ACL (e.g. 'private',
      #     'public-read', etc).  See the S3 API documentation for
      #     a complete list of valid values.
      #   @option options [Symbol,String] :server_side_encryption (nil) The
      #     algorithm used to encrypt the object on the server side
      #     (e.g. :aes256).
      #   @option options [String] :storage_class+ ('STANDARD')
      #     Controls whether Reduced Redundancy Storage is enabled for
      #     the object.  Valid values are 'STANDARD' and
      #     'REDUCED_REDUNDANCY'.
      #   @option options [String] :grant_read
      #   @option options [String] :grant_write
      #   @option options [String] :grant_read_acp
      #   @option options [String] :grant_write_acp
      #   @option options [String] :grant_full_control
      #   @return [Core::Response]
      object_method(:copy_object, :put, :header_options => {
        :acl => 'x-amz-acl',
        :grant_read => 'x-amz-grant-read',
        :grant_write => 'x-amz-grant-write',
        :grant_read_acp => 'x-amz-grant-read-acp',
        :grant_write_acp => 'x-amz-grant-write-acp',
        :grant_full_control => 'x-amz-grant-full-control',
        :copy_source => 'x-amz-copy-source',
        :cache_control => 'Cache-Control',
        :metadata_directive => 'x-amz-metadata-directive',
        :content_type => 'Content-Type',
        :content_disposition => 'Content-Disposition',
      }) do

        configure_request do |req, options|

          validate!(:copy_source, options[:copy_source]) do
            "may not be blank" if options[:copy_source].to_s.empty?
          end

          options = options.merge(:copy_source => escape_path(options[:copy_source]))
          super(req, options)
          req.metadata = options[:metadata]
          req.storage_class = options[:storage_class]
          req.server_side_encryption = options[:server_side_encryption]

          if options[:version_id]
            req.headers['x-amz-copy-source'] += "?versionId=#{options[:version_id]}"
          end
  				req.headers['transfer-encoding'] = ''
        end

        process_response do |response|
          response.data[:version_id] =
            response.http_response.header('x-amz-version-id')
          response.data[:etag] = response.http_response.header('ETag')
          if time = response.http_response.header('Last-Modified')
            response.data[:last_modified] = Time.parse(time)
          end
          add_sse_to_response(response)
        end

      end

      protected

      def extract_error_details response
        if
          (response.http_response.status >= 300 ||
            response.request_type == :complete_multipart_upload) and
          body = response.http_response.body and
          error = Core::XML::Parser.parse(body) and
          error[:code]
        then
          [error[:code], error[:message]]
        end
      end

      # There are a few of s3 requests that can generate empty bodies and
      # yet still be errors.  These return empty bodies to comply with the
      # HTTP spec.  We have to detect these errors specially.
      def populate_error resp
        code = resp.http_response.status
        if EMPTY_BODY_ERRORS.include?(code) and resp.http_response.body.nil?
          error_class = EMPTY_BODY_ERRORS[code]
          resp.error = error_class.new(resp.http_request, resp.http_response)
        else
          super
        end
      end

      def retryable_error? response
        super or
          (response.request_type == :complete_multipart_upload &&
          extract_error_details(response))
          # complete multipart upload can return an error inside a
          # 200 level response -- this forces us to parse the
          # response for errors every time
      end

      def new_request
        req = S3::Request.new
        req.force_path_style = config.s3_force_path_style?
        req
      end

      def add_sse_to_response response
        if sse = response.http_response.header('x-amz-server-side-encryption')
          sse = sse.downcase.to_sym
        end
        response.data[:server_side_encryption] = sse
      end

      # Previously the access control policy could be specified via :acl
      # as a string or an object that responds to #to_xml.  The prefered
      # method now is to pass :access_control_policy an xml document.
      def move_access_control_policy options
        if acl = options[:acl]
          if acl.is_a?(String) and is_xml?(acl)
            options[:access_control_policy] = options.delete(:acl)
          elsif acl.respond_to?(:to_xml)
            options[:access_control_policy] = options.delete(:acl).to_xml
          end
        end
      end

      # @param [String] possible_xml
      # @return [Boolean] Returns +true+ if the given string is a valid xml
      #   document.
      def is_xml? possible_xml
        begin
          REXML::Document.new(possible_xml).has_elements?
        rescue
          false
        end
      end

      module Validators

        # @return [Boolean] Returns true if the given bucket name is valid.
        def valid_bucket_name?(bucket_name)
          validate_bucket_name!(bucket_name) rescue false
        end

        # Returns true if the given +bucket_name+ is DNS compatible.
        #
        # DNS compatible bucket names may be accessed like:
        #
        #   http://dns.compat.bucket.name.s3.amazonaws.com/
        #
        # Whereas non-dns compatible bucket names must place the bucket
        # name in the url path, like:
        #
        #   http://s3.amazonaws.com/dns_incompat_bucket_name/
        #
        # @return [Boolean] Returns true if the given bucket name may be
        #   is dns compatible.
        #   this bucket n
        #
        def dns_compatible_bucket_name?(bucket_name)
          return false if
            !valid_bucket_name?(bucket_name) or

            # Bucket names should not contain underscores (_)
            bucket_name["_"] or

            # Bucket names should be between 3 and 63 characters long
            bucket_name.size > 63 or

            # Bucket names should not end with a dash
            bucket_name[-1,1] == '-' or

            # Bucket names cannot contain two, adjacent periods
            bucket_name['..'] or

            # Bucket names cannot contain dashes next to periods
            # (e.g., "my-.bucket.com" and "my.-bucket" are invalid)
            (bucket_name['-.'] || bucket_name['.-'])

          true
        end

        # Returns true if the bucket name must be used in the request
        # path instead of as a sub-domain when making requests against
        # S3.
        #
        # This can be an issue if the bucket name is DNS compatible but
        # contains '.' (periods).  These cause the SSL certificate to
        # become invalid when making authenticated requets over SSL to the
        # bucket name.  The solution is to send this as a path argument
        # instead.
        #
        # @return [Boolean] Returns true if the bucket name should be used
        #   as a path segement instead of dns prefix when making requests
        #   against s3.
        #
        def path_style_bucket_name? bucket_name
          if dns_compatible_bucket_name?(bucket_name)
            bucket_name =~ /\./ ? true : false
          else
            true
          end
        end

        def validate! name, value, &block
          if error_msg = yield
            raise ArgumentError, "#{name} #{error_msg}"
          end
          value
        end

        def validate_key!(key)
          validate!('key', key) do
            case
            when key.nil? || key == ''
              'may not be blank'
            end
          end
        end

        def require_bucket_name! bucket_name
          if [nil, ''].include?(bucket_name)
            raise ArgumentError, "bucket_name may not be blank"
          end
        end

        # Returns true if the given bucket name is valid.  If the name
        # is invalid, an ArgumentError is raised.
        def validate_bucket_name!(bucket_name)
          validate!('bucket_name', bucket_name) do
            case
            when bucket_name.nil? || bucket_name == ''
              'may not be blank'
            when bucket_name !~ /^[a-z0-9._\-]+$/
              'may only contain lowercase letters, numbers, periods (.), ' +
              'underscores (_), and dashes (-)'
            when bucket_name !~ /^[a-z0-9]/
              'must start with a letter or a number'
            when !(3..255).include?(bucket_name.size)
              'must be between 3 and 255 characters long'
            when bucket_name =~ /(\d+\.){3}\d+/
              'must not be formatted like an IP address (e.g., 192.168.5.4)'
            when bucket_name =~ /\n/
              'must not contain a newline character'
            end
          end
        end

        def require_policy!(policy)
          validate!('policy', policy) do
            case
            when policy.nil? || policy == ''
              'may not be blank'
            else
              json_validation_message(policy)
            end
          end
        end

        def require_acl! options
          acl_options = [
            :acl,
            :grant_read,
            :grant_write,
            :grant_read_acp,
            :grant_write_acp,
            :grant_full_control,
            :access_control_policy,
          ]
          unless options.keys.any?{|opt| acl_options.include?(opt) }
            msg = "missing a required ACL option, must provide an ACL " +
                  "via :acl, :grant_* or :access_control_policy"
            raise ArgumentError, msg
          end
        end

        def set_body_stream_and_content_length request, options

          unless options[:content_length]
            msg = "S3 requires a content-length header, unable to determine "
            msg << "the content length of the data provided, please set "
            msg << ":content_length"
            raise ArgumentError, msg
          end

          request.headers['content-length'] = options[:content_length]
          request.body_stream = options[:data]

        end

        def require_upload_id!(upload_id)
          validate!("upload_id", upload_id) do
            "must not be blank" if upload_id.to_s.empty?
          end
        end

        def require_part_number! part_number
          validate!("part_number", part_number) do
            "must not be blank" if part_number.to_s.empty?
          end
        end

        def validate_parts!(parts)
          validate!("parts", parts) do
            if !parts.kind_of?(Array)
              "must not be blank"
            elsif parts.empty?
              "must contain at least one entry"
            elsif !parts.all? { |p| p.kind_of?(Hash) }
              "must be an array of hashes"
            elsif !parts.all? { |p| p[:part_number] }
              "must contain part_number for each part"
            elsif !parts.all? { |p| p[:etag] }
              "must contain etag for each part"
            elsif parts.any? { |p| p[:part_number].to_i < 1 }
              "must not have part numbers less than 1"
            end
          end
        end

        def json_validation_message(obj)
          if obj.respond_to?(:to_str)
            obj = obj.to_str
          elsif obj.respond_to?(:to_json)
            obj = obj.to_json
          end

          error = nil
          begin
            JSON.parse(obj)
          rescue => e
            error = e
          end
          "contains invalid JSON: #{error}" if error
        end

      end

      include Validators
      extend Validators

    end

  end
end
