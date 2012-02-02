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

    ##
    # Provides a low-level client to Amazon S3:
    #
    # * Each method makes exactly one request to S3, and no two
    #   methods make the same type of request.
    #
    # * These methods hide the details of how request parameters are
    #   sent to S3; for example:
    #
    #     client.set_bucket_acl(# controls which host to connect to
    #                           :bucket_name => "mybucket",
    #                           # the request payload
    #                           :acl => [{ :grantee => "..." }])
    #
    # * These methods return subclasses of Response, so that you can
    #   always get access to the request that was made and the raw
    #   HTTP response.  You can also access S3-specific response
    #   metadata.  For example:
    #
    #     response = client.list_buckets
    #     response.http_request.http_method # => "GET"
    #     response.http_response.body  # => "<ListAllMyBucketsResult xmlns..."
    #     response.request_id          # => "32FE2CEB32F5EE25"
    #                                  # (S3-specific metadata)
    #
    # * This client attempts to raise ArgumentError for any invalid
    #   requests it can detect before sending a request to the
    #   service.  For example:
    #
    #     begin
    #       client.create_bucket
    #     rescue ArgumentError => e
    #       puts e                     # prints "The bucket_name parameter is
    #                                  # required"
    #     end
    #
    # * Each method can take an +:async+ to turn it into an
    #   asynchronous operation.  Instead of blocking on the response
    #   to the service call, the method will return a handle on the
    #   response.  For example:
    #
    #     response = client.list_buckets(:async => true)
    #     response.on_success { p response.buckets.map(&:name) }
    #
    # @private
    class Client < Core::Client

      AWS.register_autoloads(self) do
        autoload :XML, 'xml'
      end

      API_VERSION = '2006-03-01'

      XMLNS = "http://s3.amazonaws.com/doc/#{API_VERSION}/"

      EMPTY_BODY_ERRORS = {
        304 => Errors::NotModified,
        404 => Errors::NoSuchKey
      }

      include DataOptions
      include Core::UriEscape

      configure_client

      protected
      def self.bucket_method(method_name, verb, *args, &block)
        method_options = (args.pop if args.last.kind_of?(Hash)) || {}
        xml_grammar = (args.pop if args.last.respond_to?(:parse))
        verb = verb.to_s.upcase
        subresource = args.first

        add_client_request_method(method_name, :xml_grammar => xml_grammar) do

          configure_request do |req, options|
              require_bucket_name!(options[:bucket_name])
            req.http_method = verb
            req.bucket = options[:bucket_name]
            req.add_param(subresource) if subresource

            if header_options = method_options[:header_options]
              header_options.each do |(option_name, header)|
                req.headers[header] = options[option_name] if
                  options[option_name]
              end
            end

          end

          instance_eval(&block) if block
        end
      end

      protected
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

      bucket_method(:create_bucket, :put) do
        configure_request do |req, options|
          validate_bucket_name!(options[:bucket_name])
          req.canned_acl = options[:acl]
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

      ##
      # Deletes a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      bucket_method(:delete_bucket, :delete)

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

      bucket_method(:get_bucket_lifecycle_configuration, :get) do

        configure_request do |req, options|
          req.add_param('lifecycle')
          super(req, options)
        end

        process_response do |resp|
          xml = resp.http_response.body
          data = XML::GetBucketLifecycleConfiguration.parse(xml)
          Core::MetaUtils.extend_method(resp, :data) { ResponseData.new(data) }
        end

      end

      bucket_method(:delete_bucket_lifecycle_configuration, :delete) do
        
        configure_request do |req, options|
          req.add_param('lifecycle')
          super(req, options)
        end

      end

      # delete_bucket_lifecycle_configuration

      ##
      # Lists the buckets in the account.
      add_client_request_method(:list_buckets) do
        configure_request do |req, options|
          req.http_method = "GET"
        end

        process_response do |resp|
          XML::ListBuckets.parse(resp.http_response.body, :context => resp)
        end
      end

      ##
      # Sets the access policy for a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # * +:policy+ -- The new policy.  This can be a string (which
      #   is assumed to contain a valid policy expressed in JSON), a
      #   Policy or any object that responds to +to_json+.
      #
      # == Response
      #
      # The response contains only the standard fields.
      bucket_method(:set_bucket_policy, :put, 'policy') do

        configure_request do |req, options|
            require_policy!(options[:policy])
          super(req, options)
          policy = options[:policy]
          policy = policy.to_json unless policy.respond_to?(:to_str)
          req.body = policy
        end

      end

      ##
      # Gets the access policy for a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # == Response
      #
      # A successful response will have a +policy+ method that
      # returns an instance of Policy.
      #
      bucket_method(:get_bucket_policy, :get, 'policy') do
        process_response do |resp|
          # FIXME: this makes unit testing easier, but is there something
          # we should be doing in case of invalid JSON from the service?
          policy = Policy.from_json(resp.http_response.body) rescue nil
          Core::MetaUtils.extend_method(resp, :policy) { policy }
        end
      end

      ##
      # Deletes the access policy for a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      bucket_method(:delete_bucket_policy, :delete, 'policy')

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

      ##
      # Gets the bucket's location constraint.  
      # @return [String] The bucket location constraint.  Returns nil if
      #   the bucket was created in the US classic region.
      bucket_method(:get_bucket_location, :get, 'location') do
        process_response do |response|
          regex = />(.*)<\/LocationConstraint>/
          matches = response.http_response.body.match(regex)
          location = matches ? matches[1] : nil
          Core::MetaUtils.extend_method(response, :location_constraint) { location }
        end
      end

      bucket_method(:get_bucket_versioning, :get, 'versioning',
        XML::GetBucketVersioning)

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

      ##
      # Sets the access control list for a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # * +:acl+ -- The new acl.  This can be any of the following:
      #   * An XML policy as a  string (which is passed to S3 uninterpreted)
      #   * An AccessControlList object
      #   * Any object that responds to +to_xml+
      #   * Any Hash that is acceptable as an argument to
      #     AccessControlList#initialize.
      #
      # == Response
      #
      # The response contains only the standard fields.
      bucket_method(:set_bucket_acl, :put, 'acl') do
        configure_request do |req, options|
            require_acl!(options[:acl])
          super(req, options)
          if options[:acl].kind_of?(Hash)
            req.body = AccessControlList.new(options[:acl]).to_xml
          elsif options[:acl].respond_to?(:to_str)
            req.body = options[:acl]
          else
            req.body = options[:acl].to_xml
          end
        end
      end

      ##
      # Gets the access control list for a bucket.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # == Response
      #
      # A successful response will have an +acl+ method that
      # returns an instance of AccessControlList.
      #
      bucket_method(:get_bucket_acl, :get, 'acl',
                    XML::GetBucketAcl)

      ##
      # Sets the access control list for an object.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # * +:key+ -- The key of the object.
      #
      # * +:acl+ -- The new acl.  This can be a string (which is
      #   assumed to contain a valid ACL expressed in XML), a
      #   AccessControlList or any object whose +to_xml+ returns a
      #   valid ACL expressed in XML.
      #
      # == Response
      #
      # The response contains only the standard fields.
      object_method(:set_object_acl, :put, 'acl') do
        configure_request do |req, options|
          require_acl!(options[:acl]) unless options[:acl].kind_of?(Symbol)
          super(req, options)
          if options[:acl].kind_of?(Hash)
            req.body = AccessControlList.new(options[:acl]).to_xml
          elsif options[:acl].kind_of?(Symbol)
            req.headers["x-amz-acl"] = options[:acl].to_s.tr("_","-")
          elsif options[:acl].respond_to?(:to_str)
            req.body = options[:acl]
          else
            req.body = options[:acl].to_xml
          end
        end
      end

      ##
      # Gets the access control list for an object.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket.
      #
      # * +:key+ -- The key of the object.
      #
      # == Response
      #
      # A successful response will have an +acl+ method that
      # returns an instance of AccessControlList.
      object_method(:get_object_acl, :get, 'acl',
                    XML::GetBucketAcl)

      ##
      # Puts data into an object, replacing the current contents.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket that will contain the data.
      #
      # * +:key+ -- The key under which the data will be saved.
      #
      # * +:data+ -- The data to upload.  This can be provided as an option
      #   or when using block form (see below).  Valid values include:
      #
      #   * A string
      #
      #   * A Pathname object.
      #
      #   * Any object with +read+ and +eof?+ methods that behave
      #     like Ruby's IO class (e.g. IO, File, Tempfile, StringIO, etc).
      #     The object must support the following access methods:
      #
      #       read                      # all at once
      #       read(length) until eof?   # in chunks
      #
      # == Optional
      #
      # * +:content_length+ -- Required if you are using block form to 
      #   write data or if it is not possible to determine the size of 
      #   +:data+.  Best effort is made to determine the content length of
      #   strings, files, tempfiles, io objects, and any object that responds
      #   to #length or #size.  
      #
      # * +:metadata+ -- A hash of metadata to be included with the
      #   object.  These will be sent to S3 as headers prefixed with
      #   +x-amz-meta+.
      #
      # * +:acl+ -- A canned access control policy, valid values are:
      #   * +:private+
      #   * +:public_read+
      #   * ...
      #   Defaults to +:private+
      #
      # * +:storage_class+ -- Controls whether Reduced Redundancy
      #   Storage is enabled for the object.  Valid values are
      #   +:standard+ (the default) or +:reduced_redundancy+
      #
      # * +:cache_control+ -- Can be used to specify caching
      #   behavior [...]
      #
      # * +:content_disposition+ -- Specifies presentational
      #   information [...]
      #
      # * +:content_encoding+ -- Specifies what content encodings
      #   have been [...]
      #
      # * +:content_md5+ -- The base64 encoded 128-bit [...]
      #
      # * +:content_type+ -- A standard MIME type describing [...]
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
      # == Response
      #
      # If bucket versioning is enabled, a successful response will
      # have a +version_id+ method that returns the version ID of
      # the version that was written in the request.
      #
      object_method(:put_object, :put,
                    :header_options => {
                      :content_md5 => 'Content-MD5',
                      :cache_control => 'Cache-Control',
                      :content_disposition => 'Content-Disposition',
                      :content_encoding => 'Content-Encoding',
                      :content_type => 'Content-Type',
                      :storage_class => 'x-amz-storage-class',
                      :server_side_encryption => 'x-amz-server-side-encryption',
                      :expires => 'Expires'
                    }) do
        configure_request do |request, options, block|
          options[:server_side_encryption] =
            options[:server_side_encryption].to_s.upcase if
            options[:server_side_encryption].kind_of?(Symbol)
          super(request, options)
          set_request_data(request, options, block)
          request.metadata = options[:metadata]
          request.canned_acl = options[:acl]
          request.storage_class = options[:storage_class]
        end

        process_response do |response|
          Core::MetaUtils.extend_method(response, :version_id) do
            response.http_response.header('x-amz-version-id')
          end
          Core::MetaUtils.extend_method(response, :etag) do
            response.http_response.header('ETag')
          end
          Core::MetaUtils.extend_method(response, :last_modified) do
            Time.parse(response.http_response.header('Last-Modified'))
          end
          add_sse_to_response(response)
        end

        simulate_response do |response|
          Core::MetaUtils.extend_method(response, :etag) { "abc123" }
          Core::MetaUtils.extend_method(response, :version_id) { nil }
        end
      end

      ##
      # Gets the data for a key.
      #
      # == Required Options
      #
      # * +:bucket_name+ -- The name of the bucket that contains the data.
      #
      # * +:key+ -- The key under which the data exists.
      #
      # == Optional
      #
      # * +:if_modified_since+ -- A Time object; if specified, the
      #   response will contain an additional +modified?+ method that
      #   returns true if the object was modified after the given
      #   time.  If +modified?+ returns false, the +data+ method of
      #   the response will return +nil+.
      #
      # * +:if_unmodified_since+ -- A Time object; if specified, the
      #   response will contain an additional +unmodified?+ method
      #   that returns true if the object was not modified after the
      #   given time.  If +unmodified?+ returns false, the +data+
      #   method of the response will return +nil+.
      #
      # * +:if_match+ -- A string; if specified, the response will
      #   contain an additional +matches?+ method that returns true
      #   if the object ETag matches the value for this option.  If
      #   +matches?+ returns false, the +data+ method of the
      #   response will return +nil+.
      #
      # * +:if_none_match+ -- A string; if specified, the response
      #   will contain an additional +matches?+ method that returns
      #   true if and only if the object ETag matches the value for
      #   this option.  If +matches?+ returns true, the +data+
      #   method of the response will return +nil+.
      #
      # * +:to+ -- A destination for the data.  Valid values:
      #
      #   * The path to a file as a string
      #
      #   * A Pathname object
      #
      #   * Any object that supports <code>write(data)</code> and
      #     +close+ methods like Ruby's IO class
      #
      # * +:range+ -- TODO: figure out the format for this
      #   parameter.
      #
      # == Response
      #
      # A successful response will have some combination of the
      # following methods:
      #
      # * +data+ -- The object data as a string.  This will return
      #   +nil+ if one of the conditional options above is specified
      #   and the condition is not met.  It will also return +nil+
      #   if +deleted?+ returns true.  It will not be present if the
      #   +:to+ option is specified.
      #
      # * +modified?+, +unmodified?+, +matches?+ -- These will be
      #   present as documented in the conditional options above.
      #
      # * +version_id+ -- Returns the version ID of the object that
      #   was written (only for versioned buckets).
      #
      # * +deleted?+ -- This will return +true+ if the bucket has
      #   versioning enabled and the object retrieved was a delete
      #   marker.
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
          Core::MetaUtils.extend_method(resp, :data) { resp.http_response.body }
          Core::MetaUtils.extend_method(resp, :version_id) do
            http_response.header('x-amz-version-id')
          end
          add_sse_to_response(resp)
        end
      end

      object_method(:head_object, :head) do
        configure_request do |req, options|
          super(req, options)
          if options[:version_id]
            req.add_param('versionId', options[:version_id])
          end
        end

        process_response do |resp|

          # create a hash of user-supplied metadata
          Core::MetaUtils.extend_method(resp, :meta) do
            meta = {}
            resp.http_response.headers.each_pair do |name,value|
              if name =~ /^x-amz-meta-(.+)$/i
                meta[$1] = [value].flatten.join
              end
            end
            meta
          end

          if expiry = resp.http_response.headers['x-amz-expiration']
            expiry.first =~ /^expiry-date="(.+)", rule-id="(.+)"$/
            date = DateTime.parse($1)
            rule_id = $2
          else
            date = nil
            rule_id = nil
          end
          Core::MetaUtils.extend_method(resp, :expiration_date) { date }
          Core::MetaUtils.extend_method(resp, :expiration_rule_id) { rule_id }

          # create methods for standard response headers
          {
            'x-amz-version-id' => :version_id,
            'content-type' => :content_type,
            'etag' => :etag,
          }.each_pair do |header,method|
            Core::MetaUtils.extend_method(resp, method) do
              http_response.header(header)
            end
          end

          Core::MetaUtils.extend_method(resp, :last_modified) do
            Time.parse(resp.http_response.header('Last-Modified'))
          end

          Core::MetaUtils.extend_method(resp, :content_length) do
            http_response.header('content-length').to_i
          end

          add_sse_to_response(resp)
        end
      end

      object_method(:delete_object, :delete) do
        configure_request do |req, options|
          super(req, options)
          if options[:version_id]
            req.add_param('versionId', options[:version_id])
          end
        end

        process_response do |resp|
          Core::MetaUtils.extend_method(resp, :version_id) do
            http_response.header('x-amz-version-id')
          end
        end

      end

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

      object_method(:initiate_multipart_upload, :post, 'uploads',
                    XML::InitiateMultipartUpload,
                    :header_options => {
                      :cache_control => 'Cache-Control',
                      :content_disposition => 'Content-Disposition',
                      :content_encoding => 'Content-Encoding',
                      :content_type => 'Content-Type',
                      :storage_class => 'x-amz-storage-class',
                      :server_side_encryption => 'x-amz-server-side-encryption',
                      :expires => 'Expires'
                    }) do
        configure_request do |req, options|
          options[:server_side_encryption] =
            options[:server_side_encryption].to_s.upcase if
            options[:server_side_encryption].kind_of?(Symbol)
          super(req, options)
          req.metadata = options[:metadata]
          req.canned_acl = options[:acl]
          req.storage_class = options[:storage_class]
        end

        process_response do |response|
          add_sse_to_response(response)
        end
      end

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

      bucket_method(:delete_objects, :post, 'delete', XML::DeleteObjects) do
        configure_request do |req, options|

          super(req, options)

          quiet = options.key?(:quiet) ? options[:quiet] : true

          objects = options[:objects].inject('') do |xml,o|
            xml << "<Object><Key>#{o[:key]}</Key>"
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

      object_method(:upload_part, :put,
                    :header_options => {
                      :content_md5 => 'Content-MD5'
                    }) do
        configure_request do |request, options, block|
            require_upload_id!(options[:upload_id])
          validate!("part_number", options[:part_number]) do
            "must not be blank" if options[:part_number].to_s.empty?
          end
          super(request, options)
          set_request_data(request, options, block)
          request.add_param('uploadId', options[:upload_id])
          request.add_param('partNumber', options[:part_number])
        end

        process_response do |response|
          Core::MetaUtils.extend_method(response, :etag) do
            response.http_response.header('ETag')
          end
          Core::MetaUtils.extend_method(response, :last_modified) do
            Time.parse(response.http_response.header('Last-Modified'))
          end
          add_sse_to_response(response)
        end

        simulate_response do |response|
          Core::MetaUtils.extend_method(response, :etag) { "abc123" }
        end
      end

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
          Core::MetaUtils.extend_method(response, :version_id) do
            response.http_response.header('x-amz-version-id')
          end
          add_sse_to_response(response)
        end

        simulate_response do |response|
          Core::MetaUtils.extend_method(response, :version_id) { nil }
        end
      end

      object_method(:abort_multipart_upload, :delete) do
        configure_request do |req, options|
            require_upload_id!(options[:upload_id])
          super(req, options)
          req.add_param('uploadId', options[:upload_id])
        end
      end

      object_method(:list_parts, :get,
                    XML::ListParts) do
        configure_request do |req, options|
            require_upload_id!(options[:upload_id])
          super(req, options)
          req.add_param('uploadId', options[:upload_id])
          req.add_param('max-parts', options[:max_parts])
          req.add_param('part-number-marker', options[:part_number_marker])
        end
      end

      ##
      # @param [Hash] options
      # @option options [required, String] :bucket_name Name of the bucket
      #   to copy a object into.
      # @option options [required, String] :key Where (object key) in the
      #   bucket the object should be copied to.
      # @option options [required, String] :copy_source The name of the 
      #   source bucket and key name of the source object, separated by a 
      #   slash (/). This string must be URL-encoded. Additionally, the 
      #   source bucket must be valid and you must have READ access to 
      #   the valid source object.
      # @option options [Symbol] :acl
      #
      object_method(:copy_object, :put,
                    :header_options => {
                      :copy_source => 'x-amz-copy-source',
                      :cache_control => 'Cache-Control',
                      :metadata_directive => 'x-amz-metadata-directive',
                      :storage_class => 'x-amz-storage-class',
                      :server_side_encryption => 'x-amz-server-side-encryption',
                      :content_type => 'Content-Type',
                    }) do

        configure_request do |req, options|
          # TODO : validate metadata directive COPY / REPLACE
          # TODO : validate storage class STANDARD / REDUCED_REDUNDANCY
          # TODO : add validations for storage class in other places used
          validate!(:copy_source, options[:copy_source]) do
            "may not be blank" if options[:copy_source].to_s.empty?
          end
          options = options.merge(:copy_source => escape_path(options[:copy_source]))
          options[:server_side_encryption] =
            options[:server_side_encryption].to_s.upcase if
            options[:server_side_encryption].kind_of?(Symbol)
          super(req, options)
          req.canned_acl = options[:acl]
          req.metadata = options[:metadata]
          req.storage_class = options[:storage_class]
          if options[:version_id]
            req.headers['x-amz-copy-source'] += "?versionId=#{options[:version_id]}"
          end
        end

        process_response do |response|
          Core::MetaUtils.extend_method(response, :version_id) do
            response.http_response.header('x-amz-version-id')
          end
          Core::MetaUtils.extend_method(response, :etag) do
            response.http_response.header('ETag')
          end
          Core::MetaUtils.extend_method(response, :last_modified) do
            Time.parse(response.http_response.header('Last-Modified'))
          end
          add_sse_to_response(response)
        end

      end

      protected
      def extract_error_code response
        if (response.http_response.status >= 300 ||
            response.request_type == :complete_multipart_upload) and
            body = response.http_response.body and
            parse = Core::XmlGrammar.parse(body) and
            parse.respond_to?(:code)
          parse.code
        end
      end

      protected
      def populate_error response
        code = response.http_response.status
        if EMPTY_BODY_ERRORS.include?(code) and
            response.http_response.body.nil?
          response.error =
            EMPTY_BODY_ERRORS[code].new(response.http_request,
                                        response.http_response)
        else
          super
        end
      end

      protected
      def should_retry? response
        super or
          response.request_type == :complete_multipart_upload &&
          extract_error_code(response)
      end

      protected
      def set_request_data request, options, block
        request.body_stream = data_stream_from(options, &block)
        request.headers['Content-Length'] = content_length_from(options)
      end

      protected
      def new_request
        S3::Request.new
      end

      protected
      def add_sse_to_response(response)
        sse = nil
        if value = response.http_response.header('x-amz-server-side-encryption')
          sse = value.downcase.to_sym
        end
        Core::MetaUtils.extend_method(response, :server_side_encryption) { sse }
      end

      module Validators

        # Returns true if the given bucket name is valid.
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
        def path_style_bucket_name? bucket_name
          if dns_compatible_bucket_name?(bucket_name)
            bucket_name =~ /\./ ? true : false
          else
            true
          end
        end

        protected
        def validate! name, value, &block
          if error_msg = yield
            raise ArgumentError, "#{name} #{error_msg}"
          end
          value
        end

        protected
        def validate_key!(key)
          validate!('key', key) do
            case
            when key.nil? || key == ''
              'may not be blank'
            end
          end
        end

        protected 
        def require_bucket_name! bucket_name
          if [nil, ''].include?(bucket_name)
            raise ArgumentError, "bucket_name may not be blank"
          end
        end


        # Returns true if the given bucket name is valid.  If the name
        # is invalid, an ArgumentError is raised.
        protected
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

        protected
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

        protected
        def require_acl!(acl)
          validate!('acl', acl) do
            case
            when acl.kind_of?(Hash)
              AccessControlList.new(acl).validate!
              nil
            when !acl.respond_to?(:to_str) && !acl.respond_to?(:to_xml)
              "must support to_xml: #{acl.inspect}"
            when acl.nil? || acl == ''
              'may not be blank'
            else
              xml_validation_message(acl)
            end
          end
        end

        protected
        def require_upload_id!(upload_id)
          validate!("upload_id", upload_id) do
            "must not be blank" if upload_id.to_s.empty?
          end
        end

        protected
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

        protected
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

        protected
        def xml_validation_message(obj)
          if obj.respond_to?(:to_str)
            obj = obj.to_str
          elsif obj.respond_to?(:to_xml)
            obj = obj.to_xml
          end

          error = nil
          begin
            REXML::Document.new(obj)
          rescue => e
            error = e
          end
          "contains invalid XML: #{error}" if error
        end

      end

      include Validators
      extend Validators

    end

  end
end
