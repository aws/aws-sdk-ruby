# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  module Types

    # A complex type that lists the AWS accounts, if any, that you included
    # in the `TrustedSigners` complex type for this distribution. These are
    # the accounts that you want to allow to create signed URLs for private
    # content.
    #
    # The `Signer` complex type lists the AWS account number of the trusted
    # signer or `self` if the signer is the AWS account that created the
    # distribution. The `Signer` element also includes the IDs of any active
    # CloudFront key pairs that are associated with the trusted signer's
    # AWS account. If no `KeyPairId` element appears for a `Signer`, that
    # signer can't create signed URLs.
    #
    # For more information, see [Serving Private Content through
    # CloudFront][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @!attribute [rw] enabled
    #   Enabled is `true` if any of the AWS accounts listed in the
    #   `TrustedSigners` complex type for this RTMP distribution have active
    #   CloudFront key pairs. If not, `Enabled` is `false`.
    #
    #   For more information, see ActiveTrustedSigners.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   A complex type that contains one `Signer` complex type for each
    #   trusted signer specified in the `TrustedSigners` complex type.
    #
    #   For more information, see ActiveTrustedSigners.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `Signer` complex type for each
    #   trusted signer that is specified in the `TrustedSigners` complex
    #   type.
    #
    #   For more information, see ActiveTrustedSigners.
    #   @return [Array<Types::Signer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ActiveTrustedSigners AWS API Documentation
    #
    class ActiveTrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that contains information about CNAMEs (alternate
    # domain names), if any, for this distribution.
    #
    # @note When making an API call, you may pass Aliases
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of CNAME aliases, if any, that you want to associate with
    #   this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains the CNAME aliases, if any, that you
    #   want to associate with this distribution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Aliases AWS API Documentation
    #
    class Aliases < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that controls which HTTP methods CloudFront processes
    # and forwards to your Amazon S3 bucket or your custom origin. There are
    # three choices:
    #
    # * CloudFront forwards only `GET` and `HEAD` requests.
    #
    # * CloudFront forwards only `GET`, `HEAD`, and `OPTIONS` requests.
    #
    # * CloudFront forwards `GET, HEAD, OPTIONS, PUT, PATCH, POST`, and
    #   `DELETE` requests.
    #
    # If you pick the third choice, you may need to restrict access to your
    # Amazon S3 bucket or to your custom origin so users can't perform
    # operations that you don't want them to. For example, you might not
    # want users to have permissions to delete objects from your origin.
    #
    # @note When making an API call, you may pass AllowedMethods
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
    #
    # @!attribute [rw] quantity
    #   The number of HTTP methods that you want CloudFront to forward to
    #   your origin. Valid values are 2 (for `GET` and `HEAD` requests), 3
    #   (for `GET`, `HEAD`, and `OPTIONS` requests) and 7 (for `GET, HEAD,
    #   OPTIONS, PUT, PATCH, POST`, and `DELETE` requests).
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains the HTTP methods that you want
    #   CloudFront to process and forward to your origin.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cached_methods
    #   A complex type that controls whether CloudFront caches the response
    #   to requests using the specified HTTP methods. There are two choices:
    #
    #   * CloudFront caches responses to `GET` and `HEAD` requests.
    #
    #   * CloudFront caches responses to `GET`, `HEAD`, and `OPTIONS`
    #     requests.
    #
    #   If you pick the second choice for your Amazon S3 Origin, you may
    #   need to forward Access-Control-Request-Method,
    #   Access-Control-Request-Headers, and Origin headers for the responses
    #   to be cached correctly.
    #   @return [Types::CachedMethods]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/AllowedMethods AWS API Documentation
    #
    class AllowedMethods < Struct.new(
      :quantity,
      :items,
      :cached_methods)
      include Aws::Structure
    end

    # A complex type that describes how CloudFront processes requests.
    #
    # You must create at least as many cache behaviors (including the
    # default cache behavior) as you have origins if you want CloudFront to
    # distribute objects from all of the origins. Each cache behavior
    # specifies the one origin from which you want CloudFront to get
    # objects. If you have two origins and only the default cache behavior,
    # the default cache behavior will cause CloudFront to get objects from
    # one of the origins, but the other origin is never used.
    #
    # For the current limit on the number of cache behaviors that you can
    # add to a distribution, see [Amazon CloudFront Limits][1] in the *AWS
    # General Reference*.
    #
    # If you don't want to specify any cache behaviors, include only an
    # empty `CacheBehaviors` element. Don't include an empty
    # `CacheBehavior` element, or CloudFront returns a `MalformedXML` error.
    #
    # To delete all cache behaviors in an existing distribution, update the
    # distribution configuration and include only an empty `CacheBehaviors`
    # element.
    #
    # To add, change, or remove one or more cache behaviors, update the
    # distribution configuration and specify all of the cache behaviors that
    # you want to include in the updated distribution.
    #
    # For more information about cache behaviors, see [Cache Behaviors][2]
    # in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront
    # [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior
    #
    # @note When making an API call, you may pass CacheBehavior
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
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #       }
    #
    # @!attribute [rw] path_pattern
    #   The pattern (for example, `images/*.jpg`) that specifies which
    #   requests to apply the behavior to. When CloudFront receives a viewer
    #   request, the requested path is compared with path patterns in the
    #   order in which cache behaviors are listed in the distribution.
    #
    #   <note markdown="1"> You can optionally include a slash (`/`) at the beginning of the
    #   path pattern. For example, `/images/*.jpg`. CloudFront behavior is
    #   the same with or without the leading `/`.
    #
    #    </note>
    #
    #   The path pattern for the default cache behavior is `*` and cannot be
    #   changed. If the request for an object does not match the path
    #   pattern for any cache behaviors, CloudFront applies the behavior in
    #   the default cache behavior.
    #
    #   For more information, see [Path Pattern][1] in the <i> Amazon
    #   CloudFront Developer Guide</i>.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern
    #   @return [String]
    #
    # @!attribute [rw] target_origin_id
    #   The value of `ID` for the origin that you want CloudFront to route
    #   requests to when a request matches the path pattern either for a
    #   cache behavior or for the default cache behavior in your
    #   distribution.
    #   @return [String]
    #
    # @!attribute [rw] forwarded_values
    #   A complex type that specifies how CloudFront handles query strings
    #   and cookies.
    #   @return [Types::ForwardedValues]
    #
    # @!attribute [rw] trusted_signers
    #   A complex type that specifies the AWS accounts, if any, that you
    #   want to allow to create signed URLs for private content.
    #
    #   If you want to require signed URLs in requests for objects in the
    #   target origin that match the `PathPattern` for this cache behavior,
    #   specify `true` for `Enabled`, and specify the applicable values for
    #   `Quantity` and `Items`. For more information, see [Serving Private
    #   Content through CloudFront][1] in the *Amazon Amazon CloudFront
    #   Developer Guide*.
    #
    #   If you don't want to require signed URLs in requests for objects
    #   that match `PathPattern`, specify `false` for `Enabled` and `0` for
    #   `Quantity`. Omit `Items`.
    #
    #   To add, change, or remove one or more trusted signers, change
    #   `Enabled` to `true` (if it's currently `false`), change `Quantity`
    #   as applicable, and specify all of the trusted signers that you want
    #   to include in the updated distribution.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in the origin
    #   specified by `TargetOriginId` when a request matches the path
    #   pattern in `PathPattern`. You can specify the following options:
    #
    #   * `allow-all`\: Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https`\: If a viewer submits an HTTP request,
    #     CloudFront returns an HTTP status code of 301 (Moved Permanently)
    #     to the viewer along with the HTTPS URL. The viewer then resubmits
    #     the request using the new URL.
    #
    #   * `https-only`\: If a viewer sends an HTTP request, CloudFront
    #     returns an HTTP status code of 403 (Forbidden).
    #
    #   For more information about requiring the HTTPS protocol, see [Using
    #   an HTTPS Connection to Access Your Objects][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   <note markdown="1"> The only way to guarantee that viewers retrieve an object that was
    #   fetched from the origin using HTTPS is never to use any other
    #   protocol to fetch the object. If you have recently changed from HTTP
    #   to HTTPS, we recommend that you clear your objects' cache because
    #   cached objects are protocol agnostic. That means that an edge
    #   location will return an object from the cache regardless of whether
    #   the current request protocol matches the protocol used previously.
    #   For more information, see [Specifying How Long Objects and Errors
    #   Stay in a CloudFront Edge Cache (Expiration)][2] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html
    #   [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [String]
    #
    # @!attribute [rw] min_ttl
    #   The minimum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. For more
    #   information, see [Specifying How Long Objects and Errors Stay in a
    #   CloudFront Edge Cache (Expiration)][1] in the *Amazon Amazon
    #   CloudFront Developer Guide*.
    #
    #   You must specify `0` for `MinTTL` if you configure CloudFront to
    #   forward all headers to your origin (under `Headers`, if you specify
    #   `1` for `Quantity` and `*` for `Name`).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_methods
    #   A complex type that controls which HTTP methods CloudFront processes
    #   and forwards to your Amazon S3 bucket or your custom origin. There
    #   are three choices:
    #
    #   * CloudFront forwards only `GET` and `HEAD` requests.
    #
    #   * CloudFront forwards only `GET`, `HEAD`, and `OPTIONS` requests.
    #
    #   * CloudFront forwards `GET, HEAD, OPTIONS, PUT, PATCH, POST`, and
    #     `DELETE` requests.
    #
    #   If you pick the third choice, you may need to restrict access to
    #   your Amazon S3 bucket or to your custom origin so users can't
    #   perform operations that you don't want them to. For example, you
    #   might not want users to have permissions to delete objects from your
    #   origin.
    #   @return [Types::AllowedMethods]
    #
    # @!attribute [rw] smooth_streaming
    #   Indicates whether you want to distribute media files in the
    #   Microsoft Smooth Streaming format using the origin that is
    #   associated with this cache behavior. If so, specify `true`; if not,
    #   specify `false`. If you specify `true` for `SmoothStreaming`, you
    #   can still distribute other content using this cache behavior if the
    #   content matches the value of `PathPattern`.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ttl
    #   The default amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin does not add HTTP
    #   headers such as `Cache-Control max-age`, `Cache-Control s-maxage`,
    #   and `Expires` to objects. For more information, see [Specifying How
    #   Long Objects and Errors Stay in a CloudFront Edge Cache
    #   (Expiration)][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   The maximum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin adds HTTP headers
    #   such as `Cache-Control max-age`, `Cache-Control s-maxage`, and
    #   `Expires` to objects. For more information, see [Specifying How Long
    #   Objects and Errors Stay in a CloudFront Edge Cache (Expiration)][1]
    #   in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] compress
    #   Whether you want CloudFront to automatically compress certain files
    #   for this cache behavior. If so, specify true; if not, specify false.
    #   For more information, see [Serving Compressed Files][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_function_associations
    #   A complex type that contains zero or more Lambda function
    #   associations for a cache behavior.
    #   @return [Types::LambdaFunctionAssociations]
    #
    # @!attribute [rw] field_level_encryption_id
    #   The value of `ID` for the field-level encryption configuration that
    #   you want CloudFront to use for encrypting specific fields of data
    #   for a cache behavior or for the default cache behavior in your
    #   distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CacheBehavior AWS API Documentation
    #
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
      :compress,
      :lambda_function_associations,
      :field_level_encryption_id)
      include Aws::Structure
    end

    # A complex type that contains zero or more `CacheBehavior` elements.
    #
    # @note When making an API call, you may pass CacheBehaviors
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
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of cache behaviors for this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Optional: A complex type that contains cache behaviors for this
    #   distribution. If `Quantity` is `0`, you can omit `Items`.
    #   @return [Array<Types::CacheBehavior>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CacheBehaviors AWS API Documentation
    #
    class CacheBehaviors < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that controls whether CloudFront caches the response to
    # requests using the specified HTTP methods. There are two choices:
    #
    # * CloudFront caches responses to `GET` and `HEAD` requests.
    #
    # * CloudFront caches responses to `GET`, `HEAD`, and `OPTIONS`
    #   requests.
    #
    # If you pick the second choice for your Amazon S3 Origin, you may need
    # to forward Access-Control-Request-Method,
    # Access-Control-Request-Headers, and Origin headers for the responses
    # to be cached correctly.
    #
    # @note When making an API call, you may pass CachedMethods
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["GET"], # required, accepts GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of HTTP methods for which you want CloudFront to cache
    #   responses. Valid values are `2` (for caching responses to `GET` and
    #   `HEAD` requests) and `3` (for caching responses to `GET`, `HEAD`,
    #   and `OPTIONS` requests).
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains the HTTP methods that you want
    #   CloudFront to cache responses to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CachedMethods AWS API Documentation
    #
    class CachedMethods < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # CloudFront origin access identity.
    #
    # @!attribute [rw] id
    #   The ID for the origin access identity, for example,
    #   `E74FTE3AJFJ256A`.
    #   @return [String]
    #
    # @!attribute [rw] s3_canonical_user_id
    #   The Amazon S3 canonical user ID for the origin access identity, used
    #   when giving the origin access identity read permission to an object
    #   in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] cloud_front_origin_access_identity_config
    #   The current configuration information for the identity.
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CloudFrontOriginAccessIdentity AWS API Documentation
    #
    class CloudFrontOriginAccessIdentity < Struct.new(
      :id,
      :s3_canonical_user_id,
      :cloud_front_origin_access_identity_config)
      include Aws::Structure
    end

    # Origin access identity configuration. Send a `GET` request to the
    # `/CloudFront API version/CloudFront/identity ID/config` resource.
    #
    # @note When making an API call, you may pass CloudFrontOriginAccessIdentityConfig
    #   data as a hash:
    #
    #       {
    #         caller_reference: "string", # required
    #         comment: "string", # required
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures the request can't be replayed.
    #
    #   If the `CallerReference` is new (no matter the content of the
    #   `CloudFrontOriginAccessIdentityConfig` object), a new origin access
    #   identity is created.
    #
    #   If the `CallerReference` is a value already sent in a previous
    #   identity request, and the content of the
    #   `CloudFrontOriginAccessIdentityConfig` is identical to the original
    #   request (ignoring white space), the response includes the same
    #   information returned to the original request.
    #
    #   If the `CallerReference` is a value you already sent in a previous
    #   request to create an identity, but the content of the
    #   `CloudFrontOriginAccessIdentityConfig` is different from the
    #   original request, CloudFront returns a
    #   `CloudFrontOriginAccessIdentityAlreadyExists` error.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   Any comments you want to include about the origin access identity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CloudFrontOriginAccessIdentityConfig AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityConfig < Struct.new(
      :caller_reference,
      :comment)
      include Aws::Structure
    end

    # Lists the origin access identities for CloudFront.Send a `GET` request
    # to the `/CloudFront API version/origin-access-identity/cloudfront`
    # resource. The response includes a `CloudFrontOriginAccessIdentityList`
    # element with zero or more `CloudFrontOriginAccessIdentitySummary`
    # child elements. By default, your entire list of origin access
    # identities is returned in one single page. If the list is long, you
    # can paginate it using the `MaxItems` and `Marker` parameters.
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of origin access identities. The results include identities in
    #   the list that occur after the marker. To get the next page of
    #   results, set the `Marker` to the value of the `NextMarker` from the
    #   current page's response (which is also the ID of the last identity
    #   on that page).
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, this element is present and contains the
    #   value you can use for the `Marker` request parameter to continue
    #   listing your origin access identities where they left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin access identities you want in the
    #   response body.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more origin access identities remain
    #   to be listed. If your results were truncated, you can make a
    #   follow-up pagination request using the `Marker` request parameter to
    #   retrieve more items in the list.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of CloudFront origin access identities that were created
    #   by the current AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one
    #   `CloudFrontOriginAccessIdentitySummary` element for each origin
    #   access identity that was created by the current AWS account.
    #   @return [Array<Types::CloudFrontOriginAccessIdentitySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CloudFrontOriginAccessIdentityList AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      include Aws::Structure
    end

    # Summary of the information about a CloudFront origin access identity.
    #
    # @!attribute [rw] id
    #   The ID for the origin access identity. For example:
    #   `E74FTE3AJFJ256A`.
    #   @return [String]
    #
    # @!attribute [rw] s3_canonical_user_id
    #   The Amazon S3 canonical user ID for the origin access identity,
    #   which you use when giving the origin access identity read permission
    #   to an object in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment for this origin access identity, as originally specified
    #   when created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CloudFrontOriginAccessIdentitySummary AWS API Documentation
    #
    class CloudFrontOriginAccessIdentitySummary < Struct.new(
      :id,
      :s3_canonical_user_id,
      :comment)
      include Aws::Structure
    end

    # A field-level encryption content type profile.
    #
    # @note When making an API call, you may pass ContentTypeProfile
    #   data as a hash:
    #
    #       {
    #         format: "URLEncoded", # required, accepts URLEncoded
    #         profile_id: "string",
    #         content_type: "string", # required
    #       }
    #
    # @!attribute [rw] format
    #   The format for a field-level encryption content type-profile
    #   mapping.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The profile ID for a field-level encryption content type-profile
    #   mapping.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type for a field-level encryption content type-profile
    #   mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ContentTypeProfile AWS API Documentation
    #
    class ContentTypeProfile < Struct.new(
      :format,
      :profile_id,
      :content_type)
      include Aws::Structure
    end

    # The configuration for a field-level encryption content type-profile
    # mapping.
    #
    # @note When making an API call, you may pass ContentTypeProfileConfig
    #   data as a hash:
    #
    #       {
    #         forward_when_content_type_is_unknown: false, # required
    #         content_type_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               format: "URLEncoded", # required, accepts URLEncoded
    #               profile_id: "string",
    #               content_type: "string", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] forward_when_content_type_is_unknown
    #   The setting in a field-level encryption content type-profile mapping
    #   that specifies what to do when an unknown content type is provided
    #   for the profile. If true, content is forwarded without being
    #   encrypted when the content type is unknown. If false (the default),
    #   an error is returned when the content type is unknown.
    #   @return [Boolean]
    #
    # @!attribute [rw] content_type_profiles
    #   The configuration for a field-level encryption content type-profile.
    #   @return [Types::ContentTypeProfiles]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ContentTypeProfileConfig AWS API Documentation
    #
    class ContentTypeProfileConfig < Struct.new(
      :forward_when_content_type_is_unknown,
      :content_type_profiles)
      include Aws::Structure
    end

    # Field-level encryption content type-profile.
    #
    # @note When making an API call, you may pass ContentTypeProfiles
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             format: "URLEncoded", # required, accepts URLEncoded
    #             profile_id: "string",
    #             content_type: "string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption content type-profile mappings.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Items in a field-level encryption content type-profile mapping.
    #   @return [Array<Types::ContentTypeProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ContentTypeProfiles AWS API Documentation
    #
    class ContentTypeProfiles < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that specifies whether you want CloudFront to forward
    # cookies to the origin and, if so, which ones. For more information
    # about forwarding cookies to the origin, see [How CloudFront Forwards,
    # Caches, and Logs Cookies][1] in the *Amazon CloudFront Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html
    #
    # @note When making an API call, you may pass CookieNames
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of different cookies that you want CloudFront to forward
    #   to the origin for this cache behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `Name` element for each cookie that
    #   you want CloudFront to forward to the origin for this cache
    #   behavior.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CookieNames AWS API Documentation
    #
    class CookieNames < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that specifies whether you want CloudFront to forward
    # cookies to the origin and, if so, which ones. For more information
    # about forwarding cookies to the origin, see [How CloudFront Forwards,
    # Caches, and Logs Cookies][1] in the *Amazon CloudFront Developer
    # Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html
    #
    # @note When making an API call, you may pass CookiePreference
    #   data as a hash:
    #
    #       {
    #         forward: "none", # required, accepts none, whitelist, all
    #         whitelisted_names: {
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] forward
    #   Specifies which cookies to forward to the origin for this cache
    #   behavior: all, none, or the list of cookies specified in the
    #   `WhitelistedNames` complex type.
    #
    #   Amazon S3 doesn't process cookies. When the cache behavior is
    #   forwarding requests to an Amazon S3 origin, specify none for the
    #   `Forward` element.
    #   @return [String]
    #
    # @!attribute [rw] whitelisted_names
    #   Required if you specify `whitelist` for the value of `Forward:`. A
    #   complex type that specifies how many different cookies you want
    #   CloudFront to forward to the origin for this cache behavior and, if
    #   you want to forward selected cookies, the names of those cookies.
    #
    #   If you specify `all` or none for the value of `Forward`, omit
    #   `WhitelistedNames`. If you change the value of `Forward` from
    #   `whitelist` to all or none and you don't delete the
    #   `WhitelistedNames` element and its child elements, CloudFront
    #   deletes them automatically.
    #
    #   For the current limit on the number of cookie names that you can
    #   whitelist for each cache behavior, see [Amazon CloudFront Limits][1]
    #   in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront
    #   @return [Types::CookieNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CookiePreference AWS API Documentation
    #
    class CookiePreference < Struct.new(
      :forward,
      :whitelisted_names)
      include Aws::Structure
    end

    # The request to create a new origin access identity.
    #
    # @note When making an API call, you may pass CreateCloudFrontOriginAccessIdentityRequest
    #   data as a hash:
    #
    #       {
    #         cloud_front_origin_access_identity_config: { # required
    #           caller_reference: "string", # required
    #           comment: "string", # required
    #         },
    #       }
    #
    # @!attribute [rw] cloud_front_origin_access_identity_config
    #   The current configuration information for the identity.
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class CreateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity
    #   The origin access identity's information.
    #   @return [Types::CloudFrontOriginAccessIdentity]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new origin access identity just
    #   created. For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/origin-access-identity/cloudfront/E74FTE3AJFJ256A`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the origin access identity created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class CreateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :location,
      :etag)
      include Aws::Structure
    end

    # The request to create a new distribution.
    #
    # @note When making an API call, you may pass CreateDistributionRequest
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
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
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
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
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
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                       include_body: false,
    #                     },
    #                   ],
    #                 },
    #                 field_level_encryption_id: "string",
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
    #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
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
    #           http_version: "http1.1", # accepts http1.1, http2
    #           is_ipv6_enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] distribution_config
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistributionRequest AWS API Documentation
    #
    class CreateDistributionRequest < Struct.new(
      :distribution_config)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution
    #   The distribution's information.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new distribution resource just
    #   created. For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistributionResult AWS API Documentation
    #
    class CreateDistributionResult < Struct.new(
      :distribution,
      :location,
      :etag)
      include Aws::Structure
    end

    # The request to create a new distribution with tags.
    #
    # @note When making an API call, you may pass CreateDistributionWithTagsRequest
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
    #                     origin_read_timeout: 1,
    #                     origin_keepalive_timeout: 1,
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
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                     include_body: false,
    #                   },
    #                 ],
    #               },
    #               field_level_encryption_id: "string",
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
    #                   lambda_function_associations: {
    #                     quantity: 1, # required
    #                     items: [
    #                       {
    #                         lambda_function_arn: "LambdaFunctionARN", # required
    #                         event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                         include_body: false,
    #                       },
    #                     ],
    #                   },
    #                   field_level_encryption_id: "string",
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
    #               minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
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
    #             http_version: "http1.1", # accepts http1.1, http2
    #             is_ipv6_enabled: false,
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
    #
    # @!attribute [rw] distribution_config_with_tags
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfigWithTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistributionWithTagsRequest AWS API Documentation
    #
    class CreateDistributionWithTagsRequest < Struct.new(
      :distribution_config_with_tags)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution
    #   The distribution's information.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new distribution resource just
    #   created. For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/distribution/EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateDistributionWithTagsResult AWS API Documentation
    #
    class CreateDistributionWithTagsResult < Struct.new(
      :distribution,
      :location,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFieldLevelEncryptionConfigRequest
    #   data as a hash:
    #
    #       {
    #         field_level_encryption_config: { # required
    #           caller_reference: "string", # required
    #           comment: "string",
    #           query_arg_profile_config: {
    #             forward_when_query_arg_profile_is_unknown: false, # required
    #             query_arg_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   query_arg: "string", # required
    #                   profile_id: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #           content_type_profile_config: {
    #             forward_when_content_type_is_unknown: false, # required
    #             content_type_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   format: "URLEncoded", # required, accepts URLEncoded
    #                   profile_id: "string",
    #                   content_type: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] field_level_encryption_config
    #   The request to create a new field-level encryption configuration.
    #   @return [Types::FieldLevelEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class CreateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption
    #   Returned when you create a new field-level encryption configuration.
    #   @return [Types::FieldLevelEncryption]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new configuration resource just
    #   created. For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-config/EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption configuration. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class CreateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :location,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFieldLevelEncryptionProfileRequest
    #   data as a hash:
    #
    #       {
    #         field_level_encryption_profile_config: { # required
    #           name: "string", # required
    #           caller_reference: "string", # required
    #           comment: "string",
    #           encryption_entities: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 public_key_id: "string", # required
    #                 provider_id: "string", # required
    #                 field_patterns: { # required
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] field_level_encryption_profile_config
    #   The request to create a field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class CreateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile
    #   Returned when you create a new field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfile]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new profile resource just created.
    #   For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/field-level-encryption-profile/EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption profile. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class CreateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :location,
      :etag)
      include Aws::Structure
    end

    # The request to create an invalidation.
    #
    # @note When making an API call, you may pass CreateInvalidationRequest
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
    #
    # @!attribute [rw] distribution_id
    #   The distribution's id.
    #   @return [String]
    #
    # @!attribute [rw] invalidation_batch
    #   The batch information for the invalidation.
    #   @return [Types::InvalidationBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateInvalidationRequest AWS API Documentation
    #
    class CreateInvalidationRequest < Struct.new(
      :distribution_id,
      :invalidation_batch)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the distribution and invalidation batch
    #   request, including the `Invalidation ID`.
    #   @return [String]
    #
    # @!attribute [rw] invalidation
    #   The invalidation's information.
    #   @return [Types::Invalidation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateInvalidationResult AWS API Documentation
    #
    class CreateInvalidationResult < Struct.new(
      :location,
      :invalidation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         public_key_config: { # required
    #           caller_reference: "string", # required
    #           name: "string", # required
    #           encoded_key: "string", # required
    #           comment: "string",
    #         },
    #       }
    #
    # @!attribute [rw] public_key_config
    #   The request to add a public key to CloudFront.
    #   @return [Types::PublicKeyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreatePublicKeyRequest AWS API Documentation
    #
    class CreatePublicKeyRequest < Struct.new(
      :public_key_config)
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   Returned when you add a public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new public key resource just created.
    #   For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/cloudfront-public-key/EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the public key. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreatePublicKeyResult AWS API Documentation
    #
    class CreatePublicKeyResult < Struct.new(
      :public_key,
      :location,
      :etag)
      include Aws::Structure
    end

    # The request to create a new streaming distribution.
    #
    # @note When making an API call, you may pass CreateStreamingDistributionRequest
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
    #
    # @!attribute [rw] streaming_distribution_config
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistributionRequest AWS API Documentation
    #
    class CreateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution
    #   The streaming distribution's information.
    #   @return [Types::StreamingDistribution]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new streaming distribution resource
    #   just created. For example:
    #   `https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the streaming distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistributionResult AWS API Documentation
    #
    class CreateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :location,
      :etag)
      include Aws::Structure
    end

    # The request to create a new streaming distribution with tags.
    #
    # @note When making an API call, you may pass CreateStreamingDistributionWithTagsRequest
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
    #
    # @!attribute [rw] streaming_distribution_config_with_tags
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfigWithTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistributionWithTagsRequest AWS API Documentation
    #
    class CreateStreamingDistributionWithTagsRequest < Struct.new(
      :streaming_distribution_config_with_tags)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution
    #   The streaming distribution's information.
    #   @return [Types::StreamingDistribution]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new streaming distribution resource
    #   just created. For example:`
    #   https://cloudfront.amazonaws.com/2010-11-01/streaming-distribution/EGTXBD79H29TRA8`.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CreateStreamingDistributionWithTagsResult AWS API Documentation
    #
    class CreateStreamingDistributionWithTagsResult < Struct.new(
      :streaming_distribution,
      :location,
      :etag)
      include Aws::Structure
    end

    # A complex type that controls:
    #
    # * Whether CloudFront replaces HTTP status codes in the 4xx and 5xx
    #   range with custom error messages before returning the response to
    #   the viewer.
    #
    # * How long CloudFront caches HTTP status codes in the 4xx and 5xx
    #   range.
    #
    # For more information about custom error pages, see [Customizing Error
    # Responses][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #
    # @note When making an API call, you may pass CustomErrorResponse
    #   data as a hash:
    #
    #       {
    #         error_code: 1, # required
    #         response_page_path: "string",
    #         response_code: "string",
    #         error_caching_min_ttl: 1,
    #       }
    #
    # @!attribute [rw] error_code
    #   The HTTP status code for which you want to specify a custom error
    #   page and/or a caching duration.
    #   @return [Integer]
    #
    # @!attribute [rw] response_page_path
    #   The path to the custom error page that you want CloudFront to return
    #   to a viewer when your origin returns the HTTP status code specified
    #   by `ErrorCode`, for example, `/4xx-errors/403-forbidden.html`. If
    #   you want to store your objects and your custom error pages in
    #   different locations, your distribution must include a cache behavior
    #   for which the following is true:
    #
    #   * The value of `PathPattern` matches the path to your custom error
    #     messages. For example, suppose you saved custom error pages for
    #     4xx errors in an Amazon S3 bucket in a directory named
    #     `/4xx-errors`. Your distribution must include a cache behavior for
    #     which the path pattern routes requests for your custom error pages
    #     to that location, for example, `/4xx-errors/*`.
    #
    #   * The value of `TargetOriginId` specifies the value of the `ID`
    #     element for the origin that contains your custom error pages.
    #
    #   If you specify a value for `ResponsePagePath`, you must also specify
    #   a value for `ResponseCode`. If you don't want to specify a value,
    #   include an empty element, `<ResponsePagePath>`, in the XML document.
    #
    #   We recommend that you store custom error pages in an Amazon S3
    #   bucket. If you store custom error pages on an HTTP server and the
    #   server starts to return 5xx errors, CloudFront can't get the files
    #   that you want to return to viewers because the origin server is
    #   unavailable.
    #   @return [String]
    #
    # @!attribute [rw] response_code
    #   The HTTP status code that you want CloudFront to return to the
    #   viewer along with the custom error page. There are a variety of
    #   reasons that you might want CloudFront to return a status code
    #   different from the status code that your origin returned to
    #   CloudFront, for example:
    #
    #   * Some Internet devices (some firewalls and corporate proxies, for
    #     example) intercept HTTP 4xx and 5xx and prevent the response from
    #     being returned to the viewer. If you substitute `200`, the
    #     response typically won't be intercepted.
    #
    #   * If you don't care about distinguishing among different client
    #     errors or server errors, you can specify `400` or `500` as the
    #     `ResponseCode` for all 4xx or 5xx errors.
    #
    #   * You might want to return a `200` status code (OK) and static
    #     website so your customers don't know that your website is down.
    #
    #   If you specify a value for `ResponseCode`, you must also specify a
    #   value for `ResponsePagePath`. If you don't want to specify a value,
    #   include an empty element, `<ResponseCode>`, in the XML document.
    #   @return [String]
    #
    # @!attribute [rw] error_caching_min_ttl
    #   The minimum amount of time, in seconds, that you want CloudFront to
    #   cache the HTTP status code specified in `ErrorCode`. When this time
    #   period has elapsed, CloudFront queries your origin to see whether
    #   the problem that caused the error has been resolved and the
    #   requested object is now available.
    #
    #   If you don't want to specify a value, include an empty element,
    #   `<ErrorCachingMinTTL>`, in the XML document.
    #
    #   For more information, see [Customizing Error Responses][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CustomErrorResponse AWS API Documentation
    #
    class CustomErrorResponse < Struct.new(
      :error_code,
      :response_page_path,
      :response_code,
      :error_caching_min_ttl)
      include Aws::Structure
    end

    # A complex type that controls:
    #
    # * Whether CloudFront replaces HTTP status codes in the 4xx and 5xx
    #   range with custom error messages before returning the response to
    #   the viewer.
    #
    # * How long CloudFront caches HTTP status codes in the 4xx and 5xx
    #   range.
    #
    # For more information about custom error pages, see [Customizing Error
    # Responses][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #
    # @note When making an API call, you may pass CustomErrorResponses
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
    #
    # @!attribute [rw] quantity
    #   The number of HTTP status codes for which you want to specify a
    #   custom error page and/or a caching duration. If `Quantity` is `0`,
    #   you can omit `Items`.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains a `CustomErrorResponse` element for
    #   each HTTP status code for which you want to specify a custom error
    #   page and/or a caching duration.
    #   @return [Array<Types::CustomErrorResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CustomErrorResponses AWS API Documentation
    #
    class CustomErrorResponses < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that contains the list of Custom Headers for each
    # origin.
    #
    # @note When making an API call, you may pass CustomHeaders
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
    #
    # @!attribute [rw] quantity
    #   The number of custom headers, if any, for this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   **Optional**\: A list that contains one `OriginCustomHeader` element
    #   for each custom header that you want CloudFront to forward to the
    #   origin. If Quantity is `0`, omit `Items`.
    #   @return [Array<Types::OriginCustomHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CustomHeaders AWS API Documentation
    #
    class CustomHeaders < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A customer origin or an Amazon S3 bucket configured as a website
    # endpoint.
    #
    # @note When making an API call, you may pass CustomOriginConfig
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
    #         origin_read_timeout: 1,
    #         origin_keepalive_timeout: 1,
    #       }
    #
    # @!attribute [rw] http_port
    #   The HTTP port the custom origin listens on.
    #   @return [Integer]
    #
    # @!attribute [rw] https_port
    #   The HTTPS port the custom origin listens on.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_protocol_policy
    #   The origin protocol policy to apply to your origin.
    #   @return [String]
    #
    # @!attribute [rw] origin_ssl_protocols
    #   The SSL/TLS protocols that you want CloudFront to use when
    #   communicating with your origin over HTTPS.
    #   @return [Types::OriginSslProtocols]
    #
    # @!attribute [rw] origin_read_timeout
    #   You can create a custom origin read timeout. All timeout units are
    #   in seconds. The default origin read timeout is 30 seconds, but you
    #   can configure custom timeout lengths using the CloudFront API. The
    #   minimum timeout length is 4 seconds; the maximum is 60 seconds.
    #
    #   If you need to increase the maximum time limit, contact the [AWS
    #   Support Center][1].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home#/
    #   @return [Integer]
    #
    # @!attribute [rw] origin_keepalive_timeout
    #   You can create a custom keep-alive timeout. All timeout units are in
    #   seconds. The default keep-alive timeout is 5 seconds, but you can
    #   configure custom timeout lengths using the CloudFront API. The
    #   minimum timeout length is 1 second; the maximum is 60 seconds.
    #
    #   If you need to increase the maximum time limit, contact the [AWS
    #   Support Center][1].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/support/home#/
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/CustomOriginConfig AWS API Documentation
    #
    class CustomOriginConfig < Struct.new(
      :http_port,
      :https_port,
      :origin_protocol_policy,
      :origin_ssl_protocols,
      :origin_read_timeout,
      :origin_keepalive_timeout)
      include Aws::Structure
    end

    # A complex type that describes the default cache behavior if you don't
    # specify a `CacheBehavior` element or if files don't match any of the
    # values of `PathPattern` in `CacheBehavior` elements. You must create
    # exactly one default cache behavior.
    #
    # @note When making an API call, you may pass DefaultCacheBehavior
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
    #         lambda_function_associations: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               lambda_function_arn: "LambdaFunctionARN", # required
    #               event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #               include_body: false,
    #             },
    #           ],
    #         },
    #         field_level_encryption_id: "string",
    #       }
    #
    # @!attribute [rw] target_origin_id
    #   The value of `ID` for the origin that you want CloudFront to route
    #   requests to when a request matches the path pattern either for a
    #   cache behavior or for the default cache behavior in your
    #   distribution.
    #   @return [String]
    #
    # @!attribute [rw] forwarded_values
    #   A complex type that specifies how CloudFront handles query strings
    #   and cookies.
    #   @return [Types::ForwardedValues]
    #
    # @!attribute [rw] trusted_signers
    #   A complex type that specifies the AWS accounts, if any, that you
    #   want to allow to create signed URLs for private content.
    #
    #   If you want to require signed URLs in requests for objects in the
    #   target origin that match the `PathPattern` for this cache behavior,
    #   specify `true` for `Enabled`, and specify the applicable values for
    #   `Quantity` and `Items`. For more information, see [Serving Private
    #   Content through CloudFront][1] in the *Amazon Amazon CloudFront
    #   Developer Guide*.
    #
    #   If you don't want to require signed URLs in requests for objects
    #   that match `PathPattern`, specify `false` for `Enabled` and `0` for
    #   `Quantity`. Omit `Items`.
    #
    #   To add, change, or remove one or more trusted signers, change
    #   `Enabled` to `true` (if it's currently `false`), change `Quantity`
    #   as applicable, and specify all of the trusted signers that you want
    #   to include in the updated distribution.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in the origin
    #   specified by `TargetOriginId` when a request matches the path
    #   pattern in `PathPattern`. You can specify the following options:
    #
    #   * `allow-all`\: Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https`\: If a viewer submits an HTTP request,
    #     CloudFront returns an HTTP status code of 301 (Moved Permanently)
    #     to the viewer along with the HTTPS URL. The viewer then resubmits
    #     the request using the new URL.
    #
    #   * `https-only`\: If a viewer sends an HTTP request, CloudFront
    #     returns an HTTP status code of 403 (Forbidden).
    #
    #   For more information about requiring the HTTPS protocol, see [Using
    #   an HTTPS Connection to Access Your Objects][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   <note markdown="1"> The only way to guarantee that viewers retrieve an object that was
    #   fetched from the origin using HTTPS is never to use any other
    #   protocol to fetch the object. If you have recently changed from HTTP
    #   to HTTPS, we recommend that you clear your objects' cache because
    #   cached objects are protocol agnostic. That means that an edge
    #   location will return an object from the cache regardless of whether
    #   the current request protocol matches the protocol used previously.
    #   For more information, see [Specifying How Long Objects and Errors
    #   Stay in a CloudFront Edge Cache (Expiration)][2] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html
    #   [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [String]
    #
    # @!attribute [rw] min_ttl
    #   The minimum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. For more
    #   information, see [Specifying How Long Objects and Errors Stay in a
    #   CloudFront Edge Cache (Expiration)][1] in the *Amazon Amazon
    #   CloudFront Developer Guide*.
    #
    #   You must specify `0` for `MinTTL` if you configure CloudFront to
    #   forward all headers to your origin (under `Headers`, if you specify
    #   `1` for `Quantity` and `*` for `Name`).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_methods
    #   A complex type that controls which HTTP methods CloudFront processes
    #   and forwards to your Amazon S3 bucket or your custom origin. There
    #   are three choices:
    #
    #   * CloudFront forwards only `GET` and `HEAD` requests.
    #
    #   * CloudFront forwards only `GET`, `HEAD`, and `OPTIONS` requests.
    #
    #   * CloudFront forwards `GET, HEAD, OPTIONS, PUT, PATCH, POST`, and
    #     `DELETE` requests.
    #
    #   If you pick the third choice, you may need to restrict access to
    #   your Amazon S3 bucket or to your custom origin so users can't
    #   perform operations that you don't want them to. For example, you
    #   might not want users to have permissions to delete objects from your
    #   origin.
    #   @return [Types::AllowedMethods]
    #
    # @!attribute [rw] smooth_streaming
    #   Indicates whether you want to distribute media files in the
    #   Microsoft Smooth Streaming format using the origin that is
    #   associated with this cache behavior. If so, specify `true`; if not,
    #   specify `false`. If you specify `true` for `SmoothStreaming`, you
    #   can still distribute other content using this cache behavior if the
    #   content matches the value of `PathPattern`.
    #   @return [Boolean]
    #
    # @!attribute [rw] default_ttl
    #   The default amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin does not add HTTP
    #   headers such as `Cache-Control max-age`, `Cache-Control s-maxage`,
    #   and `Expires` to objects. For more information, see [Specifying How
    #   Long Objects and Errors Stay in a CloudFront Edge Cache
    #   (Expiration)][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   @return [Integer]
    #
    # @!attribute [rw] compress
    #   Whether you want CloudFront to automatically compress certain files
    #   for this cache behavior. If so, specify `true`; if not, specify
    #   `false`. For more information, see [Serving Compressed Files][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_function_associations
    #   A complex type that contains zero or more Lambda function
    #   associations for a cache behavior.
    #   @return [Types::LambdaFunctionAssociations]
    #
    # @!attribute [rw] field_level_encryption_id
    #   The value of `ID` for the field-level encryption configuration that
    #   you want CloudFront to use for encrypting specific fields of data
    #   for a cache behavior or for the default cache behavior in your
    #   distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DefaultCacheBehavior AWS API Documentation
    #
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
      :compress,
      :lambda_function_associations,
      :field_level_encryption_id)
      include Aws::Structure
    end

    # Deletes a origin access identity.
    #
    # @note When making an API call, you may pass DeleteCloudFrontOriginAccessIdentityRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   The origin access identity's ID.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header you received from a previous `GET` or
    #   `PUT` request. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class DeleteCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # This action deletes a web distribution. To delete a web distribution
    # using the CloudFront API, perform the following steps.
    #
    # **To delete a web distribution using the CloudFront API:**
    #
    # 1.  Disable the web distribution
    #
    # 2.  Submit a `GET Distribution Config` request to get the current
    #     configuration and the `Etag` header for the distribution.
    #
    # 3.  Update the XML document that was returned in the response to your
    #     `GET Distribution Config` request to change the value of `Enabled`
    #     to `false`.
    #
    # 4.  Submit a `PUT Distribution Config` request to update the
    #     configuration for your distribution. In the request body, include
    #     the XML document that you updated in Step 3. Set the value of the
    #     HTTP `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Distribution
    #     Config` request in Step 2.
    #
    # 5.  Review the response to the `PUT Distribution Config` request to
    #     confirm that the distribution was successfully disabled.
    #
    # 6.  Submit a `GET Distribution` request to confirm that your changes
    #     have propagated. When propagation is complete, the value of
    #     `Status` is `Deployed`.
    #
    # 7.  Submit a `DELETE Distribution` request. Set the value of the HTTP
    #     `If-Match` header to the value of the `ETag` header that
    #     CloudFront returned when you submitted the `GET Distribution
    #     Config` request in Step 6.
    #
    # 8.  Review the response to your `DELETE Distribution` request to
    #     confirm that the distribution was successfully deleted.
    #
    # For information about deleting a distribution using the CloudFront
    # console, see [Deleting a Distribution][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
    #
    # @note When making an API call, you may pass DeleteDistributionRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   The distribution ID.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when you disabled
    #   the distribution. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteDistributionRequest AWS API Documentation
    #
    class DeleteDistributionRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFieldLevelEncryptionConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the configuration you want to delete from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class DeleteFieldLevelEncryptionConfigRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFieldLevelEncryptionProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   Request the ID of the profile you want to delete from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class DeleteFieldLevelEncryptionProfileRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the public key you want to remove from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key identity to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeletePublicKeyRequest AWS API Documentation
    #
    class DeletePublicKeyRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # The request to delete a streaming distribution.
    #
    # @note When making an API call, you may pass DeleteStreamingDistributionRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] id
    #   The distribution ID.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when you disabled
    #   the streaming distribution. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DeleteStreamingDistributionRequest AWS API Documentation
    #
    class DeleteStreamingDistributionRequest < Struct.new(
      :id,
      :if_match)
      include Aws::Structure
    end

    # The distribution's information.
    #
    # @!attribute [rw] id
    #   The identifier for the distribution. For example: `EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the distribution. For example:
    #   `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`,
    #   where `123456789012` is your AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   This response element indicates the current status of the
    #   distribution. When the status is `Deployed`, the distribution's
    #   information is fully propagated to all CloudFront edge locations.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the distribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] in_progress_invalidation_batches
    #   The number of invalidation batches currently in progress.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The domain name corresponding to the distribution, for example,
    #   `d111111abcdef8.cloudfront.net`.
    #   @return [String]
    #
    # @!attribute [rw] active_trusted_signers
    #   CloudFront automatically adds this element to the response only if
    #   you've set up the distribution to serve private content with signed
    #   URLs. The element lists the key pair IDs that CloudFront is aware of
    #   for each trusted signer. The `Signer` child element lists the AWS
    #   account number of the trusted signer (or an empty `Self` element if
    #   the signer is you). The `Signer` element also includes the IDs of
    #   any active key pairs associated with the trusted signer's AWS
    #   account. If no `KeyPairId` element appears for a `Signer`, that
    #   signer can't create working signed URLs.
    #   @return [Types::ActiveTrustedSigners]
    #
    # @!attribute [rw] distribution_config
    #   The current configuration information for the distribution. Send a
    #   `GET` request to the `/CloudFront API version/distribution
    #   ID/config` resource.
    #   @return [Types::DistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Distribution AWS API Documentation
    #
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
    end

    # A distribution configuration.
    #
    # @note When making an API call, you may pass DistributionConfig
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
    #                 origin_read_timeout: 1,
    #                 origin_keepalive_timeout: 1,
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
    #           lambda_function_associations: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 lambda_function_arn: "LambdaFunctionARN", # required
    #                 event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                 include_body: false,
    #               },
    #             ],
    #           },
    #           field_level_encryption_id: "string",
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
    #               lambda_function_associations: {
    #                 quantity: 1, # required
    #                 items: [
    #                   {
    #                     lambda_function_arn: "LambdaFunctionARN", # required
    #                     event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                     include_body: false,
    #                   },
    #                 ],
    #               },
    #               field_level_encryption_id: "string",
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
    #           minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
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
    #         http_version: "http1.1", # accepts http1.1, http2
    #         is_ipv6_enabled: false,
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique value (for example, a date-time stamp) that ensures that
    #   the request can't be replayed.
    #
    #   If the value of `CallerReference` is new (regardless of the content
    #   of the `DistributionConfig` object), CloudFront creates a new
    #   distribution.
    #
    #   If `CallerReference` is a value you already sent in a previous
    #   request to create a distribution, and if the content of the
    #   `DistributionConfig` is identical to the original request (ignoring
    #   white space), CloudFront returns the same the response that it
    #   returned to the original request.
    #
    #   If `CallerReference` is a value you already sent in a previous
    #   request to create a distribution but the content of the
    #   `DistributionConfig` is different from the original request,
    #   CloudFront returns a `DistributionAlreadyExists` error.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   A complex type that contains information about CNAMEs (alternate
    #   domain names), if any, for this distribution.
    #   @return [Types::Aliases]
    #
    # @!attribute [rw] default_root_object
    #   The object that you want CloudFront to request from your origin (for
    #   example, `index.html`) when a viewer requests the root URL for your
    #   distribution (`http://www.example.com`) instead of an object in your
    #   distribution (`http://www.example.com/product-description.html`).
    #   Specifying a default root object avoids exposing the contents of
    #   your distribution.
    #
    #   Specify only the object name, for example, `index.html`. Don't add
    #   a `/` before the object name.
    #
    #   If you don't want to specify a default root object when you create
    #   a distribution, include an empty `DefaultRootObject` element.
    #
    #   To delete the default root object from an existing distribution,
    #   update the distribution configuration and include an empty
    #   `DefaultRootObject` element.
    #
    #   To replace the default root object, update the distribution
    #   configuration and specify the new object.
    #
    #   For more information about the default root object, see [Creating a
    #   Default Root Object][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html
    #   @return [String]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::Origins]
    #
    # @!attribute [rw] default_cache_behavior
    #   A complex type that describes the default cache behavior if you
    #   don't specify a `CacheBehavior` element or if files don't match
    #   any of the values of `PathPattern` in `CacheBehavior` elements. You
    #   must create exactly one default cache behavior.
    #   @return [Types::DefaultCacheBehavior]
    #
    # @!attribute [rw] cache_behaviors
    #   A complex type that contains zero or more `CacheBehavior` elements.
    #   @return [Types::CacheBehaviors]
    #
    # @!attribute [rw] custom_error_responses
    #   A complex type that controls the following:
    #
    #   * Whether CloudFront replaces HTTP status codes in the 4xx and 5xx
    #     range with custom error messages before returning the response to
    #     the viewer.
    #
    #   * How long CloudFront caches HTTP status codes in the 4xx and 5xx
    #     range.
    #
    #   For more information about custom error pages, see [Customizing
    #   Error Responses][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #   @return [Types::CustomErrorResponses]
    #
    # @!attribute [rw] comment
    #   Any comments you want to include about the distribution.
    #
    #   If you don't want to specify a comment, include an empty `Comment`
    #   element.
    #
    #   To delete an existing comment, update the distribution configuration
    #   and include an empty `Comment` element.
    #
    #   To add or change a comment, update the distribution configuration
    #   and specify the new comment.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   A complex type that controls whether access logs are written for the
    #   distribution.
    #
    #   For more information about logging, see [Access Logs][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] price_class
    #   The price class that corresponds with the maximum price that you
    #   want to pay for CloudFront service. If you specify `PriceClass_All`,
    #   CloudFront responds to requests for your objects from all CloudFront
    #   edge locations.
    #
    #   If you specify a price class other than `PriceClass_All`, CloudFront
    #   serves your objects from the CloudFront edge location that has the
    #   lowest latency among the edge locations in your price class. Viewers
    #   who are in or near regions that are excluded from your specified
    #   price class may encounter slower performance.
    #
    #   For more information about price classes, see [Choosing the Price
    #   Class for a CloudFront Distribution][1] in the *Amazon CloudFront
    #   Developer Guide*. For information about CloudFront pricing,
    #   including how price classes (such as Price Class 100) map to
    #   CloudFront regions, see [Amazon CloudFront Pricing][2]. For price
    #   class information, scroll down to see the table at the bottom of the
    #   page.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html
    #   [2]: https://aws.amazon.com/cloudfront/pricing/
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   From this field, you can enable or disable the selected
    #   distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] viewer_certificate
    #   A complex type that specifies the following:
    #
    #   * Whether you want viewers to use HTTP or HTTPS to request your
    #     objects.
    #
    #   * If you want viewers to use HTTPS, whether you're using an
    #     alternate domain name such as `example.com` or the CloudFront
    #     domain name for your distribution, such as
    #     `d111111abcdef8.cloudfront.net`.
    #
    #   * If you're using an alternate domain name, whether AWS Certificate
    #     Manager (ACM) provided the certificate, or you purchased a
    #     certificate from a third-party certificate authority and imported
    #     it into ACM or uploaded it to the IAM certificate store.
    #
    #   You must specify only one of the following values:
    #
    #   * ViewerCertificate$ACMCertificateArn
    #
    #   * ViewerCertificate$IAMCertificateId
    #
    #   * ViewerCertificate$CloudFrontDefaultCertificate
    #
    #   Don't specify `false` for `CloudFrontDefaultCertificate`.
    #
    #   **If you want viewers to use HTTP instead of HTTPS to request your
    #   objects**\: Specify the following value:
    #
    #   `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>`
    #
    #   In addition, specify `allow-all` for `ViewerProtocolPolicy` for all
    #   of your cache behaviors.
    #
    #   **If you want viewers to use HTTPS to request your objects**\:
    #   Choose the type of certificate that you want to use based on whether
    #   you're using an alternate domain name for your objects or the
    #   CloudFront domain name:
    #
    #   * **If you're using an alternate domain name, such as
    #     example.com**\: Specify one of the following values, depending on
    #     whether ACM provided your certificate or you purchased your
    #     certificate from third-party certificate authority:
    #
    #     * `<ACMCertificateArn>ARN for ACM SSL/TLS
    #       certificate<ACMCertificateArn>` where ` ARN for ACM SSL/TLS
    #       certificate ` is the ARN for the ACM SSL/TLS certificate that
    #       you want to use for this distribution.
    #
    #     * `<IAMCertificateId>IAM certificate ID<IAMCertificateId>` where `
    #       IAM certificate ID ` is the ID that IAM returned when you added
    #       the certificate to the IAM certificate store.
    #
    #     If you specify `ACMCertificateArn` or `IAMCertificateId`, you must
    #     also specify a value for `SSLSupportMethod`.
    #
    #     If you choose to use an ACM certificate or a certificate in the
    #     IAM certificate store, we recommend that you use only an alternate
    #     domain name in your object URLs (`https://example.com/logo.jpg`).
    #     If you use the domain name that is associated with your CloudFront
    #     distribution (such as
    #     `https://d111111abcdef8.cloudfront.net/logo.jpg`) and the viewer
    #     supports `SNI`, then CloudFront behaves normally. However, if the
    #     browser does not support SNI, the user's experience depends on
    #     the value that you choose for `SSLSupportMethod`\:
    #
    #     * `vip`\: The viewer displays a warning because there is a
    #       mismatch between the CloudFront domain name and the domain name
    #       in your SSL/TLS certificate.
    #
    #     * `sni-only`\: CloudFront drops the connection with the browser
    #       without returning the object.
    #
    #   * <b>If you're using the CloudFront domain name for your
    #     distribution, such as <code>d111111abcdef8.cloudfront.net</code>
    #     </b>\: Specify the following value:
    #
    #     `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>
    #     `
    #
    #   If you want viewers to use HTTPS, you must also specify one of the
    #   following values in your cache behaviors:
    #
    #   * ` <ViewerProtocolPolicy>https-only<ViewerProtocolPolicy>`
    #
    #   * `<ViewerProtocolPolicy>redirect-to-https<ViewerProtocolPolicy>`
    #
    #   You can also optionally require that CloudFront use HTTPS to
    #   communicate with your origin by specifying one of the following
    #   values for the applicable origins:
    #
    #   * `<OriginProtocolPolicy>https-only<OriginProtocolPolicy> `
    #
    #   * `<OriginProtocolPolicy>match-viewer<OriginProtocolPolicy> `
    #
    #   For more information, see [Using Alternate Domain Names and
    #   HTTPS][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS
    #   @return [Types::ViewerCertificate]
    #
    # @!attribute [rw] restrictions
    #   A complex type that identifies ways in which you want to restrict
    #   distribution of your content.
    #   @return [Types::Restrictions]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier that specifies the AWS WAF web ACL, if any, to
    #   associate with this distribution.
    #
    #   AWS WAF is a web application firewall that lets you monitor the HTTP
    #   and HTTPS requests that are forwarded to CloudFront, and lets you
    #   control access to your content. Based on conditions that you
    #   specify, such as the IP addresses that requests originate from or
    #   the values of query strings, CloudFront responds to requests either
    #   with the requested content or with an HTTP 403 status code
    #   (Forbidden). You can also configure CloudFront to return a custom
    #   error page when a request is blocked. For more information about AWS
    #   WAF, see the [AWS WAF Developer Guide][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html
    #   @return [String]
    #
    # @!attribute [rw] http_version
    #   (Optional) Specify the maximum HTTP version that you want viewers to
    #   use to communicate with CloudFront. The default value for new web
    #   distributions is http2. Viewers that don't support HTTP/2
    #   automatically use an earlier HTTP version.
    #
    #   For viewers and CloudFront to use HTTP/2, viewers must support TLS
    #   1.2 or later, and must support Server Name Identification (SNI).
    #
    #   In general, configuring CloudFront to communicate with viewers using
    #   HTTP/2 reduces latency. You can improve performance by optimizing
    #   for HTTP/2. For more information, do an Internet search for "http/2
    #   optimization."
    #   @return [String]
    #
    # @!attribute [rw] is_ipv6_enabled
    #   If you want CloudFront to respond to IPv6 DNS requests with an IPv6
    #   address for your distribution, specify `true`. If you specify
    #   `false`, CloudFront responds to IPv6 DNS requests with the DNS
    #   response code `NOERROR` and with no IP addresses. This allows
    #   viewers to submit a second request, for an IPv4 address for your
    #   distribution.
    #
    #   In general, you should enable IPv6 if you have users on IPv6
    #   networks who want to access your content. However, if you're using
    #   signed URLs or signed cookies to restrict access to your content,
    #   and if you're using a custom policy that includes the `IpAddress`
    #   parameter to restrict the IP addresses that can access your content,
    #   don't enable IPv6. If you want to restrict access to some content
    #   by IP address and not restrict access to other content (or restrict
    #   access but not by IP address), you can create two distributions. For
    #   more information, see [Creating a Signed URL Using a Custom
    #   Policy][1] in the *Amazon CloudFront Developer Guide*.
    #
    #   If you're using an Amazon Route 53 alias resource record set to
    #   route traffic to your CloudFront distribution, you need to create a
    #   second alias resource record set when both of the following are
    #   true:
    #
    #   * You enable IPv6 for the distribution
    #
    #   * You're using alternate domain names in the URLs for your objects
    #
    #   For more information, see [Routing Traffic to an Amazon CloudFront
    #   Web Distribution by Using Your Domain Name][2] in the *Amazon Route
    #   53 Developer Guide*.
    #
    #   If you created a CNAME resource record set, either with Amazon Route
    #   53 or with another DNS service, you don't need to make any changes.
    #   A CNAME record will route traffic to your distribution regardless of
    #   the IP address format of the viewer request.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html
    #   [2]: http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DistributionConfig AWS API Documentation
    #
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
      :web_acl_id,
      :http_version,
      :is_ipv6_enabled)
      include Aws::Structure
    end

    # A distribution Configuration and a list of tags to be associated with
    # the distribution.
    #
    # @note When making an API call, you may pass DistributionConfigWithTags
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
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
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
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
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
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                       include_body: false,
    #                     },
    #                   ],
    #                 },
    #                 field_level_encryption_id: "string",
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
    #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
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
    #           http_version: "http1.1", # accepts http1.1, http2
    #           is_ipv6_enabled: false,
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
    #
    # @!attribute [rw] distribution_config
    #   A distribution configuration.
    #   @return [Types::DistributionConfig]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DistributionConfigWithTags AWS API Documentation
    #
    class DistributionConfigWithTags < Struct.new(
      :distribution_config,
      :tags)
      include Aws::Structure
    end

    # A distribution list.
    #
    # @!attribute [rw] marker
    #   The value you provided for the `Marker` request parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, this element is present and contains the
    #   value you can use for the `Marker` request parameter to continue
    #   listing your distributions where they left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value you provided for the `MaxItems` request parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more distributions remain to be
    #   listed. If your results were truncated, you can make a follow-up
    #   pagination request using the `Marker` request parameter to retrieve
    #   more distributions in the list.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of distributions that were created by the current AWS
    #   account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `DistributionSummary` element for
    #   each distribution that was created by the current AWS account.
    #   @return [Array<Types::DistributionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DistributionList AWS API Documentation
    #
    class DistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      include Aws::Structure
    end

    # A summary of the information about a CloudFront distribution.
    #
    # @!attribute [rw] id
    #   The identifier for the distribution. For example: `EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the distribution. For example:
    #   `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`,
    #   where `123456789012` is your AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the distribution. When the status is
    #   `Deployed`, the distribution's information is propagated to all
    #   CloudFront edge locations.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the distribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The domain name that corresponds to the distribution, for example,
    #   `d111111abcdef8.cloudfront.net`.
    #   @return [String]
    #
    # @!attribute [rw] aliases
    #   A complex type that contains information about CNAMEs (alternate
    #   domain names), if any, for this distribution.
    #   @return [Types::Aliases]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::Origins]
    #
    # @!attribute [rw] default_cache_behavior
    #   A complex type that describes the default cache behavior if you
    #   don't specify a `CacheBehavior` element or if files don't match
    #   any of the values of `PathPattern` in `CacheBehavior` elements. You
    #   must create exactly one default cache behavior.
    #   @return [Types::DefaultCacheBehavior]
    #
    # @!attribute [rw] cache_behaviors
    #   A complex type that contains zero or more `CacheBehavior` elements.
    #   @return [Types::CacheBehaviors]
    #
    # @!attribute [rw] custom_error_responses
    #   A complex type that contains zero or more `CustomErrorResponses`
    #   elements.
    #   @return [Types::CustomErrorResponses]
    #
    # @!attribute [rw] comment
    #   The comment originally specified when this distribution was created.
    #   @return [String]
    #
    # @!attribute [rw] price_class
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the distribution is enabled to accept user requests for
    #   content.
    #   @return [Boolean]
    #
    # @!attribute [rw] viewer_certificate
    #   A complex type that specifies the following:
    #
    #   * Whether you want viewers to use HTTP or HTTPS to request your
    #     objects.
    #
    #   * If you want viewers to use HTTPS, whether you're using an
    #     alternate domain name such as `example.com` or the CloudFront
    #     domain name for your distribution, such as
    #     `d111111abcdef8.cloudfront.net`.
    #
    #   * If you're using an alternate domain name, whether AWS Certificate
    #     Manager (ACM) provided the certificate, or you purchased a
    #     certificate from a third-party certificate authority and imported
    #     it into ACM or uploaded it to the IAM certificate store.
    #
    #   You must specify only one of the following values:
    #
    #   * ViewerCertificate$ACMCertificateArn
    #
    #   * ViewerCertificate$IAMCertificateId
    #
    #   * ViewerCertificate$CloudFrontDefaultCertificate
    #
    #   Don't specify `false` for `CloudFrontDefaultCertificate`.
    #
    #   **If you want viewers to use HTTP instead of HTTPS to request your
    #   objects**\: Specify the following value:
    #
    #   `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>`
    #
    #   In addition, specify `allow-all` for `ViewerProtocolPolicy` for all
    #   of your cache behaviors.
    #
    #   **If you want viewers to use HTTPS to request your objects**\:
    #   Choose the type of certificate that you want to use based on whether
    #   you're using an alternate domain name for your objects or the
    #   CloudFront domain name:
    #
    #   * **If you're using an alternate domain name, such as
    #     example.com**\: Specify one of the following values, depending on
    #     whether ACM provided your certificate or you purchased your
    #     certificate from third-party certificate authority:
    #
    #     * `<ACMCertificateArn>ARN for ACM SSL/TLS
    #       certificate<ACMCertificateArn>` where ` ARN for ACM SSL/TLS
    #       certificate ` is the ARN for the ACM SSL/TLS certificate that
    #       you want to use for this distribution.
    #
    #     * `<IAMCertificateId>IAM certificate ID<IAMCertificateId>` where `
    #       IAM certificate ID ` is the ID that IAM returned when you added
    #       the certificate to the IAM certificate store.
    #
    #     If you specify `ACMCertificateArn` or `IAMCertificateId`, you must
    #     also specify a value for `SSLSupportMethod`.
    #
    #     If you choose to use an ACM certificate or a certificate in the
    #     IAM certificate store, we recommend that you use only an alternate
    #     domain name in your object URLs (`https://example.com/logo.jpg`).
    #     If you use the domain name that is associated with your CloudFront
    #     distribution (such as
    #     `https://d111111abcdef8.cloudfront.net/logo.jpg`) and the viewer
    #     supports `SNI`, then CloudFront behaves normally. However, if the
    #     browser does not support SNI, the user's experience depends on
    #     the value that you choose for `SSLSupportMethod`\:
    #
    #     * `vip`\: The viewer displays a warning because there is a
    #       mismatch between the CloudFront domain name and the domain name
    #       in your SSL/TLS certificate.
    #
    #     * `sni-only`\: CloudFront drops the connection with the browser
    #       without returning the object.
    #
    #   * <b>If you're using the CloudFront domain name for your
    #     distribution, such as <code>d111111abcdef8.cloudfront.net</code>
    #     </b>\: Specify the following value:
    #
    #     `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>
    #     `
    #
    #   If you want viewers to use HTTPS, you must also specify one of the
    #   following values in your cache behaviors:
    #
    #   * ` <ViewerProtocolPolicy>https-only<ViewerProtocolPolicy>`
    #
    #   * `<ViewerProtocolPolicy>redirect-to-https<ViewerProtocolPolicy>`
    #
    #   You can also optionally require that CloudFront use HTTPS to
    #   communicate with your origin by specifying one of the following
    #   values for the applicable origins:
    #
    #   * `<OriginProtocolPolicy>https-only<OriginProtocolPolicy> `
    #
    #   * `<OriginProtocolPolicy>match-viewer<OriginProtocolPolicy> `
    #
    #   For more information, see [Using Alternate Domain Names and
    #   HTTPS][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS
    #   @return [Types::ViewerCertificate]
    #
    # @!attribute [rw] restrictions
    #   A complex type that identifies ways in which you want to restrict
    #   distribution of your content.
    #   @return [Types::Restrictions]
    #
    # @!attribute [rw] web_acl_id
    #   The Web ACL Id (if any) associated with the distribution.
    #   @return [String]
    #
    # @!attribute [rw] http_version
    #   Specify the maximum HTTP version that you want viewers to use to
    #   communicate with CloudFront. The default value for new web
    #   distributions is `http2`. Viewers that don't support `HTTP/2` will
    #   automatically use an earlier version.
    #   @return [String]
    #
    # @!attribute [rw] is_ipv6_enabled
    #   Whether CloudFront responds to IPv6 DNS requests with an IPv6
    #   address for your distribution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/DistributionSummary AWS API Documentation
    #
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
      :web_acl_id,
      :http_version,
      :is_ipv6_enabled)
      include Aws::Structure
    end

    # Complex data type for field-level encryption profiles that includes
    # all of the encryption entities.
    #
    # @note When making an API call, you may pass EncryptionEntities
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             public_key_id: "string", # required
    #             provider_id: "string", # required
    #             field_patterns: { # required
    #               quantity: 1, # required
    #               items: ["string"],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   Number of field pattern items in a field-level encryption content
    #   type-profile mapping.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   An array of field patterns in a field-level encryption content
    #   type-profile mapping.
    #   @return [Array<Types::EncryptionEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/EncryptionEntities AWS API Documentation
    #
    class EncryptionEntities < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # Complex data type for field-level encryption profiles that includes
    # the encryption key and field pattern specifications.
    #
    # @note When making an API call, you may pass EncryptionEntity
    #   data as a hash:
    #
    #       {
    #         public_key_id: "string", # required
    #         provider_id: "string", # required
    #         field_patterns: { # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] public_key_id
    #   The public key associated with a set of field-level encryption
    #   patterns, to be used when encrypting the fields that match the
    #   patterns.
    #   @return [String]
    #
    # @!attribute [rw] provider_id
    #   The provider associated with the public key being used for
    #   encryption. This value must also be provided with the private key
    #   for applications to be able to decrypt data.
    #   @return [String]
    #
    # @!attribute [rw] field_patterns
    #   Field patterns in a field-level encryption content type profile
    #   specify the fields that you want to be encrypted. You can provide
    #   the full field name, or any beginning characters followed by a
    #   wildcard (*). You can't overlap field patterns. For example, you
    #   can't have both ABC* and AB*. Note that field patterns are
    #   case-sensitive.
    #   @return [Types::FieldPatterns]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/EncryptionEntity AWS API Documentation
    #
    class EncryptionEntity < Struct.new(
      :public_key_id,
      :provider_id,
      :field_patterns)
      include Aws::Structure
    end

    # A complex data type that includes the profile configurations and other
    # options specified for field-level encryption.
    #
    # @!attribute [rw] id
    #   The configuration ID for a field-level encryption configuration
    #   which includes a set of profiles that specify certain selected data
    #   fields to be encrypted by specific public keys.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last time the field-level encryption configuration was changed.
    #   @return [Time]
    #
    # @!attribute [rw] field_level_encryption_config
    #   A complex data type that includes the profile configurations
    #   specified for field-level encryption.
    #   @return [Types::FieldLevelEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryption AWS API Documentation
    #
    class FieldLevelEncryption < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_config)
      include Aws::Structure
    end

    # A complex data type that includes the profile configurations specified
    # for field-level encryption.
    #
    # @note When making an API call, you may pass FieldLevelEncryptionConfig
    #   data as a hash:
    #
    #       {
    #         caller_reference: "string", # required
    #         comment: "string",
    #         query_arg_profile_config: {
    #           forward_when_query_arg_profile_is_unknown: false, # required
    #           query_arg_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 query_arg: "string", # required
    #                 profile_id: "string", # required
    #               },
    #             ],
    #           },
    #         },
    #         content_type_profile_config: {
    #           forward_when_content_type_is_unknown: false, # required
    #           content_type_profiles: {
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 format: "URLEncoded", # required, accepts URLEncoded
    #                 profile_id: "string",
    #                 content_type: "string", # required
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures the request can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about the configuration.
    #   @return [String]
    #
    # @!attribute [rw] query_arg_profile_config
    #   A complex data type that specifies when to forward content if a
    #   profile isn't found and the profile that can be provided as a query
    #   argument in a request.
    #   @return [Types::QueryArgProfileConfig]
    #
    # @!attribute [rw] content_type_profile_config
    #   A complex data type that specifies when to forward content if a
    #   content type isn't recognized and profiles to use as by default in
    #   a request if a query argument doesn't specify a profile to use.
    #   @return [Types::ContentTypeProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionConfig AWS API Documentation
    #
    class FieldLevelEncryptionConfig < Struct.new(
      :caller_reference,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config)
      include Aws::Structure
    end

    # List of field-level encrpytion configurations.
    #
    # @!attribute [rw] next_marker
    #   If there are more elements to be listed, this element is present and
    #   contains the value that you can use for the `Marker` request
    #   parameter to continue listing your configurations where you left
    #   off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of elements you want in the response body.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption items.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   An array of field-level encryption items.
    #   @return [Array<Types::FieldLevelEncryptionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionList AWS API Documentation
    #
    class FieldLevelEncryptionList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex data type for field-level encryption profiles.
    #
    # @!attribute [rw] id
    #   The ID for a field-level encryption profile configuration which
    #   includes a set of profiles that specify certain selected data fields
    #   to be encrypted by specific public keys.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last time the field-level encryption profile was updated.
    #   @return [Time]
    #
    # @!attribute [rw] field_level_encryption_profile_config
    #   A complex data type that includes the profile name and the
    #   encryption entities for the field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionProfile AWS API Documentation
    #
    class FieldLevelEncryptionProfile < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_profile_config)
      include Aws::Structure
    end

    # A complex data type of profiles for the field-level encryption.
    #
    # @note When making an API call, you may pass FieldLevelEncryptionProfileConfig
    #   data as a hash:
    #
    #       {
    #         name: "string", # required
    #         caller_reference: "string", # required
    #         comment: "string",
    #         encryption_entities: { # required
    #           quantity: 1, # required
    #           items: [
    #             {
    #               public_key_id: "string", # required
    #               provider_id: "string", # required
    #               field_patterns: { # required
    #                 quantity: 1, # required
    #                 items: ["string"],
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Profile name for the field-level encryption profile.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures the request can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment for the field-level encryption profile.
    #   @return [String]
    #
    # @!attribute [rw] encryption_entities
    #   A complex data type of encryption entities for the field-level
    #   encryption profile that include the public key ID, provider, and
    #   field patterns for specifying which fields to encrypt with this key.
    #   @return [Types::EncryptionEntities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionProfileConfig AWS API Documentation
    #
    class FieldLevelEncryptionProfileConfig < Struct.new(
      :name,
      :caller_reference,
      :comment,
      :encryption_entities)
      include Aws::Structure
    end

    # List of field-level encryption profiles.
    #
    # @!attribute [rw] next_marker
    #   If there are more elements to be listed, this element is present and
    #   contains the value that you can use for the `Marker` request
    #   parameter to continue listing your profiles where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of field-level encryption profiles you want in
    #   the response body.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption profiles.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The field-level encryption profile items.
    #   @return [Array<Types::FieldLevelEncryptionProfileSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionProfileList AWS API Documentation
    #
    class FieldLevelEncryptionProfileList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      include Aws::Structure
    end

    # The field-level encryption profile summary.
    #
    # @!attribute [rw] id
    #   ID for the field-level encryption profile summary.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The time when the the field-level encryption profile summary was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   Name for the field-level encryption profile summary.
    #   @return [String]
    #
    # @!attribute [rw] encryption_entities
    #   A complex data type of encryption entities for the field-level
    #   encryption profile that include the public key ID, provider, and
    #   field patterns for specifying which fields to encrypt with this key.
    #   @return [Types::EncryptionEntities]
    #
    # @!attribute [rw] comment
    #   An optional comment for the field-level encryption profile summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionProfileSummary AWS API Documentation
    #
    class FieldLevelEncryptionProfileSummary < Struct.new(
      :id,
      :last_modified_time,
      :name,
      :encryption_entities,
      :comment)
      include Aws::Structure
    end

    # A summary of a field-level encryption item.
    #
    # @!attribute [rw] id
    #   The unique ID of a field-level encryption item.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The last time that the summary of field-level encryption items was
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] comment
    #   An optional comment about the field-level encryption item.
    #   @return [String]
    #
    # @!attribute [rw] query_arg_profile_config
    #   A summary of a query argument-profile mapping.
    #   @return [Types::QueryArgProfileConfig]
    #
    # @!attribute [rw] content_type_profile_config
    #   A summary of a content type-profile mapping.
    #   @return [Types::ContentTypeProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldLevelEncryptionSummary AWS API Documentation
    #
    class FieldLevelEncryptionSummary < Struct.new(
      :id,
      :last_modified_time,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config)
      include Aws::Structure
    end

    # A complex data type that includes the field patterns to match for
    # field-level encryption.
    #
    # @note When making an API call, you may pass FieldPatterns
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption field patterns.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   An array of the field-level encryption field patterns.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/FieldPatterns AWS API Documentation
    #
    class FieldPatterns < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that specifies how CloudFront handles query strings and
    # cookies.
    #
    # @note When making an API call, you may pass ForwardedValues
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
    #
    # @!attribute [rw] query_string
    #   Indicates whether you want CloudFront to forward query strings to
    #   the origin that is associated with this cache behavior and cache
    #   based on the query string parameters. CloudFront behavior depends on
    #   the value of `QueryString` and on the values that you specify for
    #   `QueryStringCacheKeys`, if any:
    #
    #   If you specify true for `QueryString` and you don't specify any
    #   values for `QueryStringCacheKeys`, CloudFront forwards all query
    #   string parameters to the origin and caches based on all query string
    #   parameters. Depending on how many query string parameters and values
    #   you have, this can adversely affect performance because CloudFront
    #   must forward more requests to the origin.
    #
    #   If you specify true for `QueryString` and you specify one or more
    #   values for `QueryStringCacheKeys`, CloudFront forwards all query
    #   string parameters to the origin, but it only caches based on the
    #   query string parameters that you specify.
    #
    #   If you specify false for `QueryString`, CloudFront doesn't forward
    #   any query string parameters to the origin, and doesn't cache based
    #   on query string parameters.
    #
    #   For more information, see [Configuring CloudFront to Cache Based on
    #   Query String Parameters][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html
    #   @return [Boolean]
    #
    # @!attribute [rw] cookies
    #   A complex type that specifies whether you want CloudFront to forward
    #   cookies to the origin and, if so, which ones. For more information
    #   about forwarding cookies to the origin, see [How CloudFront
    #   Forwards, Caches, and Logs Cookies][1] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html
    #   @return [Types::CookiePreference]
    #
    # @!attribute [rw] headers
    #   A complex type that specifies the `Headers`, if any, that you want
    #   CloudFront to base caching on for this cache behavior.
    #   @return [Types::Headers]
    #
    # @!attribute [rw] query_string_cache_keys
    #   A complex type that contains information about the query string
    #   parameters that you want CloudFront to use for caching for this
    #   cache behavior.
    #   @return [Types::QueryStringCacheKeys]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ForwardedValues AWS API Documentation
    #
    class ForwardedValues < Struct.new(
      :query_string,
      :cookies,
      :headers,
      :query_string_cache_keys)
      include Aws::Structure
    end

    # A complex type that controls the countries in which your content is
    # distributed. CloudFront determines the location of your users using
    # `MaxMind` GeoIP databases.
    #
    # @note When making an API call, you may pass GeoRestriction
    #   data as a hash:
    #
    #       {
    #         restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] restriction_type
    #   The method that you want to use to restrict distribution of your
    #   content by country:
    #
    #   * `none`\: No geo restriction is enabled, meaning access to content
    #     is not restricted by client geo location.
    #
    #   * `blacklist`\: The `Location` elements specify the countries in
    #     which you don't want CloudFront to distribute your content.
    #
    #   * `whitelist`\: The `Location` elements specify the countries in
    #     which you want CloudFront to distribute your content.
    #   @return [String]
    #
    # @!attribute [rw] quantity
    #   When geo restriction is `enabled`, this is the number of countries
    #   in your `whitelist` or `blacklist`. Otherwise, when it is not
    #   enabled, `Quantity` is `0`, and you can omit `Items`.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains a `Location` element for each country
    #   in which you want CloudFront either to distribute your content
    #   (`whitelist`) or not distribute your content (`blacklist`).
    #
    #   The `Location` element is a two-letter, uppercase country code for a
    #   country that you want to include in your `blacklist` or `whitelist`.
    #   Include one `Location` element for each country.
    #
    #   CloudFront and `MaxMind` both use `ISO 3166` country codes. For the
    #   current list of countries and the corresponding codes, see `ISO
    #   3166-1-alpha-2` code on the *International Organization for
    #   Standardization* website. You can also refer to the country list on
    #   the CloudFront console, which includes both country names and codes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GeoRestriction AWS API Documentation
    #
    class GeoRestriction < Struct.new(
      :restriction_type,
      :quantity,
      :items)
      include Aws::Structure
    end

    # The origin access identity's configuration information. For more
    # information, see CloudFrontOriginAccessIdentityConfigComplexType.
    #
    # @note When making an API call, you may pass GetCloudFrontOriginAccessIdentityConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identity's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentityConfigRequest AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity_config
    #   The origin access identity's configuration information.
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentityConfigResult AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityConfigResult < Struct.new(
      :cloud_front_origin_access_identity_config,
      :etag)
      include Aws::Structure
    end

    # The request to get an origin access identity's information.
    #
    # @note When making an API call, you may pass GetCloudFrontOriginAccessIdentityRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identity's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity
    #   The origin access identity's information.
    #   @return [Types::CloudFrontOriginAccessIdentity]
    #
    # @!attribute [rw] etag
    #   The current version of the origin access identity's information.
    #   For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :etag)
      include Aws::Structure
    end

    # The request to get a distribution configuration.
    #
    # @note When making an API call, you may pass GetDistributionConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistributionConfigRequest AWS API Documentation
    #
    class GetDistributionConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution_config
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistributionConfigResult AWS API Documentation
    #
    class GetDistributionConfigResult < Struct.new(
      :distribution_config,
      :etag)
      include Aws::Structure
    end

    # The request to get a distribution's information.
    #
    # @note When making an API call, you may pass GetDistributionRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistributionRequest AWS API Documentation
    #
    class GetDistributionRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution
    #   The distribution's information.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution's information. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetDistributionResult AWS API Documentation
    #
    class GetDistributionResult < Struct.new(
      :distribution,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFieldLevelEncryptionConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_config
    #   Return the field-level encryption configuration information.
    #   @return [Types::FieldLevelEncryptionConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption configuration. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class GetFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption_config,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFieldLevelEncryptionProfileConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Get the ID for the field-level encryption profile configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfileConfigRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile_config
    #   Return the field-level encryption profile configuration information.
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the field-level encryption profile
    #   configuration result. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfileConfigResult AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileConfigResult < Struct.new(
      :field_level_encryption_profile_config,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFieldLevelEncryptionProfileRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Get the ID for the field-level encryption profile information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile
    #   Return the field-level encryption profile information.
    #   @return [Types::FieldLevelEncryptionProfile]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption profile. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFieldLevelEncryptionRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption
    #   Return the field-level encryption configuration information.
    #   @return [Types::FieldLevelEncryption]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption configuration. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetFieldLevelEncryptionResult AWS API Documentation
    #
    class GetFieldLevelEncryptionResult < Struct.new(
      :field_level_encryption,
      :etag)
      include Aws::Structure
    end

    # The request to get an invalidation's information.
    #
    # @note When making an API call, you may pass GetInvalidationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_id: "string", # required
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] distribution_id
    #   The distribution's ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for the invalidation request, for example,
    #   `IDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetInvalidationRequest AWS API Documentation
    #
    class GetInvalidationRequest < Struct.new(
      :distribution_id,
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] invalidation
    #   The invalidation's information. For more information, see
    #   [Invalidation Complex Type][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html
    #   @return [Types::Invalidation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetInvalidationResult AWS API Documentation
    #
    class GetInvalidationResult < Struct.new(
      :invalidation)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPublicKeyConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Request the ID for the public key configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKeyConfigRequest AWS API Documentation
    #
    class GetPublicKeyConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] public_key_config
    #   Return the result for the public key configuration.
    #   @return [Types::PublicKeyConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the public key configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKeyConfigResult AWS API Documentation
    #
    class GetPublicKeyConfigResult < Struct.new(
      :public_key_config,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   Request the ID for the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKeyRequest AWS API Documentation
    #
    class GetPublicKeyRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   Return the public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] etag
    #   The current version of the public key. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetPublicKeyResult AWS API Documentation
    #
    class GetPublicKeyResult < Struct.new(
      :public_key,
      :etag)
      include Aws::Structure
    end

    # To request to get a streaming distribution configuration.
    #
    # @note When making an API call, you may pass GetStreamingDistributionConfigRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The streaming distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistributionConfigRequest AWS API Documentation
    #
    class GetStreamingDistributionConfigRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution_config
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistributionConfigResult AWS API Documentation
    #
    class GetStreamingDistributionConfigResult < Struct.new(
      :streaming_distribution_config,
      :etag)
      include Aws::Structure
    end

    # The request to get a streaming distribution's information.
    #
    # @note When making an API call, you may pass GetStreamingDistributionRequest
    #   data as a hash:
    #
    #       {
    #         id: "string", # required
    #       }
    #
    # @!attribute [rw] id
    #   The streaming distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistributionRequest AWS API Documentation
    #
    class GetStreamingDistributionRequest < Struct.new(
      :id)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution
    #   The streaming distribution's information.
    #   @return [Types::StreamingDistribution]
    #
    # @!attribute [rw] etag
    #   The current version of the streaming distribution's information.
    #   For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/GetStreamingDistributionResult AWS API Documentation
    #
    class GetStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :etag)
      include Aws::Structure
    end

    # A complex type that specifies the request headers, if any, that you
    # want CloudFront to base caching on for this cache behavior.
    #
    # For the headers that you specify, CloudFront caches separate versions
    # of a specified object based on the header values in viewer requests.
    # For example, suppose viewer requests for `logo.jpg` contain a custom
    # `product` header that has a value of either `acme` or `apex`, and you
    # configure CloudFront to cache your content based on values in the
    # `product` header. CloudFront forwards the `product` header to the
    # origin and caches the response from the origin once for each header
    # value. For more information about caching based on header values, see
    # [How CloudFront Forwards and Caches Headers][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html
    #
    # @note When making an API call, you may pass Headers
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of different headers that you want CloudFront to base
    #   caching on for this cache behavior. You can configure each cache
    #   behavior in a web distribution to do one of the following:
    #
    #   * **Forward all headers to your origin**\: Specify `1` for
    #     `Quantity` and `*` for `Name`.
    #
    #     CloudFront doesn't cache the objects that are associated with
    #     this cache behavior. Instead, CloudFront sends every request to
    #     the origin.
    #
    #   * **Forward a whitelist of headers you specify**\: Specify the
    #     number of headers that you want CloudFront to base caching on.
    #     Then specify the header names in `Name` elements. CloudFront
    #     caches your objects based on the values in the specified headers.
    #
    #   * **Forward only the default headers**\: Specify `0` for `Quantity`
    #     and omit `Items`. In this configuration, CloudFront doesn't cache
    #     based on the values in the request headers.
    #
    #   Regardless of which option you choose, CloudFront forwards headers
    #   to your origin based on whether the origin is an S3 bucket or a
    #   custom origin. See the following documentation:
    #
    #   * **S3 bucket**\: See [HTTP Request Headers That CloudFront Removes
    #     or Updates][1]
    #
    #   * **Custom origin**\: See [HTTP Request Headers and CloudFront
    #     Behavior][2]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorS3Origin.html#request-s3-removed-headers
    #   [2]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/RequestAndResponseBehaviorCustomOrigin.html#request-custom-headers-behavior
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list that contains one `Name` element for each header that you
    #   want CloudFront to use for caching in this cache behavior. If
    #   `Quantity` is `0`, omit `Items`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Headers AWS API Documentation
    #
    class Headers < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # An invalidation.
    #
    # @!attribute [rw] id
    #   The identifier for the invalidation request. For example:
    #   `IDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the invalidation request. When the invalidation batch
    #   is finished, the status is `Completed`.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time the invalidation request was first made.
    #   @return [Time]
    #
    # @!attribute [rw] invalidation_batch
    #   The current invalidation information for the batch request.
    #   @return [Types::InvalidationBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Invalidation AWS API Documentation
    #
    class Invalidation < Struct.new(
      :id,
      :status,
      :create_time,
      :invalidation_batch)
      include Aws::Structure
    end

    # An invalidation batch.
    #
    # @note When making an API call, you may pass InvalidationBatch
    #   data as a hash:
    #
    #       {
    #         paths: { # required
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #         caller_reference: "string", # required
    #       }
    #
    # @!attribute [rw] paths
    #   A complex type that contains information about the objects that you
    #   want to invalidate. For more information, see [Specifying the
    #   Objects to Invalidate][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects
    #   @return [Types::Paths]
    #
    # @!attribute [rw] caller_reference
    #   A value that you specify to uniquely identify an invalidation
    #   request. CloudFront uses the value to prevent you from accidentally
    #   resubmitting an identical request. Whenever you create a new
    #   invalidation request, you must specify a new value for
    #   `CallerReference` and change other values in the request as
    #   applicable. One way to ensure that the value of `CallerReference` is
    #   unique is to use a `timestamp`, for example, `20120301090000`.
    #
    #   If you make a second invalidation request with the same value for
    #   `CallerReference`, and if the rest of the request is the same,
    #   CloudFront doesn't create a new invalidation request. Instead,
    #   CloudFront returns information about the invalidation request that
    #   you previously created with the same `CallerReference`.
    #
    #   If `CallerReference` is a value you already sent in a previous
    #   invalidation batch request but the content of any `Path` is
    #   different from the original request, CloudFront returns an
    #   `InvalidationBatchAlreadyExists` error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/InvalidationBatch AWS API Documentation
    #
    class InvalidationBatch < Struct.new(
      :paths,
      :caller_reference)
      include Aws::Structure
    end

    # The `InvalidationList` complex type describes the list of invalidation
    # objects. For more information about invalidation, see [Invalidating
    # Objects (Web Distributions Only)][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html
    #
    # @!attribute [rw] marker
    #   The value that you provided for the `Marker` request parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, this element is present and contains the
    #   value that you can use for the `Marker` request parameter to
    #   continue listing your invalidation batches where they left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you provided for the `MaxItems` request parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more invalidation batch requests
    #   remain to be listed. If your results were truncated, you can make a
    #   follow-up pagination request using the `Marker` request parameter to
    #   retrieve more invalidation batches in the list.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of invalidation batches that were created by the current
    #   AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `InvalidationSummary` element for
    #   each invalidation batch created by the current AWS account.
    #   @return [Array<Types::InvalidationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/InvalidationList AWS API Documentation
    #
    class InvalidationList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      include Aws::Structure
    end

    # A summary of an invalidation request.
    #
    # @!attribute [rw] id
    #   The unique ID for an invalidation request.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of an invalidation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/InvalidationSummary AWS API Documentation
    #
    class InvalidationSummary < Struct.new(
      :id,
      :create_time,
      :status)
      include Aws::Structure
    end

    # A complex type that lists the active CloudFront key pairs, if any,
    # that are associated with `AwsAccountNumber`.
    #
    # For more information, see ActiveTrustedSigners.
    #
    # @!attribute [rw] quantity
    #   The number of active CloudFront key pairs for `AwsAccountNumber`.
    #
    #   For more information, see ActiveTrustedSigners.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that lists the active CloudFront key pairs, if any,
    #   that are associated with `AwsAccountNumber`.
    #
    #   For more information, see ActiveTrustedSigners.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/KeyPairIds AWS API Documentation
    #
    class KeyPairIds < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that contains a Lambda function association.
    #
    # @note When making an API call, you may pass LambdaFunctionAssociation
    #   data as a hash:
    #
    #       {
    #         lambda_function_arn: "LambdaFunctionARN", # required
    #         event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #         include_body: false,
    #       }
    #
    # @!attribute [rw] lambda_function_arn
    #   The ARN of the Lambda function. You must specify the ARN of a
    #   function version; you can't specify a Lambda alias or $LATEST.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   Specifies the event type that triggers a Lambda function invocation.
    #   You can specify the following values:
    #
    #   * `viewer-request`\: The function executes when CloudFront receives
    #     a request from a viewer and before it checks to see whether the
    #     requested object is in the edge cache.
    #
    #   * `origin-request`\: The function executes only when CloudFront
    #     forwards a request to your origin. When the requested object is in
    #     the edge cache, the function doesn't execute.
    #
    #   * `origin-response`\: The function executes after CloudFront
    #     receives a response from the origin and before it caches the
    #     object in the response. When the requested object is in the edge
    #     cache, the function doesn't execute.
    #
    #     If the origin returns an HTTP status code other than HTTP 200
    #     (OK), the function doesn't execute.
    #
    #   * `viewer-response`\: The function executes before CloudFront
    #     returns the requested object to the viewer. The function executes
    #     regardless of whether the object was already in the edge cache.
    #
    #     If the origin returns an HTTP status code other than HTTP 200
    #     (OK), the function doesn't execute.
    #   @return [String]
    #
    # @!attribute [rw] include_body
    #   A flag that allows a Lambda function to have read access to the body
    #   content. For more information, see [Accessing Body Content][1] in
    #   the Amazon CloudFront Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/LambdaFunctionAssociation AWS API Documentation
    #
    class LambdaFunctionAssociation < Struct.new(
      :lambda_function_arn,
      :event_type,
      :include_body)
      include Aws::Structure
    end

    # A complex type that specifies a list of Lambda functions associations
    # for a cache behavior.
    #
    # If you want to invoke one or more Lambda functions triggered by
    # requests that match the `PathPattern` of the cache behavior, specify
    # the applicable values for `Quantity` and `Items`. Note that there can
    # be up to 4 `LambdaFunctionAssociation` items in this list (one for
    # each possible value of `EventType`) and each `EventType` can be
    # associated with the Lambda function only once.
    #
    # If you don't want to invoke any Lambda functions for the requests
    # that match `PathPattern`, specify `0` for `Quantity` and omit `Items`.
    #
    # @note When making an API call, you may pass LambdaFunctionAssociations
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             lambda_function_arn: "LambdaFunctionARN", # required
    #             event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #             include_body: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of Lambda function associations for this cache behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   **Optional**\: A complex type that contains
    #   `LambdaFunctionAssociation` items for this cache behavior. If
    #   `Quantity` is `0`, you can omit `Items`.
    #   @return [Array<Types::LambdaFunctionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/LambdaFunctionAssociations AWS API Documentation
    #
    class LambdaFunctionAssociations < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # The request to list origin access identities.
    #
    # @note When making an API call, you may pass ListCloudFrontOriginAccessIdentitiesRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of origin access identities. The results include identities in
    #   the list that occur after the marker. To get the next page of
    #   results, set the `Marker` to the value of the `NextMarker` from the
    #   current page's response (which is also the ID of the last identity
    #   on that page).
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin access identities you want in the
    #   response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListCloudFrontOriginAccessIdentitiesRequest AWS API Documentation
    #
    class ListCloudFrontOriginAccessIdentitiesRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity_list
    #   The `CloudFrontOriginAccessIdentityList` type.
    #   @return [Types::CloudFrontOriginAccessIdentityList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListCloudFrontOriginAccessIdentitiesResult AWS API Documentation
    #
    class ListCloudFrontOriginAccessIdentitiesResult < Struct.new(
      :cloud_front_origin_access_identity_list)
      include Aws::Structure
    end

    # The request to list distributions that are associated with a specified
    # AWS WAF web ACL.
    #
    # @note When making an API call, you may pass ListDistributionsByWebACLIdRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #         web_acl_id: "string", # required
    #       }
    #
    # @!attribute [rw] marker
    #   Use `Marker` and `MaxItems` to control pagination of results. If you
    #   have more than `MaxItems` distributions that satisfy the request,
    #   the response includes a `NextMarker` element. To get the next page
    #   of results, submit another request. For the value of `Marker`,
    #   specify the value of `NextMarker` from the last response. (For the
    #   first request, omit `Marker`.)
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distributions that you want CloudFront to
    #   return in the response body. The maximum and default values are both
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] web_acl_id
    #   The ID of the AWS WAF web ACL that you want to list the associated
    #   distributions. If you specify "null" for the ID, the request
    #   returns a list of the distributions that aren't associated with a
    #   web ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributionsByWebACLIdRequest AWS API Documentation
    #
    class ListDistributionsByWebACLIdRequest < Struct.new(
      :marker,
      :max_items,
      :web_acl_id)
      include Aws::Structure
    end

    # The response to a request to list the distributions that are
    # associated with a specified AWS WAF web ACL.
    #
    # @!attribute [rw] distribution_list
    #   The `DistributionList` type.
    #   @return [Types::DistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributionsByWebACLIdResult AWS API Documentation
    #
    class ListDistributionsByWebACLIdResult < Struct.new(
      :distribution_list)
      include Aws::Structure
    end

    # The request to list your distributions.
    #
    # @note When making an API call, you may pass ListDistributionsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of distributions. The results include distributions in the list
    #   that occur after the marker. To get the next page of results, set
    #   the `Marker` to the value of the `NextMarker` from the current
    #   page's response (which is also the ID of the last distribution on
    #   that page).
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distributions you want in the response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributionsRequest AWS API Documentation
    #
    class ListDistributionsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution_list
    #   The `DistributionList` type.
    #   @return [Types::DistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListDistributionsResult AWS API Documentation
    #
    class ListDistributionsResult < Struct.new(
      :distribution_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFieldLevelEncryptionConfigsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of configurations. The results include configurations in the
    #   list that occur after the marker. To get the next page of results,
    #   set the `Marker` to the value of the `NextMarker` from the current
    #   page's response (which is also the ID of the last configuration on
    #   that page).
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of field-level encryption configurations you want
    #   in the response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionConfigsRequest AWS API Documentation
    #
    class ListFieldLevelEncryptionConfigsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_list
    #   Returns a list of all field-level encryption configurations that
    #   have been created in CloudFront for this account.
    #   @return [Types::FieldLevelEncryptionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionConfigsResult AWS API Documentation
    #
    class ListFieldLevelEncryptionConfigsResult < Struct.new(
      :field_level_encryption_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFieldLevelEncryptionProfilesRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of profiles. The results include profiles in the list that
    #   occur after the marker. To get the next page of results, set the
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response (which is also the ID of the last profile on that page).
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of field-level encryption profiles you want in
    #   the response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionProfilesRequest AWS API Documentation
    #
    class ListFieldLevelEncryptionProfilesRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile_list
    #   Returns a list of the field-level encryption profiles that have been
    #   created in CloudFront for this account.
    #   @return [Types::FieldLevelEncryptionProfileList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListFieldLevelEncryptionProfilesResult AWS API Documentation
    #
    class ListFieldLevelEncryptionProfilesResult < Struct.new(
      :field_level_encryption_profile_list)
      include Aws::Structure
    end

    # The request to list invalidations.
    #
    # @note When making an API call, you may pass ListInvalidationsRequest
    #   data as a hash:
    #
    #       {
    #         distribution_id: "string", # required
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] distribution_id
    #   The distribution's ID.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter when paginating results to indicate where to
    #   begin in your list of invalidation batches. Because the results are
    #   returned in decreasing order from most recent to oldest, the most
    #   recent results are on the first page, the second page will contain
    #   earlier results, and so on. To get the next page of results, set
    #   `Marker` to the value of the `NextMarker` from the current page's
    #   response. This value is the same as the ID of the last invalidation
    #   batch on that page.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of invalidation batches that you want in the
    #   response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListInvalidationsRequest AWS API Documentation
    #
    class ListInvalidationsRequest < Struct.new(
      :distribution_id,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] invalidation_list
    #   Information about invalidation batches.
    #   @return [Types::InvalidationList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListInvalidationsResult AWS API Documentation
    #
    class ListInvalidationsResult < Struct.new(
      :invalidation_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPublicKeysRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this when paginating results to indicate where to begin in your
    #   list of public keys. The results include public keys in the list
    #   that occur after the marker. To get the next page of results, set
    #   the `Marker` to the value of the `NextMarker` from the current
    #   page's response (which is also the ID of the last public key on
    #   that page).
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of public keys you want in the response body.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListPublicKeysRequest AWS API Documentation
    #
    class ListPublicKeysRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # @!attribute [rw] public_key_list
    #   Returns a list of all public keys that have been added to CloudFront
    #   for this account.
    #   @return [Types::PublicKeyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListPublicKeysResult AWS API Documentation
    #
    class ListPublicKeysResult < Struct.new(
      :public_key_list)
      include Aws::Structure
    end

    # The request to list your streaming distributions.
    #
    # @note When making an API call, you may pass ListStreamingDistributionsRequest
    #   data as a hash:
    #
    #       {
    #         marker: "string",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   The value that you provided for the `Marker` request parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you provided for the `MaxItems` request parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListStreamingDistributionsRequest AWS API Documentation
    #
    class ListStreamingDistributionsRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution_list
    #   The `StreamingDistributionList` type.
    #   @return [Types::StreamingDistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListStreamingDistributionsResult AWS API Documentation
    #
    class ListStreamingDistributionsResult < Struct.new(
      :streaming_distribution_list)
      include Aws::Structure
    end

    # The request to list tags for a CloudFront resource.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "ResourceARN", # required
    #       }
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for the
    # distribution.
    #
    # @note When making an API call, you may pass LoggingConfig
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         include_cookies: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether you want CloudFront to save access logs to an
    #   Amazon S3 bucket. If you don't want to enable logging when you
    #   create a distribution or if you want to disable logging for an
    #   existing distribution, specify `false` for `Enabled`, and specify
    #   empty `Bucket` and `Prefix` elements. If you specify `false` for
    #   `Enabled` but you specify values for `Bucket`, `prefix`, and
    #   `IncludeCookies`, the values are automatically deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_cookies
    #   Specifies whether you want CloudFront to include cookies in access
    #   logs, specify `true` for `IncludeCookies`. If you choose to include
    #   cookies in logs, CloudFront logs all cookies regardless of how you
    #   configure the cache behaviors for this distribution. If you don't
    #   want to include cookies when you create a distribution or if you
    #   want to disable include cookies for an existing distribution,
    #   specify `false` for `IncludeCookies`.
    #   @return [Boolean]
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket to store the access logs in, for example,
    #   `myawslogbucket.s3.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An optional string that you want CloudFront to prefix to the access
    #   log `filenames` for this distribution, for example, `myprefix/`. If
    #   you want to enable logging, but you don't want to specify a prefix,
    #   you still must include an empty `Prefix` element in the `Logging`
    #   element.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :enabled,
      :include_cookies,
      :bucket,
      :prefix)
      include Aws::Structure
    end

    # A complex type that describes the Amazon S3 bucket or the HTTP server
    # (for example, a web server) from which CloudFront gets your files. You
    # must create at least one origin.
    #
    # For the current limit on the number of origins that you can create for
    # a distribution, see [Amazon CloudFront Limits][1] in the *AWS General
    # Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront
    #
    # @note When making an API call, you may pass Origin
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
    #           origin_read_timeout: 1,
    #           origin_keepalive_timeout: 1,
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   A unique identifier for the origin. The value of `Id` must be unique
    #   within the distribution.
    #
    #   When you specify the value of `TargetOriginId` for the default cache
    #   behavior or for another cache behavior, you indicate the origin to
    #   which you want the cache behavior to route requests by specifying
    #   the value of the `Id` element for that origin. When a request
    #   matches the path pattern for that cache behavior, CloudFront routes
    #   the request to the specified origin. For more information, see
    #   [Cache Behavior Settings][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   **Amazon S3 origins**\: The DNS name of the Amazon S3 bucket from
    #   which you want CloudFront to get objects for this origin, for
    #   example, `myawsbucket.s3.amazonaws.com`. If you set up your bucket
    #   to be configured as a website endpoint, enter the Amazon S3 static
    #   website hosting endpoint for the bucket.
    #
    #   Constraints for Amazon S3 origins:
    #
    #   * If you configured Amazon S3 Transfer Acceleration for your bucket,
    #     don't specify the `s3-accelerate` endpoint for `DomainName`.
    #
    #   * The bucket name must be between 3 and 63 characters long
    #     (inclusive).
    #
    #   * The bucket name must contain only lowercase characters, numbers,
    #     periods, underscores, and dashes.
    #
    #   * The bucket name must not contain adjacent periods.
    #
    #   **Custom Origins**\: The DNS domain name for the HTTP server from
    #   which you want CloudFront to get objects for this origin, for
    #   example, `www.example.com`.
    #
    #   Constraints for custom origins:
    #
    #   * `DomainName` must be a valid DNS name that contains only a-z, A-Z,
    #     0-9, dot (.), hyphen (-), or underscore (\_) characters.
    #
    #   * The name cannot exceed 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] origin_path
    #   An optional element that causes CloudFront to request your content
    #   from a directory in your Amazon S3 bucket or your custom origin.
    #   When you include the `OriginPath` element, specify the directory
    #   name, beginning with a `/`. CloudFront appends the directory name to
    #   the value of `DomainName`, for example, `example.com/production`. Do
    #   not include a `/` at the end of the directory name.
    #
    #   For example, suppose you've specified the following values for your
    #   distribution:
    #
    #   * `DomainName`\: An Amazon S3 bucket named `myawsbucket`.
    #
    #   * `OriginPath`\: `/production`
    #
    #   * `CNAME`\: `example.com`
    #
    #   When a user enters `example.com/index.html` in a browser, CloudFront
    #   sends a request to Amazon S3 for
    #   `myawsbucket/production/index.html`.
    #
    #   When a user enters `example.com/acme/index.html` in a browser,
    #   CloudFront sends a request to Amazon S3 for
    #   `myawsbucket/production/acme/index.html`.
    #   @return [String]
    #
    # @!attribute [rw] custom_headers
    #   A complex type that contains names and values for the custom headers
    #   that you want.
    #   @return [Types::CustomHeaders]
    #
    # @!attribute [rw] s3_origin_config
    #   A complex type that contains information about the Amazon S3 origin.
    #   If the origin is a custom origin, use the `CustomOriginConfig`
    #   element instead.
    #   @return [Types::S3OriginConfig]
    #
    # @!attribute [rw] custom_origin_config
    #   A complex type that contains information about a custom origin. If
    #   the origin is an Amazon S3 bucket, use the `S3OriginConfig` element
    #   instead.
    #   @return [Types::CustomOriginConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Origin AWS API Documentation
    #
    class Origin < Struct.new(
      :id,
      :domain_name,
      :origin_path,
      :custom_headers,
      :s3_origin_config,
      :custom_origin_config)
      include Aws::Structure
    end

    # A complex type that contains `HeaderName` and `HeaderValue` elements,
    # if any, for this distribution.
    #
    # @note When making an API call, you may pass OriginCustomHeader
    #   data as a hash:
    #
    #       {
    #         header_name: "string", # required
    #         header_value: "string", # required
    #       }
    #
    # @!attribute [rw] header_name
    #   The name of a header that you want CloudFront to forward to your
    #   origin. For more information, see [Forwarding Custom Headers to Your
    #   Origin (Web Distributions Only)][1] in the *Amazon Amazon CloudFront
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html
    #   @return [String]
    #
    # @!attribute [rw] header_value
    #   The value for the header that you specified in the `HeaderName`
    #   field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/OriginCustomHeader AWS API Documentation
    #
    class OriginCustomHeader < Struct.new(
      :header_name,
      :header_value)
      include Aws::Structure
    end

    # A complex type that contains information about the SSL/TLS protocols
    # that CloudFront can use when establishing an HTTPS connection with
    # your origin.
    #
    # @note When making an API call, you may pass OriginSslProtocols
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["SSLv3"], # required, accepts SSLv3, TLSv1, TLSv1.1, TLSv1.2
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of SSL/TLS protocols that you want to allow CloudFront to
    #   use when establishing an HTTPS connection with this origin.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list that contains allowed SSL/TLS protocols for this
    #   distribution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/OriginSslProtocols AWS API Documentation
    #
    class OriginSslProtocols < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that contains information about origins for this
    # distribution.
    #
    # @note When making an API call, you may pass Origins
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
    #               origin_read_timeout: 1,
    #               origin_keepalive_timeout: 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of origins for this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains origins for this distribution.
    #   @return [Array<Types::Origin>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Origins AWS API Documentation
    #
    class Origins < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that contains information about the objects that you
    # want to invalidate. For more information, see [Specifying the Objects
    # to Invalidate][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects
    #
    # @note When making an API call, you may pass Paths
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of objects that you want to invalidate.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains a list of the paths that you want to
    #   invalidate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Paths AWS API Documentation
    #
    class Paths < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex data type of public keys you add to CloudFront to use with
    # features like field-level encryption.
    #
    # @!attribute [rw] id
    #   A unique ID assigned to a public key you've added to CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A time you added a public key to CloudFront.
    #   @return [Time]
    #
    # @!attribute [rw] public_key_config
    #   A complex data type for a public key you add to CloudFront to use
    #   with features like field-level encryption.
    #   @return [Types::PublicKeyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/PublicKey AWS API Documentation
    #
    class PublicKey < Struct.new(
      :id,
      :created_time,
      :public_key_config)
      include Aws::Structure
    end

    # Information about a public key you add to CloudFront to use with
    # features like field-level encryption.
    #
    # @note When making an API call, you may pass PublicKeyConfig
    #   data as a hash:
    #
    #       {
    #         caller_reference: "string", # required
    #         name: "string", # required
    #         encoded_key: "string", # required
    #         comment: "string",
    #       }
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures the request can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for a public key you add to CloudFront to use with features
    #   like field-level encryption.
    #   @return [String]
    #
    # @!attribute [rw] encoded_key
    #   The encoded public key that you want to add to CloudFront to use
    #   with features like field-level encryption.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about a public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/PublicKeyConfig AWS API Documentation
    #
    class PublicKeyConfig < Struct.new(
      :caller_reference,
      :name,
      :encoded_key,
      :comment)
      include Aws::Structure
    end

    # A list of public keys you've added to CloudFront to use with features
    # like field-level encryption.
    #
    # @!attribute [rw] next_marker
    #   If there are more elements to be listed, this element is present and
    #   contains the value that you can use for the `Marker` request
    #   parameter to continue listing your public keys where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of public keys you want in the response body.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of public keys you added to CloudFront to use with
    #   features like field-level encryption.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   An array of information about a public key you add to CloudFront to
    #   use with features like field-level encryption.
    #   @return [Array<Types::PublicKeySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/PublicKeyList AWS API Documentation
    #
    class PublicKeyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      include Aws::Structure
    end

    # Public key information summary.
    #
    # @!attribute [rw] id
    #   ID for public key information summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for public key information summary.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Creation time for public key information summary.
    #   @return [Time]
    #
    # @!attribute [rw] encoded_key
    #   Encoded key for public key information summary.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   Comment for public key information summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/PublicKeySummary AWS API Documentation
    #
    class PublicKeySummary < Struct.new(
      :id,
      :name,
      :created_time,
      :encoded_key,
      :comment)
      include Aws::Structure
    end

    # Query argument-profile mapping for field-level encryption.
    #
    # @note When making an API call, you may pass QueryArgProfile
    #   data as a hash:
    #
    #       {
    #         query_arg: "string", # required
    #         profile_id: "string", # required
    #       }
    #
    # @!attribute [rw] query_arg
    #   Query argument for field-level encryption query argument-profile
    #   mapping.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   ID of profile to use for field-level encryption query
    #   argument-profile mapping
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/QueryArgProfile AWS API Documentation
    #
    class QueryArgProfile < Struct.new(
      :query_arg,
      :profile_id)
      include Aws::Structure
    end

    # Configuration for query argument-profile mapping for field-level
    # encryption.
    #
    # @note When making an API call, you may pass QueryArgProfileConfig
    #   data as a hash:
    #
    #       {
    #         forward_when_query_arg_profile_is_unknown: false, # required
    #         query_arg_profiles: {
    #           quantity: 1, # required
    #           items: [
    #             {
    #               query_arg: "string", # required
    #               profile_id: "string", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] forward_when_query_arg_profile_is_unknown
    #   Flag to set if you want a request to be forwarded to the origin even
    #   if the profile specified by the field-level encryption query
    #   argument, fle-profile, is unknown.
    #   @return [Boolean]
    #
    # @!attribute [rw] query_arg_profiles
    #   Profiles specified for query argument-profile mapping for
    #   field-level encryption.
    #   @return [Types::QueryArgProfiles]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/QueryArgProfileConfig AWS API Documentation
    #
    class QueryArgProfileConfig < Struct.new(
      :forward_when_query_arg_profile_is_unknown,
      :query_arg_profiles)
      include Aws::Structure
    end

    # Query argument-profile mapping for field-level encryption.
    #
    # @note When making an API call, you may pass QueryArgProfiles
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: [
    #           {
    #             query_arg: "string", # required
    #             profile_id: "string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] quantity
    #   Number of profiles for query argument-profile mapping for
    #   field-level encryption.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Number of items for query argument-profile mapping for field-level
    #   encryption.
    #   @return [Array<Types::QueryArgProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/QueryArgProfiles AWS API Documentation
    #
    class QueryArgProfiles < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # @note When making an API call, you may pass QueryStringCacheKeys
    #   data as a hash:
    #
    #       {
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] quantity
    #   The number of `whitelisted` query string parameters for this cache
    #   behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   (Optional) A list that contains the query string parameters that you
    #   want CloudFront to use as a basis for caching for this cache
    #   behavior. If `Quantity` is 0, you can omit `Items`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/QueryStringCacheKeys AWS API Documentation
    #
    class QueryStringCacheKeys < Struct.new(
      :quantity,
      :items)
      include Aws::Structure
    end

    # A complex type that identifies ways in which you want to restrict
    # distribution of your content.
    #
    # @note When making an API call, you may pass Restrictions
    #   data as a hash:
    #
    #       {
    #         geo_restriction: { # required
    #           restriction_type: "blacklist", # required, accepts blacklist, whitelist, none
    #           quantity: 1, # required
    #           items: ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] geo_restriction
    #   A complex type that controls the countries in which your content is
    #   distributed. CloudFront determines the location of your users using
    #   `MaxMind` GeoIP databases.
    #   @return [Types::GeoRestriction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Restrictions AWS API Documentation
    #
    class Restrictions < Struct.new(
      :geo_restriction)
      include Aws::Structure
    end

    # A complex type that contains information about the Amazon S3 bucket
    # from which you want CloudFront to get your media files for
    # distribution.
    #
    # @note When making an API call, you may pass S3Origin
    #   data as a hash:
    #
    #       {
    #         domain_name: "string", # required
    #         origin_access_identity: "string", # required
    #       }
    #
    # @!attribute [rw] domain_name
    #   The DNS name of the Amazon S3 origin.
    #   @return [String]
    #
    # @!attribute [rw] origin_access_identity
    #   The CloudFront origin access identity to associate with the RTMP
    #   distribution. Use an origin access identity to configure the
    #   distribution so that end users can only access objects in an Amazon
    #   S3 bucket through CloudFront.
    #
    #   If you want end users to be able to access objects using either the
    #   CloudFront URL or the Amazon S3 URL, specify an empty
    #   `OriginAccessIdentity` element.
    #
    #   To delete the origin access identity from an existing distribution,
    #   update the distribution configuration and include an empty
    #   `OriginAccessIdentity` element.
    #
    #   To replace the origin access identity, update the distribution
    #   configuration and specify the new origin access identity.
    #
    #   For more information, see [Using an Origin Access Identity to
    #   Restrict Access to Your Amazon S3 Content][1] in the *Amazon Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/S3Origin AWS API Documentation
    #
    class S3Origin < Struct.new(
      :domain_name,
      :origin_access_identity)
      include Aws::Structure
    end

    # A complex type that contains information about the Amazon S3 origin.
    # If the origin is a custom origin, use the `CustomOriginConfig` element
    # instead.
    #
    # @note When making an API call, you may pass S3OriginConfig
    #   data as a hash:
    #
    #       {
    #         origin_access_identity: "string", # required
    #       }
    #
    # @!attribute [rw] origin_access_identity
    #   The CloudFront origin access identity to associate with the origin.
    #   Use an origin access identity to configure the origin so that
    #   viewers can *only* access objects in an Amazon S3 bucket through
    #   CloudFront. The format of the value is:
    #
    #   origin-access-identity/cloudfront/*ID-of-origin-access-identity*
    #
    #   where ` ID-of-origin-access-identity ` is the value that CloudFront
    #   returned in the `ID` element when you created the origin access
    #   identity.
    #
    #   If you want viewers to be able to access objects using either the
    #   CloudFront URL or the Amazon S3 URL, specify an empty
    #   `OriginAccessIdentity` element.
    #
    #   To delete the origin access identity from an existing distribution,
    #   update the distribution configuration and include an empty
    #   `OriginAccessIdentity` element.
    #
    #   To replace the origin access identity, update the distribution
    #   configuration and specify the new origin access identity.
    #
    #   For more information about the origin access identity, see [Serving
    #   Private Content through CloudFront][1] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/S3OriginConfig AWS API Documentation
    #
    class S3OriginConfig < Struct.new(
      :origin_access_identity)
      include Aws::Structure
    end

    # A complex type that lists the AWS accounts that were included in the
    # `TrustedSigners` complex type, as well as their active CloudFront key
    # pair IDs, if any.
    #
    # @!attribute [rw] aws_account_number
    #   An AWS account that is included in the `TrustedSigners` complex type
    #   for this RTMP distribution. Valid values include:
    #
    #   * `self`, which is the AWS account used to create the distribution.
    #
    #   * An AWS account number.
    #   @return [String]
    #
    # @!attribute [rw] key_pair_ids
    #   A complex type that lists the active CloudFront key pairs, if any,
    #   that are associated with `AwsAccountNumber`.
    #   @return [Types::KeyPairIds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Signer AWS API Documentation
    #
    class Signer < Struct.new(
      :aws_account_number,
      :key_pair_ids)
      include Aws::Structure
    end

    # A streaming distribution.
    #
    # @!attribute [rw] id
    #   The identifier for the RTMP distribution. For example:
    #   `EGTXBD79EXAMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the RTMP distribution. When the status is
    #   `Deployed`, the distribution's information is propagated to all
    #   CloudFront edge locations.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the distribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The domain name that corresponds to the streaming distribution, for
    #   example, `s5c39gqb8ow64r.cloudfront.net`.
    #   @return [String]
    #
    # @!attribute [rw] active_trusted_signers
    #   A complex type that lists the AWS accounts, if any, that you
    #   included in the `TrustedSigners` complex type for this distribution.
    #   These are the accounts that you want to allow to create signed URLs
    #   for private content.
    #
    #   The `Signer` complex type lists the AWS account number of the
    #   trusted signer or `self` if the signer is the AWS account that
    #   created the distribution. The `Signer` element also includes the IDs
    #   of any active CloudFront key pairs that are associated with the
    #   trusted signer's AWS account. If no `KeyPairId` element appears for
    #   a `Signer`, that signer can't create signed URLs.
    #
    #   For more information, see [Serving Private Content through
    #   CloudFront][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::ActiveTrustedSigners]
    #
    # @!attribute [rw] streaming_distribution_config
    #   The current configuration information for the RTMP distribution.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingDistribution AWS API Documentation
    #
    class StreamingDistribution < Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :active_trusted_signers,
      :streaming_distribution_config)
      include Aws::Structure
    end

    # The RTMP distribution's configuration information.
    #
    # @note When making an API call, you may pass StreamingDistributionConfig
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
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures that the request can't be replayed. If
    #   the `CallerReference` is new (no matter the content of the
    #   `StreamingDistributionConfig` object), a new streaming distribution
    #   is created. If the `CallerReference` is a value that you already
    #   sent in a previous request to create a streaming distribution, and
    #   the content of the `StreamingDistributionConfig` is identical to the
    #   original request (ignoring white space), the response includes the
    #   same information returned to the original request. If the
    #   `CallerReference` is a value that you already sent in a previous
    #   request to create a streaming distribution but the content of the
    #   `StreamingDistributionConfig` is different from the original
    #   request, CloudFront returns a `DistributionAlreadyExists` error.
    #   @return [String]
    #
    # @!attribute [rw] s3_origin
    #   A complex type that contains information about the Amazon S3 bucket
    #   from which you want CloudFront to get your media files for
    #   distribution.
    #   @return [Types::S3Origin]
    #
    # @!attribute [rw] aliases
    #   A complex type that contains information about CNAMEs (alternate
    #   domain names), if any, for this streaming distribution.
    #   @return [Types::Aliases]
    #
    # @!attribute [rw] comment
    #   Any comments you want to include about the streaming distribution.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   A complex type that controls whether access logs are written for the
    #   streaming distribution.
    #   @return [Types::StreamingLoggingConfig]
    #
    # @!attribute [rw] trusted_signers
    #   A complex type that specifies any AWS accounts that you want to
    #   permit to create signed URLs for private content. If you want the
    #   distribution to use signed URLs, include this element; if you want
    #   the distribution to use public URLs, remove this element. For more
    #   information, see [Serving Private Content through CloudFront][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] price_class
    #   A complex type that contains information about price class for this
    #   streaming distribution.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the streaming distribution is enabled to accept user
    #   requests for content.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingDistributionConfig AWS API Documentation
    #
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
    end

    # A streaming distribution Configuration and a list of tags to be
    # associated with the streaming distribution.
    #
    # @note When making an API call, you may pass StreamingDistributionConfigWithTags
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
    #
    # @!attribute [rw] streaming_distribution_config
    #   A streaming distribution Configuration.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingDistributionConfigWithTags AWS API Documentation
    #
    class StreamingDistributionConfigWithTags < Struct.new(
      :streaming_distribution_config,
      :tags)
      include Aws::Structure
    end

    # A streaming distribution list.
    #
    # @!attribute [rw] marker
    #   The value you provided for the `Marker` request parameter.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If `IsTruncated` is `true`, this element is present and contains the
    #   value you can use for the `Marker` request parameter to continue
    #   listing your RTMP distributions where they left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value you provided for the `MaxItems` request parameter.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more streaming distributions remain to
    #   be listed. If your results were truncated, you can make a follow-up
    #   pagination request using the `Marker` request parameter to retrieve
    #   more distributions in the list.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of streaming distributions that were created by the
    #   current AWS account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `StreamingDistributionSummary`
    #   element for each distribution that was created by the current AWS
    #   account.
    #   @return [Array<Types::StreamingDistributionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingDistributionList AWS API Documentation
    #
    class StreamingDistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      include Aws::Structure
    end

    # A summary of the information for an Amazon CloudFront streaming
    # distribution.
    #
    # @!attribute [rw] id
    #   The identifier for the distribution, for example, `EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the streaming distribution. For
    #   example:
    #   `arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5`,
    #   where `123456789012` is your AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates the current status of the distribution. When the status is
    #   `Deployed`, the distribution's information is fully propagated
    #   throughout the Amazon CloudFront system.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the distribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The domain name corresponding to the distribution, for example,
    #   `d111111abcdef8.cloudfront.net`.
    #   @return [String]
    #
    # @!attribute [rw] s3_origin
    #   A complex type that contains information about the Amazon S3 bucket
    #   from which you want CloudFront to get your media files for
    #   distribution.
    #   @return [Types::S3Origin]
    #
    # @!attribute [rw] aliases
    #   A complex type that contains information about CNAMEs (alternate
    #   domain names), if any, for this streaming distribution.
    #   @return [Types::Aliases]
    #
    # @!attribute [rw] trusted_signers
    #   A complex type that specifies the AWS accounts, if any, that you
    #   want to allow to create signed URLs for private content. If you want
    #   to require signed URLs in requests for objects in the target origin
    #   that match the `PathPattern` for this cache behavior, specify `true`
    #   for `Enabled`, and specify the applicable values for `Quantity` and
    #   `Items`.If you don't want to require signed URLs in requests for
    #   objects that match `PathPattern`, specify `false` for `Enabled` and
    #   `0` for `Quantity`. Omit `Items`. To add, change, or remove one or
    #   more trusted signers, change `Enabled` to `true` (if it's currently
    #   `false`), change `Quantity` as applicable, and specify all of the
    #   trusted signers that you want to include in the updated
    #   distribution.
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] comment
    #   The comment originally specified when this distribution was created.
    #   @return [String]
    #
    # @!attribute [rw] price_class
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the distribution is enabled to accept end user requests for
    #   content.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingDistributionSummary AWS API Documentation
    #
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
    end

    # A complex type that controls whether access logs are written for this
    # streaming distribution.
    #
    # @note When making an API call, you may pass StreamingLoggingConfig
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         bucket: "string", # required
    #         prefix: "string", # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether you want CloudFront to save access logs to an
    #   Amazon S3 bucket. If you don't want to enable logging when you
    #   create a streaming distribution or if you want to disable logging
    #   for an existing streaming distribution, specify `false` for
    #   `Enabled`, and specify `empty Bucket` and `Prefix` elements. If you
    #   specify `false` for `Enabled` but you specify values for `Bucket`
    #   and `Prefix`, the values are automatically deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket to store the access logs in, for example,
    #   `myawslogbucket.s3.amazonaws.com`.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   An optional string that you want CloudFront to prefix to the access
    #   log filenames for this streaming distribution, for example,
    #   `myprefix/`. If you want to enable logging, but you don't want to
    #   specify a prefix, you still must include an empty `Prefix` element
    #   in the `Logging` element.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/StreamingLoggingConfig AWS API Documentation
    #
    class StreamingLoggingConfig < Struct.new(
      :enabled,
      :bucket,
      :prefix)
      include Aws::Structure
    end

    # A complex type that contains `Tag` key and `Tag` value.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   A string that contains `Tag` key.
    #
    #   The string length should be between 1 and 128 characters. Valid
    #   characters include `a-z`, `A-Z`, `0-9`, space, and the special
    #   characters `_ - . : / = + @`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A string that contains an optional `Tag` value.
    #
    #   The string length should be between 0 and 256 characters. Valid
    #   characters include `a-z`, `A-Z`, `0-9`, space, and the special
    #   characters `_ - . : / = + @`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # A complex type that contains zero or more `Tag` elements.
    #
    # @note When making an API call, you may pass TagKeys
    #   data as a hash:
    #
    #       {
    #         items: ["TagKey"],
    #       }
    #
    # @!attribute [rw] items
    #   A complex type that contains `Tag` key elements.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/TagKeys AWS API Documentation
    #
    class TagKeys < Struct.new(
      :items)
      include Aws::Structure
    end

    # The request to add tags to a CloudFront resource.
    #
    # @note When making an API call, you may pass TagResourceRequest
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
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      include Aws::Structure
    end

    # A complex type that contains zero or more `Tag` elements.
    #
    # @note When making an API call, you may pass Tags
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
    #
    # @!attribute [rw] items
    #   A complex type that contains `Tag` elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/Tags AWS API Documentation
    #
    class Tags < Struct.new(
      :items)
      include Aws::Structure
    end

    # A complex type that specifies the AWS accounts, if any, that you want
    # to allow to create signed URLs for private content.
    #
    # If you want to require signed URLs in requests for objects in the
    # target origin that match the `PathPattern` for this cache behavior,
    # specify `true` for `Enabled`, and specify the applicable values for
    # `Quantity` and `Items`. For more information, see [Serving Private
    # Content through CloudFront][1] in the *Amazon Amazon CloudFront
    # Developer Guide*.
    #
    # If you don't want to require signed URLs in requests for objects that
    # match `PathPattern`, specify `false` for `Enabled` and `0` for
    # `Quantity`. Omit `Items`.
    #
    # To add, change, or remove one or more trusted signers, change
    # `Enabled` to `true` (if it's currently `false`), change `Quantity` as
    # applicable, and specify all of the trusted signers that you want to
    # include in the updated distribution.
    #
    # For more information about updating the distribution configuration,
    # see DistributionConfig .
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @note When making an API call, you may pass TrustedSigners
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         quantity: 1, # required
    #         items: ["string"],
    #       }
    #
    # @!attribute [rw] enabled
    #   Specifies whether you want to require viewers to use signed URLs to
    #   access the files specified by `PathPattern` and `TargetOriginId`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of trusted signers for this cache behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   **Optional**\: A complex type that contains trusted signers for this
    #   cache behavior. If `Quantity` is `0`, you can omit `Items`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/TrustedSigners AWS API Documentation
    #
    class TrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items)
      include Aws::Structure
    end

    # The request to remove tags from a CloudFront resource.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource: "ResourceARN", # required
    #         tag_keys: { # required
    #           items: ["TagKey"],
    #         },
    #       }
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A complex type that contains zero or more `Tag` key elements.
    #   @return [Types::TagKeys]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      include Aws::Structure
    end

    # The request to update an origin access identity.
    #
    # @note When making an API call, you may pass UpdateCloudFrontOriginAccessIdentityRequest
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
    #
    # @!attribute [rw] cloud_front_origin_access_identity_config
    #   The identity's configuration information.
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    #
    # @!attribute [rw] id
    #   The identity's id.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   identity's configuration. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class UpdateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity
    #   The origin access identity's information.
    #   @return [Types::CloudFrontOriginAccessIdentity]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class UpdateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :etag)
      include Aws::Structure
    end

    # The request to update a distribution.
    #
    # @note When making an API call, you may pass UpdateDistributionRequest
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
    #                   origin_read_timeout: 1,
    #                   origin_keepalive_timeout: 1,
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
    #             lambda_function_associations: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   lambda_function_arn: "LambdaFunctionARN", # required
    #                   event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                   include_body: false,
    #                 },
    #               ],
    #             },
    #             field_level_encryption_id: "string",
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
    #                 lambda_function_associations: {
    #                   quantity: 1, # required
    #                   items: [
    #                     {
    #                       lambda_function_arn: "LambdaFunctionARN", # required
    #                       event_type: "viewer-request", # required, accepts viewer-request, viewer-response, origin-request, origin-response
    #                       include_body: false,
    #                     },
    #                   ],
    #                 },
    #                 field_level_encryption_id: "string",
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
    #             minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
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
    #           http_version: "http1.1", # accepts http1.1, http2
    #           is_ipv6_enabled: false,
    #         },
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] distribution_config
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfig]
    #
    # @!attribute [rw] id
    #   The distribution's id.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   distribution's configuration. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateDistributionRequest AWS API Documentation
    #
    class UpdateDistributionRequest < Struct.new(
      :distribution_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution
    #   The distribution's information.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateDistributionResult AWS API Documentation
    #
    class UpdateDistributionResult < Struct.new(
      :distribution,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFieldLevelEncryptionConfigRequest
    #   data as a hash:
    #
    #       {
    #         field_level_encryption_config: { # required
    #           caller_reference: "string", # required
    #           comment: "string",
    #           query_arg_profile_config: {
    #             forward_when_query_arg_profile_is_unknown: false, # required
    #             query_arg_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   query_arg: "string", # required
    #                   profile_id: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #           content_type_profile_config: {
    #             forward_when_content_type_is_unknown: false, # required
    #             content_type_profiles: {
    #               quantity: 1, # required
    #               items: [
    #                 {
    #                   format: "URLEncoded", # required, accepts URLEncoded
    #                   profile_id: "string",
    #                   content_type: "string", # required
    #                 },
    #               ],
    #             },
    #           },
    #         },
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] field_level_encryption_config
    #   Request to update a field-level encryption configuration.
    #   @return [Types::FieldLevelEncryptionConfig]
    #
    # @!attribute [rw] id
    #   The ID of the configuration you want to update.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to update. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class UpdateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption
    #   Return the results of updating the configuration.
    #   @return [Types::FieldLevelEncryption]
    #
    # @!attribute [rw] etag
    #   The value of the `ETag` header that you received when updating the
    #   configuration. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class UpdateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFieldLevelEncryptionProfileRequest
    #   data as a hash:
    #
    #       {
    #         field_level_encryption_profile_config: { # required
    #           name: "string", # required
    #           caller_reference: "string", # required
    #           comment: "string",
    #           encryption_entities: { # required
    #             quantity: 1, # required
    #             items: [
    #               {
    #                 public_key_id: "string", # required
    #                 provider_id: "string", # required
    #                 field_patterns: { # required
    #                   quantity: 1, # required
    #                   items: ["string"],
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] field_level_encryption_profile_config
    #   Request to update a field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    #
    # @!attribute [rw] id
    #   The ID of the field-level encryption profile request.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile identity to update. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class UpdateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile
    #   Return the results of updating the profile.
    #   @return [Types::FieldLevelEncryptionProfile]
    #
    # @!attribute [rw] etag
    #   The result of the field-level encryption profile request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class UpdateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :etag)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         public_key_config: { # required
    #           caller_reference: "string", # required
    #           name: "string", # required
    #           encoded_key: "string", # required
    #           comment: "string",
    #         },
    #         id: "string", # required
    #         if_match: "string",
    #       }
    #
    # @!attribute [rw] public_key_config
    #   Request to update public key information.
    #   @return [Types::PublicKeyConfig]
    #
    # @!attribute [rw] id
    #   ID of the public key to be updated.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key to update. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdatePublicKeyRequest AWS API Documentation
    #
    class UpdatePublicKeyRequest < Struct.new(
      :public_key_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   Return the results of updating the public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] etag
    #   The current version of the update public key result. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdatePublicKeyResult AWS API Documentation
    #
    class UpdatePublicKeyResult < Struct.new(
      :public_key,
      :etag)
      include Aws::Structure
    end

    # The request to update a streaming distribution.
    #
    # @note When making an API call, you may pass UpdateStreamingDistributionRequest
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
    #
    # @!attribute [rw] streaming_distribution_config
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @!attribute [rw] id
    #   The streaming distribution's id.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   streaming distribution's configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateStreamingDistributionRequest AWS API Documentation
    #
    class UpdateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config,
      :id,
      :if_match)
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution
    #   The streaming distribution's information.
    #   @return [Types::StreamingDistribution]
    #
    # @!attribute [rw] etag
    #   The current version of the configuration. For example:
    #   `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/UpdateStreamingDistributionResult AWS API Documentation
    #
    class UpdateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :etag)
      include Aws::Structure
    end

    # A complex type that specifies the following:
    #
    # * Whether you want viewers to use HTTP or HTTPS to request your
    #   objects.
    #
    # * If you want viewers to use HTTPS, whether you're using an alternate
    #   domain name such as `example.com` or the CloudFront domain name for
    #   your distribution, such as `d111111abcdef8.cloudfront.net`.
    #
    # * If you're using an alternate domain name, whether AWS Certificate
    #   Manager (ACM) provided the certificate, or you purchased a
    #   certificate from a third-party certificate authority and imported it
    #   into ACM or uploaded it to the IAM certificate store.
    #
    # You must specify only one of the following values:
    #
    # * ViewerCertificate$ACMCertificateArn
    #
    # * ViewerCertificate$IAMCertificateId
    #
    # * ViewerCertificate$CloudFrontDefaultCertificate
    #
    # Don't specify `false` for `CloudFrontDefaultCertificate`.
    #
    # **If you want viewers to use HTTP instead of HTTPS to request your
    # objects**\: Specify the following value:
    #
    # `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>`
    #
    # In addition, specify `allow-all` for `ViewerProtocolPolicy` for all of
    # your cache behaviors.
    #
    # **If you want viewers to use HTTPS to request your objects**\: Choose
    # the type of certificate that you want to use based on whether you're
    # using an alternate domain name for your objects or the CloudFront
    # domain name:
    #
    # * **If you're using an alternate domain name, such as example.com**\:
    #   Specify one of the following values, depending on whether ACM
    #   provided your certificate or you purchased your certificate from
    #   third-party certificate authority:
    #
    #   * `<ACMCertificateArn>ARN for ACM SSL/TLS
    #     certificate<ACMCertificateArn>` where ` ARN for ACM SSL/TLS
    #     certificate ` is the ARN for the ACM SSL/TLS certificate that you
    #     want to use for this distribution.
    #
    #   * `<IAMCertificateId>IAM certificate ID<IAMCertificateId>` where `
    #     IAM certificate ID ` is the ID that IAM returned when you added
    #     the certificate to the IAM certificate store.
    #
    #   If you specify `ACMCertificateArn` or `IAMCertificateId`, you must
    #   also specify a value for `SSLSupportMethod`.
    #
    #   If you choose to use an ACM certificate or a certificate in the IAM
    #   certificate store, we recommend that you use only an alternate
    #   domain name in your object URLs (`https://example.com/logo.jpg`). If
    #   you use the domain name that is associated with your CloudFront
    #   distribution (such as
    #   `https://d111111abcdef8.cloudfront.net/logo.jpg`) and the viewer
    #   supports `SNI`, then CloudFront behaves normally. However, if the
    #   browser does not support SNI, the user's experience depends on the
    #   value that you choose for `SSLSupportMethod`\:
    #
    #   * `vip`\: The viewer displays a warning because there is a mismatch
    #     between the CloudFront domain name and the domain name in your
    #     SSL/TLS certificate.
    #
    #   * `sni-only`\: CloudFront drops the connection with the browser
    #     without returning the object.
    #
    # * <b>If you're using the CloudFront domain name for your
    #   distribution, such as <code>d111111abcdef8.cloudfront.net</code>
    #   </b>\: Specify the following value:
    #
    #   `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate> `
    #
    # If you want viewers to use HTTPS, you must also specify one of the
    # following values in your cache behaviors:
    #
    # * ` <ViewerProtocolPolicy>https-only<ViewerProtocolPolicy>`
    #
    # * `<ViewerProtocolPolicy>redirect-to-https<ViewerProtocolPolicy>`
    #
    # You can also optionally require that CloudFront use HTTPS to
    # communicate with your origin by specifying one of the following values
    # for the applicable origins:
    #
    # * `<OriginProtocolPolicy>https-only<OriginProtocolPolicy> `
    #
    # * `<OriginProtocolPolicy>match-viewer<OriginProtocolPolicy> `
    #
    # For more information, see [Using Alternate Domain Names and HTTPS][1]
    # in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS
    #
    # @note When making an API call, you may pass ViewerCertificate
    #   data as a hash:
    #
    #       {
    #         cloud_front_default_certificate: false,
    #         iam_certificate_id: "string",
    #         acm_certificate_arn: "string",
    #         ssl_support_method: "sni-only", # accepts sni-only, vip
    #         minimum_protocol_version: "SSLv3", # accepts SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018
    #         certificate: "string",
    #         certificate_source: "cloudfront", # accepts cloudfront, iam, acm
    #       }
    #
    # @!attribute [rw] cloud_front_default_certificate
    #   For information about how and when to use
    #   `CloudFrontDefaultCertificate`, see ViewerCertificate.
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_certificate_id
    #   For information about how and when to use `IAMCertificateId`, see
    #   ViewerCertificate.
    #   @return [String]
    #
    # @!attribute [rw] acm_certificate_arn
    #   For information about how and when to use `ACMCertificateArn`, see
    #   ViewerCertificate.
    #   @return [String]
    #
    # @!attribute [rw] ssl_support_method
    #   If you specify a value for ViewerCertificate$ACMCertificateArn or
    #   for ViewerCertificate$IAMCertificateId, you must also specify how
    #   you want CloudFront to serve HTTPS requests: using a method that
    #   works for all clients or one that works for most clients:
    #
    #   * `vip`\: CloudFront uses dedicated IP addresses for your content
    #     and can respond to HTTPS requests from any viewer. However, you
    #     will incur additional monthly charges.
    #
    #   * `sni-only`\: CloudFront can respond to HTTPS requests from viewers
    #     that support Server Name Indication (SNI). All modern browsers
    #     support SNI, but some browsers still in use don't support SNI. If
    #     some of your users' browsers don't support SNI, we recommend
    #     that you do one of the following:
    #
    #     * Use the `vip` option (dedicated IP addresses) instead of
    #       `sni-only`.
    #
    #     * Use the CloudFront SSL/TLS certificate instead of a custom
    #       certificate. This requires that you use the CloudFront domain
    #       name of your distribution in the URLs for your objects, for
    #       example, `https://d111111abcdef8.cloudfront.net/logo.png`.
    #
    #     * If you can control which browser your users use, upgrade the
    #       browser to one that supports SNI.
    #
    #     * Use HTTP instead of HTTPS.
    #
    #   Don't specify a value for `SSLSupportMethod` if you specified
    #   `<CloudFrontDefaultCertificate>true<CloudFrontDefaultCertificate>`.
    #
    #   For more information, see [Using Alternate Domain Names and
    #   HTTPS][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/SecureConnections.html#CNAMEsAndHTTPS.html
    #   @return [String]
    #
    # @!attribute [rw] minimum_protocol_version
    #   Specify the security policy that you want CloudFront to use for
    #   HTTPS connections. A security policy determines two settings:
    #
    #   * The minimum SSL/TLS protocol that CloudFront uses to communicate
    #     with viewers
    #
    #   * The cipher that CloudFront uses to encrypt the content that it
    #     returns to viewers
    #
    #   <note markdown="1"> On the CloudFront console, this setting is called **Security
    #   policy**.
    #
    #    </note>
    #
    #   We recommend that you specify `TLSv1.1_2016` unless your users are
    #   using browsers or devices that do not support TLSv1.1 or later.
    #
    #   When both of the following are true, you must specify `TLSv1` or
    #   later for the security policy:
    #
    #   * You're using a custom certificate: you specified a value for
    #     `ACMCertificateArn` or for `IAMCertificateId`
    #
    #   * You're using SNI: you specified `sni-only` for `SSLSupportMethod`
    #
    #   If you specify `true` for `CloudFrontDefaultCertificate`, CloudFront
    #   automatically sets the security policy to `TLSv1` regardless of the
    #   value that you specify for `MinimumProtocolVersion`.
    #
    #   For information about the relationship between the security policy
    #   that you choose and the protocols and ciphers that CloudFront uses
    #   to communicate with viewers, see [ Supported SSL/TLS Protocols and
    #   Ciphers for Communication Between Viewers and CloudFront][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   This field has been deprecated. Use one of the following fields
    #   instead:
    #
    #   * ViewerCertificate$ACMCertificateArn
    #
    #   * ViewerCertificate$IAMCertificateId
    #
    #   * ViewerCertificate$CloudFrontDefaultCertificate
    #   @return [String]
    #
    # @!attribute [rw] certificate_source
    #   This field has been deprecated. Use one of the following fields
    #   instead:
    #
    #   * ViewerCertificate$ACMCertificateArn
    #
    #   * ViewerCertificate$IAMCertificateId
    #
    #   * ViewerCertificate$CloudFrontDefaultCertificate
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2018-06-18/ViewerCertificate AWS API Documentation
    #
    class ViewerCertificate < Struct.new(
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :acm_certificate_arn,
      :ssl_support_method,
      :minimum_protocol_version,
      :certificate,
      :certificate_source)
      include Aws::Structure
    end

  end
end
