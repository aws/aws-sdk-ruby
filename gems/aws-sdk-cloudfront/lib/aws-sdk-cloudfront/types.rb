# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFront
    module Types

      # A complex type that lists the AWS accounts, if any, that you included
      # in the TrustedSigners complex type for the default cache behavior or
      # for any of the other cache behaviors for this distribution. These are
      # accounts that you want to allow to create signed URLs for private
      # content.
      class ActiveTrustedSigners < Struct.new(
        :enabled,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] enabled
        #   Each active trusted signer.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of unique trusted signers included in all cache
        #   behaviors. For example, if three cache behaviors all list the same
        #   three AWS accounts, the value of Quantity for ActiveTrustedSigners
        #   will be 3.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one Signer complex type for each unique
        #   trusted signer that is specified in the TrustedSigners complex type,
        #   including trusted signers in the default cache behavior and in all
        #   of the other cache behaviors.
        #   @return [Array<Types::Signer>]

      end

      # A complex type that contains information about CNAMEs (alternate
      # domain names), if any, for this distribution.
      # @note When making an API call, pass Aliases
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class Aliases < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of CNAMEs, if any, for this distribution.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains CNAME elements, if any, for
        #   this distribution. If Quantity is 0, you can omit Items.
        #   @return [Array<String>]

      end

      # A complex type that controls which HTTP methods CloudFront processes
      # and forwards to your Amazon S3 bucket or your custom origin. There are
      # three choices: - CloudFront forwards only GET and HEAD requests. -
      # CloudFront forwards only GET, HEAD and OPTIONS requests. - CloudFront
      # forwards GET, HEAD, OPTIONS, PUT, PATCH, POST, and DELETE requests. If
      # you pick the third choice, you may need to restrict access to your
      # Amazon S3 bucket or to your custom origin so users can\'t perform
      # operations that you don\'t want them to. For example, you may not want
      # users to have permission to delete objects from your origin.
      # @note When making an API call, pass AllowedMethods
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #         cached_methods: {
      #           quantity: 1, # required
      #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #         },
      #       }
      class AllowedMethods < Struct.new(
        :quantity,
        :items,
        :cached_methods)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of HTTP methods that you want CloudFront to forward to
        #   your origin. Valid values are 2 (for GET and HEAD requests), 3 (for
        #   GET, HEAD and OPTIONS requests) and 7 (for GET, HEAD, OPTIONS, PUT,
        #   PATCH, POST, and DELETE requests).
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains the HTTP methods that you want
        #   CloudFront to process and forward to your origin.
        #   @return [Array<String>]

        # @!attribute [rw] cached_methods
        #   A complex type that controls whether CloudFront caches the response
        #   to requests using the specified HTTP methods. There are two choices:
        #   - CloudFront caches responses to GET and HEAD requests. - CloudFront
        #   caches responses to GET, HEAD, and OPTIONS requests. If you pick the
        #   second choice for your S3 Origin, you may need to forward
        #   Access-Control-Request-Method, Access-Control-Request-Headers and
        #   Origin headers for the responses to be cached correctly.
        #   @return [Types::CachedMethods]

      end

      # A complex type that describes how CloudFront processes requests. You
      # can create up to 10 cache behaviors.You must create at least as many
      # cache behaviors (including the default cache behavior) as you have
      # origins if you want CloudFront to distribute objects from all of the
      # origins. Each cache behavior specifies the one origin from which you
      # want CloudFront to get objects. If you have two origins and only the
      # default cache behavior, the default cache behavior will cause
      # CloudFront to get objects from one of the origins, but the other
      # origin will never be used. If you don\'t want to specify any cache
      # behaviors, include only an empty CacheBehaviors element. Don\'t
      # include an empty CacheBehavior element, or CloudFront returns a
      # MalformedXML error. To delete all cache behaviors in an existing
      # distribution, update the distribution configuration and include only
      # an empty CacheBehaviors element. To add, change, or remove one or more
      # cache behaviors, update the distribution configuration and specify all
      # of the cache behaviors that you want to include in the updated
      # distribution.
      # @note When making an API call, pass CacheBehavior
      #   data as a hash:
      #
      #       {
      #         path_pattern: "string", # required
      #         target_origin_id: "string", # required
      #         forwarded_values: { # required
      #           query_string: false, # required
      #           cookies: { # required
      #             forward: "none", # required, accepts none, whitelist, all
      #             whitelisted_names: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           headers: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           query_string_cache_keys: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #         },
      #         trusted_signers: { # required
      #           enabled: false, # required
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #         min_ttl: 1, # required
      #         allowed_methods: {
      #           quantity: 1, # required
      #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #           cached_methods: {
      #             quantity: 1, # required
      #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #           },
      #         },
      #         smooth_streaming: false,
      #         default_ttl: 1,
      #         max_ttl: 1,
      #         compress: false,
      #       }
      class CacheBehavior < Struct.new(
        :path_pattern,
        :target_origin_id,
        :forwarded_values,
        :trusted_signers,
        :viewer_protocol_policy,
        :min_ttl,
        :allowed_methods,
        :smooth_streaming,
        :default_ttl,
        :max_ttl,
        :compress)

        include Aws::Structure

        # @!attribute [rw] path_pattern
        #   The pattern (for example, images/\*.jpg) that specifies which
        #   requests you want this cache behavior to apply to. When CloudFront
        #   receives an end-user request, the requested path is compared with
        #   path patterns in the order in which cache behaviors are listed in
        #   the distribution. The path pattern for the default cache behavior is
        #   \* and cannot be changed. If the request for an object does not
        #   match the path pattern for any cache behaviors, CloudFront applies
        #   the behavior in the default cache behavior.
        #   @return [String]

        # @!attribute [rw] target_origin_id
        #   The value of ID for the origin that you want CloudFront to route
        #   requests to when a request matches the path pattern either for a
        #   cache behavior or for the default cache behavior.
        #   @return [String]

        # @!attribute [rw] forwarded_values
        #   A complex type that specifies how CloudFront handles query strings,
        #   cookies and headers.
        #   @return [Types::ForwardedValues]

        # @!attribute [rw] trusted_signers
        #   A complex type that specifies the AWS accounts, if any, that you
        #   want to allow to create signed URLs for private content. If you want
        #   to require signed URLs in requests for objects in the target origin
        #   that match the PathPattern for this cache behavior, specify true for
        #   Enabled, and specify the applicable values for Quantity and Items.
        #   For more information, go to Using a Signed URL to Serve Private
        #   Content in the Amazon CloudFront Developer Guide. If you don\'t want
        #   to require signed URLs in requests for objects that match
        #   PathPattern, specify false for Enabled and 0 for Quantity. Omit
        #   Items. To add, change, or remove one or more trusted signers, change
        #   Enabled to true (if it\'s currently false), change Quantity as
        #   applicable, and specify all of the trusted signers that you want to
        #   include in the updated distribution.
        #   @return [Types::TrustedSigners]

        # @!attribute [rw] viewer_protocol_policy
        #   Use this element to specify the protocol that users can use to
        #   access the files in the origin specified by TargetOriginId when a
        #   request matches the path pattern in PathPattern. If you want
        #   CloudFront to allow end users to use any available protocol, specify
        #   allow-all. If you want CloudFront to require HTTPS, specify https.
        #   If you want CloudFront to respond to an HTTP request with an HTTP
        #   status code of 301 (Moved Permanently) and the HTTPS URL, specify
        #   redirect-to-https. The viewer then resubmits the request using the
        #   HTTPS URL.
        #   @return [String]

        # @!attribute [rw] min_ttl
        #   The minimum amount of time that you want objects to stay in
        #   CloudFront caches before CloudFront queries your origin to see
        #   whether the object has been updated.You can specify a value from 0
        #   to 3,153,600,000 seconds (100 years).
        #   @return [Integer]

        # @!attribute [rw] allowed_methods
        #   A complex type that controls which HTTP methods CloudFront processes
        #   and forwards to your Amazon S3 bucket or your custom origin. There
        #   are three choices: - CloudFront forwards only GET and HEAD requests.
        #   - CloudFront forwards only GET, HEAD and OPTIONS requests. -
        #   CloudFront forwards GET, HEAD, OPTIONS, PUT, PATCH, POST, and DELETE
        #   requests. If you pick the third choice, you may need to restrict
        #   access to your Amazon S3 bucket or to your custom origin so users
        #   can\'t perform operations that you don\'t want them to. For example,
        #   you may not want users to have permission to delete objects from
        #   your origin.
        #   @return [Types::AllowedMethods]

        # @!attribute [rw] smooth_streaming
        #   Indicates whether you want to distribute media files in Microsoft
        #   Smooth Streaming format using the origin that is associated with
        #   this cache behavior. If so, specify true; if not, specify false.
        #   @return [Boolean]

        # @!attribute [rw] default_ttl
        #   If you don\'t configure your origin to add a Cache-Control max-age
        #   directive or an Expires header, DefaultTTL is the default amount of
        #   time (in seconds) that an object is in a CloudFront cache before
        #   CloudFront forwards another request to your origin to determine
        #   whether the object has been updated. The value that you specify
        #   applies only when your origin does not add HTTP headers such as
        #   Cache-Control max-age, Cache-Control s-maxage, and Expires to
        #   objects. You can specify a value from 0 to 3,153,600,000 seconds
        #   (100 years).
        #   @return [Integer]

        # @!attribute [rw] max_ttl
        #   The maximum amount of time (in seconds) that an object is in a
        #   CloudFront cache before CloudFront forwards another request to your
        #   origin to determine whether the object has been updated. The value
        #   that you specify applies only when your origin adds HTTP headers
        #   such as Cache-Control max-age, Cache-Control s-maxage, and Expires
        #   to objects. You can specify a value from 0 to 3,153,600,000 seconds
        #   (100 years).
        #   @return [Integer]

        # @!attribute [rw] compress
        #   Whether you want CloudFront to automatically compress content for
        #   web requests that include Accept-Encoding: gzip in the request
        #   header. If so, specify true; if not, specify false. CloudFront
        #   compresses files larger than 1000 bytes and less than 1 megabyte for
        #   both Amazon S3 and custom origins. When a CloudFront edge location
        #   is unusually busy, some files might not be compressed. The value of
        #   the Content-Type header must be on the list of file types that
        #   CloudFront will compress. For the current list, see [Serving
        #   Compressed Content][1] in the Amazon CloudFront Developer Guide. If
        #   you configure CloudFront to compress content, CloudFront removes the
        #   ETag response header from the objects that it compresses. The ETag
        #   header indicates that the version in a CloudFront edge cache is
        #   identical to the version on the origin server, but after compression
        #   the two versions are no longer identical. As a result, for
        #   compressed objects, CloudFront can\'t use the ETag header to
        #   determine whether an expired object in the CloudFront edge cache is
        #   still the latest version.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/console/cloudfront/compressed-content
        #   @return [Boolean]

      end

      # A complex type that contains zero or more CacheBehavior elements.
      # @note When making an API call, pass CacheBehaviors
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: [
      #           {
      #             path_pattern: "string", # required
      #             target_origin_id: "string", # required
      #             forwarded_values: { # required
      #               query_string: false, # required
      #               cookies: { # required
      #                 forward: "none", # required, accepts none, whitelist, all
      #                 whitelisted_names: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               headers: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               query_string_cache_keys: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             trusted_signers: { # required
      #               enabled: false, # required
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #             min_ttl: 1, # required
      #             allowed_methods: {
      #               quantity: 1, # required
      #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               cached_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               },
      #             },
      #             smooth_streaming: false,
      #             default_ttl: 1,
      #             max_ttl: 1,
      #             compress: false,
      #           },
      #         ],
      #       }
      class CacheBehaviors < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of cache behaviors for this distribution.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains cache behaviors for this
        #   distribution. If Quantity is 0, you can omit Items.
        #   @return [Array<Types::CacheBehavior>]

      end

      # A complex type that controls whether CloudFront caches the response to
      # requests using the specified HTTP methods. There are two choices: -
      # CloudFront caches responses to GET and HEAD requests. - CloudFront
      # caches responses to GET, HEAD, and OPTIONS requests. If you pick the
      # second choice for your S3 Origin, you may need to forward
      # Access-Control-Request-Method, Access-Control-Request-Headers and
      # Origin headers for the responses to be cached correctly.
      # @note When making an API call, pass CachedMethods
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #       }
      class CachedMethods < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of HTTP methods for which you want CloudFront to cache
        #   responses. Valid values are 2 (for caching responses to GET and HEAD
        #   requests) and 3 (for caching responses to GET, HEAD, and OPTIONS
        #   requests).
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains the HTTP methods that you want
        #   CloudFront to cache responses to.
        #   @return [Array<String>]

      end

      # CloudFront origin access identity.
      class CloudFrontOriginAccessIdentity < Struct.new(
        :id,
        :s3_canonical_user_id,
        :cloud_front_origin_access_identity_config)

        include Aws::Structure

        # @!attribute [rw] id
        #   The ID for the origin access identity. For example: E74FTE3AJFJ256A.
        #   @return [String]

        # @!attribute [rw] s3_canonical_user_id
        #   The Amazon S3 canonical user ID for the origin access identity,
        #   which you use when giving the origin access identity read permission
        #   to an object in Amazon S3.
        #   @return [String]

        # @!attribute [rw] cloud_front_origin_access_identity_config
        #   The current configuration information for the identity.
        #   @return [Types::CloudFrontOriginAccessIdentityConfig]

      end

      # Origin access identity configuration.
      # @note When making an API call, pass CloudFrontOriginAccessIdentityConfig
      #   data as a hash:
      #
      #       {
      #         caller_reference: "string", # required
      #         comment: "string", # required
      #       }
      class CloudFrontOriginAccessIdentityConfig < Struct.new(
        :caller_reference,
        :comment)

        include Aws::Structure

        # @!attribute [rw] caller_reference
        #   A unique number that ensures the request can\'t be replayed. If the
        #   CallerReference is new (no matter the content of the
        #   CloudFrontOriginAccessIdentityConfig object), a new origin access
        #   identity is created. If the CallerReference is a value you already
        #   sent in a previous request to create an identity, and the content of
        #   the CloudFrontOriginAccessIdentityConfig is identical to the
        #   original request (ignoring white space), the response includes the
        #   same information returned to the original request. If the
        #   CallerReference is a value you already sent in a previous request to
        #   create an identity but the content of the
        #   CloudFrontOriginAccessIdentityConfig is different from the original
        #   request, CloudFront returns a
        #   CloudFrontOriginAccessIdentityAlreadyExists error.
        #   @return [String]

        # @!attribute [rw] comment
        #   Any comments you want to include about the origin access identity.
        #   @return [String]

      end

      # The CloudFrontOriginAccessIdentityList type.
      class CloudFrontOriginAccessIdentityList < Struct.new(
        :marker,
        :next_marker,
        :max_items,
        :is_truncated,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   The value you provided for the Marker request parameter.
        #   @return [String]

        # @!attribute [rw] next_marker
        #   If IsTruncated is true, this element is present and contains the
        #   value you can use for the Marker request parameter to continue
        #   listing your origin access identities where they left off.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value you provided for the MaxItems request parameter.
        #   @return [Integer]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether more origin access identities remain
        #   to be listed. If your results were truncated, you can make a
        #   follow-up pagination request using the Marker request parameter to
        #   retrieve more items in the list.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of CloudFront origin access identities that were created
        #   by the current AWS account.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one
        #   CloudFrontOriginAccessIdentitySummary element for each origin access
        #   identity that was created by the current AWS account.
        #   @return [Array<Types::CloudFrontOriginAccessIdentitySummary>]

      end

      # Summary of the information about a CloudFront origin access identity.
      class CloudFrontOriginAccessIdentitySummary < Struct.new(
        :id,
        :s3_canonical_user_id,
        :comment)

        include Aws::Structure

        # @!attribute [rw] id
        #   The ID for the origin access identity. For example: E74FTE3AJFJ256A.
        #   @return [String]

        # @!attribute [rw] s3_canonical_user_id
        #   The Amazon S3 canonical user ID for the origin access identity,
        #   which you use when giving the origin access identity read permission
        #   to an object in Amazon S3.
        #   @return [String]

        # @!attribute [rw] comment
        #   The comment for this origin access identity, as originally specified
        #   when created.
        #   @return [String]

      end

      # A complex type that specifies the whitelisted cookies, if any, that
      # you want CloudFront to forward to your origin that is associated with
      # this cache behavior.
      # @note When making an API call, pass CookieNames
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class CookieNames < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of whitelisted cookies for this cache behavior.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains whitelisted cookies for this
        #   cache behavior. If Quantity is 0, you can omit Items.
        #   @return [Array<String>]

      end

      # A complex type that specifies the cookie preferences associated with
      # this cache behavior.
      # @note When making an API call, pass CookiePreference
      #   data as a hash:
      #
      #       {
      #         forward: "none", # required, accepts none, whitelist, all
      #         whitelisted_names: {
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #       }
      class CookiePreference < Struct.new(
        :forward,
        :whitelisted_names)

        include Aws::Structure

        # @!attribute [rw] forward
        #   Use this element to specify whether you want CloudFront to forward
        #   cookies to the origin that is associated with this cache behavior.
        #   You can specify all, none or whitelist. If you choose All,
        #   CloudFront forwards all cookies regardless of how many your
        #   application uses.
        #   @return [String]

        # @!attribute [rw] whitelisted_names
        #   A complex type that specifies the whitelisted cookies, if any, that
        #   you want CloudFront to forward to your origin that is associated
        #   with this cache behavior.
        #   @return [Types::CookieNames]

      end

      # The request to create a new origin access identity.
      # @note When making an API call, pass CreateCloudFrontOriginAccessIdentityRequest
      #   data as a hash:
      #
      #       {
      #         cloud_front_origin_access_identity_config: { # required
      #           caller_reference: "string", # required
      #           comment: "string", # required
      #         },
      #       }
      class CreateCloudFrontOriginAccessIdentityRequest < Struct.new(
        :cloud_front_origin_access_identity_config)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity_config
        #   The origin access identity\'s configuration information.
        #   @return [Types::CloudFrontOriginAccessIdentityConfig]

      end

      # The returned result of the corresponding request.
      class CreateCloudFrontOriginAccessIdentityResult < Struct.new(
        :cloud_front_origin_access_identity,
        :location,
        :etag)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity
        #   The origin access identity\'s information.
        #   @return [Types::CloudFrontOriginAccessIdentity]

        # @!attribute [rw] location
        #   The fully qualified URI of the new origin access identity just
        #   created. For example:
        #   https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A.
        #   @return [String]

        # @!attribute [rw] etag
        #   The current version of the origin access identity created.
        #   @return [String]

      end

      # The request to create a new distribution.
      # @note When making an API call, pass CreateDistributionRequest
      #   data as a hash:
      #
      #       {
      #         distribution_config: { # required
      #           caller_reference: "string", # required
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           default_root_object: "string",
      #           origins: { # required
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 id: "string", # required
      #                 domain_name: "string", # required
      #                 origin_path: "string",
      #                 custom_headers: {
      #                   quantity: 1, # required
      #                   items: [
      #                     {
      #                       header_name: "string", # required
      #                       header_value: "string", # required
      #                     },
      #                   ],
      #                 },
      #                 s3_origin_config: {
      #                   origin_access_identity: "string", # required
      #                 },
      #                 custom_origin_config: {
      #                   http_port: 1, # required
      #                   https_port: 1, # required
      #                   origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #                   origin_ssl_protocols: {
      #                     quantity: 1, # required
      #                     items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #                   },
      #                 },
      #               },
      #             ],
      #           },
      #           default_cache_behavior: { # required
      #             target_origin_id: "string", # required
      #             forwarded_values: { # required
      #               query_string: false, # required
      #               cookies: { # required
      #                 forward: "none", # required, accepts none, whitelist, all
      #                 whitelisted_names: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               headers: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               query_string_cache_keys: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             trusted_signers: { # required
      #               enabled: false, # required
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #             min_ttl: 1, # required
      #             allowed_methods: {
      #               quantity: 1, # required
      #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               cached_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               },
      #             },
      #             smooth_streaming: false,
      #             default_ttl: 1,
      #             max_ttl: 1,
      #             compress: false,
      #           },
      #           cache_behaviors: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 path_pattern: "string", # required
      #                 target_origin_id: "string", # required
      #                 forwarded_values: { # required
      #                   query_string: false, # required
      #                   cookies: { # required
      #                     forward: "none", # required, accepts none, whitelist, all
      #                     whitelisted_names: {
      #                       quantity: 1, # required
      #                       items: ["string"],
      #                     },
      #                   },
      #                   headers: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                   query_string_cache_keys: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                 },
      #                 trusted_signers: { # required
      #                   enabled: false, # required
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #                 viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #                 min_ttl: 1, # required
      #                 allowed_methods: {
      #                   quantity: 1, # required
      #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   cached_methods: {
      #                     quantity: 1, # required
      #                     items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   },
      #                 },
      #                 smooth_streaming: false,
      #                 default_ttl: 1,
      #                 max_ttl: 1,
      #                 compress: false,
      #               },
      #             ],
      #           },
      #           custom_error_responses: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 error_code: 1, # required
      #                 response_page_path: "string",
      #                 response_code: "string",
      #                 error_caching_min_ttl: 1,
      #               },
      #             ],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             include_cookies: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #           viewer_certificate: {
      #             cloud_front_default_certificate: false,
      #             iam_certificate_id: "string",
      #             acm_certificate_arn: "string",
      #             ssl_support_method: "sni-only", # accepts sni-only, vip
      #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #             certificate: "string",
      #             certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #           },
      #           restrictions: {
      #             geo_restriction: { # required
      #               restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           web_acl_id: "string",
      #         },
      #       }
      class CreateDistributionRequest < Struct.new(
        :distribution_config)

        include Aws::Structure

        # @!attribute [rw] distribution_config
        #   The distribution\'s configuration information.
        #   @return [Types::DistributionConfig]

      end

      # The returned result of the corresponding request.
      class CreateDistributionResult < Struct.new(
        :distribution,
        :location,
        :etag)

        include Aws::Structure

        # @!attribute [rw] distribution
        #   The distribution\'s information.
        #   @return [Types::Distribution]

        # @!attribute [rw] location
        #   The fully qualified URI of the new distribution resource just
        #   created. For example:
        #   https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] etag
        #   The current version of the distribution created.
        #   @return [String]

      end

      # The request to create a new distribution with tags
      # @note When making an API call, pass CreateDistributionWithTagsRequest
      #   data as a hash:
      #
      #       {
      #         distribution_config_with_tags: { # required
      #           distribution_config: { # required
      #             caller_reference: "string", # required
      #             aliases: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             default_root_object: "string",
      #             origins: { # required
      #               quantity: 1, # required
      #               items: [
      #                 {
      #                   id: "string", # required
      #                   domain_name: "string", # required
      #                   origin_path: "string",
      #                   custom_headers: {
      #                     quantity: 1, # required
      #                     items: [
      #                       {
      #                         header_name: "string", # required
      #                         header_value: "string", # required
      #                       },
      #                     ],
      #                   },
      #                   s3_origin_config: {
      #                     origin_access_identity: "string", # required
      #                   },
      #                   custom_origin_config: {
      #                     http_port: 1, # required
      #                     https_port: 1, # required
      #                     origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #                     origin_ssl_protocols: {
      #                       quantity: 1, # required
      #                       items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #                     },
      #                   },
      #                 },
      #               ],
      #             },
      #             default_cache_behavior: { # required
      #               target_origin_id: "string", # required
      #               forwarded_values: { # required
      #                 query_string: false, # required
      #                 cookies: { # required
      #                   forward: "none", # required, accepts none, whitelist, all
      #                   whitelisted_names: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                 },
      #                 headers: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #                 query_string_cache_keys: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               trusted_signers: { # required
      #                 enabled: false, # required
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #               min_ttl: 1, # required
      #               allowed_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                 cached_methods: {
      #                   quantity: 1, # required
      #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                 },
      #               },
      #               smooth_streaming: false,
      #               default_ttl: 1,
      #               max_ttl: 1,
      #               compress: false,
      #             },
      #             cache_behaviors: {
      #               quantity: 1, # required
      #               items: [
      #                 {
      #                   path_pattern: "string", # required
      #                   target_origin_id: "string", # required
      #                   forwarded_values: { # required
      #                     query_string: false, # required
      #                     cookies: { # required
      #                       forward: "none", # required, accepts none, whitelist, all
      #                       whitelisted_names: {
      #                         quantity: 1, # required
      #                         items: ["string"],
      #                       },
      #                     },
      #                     headers: {
      #                       quantity: 1, # required
      #                       items: ["string"],
      #                     },
      #                     query_string_cache_keys: {
      #                       quantity: 1, # required
      #                       items: ["string"],
      #                     },
      #                   },
      #                   trusted_signers: { # required
      #                     enabled: false, # required
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                   viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #                   min_ttl: 1, # required
      #                   allowed_methods: {
      #                     quantity: 1, # required
      #                     items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                     cached_methods: {
      #                       quantity: 1, # required
      #                       items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                     },
      #                   },
      #                   smooth_streaming: false,
      #                   default_ttl: 1,
      #                   max_ttl: 1,
      #                   compress: false,
      #                 },
      #               ],
      #             },
      #             custom_error_responses: {
      #               quantity: 1, # required
      #               items: [
      #                 {
      #                   error_code: 1, # required
      #                   response_page_path: "string",
      #                   response_code: "string",
      #                   error_caching_min_ttl: 1,
      #                 },
      #               ],
      #             },
      #             comment: "string", # required
      #             logging: {
      #               enabled: false, # required
      #               include_cookies: false, # required
      #               bucket: "string", # required
      #               prefix: "string", # required
      #             },
      #             price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #             enabled: false, # required
      #             viewer_certificate: {
      #               cloud_front_default_certificate: false,
      #               iam_certificate_id: "string",
      #               acm_certificate_arn: "string",
      #               ssl_support_method: "sni-only", # accepts sni-only, vip
      #               minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #               certificate: "string",
      #               certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #             },
      #             restrictions: {
      #               geo_restriction: { # required
      #                 restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             web_acl_id: "string",
      #           },
      #           tags: { # required
      #             items: [
      #               {
      #                 key: "TagKey", # required
      #                 value: "TagValue",
      #               },
      #             ],
      #           },
      #         },
      #       }
      class CreateDistributionWithTagsRequest < Struct.new(
        :distribution_config_with_tags)

        include Aws::Structure

        # @!attribute [rw] distribution_config_with_tags
        #   The distribution\'s configuration information.
        #   @return [Types::DistributionConfigWithTags]

      end

      # The returned result of the corresponding request.
      class CreateDistributionWithTagsResult < Struct.new(
        :distribution,
        :location,
        :etag)

        include Aws::Structure

        # @!attribute [rw] distribution
        #   The distribution\'s information.
        #   @return [Types::Distribution]

        # @!attribute [rw] location
        #   The fully qualified URI of the new distribution resource just
        #   created. For example:
        #   https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] etag
        #   The current version of the distribution created.
        #   @return [String]

      end

      # The request to create an invalidation.
      # @note When making an API call, pass CreateInvalidationRequest
      #   data as a hash:
      #
      #       {
      #         distribution_id: "string", # required
      #         invalidation_batch: { # required
      #           paths: { # required
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           caller_reference: "string", # required
      #         },
      #       }
      class CreateInvalidationRequest < Struct.new(
        :distribution_id,
        :invalidation_batch)

        include Aws::Structure

        # @!attribute [rw] distribution_id
        #   The distribution\'s id.
        #   @return [String]

        # @!attribute [rw] invalidation_batch
        #   The batch information for the invalidation.
        #   @return [Types::InvalidationBatch]

      end

      # The returned result of the corresponding request.
      class CreateInvalidationResult < Struct.new(
        :location,
        :invalidation)

        include Aws::Structure

        # @!attribute [rw] location
        #   The fully qualified URI of the distribution and invalidation batch
        #   request, including the Invalidation ID.
        #   @return [String]

        # @!attribute [rw] invalidation
        #   The invalidation\'s information.
        #   @return [Types::Invalidation]

      end

      # The request to create a new streaming distribution.
      # @note When making an API call, pass CreateStreamingDistributionRequest
      #   data as a hash:
      #
      #       {
      #         streaming_distribution_config: { # required
      #           caller_reference: "string", # required
      #           s3_origin: { # required
      #             domain_name: "string", # required
      #             origin_access_identity: "string", # required
      #           },
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           trusted_signers: { # required
      #             enabled: false, # required
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #         },
      #       }
      class CreateStreamingDistributionRequest < Struct.new(
        :streaming_distribution_config)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_config
        #   The streaming distribution\'s configuration information.
        #   @return [Types::StreamingDistributionConfig]

      end

      # The returned result of the corresponding request.
      class CreateStreamingDistributionResult < Struct.new(
        :streaming_distribution,
        :location,
        :etag)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution
        #   The streaming distribution\'s information.
        #   @return [Types::StreamingDistribution]

        # @!attribute [rw] location
        #   The fully qualified URI of the new streaming distribution resource
        #   just created. For example:
        #   https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8.
        #   @return [String]

        # @!attribute [rw] etag
        #   The current version of the streaming distribution created.
        #   @return [String]

      end

      # The request to create a new streaming distribution with tags.
      # @note When making an API call, pass CreateStreamingDistributionWithTagsRequest
      #   data as a hash:
      #
      #       {
      #         streaming_distribution_config_with_tags: { # required
      #           streaming_distribution_config: { # required
      #             caller_reference: "string", # required
      #             s3_origin: { # required
      #               domain_name: "string", # required
      #               origin_access_identity: "string", # required
      #             },
      #             aliases: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             comment: "string", # required
      #             logging: {
      #               enabled: false, # required
      #               bucket: "string", # required
      #               prefix: "string", # required
      #             },
      #             trusted_signers: { # required
      #               enabled: false, # required
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #             enabled: false, # required
      #           },
      #           tags: { # required
      #             items: [
      #               {
      #                 key: "TagKey", # required
      #                 value: "TagValue",
      #               },
      #             ],
      #           },
      #         },
      #       }
      class CreateStreamingDistributionWithTagsRequest < Struct.new(
        :streaming_distribution_config_with_tags)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_config_with_tags
        #   The streaming distribution\'s configuration information.
        #   @return [Types::StreamingDistributionConfigWithTags]

      end

      # The returned result of the corresponding request.
      class CreateStreamingDistributionWithTagsResult < Struct.new(
        :streaming_distribution,
        :location,
        :etag)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution
        #   The streaming distribution\'s information.
        #   @return [Types::StreamingDistribution]

        # @!attribute [rw] location
        #   The fully qualified URI of the new streaming distribution resource
        #   just created. For example:
        #   https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8.
        #   @return [String]

        # @!attribute [rw] etag
        #   The current version of the streaming distribution created.
        #   @return [String]

      end

      # A complex type that describes how you\'d prefer CloudFront to respond
      # to requests that result in either a 4xx or 5xx response. You can
      # control whether a custom error page should be displayed, what the
      # desired response code should be for this error page and how long
      # should the error response be cached by CloudFront. If you don\'t want
      # to specify any custom error responses, include only an empty
      # CustomErrorResponses element. To delete all custom error responses in
      # an existing distribution, update the distribution configuration and
      # include only an empty CustomErrorResponses element. To add, change, or
      # remove one or more custom error responses, update the distribution
      # configuration and specify all of the custom error responses that you
      # want to include in the updated distribution.
      # @note When making an API call, pass CustomErrorResponse
      #   data as a hash:
      #
      #       {
      #         error_code: 1, # required
      #         response_page_path: "string",
      #         response_code: "string",
      #         error_caching_min_ttl: 1,
      #       }
      class CustomErrorResponse < Struct.new(
        :error_code,
        :response_page_path,
        :response_code,
        :error_caching_min_ttl)

        include Aws::Structure

        # @!attribute [rw] error_code
        #   The 4xx or 5xx HTTP status code that you want to customize. For a
        #   list of HTTP status codes that you can customize, see CloudFront
        #   documentation.
        #   @return [Integer]

        # @!attribute [rw] response_page_path
        #   The path of the custom error page (for example, /custom\_404.html).
        #   The path is relative to the distribution and must begin with a slash
        #   (/). If the path includes any non-ASCII characters or unsafe
        #   characters as defined in RFC 1783
        #   (http://www.ietf.org/rfc/rfc1738.txt), URL encode those characters.
        #   Do not URL encode any other characters in the path, or CloudFront
        #   will not return the custom error page to the viewer.
        #   @return [String]

        # @!attribute [rw] response_code
        #   The HTTP status code that you want CloudFront to return with the
        #   custom error page to the viewer. For a list of HTTP status codes
        #   that you can replace, see CloudFront Documentation.
        #   @return [String]

        # @!attribute [rw] error_caching_min_ttl
        #   The minimum amount of time you want HTTP error codes to stay in
        #   CloudFront caches before CloudFront queries your origin to see
        #   whether the object has been updated. You can specify a value from 0
        #   to 31,536,000.
        #   @return [Integer]

      end

      # A complex type that contains zero or more CustomErrorResponse
      # elements.
      # @note When making an API call, pass CustomErrorResponses
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: [
      #           {
      #             error_code: 1, # required
      #             response_page_path: "string",
      #             response_code: "string",
      #             error_caching_min_ttl: 1,
      #           },
      #         ],
      #       }
      class CustomErrorResponses < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of custom error responses for this distribution.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains custom error responses for
        #   this distribution. If Quantity is 0, you can omit Items.
        #   @return [Array<Types::CustomErrorResponse>]

      end

      # A complex type that contains the list of Custom Headers for each
      # origin.
      # @note When making an API call, pass CustomHeaders
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: [
      #           {
      #             header_name: "string", # required
      #             header_value: "string", # required
      #           },
      #         ],
      #       }
      class CustomHeaders < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of custom headers for this origin.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains the custom headers for this Origin.
        #   @return [Array<Types::OriginCustomHeader>]

      end

      # A customer origin.
      # @note When making an API call, pass CustomOriginConfig
      #   data as a hash:
      #
      #       {
      #         http_port: 1, # required
      #         https_port: 1, # required
      #         origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #         origin_ssl_protocols: {
      #           quantity: 1, # required
      #           items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #         },
      #       }
      class CustomOriginConfig < Struct.new(
        :http_port,
        :https_port,
        :origin_protocol_policy,
        :origin_ssl_protocols)

        include Aws::Structure

        # @!attribute [rw] http_port
        #   The HTTP port the custom origin listens on.
        #   @return [Integer]

        # @!attribute [rw] https_port
        #   The HTTPS port the custom origin listens on.
        #   @return [Integer]

        # @!attribute [rw] origin_protocol_policy
        #   The origin protocol policy to apply to your origin.
        #   @return [String]

        # @!attribute [rw] origin_ssl_protocols
        #   The SSL/TLS protocols that you want CloudFront to use when
        #   communicating with your origin over HTTPS.
        #   @return [Types::OriginSslProtocols]

      end

      # A complex type that describes the default cache behavior if you do not
      # specify a CacheBehavior element or if files don\'t match any of the
      # values of PathPattern in CacheBehavior elements.You must create
      # exactly one default cache behavior.
      # @note When making an API call, pass DefaultCacheBehavior
      #   data as a hash:
      #
      #       {
      #         target_origin_id: "string", # required
      #         forwarded_values: { # required
      #           query_string: false, # required
      #           cookies: { # required
      #             forward: "none", # required, accepts none, whitelist, all
      #             whitelisted_names: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           headers: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           query_string_cache_keys: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #         },
      #         trusted_signers: { # required
      #           enabled: false, # required
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #         min_ttl: 1, # required
      #         allowed_methods: {
      #           quantity: 1, # required
      #           items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #           cached_methods: {
      #             quantity: 1, # required
      #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #           },
      #         },
      #         smooth_streaming: false,
      #         default_ttl: 1,
      #         max_ttl: 1,
      #         compress: false,
      #       }
      class DefaultCacheBehavior < Struct.new(
        :target_origin_id,
        :forwarded_values,
        :trusted_signers,
        :viewer_protocol_policy,
        :min_ttl,
        :allowed_methods,
        :smooth_streaming,
        :default_ttl,
        :max_ttl,
        :compress)

        include Aws::Structure

        # @!attribute [rw] target_origin_id
        #   The value of ID for the origin that you want CloudFront to route
        #   requests to when a request matches the path pattern either for a
        #   cache behavior or for the default cache behavior.
        #   @return [String]

        # @!attribute [rw] forwarded_values
        #   A complex type that specifies how CloudFront handles query strings,
        #   cookies and headers.
        #   @return [Types::ForwardedValues]

        # @!attribute [rw] trusted_signers
        #   A complex type that specifies the AWS accounts, if any, that you
        #   want to allow to create signed URLs for private content. If you want
        #   to require signed URLs in requests for objects in the target origin
        #   that match the PathPattern for this cache behavior, specify true for
        #   Enabled, and specify the applicable values for Quantity and Items.
        #   For more information, go to Using a Signed URL to Serve Private
        #   Content in the Amazon CloudFront Developer Guide. If you don\'t want
        #   to require signed URLs in requests for objects that match
        #   PathPattern, specify false for Enabled and 0 for Quantity. Omit
        #   Items. To add, change, or remove one or more trusted signers, change
        #   Enabled to true (if it\'s currently false), change Quantity as
        #   applicable, and specify all of the trusted signers that you want to
        #   include in the updated distribution.
        #   @return [Types::TrustedSigners]

        # @!attribute [rw] viewer_protocol_policy
        #   Use this element to specify the protocol that users can use to
        #   access the files in the origin specified by TargetOriginId when a
        #   request matches the path pattern in PathPattern. If you want
        #   CloudFront to allow end users to use any available protocol, specify
        #   allow-all. If you want CloudFront to require HTTPS, specify https.
        #   If you want CloudFront to respond to an HTTP request with an HTTP
        #   status code of 301 (Moved Permanently) and the HTTPS URL, specify
        #   redirect-to-https. The viewer then resubmits the request using the
        #   HTTPS URL.
        #   @return [String]

        # @!attribute [rw] min_ttl
        #   The minimum amount of time that you want objects to stay in
        #   CloudFront caches before CloudFront queries your origin to see
        #   whether the object has been updated.You can specify a value from 0
        #   to 3,153,600,000 seconds (100 years).
        #   @return [Integer]

        # @!attribute [rw] allowed_methods
        #   A complex type that controls which HTTP methods CloudFront processes
        #   and forwards to your Amazon S3 bucket or your custom origin. There
        #   are three choices: - CloudFront forwards only GET and HEAD requests.
        #   - CloudFront forwards only GET, HEAD and OPTIONS requests. -
        #   CloudFront forwards GET, HEAD, OPTIONS, PUT, PATCH, POST, and DELETE
        #   requests. If you pick the third choice, you may need to restrict
        #   access to your Amazon S3 bucket or to your custom origin so users
        #   can\'t perform operations that you don\'t want them to. For example,
        #   you may not want users to have permission to delete objects from
        #   your origin.
        #   @return [Types::AllowedMethods]

        # @!attribute [rw] smooth_streaming
        #   Indicates whether you want to distribute media files in Microsoft
        #   Smooth Streaming format using the origin that is associated with
        #   this cache behavior. If so, specify true; if not, specify false.
        #   @return [Boolean]

        # @!attribute [rw] default_ttl
        #   If you don\'t configure your origin to add a Cache-Control max-age
        #   directive or an Expires header, DefaultTTL is the default amount of
        #   time (in seconds) that an object is in a CloudFront cache before
        #   CloudFront forwards another request to your origin to determine
        #   whether the object has been updated. The value that you specify
        #   applies only when your origin does not add HTTP headers such as
        #   Cache-Control max-age, Cache-Control s-maxage, and Expires to
        #   objects. You can specify a value from 0 to 3,153,600,000 seconds
        #   (100 years).
        #   @return [Integer]

        # @!attribute [rw] max_ttl
        #   The maximum amount of time (in seconds) that an object is in a
        #   CloudFront cache before CloudFront forwards another request to your
        #   origin to determine whether the object has been updated. The value
        #   that you specify applies only when your origin adds HTTP headers
        #   such as Cache-Control max-age, Cache-Control s-maxage, and Expires
        #   to objects. You can specify a value from 0 to 3,153,600,000 seconds
        #   (100 years).
        #   @return [Integer]

        # @!attribute [rw] compress
        #   Whether you want CloudFront to automatically compress content for
        #   web requests that include Accept-Encoding: gzip in the request
        #   header. If so, specify true; if not, specify false. CloudFront
        #   compresses files larger than 1000 bytes and less than 1 megabyte for
        #   both Amazon S3 and custom origins. When a CloudFront edge location
        #   is unusually busy, some files might not be compressed. The value of
        #   the Content-Type header must be on the list of file types that
        #   CloudFront will compress. For the current list, see [Serving
        #   Compressed Content][1] in the Amazon CloudFront Developer Guide. If
        #   you configure CloudFront to compress content, CloudFront removes the
        #   ETag response header from the objects that it compresses. The ETag
        #   header indicates that the version in a CloudFront edge cache is
        #   identical to the version on the origin server, but after compression
        #   the two versions are no longer identical. As a result, for
        #   compressed objects, CloudFront can\'t use the ETag header to
        #   determine whether an expired object in the CloudFront edge cache is
        #   still the latest version.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/console/cloudfront/compressed-content
        #   @return [Boolean]

      end

      # The request to delete a origin access identity.
      # @note When making an API call, pass DeleteCloudFrontOriginAccessIdentityRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class DeleteCloudFrontOriginAccessIdentityRequest < Struct.new(
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] id
        #   The origin access identity\'s id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received from a previous GET or PUT
        #   request. For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to delete a distribution.
      # @note When making an API call, pass DeleteDistributionRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class DeleteDistributionRequest < Struct.new(
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] id
        #   The distribution id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received when you disabled the
        #   distribution. For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to delete a streaming distribution.
      # @note When making an API call, pass DeleteStreamingDistributionRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class DeleteStreamingDistributionRequest < Struct.new(
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] id
        #   The distribution id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received when you disabled the
        #   streaming distribution. For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # A distribution.
      class Distribution < Struct.new(
        :id,
        :arn,
        :status,
        :last_modified_time,
        :in_progress_invalidation_batches,
        :domain_name,
        :active_trusted_signers,
        :distribution_config)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identifier for the distribution. For example: EDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] arn
        #   The ARN (Amazon Resource Name) for the distribution. For example:
        #   arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where
        #   123456789012 is your AWS account Id.
        #   @return [String]

        # @!attribute [rw] status
        #   This response element indicates the current status of the
        #   distribution. When the status is Deployed, the distribution\'s
        #   information is fully propagated throughout the Amazon CloudFront
        #   system.
        #   @return [String]

        # @!attribute [rw] last_modified_time
        #   The date and time the distribution was last modified.
        #   @return [Time]

        # @!attribute [rw] in_progress_invalidation_batches
        #   The number of invalidation batches currently in progress.
        #   @return [Integer]

        # @!attribute [rw] domain_name
        #   The domain name corresponding to the distribution. For example:
        #   d604721fxaaqy9.cloudfront.net.
        #   @return [String]

        # @!attribute [rw] active_trusted_signers
        #   CloudFront automatically adds this element to the response only if
        #   you\'ve set up the distribution to serve private content with signed
        #   URLs. The element lists the key pair IDs that CloudFront is aware of
        #   for each trusted signer. The Signer child element lists the AWS
        #   account number of the trusted signer (or an empty Self element if
        #   the signer is you). The Signer element also includes the IDs of any
        #   active key pairs associated with the trusted signer\'s AWS account.
        #   If no KeyPairId element appears for a Signer, that signer can\'t
        #   create working signed URLs.
        #   @return [Types::ActiveTrustedSigners]

        # @!attribute [rw] distribution_config
        #   The current configuration information for the distribution.
        #   @return [Types::DistributionConfig]

      end

      # A distribution Configuration.
      # @note When making an API call, pass DistributionConfig
      #   data as a hash:
      #
      #       {
      #         caller_reference: "string", # required
      #         aliases: {
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         default_root_object: "string",
      #         origins: { # required
      #           quantity: 1, # required
      #           items: [
      #             {
      #               id: "string", # required
      #               domain_name: "string", # required
      #               origin_path: "string",
      #               custom_headers: {
      #                 quantity: 1, # required
      #                 items: [
      #                   {
      #                     header_name: "string", # required
      #                     header_value: "string", # required
      #                   },
      #                 ],
      #               },
      #               s3_origin_config: {
      #                 origin_access_identity: "string", # required
      #               },
      #               custom_origin_config: {
      #                 http_port: 1, # required
      #                 https_port: 1, # required
      #                 origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #                 origin_ssl_protocols: {
      #                   quantity: 1, # required
      #                   items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #                 },
      #               },
      #             },
      #           ],
      #         },
      #         default_cache_behavior: { # required
      #           target_origin_id: "string", # required
      #           forwarded_values: { # required
      #             query_string: false, # required
      #             cookies: { # required
      #               forward: "none", # required, accepts none, whitelist, all
      #               whitelisted_names: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             headers: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             query_string_cache_keys: {
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           trusted_signers: { # required
      #             enabled: false, # required
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #           min_ttl: 1, # required
      #           allowed_methods: {
      #             quantity: 1, # required
      #             items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #             cached_methods: {
      #               quantity: 1, # required
      #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #             },
      #           },
      #           smooth_streaming: false,
      #           default_ttl: 1,
      #           max_ttl: 1,
      #           compress: false,
      #         },
      #         cache_behaviors: {
      #           quantity: 1, # required
      #           items: [
      #             {
      #               path_pattern: "string", # required
      #               target_origin_id: "string", # required
      #               forwarded_values: { # required
      #                 query_string: false, # required
      #                 cookies: { # required
      #                   forward: "none", # required, accepts none, whitelist, all
      #                   whitelisted_names: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                 },
      #                 headers: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #                 query_string_cache_keys: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               trusted_signers: { # required
      #                 enabled: false, # required
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #               min_ttl: 1, # required
      #               allowed_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                 cached_methods: {
      #                   quantity: 1, # required
      #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                 },
      #               },
      #               smooth_streaming: false,
      #               default_ttl: 1,
      #               max_ttl: 1,
      #               compress: false,
      #             },
      #           ],
      #         },
      #         custom_error_responses: {
      #           quantity: 1, # required
      #           items: [
      #             {
      #               error_code: 1, # required
      #               response_page_path: "string",
      #               response_code: "string",
      #               error_caching_min_ttl: 1,
      #             },
      #           ],
      #         },
      #         comment: "string", # required
      #         logging: {
      #           enabled: false, # required
      #           include_cookies: false, # required
      #           bucket: "string", # required
      #           prefix: "string", # required
      #         },
      #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #         enabled: false, # required
      #         viewer_certificate: {
      #           cloud_front_default_certificate: false,
      #           iam_certificate_id: "string",
      #           acm_certificate_arn: "string",
      #           ssl_support_method: "sni-only", # accepts sni-only, vip
      #           minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #           certificate: "string",
      #           certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #         },
      #         restrictions: {
      #           geo_restriction: { # required
      #             restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #         },
      #         web_acl_id: "string",
      #       }
      class DistributionConfig < Struct.new(
        :caller_reference,
        :aliases,
        :default_root_object,
        :origins,
        :default_cache_behavior,
        :cache_behaviors,
        :custom_error_responses,
        :comment,
        :logging,
        :price_class,
        :enabled,
        :viewer_certificate,
        :restrictions,
        :web_acl_id)

        include Aws::Structure

        # @!attribute [rw] caller_reference
        #   A unique number that ensures the request can\'t be replayed. If the
        #   CallerReference is new (no matter the content of the
        #   DistributionConfig object), a new distribution is created. If the
        #   CallerReference is a value you already sent in a previous request to
        #   create a distribution, and the content of the DistributionConfig is
        #   identical to the original request (ignoring white space), the
        #   response includes the same information returned to the original
        #   request. If the CallerReference is a value you already sent in a
        #   previous request to create a distribution but the content of the
        #   DistributionConfig is different from the original request,
        #   CloudFront returns a DistributionAlreadyExists error.
        #   @return [String]

        # @!attribute [rw] aliases
        #   A complex type that contains information about CNAMEs (alternate
        #   domain names), if any, for this distribution.
        #   @return [Types::Aliases]

        # @!attribute [rw] default_root_object
        #   The object that you want CloudFront to return (for example,
        #   index.html) when an end user requests the root URL for your
        #   distribution (http://www.example.com) instead of an object in your
        #   distribution (http://www.example.com/index.html). Specifying a
        #   default root object avoids exposing the contents of your
        #   distribution. If you don\'t want to specify a default root object
        #   when you create a distribution, include an empty DefaultRootObject
        #   element. To delete the default root object from an existing
        #   distribution, update the distribution configuration and include an
        #   empty DefaultRootObject element. To replace the default root object,
        #   update the distribution configuration and specify the new object.
        #   @return [String]

        # @!attribute [rw] origins
        #   A complex type that contains information about origins for this
        #   distribution.
        #   @return [Types::Origins]

        # @!attribute [rw] default_cache_behavior
        #   A complex type that describes the default cache behavior if you do
        #   not specify a CacheBehavior element or if files don\'t match any of
        #   the values of PathPattern in CacheBehavior elements.You must create
        #   exactly one default cache behavior.
        #   @return [Types::DefaultCacheBehavior]

        # @!attribute [rw] cache_behaviors
        #   A complex type that contains zero or more CacheBehavior elements.
        #   @return [Types::CacheBehaviors]

        # @!attribute [rw] custom_error_responses
        #   A complex type that contains zero or more CustomErrorResponse
        #   elements.
        #   @return [Types::CustomErrorResponses]

        # @!attribute [rw] comment
        #   Any comments you want to include about the distribution.
        #   @return [String]

        # @!attribute [rw] logging
        #   A complex type that controls whether access logs are written for the
        #   distribution.
        #   @return [Types::LoggingConfig]

        # @!attribute [rw] price_class
        #   A complex type that contains information about price class for this
        #   distribution.
        #   @return [String]

        # @!attribute [rw] enabled
        #   Whether the distribution is enabled to accept end user requests for
        #   content.
        #   @return [Boolean]

        # @!attribute [rw] viewer_certificate
        #   A complex type that contains information about viewer certificates
        #   for this distribution.
        #   @return [Types::ViewerCertificate]

        # @!attribute [rw] restrictions
        #   A complex type that identifies ways in which you want to restrict
        #   distribution of your content.
        #   @return [Types::Restrictions]

        # @!attribute [rw] web_acl_id
        #   (Optional) If you\'re using AWS WAF to filter CloudFront requests,
        #   the Id of the AWS WAF web ACL that is associated with the
        #   distribution.
        #   @return [String]

      end

      # A distribution Configuration and a list of tags to be associated with
      # the distribution.
      # @note When making an API call, pass DistributionConfigWithTags
      #   data as a hash:
      #
      #       {
      #         distribution_config: { # required
      #           caller_reference: "string", # required
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           default_root_object: "string",
      #           origins: { # required
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 id: "string", # required
      #                 domain_name: "string", # required
      #                 origin_path: "string",
      #                 custom_headers: {
      #                   quantity: 1, # required
      #                   items: [
      #                     {
      #                       header_name: "string", # required
      #                       header_value: "string", # required
      #                     },
      #                   ],
      #                 },
      #                 s3_origin_config: {
      #                   origin_access_identity: "string", # required
      #                 },
      #                 custom_origin_config: {
      #                   http_port: 1, # required
      #                   https_port: 1, # required
      #                   origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #                   origin_ssl_protocols: {
      #                     quantity: 1, # required
      #                     items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #                   },
      #                 },
      #               },
      #             ],
      #           },
      #           default_cache_behavior: { # required
      #             target_origin_id: "string", # required
      #             forwarded_values: { # required
      #               query_string: false, # required
      #               cookies: { # required
      #                 forward: "none", # required, accepts none, whitelist, all
      #                 whitelisted_names: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               headers: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               query_string_cache_keys: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             trusted_signers: { # required
      #               enabled: false, # required
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #             min_ttl: 1, # required
      #             allowed_methods: {
      #               quantity: 1, # required
      #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               cached_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               },
      #             },
      #             smooth_streaming: false,
      #             default_ttl: 1,
      #             max_ttl: 1,
      #             compress: false,
      #           },
      #           cache_behaviors: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 path_pattern: "string", # required
      #                 target_origin_id: "string", # required
      #                 forwarded_values: { # required
      #                   query_string: false, # required
      #                   cookies: { # required
      #                     forward: "none", # required, accepts none, whitelist, all
      #                     whitelisted_names: {
      #                       quantity: 1, # required
      #                       items: ["string"],
      #                     },
      #                   },
      #                   headers: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                   query_string_cache_keys: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                 },
      #                 trusted_signers: { # required
      #                   enabled: false, # required
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #                 viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #                 min_ttl: 1, # required
      #                 allowed_methods: {
      #                   quantity: 1, # required
      #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   cached_methods: {
      #                     quantity: 1, # required
      #                     items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   },
      #                 },
      #                 smooth_streaming: false,
      #                 default_ttl: 1,
      #                 max_ttl: 1,
      #                 compress: false,
      #               },
      #             ],
      #           },
      #           custom_error_responses: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 error_code: 1, # required
      #                 response_page_path: "string",
      #                 response_code: "string",
      #                 error_caching_min_ttl: 1,
      #               },
      #             ],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             include_cookies: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #           viewer_certificate: {
      #             cloud_front_default_certificate: false,
      #             iam_certificate_id: "string",
      #             acm_certificate_arn: "string",
      #             ssl_support_method: "sni-only", # accepts sni-only, vip
      #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #             certificate: "string",
      #             certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #           },
      #           restrictions: {
      #             geo_restriction: { # required
      #               restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           web_acl_id: "string",
      #         },
      #         tags: { # required
      #           items: [
      #             {
      #               key: "TagKey", # required
      #               value: "TagValue",
      #             },
      #           ],
      #         },
      #       }
      class DistributionConfigWithTags < Struct.new(
        :distribution_config,
        :tags)

        include Aws::Structure

        # @!attribute [rw] distribution_config
        #   A distribution Configuration.
        #   @return [Types::DistributionConfig]

        # @!attribute [rw] tags
        #   A complex type that contains zero or more Tag elements.
        #   @return [Types::Tags]

      end

      # A distribution list.
      class DistributionList < Struct.new(
        :marker,
        :next_marker,
        :max_items,
        :is_truncated,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   The value you provided for the Marker request parameter.
        #   @return [String]

        # @!attribute [rw] next_marker
        #   If IsTruncated is true, this element is present and contains the
        #   value you can use for the Marker request parameter to continue
        #   listing your distributions where they left off.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value you provided for the MaxItems request parameter.
        #   @return [Integer]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether more distributions remain to be
        #   listed. If your results were truncated, you can make a follow-up
        #   pagination request using the Marker request parameter to retrieve
        #   more distributions in the list.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of distributions that were created by the current AWS
        #   account.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one DistributionSummary element for
        #   each distribution that was created by the current AWS account.
        #   @return [Array<Types::DistributionSummary>]

      end

      # A summary of the information for an Amazon CloudFront distribution.
      class DistributionSummary < Struct.new(
        :id,
        :arn,
        :status,
        :last_modified_time,
        :domain_name,
        :aliases,
        :origins,
        :default_cache_behavior,
        :cache_behaviors,
        :custom_error_responses,
        :comment,
        :price_class,
        :enabled,
        :viewer_certificate,
        :restrictions,
        :web_acl_id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identifier for the distribution. For example: EDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] arn
        #   The ARN (Amazon Resource Name) for the distribution. For example:
        #   arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where
        #   123456789012 is your AWS account Id.
        #   @return [String]

        # @!attribute [rw] status
        #   This response element indicates the current status of the
        #   distribution. When the status is Deployed, the distribution\'s
        #   information is fully propagated throughout the Amazon CloudFront
        #   system.
        #   @return [String]

        # @!attribute [rw] last_modified_time
        #   The date and time the distribution was last modified.
        #   @return [Time]

        # @!attribute [rw] domain_name
        #   The domain name corresponding to the distribution. For example:
        #   d604721fxaaqy9.cloudfront.net.
        #   @return [String]

        # @!attribute [rw] aliases
        #   A complex type that contains information about CNAMEs (alternate
        #   domain names), if any, for this distribution.
        #   @return [Types::Aliases]

        # @!attribute [rw] origins
        #   A complex type that contains information about origins for this
        #   distribution.
        #   @return [Types::Origins]

        # @!attribute [rw] default_cache_behavior
        #   A complex type that describes the default cache behavior if you do
        #   not specify a CacheBehavior element or if files don\'t match any of
        #   the values of PathPattern in CacheBehavior elements.You must create
        #   exactly one default cache behavior.
        #   @return [Types::DefaultCacheBehavior]

        # @!attribute [rw] cache_behaviors
        #   A complex type that contains zero or more CacheBehavior elements.
        #   @return [Types::CacheBehaviors]

        # @!attribute [rw] custom_error_responses
        #   A complex type that contains zero or more CustomErrorResponses
        #   elements.
        #   @return [Types::CustomErrorResponses]

        # @!attribute [rw] comment
        #   The comment originally specified when this distribution was created.
        #   @return [String]

        # @!attribute [rw] price_class
        #   @return [String]

        # @!attribute [rw] enabled
        #   Whether the distribution is enabled to accept end user requests for
        #   content.
        #   @return [Boolean]

        # @!attribute [rw] viewer_certificate
        #   A complex type that contains information about viewer certificates
        #   for this distribution.
        #   @return [Types::ViewerCertificate]

        # @!attribute [rw] restrictions
        #   A complex type that identifies ways in which you want to restrict
        #   distribution of your content.
        #   @return [Types::Restrictions]

        # @!attribute [rw] web_acl_id
        #   The Web ACL Id (if any) associated with the distribution.
        #   @return [String]

      end

      # A complex type that specifies how CloudFront handles query strings,
      # cookies and headers.
      # @note When making an API call, pass ForwardedValues
      #   data as a hash:
      #
      #       {
      #         query_string: false, # required
      #         cookies: { # required
      #           forward: "none", # required, accepts none, whitelist, all
      #           whitelisted_names: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #         },
      #         headers: {
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         query_string_cache_keys: {
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #       }
      class ForwardedValues < Struct.new(
        :query_string,
        :cookies,
        :headers,
        :query_string_cache_keys)

        include Aws::Structure

        # @!attribute [rw] query_string
        #   Indicates whether you want CloudFront to forward query strings to
        #   the origin that is associated with this cache behavior and cache
        #   based on the query string parameters. CloudFront behavior depends on
        #   the value of QueryString and on the values that you specify for
        #   QueryStringCacheKeys, if any:
        #
        #   * If you specify true for QueryString and you don\'t specify any
        #     values for QueryStringCacheKeys, CloudFront forwards all query
        #     string parameters to the origin and caches based on all query
        #     string parameters. Depending on how many query string parameters
        #     and values you have, this can adversely affect performance because
        #     CloudFront must forward more requests to the origin.
        #   * If you specify true for QueryString and you specify one or more
        #     values for QueryStringCacheKeys, CloudFront forwards all query
        #     string parameters to the origin, but it only caches based on the
        #     query string parameters that you specify.
        #   * If you specify false for QueryString, CloudFront doesn\'t forward
        #     any query string parameters to the origin, and doesn\'t cache
        #     based on query string parameters.
        #   @return [Boolean]

        # @!attribute [rw] cookies
        #   A complex type that specifies how CloudFront handles cookies.
        #   @return [Types::CookiePreference]

        # @!attribute [rw] headers
        #   A complex type that specifies the Headers, if any, that you want
        #   CloudFront to vary upon for this cache behavior.
        #   @return [Types::Headers]

        # @!attribute [rw] query_string_cache_keys
        #   A complex type that contains information about the query string
        #   parameters that you want CloudFront to use for caching for this
        #   cache behavior.
        #   @return [Types::QueryStringCacheKeys]

      end

      # A complex type that controls the countries in which your content is
      # distributed. For more information about geo restriction, go to
      # Customizing Error Responses in the Amazon CloudFront Developer Guide.
      # CloudFront determines the location of your users using MaxMind GeoIP
      # databases. For information about the accuracy of these databases, see
      # How accurate are your GeoIP databases? on the MaxMind website.
      # @note When making an API call, pass GeoRestriction
      #   data as a hash:
      #
      #       {
      #         restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class GeoRestriction < Struct.new(
        :restriction_type,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] restriction_type
        #   The method that you want to use to restrict distribution of your
        #   content by country: - none: No geo restriction is enabled, meaning
        #   access to content is not restricted by client geo location. -
        #   blacklist: The Location elements specify the countries in which you
        #   do not want CloudFront to distribute your content. - whitelist: The
        #   Location elements specify the countries in which you want CloudFront
        #   to distribute your content.
        #   @return [String]

        # @!attribute [rw] quantity
        #   When geo restriction is enabled, this is the number of countries in
        #   your whitelist or blacklist. Otherwise, when it is not enabled,
        #   Quantity is 0, and you can omit Items.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains a Location element for each country in
        #   which you want CloudFront either to distribute your content
        #   (whitelist) or not distribute your content (blacklist). The Location
        #   element is a two-letter, uppercase country code for a country that
        #   you want to include in your blacklist or whitelist. Include one
        #   Location element for each country. CloudFront and MaxMind both use
        #   ISO 3166 country codes. For the current list of countries and the
        #   corresponding codes, see ISO 3166-1-alpha-2 code on the
        #   International Organization for Standardization website. You can also
        #   refer to the country list in the CloudFront console, which includes
        #   both country names and codes.
        #   @return [Array<String>]

      end

      # The request to get an origin access identity\'s configuration.
      # @note When making an API call, pass GetCloudFrontOriginAccessIdentityConfigRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetCloudFrontOriginAccessIdentityConfigRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identity\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetCloudFrontOriginAccessIdentityConfigResult < Struct.new(
        :cloud_front_origin_access_identity_config,
        :etag)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity_config
        #   The origin access identity\'s configuration information.
        #   @return [Types::CloudFrontOriginAccessIdentityConfig]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to get an origin access identity\'s information.
      # @note When making an API call, pass GetCloudFrontOriginAccessIdentityRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetCloudFrontOriginAccessIdentityRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identity\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetCloudFrontOriginAccessIdentityResult < Struct.new(
        :cloud_front_origin_access_identity,
        :etag)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity
        #   The origin access identity\'s information.
        #   @return [Types::CloudFrontOriginAccessIdentity]

        # @!attribute [rw] etag
        #   The current version of the origin access identity\'s information.
        #   For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to get a distribution configuration.
      # @note When making an API call, pass GetDistributionConfigRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetDistributionConfigRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The distribution\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetDistributionConfigResult < Struct.new(
        :distribution_config,
        :etag)

        include Aws::Structure

        # @!attribute [rw] distribution_config
        #   The distribution\'s configuration information.
        #   @return [Types::DistributionConfig]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to get a distribution\'s information.
      # @note When making an API call, pass GetDistributionRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetDistributionRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The distribution\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetDistributionResult < Struct.new(
        :distribution,
        :etag)

        include Aws::Structure

        # @!attribute [rw] distribution
        #   The distribution\'s information.
        #   @return [Types::Distribution]

        # @!attribute [rw] etag
        #   The current version of the distribution\'s information. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to get an invalidation\'s information.
      # @note When making an API call, pass GetInvalidationRequest
      #   data as a hash:
      #
      #       {
      #         distribution_id: "string", # required
      #         id: "string", # required
      #       }
      class GetInvalidationRequest < Struct.new(
        :distribution_id,
        :id)

        include Aws::Structure

        # @!attribute [rw] distribution_id
        #   The distribution\'s id.
        #   @return [String]

        # @!attribute [rw] id
        #   The invalidation\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetInvalidationResult < Struct.new(
        :invalidation)

        include Aws::Structure

        # @!attribute [rw] invalidation
        #   The invalidation\'s information.
        #   @return [Types::Invalidation]

      end

      # To request to get a streaming distribution configuration.
      # @note When making an API call, pass GetStreamingDistributionConfigRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetStreamingDistributionConfigRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The streaming distribution\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetStreamingDistributionConfigResult < Struct.new(
        :streaming_distribution_config,
        :etag)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_config
        #   The streaming distribution\'s configuration information.
        #   @return [Types::StreamingDistributionConfig]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to get a streaming distribution\'s information.
      # @note When making an API call, pass GetStreamingDistributionRequest
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #       }
      class GetStreamingDistributionRequest < Struct.new(
        :id)

        include Aws::Structure

        # @!attribute [rw] id
        #   The streaming distribution\'s id.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class GetStreamingDistributionResult < Struct.new(
        :streaming_distribution,
        :etag)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution
        #   The streaming distribution\'s information.
        #   @return [Types::StreamingDistribution]

        # @!attribute [rw] etag
        #   The current version of the streaming distribution\'s information.
        #   For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # A complex type that specifies the headers that you want CloudFront to
      # forward to the origin for this cache behavior. For the headers that
      # you specify, CloudFront also caches separate versions of a given
      # object based on the header values in viewer requests; this is known as
      # varying on headers. For example, suppose viewer requests for logo.jpg
      # contain a custom Product header that has a value of either Acme or
      # Apex, and you configure CloudFront to vary on the Product header.
      # CloudFront forwards the Product header to the origin and caches the
      # response from the origin once for each header value.
      # @note When making an API call, pass Headers
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class Headers < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of different headers that you want CloudFront to forward
        #   to the origin and to vary on for this cache behavior. The maximum
        #   number of headers that you can specify by name is 10. If you want
        #   CloudFront to forward all headers to the origin and vary on all of
        #   them, specify 1 for Quantity and \* for Name. If you don\'t want
        #   CloudFront to forward any additional headers to the origin or to
        #   vary on any headers, specify 0 for Quantity and omit Items.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains a Name element for each
        #   header that you want CloudFront to forward to the origin and to vary
        #   on for this cache behavior. If Quantity is 0, omit Items.
        #   @return [Array<String>]

      end

      # An invalidation.
      class Invalidation < Struct.new(
        :id,
        :status,
        :create_time,
        :invalidation_batch)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identifier for the invalidation request. For example:
        #   IDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the invalidation request. When the invalidation batch
        #   is finished, the status is Completed.
        #   @return [String]

        # @!attribute [rw] create_time
        #   The date and time the invalidation request was first made.
        #   @return [Time]

        # @!attribute [rw] invalidation_batch
        #   The current invalidation information for the batch request.
        #   @return [Types::InvalidationBatch]

      end

      # An invalidation batch.
      # @note When making an API call, pass InvalidationBatch
      #   data as a hash:
      #
      #       {
      #         paths: { # required
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         caller_reference: "string", # required
      #       }
      class InvalidationBatch < Struct.new(
        :paths,
        :caller_reference)

        include Aws::Structure

        # @!attribute [rw] paths
        #   The path of the object to invalidate. The path is relative to the
        #   distribution and must begin with a slash (/). You must enclose each
        #   invalidation object with the Path element tags. If the path includes
        #   non-ASCII characters or unsafe characters as defined in RFC 1783
        #   (http://www.ietf.org/rfc/rfc1738.txt), URL encode those characters.
        #   Do not URL encode any other characters in the path, or CloudFront
        #   will not invalidate the old version of the updated object.
        #   @return [Types::Paths]

        # @!attribute [rw] caller_reference
        #   A unique name that ensures the request can\'t be replayed. If the
        #   CallerReference is new (no matter the content of the Path object), a
        #   new distribution is created. If the CallerReference is a value you
        #   already sent in a previous request to create an invalidation batch,
        #   and the content of each Path element is identical to the original
        #   request, the response includes the same information returned to the
        #   original request. If the CallerReference is a value you already sent
        #   in a previous request to create a distribution but the content of
        #   any Path is different from the original request, CloudFront returns
        #   an InvalidationBatchAlreadyExists error.
        #   @return [String]

      end

      # An invalidation list.
      class InvalidationList < Struct.new(
        :marker,
        :next_marker,
        :max_items,
        :is_truncated,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   The value you provided for the Marker request parameter.
        #   @return [String]

        # @!attribute [rw] next_marker
        #   If IsTruncated is true, this element is present and contains the
        #   value you can use for the Marker request parameter to continue
        #   listing your invalidation batches where they left off.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value you provided for the MaxItems request parameter.
        #   @return [Integer]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether more invalidation batch requests
        #   remain to be listed. If your results were truncated, you can make a
        #   follow-up pagination request using the Marker request parameter to
        #   retrieve more invalidation batches in the list.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of invalidation batches that were created by the current
        #   AWS account.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one InvalidationSummary element for
        #   each invalidation batch that was created by the current AWS account.
        #   @return [Array<Types::InvalidationSummary>]

      end

      # Summary of an invalidation request.
      class InvalidationSummary < Struct.new(
        :id,
        :create_time,
        :status)

        include Aws::Structure

        # @!attribute [rw] id
        #   The unique ID for an invalidation request.
        #   @return [String]

        # @!attribute [rw] create_time
        #   @return [Time]

        # @!attribute [rw] status
        #   The status of an invalidation request.
        #   @return [String]

      end

      # A complex type that lists the active CloudFront key pairs, if any,
      # that are associated with AwsAccountNumber.
      class KeyPairIds < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of active CloudFront key pairs for AwsAccountNumber.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that lists the active CloudFront key pairs, if any,
        #   that are associated with AwsAccountNumber.
        #   @return [Array<String>]

      end

      # The request to list origin access identities.
      # @note When making an API call, pass ListCloudFrontOriginAccessIdentitiesRequest
      #   data as a hash:
      #
      #       {
      #         marker: "string",
      #         max_items: 1,
      #       }
      class ListCloudFrontOriginAccessIdentitiesRequest < Struct.new(
        :marker,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   Use this when paginating results to indicate where to begin in your
        #   list of origin access identities. The results include identities in
        #   the list that occur after the marker. To get the next page of
        #   results, set the Marker to the value of the NextMarker from the
        #   current page\'s response (which is also the ID of the last identity
        #   on that page).
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of origin access identities you want in the
        #   response body.
        #   @return [Integer]

      end

      # The returned result of the corresponding request.
      class ListCloudFrontOriginAccessIdentitiesResult < Struct.new(
        :cloud_front_origin_access_identity_list)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity_list
        #   The CloudFrontOriginAccessIdentityList type.
        #   @return [Types::CloudFrontOriginAccessIdentityList]

      end

      # The request to list distributions that are associated with a specified
      # AWS WAF web ACL.
      # @note When making an API call, pass ListDistributionsByWebACLIdRequest
      #   data as a hash:
      #
      #       {
      #         marker: "string",
      #         max_items: 1,
      #         web_acl_id: "string", # required
      #       }
      class ListDistributionsByWebACLIdRequest < Struct.new(
        :marker,
        :max_items,
        :web_acl_id)

        include Aws::Structure

        # @!attribute [rw] marker
        #   Use Marker and MaxItems to control pagination of results. If you
        #   have more than MaxItems distributions that satisfy the request, the
        #   response includes a NextMarker element. To get the next page of
        #   results, submit another request. For the value of Marker, specify
        #   the value of NextMarker from the last response. (For the first
        #   request, omit Marker.)
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of distributions that you want CloudFront to
        #   return in the response body. The maximum and default values are both
        #   100.
        #   @return [Integer]

        # @!attribute [rw] web_acl_id
        #   The Id of the AWS WAF web ACL for which you want to list the
        #   associated distributions. If you specify \"null\" for the Id, the
        #   request returns a list of the distributions that aren\'t associated
        #   with a web ACL.
        #   @return [String]

      end

      # The response to a request to list the distributions that are
      # associated with a specified AWS WAF web ACL.
      class ListDistributionsByWebACLIdResult < Struct.new(
        :distribution_list)

        include Aws::Structure

        # @!attribute [rw] distribution_list
        #   The DistributionList type.
        #   @return [Types::DistributionList]

      end

      # The request to list your distributions.
      # @note When making an API call, pass ListDistributionsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "string",
      #         max_items: 1,
      #       }
      class ListDistributionsRequest < Struct.new(
        :marker,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   Use Marker and MaxItems to control pagination of results. If you
        #   have more than MaxItems distributions that satisfy the request, the
        #   response includes a NextMarker element. To get the next page of
        #   results, submit another request. For the value of Marker, specify
        #   the value of NextMarker from the last response. (For the first
        #   request, omit Marker.)
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of distributions that you want CloudFront to
        #   return in the response body. The maximum and default values are both
        #   100.
        #   @return [Integer]

      end

      # The returned result of the corresponding request.
      class ListDistributionsResult < Struct.new(
        :distribution_list)

        include Aws::Structure

        # @!attribute [rw] distribution_list
        #   The DistributionList type.
        #   @return [Types::DistributionList]

      end

      # The request to list invalidations.
      # @note When making an API call, pass ListInvalidationsRequest
      #   data as a hash:
      #
      #       {
      #         distribution_id: "string", # required
      #         marker: "string",
      #         max_items: 1,
      #       }
      class ListInvalidationsRequest < Struct.new(
        :distribution_id,
        :marker,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] distribution_id
        #   The distribution\'s id.
        #   @return [String]

        # @!attribute [rw] marker
        #   Use this parameter when paginating results to indicate where to
        #   begin in your list of invalidation batches. Because the results are
        #   returned in decreasing order from most recent to oldest, the most
        #   recent results are on the first page, the second page will contain
        #   earlier results, and so on. To get the next page of results, set the
        #   Marker to the value of the NextMarker from the current page\'s
        #   response. This value is the same as the ID of the last invalidation
        #   batch on that page.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of invalidation batches you want in the response
        #   body.
        #   @return [Integer]

      end

      # The returned result of the corresponding request.
      class ListInvalidationsResult < Struct.new(
        :invalidation_list)

        include Aws::Structure

        # @!attribute [rw] invalidation_list
        #   Information about invalidation batches.
        #   @return [Types::InvalidationList]

      end

      # The request to list your streaming distributions.
      # @note When making an API call, pass ListStreamingDistributionsRequest
      #   data as a hash:
      #
      #       {
      #         marker: "string",
      #         max_items: 1,
      #       }
      class ListStreamingDistributionsRequest < Struct.new(
        :marker,
        :max_items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   Use this when paginating results to indicate where to begin in your
        #   list of streaming distributions. The results include distributions
        #   in the list that occur after the marker. To get the next page of
        #   results, set the Marker to the value of the NextMarker from the
        #   current page\'s response (which is also the ID of the last
        #   distribution on that page).
        #   @return [String]

        # @!attribute [rw] max_items
        #   The maximum number of streaming distributions you want in the
        #   response body.
        #   @return [Integer]

      end

      # The returned result of the corresponding request.
      class ListStreamingDistributionsResult < Struct.new(
        :streaming_distribution_list)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_list
        #   The StreamingDistributionList type.
        #   @return [Types::StreamingDistributionList]

      end

      # The request to list tags for a CloudFront resource.
      # @note When making an API call, pass ListTagsForResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource: "ResourceARN", # required
      #       }
      class ListTagsForResourceRequest < Struct.new(
        :resource)

        include Aws::Structure

        # @!attribute [rw] resource
        #   An ARN of a CloudFront resource.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class ListTagsForResourceResult < Struct.new(
        :tags)

        include Aws::Structure

        # @!attribute [rw] tags
        #   A complex type that contains zero or more Tag elements.
        #   @return [Types::Tags]

      end

      # A complex type that controls whether access logs are written for the
      # distribution.
      # @note When making an API call, pass LoggingConfig
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #         include_cookies: false, # required
      #         bucket: "string", # required
      #         prefix: "string", # required
      #       }
      class LoggingConfig < Struct.new(
        :enabled,
        :include_cookies,
        :bucket,
        :prefix)

        include Aws::Structure

        # @!attribute [rw] enabled
        #   Specifies whether you want CloudFront to save access logs to an
        #   Amazon S3 bucket. If you do not want to enable logging when you
        #   create a distribution or if you want to disable logging for an
        #   existing distribution, specify false for Enabled, and specify empty
        #   Bucket and Prefix elements. If you specify false for Enabled but you
        #   specify values for Bucket, prefix and IncludeCookies, the values are
        #   automatically deleted.
        #   @return [Boolean]

        # @!attribute [rw] include_cookies
        #   Specifies whether you want CloudFront to include cookies in access
        #   logs, specify true for IncludeCookies. If you choose to include
        #   cookies in logs, CloudFront logs all cookies regardless of how you
        #   configure the cache behaviors for this distribution. If you do not
        #   want to include cookies when you create a distribution or if you
        #   want to disable include cookies for an existing distribution,
        #   specify false for IncludeCookies.
        #   @return [Boolean]

        # @!attribute [rw] bucket
        #   The Amazon S3 bucket to store the access logs in, for example,
        #   myawslogbucket.s3.amazonaws.com.
        #   @return [String]

        # @!attribute [rw] prefix
        #   An optional string that you want CloudFront to prefix to the access
        #   log filenames for this distribution, for example, myprefix/. If you
        #   want to enable logging, but you do not want to specify a prefix, you
        #   still must include an empty Prefix element in the Logging element.
        #   @return [String]

      end

      # A complex type that describes the Amazon S3 bucket or the HTTP server
      # (for example, a web server) from which CloudFront gets your files.You
      # must create at least one origin.
      # @note When making an API call, pass Origin
      #   data as a hash:
      #
      #       {
      #         id: "string", # required
      #         domain_name: "string", # required
      #         origin_path: "string",
      #         custom_headers: {
      #           quantity: 1, # required
      #           items: [
      #             {
      #               header_name: "string", # required
      #               header_value: "string", # required
      #             },
      #           ],
      #         },
      #         s3_origin_config: {
      #           origin_access_identity: "string", # required
      #         },
      #         custom_origin_config: {
      #           http_port: 1, # required
      #           https_port: 1, # required
      #           origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #           origin_ssl_protocols: {
      #             quantity: 1, # required
      #             items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #           },
      #         },
      #       }
      class Origin < Struct.new(
        :id,
        :domain_name,
        :origin_path,
        :custom_headers,
        :s3_origin_config,
        :custom_origin_config)

        include Aws::Structure

        # @!attribute [rw] id
        #   A unique identifier for the origin. The value of Id must be unique
        #   within the distribution. You use the value of Id when you create a
        #   cache behavior. The Id identifies the origin that CloudFront routes
        #   a request to when the request matches the path pattern for that
        #   cache behavior.
        #   @return [String]

        # @!attribute [rw] domain_name
        #   Amazon S3 origins: The DNS name of the Amazon S3 bucket from which
        #   you want CloudFront to get objects for this origin, for example,
        #   myawsbucket.s3.amazonaws.com. Custom origins: The DNS domain name
        #   for the HTTP server from which you want CloudFront to get objects
        #   for this origin, for example, www.example.com.
        #   @return [String]

        # @!attribute [rw] origin_path
        #   An optional element that causes CloudFront to request your content
        #   from a directory in your Amazon S3 bucket or your custom origin.
        #   When you include the OriginPath element, specify the directory name,
        #   beginning with a /. CloudFront appends the directory name to the
        #   value of DomainName.
        #   @return [String]

        # @!attribute [rw] custom_headers
        #   A complex type that contains information about the custom headers
        #   associated with this Origin.
        #   @return [Types::CustomHeaders]

        # @!attribute [rw] s3_origin_config
        #   A complex type that contains information about the Amazon S3 origin.
        #   If the origin is a custom origin, use the CustomOriginConfig element
        #   instead.
        #   @return [Types::S3OriginConfig]

        # @!attribute [rw] custom_origin_config
        #   A complex type that contains information about a custom origin. If
        #   the origin is an Amazon S3 bucket, use the S3OriginConfig element
        #   instead.
        #   @return [Types::CustomOriginConfig]

      end

      # A complex type that contains information related to a Header
      # @note When making an API call, pass OriginCustomHeader
      #   data as a hash:
      #
      #       {
      #         header_name: "string", # required
      #         header_value: "string", # required
      #       }
      class OriginCustomHeader < Struct.new(
        :header_name,
        :header_value)

        include Aws::Structure

        # @!attribute [rw] header_name
        #   The header\'s name.
        #   @return [String]

        # @!attribute [rw] header_value
        #   The header\'s value.
        #   @return [String]

      end

      # A complex type that contains the list of SSL/TLS protocols that you
      # want CloudFront to use when communicating with your origin over HTTPS.
      # @note When making an API call, pass OriginSslProtocols
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #       }
      class OriginSslProtocols < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of SSL/TLS protocols that you want to allow CloudFront to
        #   use when establishing an HTTPS connection with this origin.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one SslProtocol element for each
        #   SSL/TLS protocol that you want to allow CloudFront to use when
        #   establishing an HTTPS connection with this origin.
        #   @return [Array<String>]

      end

      # A complex type that contains information about origins for this
      # distribution.
      # @note When making an API call, pass Origins
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: [
      #           {
      #             id: "string", # required
      #             domain_name: "string", # required
      #             origin_path: "string",
      #             custom_headers: {
      #               quantity: 1, # required
      #               items: [
      #                 {
      #                   header_name: "string", # required
      #                   header_value: "string", # required
      #                 },
      #               ],
      #             },
      #             s3_origin_config: {
      #               origin_access_identity: "string", # required
      #             },
      #             custom_origin_config: {
      #               http_port: 1, # required
      #               https_port: 1, # required
      #               origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #               origin_ssl_protocols: {
      #                 quantity: 1, # required
      #                 items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #               },
      #             },
      #           },
      #         ],
      #       }
      class Origins < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of origins for this distribution.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains origins for this distribution.
        #   @return [Array<Types::Origin>]

      end

      # A complex type that contains information about the objects that you
      # want to invalidate.
      # @note When making an API call, pass Paths
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class Paths < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of objects that you want to invalidate.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains a list of the objects that you want to
        #   invalidate.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass QueryStringCacheKeys
      #   data as a hash:
      #
      #       {
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class QueryStringCacheKeys < Struct.new(
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] quantity
        #   The number of whitelisted query string parameters for this cache
        #   behavior.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A list that contains the query string parameters that you
        #   want CloudFront to use as a basis for caching for this cache
        #   behavior. If Quantity is 0, you can omit Items.
        #   @return [Array<String>]

      end

      # A complex type that identifies ways in which you want to restrict
      # distribution of your content.
      # @note When making an API call, pass Restrictions
      #   data as a hash:
      #
      #       {
      #         geo_restriction: { # required
      #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #       }
      class Restrictions < Struct.new(
        :geo_restriction)

        include Aws::Structure

        # @!attribute [rw] geo_restriction
        #   A complex type that controls the countries in which your content is
        #   distributed. For more information about geo restriction, go to
        #   Customizing Error Responses in the Amazon CloudFront Developer
        #   Guide. CloudFront determines the location of your users using
        #   MaxMind GeoIP databases. For information about the accuracy of these
        #   databases, see How accurate are your GeoIP databases? on the MaxMind
        #   website.
        #   @return [Types::GeoRestriction]

      end

      # A complex type that contains information about the Amazon S3 bucket
      # from which you want CloudFront to get your media files for
      # distribution.
      # @note When making an API call, pass S3Origin
      #   data as a hash:
      #
      #       {
      #         domain_name: "string", # required
      #         origin_access_identity: "string", # required
      #       }
      class S3Origin < Struct.new(
        :domain_name,
        :origin_access_identity)

        include Aws::Structure

        # @!attribute [rw] domain_name
        #   The DNS name of the S3 origin.
        #   @return [String]

        # @!attribute [rw] origin_access_identity
        #   Your S3 origin\'s origin access identity.
        #   @return [String]

      end

      # A complex type that contains information about the Amazon S3 origin.
      # If the origin is a custom origin, use the CustomOriginConfig element
      # instead.
      # @note When making an API call, pass S3OriginConfig
      #   data as a hash:
      #
      #       {
      #         origin_access_identity: "string", # required
      #       }
      class S3OriginConfig < Struct.new(
        :origin_access_identity)

        include Aws::Structure

        # @!attribute [rw] origin_access_identity
        #   The CloudFront origin access identity to associate with the origin.
        #   Use an origin access identity to configure the origin so that end
        #   users can only access objects in an Amazon S3 bucket through
        #   CloudFront. If you want end users to be able to access objects using
        #   either the CloudFront URL or the Amazon S3 URL, specify an empty
        #   OriginAccessIdentity element. To delete the origin access identity
        #   from an existing distribution, update the distribution configuration
        #   and include an empty OriginAccessIdentity element. To replace the
        #   origin access identity, update the distribution configuration and
        #   specify the new origin access identity. Use the format
        #   origin-access-identity/cloudfront/Id where Id is the value that
        #   CloudFront returned in the Id element when you created the origin
        #   access identity.
        #   @return [String]

      end

      # A complex type that lists the AWS accounts that were included in the
      # TrustedSigners complex type, as well as their active CloudFront key
      # pair IDs, if any.
      class Signer < Struct.new(
        :aws_account_number,
        :key_pair_ids)

        include Aws::Structure

        # @!attribute [rw] aws_account_number
        #   Specifies an AWS account that can create signed URLs. Values: self,
        #   which indicates that the AWS account that was used to create the
        #   distribution can created signed URLs, or an AWS account number. Omit
        #   the dashes in the account number.
        #   @return [String]

        # @!attribute [rw] key_pair_ids
        #   A complex type that lists the active CloudFront key pairs, if any,
        #   that are associated with AwsAccountNumber.
        #   @return [Types::KeyPairIds]

      end

      # A streaming distribution.
      class StreamingDistribution < Struct.new(
        :id,
        :arn,
        :status,
        :last_modified_time,
        :domain_name,
        :active_trusted_signers,
        :streaming_distribution_config)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identifier for the streaming distribution. For example:
        #   EGTXBD79H29TRA8.
        #   @return [String]

        # @!attribute [rw] arn
        #   The ARN (Amazon Resource Name) for the streaming distribution. For
        #   example:
        #   arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5,
        #   where 123456789012 is your AWS account Id.
        #   @return [String]

        # @!attribute [rw] status
        #   The current status of the streaming distribution. When the status is
        #   Deployed, the distribution\'s information is fully propagated
        #   throughout the Amazon CloudFront system.
        #   @return [String]

        # @!attribute [rw] last_modified_time
        #   The date and time the distribution was last modified.
        #   @return [Time]

        # @!attribute [rw] domain_name
        #   The domain name corresponding to the streaming distribution. For
        #   example: s5c39gqb8ow64r.cloudfront.net.
        #   @return [String]

        # @!attribute [rw] active_trusted_signers
        #   CloudFront automatically adds this element to the response only if
        #   you\'ve set up the distribution to serve private content with signed
        #   URLs. The element lists the key pair IDs that CloudFront is aware of
        #   for each trusted signer. The Signer child element lists the AWS
        #   account number of the trusted signer (or an empty Self element if
        #   the signer is you). The Signer element also includes the IDs of any
        #   active key pairs associated with the trusted signer\'s AWS account.
        #   If no KeyPairId element appears for a Signer, that signer can\'t
        #   create working signed URLs.
        #   @return [Types::ActiveTrustedSigners]

        # @!attribute [rw] streaming_distribution_config
        #   The current configuration information for the streaming
        #   distribution.
        #   @return [Types::StreamingDistributionConfig]

      end

      # The configuration for the streaming distribution.
      # @note When making an API call, pass StreamingDistributionConfig
      #   data as a hash:
      #
      #       {
      #         caller_reference: "string", # required
      #         s3_origin: { # required
      #           domain_name: "string", # required
      #           origin_access_identity: "string", # required
      #         },
      #         aliases: {
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         comment: "string", # required
      #         logging: {
      #           enabled: false, # required
      #           bucket: "string", # required
      #           prefix: "string", # required
      #         },
      #         trusted_signers: { # required
      #           enabled: false, # required
      #           quantity: 1, # required
      #           items: ["string"],
      #         },
      #         price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #         enabled: false, # required
      #       }
      class StreamingDistributionConfig < Struct.new(
        :caller_reference,
        :s3_origin,
        :aliases,
        :comment,
        :logging,
        :trusted_signers,
        :price_class,
        :enabled)

        include Aws::Structure

        # @!attribute [rw] caller_reference
        #   A unique number that ensures the request can\'t be replayed. If the
        #   CallerReference is new (no matter the content of the
        #   StreamingDistributionConfig object), a new streaming distribution is
        #   created. If the CallerReference is a value you already sent in a
        #   previous request to create a streaming distribution, and the content
        #   of the StreamingDistributionConfig is identical to the original
        #   request (ignoring white space), the response includes the same
        #   information returned to the original request. If the CallerReference
        #   is a value you already sent in a previous request to create a
        #   streaming distribution but the content of the
        #   StreamingDistributionConfig is different from the original request,
        #   CloudFront returns a DistributionAlreadyExists error.
        #   @return [String]

        # @!attribute [rw] s3_origin
        #   A complex type that contains information about the Amazon S3 bucket
        #   from which you want CloudFront to get your media files for
        #   distribution.
        #   @return [Types::S3Origin]

        # @!attribute [rw] aliases
        #   A complex type that contains information about CNAMEs (alternate
        #   domain names), if any, for this streaming distribution.
        #   @return [Types::Aliases]

        # @!attribute [rw] comment
        #   Any comments you want to include about the streaming distribution.
        #   @return [String]

        # @!attribute [rw] logging
        #   A complex type that controls whether access logs are written for the
        #   streaming distribution.
        #   @return [Types::StreamingLoggingConfig]

        # @!attribute [rw] trusted_signers
        #   A complex type that specifies the AWS accounts, if any, that you
        #   want to allow to create signed URLs for private content. If you want
        #   to require signed URLs in requests for objects in the target origin
        #   that match the PathPattern for this cache behavior, specify true for
        #   Enabled, and specify the applicable values for Quantity and Items.
        #   For more information, go to Using a Signed URL to Serve Private
        #   Content in the Amazon CloudFront Developer Guide. If you don\'t want
        #   to require signed URLs in requests for objects that match
        #   PathPattern, specify false for Enabled and 0 for Quantity. Omit
        #   Items. To add, change, or remove one or more trusted signers, change
        #   Enabled to true (if it\'s currently false), change Quantity as
        #   applicable, and specify all of the trusted signers that you want to
        #   include in the updated distribution.
        #   @return [Types::TrustedSigners]

        # @!attribute [rw] price_class
        #   A complex type that contains information about price class for this
        #   streaming distribution.
        #   @return [String]

        # @!attribute [rw] enabled
        #   Whether the streaming distribution is enabled to accept end user
        #   requests for content.
        #   @return [Boolean]

      end

      # A streaming distribution Configuration and a list of tags to be
      # associated with the streaming distribution.
      # @note When making an API call, pass StreamingDistributionConfigWithTags
      #   data as a hash:
      #
      #       {
      #         streaming_distribution_config: { # required
      #           caller_reference: "string", # required
      #           s3_origin: { # required
      #             domain_name: "string", # required
      #             origin_access_identity: "string", # required
      #           },
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           trusted_signers: { # required
      #             enabled: false, # required
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #         },
      #         tags: { # required
      #           items: [
      #             {
      #               key: "TagKey", # required
      #               value: "TagValue",
      #             },
      #           ],
      #         },
      #       }
      class StreamingDistributionConfigWithTags < Struct.new(
        :streaming_distribution_config,
        :tags)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_config
        #   A streaming distribution Configuration.
        #   @return [Types::StreamingDistributionConfig]

        # @!attribute [rw] tags
        #   A complex type that contains zero or more Tag elements.
        #   @return [Types::Tags]

      end

      # A streaming distribution list.
      class StreamingDistributionList < Struct.new(
        :marker,
        :next_marker,
        :max_items,
        :is_truncated,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] marker
        #   The value you provided for the Marker request parameter.
        #   @return [String]

        # @!attribute [rw] next_marker
        #   If IsTruncated is true, this element is present and contains the
        #   value you can use for the Marker request parameter to continue
        #   listing your streaming distributions where they left off.
        #   @return [String]

        # @!attribute [rw] max_items
        #   The value you provided for the MaxItems request parameter.
        #   @return [Integer]

        # @!attribute [rw] is_truncated
        #   A flag that indicates whether more streaming distributions remain to
        #   be listed. If your results were truncated, you can make a follow-up
        #   pagination request using the Marker request parameter to retrieve
        #   more distributions in the list.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of streaming distributions that were created by the
        #   current AWS account.
        #   @return [Integer]

        # @!attribute [rw] items
        #   A complex type that contains one StreamingDistributionSummary
        #   element for each distribution that was created by the current AWS
        #   account.
        #   @return [Array<Types::StreamingDistributionSummary>]

      end

      # A summary of the information for an Amazon CloudFront streaming
      # distribution.
      class StreamingDistributionSummary < Struct.new(
        :id,
        :arn,
        :status,
        :last_modified_time,
        :domain_name,
        :s3_origin,
        :aliases,
        :trusted_signers,
        :comment,
        :price_class,
        :enabled)

        include Aws::Structure

        # @!attribute [rw] id
        #   The identifier for the distribution. For example: EDFDVBD632BHDS5.
        #   @return [String]

        # @!attribute [rw] arn
        #   The ARN (Amazon Resource Name) for the streaming distribution. For
        #   example:
        #   arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5,
        #   where 123456789012 is your AWS account Id.
        #   @return [String]

        # @!attribute [rw] status
        #   Indicates the current status of the distribution. When the status is
        #   Deployed, the distribution\'s information is fully propagated
        #   throughout the Amazon CloudFront system.
        #   @return [String]

        # @!attribute [rw] last_modified_time
        #   The date and time the distribution was last modified.
        #   @return [Time]

        # @!attribute [rw] domain_name
        #   The domain name corresponding to the distribution. For example:
        #   d604721fxaaqy9.cloudfront.net.
        #   @return [String]

        # @!attribute [rw] s3_origin
        #   A complex type that contains information about the Amazon S3 bucket
        #   from which you want CloudFront to get your media files for
        #   distribution.
        #   @return [Types::S3Origin]

        # @!attribute [rw] aliases
        #   A complex type that contains information about CNAMEs (alternate
        #   domain names), if any, for this streaming distribution.
        #   @return [Types::Aliases]

        # @!attribute [rw] trusted_signers
        #   A complex type that specifies the AWS accounts, if any, that you
        #   want to allow to create signed URLs for private content. If you want
        #   to require signed URLs in requests for objects in the target origin
        #   that match the PathPattern for this cache behavior, specify true for
        #   Enabled, and specify the applicable values for Quantity and Items.
        #   For more information, go to Using a Signed URL to Serve Private
        #   Content in the Amazon CloudFront Developer Guide. If you don\'t want
        #   to require signed URLs in requests for objects that match
        #   PathPattern, specify false for Enabled and 0 for Quantity. Omit
        #   Items. To add, change, or remove one or more trusted signers, change
        #   Enabled to true (if it\'s currently false), change Quantity as
        #   applicable, and specify all of the trusted signers that you want to
        #   include in the updated distribution.
        #   @return [Types::TrustedSigners]

        # @!attribute [rw] comment
        #   The comment originally specified when this distribution was created.
        #   @return [String]

        # @!attribute [rw] price_class
        #   @return [String]

        # @!attribute [rw] enabled
        #   Whether the distribution is enabled to accept end user requests for
        #   content.
        #   @return [Boolean]

      end

      # A complex type that controls whether access logs are written for this
      # streaming distribution.
      # @note When making an API call, pass StreamingLoggingConfig
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #         bucket: "string", # required
      #         prefix: "string", # required
      #       }
      class StreamingLoggingConfig < Struct.new(
        :enabled,
        :bucket,
        :prefix)

        include Aws::Structure

        # @!attribute [rw] enabled
        #   Specifies whether you want CloudFront to save access logs to an
        #   Amazon S3 bucket. If you do not want to enable logging when you
        #   create a streaming distribution or if you want to disable logging
        #   for an existing streaming distribution, specify false for Enabled,
        #   and specify empty Bucket and Prefix elements. If you specify false
        #   for Enabled but you specify values for Bucket and Prefix, the values
        #   are automatically deleted.
        #   @return [Boolean]

        # @!attribute [rw] bucket
        #   The Amazon S3 bucket to store the access logs in, for example,
        #   myawslogbucket.s3.amazonaws.com.
        #   @return [String]

        # @!attribute [rw] prefix
        #   An optional string that you want CloudFront to prefix to the access
        #   log filenames for this streaming distribution, for example,
        #   myprefix/. If you want to enable logging, but you do not want to
        #   specify a prefix, you still must include an empty Prefix element in
        #   the Logging element.
        #   @return [String]

      end

      # A complex type that contains Tag key and Tag value.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       }
      class Tag < Struct.new(
        :key,
        :value)

        include Aws::Structure

        # @!attribute [rw] key
        #   A string that contains Tag key. The string length should be between
        #   1 and 128 characters. Valid characters include a-z, A-Z, 0-9, space,
        #   and the special characters \_ - . : / = + @.
        #   @return [String]

        # @!attribute [rw] value
        #   A string that contains an optional Tag value. The string length
        #   should be between 0 and 256 characters. Valid characters include
        #   a-z, A-Z, 0-9, space, and the special characters \_ - . : / = + @.
        #   @return [String]

      end

      # A complex type that contains zero or more Tag elements.
      # @note When making an API call, pass TagKeys
      #   data as a hash:
      #
      #       {
      #         items: ["TagKey"],
      #       }
      class TagKeys < Struct.new(
        :items)

        include Aws::Structure

        # @!attribute [rw] items
        #   A complex type that contains Tag key elements
        #   @return [Array<String>]

      end

      # The request to add tags to a CloudFront resource.
      # @note When making an API call, pass TagResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource: "ResourceARN", # required
      #         tags: { # required
      #           items: [
      #             {
      #               key: "TagKey", # required
      #               value: "TagValue",
      #             },
      #           ],
      #         },
      #       }
      class TagResourceRequest < Struct.new(
        :resource,
        :tags)

        include Aws::Structure

        # @!attribute [rw] resource
        #   An ARN of a CloudFront resource.
        #   @return [String]

        # @!attribute [rw] tags
        #   A complex type that contains zero or more Tag elements.
        #   @return [Types::Tags]

      end

      # A complex type that contains zero or more Tag elements.
      # @note When making an API call, pass Tags
      #   data as a hash:
      #
      #       {
      #         items: [
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      class Tags < Struct.new(
        :items)

        include Aws::Structure

        # @!attribute [rw] items
        #   A complex type that contains Tag elements
        #   @return [Array<Types::Tag>]

      end

      # A complex type that specifies the AWS accounts, if any, that you want
      # to allow to create signed URLs for private content. If you want to
      # require signed URLs in requests for objects in the target origin that
      # match the PathPattern for this cache behavior, specify true for
      # Enabled, and specify the applicable values for Quantity and Items. For
      # more information, go to Using a Signed URL to Serve Private Content in
      # the Amazon CloudFront Developer Guide. If you don\'t want to require
      # signed URLs in requests for objects that match PathPattern, specify
      # false for Enabled and 0 for Quantity. Omit Items. To add, change, or
      # remove one or more trusted signers, change Enabled to true (if it\'s
      # currently false), change Quantity as applicable, and specify all of
      # the trusted signers that you want to include in the updated
      # distribution.
      # @note When making an API call, pass TrustedSigners
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #         quantity: 1, # required
      #         items: ["string"],
      #       }
      class TrustedSigners < Struct.new(
        :enabled,
        :quantity,
        :items)

        include Aws::Structure

        # @!attribute [rw] enabled
        #   Specifies whether you want to require end users to use signed URLs
        #   to access the files specified by PathPattern and TargetOriginId.
        #   @return [Boolean]

        # @!attribute [rw] quantity
        #   The number of trusted signers for this cache behavior.
        #   @return [Integer]

        # @!attribute [rw] items
        #   Optional: A complex type that contains trusted signers for this
        #   cache behavior. If Quantity is 0, you can omit Items.
        #   @return [Array<String>]

      end

      # The request to remove tags from a CloudFront resource.
      # @note When making an API call, pass UntagResourceRequest
      #   data as a hash:
      #
      #       {
      #         resource: "ResourceARN", # required
      #         tag_keys: { # required
      #           items: ["TagKey"],
      #         },
      #       }
      class UntagResourceRequest < Struct.new(
        :resource,
        :tag_keys)

        include Aws::Structure

        # @!attribute [rw] resource
        #   An ARN of a CloudFront resource.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   A complex type that contains zero or more Tag key elements.
        #   @return [Types::TagKeys]

      end

      # The request to update an origin access identity.
      # @note When making an API call, pass UpdateCloudFrontOriginAccessIdentityRequest
      #   data as a hash:
      #
      #       {
      #         cloud_front_origin_access_identity_config: { # required
      #           caller_reference: "string", # required
      #           comment: "string", # required
      #         },
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class UpdateCloudFrontOriginAccessIdentityRequest < Struct.new(
        :cloud_front_origin_access_identity_config,
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity_config
        #   The identity\'s configuration information.
        #   @return [Types::CloudFrontOriginAccessIdentityConfig]

        # @!attribute [rw] id
        #   The identity\'s id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received when retrieving the
        #   identity\'s configuration. For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class UpdateCloudFrontOriginAccessIdentityResult < Struct.new(
        :cloud_front_origin_access_identity,
        :etag)

        include Aws::Structure

        # @!attribute [rw] cloud_front_origin_access_identity
        #   The origin access identity\'s information.
        #   @return [Types::CloudFrontOriginAccessIdentity]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to update a distribution.
      # @note When making an API call, pass UpdateDistributionRequest
      #   data as a hash:
      #
      #       {
      #         distribution_config: { # required
      #           caller_reference: "string", # required
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           default_root_object: "string",
      #           origins: { # required
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 id: "string", # required
      #                 domain_name: "string", # required
      #                 origin_path: "string",
      #                 custom_headers: {
      #                   quantity: 1, # required
      #                   items: [
      #                     {
      #                       header_name: "string", # required
      #                       header_value: "string", # required
      #                     },
      #                   ],
      #                 },
      #                 s3_origin_config: {
      #                   origin_access_identity: "string", # required
      #                 },
      #                 custom_origin_config: {
      #                   http_port: 1, # required
      #                   https_port: 1, # required
      #                   origin_protocol_policy: "http-only", # required, accepts http-only, match-viewer, https-only
      #                   origin_ssl_protocols: {
      #                     quantity: 1, # required
      #                     items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
      #                   },
      #                 },
      #               },
      #             ],
      #           },
      #           default_cache_behavior: { # required
      #             target_origin_id: "string", # required
      #             forwarded_values: { # required
      #               query_string: false, # required
      #               cookies: { # required
      #                 forward: "none", # required, accepts none, whitelist, all
      #                 whitelisted_names: {
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #               },
      #               headers: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #               query_string_cache_keys: {
      #                 quantity: 1, # required
      #                 items: ["string"],
      #               },
      #             },
      #             trusted_signers: { # required
      #               enabled: false, # required
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #             viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #             min_ttl: 1, # required
      #             allowed_methods: {
      #               quantity: 1, # required
      #               items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               cached_methods: {
      #                 quantity: 1, # required
      #                 items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #               },
      #             },
      #             smooth_streaming: false,
      #             default_ttl: 1,
      #             max_ttl: 1,
      #             compress: false,
      #           },
      #           cache_behaviors: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 path_pattern: "string", # required
      #                 target_origin_id: "string", # required
      #                 forwarded_values: { # required
      #                   query_string: false, # required
      #                   cookies: { # required
      #                     forward: "none", # required, accepts none, whitelist, all
      #                     whitelisted_names: {
      #                       quantity: 1, # required
      #                       items: ["string"],
      #                     },
      #                   },
      #                   headers: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                   query_string_cache_keys: {
      #                     quantity: 1, # required
      #                     items: ["string"],
      #                   },
      #                 },
      #                 trusted_signers: { # required
      #                   enabled: false, # required
      #                   quantity: 1, # required
      #                   items: ["string"],
      #                 },
      #                 viewer_protocol_policy: "allow-all", # required, accepts allow-all, https-only, redirect-to-https
      #                 min_ttl: 1, # required
      #                 allowed_methods: {
      #                   quantity: 1, # required
      #                   items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   cached_methods: {
      #                     quantity: 1, # required
      #                     items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
      #                   },
      #                 },
      #                 smooth_streaming: false,
      #                 default_ttl: 1,
      #                 max_ttl: 1,
      #                 compress: false,
      #               },
      #             ],
      #           },
      #           custom_error_responses: {
      #             quantity: 1, # required
      #             items: [
      #               {
      #                 error_code: 1, # required
      #                 response_page_path: "string",
      #                 response_code: "string",
      #                 error_caching_min_ttl: 1,
      #               },
      #             ],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             include_cookies: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #           viewer_certificate: {
      #             cloud_front_default_certificate: false,
      #             iam_certificate_id: "string",
      #             acm_certificate_arn: "string",
      #             ssl_support_method: "sni-only", # accepts sni-only, vip
      #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #             certificate: "string",
      #             certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #           },
      #           restrictions: {
      #             geo_restriction: { # required
      #               restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
      #               quantity: 1, # required
      #               items: ["string"],
      #             },
      #           },
      #           web_acl_id: "string",
      #         },
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class UpdateDistributionRequest < Struct.new(
        :distribution_config,
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] distribution_config
        #   The distribution\'s configuration information.
        #   @return [Types::DistributionConfig]

        # @!attribute [rw] id
        #   The distribution\'s id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received when retrieving the
        #   distribution\'s configuration. For example: E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class UpdateDistributionResult < Struct.new(
        :distribution,
        :etag)

        include Aws::Structure

        # @!attribute [rw] distribution
        #   The distribution\'s information.
        #   @return [Types::Distribution]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The request to update a streaming distribution.
      # @note When making an API call, pass UpdateStreamingDistributionRequest
      #   data as a hash:
      #
      #       {
      #         streaming_distribution_config: { # required
      #           caller_reference: "string", # required
      #           s3_origin: { # required
      #             domain_name: "string", # required
      #             origin_access_identity: "string", # required
      #           },
      #           aliases: {
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           comment: "string", # required
      #           logging: {
      #             enabled: false, # required
      #             bucket: "string", # required
      #             prefix: "string", # required
      #           },
      #           trusted_signers: { # required
      #             enabled: false, # required
      #             quantity: 1, # required
      #             items: ["string"],
      #           },
      #           price_class: "PriceClass_100", # accepts PriceClass_100, PriceClass_200, PriceClass_All
      #           enabled: false, # required
      #         },
      #         id: "string", # required
      #         if_match: "string",
      #       }
      class UpdateStreamingDistributionRequest < Struct.new(
        :streaming_distribution_config,
        :id,
        :if_match)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution_config
        #   The streaming distribution\'s configuration information.
        #   @return [Types::StreamingDistributionConfig]

        # @!attribute [rw] id
        #   The streaming distribution\'s id.
        #   @return [String]

        # @!attribute [rw] if_match
        #   The value of the ETag header you received when retrieving the
        #   streaming distribution\'s configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # The returned result of the corresponding request.
      class UpdateStreamingDistributionResult < Struct.new(
        :streaming_distribution,
        :etag)

        include Aws::Structure

        # @!attribute [rw] streaming_distribution
        #   The streaming distribution\'s information.
        #   @return [Types::StreamingDistribution]

        # @!attribute [rw] etag
        #   The current version of the configuration. For example:
        #   E2QWRUHAPOMQZL.
        #   @return [String]

      end

      # A complex type that contains information about viewer certificates for
      # this distribution.
      # @note When making an API call, pass ViewerCertificate
      #   data as a hash:
      #
      #       {
      #         cloud_front_default_certificate: false,
      #         iam_certificate_id: "string",
      #         acm_certificate_arn: "string",
      #         ssl_support_method: "sni-only", # accepts sni-only, vip
      #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1
      #         certificate: "string",
      #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
      #       }
      class ViewerCertificate < Struct.new(
        :cloud_front_default_certificate,
        :iam_certificate_id,
        :acm_certificate_arn,
        :ssl_support_method,
        :minimum_protocol_version,
        :certificate,
        :certificate_source)

        include Aws::Structure

        # @!attribute [rw] cloud_front_default_certificate
        #   If you want viewers to use HTTPS to request your objects and you\'re
        #   using the CloudFront domain name of your distribution in your object
        #   URLs (for example, https://d111111abcdef8.cloudfront.net/logo.jpg),
        #   set to true. Omit this value if you are setting an ACMCertificateArn
        #   or IAMCertificateId.
        #   @return [Boolean]

        # @!attribute [rw] iam_certificate_id
        #   If you want viewers to use HTTPS to request your objects and you\'re
        #   using an alternate domain name in your object URLs (for example,
        #   https://example.com/logo.jpg), specify the IAM certificate
        #   identifier of the custom viewer certificate for this distribution.
        #   Specify either this value, ACMCertificateArn, or
        #   CloudFrontDefaultCertificate.
        #   @return [String]

        # @!attribute [rw] acm_certificate_arn
        #   If you want viewers to use HTTPS to request your objects and you\'re
        #   using an alternate domain name in your object URLs (for example,
        #   https://example.com/logo.jpg), specify the ACM certificate ARN of
        #   the custom viewer certificate for this distribution. Specify either
        #   this value, IAMCertificateId, or CloudFrontDefaultCertificate.
        #   @return [String]

        # @!attribute [rw] ssl_support_method
        #   If you specify a value for IAMCertificateId, you must also specify
        #   how you want CloudFront to serve HTTPS requests. Valid values are
        #   vip and sni-only. If you specify vip, CloudFront uses dedicated IP
        #   addresses for your content and can respond to HTTPS requests from
        #   any viewer. However, you must request permission to use this
        #   feature, and you incur additional monthly charges. If you specify
        #   sni-only, CloudFront can only respond to HTTPS requests from viewers
        #   that support Server Name Indication (SNI). All modern browsers
        #   support SNI, but some browsers still in use don\'t support SNI. Do
        #   not specify a value for SSLSupportMethod if you specified true for
        #   CloudFrontDefaultCertificate.
        #   @return [String]

        # @!attribute [rw] minimum_protocol_version
        #   Specify the minimum version of the SSL protocol that you want
        #   CloudFront to use, SSLv3 or TLSv1, for HTTPS connections. CloudFront
        #   will serve your objects only to browsers or devices that support at
        #   least the SSL version that you specify. The TLSv1 protocol is more
        #   secure, so we recommend that you specify SSLv3 only if your users
        #   are using browsers or devices that don\'t support TLSv1. If you\'re
        #   using a custom certificate (if you specify a value for
        #   IAMCertificateId) and if you\'re using dedicated IP (if you specify
        #   vip for SSLSupportMethod), you can choose SSLv3 or TLSv1 as the
        #   MinimumProtocolVersion. If you\'re using a custom certificate (if
        #   you specify a value for IAMCertificateId) and if you\'re using SNI
        #   (if you specify sni-only for SSLSupportMethod), you must specify
        #   TLSv1 for MinimumProtocolVersion.
        #   @return [String]

        # @!attribute [rw] certificate
        #   Note: this field is deprecated. Please use one of
        #   \[ACMCertificateArn, IAMCertificateId,
        #   CloudFrontDefaultCertificate\].
        #   @return [String]

        # @!attribute [rw] certificate_source
        #   Note: this field is deprecated. Please use one of
        #   \[ACMCertificateArn, IAMCertificateId,
        #   CloudFrontDefaultCertificate\].
        #   @return [String]

      end

    end
  end
end
