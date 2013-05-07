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
  class CloudFront
    class Client < Core::RESTXMLClient

      # @api private
      CACHEABLE_REQUESTS = Set[]

      # client methods #

      # @!method create_cloud_front_origin_access_identity(options = {})
      # Calls the POST CreateCloudFrontOriginAccessIdentity API operation.
      # @param [Hash] options
      # * `:cloud_front_origin_access_identity_config` - *required* - (Hash)
      #   The origin access identity's configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the
      #     CloudFrontOriginAccessIdentityConfig object), a new origin access
      #     identity is created. If the CallerReference is a value you already
      #     sent in a previous request to create an identity, and the content
      #     of the CloudFrontOriginAccessIdentityConfig is identical to the
      #     original request (ignoring white space), the response includes the
      #     same information returned to the original request. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create an identity but the content of the
      #     CloudFrontOriginAccessIdentityConfig is different from the original
      #     request, CloudFront returns a
      #     CloudFrontOriginAccessIdentityAlreadyExists error.
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the origin access identity.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:s3_canonical_user_id` - (String)
      #   * `:cloud_front_origin_access_identity_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:comment` - (String)

      # @!method create_distribution(options = {})
      # Calls the POST CreateDistribution API operation.
      # @param [Hash] options
      # * `:distribution_config` - *required* - (Hash) The distribution's
      #   configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the DistributionConfig object), a new
      #     distribution is created. If the CallerReference is a value you
      #     already sent in a previous request to create a distribution, and
      #     the content of the DistributionConfig is identical to the original
      #     request (ignoring white space), the response includes the same
      #     information returned to the original request. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create a distribution but the content of the DistributionConfig
      #     is different from the original request, CloudFront returns a
      #     DistributionAlreadyExists error.
      #   * `:aliases` - *required* - (Hash) A complex type that contains
      #     information about CNAMEs (alternate domain names), if any, for this
      #     distribution.
      #     * `:quantity` - *required* - (Integer) The number of CNAMEs, if
      #       any, for this distribution.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       CNAME elements, if any, for this distribution. If Quantity is 0,
      #       you can omit Items.
      #   * `:default_root_object` - *required* - (String) The object that you
      #     want CloudFront to return (for example, index.html) when an end
      #     user requests the root URL for your distribution
      #     (http://www.example.com) instead of an object in your distribution
      #     (http://www.example.com/index.html). Specifying a default root
      #     object avoids exposing the contents of your distribution. If you
      #     don't want to specify a default root object when you create a
      #     distribution, include an empty DefaultRootObject element. To delete
      #     the default root object from an existing distribution, update the
      #     distribution configuration and include an empty DefaultRootObject
      #     element. To replace the default root object, update the
      #     distribution configuration and specify the new object.
      #   * `:origins` - *required* - (Hash) A complex type that contains
      #     information about origins for this distribution.
      #     * `:quantity` - *required* - (Integer) The number of origins for
      #       this distribution.
      #     * `:items` - (Array<Hash>) A complex type that contains origins for
      #       this distribution.
      #       * `:id` - *required* - (String) A unique identifier for the
      #         origin. The value of Id must be unique within the distribution.
      #         You use the value of Id when you create a cache behavior. The
      #         Id identifies the origin that CloudFront routes a request to
      #         when the request matches the path pattern for that cache
      #         behavior.
      #       * `:domain_name` - *required* - (String) Amazon S3 origins: The
      #         DNS name of the Amazon S3 bucket from which you want CloudFront
      #         to get objects for this origin, for example,
      #         myawsbucket.s3.amazonaws.com. Custom origins: The DNS domain
      #         name for the HTTP server from which you want CloudFront to get
      #         objects for this origin, for example, www.example.com.
      #       * `:s3_origin_config` - (Hash) A complex type that contains
      #         information about the Amazon S3 origin. If the origin is a
      #         custom origin, use the CustomOriginConfig element instead.
      #         * `:origin_access_identity` - *required* - (String) The
      #           CloudFront origin access identity to associate with the
      #           origin. Use an origin access identity to configure the origin
      #           so that end users can only access objects in an Amazon S3
      #           bucket through CloudFront. If you want end users to be able
      #           to access objects using either the CloudFront URL or the
      #           Amazon S3 URL, specify an empty OriginAccessIdentity element.
      #           To delete the origin access identity from an existing
      #           distribution, update the distribution configuration and
      #           include an empty OriginAccessIdentity element. To replace the
      #           origin access identity, update the distribution configuration
      #           and specify the new origin access identity.
      #       * `:custom_origin_config` - (Hash) A complex type that contains
      #         information about a custom origin. If the origin is an Amazon
      #         S3 bucket, use the S3OriginConfig element instead.
      #         * `:http_port` - *required* - (Integer) The HTTP port the
      #           custom origin listens on.
      #         * `:https_port` - *required* - (Integer) The HTTPS port the
      #           custom origin listens on.
      #         * `:origin_protocol_policy` - *required* - (String) The origin
      #           protocol policy to apply to your origin. Valid values
      #           include:
      #           * `http-only`
      #           * `match-viewer`
      #   * `:default_cache_behavior` - *required* - (Hash) A complex type that
      #     describes the default cache behavior if you do not specify a
      #     CacheBehavior element or if files don't match any of the values of
      #     PathPattern in CacheBehavior elements.You must create exactly one
      #     default cache behavior.
      #     * `:target_origin_id` - *required* - (String) The value of ID for
      #       the origin that you want CloudFront to route requests to when a
      #       request matches the path pattern either for a cache behavior or
      #       for the default cache behavior.
      #     * `:forwarded_values` - *required* - (Hash) A complex type that
      #       specifies how CloudFront handles query strings and cookies.
      #       * `:query_string` - *required* - (Boolean) Indicates whether you
      #         want CloudFront to forward query strings to the origin that is
      #         associated with this cache behavior. If so, specify `true` ; if
      #         not, specify `false` .
      #       * `:cookies` - *required* - (Hash) A complex type that specifies
      #         how CloudFront handles cookies.
      #         * `:forward` - *required* - (String) Use this element to
      #           specify whether you want CloudFront to forward cookies to the
      #           origin that is associated with this cache behavior. You can
      #           specify all, none or whitelist. If you choose All, CloudFront
      #           forwards all cookies regardless of how many your application
      #           uses. Valid values include:
      #           * `none`
      #           * `whitelist`
      #           * `all`
      #         * `:whitelisted_names` - (Hash) A complex type that specifies
      #           the whitelisted cookies, if any, that you want CloudFront to
      #           forward to your origin that is associated with this cache
      #           behavior.
      #           * `:quantity` - *required* - (Integer) The number of
      #             whitelisted cookies for this cache behavior.
      #           * `:items` - (Array<String>) Optional: A complex type that
      #             contains whitelisted cookies for this cache behavior. If
      #             Quantity is 0, you can omit Items.
      #     * `:trusted_signers` - *required* - (Hash) A complex type that
      #       specifies the AWS accounts, if any, that you want to allow to
      #       create signed URLs for private content. If you want to require
      #       signed URLs in requests for objects in the target origin that
      #       match the PathPattern for this cache behavior, specify `true` for
      #       Enabled, and specify the applicable values for Quantity and
      #       Items. For more information, go to Using a Signed URL to Serve
      #       Private Content in the Amazon CloudFront Developer Guide. If you
      #       don't want to require signed URLs in requests for objects that
      #       match PathPattern, specify `false` for Enabled and 0 for
      #       Quantity. Omit Items. To add, change, or remove one or more
      #       trusted signers, change Enabled to `true` (if it's currently
      #       `false` ), change Quantity as applicable, and specify all of the
      #       trusted signers that you want to include in the updated
      #       distribution.
      #       * `:enabled` - *required* - (Boolean) Specifies whether you want
      #         to require end users to use signed URLs to access the files
      #         specified by PathPattern and TargetOriginId.
      #       * `:quantity` - *required* - (Integer) The number of trusted
      #         signers for this cache behavior.
      #       * `:items` - (Array<String>) Optional: A complex type that
      #         contains trusted signers for this cache behavior. If Quantity
      #         is 0, you can omit Items.
      #     * `:viewer_protocol_policy` - *required* - (String) Use this
      #       element to specify the protocol that users can use to access the
      #       files in the origin specified by TargetOriginId when a request
      #       matches the path pattern in PathPattern. If you want CloudFront
      #       to allow end users to use any available protocol, specify
      #       allow-all. If you want CloudFront to require HTTPS, specify
      #       https. Valid values include:
      #       * `allow-all`
      #       * `https-only`
      #     * `:min_ttl` - *required* - (Integer) The minimum amount of time
      #       that you want objects to stay in CloudFront caches before
      #       CloudFront queries your origin to see whether the object has been
      #       updated.You can specify a value from 0 to 3,153,600,000 seconds
      #       (100 years).
      #   * `:cache_behaviors` - *required* - (Hash) A complex type that
      #     contains zero or more CacheBehavior elements.
      #     * `:quantity` - *required* - (Integer) The number of cache
      #       behaviors for this distribution.
      #     * `:items` - (Array<Hash>) Optional: A complex type that contains
      #       cache behaviors for this distribution. If Quantity is 0, you can
      #       omit Items.
      #       * `:path_pattern` - *required* - (String) The pattern (for
      #         example, images/*.jpg) that specifies which requests you want
      #         this cache behavior to apply to. When CloudFront receives an
      #         end-user request, the requested path is compared with path
      #         patterns in the order in which cache behaviors are listed in
      #         the distribution. The path pattern for the default cache
      #         behavior is * and cannot be changed. If the request for an
      #         object does not match the path pattern for any cache behaviors,
      #         CloudFront applies the behavior in the default cache behavior.
      #       * `:target_origin_id` - *required* - (String) The value of ID for
      #         the origin that you want CloudFront to route requests to when a
      #         request matches the path pattern either for a cache behavior or
      #         for the default cache behavior.
      #       * `:forwarded_values` - *required* - (Hash) A complex type that
      #         specifies how CloudFront handles query strings and cookies.
      #         * `:query_string` - *required* - (Boolean) Indicates whether
      #           you want CloudFront to forward query strings to the origin
      #           that is associated with this cache behavior. If so, specify
      #           `true` ; if not, specify `false` .
      #         * `:cookies` - *required* - (Hash) A complex type that
      #           specifies how CloudFront handles cookies.
      #           * `:forward` - *required* - (String) Use this element to
      #             specify whether you want CloudFront to forward cookies to
      #             the origin that is associated with this cache behavior. You
      #             can specify all, none or whitelist. If you choose All,
      #             CloudFront forwards all cookies regardless of how many your
      #             application uses. Valid values include:
      #             * `none`
      #             * `whitelist`
      #             * `all`
      #           * `:whitelisted_names` - (Hash) A complex type that specifies
      #             the whitelisted cookies, if any, that you want CloudFront
      #             to forward to your origin that is associated with this
      #             cache behavior.
      #             * `:quantity` - *required* - (Integer) The number of
      #               whitelisted cookies for this cache behavior.
      #             * `:items` - (Array<String>) Optional: A complex type that
      #               contains whitelisted cookies for this cache behavior. If
      #               Quantity is 0, you can omit Items.
      #       * `:trusted_signers` - *required* - (Hash) A complex type that
      #         specifies the AWS accounts, if any, that you want to allow to
      #         create signed URLs for private content. If you want to require
      #         signed URLs in requests for objects in the target origin that
      #         match the PathPattern for this cache behavior, specify `true`
      #         for Enabled, and specify the applicable values for Quantity and
      #         Items. For more information, go to Using a Signed URL to Serve
      #         Private Content in the Amazon CloudFront Developer Guide. If
      #         you don't want to require signed URLs in requests for objects
      #         that match PathPattern, specify `false` for Enabled and 0 for
      #         Quantity. Omit Items. To add, change, or remove one or more
      #         trusted signers, change Enabled to `true` (if it's currently
      #         `false` ), change Quantity as applicable, and specify all of
      #         the trusted signers that you want to include in the updated
      #         distribution.
      #         * `:enabled` - *required* - (Boolean) Specifies whether you
      #           want to require end users to use signed URLs to access the
      #           files specified by PathPattern and TargetOriginId.
      #         * `:quantity` - *required* - (Integer) The number of trusted
      #           signers for this cache behavior.
      #         * `:items` - (Array<String>) Optional: A complex type that
      #           contains trusted signers for this cache behavior. If Quantity
      #           is 0, you can omit Items.
      #       * `:viewer_protocol_policy` - *required* - (String) Use this
      #         element to specify the protocol that users can use to access
      #         the files in the origin specified by TargetOriginId when a
      #         request matches the path pattern in PathPattern. If you want
      #         CloudFront to allow end users to use any available protocol,
      #         specify allow-all. If you want CloudFront to require HTTPS,
      #         specify https. Valid values include:
      #         * `allow-all`
      #         * `https-only`
      #       * `:min_ttl` - *required* - (Integer) The minimum amount of time
      #         that you want objects to stay in CloudFront caches before
      #         CloudFront queries your origin to see whether the object has
      #         been updated.You can specify a value from 0 to 3,153,600,000
      #         seconds (100 years).
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the distribution.
      #   * `:logging` - *required* - (Hash) A complex type that controls
      #     whether access logs are written for the distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want
      #       CloudFront to save access logs to an Amazon S3 bucket. If you do
      #       not want to enable logging when you create a distribution or if
      #       you want to disable logging for an existing distribution, specify
      #       `false` for Enabled, and specify empty Bucket and Prefix
      #       elements. If you specify `false` for Enabled but you specify
      #       values for Bucket, prefix and IncludeCookies, the values are
      #       automatically deleted.
      #     * `:include_cookies` - *required* - (Boolean) Specifies whether you
      #       want CloudFront to include cookies in access logs, specify `true`
      #       for IncludeCookies. If you choose to include cookies in logs,
      #       CloudFront logs all cookies regardless of how you configure the
      #       cache behaviors for this distribution. If you do not want to
      #       include cookies when you create a distribution or if you want to
      #       disable include cookies for an existing distribution, specify
      #       `false` for IncludeCookies.
      #     * `:bucket` - *required* - (String) The Amazon S3 bucket to store
      #       the access logs in, for example, myawslogbucket.s3.amazonaws.com.
      #     * `:prefix` - *required* - (String) An optional string that you
      #       want CloudFront to prefix to the access log filenames for this
      #       distribution, for example, myprefix/. If you want to enable
      #       logging, but you do not want to specify a prefix, you still must
      #       include an empty Prefix element in the Logging element.
      #   * `:price_class` - *required* - (String) A complex type that contains
      #     information about price class for this distribution. Valid values
      #     include:
      #     * `PriceClass_100`
      #     * `PriceClass_200`
      #     * `PriceClass_All`
      #   * `:enabled` - *required* - (Boolean) Whether the distribution is
      #     enabled to accept end user requests for content.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:in_progress_invalidation_batches` - (Integer)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:default_root_object` - (String)
      #     * `:origins` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:id` - (String)
      #         * `:domain_name` - (String)
      #         * `:s3_origin_config` - (Hash)
      #           * `:origin_access_identity` - (String)
      #         * `:custom_origin_config` - (Hash)
      #           * `:http_port` - (Integer)
      #           * `:https_port` - (Integer)
      #           * `:origin_protocol_policy` - (String)
      #     * `:default_cache_behavior` - (Hash)
      #       * `:target_origin_id` - (String)
      #       * `:forwarded_values` - (Hash)
      #         * `:query_string` - (Boolean)
      #         * `:cookies` - (Hash)
      #           * `:forward` - (String)
      #           * `:whitelisted_names` - (Hash)
      #             * `:quantity` - (Integer)
      #             * `:items` - (Array<String>)
      #       * `:trusted_signers` - (Hash)
      #         * `:enabled` - (Boolean)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #       * `:viewer_protocol_policy` - (String)
      #       * `:min_ttl` - (Integer)
      #     * `:cache_behaviors` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:path_pattern` - (String)
      #         * `:target_origin_id` - (String)
      #         * `:forwarded_values` - (Hash)
      #           * `:query_string` - (Boolean)
      #           * `:cookies` - (Hash)
      #             * `:forward` - (String)
      #             * `:whitelisted_names` - (Hash)
      #               * `:quantity` - (Integer)
      #               * `:items` - (Array<String>)
      #         * `:trusted_signers` - (Hash)
      #           * `:enabled` - (Boolean)
      #           * `:quantity` - (Integer)
      #           * `:items` - (Array<String>)
      #         * `:viewer_protocol_policy` - (String)
      #         * `:min_ttl` - (Integer)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:include_cookies` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method create_invalidation(options = {})
      # Calls the POST CreateInvalidation API operation.
      # @param [Hash] options
      # * `:distribution_id` - *required* - (String) The distribution's id.
      # * `:invalidation_batch` - *required* - (Hash) The batch information for
      #   the invalidation.
      #   * `:paths` - *required* - (Hash) The path of the object to
      #     invalidate. The path is relative to the distribution and must begin
      #     with a slash (/). You must enclose each invalidation object with
      #     the Path element tags. If the path includes non-ASCII characters or
      #     unsafe characters as defined in RFC 1783
      #     (http://www.ietf.org/rfc/rfc1738.txt), URL encode those characters.
      #     Do not URL encode any other characters in the path, or CloudFront
      #     will not invalidate the old version of the updated object.
      #     * `:quantity` - *required* - (Integer) The number of objects that
      #       you want to invalidate.
      #     * `:items` - (Array<String>) A complex type that contains a list of
      #       the objects that you want to invalidate.
      #   * `:caller_reference` - *required* - (String) A unique name that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the Path object), a new distribution
      #     is created. If the CallerReference is a value you already sent in a
      #     previous request to create an invalidation batch, and the content
      #     of each Path element is identical to the original request, the
      #     response includes the same information returned to the original
      #     request. If the CallerReference is a value you already sent in a
      #     previous request to create a distribution but the content of any
      #     Path is different from the original request, CloudFront returns an
      #     InvalidationBatchAlreadyExists error.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:create_time` - (Time)
      #   * `:invalidation_batch` - (Hash)
      #     * `:paths` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:caller_reference` - (String)

      # @!method create_streaming_distribution(options = {})
      # Calls the POST CreateStreamingDistribution API operation.
      # @param [Hash] options
      # * `:streaming_distribution_config` - *required* - (Hash) The streaming
      #   distribution's configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the StreamingDistributionConfig
      #     object), a new streaming distribution is created. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create a streaming distribution, and the content of the
      #     StreamingDistributionConfig is identical to the original request
      #     (ignoring white space), the response includes the same information
      #     returned to the original request. If the CallerReference is a value
      #     you already sent in a previous request to create a streaming
      #     distribution but the content of the StreamingDistributionConfig is
      #     different from the original request, CloudFront returns a
      #     DistributionAlreadyExists error.
      #   * `:s3_origin` - *required* - (Hash) A complex type that contains
      #     information about the Amazon S3 bucket from which you want
      #     CloudFront to get your media files for distribution.
      #     * `:domain_name` - *required* - (String) The DNS name of the S3
      #       origin.
      #     * `:origin_access_identity` - *required* - (String) Your S3
      #       origin's origin access identity.
      #   * `:aliases` - *required* - (Hash) A complex type that contains
      #     information about CNAMEs (alternate domain names), if any, for this
      #     streaming distribution.
      #     * `:quantity` - *required* - (Integer) The number of CNAMEs, if
      #       any, for this distribution.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       CNAME elements, if any, for this distribution. If Quantity is 0,
      #       you can omit Items.
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the streaming distribution.
      #   * `:logging` - *required* - (Hash) A complex type that controls
      #     whether access logs are written for the streaming distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want
      #       CloudFront to save access logs to an Amazon S3 bucket. If you do
      #       not want to enable logging when you create a streaming
      #       distribution or if you want to disable logging for an existing
      #       streaming distribution, specify `false` for Enabled, and specify
      #       empty Bucket and Prefix elements. If you specify `false` for
      #       Enabled but you specify values for Bucket and Prefix, the values
      #       are automatically deleted.
      #     * `:bucket` - *required* - (String) The Amazon S3 bucket to store
      #       the access logs in, for example, myawslogbucket.s3.amazonaws.com.
      #     * `:prefix` - *required* - (String) An optional string that you
      #       want CloudFront to prefix to the access log filenames for this
      #       streaming distribution, for example, myprefix/. If you want to
      #       enable logging, but you do not want to specify a prefix, you
      #       still must include an empty Prefix element in the Logging
      #       element.
      #   * `:trusted_signers` - *required* - (Hash) A complex type that
      #     specifies the AWS accounts, if any, that you want to allow to
      #     create signed URLs for private content. If you want to require
      #     signed URLs in requests for objects in the target origin that match
      #     the PathPattern for this cache behavior, specify `true` for
      #     Enabled, and specify the applicable values for Quantity and Items.
      #     For more information, go to Using a Signed URL to Serve Private
      #     Content in the Amazon CloudFront Developer Guide. If you don't want
      #     to require signed URLs in requests for objects that match
      #     PathPattern, specify `false` for Enabled and 0 for Quantity. Omit
      #     Items. To add, change, or remove one or more trusted signers,
      #     change Enabled to `true` (if it's currently `false` ), change
      #     Quantity as applicable, and specify all of the trusted signers that
      #     you want to include in the updated distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want to
      #       require end users to use signed URLs to access the files
      #       specified by PathPattern and TargetOriginId.
      #     * `:quantity` - *required* - (Integer) The number of trusted
      #       signers for this cache behavior.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       trusted signers for this cache behavior. If Quantity is 0, you
      #       can omit Items.
      #   * `:price_class` - *required* - (String) A complex type that contains
      #     information about price class for this streaming distribution.
      #     Valid values include:
      #     * `PriceClass_100`
      #     * `PriceClass_200`
      #     * `PriceClass_All`
      #   * `:enabled` - *required* - (Boolean) Whether the streaming
      #     distribution is enabled to accept end user requests for content.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:streaming_distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:s3_origin` - (Hash)
      #       * `:domain_name` - (String)
      #       * `:origin_access_identity` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:trusted_signers` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method delete_cloud_front_origin_access_identity(options = {})
      # Calls the DELETE DeleteCloudFrontOriginAccessIdentity API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The origin access identity's id.
      # * `:if_match` - (String) The value of the ETag header you received from
      #   a previous GET or PUT request. For example: E2QWRUHAPOMQZL.
      # @return [Core::Response]

      # @!method delete_distribution(options = {})
      # Calls the DELETE DeleteDistribution API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The distribution id.
      # * `:if_match` - (String) The value of the ETag header you received when
      #   you disabled the distribution. For example: E2QWRUHAPOMQZL.
      # @return [Core::Response]

      # @!method delete_streaming_distribution(options = {})
      # Calls the DELETE DeleteStreamingDistribution API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The distribution id.
      # * `:if_match` - (String) The value of the ETag header you received when
      #   you disabled the streaming distribution. For example: E2QWRUHAPOMQZL.
      # @return [Core::Response]

      # @!method get_cloud_front_origin_access_identity(options = {})
      # Calls the GET GetCloudFrontOriginAccessIdentity API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identity's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:s3_canonical_user_id` - (String)
      #   * `:cloud_front_origin_access_identity_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:comment` - (String)

      # @!method get_cloud_front_origin_access_identity_config(options = {})
      # Calls the GET GetCloudFrontOriginAccessIdentityConfig API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The identity's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:caller_reference` - (String)
      #   * `:comment` - (String)

      # @!method get_distribution(options = {})
      # Calls the GET GetDistribution API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The distribution's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:in_progress_invalidation_batches` - (Integer)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:default_root_object` - (String)
      #     * `:origins` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:id` - (String)
      #         * `:domain_name` - (String)
      #         * `:s3_origin_config` - (Hash)
      #           * `:origin_access_identity` - (String)
      #         * `:custom_origin_config` - (Hash)
      #           * `:http_port` - (Integer)
      #           * `:https_port` - (Integer)
      #           * `:origin_protocol_policy` - (String)
      #     * `:default_cache_behavior` - (Hash)
      #       * `:target_origin_id` - (String)
      #       * `:forwarded_values` - (Hash)
      #         * `:query_string` - (Boolean)
      #         * `:cookies` - (Hash)
      #           * `:forward` - (String)
      #           * `:whitelisted_names` - (Hash)
      #             * `:quantity` - (Integer)
      #             * `:items` - (Array<String>)
      #       * `:trusted_signers` - (Hash)
      #         * `:enabled` - (Boolean)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #       * `:viewer_protocol_policy` - (String)
      #       * `:min_ttl` - (Integer)
      #     * `:cache_behaviors` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:path_pattern` - (String)
      #         * `:target_origin_id` - (String)
      #         * `:forwarded_values` - (Hash)
      #           * `:query_string` - (Boolean)
      #           * `:cookies` - (Hash)
      #             * `:forward` - (String)
      #             * `:whitelisted_names` - (Hash)
      #               * `:quantity` - (Integer)
      #               * `:items` - (Array<String>)
      #         * `:trusted_signers` - (Hash)
      #           * `:enabled` - (Boolean)
      #           * `:quantity` - (Integer)
      #           * `:items` - (Array<String>)
      #         * `:viewer_protocol_policy` - (String)
      #         * `:min_ttl` - (Integer)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:include_cookies` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method get_distribution_config(options = {})
      # Calls the GET GetDistributionConfig API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The distribution's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:caller_reference` - (String)
      #   * `:aliases` - (Hash)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<String>)
      #   * `:default_root_object` - (String)
      #   * `:origins` - (Hash)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:id` - (String)
      #       * `:domain_name` - (String)
      #       * `:s3_origin_config` - (Hash)
      #         * `:origin_access_identity` - (String)
      #       * `:custom_origin_config` - (Hash)
      #         * `:http_port` - (Integer)
      #         * `:https_port` - (Integer)
      #         * `:origin_protocol_policy` - (String)
      #   * `:default_cache_behavior` - (Hash)
      #     * `:target_origin_id` - (String)
      #     * `:forwarded_values` - (Hash)
      #       * `:query_string` - (Boolean)
      #       * `:cookies` - (Hash)
      #         * `:forward` - (String)
      #         * `:whitelisted_names` - (Hash)
      #           * `:quantity` - (Integer)
      #           * `:items` - (Array<String>)
      #     * `:trusted_signers` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:viewer_protocol_policy` - (String)
      #     * `:min_ttl` - (Integer)
      #   * `:cache_behaviors` - (Hash)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:path_pattern` - (String)
      #       * `:target_origin_id` - (String)
      #       * `:forwarded_values` - (Hash)
      #         * `:query_string` - (Boolean)
      #         * `:cookies` - (Hash)
      #           * `:forward` - (String)
      #           * `:whitelisted_names` - (Hash)
      #             * `:quantity` - (Integer)
      #             * `:items` - (Array<String>)
      #       * `:trusted_signers` - (Hash)
      #         * `:enabled` - (Boolean)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #       * `:viewer_protocol_policy` - (String)
      #       * `:min_ttl` - (Integer)
      #   * `:comment` - (String)
      #   * `:logging` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:include_cookies` - (Boolean)
      #     * `:bucket` - (String)
      #     * `:prefix` - (String)
      #   * `:price_class` - (String)
      #   * `:enabled` - (Boolean)

      # @!method get_invalidation(options = {})
      # Calls the GET GetInvalidation API operation.
      # @param [Hash] options
      # * `:distribution_id` - *required* - (String) The distribution's id.
      # * `:id` - *required* - (String) The invalidation's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:create_time` - (Time)
      #   * `:invalidation_batch` - (Hash)
      #     * `:paths` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:caller_reference` - (String)

      # @!method get_streaming_distribution(options = {})
      # Calls the GET GetStreamingDistribution API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The streaming distribution's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:streaming_distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:s3_origin` - (Hash)
      #       * `:domain_name` - (String)
      #       * `:origin_access_identity` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:trusted_signers` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method get_streaming_distribution_config(options = {})
      # Calls the GET GetStreamingDistributionConfig API operation.
      # @param [Hash] options
      # * `:id` - *required* - (String) The streaming distribution's id.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:caller_reference` - (String)
      #   * `:s3_origin` - (Hash)
      #     * `:domain_name` - (String)
      #     * `:origin_access_identity` - (String)
      #   * `:aliases` - (Hash)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<String>)
      #   * `:comment` - (String)
      #   * `:logging` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:bucket` - (String)
      #     * `:prefix` - (String)
      #   * `:trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<String>)
      #   * `:price_class` - (String)
      #   * `:enabled` - (Boolean)

      # @!method list_cloud_front_origin_access_identities(options = {})
      # Calls the GET ListCloudFrontOriginAccessIdentities API operation.
      # @param [Hash] options
      # * `:marker` - (String) Use this when paginating results to indicate
      #   where to begin in your list of origin access identities. The results
      #   include identities in the list that occur after the marker. To get
      #   the next page of results, set the Marker to the value of the
      #   NextMarker from the current page's response (which is also the ID of
      #   the last identity on that page).
      # * `:max_items` - (Integer) The maximum number of origin access
      #   identities you want in the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (Integer)
      #   * `:is_truncated` - (Boolean)
      #   * `:quantity` - (Integer)
      #   * `:items` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:s3_canonical_user_id` - (String)
      #     * `:comment` - (String)

      # @!method list_distributions(options = {})
      # Calls the GET ListDistributions API operation.
      # @param [Hash] options
      # * `:marker` - (String) Use this when paginating results to indicate
      #   where to begin in your list of distributions. The results include
      #   distributions in the list that occur after the marker. To get the
      #   next page of results, set the Marker to the value of the NextMarker
      #   from the current page's response (which is also the ID of the last
      #   distribution on that page).
      # * `:max_items` - (Integer) The maximum number of distributions you want
      #   in the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (Integer)
      #   * `:is_truncated` - (Boolean)
      #   * `:quantity` - (Integer)
      #   * `:items` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:last_modified_time` - (Time)
      #     * `:domain_name` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:origins` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:id` - (String)
      #         * `:domain_name` - (String)
      #         * `:s3_origin_config` - (Hash)
      #           * `:origin_access_identity` - (String)
      #         * `:custom_origin_config` - (Hash)
      #           * `:http_port` - (Integer)
      #           * `:https_port` - (Integer)
      #           * `:origin_protocol_policy` - (String)
      #     * `:default_cache_behavior` - (Hash)
      #       * `:target_origin_id` - (String)
      #       * `:forwarded_values` - (Hash)
      #         * `:query_string` - (Boolean)
      #         * `:cookies` - (Hash)
      #           * `:forward` - (String)
      #           * `:whitelisted_names` - (Hash)
      #             * `:quantity` - (Integer)
      #             * `:items` - (Array<String>)
      #       * `:trusted_signers` - (Hash)
      #         * `:enabled` - (Boolean)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #       * `:viewer_protocol_policy` - (String)
      #       * `:min_ttl` - (Integer)
      #     * `:cache_behaviors` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:path_pattern` - (String)
      #         * `:target_origin_id` - (String)
      #         * `:forwarded_values` - (Hash)
      #           * `:query_string` - (Boolean)
      #           * `:cookies` - (Hash)
      #             * `:forward` - (String)
      #             * `:whitelisted_names` - (Hash)
      #               * `:quantity` - (Integer)
      #               * `:items` - (Array<String>)
      #         * `:trusted_signers` - (Hash)
      #           * `:enabled` - (Boolean)
      #           * `:quantity` - (Integer)
      #           * `:items` - (Array<String>)
      #         * `:viewer_protocol_policy` - (String)
      #         * `:min_ttl` - (Integer)
      #     * `:comment` - (String)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method list_invalidations(options = {})
      # Calls the GET ListInvalidations API operation.
      # @param [Hash] options
      # * `:distribution_id` - *required* - (String) The distribution's id.
      # * `:marker` - (String) Use this parameter when paginating results to
      #   indicate where to begin in your list of invalidation batches. Because
      #   the results are returned in decreasing order from most recent to
      #   oldest, the most recent results are on the first page, the second
      #   page will contain earlier results, and so on. To get the next page of
      #   results, set the Marker to the value of the NextMarker from the
      #   current page's response. This value is the same as the ID of the last
      #   invalidation batch on that page.
      # * `:max_items` - (Integer) The maximum number of invalidation batches
      #   you want in the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (Integer)
      #   * `:is_truncated` - (Boolean)
      #   * `:quantity` - (Integer)
      #   * `:items` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:create_time` - (Time)
      #     * `:status` - (String)

      # @!method list_streaming_distributions(options = {})
      # Calls the GET ListStreamingDistributions API operation.
      # @param [Hash] options
      # * `:marker` - (String) Use this when paginating results to indicate
      #   where to begin in your list of streaming distributions. The results
      #   include distributions in the list that occur after the marker. To get
      #   the next page of results, set the Marker to the value of the
      #   NextMarker from the current page's response (which is also the ID of
      #   the last distribution on that page).
      # * `:max_items` - (Integer) The maximum number of streaming
      #   distributions you want in the response body.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:marker` - (String)
      #   * `:next_marker` - (String)
      #   * `:max_items` - (Integer)
      #   * `:is_truncated` - (Boolean)
      #   * `:quantity` - (Integer)
      #   * `:items` - (Array<Hash>)
      #     * `:id` - (String)
      #     * `:status` - (String)
      #     * `:last_modified_time` - (Time)
      #     * `:domain_name` - (String)
      #     * `:s3_origin` - (Hash)
      #       * `:domain_name` - (String)
      #       * `:origin_access_identity` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:trusted_signers` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:comment` - (String)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method update_cloud_front_origin_access_identity(options = {})
      # Calls the PUT UpdateCloudFrontOriginAccessIdentity API operation.
      # @param [Hash] options
      # * `:cloud_front_origin_access_identity_config` - *required* - (Hash)
      #   The identity's configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the
      #     CloudFrontOriginAccessIdentityConfig object), a new origin access
      #     identity is created. If the CallerReference is a value you already
      #     sent in a previous request to create an identity, and the content
      #     of the CloudFrontOriginAccessIdentityConfig is identical to the
      #     original request (ignoring white space), the response includes the
      #     same information returned to the original request. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create an identity but the content of the
      #     CloudFrontOriginAccessIdentityConfig is different from the original
      #     request, CloudFront returns a
      #     CloudFrontOriginAccessIdentityAlreadyExists error.
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the origin access identity.
      # * `:id` - *required* - (String) The identity's id.
      # * `:if_match` - (String) The value of the ETag header you received when
      #   retrieving the identity's configuration. For example: E2QWRUHAPOMQZL.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:s3_canonical_user_id` - (String)
      #   * `:cloud_front_origin_access_identity_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:comment` - (String)

      # @!method update_distribution(options = {})
      # Calls the PUT UpdateDistribution API operation.
      # @param [Hash] options
      # * `:distribution_config` - *required* - (Hash) The distribution's
      #   configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the DistributionConfig object), a new
      #     distribution is created. If the CallerReference is a value you
      #     already sent in a previous request to create a distribution, and
      #     the content of the DistributionConfig is identical to the original
      #     request (ignoring white space), the response includes the same
      #     information returned to the original request. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create a distribution but the content of the DistributionConfig
      #     is different from the original request, CloudFront returns a
      #     DistributionAlreadyExists error.
      #   * `:aliases` - *required* - (Hash) A complex type that contains
      #     information about CNAMEs (alternate domain names), if any, for this
      #     distribution.
      #     * `:quantity` - *required* - (Integer) The number of CNAMEs, if
      #       any, for this distribution.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       CNAME elements, if any, for this distribution. If Quantity is 0,
      #       you can omit Items.
      #   * `:default_root_object` - *required* - (String) The object that you
      #     want CloudFront to return (for example, index.html) when an end
      #     user requests the root URL for your distribution
      #     (http://www.example.com) instead of an object in your distribution
      #     (http://www.example.com/index.html). Specifying a default root
      #     object avoids exposing the contents of your distribution. If you
      #     don't want to specify a default root object when you create a
      #     distribution, include an empty DefaultRootObject element. To delete
      #     the default root object from an existing distribution, update the
      #     distribution configuration and include an empty DefaultRootObject
      #     element. To replace the default root object, update the
      #     distribution configuration and specify the new object.
      #   * `:origins` - *required* - (Hash) A complex type that contains
      #     information about origins for this distribution.
      #     * `:quantity` - *required* - (Integer) The number of origins for
      #       this distribution.
      #     * `:items` - (Array<Hash>) A complex type that contains origins for
      #       this distribution.
      #       * `:id` - *required* - (String) A unique identifier for the
      #         origin. The value of Id must be unique within the distribution.
      #         You use the value of Id when you create a cache behavior. The
      #         Id identifies the origin that CloudFront routes a request to
      #         when the request matches the path pattern for that cache
      #         behavior.
      #       * `:domain_name` - *required* - (String) Amazon S3 origins: The
      #         DNS name of the Amazon S3 bucket from which you want CloudFront
      #         to get objects for this origin, for example,
      #         myawsbucket.s3.amazonaws.com. Custom origins: The DNS domain
      #         name for the HTTP server from which you want CloudFront to get
      #         objects for this origin, for example, www.example.com.
      #       * `:s3_origin_config` - (Hash) A complex type that contains
      #         information about the Amazon S3 origin. If the origin is a
      #         custom origin, use the CustomOriginConfig element instead.
      #         * `:origin_access_identity` - *required* - (String) The
      #           CloudFront origin access identity to associate with the
      #           origin. Use an origin access identity to configure the origin
      #           so that end users can only access objects in an Amazon S3
      #           bucket through CloudFront. If you want end users to be able
      #           to access objects using either the CloudFront URL or the
      #           Amazon S3 URL, specify an empty OriginAccessIdentity element.
      #           To delete the origin access identity from an existing
      #           distribution, update the distribution configuration and
      #           include an empty OriginAccessIdentity element. To replace the
      #           origin access identity, update the distribution configuration
      #           and specify the new origin access identity.
      #       * `:custom_origin_config` - (Hash) A complex type that contains
      #         information about a custom origin. If the origin is an Amazon
      #         S3 bucket, use the S3OriginConfig element instead.
      #         * `:http_port` - *required* - (Integer) The HTTP port the
      #           custom origin listens on.
      #         * `:https_port` - *required* - (Integer) The HTTPS port the
      #           custom origin listens on.
      #         * `:origin_protocol_policy` - *required* - (String) The origin
      #           protocol policy to apply to your origin. Valid values
      #           include:
      #           * `http-only`
      #           * `match-viewer`
      #   * `:default_cache_behavior` - *required* - (Hash) A complex type that
      #     describes the default cache behavior if you do not specify a
      #     CacheBehavior element or if files don't match any of the values of
      #     PathPattern in CacheBehavior elements.You must create exactly one
      #     default cache behavior.
      #     * `:target_origin_id` - *required* - (String) The value of ID for
      #       the origin that you want CloudFront to route requests to when a
      #       request matches the path pattern either for a cache behavior or
      #       for the default cache behavior.
      #     * `:forwarded_values` - *required* - (Hash) A complex type that
      #       specifies how CloudFront handles query strings and cookies.
      #       * `:query_string` - *required* - (Boolean) Indicates whether you
      #         want CloudFront to forward query strings to the origin that is
      #         associated with this cache behavior. If so, specify `true` ; if
      #         not, specify `false` .
      #       * `:cookies` - *required* - (Hash) A complex type that specifies
      #         how CloudFront handles cookies.
      #         * `:forward` - *required* - (String) Use this element to
      #           specify whether you want CloudFront to forward cookies to the
      #           origin that is associated with this cache behavior. You can
      #           specify all, none or whitelist. If you choose All, CloudFront
      #           forwards all cookies regardless of how many your application
      #           uses. Valid values include:
      #           * `none`
      #           * `whitelist`
      #           * `all`
      #         * `:whitelisted_names` - (Hash) A complex type that specifies
      #           the whitelisted cookies, if any, that you want CloudFront to
      #           forward to your origin that is associated with this cache
      #           behavior.
      #           * `:quantity` - *required* - (Integer) The number of
      #             whitelisted cookies for this cache behavior.
      #           * `:items` - (Array<String>) Optional: A complex type that
      #             contains whitelisted cookies for this cache behavior. If
      #             Quantity is 0, you can omit Items.
      #     * `:trusted_signers` - *required* - (Hash) A complex type that
      #       specifies the AWS accounts, if any, that you want to allow to
      #       create signed URLs for private content. If you want to require
      #       signed URLs in requests for objects in the target origin that
      #       match the PathPattern for this cache behavior, specify `true` for
      #       Enabled, and specify the applicable values for Quantity and
      #       Items. For more information, go to Using a Signed URL to Serve
      #       Private Content in the Amazon CloudFront Developer Guide. If you
      #       don't want to require signed URLs in requests for objects that
      #       match PathPattern, specify `false` for Enabled and 0 for
      #       Quantity. Omit Items. To add, change, or remove one or more
      #       trusted signers, change Enabled to `true` (if it's currently
      #       `false` ), change Quantity as applicable, and specify all of the
      #       trusted signers that you want to include in the updated
      #       distribution.
      #       * `:enabled` - *required* - (Boolean) Specifies whether you want
      #         to require end users to use signed URLs to access the files
      #         specified by PathPattern and TargetOriginId.
      #       * `:quantity` - *required* - (Integer) The number of trusted
      #         signers for this cache behavior.
      #       * `:items` - (Array<String>) Optional: A complex type that
      #         contains trusted signers for this cache behavior. If Quantity
      #         is 0, you can omit Items.
      #     * `:viewer_protocol_policy` - *required* - (String) Use this
      #       element to specify the protocol that users can use to access the
      #       files in the origin specified by TargetOriginId when a request
      #       matches the path pattern in PathPattern. If you want CloudFront
      #       to allow end users to use any available protocol, specify
      #       allow-all. If you want CloudFront to require HTTPS, specify
      #       https. Valid values include:
      #       * `allow-all`
      #       * `https-only`
      #     * `:min_ttl` - *required* - (Integer) The minimum amount of time
      #       that you want objects to stay in CloudFront caches before
      #       CloudFront queries your origin to see whether the object has been
      #       updated.You can specify a value from 0 to 3,153,600,000 seconds
      #       (100 years).
      #   * `:cache_behaviors` - *required* - (Hash) A complex type that
      #     contains zero or more CacheBehavior elements.
      #     * `:quantity` - *required* - (Integer) The number of cache
      #       behaviors for this distribution.
      #     * `:items` - (Array<Hash>) Optional: A complex type that contains
      #       cache behaviors for this distribution. If Quantity is 0, you can
      #       omit Items.
      #       * `:path_pattern` - *required* - (String) The pattern (for
      #         example, images/*.jpg) that specifies which requests you want
      #         this cache behavior to apply to. When CloudFront receives an
      #         end-user request, the requested path is compared with path
      #         patterns in the order in which cache behaviors are listed in
      #         the distribution. The path pattern for the default cache
      #         behavior is * and cannot be changed. If the request for an
      #         object does not match the path pattern for any cache behaviors,
      #         CloudFront applies the behavior in the default cache behavior.
      #       * `:target_origin_id` - *required* - (String) The value of ID for
      #         the origin that you want CloudFront to route requests to when a
      #         request matches the path pattern either for a cache behavior or
      #         for the default cache behavior.
      #       * `:forwarded_values` - *required* - (Hash) A complex type that
      #         specifies how CloudFront handles query strings and cookies.
      #         * `:query_string` - *required* - (Boolean) Indicates whether
      #           you want CloudFront to forward query strings to the origin
      #           that is associated with this cache behavior. If so, specify
      #           `true` ; if not, specify `false` .
      #         * `:cookies` - *required* - (Hash) A complex type that
      #           specifies how CloudFront handles cookies.
      #           * `:forward` - *required* - (String) Use this element to
      #             specify whether you want CloudFront to forward cookies to
      #             the origin that is associated with this cache behavior. You
      #             can specify all, none or whitelist. If you choose All,
      #             CloudFront forwards all cookies regardless of how many your
      #             application uses. Valid values include:
      #             * `none`
      #             * `whitelist`
      #             * `all`
      #           * `:whitelisted_names` - (Hash) A complex type that specifies
      #             the whitelisted cookies, if any, that you want CloudFront
      #             to forward to your origin that is associated with this
      #             cache behavior.
      #             * `:quantity` - *required* - (Integer) The number of
      #               whitelisted cookies for this cache behavior.
      #             * `:items` - (Array<String>) Optional: A complex type that
      #               contains whitelisted cookies for this cache behavior. If
      #               Quantity is 0, you can omit Items.
      #       * `:trusted_signers` - *required* - (Hash) A complex type that
      #         specifies the AWS accounts, if any, that you want to allow to
      #         create signed URLs for private content. If you want to require
      #         signed URLs in requests for objects in the target origin that
      #         match the PathPattern for this cache behavior, specify `true`
      #         for Enabled, and specify the applicable values for Quantity and
      #         Items. For more information, go to Using a Signed URL to Serve
      #         Private Content in the Amazon CloudFront Developer Guide. If
      #         you don't want to require signed URLs in requests for objects
      #         that match PathPattern, specify `false` for Enabled and 0 for
      #         Quantity. Omit Items. To add, change, or remove one or more
      #         trusted signers, change Enabled to `true` (if it's currently
      #         `false` ), change Quantity as applicable, and specify all of
      #         the trusted signers that you want to include in the updated
      #         distribution.
      #         * `:enabled` - *required* - (Boolean) Specifies whether you
      #           want to require end users to use signed URLs to access the
      #           files specified by PathPattern and TargetOriginId.
      #         * `:quantity` - *required* - (Integer) The number of trusted
      #           signers for this cache behavior.
      #         * `:items` - (Array<String>) Optional: A complex type that
      #           contains trusted signers for this cache behavior. If Quantity
      #           is 0, you can omit Items.
      #       * `:viewer_protocol_policy` - *required* - (String) Use this
      #         element to specify the protocol that users can use to access
      #         the files in the origin specified by TargetOriginId when a
      #         request matches the path pattern in PathPattern. If you want
      #         CloudFront to allow end users to use any available protocol,
      #         specify allow-all. If you want CloudFront to require HTTPS,
      #         specify https. Valid values include:
      #         * `allow-all`
      #         * `https-only`
      #       * `:min_ttl` - *required* - (Integer) The minimum amount of time
      #         that you want objects to stay in CloudFront caches before
      #         CloudFront queries your origin to see whether the object has
      #         been updated.You can specify a value from 0 to 3,153,600,000
      #         seconds (100 years).
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the distribution.
      #   * `:logging` - *required* - (Hash) A complex type that controls
      #     whether access logs are written for the distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want
      #       CloudFront to save access logs to an Amazon S3 bucket. If you do
      #       not want to enable logging when you create a distribution or if
      #       you want to disable logging for an existing distribution, specify
      #       `false` for Enabled, and specify empty Bucket and Prefix
      #       elements. If you specify `false` for Enabled but you specify
      #       values for Bucket, prefix and IncludeCookies, the values are
      #       automatically deleted.
      #     * `:include_cookies` - *required* - (Boolean) Specifies whether you
      #       want CloudFront to include cookies in access logs, specify `true`
      #       for IncludeCookies. If you choose to include cookies in logs,
      #       CloudFront logs all cookies regardless of how you configure the
      #       cache behaviors for this distribution. If you do not want to
      #       include cookies when you create a distribution or if you want to
      #       disable include cookies for an existing distribution, specify
      #       `false` for IncludeCookies.
      #     * `:bucket` - *required* - (String) The Amazon S3 bucket to store
      #       the access logs in, for example, myawslogbucket.s3.amazonaws.com.
      #     * `:prefix` - *required* - (String) An optional string that you
      #       want CloudFront to prefix to the access log filenames for this
      #       distribution, for example, myprefix/. If you want to enable
      #       logging, but you do not want to specify a prefix, you still must
      #       include an empty Prefix element in the Logging element.
      #   * `:price_class` - *required* - (String) A complex type that contains
      #     information about price class for this distribution. Valid values
      #     include:
      #     * `PriceClass_100`
      #     * `PriceClass_200`
      #     * `PriceClass_All`
      #   * `:enabled` - *required* - (Boolean) Whether the distribution is
      #     enabled to accept end user requests for content.
      # * `:id` - *required* - (String) The distribution's id.
      # * `:if_match` - (String) The value of the ETag header you received when
      #   retrieving the distribution's configuration. For example:
      #   E2QWRUHAPOMQZL.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:in_progress_invalidation_batches` - (Integer)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:default_root_object` - (String)
      #     * `:origins` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:id` - (String)
      #         * `:domain_name` - (String)
      #         * `:s3_origin_config` - (Hash)
      #           * `:origin_access_identity` - (String)
      #         * `:custom_origin_config` - (Hash)
      #           * `:http_port` - (Integer)
      #           * `:https_port` - (Integer)
      #           * `:origin_protocol_policy` - (String)
      #     * `:default_cache_behavior` - (Hash)
      #       * `:target_origin_id` - (String)
      #       * `:forwarded_values` - (Hash)
      #         * `:query_string` - (Boolean)
      #         * `:cookies` - (Hash)
      #           * `:forward` - (String)
      #           * `:whitelisted_names` - (Hash)
      #             * `:quantity` - (Integer)
      #             * `:items` - (Array<String>)
      #       * `:trusted_signers` - (Hash)
      #         * `:enabled` - (Boolean)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #       * `:viewer_protocol_policy` - (String)
      #       * `:min_ttl` - (Integer)
      #     * `:cache_behaviors` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<Hash>)
      #         * `:path_pattern` - (String)
      #         * `:target_origin_id` - (String)
      #         * `:forwarded_values` - (Hash)
      #           * `:query_string` - (Boolean)
      #           * `:cookies` - (Hash)
      #             * `:forward` - (String)
      #             * `:whitelisted_names` - (Hash)
      #               * `:quantity` - (Integer)
      #               * `:items` - (Array<String>)
      #         * `:trusted_signers` - (Hash)
      #           * `:enabled` - (Boolean)
      #           * `:quantity` - (Integer)
      #           * `:items` - (Array<String>)
      #         * `:viewer_protocol_policy` - (String)
      #         * `:min_ttl` - (Integer)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:include_cookies` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # @!method update_streaming_distribution(options = {})
      # Calls the PUT UpdateStreamingDistribution API operation.
      # @param [Hash] options
      # * `:streaming_distribution_config` - *required* - (Hash) The streaming
      #   distribution's configuration information.
      #   * `:caller_reference` - *required* - (String) A unique number that
      #     ensures the request can't be replayed. If the CallerReference is
      #     new (no matter the content of the StreamingDistributionConfig
      #     object), a new streaming distribution is created. If the
      #     CallerReference is a value you already sent in a previous request
      #     to create a streaming distribution, and the content of the
      #     StreamingDistributionConfig is identical to the original request
      #     (ignoring white space), the response includes the same information
      #     returned to the original request. If the CallerReference is a value
      #     you already sent in a previous request to create a streaming
      #     distribution but the content of the StreamingDistributionConfig is
      #     different from the original request, CloudFront returns a
      #     DistributionAlreadyExists error.
      #   * `:s3_origin` - *required* - (Hash) A complex type that contains
      #     information about the Amazon S3 bucket from which you want
      #     CloudFront to get your media files for distribution.
      #     * `:domain_name` - *required* - (String) The DNS name of the S3
      #       origin.
      #     * `:origin_access_identity` - *required* - (String) Your S3
      #       origin's origin access identity.
      #   * `:aliases` - *required* - (Hash) A complex type that contains
      #     information about CNAMEs (alternate domain names), if any, for this
      #     streaming distribution.
      #     * `:quantity` - *required* - (Integer) The number of CNAMEs, if
      #       any, for this distribution.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       CNAME elements, if any, for this distribution. If Quantity is 0,
      #       you can omit Items.
      #   * `:comment` - *required* - (String) Any comments you want to include
      #     about the streaming distribution.
      #   * `:logging` - *required* - (Hash) A complex type that controls
      #     whether access logs are written for the streaming distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want
      #       CloudFront to save access logs to an Amazon S3 bucket. If you do
      #       not want to enable logging when you create a streaming
      #       distribution or if you want to disable logging for an existing
      #       streaming distribution, specify `false` for Enabled, and specify
      #       empty Bucket and Prefix elements. If you specify `false` for
      #       Enabled but you specify values for Bucket and Prefix, the values
      #       are automatically deleted.
      #     * `:bucket` - *required* - (String) The Amazon S3 bucket to store
      #       the access logs in, for example, myawslogbucket.s3.amazonaws.com.
      #     * `:prefix` - *required* - (String) An optional string that you
      #       want CloudFront to prefix to the access log filenames for this
      #       streaming distribution, for example, myprefix/. If you want to
      #       enable logging, but you do not want to specify a prefix, you
      #       still must include an empty Prefix element in the Logging
      #       element.
      #   * `:trusted_signers` - *required* - (Hash) A complex type that
      #     specifies the AWS accounts, if any, that you want to allow to
      #     create signed URLs for private content. If you want to require
      #     signed URLs in requests for objects in the target origin that match
      #     the PathPattern for this cache behavior, specify `true` for
      #     Enabled, and specify the applicable values for Quantity and Items.
      #     For more information, go to Using a Signed URL to Serve Private
      #     Content in the Amazon CloudFront Developer Guide. If you don't want
      #     to require signed URLs in requests for objects that match
      #     PathPattern, specify `false` for Enabled and 0 for Quantity. Omit
      #     Items. To add, change, or remove one or more trusted signers,
      #     change Enabled to `true` (if it's currently `false` ), change
      #     Quantity as applicable, and specify all of the trusted signers that
      #     you want to include in the updated distribution.
      #     * `:enabled` - *required* - (Boolean) Specifies whether you want to
      #       require end users to use signed URLs to access the files
      #       specified by PathPattern and TargetOriginId.
      #     * `:quantity` - *required* - (Integer) The number of trusted
      #       signers for this cache behavior.
      #     * `:items` - (Array<String>) Optional: A complex type that contains
      #       trusted signers for this cache behavior. If Quantity is 0, you
      #       can omit Items.
      #   * `:price_class` - *required* - (String) A complex type that contains
      #     information about price class for this streaming distribution.
      #     Valid values include:
      #     * `PriceClass_100`
      #     * `PriceClass_200`
      #     * `PriceClass_All`
      #   * `:enabled` - *required* - (Boolean) Whether the streaming
      #     distribution is enabled to accept end user requests for content.
      # * `:id` - *required* - (String) The streaming distribution's id.
      # * `:if_match` - (String) The value of the ETag header you received when
      #   retrieving the streaming distribution's configuration. For example:
      #   E2QWRUHAPOMQZL.
      # @return [Core::Response]
      #   The #data method of the response object returns
      #   a hash with the following structure:
      #
      #   * `:id` - (String)
      #   * `:status` - (String)
      #   * `:last_modified_time` - (Time)
      #   * `:domain_name` - (String)
      #   * `:active_trusted_signers` - (Hash)
      #     * `:enabled` - (Boolean)
      #     * `:quantity` - (Integer)
      #     * `:items` - (Array<Hash>)
      #       * `:aws_account_number` - (String)
      #       * `:key_pair_ids` - (Hash)
      #         * `:quantity` - (Integer)
      #         * `:items` - (Array<String>)
      #   * `:streaming_distribution_config` - (Hash)
      #     * `:caller_reference` - (String)
      #     * `:s3_origin` - (Hash)
      #       * `:domain_name` - (String)
      #       * `:origin_access_identity` - (String)
      #     * `:aliases` - (Hash)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:comment` - (String)
      #     * `:logging` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:bucket` - (String)
      #       * `:prefix` - (String)
      #     * `:trusted_signers` - (Hash)
      #       * `:enabled` - (Boolean)
      #       * `:quantity` - (Integer)
      #       * `:items` - (Array<String>)
      #     * `:price_class` - (String)
      #     * `:enabled` - (Boolean)

      # end client methods #

      define_client_methods('2012-07-01')

    end
  end
end
