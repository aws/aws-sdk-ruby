# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudFront
  module Types

    # Access denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/AccessDenied AWS API Documentation
    #
    class AccessDenied < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of key groups, and the public keys in each key group, that
    # CloudFront can use to verify the signatures of signed URLs and signed
    # cookies.
    #
    # @!attribute [rw] enabled
    #   This field is `true` if any of the key groups have public keys that
    #   CloudFront can use to verify the signatures of signed URLs and
    #   signed cookies. If not, this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of key groups in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of key groups, including the identifiers of the public keys
    #   in each key group that CloudFront can use to verify the signatures
    #   of signed URLs and signed cookies.
    #   @return [Array<Types::KGKeyPairIds>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ActiveTrustedKeyGroups AWS API Documentation
    #
    class ActiveTrustedKeyGroups < Struct.new(
      :enabled,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon Web Services accounts and the active CloudFront key
    # pairs in each account that CloudFront can use to verify the signatures
    # of signed URLs and signed cookies.
    #
    # @!attribute [rw] enabled
    #   This field is `true` if any of the Amazon Web Services accounts in
    #   the list have active CloudFront key pairs that CloudFront can use to
    #   verify the signatures of signed URLs and signed cookies. If not,
    #   this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of Amazon Web Services accounts in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of Amazon Web Services accounts and the identifiers of active
    #   CloudFront key pairs in each account that CloudFront can use to
    #   verify the signatures of signed URLs and signed cookies.
    #   @return [Array<Types::Signer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ActiveTrustedSigners AWS API Documentation
    #
    class ActiveTrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Web Services services in China customers must file for an
    # Internet Content Provider (ICP) recordal if they want to serve content
    # publicly on an alternate domain name, also known as a CNAME, that
    # they've added to CloudFront. AliasICPRecordal provides the ICP
    # recordal status for CNAMEs associated with distributions. The status
    # is returned in the CloudFront response; you can't configure it
    # yourself.
    #
    # For more information about ICP recordals, see [ Signup, Accounts, and
    # Credentials][1] in *Getting Started with Amazon Web Services services
    # in China*.
    #
    #
    #
    # [1]: https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html
    #
    # @!attribute [rw] cname
    #   A domain name associated with a distribution.
    #   @return [String]
    #
    # @!attribute [rw] icp_recordal_status
    #   The Internet Content Provider (ICP) recordal status for a CNAME. The
    #   ICPRecordalStatus is set to APPROVED for all CNAMEs (aliases) in
    #   regions outside of China.
    #
    #   The status values returned are the following:
    #
    #   * **APPROVED** indicates that the associated CNAME has a valid ICP
    #     recordal number. Multiple CNAMEs can be associated with a
    #     distribution, and CNAMEs can correspond to different ICP
    #     recordals. To be marked as APPROVED, that is, valid to use with
    #     China region, a CNAME must have one ICP recordal number associated
    #     with it.
    #
    #   * **SUSPENDED** indicates that the associated CNAME does not have a
    #     valid ICP recordal number.
    #
    #   * **PENDING** indicates that CloudFront can't determine the ICP
    #     recordal status of the CNAME associated with the distribution
    #     because there was an error in trying to determine the status. You
    #     can try again to see if the error is resolved in which case
    #     CloudFront returns an APPROVED or SUSPENDED status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/AliasICPRecordal AWS API Documentation
    #
    class AliasICPRecordal < Struct.new(
      :cname,
      :icp_recordal_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about CNAMEs (alternate
    # domain names), if any, for this distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Aliases AWS API Documentation
    #
    class Aliases < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/AllowedMethods AWS API Documentation
    #
    class AllowedMethods < Struct.new(
      :quantity,
      :items,
      :cached_methods)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_distribution_id
    #   The ID of the distribution that you're associating the alias with.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias (also known as a CNAME) to add to the target distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/AssociateAliasRequest AWS API Documentation
    #
    class AssociateAliasRequest < Struct.new(
      :target_distribution_id,
      :alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invalidation batch specified is too large.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/BatchTooLarge AWS API Documentation
    #
    class BatchTooLarge < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CNAME specified is already defined for CloudFront.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CNAMEAlreadyExists AWS API Documentation
    #
    class CNAMEAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes how CloudFront processes requests.
    #
    # You must create at least as many cache behaviors (including the
    # default cache behavior) as you have origins if you want CloudFront to
    # serve objects from all of the origins. Each cache behavior specifies
    # the one origin from which you want CloudFront to get objects. If you
    # have two origins and only the default cache behavior, the default
    # cache behavior will cause CloudFront to get objects from one of the
    # origins, but the other origin is never used.
    #
    # For the current quota (formerly known as limit) on the number of cache
    # behaviors that you can add to a distribution, see [Quotas][1] in the
    # *Amazon CloudFront Developer Guide*.
    #
    # If you don't want to specify any cache behaviors, include only an
    # empty `CacheBehaviors` element. Don't include an empty
    # `CacheBehavior` element because this is invalid.
    #
    # To delete all cache behaviors in an existing distribution, update the
    # distribution configuration and include only an empty `CacheBehaviors`
    # element.
    #
    # To add, change, or remove one or more cache behaviors, update the
    # distribution configuration and specify all of the cache behaviors that
    # you want to include in the updated distribution.
    #
    # For more information about cache behaviors, see [Cache Behavior
    # Settings][2] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern
    #   @return [String]
    #
    # @!attribute [rw] target_origin_id
    #   The value of `ID` for the origin that you want CloudFront to route
    #   requests to when they match this cache behavior.
    #   @return [String]
    #
    # @!attribute [rw] trusted_signers
    #   We recommend using `TrustedKeyGroups` instead of `TrustedSigners`.
    #
    #   A list of Amazon Web Services account IDs whose public keys
    #   CloudFront can use to validate signed URLs or signed cookies.
    #
    #   When a cache behavior contains trusted signers, CloudFront requires
    #   signed URLs or signed cookies for all requests that match the cache
    #   behavior. The URLs or cookies must be signed with the private key of
    #   a CloudFront key pair in the trusted signer's Amazon Web Services
    #   account. The signed URL or cookie contains information about which
    #   public key CloudFront should use to verify the signature. For more
    #   information, see [Serving private content][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] trusted_key_groups
    #   A list of key groups that CloudFront can use to validate signed URLs
    #   or signed cookies.
    #
    #   When a cache behavior contains trusted key groups, CloudFront
    #   requires signed URLs or signed cookies for all requests that match
    #   the cache behavior. The URLs or cookies must be signed with a
    #   private key whose corresponding public key is in the key group. The
    #   signed URL or cookie contains information about which public key
    #   CloudFront should use to verify the signature. For more information,
    #   see [Serving private content][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedKeyGroups]
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in the origin
    #   specified by `TargetOriginId` when a request matches the path
    #   pattern in `PathPattern`. You can specify the following options:
    #
    #   * `allow-all`: Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https`: If a viewer submits an HTTP request,
    #     CloudFront returns an HTTP status code of 301 (Moved Permanently)
    #     to the viewer along with the HTTPS URL. The viewer then resubmits
    #     the request using the new URL.
    #
    #   * `https-only`: If a viewer sends an HTTP request, CloudFront
    #     returns an HTTP status code of 403 (Forbidden).
    #
    #   For more information about requiring the HTTPS protocol, see
    #   [Requiring HTTPS Between Viewers and CloudFront][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   <note markdown="1"> The only way to guarantee that viewers retrieve an object that was
    #   fetched from the origin using HTTPS is never to use any other
    #   protocol to fetch the object. If you have recently changed from HTTP
    #   to HTTPS, we recommend that you clear your objects' cache because
    #   cached objects are protocol agnostic. That means that an edge
    #   location will return an object from the cache regardless of whether
    #   the current request protocol matches the protocol used previously.
    #   For more information, see [Managing Cache Expiration][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [String]
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
    # @!attribute [rw] compress
    #   Whether you want CloudFront to automatically compress certain files
    #   for this cache behavior. If so, specify true; if not, specify false.
    #   For more information, see [Serving Compressed Files][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_function_associations
    #   A complex type that contains zero or more Lambda@Edge function
    #   associations for a cache behavior.
    #   @return [Types::LambdaFunctionAssociations]
    #
    # @!attribute [rw] function_associations
    #   A list of CloudFront functions that are associated with this cache
    #   behavior. CloudFront functions must be published to the `LIVE` stage
    #   to associate them with a cache behavior.
    #   @return [Types::FunctionAssociations]
    #
    # @!attribute [rw] field_level_encryption_id
    #   The value of `ID` for the field-level encryption configuration that
    #   you want CloudFront to use for encrypting specific fields of data
    #   for this cache behavior.
    #   @return [String]
    #
    # @!attribute [rw] realtime_log_config_arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration
    #   that is attached to this cache behavior. For more information, see
    #   [Real-time logs][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html
    #   @return [String]
    #
    # @!attribute [rw] cache_policy_id
    #   The unique identifier of the cache policy that is attached to this
    #   cache behavior. For more information, see [Creating cache
    #   policies][1] or [Using the managed cache policies][2] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   A `CacheBehavior` must include either a `CachePolicyId` or
    #   `ForwardedValues`. We recommend that you use a `CachePolicyId`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   @return [String]
    #
    # @!attribute [rw] origin_request_policy_id
    #   The unique identifier of the origin request policy that is attached
    #   to this cache behavior. For more information, see [Creating origin
    #   request policies][1] or [Using the managed origin request
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html
    #   @return [String]
    #
    # @!attribute [rw] response_headers_policy_id
    #   The identifier for a response headers policy.
    #   @return [String]
    #
    # @!attribute [rw] forwarded_values
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field. For more
    #   information, see [Working with policies][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   If you want to include values in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][2] or [Using the
    #   managed cache policies][3] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #   If you want to send values to the origin but not include them in the
    #   cache key, use an origin request policy. For more information, see
    #   [Creating origin request policies][4] or [Using the managed origin
    #   request policies][5] in the *Amazon CloudFront Developer Guide*.
    #
    #   A `CacheBehavior` must include either a `CachePolicyId` or
    #   `ForwardedValues`. We recommend that you use a `CachePolicyId`.
    #
    #   A complex type that specifies how CloudFront handles query strings,
    #   cookies, and HTTP headers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [4]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [5]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html
    #   @return [Types::ForwardedValues]
    #
    # @!attribute [rw] min_ttl
    #   This field is deprecated. We recommend that you use the `MinTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The minimum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. For more
    #   information, see [ Managing How Long Content Stays in an Edge Cache
    #   (Expiration)][3] in the <i> Amazon CloudFront Developer Guide</i>.
    #
    #   You must specify `0` for `MinTTL` if you configure CloudFront to
    #   forward all headers to your origin (under `Headers`, if you specify
    #   `1` for `Quantity` and `*` for `Name`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] default_ttl
    #   This field is deprecated. We recommend that you use the `DefaultTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The default amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin does not add HTTP
    #   headers such as `Cache-Control max-age`, `Cache-Control s-maxage`,
    #   and `Expires` to objects. For more information, see [Managing How
    #   Long Content Stays in an Edge Cache (Expiration)][3] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   This field is deprecated. We recommend that you use the `MaxTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The maximum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin adds HTTP headers
    #   such as `Cache-Control max-age`, `Cache-Control s-maxage`, and
    #   `Expires` to objects. For more information, see [Managing How Long
    #   Content Stays in an Edge Cache (Expiration)][3] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CacheBehavior AWS API Documentation
    #
    class CacheBehavior < Struct.new(
      :path_pattern,
      :target_origin_id,
      :trusted_signers,
      :trusted_key_groups,
      :viewer_protocol_policy,
      :allowed_methods,
      :smooth_streaming,
      :compress,
      :lambda_function_associations,
      :function_associations,
      :field_level_encryption_id,
      :realtime_log_config_arn,
      :cache_policy_id,
      :origin_request_policy_id,
      :response_headers_policy_id,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains zero or more `CacheBehavior` elements.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CacheBehaviors AWS API Documentation
    #
    class CacheBehaviors < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cache policy.
    #
    # When it's attached to a cache behavior, the cache policy determines
    # the following:
    #
    # * The values that CloudFront includes in the cache key. These values
    #   can include HTTP headers, cookies, and URL query strings. CloudFront
    #   uses the cache key to find an object in its cache that it can return
    #   to the viewer.
    #
    # * The default, minimum, and maximum time to live (TTL) values that you
    #   want objects to stay in the CloudFront cache.
    #
    # The headers, cookies, and query strings that are included in the cache
    # key are also included in requests that CloudFront sends to the origin.
    # CloudFront sends a request when it can't find a valid object in its
    # cache that matches the request's cache key. If you want to send
    # values to the origin but *not* include them in the cache key, use
    # `OriginRequestPolicy`.
    #
    # @!attribute [rw] id
    #   The unique identifier for the cache policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the cache policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] cache_policy_config
    #   The cache policy configuration.
    #   @return [Types::CachePolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicy AWS API Documentation
    #
    class CachePolicy < Struct.new(
      :id,
      :last_modified_time,
      :cache_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cache policy with this name already exists. You must provide a
    # unique name. To modify an existing cache policy, use
    # `UpdateCachePolicy`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyAlreadyExists AWS API Documentation
    #
    class CachePolicyAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cache policy configuration.
    #
    # This configuration determines the following:
    #
    # * The values that CloudFront includes in the cache key. These values
    #   can include HTTP headers, cookies, and URL query strings. CloudFront
    #   uses the cache key to find an object in its cache that it can return
    #   to the viewer.
    #
    # * The default, minimum, and maximum time to live (TTL) values that you
    #   want objects to stay in the CloudFront cache.
    #
    # The headers, cookies, and query strings that are included in the cache
    # key are also included in requests that CloudFront sends to the origin.
    # CloudFront sends a request when it can't find a valid object in its
    # cache that matches the request's cache key. If you want to send
    # values to the origin but *not* include them in the cache key, use
    # `OriginRequestPolicy`.
    #
    # @!attribute [rw] comment
    #   A comment to describe the cache policy. The comment cannot be longer
    #   than 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name to identify the cache policy.
    #   @return [String]
    #
    # @!attribute [rw] default_ttl
    #   The default amount of time, in seconds, that you want objects to
    #   stay in the CloudFront cache before CloudFront sends another request
    #   to the origin to see if the object has been updated. CloudFront uses
    #   this value as the object's time to live (TTL) only when the origin
    #   does *not* send `Cache-Control` or `Expires` headers with the
    #   object. For more information, see [Managing How Long Content Stays
    #   in an Edge Cache (Expiration)][1] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #   The default value for this field is 86400 seconds (one day). If the
    #   value of `MinTTL` is more than 86400 seconds, then the default value
    #   for this field is the same as the value of `MinTTL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   The maximum amount of time, in seconds, that objects stay in the
    #   CloudFront cache before CloudFront sends another request to the
    #   origin to see if the object has been updated. CloudFront uses this
    #   value only when the origin sends `Cache-Control` or `Expires`
    #   headers with the object. For more information, see [Managing How
    #   Long Content Stays in an Edge Cache (Expiration)][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   The default value for this field is 31536000 seconds (one year). If
    #   the value of `MinTTL` or `DefaultTTL` is more than 31536000 seconds,
    #   then the default value for this field is the same as the value of
    #   `DefaultTTL`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] min_ttl
    #   The minimum amount of time, in seconds, that you want objects to
    #   stay in the CloudFront cache before CloudFront sends another request
    #   to the origin to see if the object has been updated. For more
    #   information, see [Managing How Long Content Stays in an Edge Cache
    #   (Expiration)][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] parameters_in_cache_key_and_forwarded_to_origin
    #   The HTTP headers, cookies, and URL query strings to include in the
    #   cache key. The values included in the cache key are also included in
    #   requests that CloudFront sends to the origin.
    #   @return [Types::ParametersInCacheKeyAndForwardedToOrigin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyConfig AWS API Documentation
    #
    class CachePolicyConfig < Struct.new(
      :comment,
      :name,
      :default_ttl,
      :max_ttl,
      :min_ttl,
      :parameters_in_cache_key_and_forwarded_to_origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any cookies in viewer requests (and
    # if so, which cookies) are included in the cache key and in requests
    # that CloudFront sends to the origin.
    #
    # @!attribute [rw] cookie_behavior
    #   Determines whether any cookies in viewer requests are included in
    #   the cache key and in requests that CloudFront sends to the origin.
    #   Valid values are:
    #
    #   * `none` – No cookies in viewer requests are included in the cache
    #     key or in requests that CloudFront sends to the origin. Even when
    #     this field is set to `none`, any cookies that are listed in an
    #     `OriginRequestPolicy` *are* included in origin requests.
    #
    #   * `whitelist` – Only the cookies in viewer requests that are listed
    #     in the `CookieNames` type are included in the cache key and in
    #     requests that CloudFront sends to the origin.
    #
    #   * `allExcept` – All cookies in viewer requests are included in the
    #     cache key and in requests that CloudFront sends to the origin, <i>
    #     <b>except</b> </i> for those that are listed in the `CookieNames`
    #     type, which are not included.
    #
    #   * `all` – All cookies in viewer requests are included in the cache
    #     key and in requests that CloudFront sends to the origin.
    #   @return [String]
    #
    # @!attribute [rw] cookies
    #   Contains a list of cookie names.
    #   @return [Types::CookieNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyCookiesConfig AWS API Documentation
    #
    class CachePolicyCookiesConfig < Struct.new(
      :cookie_behavior,
      :cookies)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any HTTP headers (and if so, which
    # headers) are included in the cache key and in requests that CloudFront
    # sends to the origin.
    #
    # @!attribute [rw] header_behavior
    #   Determines whether any HTTP headers are included in the cache key
    #   and in requests that CloudFront sends to the origin. Valid values
    #   are:
    #
    #   * `none` – No HTTP headers are included in the cache key or in
    #     requests that CloudFront sends to the origin. Even when this field
    #     is set to `none`, any headers that are listed in an
    #     `OriginRequestPolicy` *are* included in origin requests.
    #
    #   * `whitelist` – Only the HTTP headers that are listed in the
    #     `Headers` type are included in the cache key and in requests that
    #     CloudFront sends to the origin.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   Contains a list of HTTP header names.
    #   @return [Types::Headers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyHeadersConfig AWS API Documentation
    #
    class CachePolicyHeadersConfig < Struct.new(
      :header_behavior,
      :headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the cache policy because it is attached to one or more
    # cache behaviors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyInUse AWS API Documentation
    #
    class CachePolicyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of cache policies.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing cache
    #   policies where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of cache policies requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The total number of cache policies returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the cache policies in the list.
    #   @return [Array<Types::CachePolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyList AWS API Documentation
    #
    class CachePolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any URL query strings in viewer
    # requests (and if so, which query strings) are included in the cache
    # key and in requests that CloudFront sends to the origin.
    #
    # @!attribute [rw] query_string_behavior
    #   Determines whether any URL query strings in viewer requests are
    #   included in the cache key and in requests that CloudFront sends to
    #   the origin. Valid values are:
    #
    #   * `none` – No query strings in viewer requests are included in the
    #     cache key or in requests that CloudFront sends to the origin. Even
    #     when this field is set to `none`, any query strings that are
    #     listed in an `OriginRequestPolicy` *are* included in origin
    #     requests.
    #
    #   * `whitelist` – Only the query strings in viewer requests that are
    #     listed in the `QueryStringNames` type are included in the cache
    #     key and in requests that CloudFront sends to the origin.
    #
    #   * `allExcept` – All query strings in viewer requests are included in
    #     the cache key and in requests that CloudFront sends to the origin,
    #     <i> <b>except</b> </i> those that are listed in the
    #     `QueryStringNames` type, which are not included.
    #
    #   * `all` – All query strings in viewer requests are included in the
    #     cache key and in requests that CloudFront sends to the origin.
    #   @return [String]
    #
    # @!attribute [rw] query_strings
    #   Contains the specific query strings in viewer requests that either
    #   <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in the cache
    #   key and in requests that CloudFront sends to the origin. The
    #   behavior depends on whether the `QueryStringBehavior` field in the
    #   `CachePolicyQueryStringsConfig` type is set to `whitelist` (the
    #   listed query strings <i> <b>are</b> </i> included) or `allExcept`
    #   (the listed query strings <i> <b>are not</b> </i> included, but all
    #   other query strings are).
    #   @return [Types::QueryStringNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicyQueryStringsConfig AWS API Documentation
    #
    class CachePolicyQueryStringsConfig < Struct.new(
      :query_string_behavior,
      :query_strings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a cache policy.
    #
    # @!attribute [rw] type
    #   The type of cache policy, either `managed` (created by Amazon Web
    #   Services) or `custom` (created in this Amazon Web Services account).
    #   @return [String]
    #
    # @!attribute [rw] cache_policy
    #   The cache policy.
    #   @return [Types::CachePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachePolicySummary AWS API Documentation
    #
    class CachePolicySummary < Struct.new(
      :type,
      :cache_policy)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CachedMethods AWS API Documentation
    #
    class CachedMethods < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't change the value of a public key.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CannotChangeImmutablePublicKeyFields AWS API Documentation
    #
    class CannotChangeImmutablePublicKeyFields < Struct.new(
      :message)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentity AWS API Documentation
    #
    class CloudFrontOriginAccessIdentity < Struct.new(
      :id,
      :s3_canonical_user_id,
      :cloud_front_origin_access_identity_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the `CallerReference` is a value you already sent in a previous
    # request to create an identity but the content of the
    # `CloudFrontOriginAccessIdentityConfig` is different from the original
    # request, CloudFront returns a
    # `CloudFrontOriginAccessIdentityAlreadyExists` error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentityAlreadyExists AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Origin access identity configuration. Send a `GET` request to the
    # `/CloudFront API version/CloudFront/identity ID/config` resource.
    #
    # @!attribute [rw] caller_reference
    #   A unique value (for example, a date-time stamp) that ensures that
    #   the request can't be replayed.
    #
    #   If the value of `CallerReference` is new (regardless of the content
    #   of the `CloudFrontOriginAccessIdentityConfig` object), a new origin
    #   access identity is created.
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
    #   A comment to describe the origin access identity. The comment cannot
    #   be longer than 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentityConfig AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityConfig < Struct.new(
      :caller_reference,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Origin Access Identity specified is already in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentityInUse AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityInUse < Struct.new(
      :message)
      SENSITIVE = []
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
    #   by the current Amazon Web Services account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one
    #   `CloudFrontOriginAccessIdentitySummary` element for each origin
    #   access identity that was created by the current Amazon Web Services
    #   account.
    #   @return [Array<Types::CloudFrontOriginAccessIdentitySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentityList AWS API Documentation
    #
    class CloudFrontOriginAccessIdentityList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CloudFrontOriginAccessIdentitySummary AWS API Documentation
    #
    class CloudFrontOriginAccessIdentitySummary < Struct.new(
      :id,
      :s3_canonical_user_id,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # An alias (also called a CNAME) and the CloudFront distribution and
    # Amazon Web Services account ID that it's associated with. The
    # distribution and account IDs are partially hidden, which allows you to
    # identify the distributions and accounts that you own, but helps to
    # protect the information of ones that you don't own.
    #
    # @!attribute [rw] alias
    #   An alias (also called a CNAME).
    #   @return [String]
    #
    # @!attribute [rw] distribution_id
    #   The (partially hidden) ID of the CloudFront distribution associated
    #   with the alias.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The (partially hidden) ID of the Amazon Web Services account that
    #   owns the distribution that's associated with the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ConflictingAlias AWS API Documentation
    #
    class ConflictingAlias < Struct.new(
      :alias,
      :distribution_id,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of aliases (also called CNAMEs) and the CloudFront
    # distributions and Amazon Web Services accounts that they are
    # associated with. In the list, the distribution and account IDs are
    # partially hidden, which allows you to identify the distributions and
    # accounts that you own, but helps to protect the information of ones
    # that you don't own.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing
    #   conflicting aliases where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of conflicting aliases requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of conflicting aliases returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the conflicting aliases in the list.
    #   @return [Array<Types::ConflictingAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ConflictingAliasesList AWS API Documentation
    #
    class ConflictingAliasesList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A field-level encryption content type profile.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContentTypeProfile AWS API Documentation
    #
    class ContentTypeProfile < Struct.new(
      :format,
      :profile_id,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a field-level encryption content type-profile
    # mapping.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContentTypeProfileConfig AWS API Documentation
    #
    class ContentTypeProfileConfig < Struct.new(
      :forward_when_content_type_is_unknown,
      :content_type_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Field-level encryption content type-profile.
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption content type-profile mappings.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Items in a field-level encryption content type-profile mapping.
    #   @return [Array<Types::ContentTypeProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContentTypeProfiles AWS API Documentation
    #
    class ContentTypeProfiles < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A continuous deployment policy.
    #
    # @!attribute [rw] id
    #   The identifier of the continuous deployment policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the continuous deployment policy was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] continuous_deployment_policy_config
    #   Contains the configuration for a continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicy AWS API Documentation
    #
    class ContinuousDeploymentPolicy < Struct.new(
      :id,
      :last_modified_time,
      :continuous_deployment_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A continuous deployment policy with this configuration already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicyAlreadyExists AWS API Documentation
    #
    class ContinuousDeploymentPolicyAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration for a continuous deployment policy.
    #
    # @!attribute [rw] staging_distribution_dns_names
    #   The CloudFront domain name of the staging distribution. For example:
    #   `d111111abcdef8.cloudfront.net`.
    #   @return [Types::StagingDistributionDnsNames]
    #
    # @!attribute [rw] enabled
    #   A Boolean that indicates whether this continuous deployment policy
    #   is enabled (in effect). When this value is `true`, this policy is
    #   enabled and in effect. When this value is `false`, this policy is
    #   not enabled and has no effect.
    #   @return [Boolean]
    #
    # @!attribute [rw] traffic_config
    #   Contains the parameters for routing production traffic from your
    #   primary to staging distributions.
    #   @return [Types::TrafficConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicyConfig AWS API Documentation
    #
    class ContinuousDeploymentPolicyConfig < Struct.new(
      :staging_distribution_dns_names,
      :enabled,
      :traffic_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot delete a continuous deployment policy that is associated
    # with a primary distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicyInUse AWS API Documentation
    #
    class ContinuousDeploymentPolicyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of continuous deployment policies.
    #
    # @!attribute [rw] next_marker
    #   Indicates the next page of continuous deployment policies. To get
    #   the next page of the list, use this value in the `Marker` field of
    #   your request.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of continuous deployment policies that were
    #   specified in your request.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The total number of continuous deployment policies in your Amazon
    #   Web Services account, regardless of the `MaxItems` value.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of continuous deployment policy items.
    #   @return [Array<Types::ContinuousDeploymentPolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicyList AWS API Documentation
    #
    class ContinuousDeploymentPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the information about your continuous deployment
    # policies.
    #
    # @!attribute [rw] continuous_deployment_policy
    #   The continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentPolicySummary AWS API Documentation
    #
    class ContinuousDeploymentPolicySummary < Struct.new(
      :continuous_deployment_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # This configuration determines which HTTP requests are sent to the
    # staging distribution. If the HTTP request contains a header and value
    # that matches what you specify here, the request is sent to the staging
    # distribution. Otherwise the request is sent to the primary
    # distribution.
    #
    # @!attribute [rw] header
    #   The request header name that you want CloudFront to send to your
    #   staging distribution. The header must contain the prefix
    #   `aws-cf-cd-`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The request header value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentSingleHeaderConfig AWS API Documentation
    #
    class ContinuousDeploymentSingleHeaderConfig < Struct.new(
      :header,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the percentage of traffic to send to a staging distribution.
    #
    # @!attribute [rw] weight
    #   The percentage of traffic to send to a staging distribution,
    #   expressed as a decimal number between 0 and .15.
    #   @return [Float]
    #
    # @!attribute [rw] session_stickiness_config
    #   Session stickiness provides the ability to define multiple requests
    #   from a single viewer as a single session. This prevents the
    #   potentially inconsistent experience of sending some of a given
    #   user's requests to your staging distribution, while others are sent
    #   to your primary distribution. Define the session duration using TTL
    #   values.
    #   @return [Types::SessionStickinessConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ContinuousDeploymentSingleWeightConfig AWS API Documentation
    #
    class ContinuousDeploymentSingleWeightConfig < Struct.new(
      :weight,
      :session_stickiness_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of cookie names.
    #
    # @!attribute [rw] quantity
    #   The number of cookie names in the `Items` list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of cookie names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CookieNames AWS API Documentation
    #
    class CookieNames < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # This field is deprecated. We recommend that you use a cache policy or
    # an origin request policy instead of this field.
    #
    # If you want to include cookies in the cache key, use `CookiesConfig`
    # in a cache policy. See `CachePolicy`.
    #
    # If you want to send cookies to the origin but not include them in the
    # cache key, use `CookiesConfig` in an origin request policy. See
    # `OriginRequestPolicy`.
    #
    # A complex type that specifies whether you want CloudFront to forward
    # cookies to the origin and, if so, which ones. For more information
    # about forwarding cookies to the origin, see [Caching Content Based on
    # Cookies][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html
    #
    # @!attribute [rw] forward
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include cookies in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send cookies to the origin but not include them in
    #   the cache key, use origin request policy. For more information, see
    #   [Creating origin request policies][2] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #   Specifies which cookies to forward to the origin for this cache
    #   behavior: all, none, or the list of cookies specified in the
    #   `WhitelistedNames` complex type.
    #
    #   Amazon S3 doesn't process cookies. When the cache behavior is
    #   forwarding requests to an Amazon S3 origin, specify none for the
    #   `Forward` element.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   @return [String]
    #
    # @!attribute [rw] whitelisted_names
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include cookies in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send cookies to the origin but not include them in
    #   the cache key, use an origin request policy. For more information,
    #   see [Creating origin request policies][2] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #   Required if you specify `whitelist` for the value of `Forward`. A
    #   complex type that specifies how many different cookies you want
    #   CloudFront to forward to the origin for this cache behavior and, if
    #   you want to forward selected cookies, the names of those cookies.
    #
    #   If you specify `all` or `none` for the value of `Forward`, omit
    #   `WhitelistedNames`. If you change the value of `Forward` from
    #   `whitelist` to `all` or `none` and you don't delete the
    #   `WhitelistedNames` element and its child elements, CloudFront
    #   deletes them automatically.
    #
    #   For the current limit on the number of cookie names that you can
    #   whitelist for each cache behavior, see [ CloudFront Limits][3] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [3]: https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront
    #   @return [Types::CookieNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CookiePreference AWS API Documentation
    #
    class CookiePreference < Struct.new(
      :forward,
      :whitelisted_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] primary_distribution_id
    #   The identifier of the primary distribution whose configuration you
    #   are copying. To get a distribution ID, use `ListDistributions`.
    #   @return [String]
    #
    # @!attribute [rw] staging
    #   The type of distribution that your primary distribution will be
    #   copied to. The only valid value is `True`, indicating that you are
    #   copying to a staging distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] if_match
    #   The version identifier of the primary distribution whose
    #   configuration you are copying. This is the `ETag` value returned in
    #   the response to `GetDistribution` and `GetDistributionConfig`.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   A value that uniquely identifies a request to create a resource.
    #   This helps to prevent CloudFront from creating a duplicate resource
    #   if you accidentally resubmit an identical request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CopyDistributionRequest AWS API Documentation
    #
    class CopyDistributionRequest < Struct.new(
      :primary_distribution_id,
      :staging,
      :if_match,
      :caller_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution
    #   A distribution tells CloudFront where you want content to be
    #   delivered from, and the details about how to track and manage
    #   content delivery.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] location
    #   The URL of the staging distribution.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the staging
    #   distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CopyDistributionResult AWS API Documentation
    #
    class CopyDistributionResult < Struct.new(
      :distribution,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy_config
    #   A cache policy configuration.
    #   @return [Types::CachePolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCachePolicyRequest AWS API Documentation
    #
    class CreateCachePolicyRequest < Struct.new(
      :cache_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy
    #   A cache policy.
    #   @return [Types::CachePolicy]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the cache policy just created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the cache policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCachePolicyResult AWS API Documentation
    #
    class CreateCachePolicyResult < Struct.new(
      :cache_policy,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new origin access identity (OAI). An origin
    # access identity is a special CloudFront user that you can associate
    # with Amazon S3 origins, so that you can secure all or just some of
    # your Amazon S3 content. For more information, see [ Restricting Access
    # to Amazon S3 Content by Using an Origin Access Identity][1] in the
    # *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
    #
    # @!attribute [rw] cloud_front_origin_access_identity_config
    #   The current configuration information for the identity.
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class CreateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config)
      SENSITIVE = []
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the origin access identity created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class CreateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy_config
    #   Contains the configuration for a continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateContinuousDeploymentPolicyRequest AWS API Documentation
    #
    class CreateContinuousDeploymentPolicyRequest < Struct.new(
      :continuous_deployment_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy
    #   A continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicy]
    #
    # @!attribute [rw] location
    #   The location of the continuous deployment policy.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the continuous
    #   deployment policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateContinuousDeploymentPolicyResult AWS API Documentation
    #
    class CreateContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new distribution.
    #
    # @!attribute [rw] distribution_config
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistributionRequest AWS API Documentation
    #
    class CreateDistributionRequest < Struct.new(
      :distribution_config)
      SENSITIVE = []
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistributionResult AWS API Documentation
    #
    class CreateDistributionResult < Struct.new(
      :distribution,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new distribution with tags.
    #
    # @!attribute [rw] distribution_config_with_tags
    #   The distribution's configuration information.
    #   @return [Types::DistributionConfigWithTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistributionWithTagsRequest AWS API Documentation
    #
    class CreateDistributionWithTagsRequest < Struct.new(
      :distribution_config_with_tags)
      SENSITIVE = []
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
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateDistributionWithTagsResult AWS API Documentation
    #
    class CreateDistributionWithTagsResult < Struct.new(
      :distribution,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_config
    #   The request to create a new field-level encryption configuration.
    #   @return [Types::FieldLevelEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class CreateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption
    #   Returned when you create a new field-level encryption configuration.
    #   @return [Types::FieldLevelEncryption]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new configuration resource just
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption configuration. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class CreateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile_config
    #   The request to create a field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class CreateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile
    #   Returned when you create a new field-level encryption profile.
    #   @return [Types::FieldLevelEncryptionProfile]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the new profile resource just created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the field level encryption profile. For
    #   example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class CreateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name to identify the function.
    #   @return [String]
    #
    # @!attribute [rw] function_config
    #   Configuration information about the function, including an optional
    #   comment and the function's runtime.
    #   @return [Types::FunctionConfig]
    #
    # @!attribute [rw] function_code
    #   The function code. For more information about writing a CloudFront
    #   function, see [Writing function code for CloudFront Functions][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFunctionRequest AWS API Documentation
    #
    class CreateFunctionRequest < Struct.new(
      :name,
      :function_config,
      :function_code)
      SENSITIVE = [:function_code]
      include Aws::Structure
    end

    # @!attribute [rw] function_summary
    #   Contains configuration information and metadata about a CloudFront
    #   function.
    #   @return [Types::FunctionSummary]
    #
    # @!attribute [rw] location
    #   The URL of the CloudFront function. Use the URL to manage the
    #   function with the CloudFront API.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the CloudFront
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateFunctionResult AWS API Documentation
    #
    class CreateFunctionResult < Struct.new(
      :function_summary,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create an invalidation.
    #
    # @!attribute [rw] distribution_id
    #   The distribution's id.
    #   @return [String]
    #
    # @!attribute [rw] invalidation_batch
    #   The batch information for the invalidation.
    #   @return [Types::InvalidationBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateInvalidationRequest AWS API Documentation
    #
    class CreateInvalidationRequest < Struct.new(
      :distribution_id,
      :invalidation_batch)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateInvalidationResult AWS API Documentation
    #
    class CreateInvalidationResult < Struct.new(
      :location,
      :invalidation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group_config
    #   A key group configuration.
    #   @return [Types::KeyGroupConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateKeyGroupRequest AWS API Documentation
    #
    class CreateKeyGroupRequest < Struct.new(
      :key_group_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group
    #   The key group that was just created.
    #   @return [Types::KeyGroup]
    #
    # @!attribute [rw] location
    #   The URL of the key group.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the key group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateKeyGroupResult AWS API Documentation
    #
    class CreateKeyGroupResult < Struct.new(
      :key_group,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id
    #   The ID of the distribution that you are enabling metrics for.
    #   @return [String]
    #
    # @!attribute [rw] monitoring_subscription
    #   A monitoring subscription. This structure contains information about
    #   whether additional CloudWatch metrics are enabled for a given
    #   CloudFront distribution.
    #   @return [Types::MonitoringSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateMonitoringSubscriptionRequest AWS API Documentation
    #
    class CreateMonitoringSubscriptionRequest < Struct.new(
      :distribution_id,
      :monitoring_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_subscription
    #   A monitoring subscription. This structure contains information about
    #   whether additional CloudWatch metrics are enabled for a given
    #   CloudFront distribution.
    #   @return [Types::MonitoringSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateMonitoringSubscriptionResult AWS API Documentation
    #
    class CreateMonitoringSubscriptionResult < Struct.new(
      :monitoring_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control_config
    #   Contains the origin access control.
    #   @return [Types::OriginAccessControlConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginAccessControlRequest AWS API Documentation
    #
    class CreateOriginAccessControlRequest < Struct.new(
      :origin_access_control_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control
    #   Contains an origin access control.
    #   @return [Types::OriginAccessControl]
    #
    # @!attribute [rw] location
    #   The URL of the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the origin access
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginAccessControlResult AWS API Documentation
    #
    class CreateOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy_config
    #   An origin request policy configuration.
    #   @return [Types::OriginRequestPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginRequestPolicyRequest AWS API Documentation
    #
    class CreateOriginRequestPolicyRequest < Struct.new(
      :origin_request_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy
    #   An origin request policy.
    #   @return [Types::OriginRequestPolicy]
    #
    # @!attribute [rw] location
    #   The fully qualified URI of the origin request policy just created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the origin request policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateOriginRequestPolicyResult AWS API Documentation
    #
    class CreateOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_config
    #   A CloudFront public key configuration.
    #   @return [Types::PublicKeyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreatePublicKeyRequest AWS API Documentation
    #
    class CreatePublicKeyRequest < Struct.new(
      :public_key_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   The public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] location
    #   The URL of the public key.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreatePublicKeyResult AWS API Documentation
    #
    class CreatePublicKeyResult < Struct.new(
      :public_key,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_points
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data.
    #   @return [Array<Types::EndPoint>]
    #
    # @!attribute [rw] fields
    #   A list of fields to include in each real-time log record.
    #
    #   For more information about fields, see [Real-time log configuration
    #   fields][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A unique name to identify this real-time log configuration.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   The sampling rate for this real-time log configuration. The sampling
    #   rate determines the percentage of viewer requests that are
    #   represented in the real-time log data. You must provide an integer
    #   between 1 and 100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateRealtimeLogConfigRequest AWS API Documentation
    #
    class CreateRealtimeLogConfigRequest < Struct.new(
      :end_points,
      :fields,
      :name,
      :sampling_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] realtime_log_config
    #   A real-time log configuration.
    #   @return [Types::RealtimeLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateRealtimeLogConfigResult AWS API Documentation
    #
    class CreateRealtimeLogConfigResult < Struct.new(
      :realtime_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy_config
    #   Contains metadata about the response headers policy, and a set of
    #   configurations that specify the HTTP headers.
    #   @return [Types::ResponseHeadersPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateResponseHeadersPolicyRequest AWS API Documentation
    #
    class CreateResponseHeadersPolicyRequest < Struct.new(
      :response_headers_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy
    #   Contains a response headers policy.
    #   @return [Types::ResponseHeadersPolicy]
    #
    # @!attribute [rw] location
    #   The URL of the response headers policy.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the response
    #   headers policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateResponseHeadersPolicyResult AWS API Documentation
    #
    class CreateResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new streaming distribution.
    #
    # @!attribute [rw] streaming_distribution_config
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistributionRequest AWS API Documentation
    #
    class CreateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config)
      SENSITIVE = []
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
    #   just created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the streaming distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistributionResult AWS API Documentation
    #
    class CreateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :location,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new streaming distribution with tags.
    #
    # @!attribute [rw] streaming_distribution_config_with_tags
    #   The streaming distribution's configuration information.
    #   @return [Types::StreamingDistributionConfigWithTags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistributionWithTagsRequest AWS API Documentation
    #
    class CreateStreamingDistributionWithTagsRequest < Struct.new(
      :streaming_distribution_config_with_tags)
      SENSITIVE = []
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
    #   just created.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The current version of the distribution created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CreateStreamingDistributionWithTagsResult AWS API Documentation
    #
    class CreateStreamingDistributionWithTagsResult < Struct.new(
      :streaming_distribution,
      :location,
      :etag)
      SENSITIVE = []
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
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
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
    #   a value for `ResponseCode`.
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
    #   value for `ResponsePagePath`.
    #   @return [String]
    #
    # @!attribute [rw] error_caching_min_ttl
    #   The minimum amount of time, in seconds, that you want CloudFront to
    #   cache the HTTP status code specified in `ErrorCode`. When this time
    #   period has elapsed, CloudFront queries your origin to see whether
    #   the problem that caused the error has been resolved and the
    #   requested object is now available.
    #
    #   For more information, see [Customizing Error Responses][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CustomErrorResponse AWS API Documentation
    #
    class CustomErrorResponse < Struct.new(
      :error_code,
      :response_page_path,
      :response_code,
      :error_caching_min_ttl)
      SENSITIVE = []
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
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CustomErrorResponses AWS API Documentation
    #
    class CustomErrorResponses < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains the list of Custom Headers for each
    # origin.
    #
    # @!attribute [rw] quantity
    #   The number of custom headers, if any, for this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   **Optional**: A list that contains one `OriginCustomHeader` element
    #   for each custom header that you want CloudFront to forward to the
    #   origin. If Quantity is `0`, omit `Items`.
    #   @return [Array<Types::OriginCustomHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CustomHeaders AWS API Documentation
    #
    class CustomHeaders < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom origin. A custom origin is any origin that is *not* an Amazon
    # S3 bucket, with one exception. An Amazon S3 bucket that is [configured
    # with static website hosting][1] *is* a custom origin.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html
    #
    # @!attribute [rw] http_port
    #   The HTTP port that CloudFront uses to connect to the origin. Specify
    #   the HTTP port that the origin listens on.
    #   @return [Integer]
    #
    # @!attribute [rw] https_port
    #   The HTTPS port that CloudFront uses to connect to the origin.
    #   Specify the HTTPS port that the origin listens on.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_protocol_policy
    #   Specifies the protocol (HTTP or HTTPS) that CloudFront uses to
    #   connect to the origin. Valid values are:
    #
    #   * `http-only` – CloudFront always uses HTTP to connect to the
    #     origin.
    #
    #   * `match-viewer` – CloudFront connects to the origin using the same
    #     protocol that the viewer used to connect to CloudFront.
    #
    #   * `https-only` – CloudFront always uses HTTPS to connect to the
    #     origin.
    #   @return [String]
    #
    # @!attribute [rw] origin_ssl_protocols
    #   Specifies the minimum SSL/TLS protocol that CloudFront uses when
    #   connecting to your origin over HTTPS. Valid values include `SSLv3`,
    #   `TLSv1`, `TLSv1.1`, and `TLSv1.2`.
    #
    #   For more information, see [Minimum Origin SSL Protocol][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols
    #   @return [Types::OriginSslProtocols]
    #
    # @!attribute [rw] origin_read_timeout
    #   Specifies how long, in seconds, CloudFront waits for a response from
    #   the origin. This is also known as the *origin response timeout*. The
    #   minimum timeout is 1 second, the maximum is 60 seconds, and the
    #   default (if you don't specify otherwise) is 30 seconds.
    #
    #   For more information, see [Origin Response Timeout][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout
    #   @return [Integer]
    #
    # @!attribute [rw] origin_keepalive_timeout
    #   Specifies how long, in seconds, CloudFront persists its connection
    #   to the origin. The minimum timeout is 1 second, the maximum is 60
    #   seconds, and the default (if you don't specify otherwise) is 5
    #   seconds.
    #
    #   For more information, see [Origin Keep-alive Timeout][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/CustomOriginConfig AWS API Documentation
    #
    class CustomOriginConfig < Struct.new(
      :http_port,
      :https_port,
      :origin_protocol_policy,
      :origin_ssl_protocols,
      :origin_read_timeout,
      :origin_keepalive_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes the default cache behavior if you don't
    # specify a `CacheBehavior` element or if request URLs don't match any
    # of the values of `PathPattern` in `CacheBehavior` elements. You must
    # create exactly one default cache behavior.
    #
    # @!attribute [rw] target_origin_id
    #   The value of `ID` for the origin that you want CloudFront to route
    #   requests to when they use the default cache behavior.
    #   @return [String]
    #
    # @!attribute [rw] trusted_signers
    #   We recommend using `TrustedKeyGroups` instead of `TrustedSigners`.
    #
    #   A list of Amazon Web Services account IDs whose public keys
    #   CloudFront can use to validate signed URLs or signed cookies.
    #
    #   When a cache behavior contains trusted signers, CloudFront requires
    #   signed URLs or signed cookies for all requests that match the cache
    #   behavior. The URLs or cookies must be signed with the private key of
    #   a CloudFront key pair in a trusted signer's Amazon Web Services
    #   account. The signed URL or cookie contains information about which
    #   public key CloudFront should use to verify the signature. For more
    #   information, see [Serving private content][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] trusted_key_groups
    #   A list of key groups that CloudFront can use to validate signed URLs
    #   or signed cookies.
    #
    #   When a cache behavior contains trusted key groups, CloudFront
    #   requires signed URLs or signed cookies for all requests that match
    #   the cache behavior. The URLs or cookies must be signed with a
    #   private key whose corresponding public key is in the key group. The
    #   signed URL or cookie contains information about which public key
    #   CloudFront should use to verify the signature. For more information,
    #   see [Serving private content][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedKeyGroups]
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in the origin
    #   specified by `TargetOriginId` when a request matches the path
    #   pattern in `PathPattern`. You can specify the following options:
    #
    #   * `allow-all`: Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https`: If a viewer submits an HTTP request,
    #     CloudFront returns an HTTP status code of 301 (Moved Permanently)
    #     to the viewer along with the HTTPS URL. The viewer then resubmits
    #     the request using the new URL.
    #
    #   * `https-only`: If a viewer sends an HTTP request, CloudFront
    #     returns an HTTP status code of 403 (Forbidden).
    #
    #   For more information about requiring the HTTPS protocol, see
    #   [Requiring HTTPS Between Viewers and CloudFront][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   <note markdown="1"> The only way to guarantee that viewers retrieve an object that was
    #   fetched from the origin using HTTPS is never to use any other
    #   protocol to fetch the object. If you have recently changed from HTTP
    #   to HTTPS, we recommend that you clear your objects' cache because
    #   cached objects are protocol agnostic. That means that an edge
    #   location will return an object from the cache regardless of whether
    #   the current request protocol matches the protocol used previously.
    #   For more information, see [Managing Cache Expiration][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [String]
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
    # @!attribute [rw] compress
    #   Whether you want CloudFront to automatically compress certain files
    #   for this cache behavior. If so, specify `true`; if not, specify
    #   `false`. For more information, see [Serving Compressed Files][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_function_associations
    #   A complex type that contains zero or more Lambda@Edge function
    #   associations for a cache behavior.
    #   @return [Types::LambdaFunctionAssociations]
    #
    # @!attribute [rw] function_associations
    #   A list of CloudFront functions that are associated with this cache
    #   behavior. CloudFront functions must be published to the `LIVE` stage
    #   to associate them with a cache behavior.
    #   @return [Types::FunctionAssociations]
    #
    # @!attribute [rw] field_level_encryption_id
    #   The value of `ID` for the field-level encryption configuration that
    #   you want CloudFront to use for encrypting specific fields of data
    #   for the default cache behavior.
    #   @return [String]
    #
    # @!attribute [rw] realtime_log_config_arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration
    #   that is attached to this cache behavior. For more information, see
    #   [Real-time logs][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html
    #   @return [String]
    #
    # @!attribute [rw] cache_policy_id
    #   The unique identifier of the cache policy that is attached to the
    #   default cache behavior. For more information, see [Creating cache
    #   policies][1] or [Using the managed cache policies][2] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   A `DefaultCacheBehavior` must include either a `CachePolicyId` or
    #   `ForwardedValues`. We recommend that you use a `CachePolicyId`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   @return [String]
    #
    # @!attribute [rw] origin_request_policy_id
    #   The unique identifier of the origin request policy that is attached
    #   to the default cache behavior. For more information, see [Creating
    #   origin request policies][1] or [Using the managed origin request
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html
    #   @return [String]
    #
    # @!attribute [rw] response_headers_policy_id
    #   The identifier for a response headers policy.
    #   @return [String]
    #
    # @!attribute [rw] forwarded_values
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field. For more
    #   information, see [Working with policies][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   If you want to include values in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][2] or [Using the
    #   managed cache policies][3] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #   If you want to send values to the origin but not include them in the
    #   cache key, use an origin request policy. For more information, see
    #   [Creating origin request policies][4] or [Using the managed origin
    #   request policies][5] in the *Amazon CloudFront Developer Guide*.
    #
    #   A `DefaultCacheBehavior` must include either a `CachePolicyId` or
    #   `ForwardedValues`. We recommend that you use a `CachePolicyId`.
    #
    #   A complex type that specifies how CloudFront handles query strings,
    #   cookies, and HTTP headers.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [4]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [5]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html
    #   @return [Types::ForwardedValues]
    #
    # @!attribute [rw] min_ttl
    #   This field is deprecated. We recommend that you use the `MinTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The minimum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. For more
    #   information, see [Managing How Long Content Stays in an Edge Cache
    #   (Expiration)][3] in the *Amazon CloudFront Developer Guide*.
    #
    #   You must specify `0` for `MinTTL` if you configure CloudFront to
    #   forward all headers to your origin (under `Headers`, if you specify
    #   `1` for `Quantity` and `*` for `Name`).
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] default_ttl
    #   This field is deprecated. We recommend that you use the `DefaultTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The default amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin does not add HTTP
    #   headers such as `Cache-Control max-age`, `Cache-Control s-maxage`,
    #   and `Expires` to objects. For more information, see [Managing How
    #   Long Content Stays in an Edge Cache (Expiration)][3] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_ttl
    #   This field is deprecated. We recommend that you use the `MaxTTL`
    #   field in a cache policy instead of this field. For more information,
    #   see [Creating cache policies][1] or [Using the managed cache
    #   policies][2] in the *Amazon CloudFront Developer Guide*.
    #
    #   The maximum amount of time that you want objects to stay in
    #   CloudFront caches before CloudFront forwards another request to your
    #   origin to determine whether the object has been updated. The value
    #   that you specify applies only when your origin adds HTTP headers
    #   such as `Cache-Control max-age`, `Cache-Control s-maxage`, and
    #   `Expires` to objects. For more information, see [Managing How Long
    #   Content Stays in an Edge Cache (Expiration)][3] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DefaultCacheBehavior AWS API Documentation
    #
    class DefaultCacheBehavior < Struct.new(
      :target_origin_id,
      :trusted_signers,
      :trusted_key_groups,
      :viewer_protocol_policy,
      :allowed_methods,
      :smooth_streaming,
      :compress,
      :lambda_function_associations,
      :function_associations,
      :field_level_encryption_id,
      :realtime_log_config_arn,
      :cache_policy_id,
      :origin_request_policy_id,
      :response_headers_policy_id,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the cache policy that you are deleting. To
    #   get the identifier, you can use `ListCachePolicies`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the cache policy that you are deleting. The version
    #   is the cache policy's `ETag` value, which you can get using
    #   `ListCachePolicies`, `GetCachePolicy`, or `GetCachePolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteCachePolicyRequest AWS API Documentation
    #
    class DeleteCachePolicyRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes a origin access identity.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class DeleteCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the continuous deployment policy that you are
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the continuous deployment
    #   policy that you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteContinuousDeploymentPolicyRequest AWS API Documentation
    #
    class DeleteContinuousDeploymentPolicyRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
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
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteDistributionRequest AWS API Documentation
    #
    class DeleteDistributionRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the configuration you want to delete from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   configuration identity to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class DeleteFieldLevelEncryptionConfigRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Request the ID of the profile you want to delete from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   profile to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class DeleteFieldLevelEncryptionProfileRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function that you are deleting.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the function that you are
    #   deleting, which you can get using `DescribeFunction`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :name,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the key group that you are deleting. To get the
    #   identifier, use `ListKeyGroups`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the key group that you are deleting. The version is
    #   the key group's `ETag` value. To get the `ETag`, use `GetKeyGroup`
    #   or `GetKeyGroupConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteKeyGroupRequest AWS API Documentation
    #
    class DeleteKeyGroupRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id
    #   The ID of the distribution that you are disabling metrics for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteMonitoringSubscriptionRequest AWS API Documentation
    #
    class DeleteMonitoringSubscriptionRequest < Struct.new(
      :distribution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteMonitoringSubscriptionResult AWS API Documentation
    #
    class DeleteMonitoringSubscriptionResult < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The unique identifier of the origin access control that you are
    #   deleting.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the origin access control that
    #   you are deleting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteOriginAccessControlRequest AWS API Documentation
    #
    class DeleteOriginAccessControlRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the origin request policy that you are
    #   deleting. To get the identifier, you can use
    #   `ListOriginRequestPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the origin request policy that you are deleting. The
    #   version is the origin request policy's `ETag` value, which you can
    #   get using `ListOriginRequestPolicies`, `GetOriginRequestPolicy`, or
    #   `GetOriginRequestPolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteOriginRequestPolicyRequest AWS API Documentation
    #
    class DeleteOriginRequestPolicyRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the public key you want to remove from CloudFront.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key identity to delete. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeletePublicKeyRequest AWS API Documentation
    #
    class DeletePublicKeyRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the real-time log configuration to delete.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteRealtimeLogConfigRequest AWS API Documentation
    #
    class DeleteRealtimeLogConfigRequest < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier for the response headers policy that you are
    #   deleting.
    #
    #   To get the identifier, you can use `ListResponseHeadersPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the response headers policy that you are deleting.
    #
    #   The version is the response headers policy's `ETag` value, which
    #   you can get using `ListResponseHeadersPolicies`,
    #   `GetResponseHeadersPolicy`, or `GetResponseHeadersPolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteResponseHeadersPolicyRequest AWS API Documentation
    #
    class DeleteResponseHeadersPolicyRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to delete a streaming distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DeleteStreamingDistributionRequest AWS API Documentation
    #
    class DeleteStreamingDistributionRequest < Struct.new(
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function that you are getting information about.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The function's stage, either `DEVELOPMENT` or `LIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DescribeFunctionRequest AWS API Documentation
    #
    class DescribeFunctionRequest < Struct.new(
      :name,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_summary
    #   Contains configuration information and metadata about a CloudFront
    #   function.
    #   @return [Types::FunctionSummary]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the CloudFront
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DescribeFunctionResult AWS API Documentation
    #
    class DescribeFunctionResult < Struct.new(
      :function_summary,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # A distribution tells CloudFront where you want content to be delivered
    # from, and the details about how to track and manage content delivery.
    #
    # @!attribute [rw] id
    #   The distribution's identifier. For example: `E1U5RQF7T870K0`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The distribution's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The distribution's status. When the status is `Deployed`, the
    #   distribution's information is fully propagated to all CloudFront
    #   edge locations.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the distribution was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] in_progress_invalidation_batches
    #   The number of invalidation batches currently in progress.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The distribution's CloudFront domain name. For example:
    #   `d111111abcdef8.cloudfront.net`.
    #   @return [String]
    #
    # @!attribute [rw] active_trusted_signers
    #   We recommend using `TrustedKeyGroups` instead of `TrustedSigners`.
    #
    #   This field contains a list of Amazon Web Services account IDs and
    #   the active CloudFront key pairs in each account that CloudFront can
    #   use to verify the signatures of signed URLs or signed cookies.
    #   @return [Types::ActiveTrustedSigners]
    #
    # @!attribute [rw] active_trusted_key_groups
    #   This field contains a list of key groups and the public keys in each
    #   key group that CloudFront can use to verify the signatures of signed
    #   URLs or signed cookies.
    #   @return [Types::ActiveTrustedKeyGroups]
    #
    # @!attribute [rw] distribution_config
    #   The distribution's configuration.
    #   @return [Types::DistributionConfig]
    #
    # @!attribute [rw] alias_icp_recordals
    #   Amazon Web Services services in China customers must file for an
    #   Internet Content Provider (ICP) recordal if they want to serve
    #   content publicly on an alternate domain name, also known as a CNAME,
    #   that they've added to CloudFront. AliasICPRecordal provides the ICP
    #   recordal status for CNAMEs associated with distributions.
    #
    #   For more information about ICP recordals, see [ Signup, Accounts,
    #   and Credentials][1] in *Getting Started with Amazon Web Services
    #   services in China*.
    #
    #
    #
    #   [1]: https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html
    #   @return [Array<Types::AliasICPRecordal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Distribution AWS API Documentation
    #
    class Distribution < Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :in_progress_invalidation_batches,
      :domain_name,
      :active_trusted_signers,
      :active_trusted_key_groups,
      :distribution_config,
      :alias_icp_recordals)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller reference you attempted to create the distribution with is
    # associated with another distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionAlreadyExists AWS API Documentation
    #
    class DistributionAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A distribution configuration.
    #
    # @!attribute [rw] caller_reference
    #   A unique value (for example, a date-time stamp) that ensures that
    #   the request can't be replayed.
    #
    #   If the value of `CallerReference` is new (regardless of the content
    #   of the `DistributionConfig` object), CloudFront creates a new
    #   distribution.
    #
    #   If `CallerReference` is a value that you already sent in a previous
    #   request to create a distribution, CloudFront returns a
    #   `DistributionAlreadyExists` error.
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
    #   distribution (`https://www.example.com`) instead of an object in
    #   your distribution
    #   (`https://www.example.com/product-description.html`). Specifying a
    #   default root object avoids exposing the contents of your
    #   distribution.
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html
    #   @return [String]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::Origins]
    #
    # @!attribute [rw] origin_groups
    #   A complex type that contains information about origin groups for
    #   this distribution.
    #   @return [Types::OriginGroups]
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html
    #   @return [Types::CustomErrorResponses]
    #
    # @!attribute [rw] comment
    #   A comment to describe the distribution. The comment cannot be longer
    #   than 128 characters.
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html
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
    #   CloudFront regions, see [Amazon CloudFront Pricing][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html
    #   [2]: http://aws.amazon.com/cloudfront/pricing/
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   From this field, you can enable or disable the selected
    #   distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] viewer_certificate
    #   A complex type that determines the distribution's SSL/TLS
    #   configuration for communicating with viewers.
    #   @return [Types::ViewerCertificate]
    #
    # @!attribute [rw] restrictions
    #   A complex type that identifies ways in which you want to restrict
    #   distribution of your content.
    #   @return [Types::Restrictions]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier that specifies the WAF web ACL, if any, to
    #   associate with this distribution. To specify a web ACL created using
    #   the latest version of WAF, use the ACL ARN, for example
    #   `arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a`.
    #   To specify a web ACL created using WAF Classic, use the ACL ID, for
    #   example `473e64fd-f30b-4765-81a0-62ad96dd167a`.
    #
    #   WAF is a web application firewall that lets you monitor the HTTP and
    #   HTTPS requests that are forwarded to CloudFront, and lets you
    #   control access to your content. Based on conditions that you
    #   specify, such as the IP addresses that requests originate from or
    #   the values of query strings, CloudFront responds to requests either
    #   with the requested content or with an HTTP 403 status code
    #   (Forbidden). You can also configure CloudFront to return a custom
    #   error page when a request is blocked. For more information about
    #   WAF, see the [WAF Developer Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html
    #   @return [String]
    #
    # @!attribute [rw] http_version
    #   (Optional) Specify the maximum HTTP version(s) that you want viewers
    #   to use to communicate with CloudFront. The default value for new web
    #   distributions is `http2`. Viewers that don't support HTTP/2
    #   automatically use an earlier HTTP version.
    #
    #   For viewers and CloudFront to use HTTP/2, viewers must support
    #   TLSv1.2 or later, and must support Server Name Indication (SNI).
    #
    #   For viewers and CloudFront to use HTTP/3, viewers must support
    #   TLSv1.3 and Server Name Indication (SNI). CloudFront supports HTTP/3
    #   connection migration to allow the viewer to switch networks without
    #   losing connection. For more information about connection migration,
    #   see [Connection Migration][1] at RFC 9000. For more information
    #   about supported TLSv1.3 ciphers, see [Supported protocols and
    #   ciphers between viewers and CloudFront][2].
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc9000.html#name-connection-migration
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html
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
    #   If you're using an Route 53 Amazon Web Services Integration alias
    #   resource record set to route traffic to your CloudFront
    #   distribution, you need to create a second alias resource record set
    #   when both of the following are true:
    #
    #   * You enable IPv6 for the distribution
    #
    #   * You're using alternate domain names in the URLs for your objects
    #
    #   For more information, see [Routing Traffic to an Amazon CloudFront
    #   Web Distribution by Using Your Domain Name][2] in the *Route 53
    #   Amazon Web Services Integration Developer Guide*.
    #
    #   If you created a CNAME resource record set, either with Route 53
    #   Amazon Web Services Integration or with another DNS service, you
    #   don't need to make any changes. A CNAME record will route traffic
    #   to your distribution regardless of the IP address format of the
    #   viewer request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html
    #   [2]: https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html
    #   @return [Boolean]
    #
    # @!attribute [rw] continuous_deployment_policy_id
    #   The identifier of a continuous deployment policy. For more
    #   information, see `CreateContinuousDeploymentPolicy`.
    #   @return [String]
    #
    # @!attribute [rw] staging
    #   A Boolean that indicates whether this is a staging distribution.
    #   When this value is `true`, this is a staging distribution. When this
    #   value is `false`, this is not a staging distribution.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionConfig AWS API Documentation
    #
    class DistributionConfig < Struct.new(
      :caller_reference,
      :aliases,
      :default_root_object,
      :origins,
      :origin_groups,
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
      :is_ipv6_enabled,
      :continuous_deployment_policy_id,
      :staging)
      SENSITIVE = [:comment]
      include Aws::Structure
    end

    # A distribution Configuration and a list of tags to be associated with
    # the distribution.
    #
    # @!attribute [rw] distribution_config
    #   A distribution configuration.
    #   @return [Types::DistributionConfig]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionConfigWithTags AWS API Documentation
    #
    class DistributionConfigWithTags < Struct.new(
      :distribution_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of distribution IDs.
    #
    # @!attribute [rw] marker
    #   The value provided in the `Marker` request field.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   Contains the value that you should use in the `Marker` field of a
    #   subsequent request to continue listing distribution IDs where you
    #   left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distribution IDs requested.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether more distribution IDs remain to be
    #   listed. If your results were truncated, you can make a subsequent
    #   request using the `Marker` request field to retrieve more
    #   distribution IDs in the list.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The total number of distribution IDs returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the distribution IDs in the list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionIdList AWS API Documentation
    #
    class DistributionIdList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
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
    #   The number of distributions that were created by the current Amazon
    #   Web Services account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `DistributionSummary` element for
    #   each distribution that was created by the current Amazon Web
    #   Services account.
    #   @return [Array<Types::DistributionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionList AWS API Documentation
    #
    class DistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified CloudFront distribution is not disabled. You must
    # disable the distribution before you can delete it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionNotDisabled AWS API Documentation
    #
    class DistributionNotDisabled < Struct.new(
      :message)
      SENSITIVE = []
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
    #   where `123456789012` is your Amazon Web Services account ID.
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
    # @!attribute [rw] origin_groups
    #   A complex type that contains information about origin groups for
    #   this distribution.
    #   @return [Types::OriginGroups]
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
    #   A complex type that contains information about price class for this
    #   streaming distribution.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the distribution is enabled to accept user requests for
    #   content.
    #   @return [Boolean]
    #
    # @!attribute [rw] viewer_certificate
    #   A complex type that determines the distribution's SSL/TLS
    #   configuration for communicating with viewers.
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
    # @!attribute [rw] alias_icp_recordals
    #   Amazon Web Services services in China customers must file for an
    #   Internet Content Provider (ICP) recordal if they want to serve
    #   content publicly on an alternate domain name, also known as a CNAME,
    #   that they've added to CloudFront. AliasICPRecordal provides the ICP
    #   recordal status for CNAMEs associated with distributions.
    #
    #   For more information about ICP recordals, see [ Signup, Accounts,
    #   and Credentials][1] in *Getting Started with Amazon Web Services
    #   services in China*.
    #
    #
    #
    #   [1]: https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html
    #   @return [Array<Types::AliasICPRecordal>]
    #
    # @!attribute [rw] staging
    #   Whether the primary distribution has a staging distribution enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/DistributionSummary AWS API Documentation
    #
    class DistributionSummary < Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :aliases,
      :origins,
      :origin_groups,
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
      :is_ipv6_enabled,
      :alias_icp_recordals,
      :staging)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complex data type for field-level encryption profiles that includes
    # all of the encryption entities.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/EncryptionEntities AWS API Documentation
    #
    class EncryptionEntities < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complex data type for field-level encryption profiles that includes
    # the encryption key and field pattern specifications.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/EncryptionEntity AWS API Documentation
    #
    class EncryptionEntity < Struct.new(
      :public_key_id,
      :provider_id,
      :field_patterns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon Kinesis data stream where you
    # are sending real-time log data in a real-time log configuration.
    #
    # @!attribute [rw] stream_type
    #   The type of data stream where you are sending real-time log data.
    #   The only valid value is `Kinesis`.
    #   @return [String]
    #
    # @!attribute [rw] kinesis_stream_config
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data.
    #   @return [Types::KinesisStreamConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/EndPoint AWS API Documentation
    #
    class EndPoint < Struct.new(
      :stream_type,
      :kinesis_stream_config)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryption AWS API Documentation
    #
    class FieldLevelEncryption < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type that includes the profile configurations specified
    # for field-level encryption.
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures the request can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment about the configuration. The comment cannot be
    #   longer than 128 characters.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionConfig AWS API Documentation
    #
    class FieldLevelEncryptionConfig < Struct.new(
      :caller_reference,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration for field-level encryption already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionConfigAlreadyExists AWS API Documentation
    #
    class FieldLevelEncryptionConfigAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration for field-level encryption is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionConfigInUse AWS API Documentation
    #
    class FieldLevelEncryptionConfigInUse < Struct.new(
      :message)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionList AWS API Documentation
    #
    class FieldLevelEncryptionList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfile AWS API Documentation
    #
    class FieldLevelEncryptionProfile < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_profile_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified profile for field-level encryption already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileAlreadyExists AWS API Documentation
    #
    class FieldLevelEncryptionProfileAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type of profiles for the field-level encryption.
    #
    # @!attribute [rw] name
    #   Profile name for the field-level encryption profile.
    #   @return [String]
    #
    # @!attribute [rw] caller_reference
    #   A unique number that ensures that the request can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   An optional comment for the field-level encryption profile. The
    #   comment cannot be longer than 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] encryption_entities
    #   A complex data type of encryption entities for the field-level
    #   encryption profile that include the public key ID, provider, and
    #   field patterns for specifying which fields to encrypt with this key.
    #   @return [Types::EncryptionEntities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileConfig AWS API Documentation
    #
    class FieldLevelEncryptionProfileConfig < Struct.new(
      :name,
      :caller_reference,
      :comment,
      :encryption_entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified profile for field-level encryption is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileInUse AWS API Documentation
    #
    class FieldLevelEncryptionProfileInUse < Struct.new(
      :message)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileList AWS API Documentation
    #
    class FieldLevelEncryptionProfileList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum size of a profile for field-level encryption was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileSizeExceeded AWS API Documentation
    #
    class FieldLevelEncryptionProfileSizeExceeded < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The comment cannot be longer than 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionProfileSummary AWS API Documentation
    #
    class FieldLevelEncryptionProfileSummary < Struct.new(
      :id,
      :last_modified_time,
      :name,
      :encryption_entities,
      :comment)
      SENSITIVE = []
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
    #   An optional comment about the field-level encryption item. The
    #   comment cannot be longer than 128 characters.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldLevelEncryptionSummary AWS API Documentation
    #
    class FieldLevelEncryptionSummary < Struct.new(
      :id,
      :last_modified_time,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type that includes the field patterns to match for
    # field-level encryption.
    #
    # @!attribute [rw] quantity
    #   The number of field-level encryption field patterns.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   An array of the field-level encryption field patterns.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FieldPatterns AWS API Documentation
    #
    class FieldPatterns < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # This field is deprecated. We recommend that you use a cache policy or
    # an origin request policy instead of this field.
    #
    # If you want to include values in the cache key, use a cache policy.
    # For more information, see [Creating cache policies][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    # If you want to send values to the origin but not include them in the
    # cache key, use an origin request policy. For more information, see
    # [Creating origin request policies][2] in the *Amazon CloudFront
    # Developer Guide*.
    #
    # A complex type that specifies how CloudFront handles query strings,
    # cookies, and HTTP headers.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #
    # @!attribute [rw] query_string
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include query strings in the cache key, use a cache
    #   policy. For more information, see [Creating cache policies][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send query strings to the origin but not include them
    #   in the cache key, use an origin request policy. For more
    #   information, see [Creating origin request policies][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
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
    #   Query String Parameters][3] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html
    #   @return [Boolean]
    #
    # @!attribute [rw] cookies
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include cookies in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send cookies to the origin but not include them in
    #   the cache key, use an origin request policy. For more information,
    #   see [Creating origin request policies][2] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #   A complex type that specifies whether you want CloudFront to forward
    #   cookies to the origin and, if so, which ones. For more information
    #   about forwarding cookies to the origin, see [How CloudFront
    #   Forwards, Caches, and Logs Cookies][3] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html
    #   @return [Types::CookiePreference]
    #
    # @!attribute [rw] headers
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include headers in the cache key, use a cache policy.
    #   For more information, see [Creating cache policies][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send headers to the origin but not include them in
    #   the cache key, use an origin request policy. For more information,
    #   see [Creating origin request policies][2] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #   A complex type that specifies the `Headers`, if any, that you want
    #   CloudFront to forward to the origin for this cache behavior
    #   (whitelisted headers). For the headers that you specify, CloudFront
    #   also caches separate versions of a specified object that is based on
    #   the header values in viewer requests.
    #
    #   For more information, see [ Caching Content Based on Request
    #   Headers][3] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   [3]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html
    #   @return [Types::Headers]
    #
    # @!attribute [rw] query_string_cache_keys
    #   This field is deprecated. We recommend that you use a cache policy
    #   or an origin request policy instead of this field.
    #
    #   If you want to include query strings in the cache key, use a cache
    #   policy. For more information, see [Creating cache policies][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #   If you want to send query strings to the origin but not include them
    #   in the cache key, use an origin request policy. For more
    #   information, see [Creating origin request policies][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   A complex type that contains information about the query string
    #   parameters that you want CloudFront to use for caching for this
    #   cache behavior.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy
    #   @return [Types::QueryStringCacheKeys]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ForwardedValues AWS API Documentation
    #
    class ForwardedValues < Struct.new(
      :query_string,
      :cookies,
      :headers,
      :query_string_cache_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # A function with the same name already exists in this Amazon Web
    # Services account. To create a function, you must provide a unique
    # name. To update an existing function, use `UpdateFunction`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionAlreadyExists AWS API Documentation
    #
    class FunctionAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront function that is associated with a cache behavior in a
    # CloudFront distribution.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the function.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The event type of the function, either `viewer-request` or
    #   `viewer-response`. You cannot use origin-facing event types
    #   (`origin-request` and `origin-response`) with a CloudFront function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionAssociation AWS API Documentation
    #
    class FunctionAssociation < Struct.new(
      :function_arn,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CloudFront functions that are associated with a cache
    # behavior in a CloudFront distribution. CloudFront functions must be
    # published to the `LIVE` stage to associate them with a cache behavior.
    #
    # @!attribute [rw] quantity
    #   The number of CloudFront functions in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The CloudFront functions that are associated with a cache behavior
    #   in a CloudFront distribution. CloudFront functions must be published
    #   to the `LIVE` stage to associate them with a cache behavior.
    #   @return [Array<Types::FunctionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionAssociations AWS API Documentation
    #
    class FunctionAssociations < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about a CloudFront function.
    #
    # @!attribute [rw] comment
    #   A comment to describe the function.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The function's runtime environment. The only valid value is
    #   `cloudfront-js-1.0`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionConfig AWS API Documentation
    #
    class FunctionConfig < Struct.new(
      :comment,
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the function because it's attached to one or more cache
    # behaviors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionInUse AWS API Documentation
    #
    class FunctionInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CloudFront functions.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing functions
    #   where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of functions requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of functions returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the functions in the list.
    #   @return [Array<Types::FunctionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionList AWS API Documentation
    #
    class FunctionList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a CloudFront function.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the function. The ARN uniquely
    #   identifies the function.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The stage that the function is in, either `DEVELOPMENT` or `LIVE`.
    #
    #   When a function is in the `DEVELOPMENT` stage, you can test the
    #   function with `TestFunction`, and update it with `UpdateFunction`.
    #
    #   When a function is in the `LIVE` stage, you can attach the function
    #   to a distribution's cache behavior, using the function's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time when the function was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the function was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionMetadata AWS API Documentation
    #
    class FunctionMetadata < Struct.new(
      :function_arn,
      :stage,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function is too large. For more information, see [Quotas][1]
    # (formerly known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionSizeLimitExceeded AWS API Documentation
    #
    class FunctionSizeLimitExceeded < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information and metadata about a CloudFront
    # function.
    #
    # @!attribute [rw] name
    #   The name of the CloudFront function.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the CloudFront function.
    #   @return [String]
    #
    # @!attribute [rw] function_config
    #   Contains configuration information about a CloudFront function.
    #   @return [Types::FunctionConfig]
    #
    # @!attribute [rw] function_metadata
    #   Contains metadata about a CloudFront function.
    #   @return [Types::FunctionMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/FunctionSummary AWS API Documentation
    #
    class FunctionSummary < Struct.new(
      :name,
      :status,
      :function_config,
      :function_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that controls the countries in which your content is
    # distributed. CloudFront determines the location of your users using
    # `MaxMind` GeoIP databases.
    #
    # @!attribute [rw] restriction_type
    #   The method that you want to use to restrict distribution of your
    #   content by country:
    #
    #   * `none`: No geo restriction is enabled, meaning access to content
    #     is not restricted by client geo location.
    #
    #   * `blacklist`: The `Location` elements specify the countries in
    #     which you don't want CloudFront to distribute your content.
    #
    #   * `whitelist`: The `Location` elements specify the countries in
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GeoRestriction AWS API Documentation
    #
    class GeoRestriction < Struct.new(
      :restriction_type,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the cache policy. If the cache policy is
    #   attached to a distribution's cache behavior, you can get the
    #   policy's identifier using `ListDistributions` or `GetDistribution`.
    #   If the cache policy is not attached to a cache behavior, you can get
    #   the identifier using `ListCachePolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicyConfigRequest AWS API Documentation
    #
    class GetCachePolicyConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy_config
    #   The cache policy configuration.
    #   @return [Types::CachePolicyConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the cache policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicyConfigResult AWS API Documentation
    #
    class GetCachePolicyConfigResult < Struct.new(
      :cache_policy_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the cache policy. If the cache policy is
    #   attached to a distribution's cache behavior, you can get the
    #   policy's identifier using `ListDistributions` or `GetDistribution`.
    #   If the cache policy is not attached to a cache behavior, you can get
    #   the identifier using `ListCachePolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicyRequest AWS API Documentation
    #
    class GetCachePolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy
    #   The cache policy.
    #   @return [Types::CachePolicy]
    #
    # @!attribute [rw] etag
    #   The current version of the cache policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCachePolicyResult AWS API Documentation
    #
    class GetCachePolicyResult < Struct.new(
      :cache_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The origin access identity's configuration information. For more
    # information, see [CloudFrontOriginAccessIdentityConfig][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html
    #
    # @!attribute [rw] id
    #   The identity's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentityConfigRequest AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentityConfigResult AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityConfigResult < Struct.new(
      :cloud_front_origin_access_identity_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get an origin access identity's information.
    #
    # @!attribute [rw] id
    #   The identity's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class GetCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the continuous deployment policy whose
    #   configuration you are getting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicyConfigRequest AWS API Documentation
    #
    class GetContinuousDeploymentPolicyConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy_config
    #   Contains the configuration for a continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the continuous
    #   deployment policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicyConfigResult AWS API Documentation
    #
    class GetContinuousDeploymentPolicyConfigResult < Struct.new(
      :continuous_deployment_policy_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the continuous deployment policy that you are
    #   getting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicyRequest AWS API Documentation
    #
    class GetContinuousDeploymentPolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy
    #   A continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicy]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the continuous
    #   deployment policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetContinuousDeploymentPolicyResult AWS API Documentation
    #
    class GetContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get a distribution configuration.
    #
    # @!attribute [rw] id
    #   The distribution's ID. If the ID is empty, an empty distribution
    #   configuration is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistributionConfigRequest AWS API Documentation
    #
    class GetDistributionConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistributionConfigResult AWS API Documentation
    #
    class GetDistributionConfigResult < Struct.new(
      :distribution_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get a distribution's information.
    #
    # @!attribute [rw] id
    #   The distribution's ID. If the ID is empty, an empty distribution
    #   configuration is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistributionRequest AWS API Documentation
    #
    class GetDistributionRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetDistributionResult AWS API Documentation
    #
    class GetDistributionResult < Struct.new(
      :distribution,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class GetFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Get the ID for the field-level encryption profile configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfileConfigRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfileConfigResult AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileConfigResult < Struct.new(
      :field_level_encryption_profile_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Get the ID for the field-level encryption profile information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class GetFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Request the ID for the field-level encryption configuration
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionRequest AWS API Documentation
    #
    class GetFieldLevelEncryptionRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFieldLevelEncryptionResult AWS API Documentation
    #
    class GetFieldLevelEncryptionResult < Struct.new(
      :field_level_encryption,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function whose code you are getting.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The function's stage, either `DEVELOPMENT` or `LIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :name,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_code
    #   The function code of a CloudFront function.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the CloudFront
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type (media type) of the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetFunctionResult AWS API Documentation
    #
    class GetFunctionResult < Struct.new(
      :function_code,
      :etag,
      :content_type)
      SENSITIVE = [:function_code]
      include Aws::Structure
    end

    # The request to get an invalidation's information.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetInvalidationRequest AWS API Documentation
    #
    class GetInvalidationRequest < Struct.new(
      :distribution_id,
      :id)
      SENSITIVE = []
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html
    #   @return [Types::Invalidation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetInvalidationResult AWS API Documentation
    #
    class GetInvalidationResult < Struct.new(
      :invalidation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the key group whose configuration you are getting.
    #   To get the identifier, use `ListKeyGroups`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroupConfigRequest AWS API Documentation
    #
    class GetKeyGroupConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group_config
    #   The key group configuration.
    #   @return [Types::KeyGroupConfig]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the key group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroupConfigResult AWS API Documentation
    #
    class GetKeyGroupConfigResult < Struct.new(
      :key_group_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the key group that you are getting. To get the
    #   identifier, use `ListKeyGroups`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroupRequest AWS API Documentation
    #
    class GetKeyGroupRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group
    #   The key group.
    #   @return [Types::KeyGroup]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the key group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetKeyGroupResult AWS API Documentation
    #
    class GetKeyGroupResult < Struct.new(
      :key_group,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id
    #   The ID of the distribution that you are getting metrics information
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetMonitoringSubscriptionRequest AWS API Documentation
    #
    class GetMonitoringSubscriptionRequest < Struct.new(
      :distribution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] monitoring_subscription
    #   A monitoring subscription. This structure contains information about
    #   whether additional CloudWatch metrics are enabled for a given
    #   CloudFront distribution.
    #   @return [Types::MonitoringSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetMonitoringSubscriptionResult AWS API Documentation
    #
    class GetMonitoringSubscriptionResult < Struct.new(
      :monitoring_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the origin access control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControlConfigRequest AWS API Documentation
    #
    class GetOriginAccessControlConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control_config
    #   Contains an origin access control configuration.
    #   @return [Types::OriginAccessControlConfig]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the origin access
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControlConfigResult AWS API Documentation
    #
    class GetOriginAccessControlConfigResult < Struct.new(
      :origin_access_control_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the origin access control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControlRequest AWS API Documentation
    #
    class GetOriginAccessControlRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control
    #   Contains an origin access control, including its unique identifier.
    #   @return [Types::OriginAccessControl]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the origin access
    #   control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginAccessControlResult AWS API Documentation
    #
    class GetOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the origin request policy. If the origin
    #   request policy is attached to a distribution's cache behavior, you
    #   can get the policy's identifier using `ListDistributions` or
    #   `GetDistribution`. If the origin request policy is not attached to a
    #   cache behavior, you can get the identifier using
    #   `ListOriginRequestPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicyConfigRequest AWS API Documentation
    #
    class GetOriginRequestPolicyConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy_config
    #   The origin request policy configuration.
    #   @return [Types::OriginRequestPolicyConfig]
    #
    # @!attribute [rw] etag
    #   The current version of the origin request policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicyConfigResult AWS API Documentation
    #
    class GetOriginRequestPolicyConfigResult < Struct.new(
      :origin_request_policy_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier for the origin request policy. If the origin
    #   request policy is attached to a distribution's cache behavior, you
    #   can get the policy's identifier using `ListDistributions` or
    #   `GetDistribution`. If the origin request policy is not attached to a
    #   cache behavior, you can get the identifier using
    #   `ListOriginRequestPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicyRequest AWS API Documentation
    #
    class GetOriginRequestPolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy
    #   The origin request policy.
    #   @return [Types::OriginRequestPolicy]
    #
    # @!attribute [rw] etag
    #   The current version of the origin request policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetOriginRequestPolicyResult AWS API Documentation
    #
    class GetOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the public key whose configuration you are
    #   getting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKeyConfigRequest AWS API Documentation
    #
    class GetPublicKeyConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_config
    #   A public key configuration.
    #   @return [Types::PublicKeyConfig]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the public key configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKeyConfigResult AWS API Documentation
    #
    class GetPublicKeyConfigResult < Struct.new(
      :public_key_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the public key you are getting.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKeyRequest AWS API Documentation
    #
    class GetPublicKeyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   The public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetPublicKeyResult AWS API Documentation
    #
    class GetPublicKeyResult < Struct.new(
      :public_key,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the real-time log configuration to get.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration to
    #   get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetRealtimeLogConfigRequest AWS API Documentation
    #
    class GetRealtimeLogConfigRequest < Struct.new(
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] realtime_log_config
    #   A real-time log configuration.
    #   @return [Types::RealtimeLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetRealtimeLogConfigResult AWS API Documentation
    #
    class GetRealtimeLogConfigResult < Struct.new(
      :realtime_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier for the response headers policy.
    #
    #   If the response headers policy is attached to a distribution's
    #   cache behavior, you can get the policy's identifier using
    #   `ListDistributions` or `GetDistribution`. If the response headers
    #   policy is not attached to a cache behavior, you can get the
    #   identifier using `ListResponseHeadersPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicyConfigRequest AWS API Documentation
    #
    class GetResponseHeadersPolicyConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy_config
    #   Contains a response headers policy.
    #   @return [Types::ResponseHeadersPolicyConfig]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the response
    #   headers policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicyConfigResult AWS API Documentation
    #
    class GetResponseHeadersPolicyConfigResult < Struct.new(
      :response_headers_policy_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier for the response headers policy.
    #
    #   If the response headers policy is attached to a distribution's
    #   cache behavior, you can get the policy's identifier using
    #   `ListDistributions` or `GetDistribution`. If the response headers
    #   policy is not attached to a cache behavior, you can get the
    #   identifier using `ListResponseHeadersPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicyRequest AWS API Documentation
    #
    class GetResponseHeadersPolicyRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy
    #   Contains a response headers policy.
    #   @return [Types::ResponseHeadersPolicy]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the response
    #   headers policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetResponseHeadersPolicyResult AWS API Documentation
    #
    class GetResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # To request to get a streaming distribution configuration.
    #
    # @!attribute [rw] id
    #   The streaming distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistributionConfigRequest AWS API Documentation
    #
    class GetStreamingDistributionConfigRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistributionConfigResult AWS API Documentation
    #
    class GetStreamingDistributionConfigResult < Struct.new(
      :streaming_distribution_config,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get a streaming distribution's information.
    #
    # @!attribute [rw] id
    #   The streaming distribution's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistributionRequest AWS API Documentation
    #
    class GetStreamingDistributionRequest < Struct.new(
      :id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/GetStreamingDistributionResult AWS API Documentation
    #
    class GetStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of HTTP header names.
    #
    # @!attribute [rw] quantity
    #   The number of header names in the `Items` list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of HTTP header names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Headers AWS API Documentation
    #
    class Headers < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot delete a managed policy.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/IllegalDelete AWS API Documentation
    #
    class IllegalDelete < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration for field-level encryption can't be
    # associated with the specified cache behavior.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior AWS API Documentation
    #
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin cannot contain both an origin access control (OAC) and an
    # origin access identity (OAI).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/IllegalOriginAccessConfiguration AWS API Documentation
    #
    class IllegalOriginAccessConfiguration < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The update contains modifications that are not allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/IllegalUpdate AWS API Documentation
    #
    class IllegalUpdate < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of `Quantity` and the size of `Items` don't match.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InconsistentQuantities AWS API Documentation
    #
    class InconsistentQuantities < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An argument is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidArgument AWS API Documentation
    #
    class InvalidArgument < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The default root object file name is too big or contains an invalid
    # character.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidDefaultRootObject AWS API Documentation
    #
    class InvalidDefaultRootObject < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin access control is associated with an origin whose domain
    # name is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidDomainNameForOriginAccessControl AWS API Documentation
    #
    class InvalidDomainNameForOriginAccessControl < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalid error code was specified.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidErrorCode AWS API Documentation
    #
    class InvalidErrorCode < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains forward cookies option which doesn't match with
    # the expectation for the `whitelisted` list of cookie names. Either
    # list of cookie names has been specified when not allowed or list of
    # cookie names is missing when expected.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidForwardCookies AWS API Documentation
    #
    class InvalidForwardCookies < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront function association is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidFunctionAssociation AWS API Documentation
    #
    class InvalidFunctionAssociation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified geo restriction parameter is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidGeoRestrictionParameter AWS API Documentation
    #
    class InvalidGeoRestrictionParameter < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The headers specified are not valid for an Amazon S3 origin.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidHeadersForS3Origin AWS API Documentation
    #
    class InvalidHeadersForS3Origin < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `If-Match` version is missing or not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidIfMatchVersion AWS API Documentation
    #
    class InvalidIfMatchVersion < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Lambda@Edge function association is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidLambdaFunctionAssociation AWS API Documentation
    #
    class InvalidLambdaFunctionAssociation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location code specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidLocationCode AWS API Documentation
    #
    class InvalidLocationCode < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The minimum protocol version specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidMinimumProtocolVersion AWS API Documentation
    #
    class InvalidMinimumProtocolVersion < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 origin server specified does not refer to a valid Amazon
    # S3 bucket.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidOrigin AWS API Documentation
    #
    class InvalidOrigin < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The origin access control is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidOriginAccessControl AWS API Documentation
    #
    class InvalidOriginAccessControl < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The origin access identity is not valid or doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidOriginAccessIdentity AWS API Documentation
    #
    class InvalidOriginAccessIdentity < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The keep alive timeout specified for the origin is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidOriginKeepaliveTimeout AWS API Documentation
    #
    class InvalidOriginKeepaliveTimeout < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The read timeout specified for the origin is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidOriginReadTimeout AWS API Documentation
    #
    class InvalidOriginReadTimeout < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot specify SSLv3 as the minimum protocol version if you only
    # want to support only clients that support Server Name Indication
    # (SNI).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidProtocolSettings AWS API Documentation
    #
    class InvalidProtocolSettings < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The query string parameters specified are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidQueryStringParameters AWS API Documentation
    #
    class InvalidQueryStringParameters < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The relative path is too big, is not URL-encoded, or does not begin
    # with a slash (/).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidRelativePath AWS API Documentation
    #
    class InvalidRelativePath < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation requires the HTTPS protocol. Ensure that you specify
    # the HTTPS protocol in your request, or omit the `RequiredProtocols`
    # element from your distribution configuration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidRequiredProtocol AWS API Documentation
    #
    class InvalidRequiredProtocol < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response code is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidResponseCode AWS API Documentation
    #
    class InvalidResponseCode < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The TTL order specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidTTLOrder AWS API Documentation
    #
    class InvalidTTLOrder < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tagging specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidTagging AWS API Documentation
    #
    class InvalidTagging < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A viewer certificate specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidViewerCertificate AWS API Documentation
    #
    class InvalidViewerCertificate < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A web ACL ID specified is not valid. To specify a web ACL created
    # using the latest version of WAF, use the ACL ARN, for example
    # `arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a`.
    # To specify a web ACL created using WAF Classic, use the ACL ID, for
    # example `473e64fd-f30b-4765-81a0-62ad96dd167a`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidWebACLId AWS API Documentation
    #
    class InvalidWebACLId < Struct.new(
      :message)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Invalidation AWS API Documentation
    #
    class Invalidation < Struct.new(
      :id,
      :status,
      :create_time,
      :invalidation_batch)
      SENSITIVE = []
      include Aws::Structure
    end

    # An invalidation batch.
    #
    # @!attribute [rw] paths
    #   A complex type that contains information about the objects that you
    #   want to invalidate. For more information, see [Specifying the
    #   Objects to Invalidate][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidationBatch AWS API Documentation
    #
    class InvalidationBatch < Struct.new(
      :paths,
      :caller_reference)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `InvalidationList` complex type describes the list of invalidation
    # objects. For more information about invalidation, see [Invalidating
    # Objects (Web Distributions Only)][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html
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
    #   Amazon Web Services account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `InvalidationSummary` element for
    #   each invalidation batch created by the current Amazon Web Services
    #   account.
    #   @return [Array<Types::InvalidationSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidationList AWS API Documentation
    #
    class InvalidationList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an invalidation request.
    #
    # @!attribute [rw] id
    #   The unique ID for an invalidation request.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that an invalidation request was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of an invalidation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/InvalidationSummary AWS API Documentation
    #
    class InvalidationSummary < Struct.new(
      :id,
      :create_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of identifiers for the public keys that CloudFront can use to
    # verify the signatures of signed URLs and signed cookies.
    #
    # @!attribute [rw] key_group_id
    #   The identifier of the key group that contains the public keys.
    #   @return [String]
    #
    # @!attribute [rw] key_pair_ids
    #   A list of CloudFront key pair identifiers.
    #   @return [Types::KeyPairIds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KGKeyPairIds AWS API Documentation
    #
    class KGKeyPairIds < Struct.new(
      :key_group_id,
      :key_pair_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key group.
    #
    # A key group contains a list of public keys that you can use with
    # [CloudFront signed URLs and signed cookies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @!attribute [rw] id
    #   The identifier for the key group.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the key group was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] key_group_config
    #   The key group configuration.
    #   @return [Types::KeyGroupConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyGroup AWS API Documentation
    #
    class KeyGroup < Struct.new(
      :id,
      :last_modified_time,
      :key_group_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key group with this name already exists. You must provide a unique
    # name. To modify an existing key group, use `UpdateKeyGroup`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyGroupAlreadyExists AWS API Documentation
    #
    class KeyGroupAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key group configuration.
    #
    # A key group contains a list of public keys that you can use with
    # [CloudFront signed URLs and signed cookies][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #
    # @!attribute [rw] name
    #   A name to identify the key group.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   A list of the identifiers of the public keys in the key group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] comment
    #   A comment to describe the key group. The comment cannot be longer
    #   than 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyGroupConfig AWS API Documentation
    #
    class KeyGroupConfig < Struct.new(
      :name,
      :items,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of key groups.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing key
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of key groups requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of key groups returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of key groups.
    #   @return [Array<Types::KeyGroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyGroupList AWS API Documentation
    #
    class KeyGroupList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a key group.
    #
    # @!attribute [rw] key_group
    #   A key group.
    #   @return [Types::KeyGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyGroupSummary AWS API Documentation
    #
    class KeyGroupSummary < Struct.new(
      :key_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CloudFront key pair identifiers.
    #
    # @!attribute [rw] quantity
    #   The number of key pair identifiers in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of CloudFront key pair identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KeyPairIds AWS API Documentation
    #
    class KeyPairIds < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the Amazon Kinesis data stream where you
    # are sending real-time log data.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an Identity and Access Management
    #   (IAM) role that CloudFront can use to send real-time log data to
    #   your Kinesis data stream.
    #
    #   For more information the IAM role, see [Real-time log configuration
    #   IAM role][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role
    #   @return [String]
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) of the Kinesis data stream where you
    #   are sending real-time log data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/KinesisStreamConfig AWS API Documentation
    #
    class KinesisStreamConfig < Struct.new(
      :role_arn,
      :stream_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains a Lambda@Edge function association.
    #
    # @!attribute [rw] lambda_function_arn
    #   The ARN of the Lambda@Edge function. You must specify the ARN of a
    #   function version; you can't specify an alias or $LATEST.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   Specifies the event type that triggers a Lambda@Edge function
    #   invocation. You can specify the following values:
    #
    #   * `viewer-request`: The function executes when CloudFront receives a
    #     request from a viewer and before it checks to see whether the
    #     requested object is in the edge cache.
    #
    #   * `origin-request`: The function executes only when CloudFront sends
    #     a request to your origin. When the requested object is in the edge
    #     cache, the function doesn't execute.
    #
    #   * `origin-response`: The function executes after CloudFront receives
    #     a response from the origin and before it caches the object in the
    #     response. When the requested object is in the edge cache, the
    #     function doesn't execute.
    #
    #   * `viewer-response`: The function executes before CloudFront returns
    #     the requested object to the viewer. The function executes
    #     regardless of whether the object was already in the edge cache.
    #
    #     If the origin returns an HTTP status code other than HTTP 200
    #     (OK), the function doesn't execute.
    #   @return [String]
    #
    # @!attribute [rw] include_body
    #   A flag that allows a Lambda@Edge function to have read access to the
    #   body content. For more information, see [Accessing the Request Body
    #   by Choosing the Include Body Option][1] in the Amazon CloudFront
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/LambdaFunctionAssociation AWS API Documentation
    #
    class LambdaFunctionAssociation < Struct.new(
      :lambda_function_arn,
      :event_type,
      :include_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that specifies a list of Lambda@Edge functions
    # associations for a cache behavior.
    #
    # If you want to invoke one or more Lambda@Edge functions triggered by
    # requests that match the `PathPattern` of the cache behavior, specify
    # the applicable values for `Quantity` and `Items`. Note that there can
    # be up to 4 `LambdaFunctionAssociation` items in this list (one for
    # each possible value of `EventType`) and each `EventType` can be
    # associated with only one function.
    #
    # If you don't want to invoke any Lambda@Edge functions for the
    # requests that match `PathPattern`, specify `0` for `Quantity` and omit
    # `Items`.
    #
    # @!attribute [rw] quantity
    #   The number of Lambda@Edge function associations for this cache
    #   behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   **Optional**: A complex type that contains
    #   `LambdaFunctionAssociation` items for this cache behavior. If
    #   `Quantity` is `0`, you can omit `Items`.
    #   @return [Array<Types::LambdaFunctionAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/LambdaFunctionAssociations AWS API Documentation
    #
    class LambdaFunctionAssociations < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   A filter to return only the specified kinds of cache policies. Valid
    #   values are:
    #
    #   * `managed` – Returns only the managed policies created by Amazon
    #     Web Services.
    #
    #   * `custom` – Returns only the custom policies created in your Amazon
    #     Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of cache policies. The response includes cache policies in
    #   the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of cache policies that you want in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCachePoliciesRequest AWS API Documentation
    #
    class ListCachePoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy_list
    #   A list of cache policies.
    #   @return [Types::CachePolicyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCachePoliciesResult AWS API Documentation
    #
    class ListCachePoliciesResult < Struct.new(
      :cache_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list origin access identities.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCloudFrontOriginAccessIdentitiesRequest AWS API Documentation
    #
    class ListCloudFrontOriginAccessIdentitiesRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] cloud_front_origin_access_identity_list
    #   The `CloudFrontOriginAccessIdentityList` type.
    #   @return [Types::CloudFrontOriginAccessIdentityList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListCloudFrontOriginAccessIdentitiesResult AWS API Documentation
    #
    class ListCloudFrontOriginAccessIdentitiesResult < Struct.new(
      :cloud_front_origin_access_identity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id
    #   The ID of a distribution in your account that has an attached
    #   SSL/TLS certificate that includes the provided alias.
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   The alias (also called a CNAME) to search for conflicting aliases.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   the list of conflicting aliases. The response includes conflicting
    #   aliases in the list that occur after the marker. To get the next
    #   page of the list, set this field's value to the value of
    #   `NextMarker` from the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of conflicting aliases that you want in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListConflictingAliasesRequest AWS API Documentation
    #
    class ListConflictingAliasesRequest < Struct.new(
      :distribution_id,
      :alias,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conflicting_aliases_list
    #   A list of conflicting aliases.
    #   @return [Types::ConflictingAliasesList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListConflictingAliasesResult AWS API Documentation
    #
    class ListConflictingAliasesResult < Struct.new(
      :conflicting_aliases_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of continuous deployment policies. The response includes
    #   policies in the list that occur after the marker. To get the next
    #   page of the list, set this field's value to the value of
    #   `NextMarker` from the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of continuous deployment policies that you want
    #   returned in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListContinuousDeploymentPoliciesRequest AWS API Documentation
    #
    class ListContinuousDeploymentPoliciesRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy_list
    #   A list of continuous deployment policies.
    #   @return [Types::ContinuousDeploymentPolicyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListContinuousDeploymentPoliciesResult AWS API Documentation
    #
    class ListContinuousDeploymentPoliciesResult < Struct.new(
      :continuous_deployment_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution
    #   IDs in the list that occur after the marker. To get the next page of
    #   the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distribution IDs that you want in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_policy_id
    #   The ID of the cache policy whose associated distribution IDs you
    #   want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByCachePolicyIdRequest AWS API Documentation
    #
    class ListDistributionsByCachePolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :cache_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id_list
    #   A list of distribution IDs.
    #   @return [Types::DistributionIdList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByCachePolicyIdResult AWS API Documentation
    #
    class ListDistributionsByCachePolicyIdResult < Struct.new(
      :distribution_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution
    #   IDs in the list that occur after the marker. To get the next page of
    #   the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distribution IDs that you want in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] key_group_id
    #   The ID of the key group whose associated distribution IDs you are
    #   listing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByKeyGroupRequest AWS API Documentation
    #
    class ListDistributionsByKeyGroupRequest < Struct.new(
      :marker,
      :max_items,
      :key_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id_list
    #   A list of distribution IDs.
    #   @return [Types::DistributionIdList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByKeyGroupResult AWS API Documentation
    #
    class ListDistributionsByKeyGroupResult < Struct.new(
      :distribution_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution
    #   IDs in the list that occur after the marker. To get the next page of
    #   the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distribution IDs that you want in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] origin_request_policy_id
    #   The ID of the origin request policy whose associated distribution
    #   IDs you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByOriginRequestPolicyIdRequest AWS API Documentation
    #
    class ListDistributionsByOriginRequestPolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :origin_request_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id_list
    #   A list of distribution IDs.
    #   @return [Types::DistributionIdList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByOriginRequestPolicyIdResult AWS API Documentation
    #
    class ListDistributionsByOriginRequestPolicyIdResult < Struct.new(
      :distribution_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distributions. The response includes distributions in
    #   the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distributions that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] realtime_log_config_name
    #   The name of the real-time log configuration whose associated
    #   distributions you want to list.
    #   @return [String]
    #
    # @!attribute [rw] realtime_log_config_arn
    #   The Amazon Resource Name (ARN) of the real-time log configuration
    #   whose associated distributions you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByRealtimeLogConfigRequest AWS API Documentation
    #
    class ListDistributionsByRealtimeLogConfigRequest < Struct.new(
      :marker,
      :max_items,
      :realtime_log_config_name,
      :realtime_log_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_list
    #   A distribution list.
    #   @return [Types::DistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByRealtimeLogConfigResult AWS API Documentation
    #
    class ListDistributionsByRealtimeLogConfigResult < Struct.new(
      :distribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of distribution IDs. The response includes distribution
    #   IDs in the list that occur after the marker. To get the next page of
    #   the list, set this field's value to the value of `NextMarker` from
    #   the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of distribution IDs that you want to get in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] response_headers_policy_id
    #   The ID of the response headers policy whose associated distribution
    #   IDs you want to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByResponseHeadersPolicyIdRequest AWS API Documentation
    #
    class ListDistributionsByResponseHeadersPolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :response_headers_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution_id_list
    #   A list of distribution IDs.
    #   @return [Types::DistributionIdList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByResponseHeadersPolicyIdResult AWS API Documentation
    #
    class ListDistributionsByResponseHeadersPolicyIdResult < Struct.new(
      :distribution_id_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list distributions that are associated with a specified
    # WAF web ACL.
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
    #   The ID of the WAF web ACL that you want to list the associated
    #   distributions. If you specify "null" for the ID, the request
    #   returns a list of the distributions that aren't associated with a
    #   web ACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByWebACLIdRequest AWS API Documentation
    #
    class ListDistributionsByWebACLIdRequest < Struct.new(
      :marker,
      :max_items,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response to a request to list the distributions that are
    # associated with a specified WAF web ACL.
    #
    # @!attribute [rw] distribution_list
    #   The `DistributionList` type.
    #   @return [Types::DistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsByWebACLIdResult AWS API Documentation
    #
    class ListDistributionsByWebACLIdResult < Struct.new(
      :distribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list your distributions.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsRequest AWS API Documentation
    #
    class ListDistributionsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] distribution_list
    #   The `DistributionList` type.
    #   @return [Types::DistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListDistributionsResult AWS API Documentation
    #
    class ListDistributionsResult < Struct.new(
      :distribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionConfigsRequest AWS API Documentation
    #
    class ListFieldLevelEncryptionConfigsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_list
    #   Returns a list of all field-level encryption configurations that
    #   have been created in CloudFront for this account.
    #   @return [Types::FieldLevelEncryptionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionConfigsResult AWS API Documentation
    #
    class ListFieldLevelEncryptionConfigsResult < Struct.new(
      :field_level_encryption_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionProfilesRequest AWS API Documentation
    #
    class ListFieldLevelEncryptionProfilesRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_level_encryption_profile_list
    #   Returns a list of the field-level encryption profiles that have been
    #   created in CloudFront for this account.
    #   @return [Types::FieldLevelEncryptionProfileList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFieldLevelEncryptionProfilesResult AWS API Documentation
    #
    class ListFieldLevelEncryptionProfilesResult < Struct.new(
      :field_level_encryption_profile_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of functions. The response includes functions in the list
    #   that occur after the marker. To get the next page of the list, set
    #   this field's value to the value of `NextMarker` from the current
    #   page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of functions that you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] stage
    #   An optional filter to return only the functions that are in the
    #   specified stage, either `DEVELOPMENT` or `LIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :marker,
      :max_items,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_list
    #   A list of CloudFront functions.
    #   @return [Types::FunctionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListFunctionsResult AWS API Documentation
    #
    class ListFunctionsResult < Struct.new(
      :function_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list invalidations.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListInvalidationsRequest AWS API Documentation
    #
    class ListInvalidationsRequest < Struct.new(
      :distribution_id,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] invalidation_list
    #   Information about invalidation batches.
    #   @return [Types::InvalidationList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListInvalidationsResult AWS API Documentation
    #
    class ListInvalidationsResult < Struct.new(
      :invalidation_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of key groups. The response includes key groups in the
    #   list that occur after the marker. To get the next page of the list,
    #   set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of key groups that you want in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListKeyGroupsRequest AWS API Documentation
    #
    class ListKeyGroupsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group_list
    #   A list of key groups.
    #   @return [Types::KeyGroupList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListKeyGroupsResult AWS API Documentation
    #
    class ListKeyGroupsResult < Struct.new(
      :key_group_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of origin access controls. The response includes the items
    #   in the list that occur after the marker. To get the next page of the
    #   list, set this field's value to the value of `NextMarker` from the
    #   current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin access controls that you want in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginAccessControlsRequest AWS API Documentation
    #
    class ListOriginAccessControlsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control_list
    #   A list of origin access controls.
    #   @return [Types::OriginAccessControlList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginAccessControlsResult AWS API Documentation
    #
    class ListOriginAccessControlsResult < Struct.new(
      :origin_access_control_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   A filter to return only the specified kinds of origin request
    #   policies. Valid values are:
    #
    #   * `managed` – Returns only the managed policies created by Amazon
    #     Web Services.
    #
    #   * `custom` – Returns only the custom policies created in your Amazon
    #     Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of origin request policies. The response includes origin
    #   request policies in the list that occur after the marker. To get the
    #   next page of the list, set this field's value to the value of
    #   `NextMarker` from the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin request policies that you want in the
    #   response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginRequestPoliciesRequest AWS API Documentation
    #
    class ListOriginRequestPoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy_list
    #   A list of origin request policies.
    #   @return [Types::OriginRequestPolicyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListOriginRequestPoliciesResult AWS API Documentation
    #
    class ListOriginRequestPoliciesResult < Struct.new(
      :origin_request_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListPublicKeysRequest AWS API Documentation
    #
    class ListPublicKeysRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_list
    #   Returns a list of all public keys that have been added to CloudFront
    #   for this account.
    #   @return [Types::PublicKeyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListPublicKeysResult AWS API Documentation
    #
    class ListPublicKeysResult < Struct.new(
      :public_key_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_items
    #   The maximum number of real-time log configurations that you want in
    #   the response.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of real-time log configurations. The response includes
    #   real-time log configurations in the list that occur after the
    #   marker. To get the next page of the list, set this field's value to
    #   the value of `NextMarker` from the current page's response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListRealtimeLogConfigsRequest AWS API Documentation
    #
    class ListRealtimeLogConfigsRequest < Struct.new(
      :max_items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] realtime_log_configs
    #   A list of real-time log configurations.
    #   @return [Types::RealtimeLogConfigs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListRealtimeLogConfigsResult AWS API Documentation
    #
    class ListRealtimeLogConfigsResult < Struct.new(
      :realtime_log_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   A filter to get only the specified kind of response headers
    #   policies. Valid values are:
    #
    #   * `managed` – Gets only the managed policies created by Amazon Web
    #     Services.
    #
    #   * `custom` – Gets only the custom policies created in your Amazon
    #     Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this field when paginating results to indicate where to begin in
    #   your list of response headers policies. The response includes
    #   response headers policies in the list that occur after the marker.
    #   To get the next page of the list, set this field's value to the
    #   value of `NextMarker` from the current page's response.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of response headers policies that you want to get
    #   in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListResponseHeadersPoliciesRequest AWS API Documentation
    #
    class ListResponseHeadersPoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy_list
    #   A list of response headers policies.
    #   @return [Types::ResponseHeadersPolicyList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListResponseHeadersPoliciesResult AWS API Documentation
    #
    class ListResponseHeadersPoliciesResult < Struct.new(
      :response_headers_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list your streaming distributions.
    #
    # @!attribute [rw] marker
    #   The value that you provided for the `Marker` request parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The value that you provided for the `MaxItems` request parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListStreamingDistributionsRequest AWS API Documentation
    #
    class ListStreamingDistributionsRequest < Struct.new(
      :marker,
      :max_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] streaming_distribution_list
    #   The `StreamingDistributionList` type.
    #   @return [Types::StreamingDistributionList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListStreamingDistributionsResult AWS API Documentation
    #
    class ListStreamingDistributionsResult < Struct.new(
      :streaming_distribution_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list tags for a CloudFront resource.
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # The returned result of the corresponding request.
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for the
    # distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :enabled,
      :include_cookies,
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation requires a body. Ensure that the body is present and
    # the `Content-Type` header is set.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/MissingBody AWS API Documentation
    #
    class MissingBody < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A monitoring subscription. This structure contains information about
    # whether additional CloudWatch metrics are enabled for a given
    # CloudFront distribution.
    #
    # @!attribute [rw] realtime_metrics_subscription_config
    #   A subscription configuration for additional CloudWatch metrics.
    #   @return [Types::RealtimeMetricsSubscriptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/MonitoringSubscription AWS API Documentation
    #
    class MonitoringSubscription < Struct.new(
      :realtime_metrics_subscription_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A monitoring subscription already exists for the specified
    # distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/MonitoringSubscriptionAlreadyExists AWS API Documentation
    #
    class MonitoringSubscriptionAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cache policy does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchCachePolicy AWS API Documentation
    #
    class NoSuchCachePolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified origin access identity does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchCloudFrontOriginAccessIdentity AWS API Documentation
    #
    class NoSuchCloudFrontOriginAccessIdentity < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The continuous deployment policy doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchContinuousDeploymentPolicy AWS API Documentation
    #
    class NoSuchContinuousDeploymentPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified distribution does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchDistribution AWS API Documentation
    #
    class NoSuchDistribution < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified configuration for field-level encryption doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchFieldLevelEncryptionConfig AWS API Documentation
    #
    class NoSuchFieldLevelEncryptionConfig < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified profile for field-level encryption doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchFieldLevelEncryptionProfile AWS API Documentation
    #
    class NoSuchFieldLevelEncryptionProfile < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchFunctionExists AWS API Documentation
    #
    class NoSuchFunctionExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified invalidation does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchInvalidation AWS API Documentation
    #
    class NoSuchInvalidation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A monitoring subscription does not exist for the specified
    # distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchMonitoringSubscription AWS API Documentation
    #
    class NoSuchMonitoringSubscription < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # No origin exists with the specified `Origin Id`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchOrigin AWS API Documentation
    #
    class NoSuchOrigin < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The origin access control does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchOriginAccessControl AWS API Documentation
    #
    class NoSuchOriginAccessControl < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The origin request policy does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchOriginRequestPolicy AWS API Documentation
    #
    class NoSuchOriginRequestPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified public key doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchPublicKey AWS API Documentation
    #
    class NoSuchPublicKey < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The real-time log configuration does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchRealtimeLogConfig AWS API Documentation
    #
    class NoSuchRealtimeLogConfig < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that was specified is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchResource AWS API Documentation
    #
    class NoSuchResource < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response headers policy does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchResponseHeadersPolicy AWS API Documentation
    #
    class NoSuchResponseHeadersPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified streaming distribution does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/NoSuchStreamingDistribution AWS API Documentation
    #
    class NoSuchStreamingDistribution < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin.
    #
    # An origin is the location where content is stored, and from which
    # CloudFront gets content to serve to viewers. To specify an origin:
    #
    # * Use `S3OriginConfig` to specify an Amazon S3 bucket that is not
    #   configured with static website hosting.
    #
    # * Use `CustomOriginConfig` to specify all other kinds of origins,
    #   including:
    #
    #   * An Amazon S3 bucket that is configured with static website hosting
    #
    #   * An Elastic Load Balancing load balancer
    #
    #   * An AWS Elemental MediaPackage endpoint
    #
    #   * An AWS Elemental MediaStore container
    #
    #   * Any other HTTP server, running on an Amazon EC2 instance or any
    #     other kind of host
    #
    # For the current maximum number of origins that you can specify per
    # distribution, see [General Quotas on Web Distributions][1] in the
    # *Amazon CloudFront Developer Guide* (quotas were formerly referred to
    # as limits).
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions
    #
    # @!attribute [rw] id
    #   A unique identifier for the origin. This value must be unique within
    #   the distribution.
    #
    #   Use this value to specify the `TargetOriginId` in a `CacheBehavior`
    #   or `DefaultCacheBehavior`.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name for the origin.
    #
    #   For more information, see [Origin Domain Name][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName
    #   @return [String]
    #
    # @!attribute [rw] origin_path
    #   An optional path that CloudFront appends to the origin domain name
    #   when CloudFront requests content from the origin.
    #
    #   For more information, see [Origin Path][1] in the *Amazon CloudFront
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath
    #   @return [String]
    #
    # @!attribute [rw] custom_headers
    #   A list of HTTP header names and values that CloudFront adds to the
    #   requests that it sends to the origin.
    #
    #   For more information, see [Adding Custom Headers to Origin
    #   Requests][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html
    #   @return [Types::CustomHeaders]
    #
    # @!attribute [rw] s3_origin_config
    #   Use this type to specify an origin that is an Amazon S3 bucket that
    #   is not configured with static website hosting. To specify any other
    #   type of origin, including an Amazon S3 bucket that is configured
    #   with static website hosting, use the `CustomOriginConfig` type
    #   instead.
    #   @return [Types::S3OriginConfig]
    #
    # @!attribute [rw] custom_origin_config
    #   Use this type to specify an origin that is not an Amazon S3 bucket,
    #   with one exception. If the Amazon S3 bucket is configured with
    #   static website hosting, use this type. If the Amazon S3 bucket is
    #   not configured with static website hosting, use the `S3OriginConfig`
    #   type instead.
    #   @return [Types::CustomOriginConfig]
    #
    # @!attribute [rw] connection_attempts
    #   The number of times that CloudFront attempts to connect to the
    #   origin. The minimum number is 1, the maximum is 3, and the default
    #   (if you don't specify otherwise) is 3.
    #
    #   For a custom origin (including an Amazon S3 bucket that's
    #   configured with static website hosting), this value also specifies
    #   the number of times that CloudFront attempts to get a response from
    #   the origin, in the case of an [Origin Response Timeout][1].
    #
    #   For more information, see [Origin Connection Attempts][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts
    #   @return [Integer]
    #
    # @!attribute [rw] connection_timeout
    #   The number of seconds that CloudFront waits when trying to establish
    #   a connection to the origin. The minimum timeout is 1 second, the
    #   maximum is 10 seconds, and the default (if you don't specify
    #   otherwise) is 10 seconds.
    #
    #   For more information, see [Origin Connection Timeout][1] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout
    #   @return [Integer]
    #
    # @!attribute [rw] origin_shield
    #   CloudFront Origin Shield. Using Origin Shield can help reduce the
    #   load on your origin.
    #
    #   For more information, see [Using Origin Shield][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html
    #   @return [Types::OriginShield]
    #
    # @!attribute [rw] origin_access_control_id
    #   The unique identifier of an origin access control for this origin.
    #
    #   For more information, see [Restricting access to an Amazon S3
    #   origin][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Origin AWS API Documentation
    #
    class Origin < Struct.new(
      :id,
      :domain_name,
      :origin_path,
      :custom_headers,
      :s3_origin_config,
      :custom_origin_config,
      :connection_attempts,
      :connection_timeout,
      :origin_shield,
      :origin_access_control_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront origin access control, including its unique identifier.
    #
    # @!attribute [rw] id
    #   The unique identifier of the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] origin_access_control_config
    #   The origin access control.
    #   @return [Types::OriginAccessControlConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControl AWS API Documentation
    #
    class OriginAccessControl < Struct.new(
      :id,
      :origin_access_control_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin access control with the specified parameters already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControlAlreadyExists AWS API Documentation
    #
    class OriginAccessControlAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront origin access control configuration.
    #
    # @!attribute [rw] name
    #   A name to identify the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] signing_protocol
    #   The signing protocol of the origin access control, which determines
    #   how CloudFront signs (authenticates) requests. The only valid value
    #   is `sigv4`.
    #   @return [String]
    #
    # @!attribute [rw] signing_behavior
    #   Specifies which requests CloudFront signs (adds authentication
    #   information to). Specify `always` for the most common use case. For
    #   more information, see [origin access control advanced settings][1]
    #   in the *Amazon CloudFront Developer Guide*.
    #
    #   This field can have one of the following values:
    #
    #   * `always` – CloudFront signs all origin requests, overwriting the
    #     `Authorization` header from the viewer request if one exists.
    #
    #   * `never` – CloudFront doesn't sign any origin requests. This value
    #     turns off origin access control for all origins in all
    #     distributions that use this origin access control.
    #
    #   * `no-override` – If the viewer request doesn't contain the
    #     `Authorization` header, then CloudFront signs the origin request.
    #     If the viewer request contains the `Authorization` header, then
    #     CloudFront doesn't sign the origin request and instead passes
    #     along the `Authorization` header from the viewer request.
    #     **WARNING: To pass along the `Authorization` header from the
    #     viewer request, you *must* add the `Authorization` header to a
    #     [cache policy][2] for all cache behaviors that use origins
    #     associated with this origin access control.**
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html#oac-advanced-settings
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html
    #   @return [String]
    #
    # @!attribute [rw] origin_access_control_origin_type
    #   The type of origin that this origin access control is for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControlConfig AWS API Documentation
    #
    class OriginAccessControlConfig < Struct.new(
      :name,
      :description,
      :signing_protocol,
      :signing_behavior,
      :origin_access_control_origin_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the origin access control because it's in use by one or
    # more distributions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControlInUse AWS API Documentation
    #
    class OriginAccessControlInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of CloudFront origin access controls.
    #
    # @!attribute [rw] marker
    #   The value of the `Marker` field that was provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value to use in the `Marker`
    #   field of another request to continue listing origin access controls.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin access controls requested.
    #   @return [Integer]
    #
    # @!attribute [rw] is_truncated
    #   If there are more items in the list than are in this response, this
    #   value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of origin access controls returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the origin access controls in the list.
    #   @return [Array<Types::OriginAccessControlSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControlList AWS API Documentation
    #
    class OriginAccessControlList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CloudFront origin access control.
    #
    # @!attribute [rw] id
    #   The unique identifier of the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name that identifies the origin access control.
    #   @return [String]
    #
    # @!attribute [rw] signing_protocol
    #   The signing protocol of the origin access control. The signing
    #   protocol determines how CloudFront signs (authenticates) requests.
    #   The only valid value is `sigv4`.
    #   @return [String]
    #
    # @!attribute [rw] signing_behavior
    #   A value that specifies which requests CloudFront signs (adds
    #   authentication information to). This field can have one of the
    #   following values:
    #
    #   * `never` – CloudFront doesn't sign any origin requests.
    #
    #   * `always` – CloudFront signs all origin requests, overwriting the
    #     `Authorization` header from the viewer request if necessary.
    #
    #   * `no-override` – If the viewer request doesn't contain the
    #     `Authorization` header, CloudFront signs the origin request. If
    #     the viewer request contains the `Authorization` header, CloudFront
    #     doesn't sign the origin request, but instead passes along the
    #     `Authorization` header that it received in the viewer request.
    #   @return [String]
    #
    # @!attribute [rw] origin_access_control_origin_type
    #   The type of origin that this origin access control is for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginAccessControlSummary AWS API Documentation
    #
    class OriginAccessControlSummary < Struct.new(
      :id,
      :description,
      :name,
      :signing_protocol,
      :signing_behavior,
      :origin_access_control_origin_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains `HeaderName` and `HeaderValue` elements,
    # if any, for this distribution.
    #
    # @!attribute [rw] header_name
    #   The name of a header that you want CloudFront to send to your
    #   origin. For more information, see [Adding Custom Headers to Origin
    #   Requests][1] in the <i> Amazon CloudFront Developer Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html
    #   @return [String]
    #
    # @!attribute [rw] header_value
    #   The value for the header that you specified in the `HeaderName`
    #   field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginCustomHeader AWS API Documentation
    #
    class OriginCustomHeader < Struct.new(
      :header_name,
      :header_value)
      SENSITIVE = [:header_value]
      include Aws::Structure
    end

    # An origin group includes two origins (a primary origin and a second
    # origin to failover to) and a failover criteria that you specify. You
    # create an origin group to support origin failover in CloudFront. When
    # you create or update a distribution, you can specifiy the origin group
    # instead of a single origin, and CloudFront will failover from the
    # primary origin to the second origin under the failover conditions that
    # you've chosen.
    #
    # @!attribute [rw] id
    #   The origin group's ID.
    #   @return [String]
    #
    # @!attribute [rw] failover_criteria
    #   A complex type that contains information about the failover criteria
    #   for an origin group.
    #   @return [Types::OriginGroupFailoverCriteria]
    #
    # @!attribute [rw] members
    #   A complex type that contains information about the origins in an
    #   origin group.
    #   @return [Types::OriginGroupMembers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginGroup AWS API Documentation
    #
    class OriginGroup < Struct.new(
      :id,
      :failover_criteria,
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type that includes information about the failover
    # criteria for an origin group, including the status codes for which
    # CloudFront will failover from the primary origin to the second origin.
    #
    # @!attribute [rw] status_codes
    #   The status codes that, when returned from the primary origin, will
    #   trigger CloudFront to failover to the second origin.
    #   @return [Types::StatusCodes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginGroupFailoverCriteria AWS API Documentation
    #
    class OriginGroupFailoverCriteria < Struct.new(
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin in an origin group.
    #
    # @!attribute [rw] origin_id
    #   The ID for an origin in an origin group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginGroupMember AWS API Documentation
    #
    class OriginGroupMember < Struct.new(
      :origin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type for the origins included in an origin group.
    #
    # @!attribute [rw] quantity
    #   The number of origins in an origin group.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Items (origins) in an origin group.
    #   @return [Array<Types::OriginGroupMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginGroupMembers AWS API Documentation
    #
    class OriginGroupMembers < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type for the origin groups specified for a
    # distribution.
    #
    # @!attribute [rw] quantity
    #   The number of origin groups.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The items (origin groups) in a distribution.
    #   @return [Array<Types::OriginGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginGroups AWS API Documentation
    #
    class OriginGroups < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin request policy.
    #
    # When it's attached to a cache behavior, the origin request policy
    # determines the values that CloudFront includes in requests that it
    # sends to the origin. Each request that CloudFront sends to the origin
    # includes the following:
    #
    # * The request body and the URL path (without the domain name) from the
    #   viewer request.
    #
    # * The headers that CloudFront automatically includes in every origin
    #   request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.
    #
    # * All HTTP headers, cookies, and URL query strings that are specified
    #   in the cache policy or the origin request policy. These can include
    #   items from the viewer request and, in the case of headers,
    #   additional ones that are added by CloudFront.
    #
    # CloudFront sends a request when it can't find an object in its cache
    # that matches the request. If you want to send values to the origin and
    # also include them in the cache key, use `CachePolicy`.
    #
    # @!attribute [rw] id
    #   The unique identifier for the origin request policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the origin request policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] origin_request_policy_config
    #   The origin request policy configuration.
    #   @return [Types::OriginRequestPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicy AWS API Documentation
    #
    class OriginRequestPolicy < Struct.new(
      :id,
      :last_modified_time,
      :origin_request_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin request policy with this name already exists. You must
    # provide a unique name. To modify an existing origin request policy,
    # use `UpdateOriginRequestPolicy`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyAlreadyExists AWS API Documentation
    #
    class OriginRequestPolicyAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An origin request policy configuration.
    #
    # This configuration determines the values that CloudFront includes in
    # requests that it sends to the origin. Each request that CloudFront
    # sends to the origin includes the following:
    #
    # * The request body and the URL path (without the domain name) from the
    #   viewer request.
    #
    # * The headers that CloudFront automatically includes in every origin
    #   request, including `Host`, `User-Agent`, and `X-Amz-Cf-Id`.
    #
    # * All HTTP headers, cookies, and URL query strings that are specified
    #   in the cache policy or the origin request policy. These can include
    #   items from the viewer request and, in the case of headers,
    #   additional ones that are added by CloudFront.
    #
    # CloudFront sends a request when it can't find an object in its cache
    # that matches the request. If you want to send values to the origin and
    # also include them in the cache key, use `CachePolicy`.
    #
    # @!attribute [rw] comment
    #   A comment to describe the origin request policy. The comment cannot
    #   be longer than 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name to identify the origin request policy.
    #   @return [String]
    #
    # @!attribute [rw] headers_config
    #   The HTTP headers to include in origin requests. These can include
    #   headers from viewer requests and additional headers added by
    #   CloudFront.
    #   @return [Types::OriginRequestPolicyHeadersConfig]
    #
    # @!attribute [rw] cookies_config
    #   The cookies from viewer requests to include in origin requests.
    #   @return [Types::OriginRequestPolicyCookiesConfig]
    #
    # @!attribute [rw] query_strings_config
    #   The URL query strings from viewer requests to include in origin
    #   requests.
    #   @return [Types::OriginRequestPolicyQueryStringsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyConfig AWS API Documentation
    #
    class OriginRequestPolicyConfig < Struct.new(
      :comment,
      :name,
      :headers_config,
      :cookies_config,
      :query_strings_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any cookies in viewer requests (and
    # if so, which cookies) are included in requests that CloudFront sends
    # to the origin.
    #
    # @!attribute [rw] cookie_behavior
    #   Determines whether cookies in viewer requests are included in
    #   requests that CloudFront sends to the origin. Valid values are:
    #
    #   * `none` – No cookies in viewer requests are included in requests
    #     that CloudFront sends to the origin. Even when this field is set
    #     to `none`, any cookies that are listed in a `CachePolicy` *are*
    #     included in origin requests.
    #
    #   * `whitelist` – Only the cookies in viewer requests that are listed
    #     in the `CookieNames` type are included in requests that CloudFront
    #     sends to the origin.
    #
    #   * `all` – All cookies in viewer requests are included in requests
    #     that CloudFront sends to the origin.
    #
    #   * `allExcept` – All cookies in viewer requests are included in
    #     requests that CloudFront sends to the origin, <i> <b>except</b>
    #     </i> for those listed in the `CookieNames` type, which are not
    #     included.
    #   @return [String]
    #
    # @!attribute [rw] cookies
    #   Contains a list of cookie names.
    #   @return [Types::CookieNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyCookiesConfig AWS API Documentation
    #
    class OriginRequestPolicyCookiesConfig < Struct.new(
      :cookie_behavior,
      :cookies)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any HTTP headers (and if so, which
    # headers) are included in requests that CloudFront sends to the origin.
    #
    # @!attribute [rw] header_behavior
    #   Determines whether any HTTP headers are included in requests that
    #   CloudFront sends to the origin. Valid values are:
    #
    #   * `none` – No HTTP headers in viewer requests are included in
    #     requests that CloudFront sends to the origin. Even when this field
    #     is set to `none`, any headers that are listed in a `CachePolicy`
    #     *are* included in origin requests.
    #
    #   * `whitelist` – Only the HTTP headers that are listed in the
    #     `Headers` type are included in requests that CloudFront sends to
    #     the origin.
    #
    #   * `allViewer` – All HTTP headers in viewer requests are included in
    #     requests that CloudFront sends to the origin.
    #
    #   * `allViewerAndWhitelistCloudFront` – All HTTP headers in viewer
    #     requests and the additional CloudFront headers that are listed in
    #     the `Headers` type are included in requests that CloudFront sends
    #     to the origin. The additional headers are added by CloudFront.
    #
    #   * `allExcept` – All HTTP headers in viewer requests are included in
    #     requests that CloudFront sends to the origin, <i> <b>except</b>
    #     </i> for those listed in the `Headers` type, which are not
    #     included.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   Contains a list of HTTP header names.
    #   @return [Types::Headers]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyHeadersConfig AWS API Documentation
    #
    class OriginRequestPolicyHeadersConfig < Struct.new(
      :header_behavior,
      :headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the origin request policy because it is attached to one
    # or more cache behaviors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyInUse AWS API Documentation
    #
    class OriginRequestPolicyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of origin request policies.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing origin
    #   request policies where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of origin request policies requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The total number of origin request policies returned in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the origin request policies in the list.
    #   @return [Array<Types::OriginRequestPolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyList AWS API Documentation
    #
    class OriginRequestPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that determines whether any URL query strings in viewer
    # requests (and if so, which query strings) are included in requests
    # that CloudFront sends to the origin.
    #
    # @!attribute [rw] query_string_behavior
    #   Determines whether any URL query strings in viewer requests are
    #   included in requests that CloudFront sends to the origin. Valid
    #   values are:
    #
    #   * `none` – No query strings in viewer requests are included in
    #     requests that CloudFront sends to the origin. Even when this field
    #     is set to `none`, any query strings that are listed in a
    #     `CachePolicy` *are* included in origin requests.
    #
    #   * `whitelist` – Only the query strings in viewer requests that are
    #     listed in the `QueryStringNames` type are included in requests
    #     that CloudFront sends to the origin.
    #
    #   * `all` – All query strings in viewer requests are included in
    #     requests that CloudFront sends to the origin.
    #
    #   * `allExcept` – All query strings in viewer requests are included in
    #     requests that CloudFront sends to the origin, <i> <b>except</b>
    #     </i> for those listed in the `QueryStringNames` type, which are
    #     not included.
    #   @return [String]
    #
    # @!attribute [rw] query_strings
    #   Contains the specific query strings in viewer requests that either
    #   <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in requests
    #   that CloudFront sends to the origin. The behavior depends on whether
    #   the `QueryStringBehavior` field in the
    #   `OriginRequestPolicyQueryStringsConfig` type is set to `whitelist`
    #   (the listed query strings <i> <b>are</b> </i> included) or
    #   `allExcept` (the listed query strings <i> <b>are not</b> </i>
    #   included, but all other query strings are).
    #   @return [Types::QueryStringNames]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicyQueryStringsConfig AWS API Documentation
    #
    class OriginRequestPolicyQueryStringsConfig < Struct.new(
      :query_string_behavior,
      :query_strings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an origin request policy.
    #
    # @!attribute [rw] type
    #   The type of origin request policy, either `managed` (created by
    #   Amazon Web Services) or `custom` (created in this Amazon Web
    #   Services account).
    #   @return [String]
    #
    # @!attribute [rw] origin_request_policy
    #   The origin request policy.
    #   @return [Types::OriginRequestPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginRequestPolicySummary AWS API Documentation
    #
    class OriginRequestPolicySummary < Struct.new(
      :type,
      :origin_request_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # CloudFront Origin Shield.
    #
    # Using Origin Shield can help reduce the load on your origin. For more
    # information, see [Using Origin Shield][1] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html
    #
    # @!attribute [rw] enabled
    #   A flag that specifies whether Origin Shield is enabled.
    #
    #   When it's enabled, CloudFront routes all requests through Origin
    #   Shield, which can help protect your origin. When it's disabled,
    #   CloudFront might send requests directly to your origin from multiple
    #   edge locations or regional edge caches.
    #   @return [Boolean]
    #
    # @!attribute [rw] origin_shield_region
    #   The Amazon Web Services Region for Origin Shield.
    #
    #   Specify the Amazon Web Services Region that has the lowest latency
    #   to your origin. To specify a region, use the region code, not the
    #   region name. For example, specify the US East (Ohio) region as
    #   `us-east-2`.
    #
    #   When you enable CloudFront Origin Shield, you must specify the
    #   Amazon Web Services Region for Origin Shield. For the list of Amazon
    #   Web Services Regions that you can specify, and for help choosing the
    #   best Region for your origin, see [Choosing the Amazon Web Services
    #   Region for Origin Shield][1] in the *Amazon CloudFront Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginShield AWS API Documentation
    #
    class OriginShield < Struct.new(
      :enabled,
      :origin_shield_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about the SSL/TLS protocols
    # that CloudFront can use when establishing an HTTPS connection with
    # your origin.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/OriginSslProtocols AWS API Documentation
    #
    class OriginSslProtocols < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the origins for this distribution.
    #
    # @!attribute [rw] quantity
    #   The number of origins for this distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of origins.
    #   @return [Array<Types::Origin>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Origins AWS API Documentation
    #
    class Origins < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object determines the values that CloudFront includes in the
    # cache key. These values can include HTTP headers, cookies, and URL
    # query strings. CloudFront uses the cache key to find an object in its
    # cache that it can return to the viewer.
    #
    # The headers, cookies, and query strings that are included in the cache
    # key are also included in requests that CloudFront sends to the origin.
    # CloudFront sends a request when it can't find an object in its cache
    # that matches the request's cache key. If you want to send values to
    # the origin but *not* include them in the cache key, use
    # `OriginRequestPolicy`.
    #
    # @!attribute [rw] enable_accept_encoding_gzip
    #   A flag that can affect whether the `Accept-Encoding` HTTP header is
    #   included in the cache key and included in requests that CloudFront
    #   sends to the origin.
    #
    #   This field is related to the `EnableAcceptEncodingBrotli` field. If
    #   one or both of these fields is `true` *and* the viewer request
    #   includes the `Accept-Encoding` header, then CloudFront does the
    #   following:
    #
    #   * Normalizes the value of the viewer's `Accept-Encoding` header
    #
    #   * Includes the normalized header in the cache key
    #
    #   * Includes the normalized header in the request to the origin, if a
    #     request is necessary
    #
    #   For more information, see [Compression support][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   If you set this value to `true`, and this cache behavior also has an
    #   origin request policy attached, do not include the `Accept-Encoding`
    #   header in the origin request policy. CloudFront always includes the
    #   `Accept-Encoding` header in origin requests when the value of this
    #   field is `true`, so including this header in an origin request
    #   policy has no effect.
    #
    #   If both of these fields are `false`, then CloudFront treats the
    #   `Accept-Encoding` header the same as any other HTTP header in the
    #   viewer request. By default, it's not included in the cache key and
    #   it's not included in origin requests. In this case, you can
    #   manually add `Accept-Encoding` to the headers whitelist like any
    #   other HTTP header.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_accept_encoding_brotli
    #   A flag that can affect whether the `Accept-Encoding` HTTP header is
    #   included in the cache key and included in requests that CloudFront
    #   sends to the origin.
    #
    #   This field is related to the `EnableAcceptEncodingGzip` field. If
    #   one or both of these fields is `true` *and* the viewer request
    #   includes the `Accept-Encoding` header, then CloudFront does the
    #   following:
    #
    #   * Normalizes the value of the viewer's `Accept-Encoding` header
    #
    #   * Includes the normalized header in the cache key
    #
    #   * Includes the normalized header in the request to the origin, if a
    #     request is necessary
    #
    #   For more information, see [Compression support][1] in the *Amazon
    #   CloudFront Developer Guide*.
    #
    #   If you set this value to `true`, and this cache behavior also has an
    #   origin request policy attached, do not include the `Accept-Encoding`
    #   header in the origin request policy. CloudFront always includes the
    #   `Accept-Encoding` header in origin requests when the value of this
    #   field is `true`, so including this header in an origin request
    #   policy has no effect.
    #
    #   If both of these fields are `false`, then CloudFront treats the
    #   `Accept-Encoding` header the same as any other HTTP header in the
    #   viewer request. By default, it's not included in the cache key and
    #   it's not included in origin requests. In this case, you can
    #   manually add `Accept-Encoding` to the headers whitelist like any
    #   other HTTP header.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects
    #   @return [Boolean]
    #
    # @!attribute [rw] headers_config
    #   An object that determines whether any HTTP headers (and if so, which
    #   headers) are included in the cache key and in requests that
    #   CloudFront sends to the origin.
    #   @return [Types::CachePolicyHeadersConfig]
    #
    # @!attribute [rw] cookies_config
    #   An object that determines whether any cookies in viewer requests
    #   (and if so, which cookies) are included in the cache key and in
    #   requests that CloudFront sends to the origin.
    #   @return [Types::CachePolicyCookiesConfig]
    #
    # @!attribute [rw] query_strings_config
    #   An object that determines whether any URL query strings in viewer
    #   requests (and if so, which query strings) are included in the cache
    #   key and in requests that CloudFront sends to the origin.
    #   @return [Types::CachePolicyQueryStringsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ParametersInCacheKeyAndForwardedToOrigin AWS API Documentation
    #
    class ParametersInCacheKeyAndForwardedToOrigin < Struct.new(
      :enable_accept_encoding_gzip,
      :enable_accept_encoding_brotli,
      :headers_config,
      :cookies_config,
      :query_strings_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about the objects that you
    # want to invalidate. For more information, see [Specifying the Objects
    # to Invalidate][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects
    #
    # @!attribute [rw] quantity
    #   The number of invalidation paths specified for the objects that you
    #   want to invalidate.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains a list of the paths that you want to
    #   invalidate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Paths AWS API Documentation
    #
    class Paths < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The precondition in one or more of the request fields evaluated to
    # `false`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PreconditionFailed AWS API Documentation
    #
    class PreconditionFailed < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A public key that you can use with [signed URLs and signed
    # cookies][1], or with [field-level encryption][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #
    # @!attribute [rw] id
    #   The identifier of the public key.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time when the public key was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] public_key_config
    #   Configuration information about a public key that you can use with
    #   [signed URLs and signed cookies][1], or with [field-level
    #   encryption][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #   @return [Types::PublicKeyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKey AWS API Documentation
    #
    class PublicKey < Struct.new(
      :id,
      :created_time,
      :public_key_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified public key already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKeyAlreadyExists AWS API Documentation
    #
    class PublicKeyAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about a public key that you can use with
    # [signed URLs and signed cookies][1], or with [field-level
    # encryption][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #
    # @!attribute [rw] caller_reference
    #   A string included in the request to help make sure that the request
    #   can't be replayed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name to help identify the public key.
    #   @return [String]
    #
    # @!attribute [rw] encoded_key
    #   The public key that you can use with [signed URLs and signed
    #   cookies][1], or with [field-level encryption][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment to describe the public key. The comment cannot be longer
    #   than 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKeyConfig AWS API Documentation
    #
    class PublicKeyConfig < Struct.new(
      :caller_reference,
      :name,
      :encoded_key,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified public key is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKeyInUse AWS API Documentation
    #
    class PublicKeyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of public keys that you can use with [signed URLs and signed
    # cookies][1], or with [field-level encryption][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html
    #
    # @!attribute [rw] next_marker
    #   If there are more elements to be listed, this element is present and
    #   contains the value that you can use for the `Marker` request
    #   parameter to continue listing your public keys where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of public keys you want in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of public keys in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of public keys.
    #   @return [Array<Types::PublicKeySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKeyList AWS API Documentation
    #
    class PublicKeyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a public key.
    #
    # @!attribute [rw] id
    #   The identifier of the public key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name to help identify the public key.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time when the public key was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] encoded_key
    #   The public key.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment to describe the public key. The comment cannot be longer
    #   than 128 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublicKeySummary AWS API Documentation
    #
    class PublicKeySummary < Struct.new(
      :id,
      :name,
      :created_time,
      :encoded_key,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function that you are publishing.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the function that you are
    #   publishing, which you can get using `DescribeFunction`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublishFunctionRequest AWS API Documentation
    #
    class PublishFunctionRequest < Struct.new(
      :name,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_summary
    #   Contains configuration information and metadata about a CloudFront
    #   function.
    #   @return [Types::FunctionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/PublishFunctionResult AWS API Documentation
    #
    class PublishFunctionResult < Struct.new(
      :function_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Query argument-profile mapping for field-level encryption.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryArgProfile AWS API Documentation
    #
    class QueryArgProfile < Struct.new(
      :query_arg,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for query argument-profile mapping for field-level
    # encryption.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryArgProfileConfig AWS API Documentation
    #
    class QueryArgProfileConfig < Struct.new(
      :forward_when_query_arg_profile_is_unknown,
      :query_arg_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # No profile specified for the field-level encryption query argument.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryArgProfileEmpty AWS API Documentation
    #
    class QueryArgProfileEmpty < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Query argument-profile mapping for field-level encryption.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryArgProfiles AWS API Documentation
    #
    class QueryArgProfiles < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # This field is deprecated. We recommend that you use a cache policy or
    # an origin request policy instead of this field.
    #
    # If you want to include query strings in the cache key, use
    # `QueryStringsConfig` in a cache policy. See `CachePolicy`.
    #
    # If you want to send query strings to the origin but not include them
    # in the cache key, use `QueryStringsConfig` in an origin request
    # policy. See `OriginRequestPolicy`.
    #
    # A complex type that contains information about the query string
    # parameters that you want CloudFront to use for caching for a cache
    # behavior.
    #
    # @!attribute [rw] quantity
    #   The number of `whitelisted` query string parameters for a cache
    #   behavior.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list that contains the query string parameters that you want
    #   CloudFront to use as a basis for caching for a cache behavior. If
    #   `Quantity` is 0, you can omit `Items`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryStringCacheKeys AWS API Documentation
    #
    class QueryStringCacheKeys < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of query string names.
    #
    # @!attribute [rw] quantity
    #   The number of query string names in the `Items` list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of query string names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/QueryStringNames AWS API Documentation
    #
    class QueryStringNames < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A real-time log configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of this real-time log configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique name of this real-time log configuration.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   The sampling rate for this real-time log configuration. The sampling
    #   rate determines the percentage of viewer requests that are
    #   represented in the real-time log data. The sampling rate is an
    #   integer between 1 and 100, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] end_points
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data for this real-time log configuration.
    #   @return [Array<Types::EndPoint>]
    #
    # @!attribute [rw] fields
    #   A list of fields that are included in each real-time log record. In
    #   an API response, the fields are provided in the same order in which
    #   they are sent to the Amazon Kinesis data stream.
    #
    #   For more information about fields, see [Real-time log configuration
    #   fields][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeLogConfig AWS API Documentation
    #
    class RealtimeLogConfig < Struct.new(
      :arn,
      :name,
      :sampling_rate,
      :end_points,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A real-time log configuration with this name already exists. You must
    # provide a unique name. To modify an existing real-time log
    # configuration, use `UpdateRealtimeLogConfig`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeLogConfigAlreadyExists AWS API Documentation
    #
    class RealtimeLogConfigAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the real-time log configuration because it is attached
    # to one or more cache behaviors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeLogConfigInUse AWS API Documentation
    #
    class RealtimeLogConfigInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified real-time log configuration belongs to a different
    # Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeLogConfigOwnerMismatch AWS API Documentation
    #
    class RealtimeLogConfigOwnerMismatch < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of real-time log configurations.
    #
    # @!attribute [rw] max_items
    #   The maximum number of real-time log configurations requested.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   Contains the list of real-time log configurations.
    #   @return [Array<Types::RealtimeLogConfig>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more real-time log
    #   configurations than are contained in this list.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   This parameter indicates where this list of real-time log
    #   configurations begins. This list includes real-time log
    #   configurations that occur after the marker.
    #   @return [String]
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing real-time
    #   log configurations where you left off.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeLogConfigs AWS API Documentation
    #
    class RealtimeLogConfigs < Struct.new(
      :max_items,
      :items,
      :is_truncated,
      :marker,
      :next_marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subscription configuration for additional CloudWatch metrics.
    #
    # @!attribute [rw] realtime_metrics_subscription_status
    #   A flag that indicates whether additional CloudWatch metrics are
    #   enabled for a given CloudFront distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/RealtimeMetricsSubscriptionConfig AWS API Documentation
    #
    class RealtimeMetricsSubscriptionConfig < Struct.new(
      :realtime_metrics_subscription_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete this resource because it is in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResourceInUse AWS API Documentation
    #
    class ResourceInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response headers policy.
    #
    # A response headers policy contains information about a set of HTTP
    # response headers.
    #
    # After you create a response headers policy, you can use its ID to
    # attach it to one or more cache behaviors in a CloudFront distribution.
    # When it's attached to a cache behavior, the response headers policy
    # affects the HTTP headers that CloudFront includes in HTTP responses to
    # requests that match the cache behavior. CloudFront adds or removes
    # response headers according to the configuration of the response
    # headers policy.
    #
    # For more information, see [Adding or removing HTTP headers in
    # CloudFront responses][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html
    #
    # @!attribute [rw] id
    #   The identifier for the response headers policy.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time when the response headers policy was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] response_headers_policy_config
    #   A response headers policy configuration.
    #   @return [Types::ResponseHeadersPolicyConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicy AWS API Documentation
    #
    class ResponseHeadersPolicy < Struct.new(
      :id,
      :last_modified_time,
      :response_headers_policy_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of HTTP header names that CloudFront includes as values for the
    # `Access-Control-Allow-Headers` HTTP response header.
    #
    # For more information about the `Access-Control-Allow-Headers` HTTP
    # response header, see [Access-Control-Allow-Headers][1] in the MDN Web
    # Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers
    #
    # @!attribute [rw] quantity
    #   The number of HTTP header names in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of HTTP header names. You can specify `*` to allow all
    #   headers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyAccessControlAllowHeaders AWS API Documentation
    #
    class ResponseHeadersPolicyAccessControlAllowHeaders < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of HTTP methods that CloudFront includes as values for the
    # `Access-Control-Allow-Methods` HTTP response header.
    #
    # For more information about the `Access-Control-Allow-Methods` HTTP
    # response header, see [Access-Control-Allow-Methods][1] in the MDN Web
    # Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods
    #
    # @!attribute [rw] quantity
    #   The number of HTTP methods in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of HTTP methods. Valid values are:
    #
    #   * `GET`
    #
    #   * `DELETE`
    #
    #   * `HEAD`
    #
    #   * `OPTIONS`
    #
    #   * `PATCH`
    #
    #   * `POST`
    #
    #   * `PUT`
    #
    #   * `ALL`
    #
    #   `ALL` is a special value that includes all of the listed HTTP
    #   methods.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyAccessControlAllowMethods AWS API Documentation
    #
    class ResponseHeadersPolicyAccessControlAllowMethods < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of origins (domain names) that CloudFront can use as the value
    # for the `Access-Control-Allow-Origin` HTTP response header.
    #
    # For more information about the `Access-Control-Allow-Origin` HTTP
    # response header, see [Access-Control-Allow-Origin][1] in the MDN Web
    # Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin
    #
    # @!attribute [rw] quantity
    #   The number of origins in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of origins (domain names). You can specify `*` to allow all
    #   origins.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyAccessControlAllowOrigins AWS API Documentation
    #
    class ResponseHeadersPolicyAccessControlAllowOrigins < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of HTTP headers that CloudFront includes as values for the
    # `Access-Control-Expose-Headers` HTTP response header.
    #
    # For more information about the `Access-Control-Expose-Headers` HTTP
    # response header, see [Access-Control-Expose-Headers][1] in the MDN Web
    # Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers
    #
    # @!attribute [rw] quantity
    #   The number of HTTP headers in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of HTTP headers. You can specify `*` to expose all headers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyAccessControlExposeHeaders AWS API Documentation
    #
    class ResponseHeadersPolicyAccessControlExposeHeaders < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response headers policy with this name already exists. You must
    # provide a unique name. To modify an existing response headers policy,
    # use `UpdateResponseHeadersPolicy`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyAlreadyExists AWS API Documentation
    #
    class ResponseHeadersPolicyAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A response headers policy configuration.
    #
    # A response headers policy configuration contains metadata about the
    # response headers policy, and configurations for sets of HTTP response
    # headers.
    #
    # @!attribute [rw] comment
    #   A comment to describe the response headers policy.
    #
    #   The comment cannot be longer than 128 characters.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name to identify the response headers policy.
    #
    #   The name must be unique for response headers policies in this Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] cors_config
    #   A configuration for a set of HTTP response headers that are used for
    #   cross-origin resource sharing (CORS).
    #   @return [Types::ResponseHeadersPolicyCorsConfig]
    #
    # @!attribute [rw] security_headers_config
    #   A configuration for a set of security-related HTTP response headers.
    #   @return [Types::ResponseHeadersPolicySecurityHeadersConfig]
    #
    # @!attribute [rw] server_timing_headers_config
    #   A configuration for enabling the `Server-Timing` header in HTTP
    #   responses sent from CloudFront.
    #   @return [Types::ResponseHeadersPolicyServerTimingHeadersConfig]
    #
    # @!attribute [rw] custom_headers_config
    #   A configuration for a set of custom HTTP response headers.
    #   @return [Types::ResponseHeadersPolicyCustomHeadersConfig]
    #
    # @!attribute [rw] remove_headers_config
    #   A configuration for a set of HTTP headers to remove from the HTTP
    #   response.
    #   @return [Types::ResponseHeadersPolicyRemoveHeadersConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyConfig AWS API Documentation
    #
    class ResponseHeadersPolicyConfig < Struct.new(
      :comment,
      :name,
      :cors_config,
      :security_headers_config,
      :server_timing_headers_config,
      :custom_headers_config,
      :remove_headers_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The policy directives and their values that CloudFront includes as
    # values for the `Content-Security-Policy` HTTP response header.
    #
    # For more information about the `Content-Security-Policy` HTTP response
    # header, see [Content-Security-Policy][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `Content-Security-Policy` HTTP response header received from the
    #   origin with the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] content_security_policy
    #   The policy directives and their values that CloudFront includes as
    #   values for the `Content-Security-Policy` HTTP response header.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyContentSecurityPolicy AWS API Documentation
    #
    class ResponseHeadersPolicyContentSecurityPolicy < Struct.new(
      :override,
      :content_security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether CloudFront includes the `X-Content-Type-Options`
    # HTTP response header with its value set to `nosniff`.
    #
    # For more information about the `X-Content-Type-Options` HTTP response
    # header, see [X-Content-Type-Options][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `X-Content-Type-Options` HTTP response header received from the
    #   origin with the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyContentTypeOptions AWS API Documentation
    #
    class ResponseHeadersPolicyContentTypeOptions < Struct.new(
      :override)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a set of HTTP response headers that are used for
    # cross-origin resource sharing (CORS). CloudFront adds these headers to
    # HTTP responses that it sends for CORS requests that match a cache
    # behavior associated with this response headers policy.
    #
    # For more information about CORS, see [Cross-Origin Resource Sharing
    # (CORS)][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS
    #
    # @!attribute [rw] access_control_allow_origins
    #   A list of origins (domain names) that CloudFront can use as the
    #   value for the `Access-Control-Allow-Origin` HTTP response header.
    #
    #   For more information about the `Access-Control-Allow-Origin` HTTP
    #   response header, see [Access-Control-Allow-Origin][1] in the MDN Web
    #   Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowOrigins]
    #
    # @!attribute [rw] access_control_allow_headers
    #   A list of HTTP header names that CloudFront includes as values for
    #   the `Access-Control-Allow-Headers` HTTP response header.
    #
    #   For more information about the `Access-Control-Allow-Headers` HTTP
    #   response header, see [Access-Control-Allow-Headers][1] in the MDN
    #   Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowHeaders]
    #
    # @!attribute [rw] access_control_allow_methods
    #   A list of HTTP methods that CloudFront includes as values for the
    #   `Access-Control-Allow-Methods` HTTP response header.
    #
    #   For more information about the `Access-Control-Allow-Methods` HTTP
    #   response header, see [Access-Control-Allow-Methods][1] in the MDN
    #   Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowMethods]
    #
    # @!attribute [rw] access_control_allow_credentials
    #   A Boolean that CloudFront uses as the value for the
    #   `Access-Control-Allow-Credentials` HTTP response header.
    #
    #   For more information about the `Access-Control-Allow-Credentials`
    #   HTTP response header, see [Access-Control-Allow-Credentials][1] in
    #   the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials
    #   @return [Boolean]
    #
    # @!attribute [rw] access_control_expose_headers
    #   A list of HTTP headers that CloudFront includes as values for the
    #   `Access-Control-Expose-Headers` HTTP response header.
    #
    #   For more information about the `Access-Control-Expose-Headers` HTTP
    #   response header, see [Access-Control-Expose-Headers][1] in the MDN
    #   Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers
    #   @return [Types::ResponseHeadersPolicyAccessControlExposeHeaders]
    #
    # @!attribute [rw] access_control_max_age_sec
    #   A number that CloudFront uses as the value for the
    #   `Access-Control-Max-Age` HTTP response header.
    #
    #   For more information about the `Access-Control-Max-Age` HTTP
    #   response header, see [Access-Control-Max-Age][1] in the MDN Web
    #   Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age
    #   @return [Integer]
    #
    # @!attribute [rw] origin_override
    #   A Boolean that determines whether CloudFront overrides HTTP response
    #   headers received from the origin with the ones specified in this
    #   response headers policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyCorsConfig AWS API Documentation
    #
    class ResponseHeadersPolicyCorsConfig < Struct.new(
      :access_control_allow_origins,
      :access_control_allow_headers,
      :access_control_allow_methods,
      :access_control_allow_credentials,
      :access_control_expose_headers,
      :access_control_max_age_sec,
      :origin_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # An HTTP response header name and its value. CloudFront includes this
    # header in HTTP responses that it sends for requests that match a cache
    # behavior that's associated with this response headers policy.
    #
    # @!attribute [rw] header
    #   The HTTP response header name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the HTTP response header.
    #   @return [String]
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides a response
    #   header with the same name received from the origin with the header
    #   specified here.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyCustomHeader AWS API Documentation
    #
    class ResponseHeadersPolicyCustomHeader < Struct.new(
      :header,
      :value,
      :override)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of HTTP response header names and their values. CloudFront
    # includes these headers in HTTP responses that it sends for requests
    # that match a cache behavior that's associated with this response
    # headers policy.
    #
    # @!attribute [rw] quantity
    #   The number of HTTP response headers in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of HTTP response headers and their values.
    #   @return [Array<Types::ResponseHeadersPolicyCustomHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyCustomHeadersConfig AWS API Documentation
    #
    class ResponseHeadersPolicyCustomHeadersConfig < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether CloudFront includes the `X-Frame-Options` HTTP
    # response header and the header's value.
    #
    # For more information about the `X-Frame-Options` HTTP response header,
    # see [X-Frame-Options][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `X-Frame-Options` HTTP response header received from the origin with
    #   the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] frame_option
    #   The value of the `X-Frame-Options` HTTP response header. Valid
    #   values are `DENY` and `SAMEORIGIN`.
    #
    #   For more information about these values, see [X-Frame-Options][1] in
    #   the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyFrameOptions AWS API Documentation
    #
    class ResponseHeadersPolicyFrameOptions < Struct.new(
      :override,
      :frame_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # Cannot delete the response headers policy because it is attached to
    # one or more cache behaviors in a CloudFront distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyInUse AWS API Documentation
    #
    class ResponseHeadersPolicyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of response headers policies.
    #
    # @!attribute [rw] next_marker
    #   If there are more items in the list than are in this response, this
    #   element is present. It contains the value that you should use in the
    #   `Marker` field of a subsequent request to continue listing response
    #   headers policies where you left off.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   The maximum number of response headers policies requested.
    #   @return [Integer]
    #
    # @!attribute [rw] quantity
    #   The number of response headers policies returned.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The response headers policies in the list.
    #   @return [Array<Types::ResponseHeadersPolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyList AWS API Documentation
    #
    class ResponseHeadersPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether CloudFront includes the `Referrer-Policy` HTTP
    # response header and the header's value.
    #
    # For more information about the `Referrer-Policy` HTTP response header,
    # see [Referrer-Policy][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `Referrer-Policy` HTTP response header received from the origin with
    #   the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] referrer_policy
    #   The value of the `Referrer-Policy` HTTP response header. Valid
    #   values are:
    #
    #   * `no-referrer`
    #
    #   * `no-referrer-when-downgrade`
    #
    #   * `origin`
    #
    #   * `origin-when-cross-origin`
    #
    #   * `same-origin`
    #
    #   * `strict-origin`
    #
    #   * `strict-origin-when-cross-origin`
    #
    #   * `unsafe-url`
    #
    #   For more information about these values, see [Referrer-Policy][1] in
    #   the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyReferrerPolicy AWS API Documentation
    #
    class ResponseHeadersPolicyReferrerPolicy < Struct.new(
      :override,
      :referrer_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of an HTTP header that CloudFront removes from HTTP responses
    # to requests that match the cache behavior that this response headers
    # policy is attached to.
    #
    # @!attribute [rw] header
    #   The HTTP header name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyRemoveHeader AWS API Documentation
    #
    class ResponseHeadersPolicyRemoveHeader < Struct.new(
      :header)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of HTTP header names that CloudFront removes from HTTP
    # responses to requests that match the cache behavior that this response
    # headers policy is attached to.
    #
    # @!attribute [rw] quantity
    #   The number of HTTP header names in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The list of HTTP header names.
    #   @return [Array<Types::ResponseHeadersPolicyRemoveHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyRemoveHeadersConfig AWS API Documentation
    #
    class ResponseHeadersPolicyRemoveHeadersConfig < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a set of security-related HTTP response headers.
    # CloudFront adds these headers to HTTP responses that it sends for
    # requests that match a cache behavior associated with this response
    # headers policy.
    #
    # @!attribute [rw] xss_protection
    #   Determines whether CloudFront includes the `X-XSS-Protection` HTTP
    #   response header and the header's value.
    #
    #   For more information about the `X-XSS-Protection` HTTP response
    #   header, see [X-XSS-Protection][1] in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
    #   @return [Types::ResponseHeadersPolicyXSSProtection]
    #
    # @!attribute [rw] frame_options
    #   Determines whether CloudFront includes the `X-Frame-Options` HTTP
    #   response header and the header's value.
    #
    #   For more information about the `X-Frame-Options` HTTP response
    #   header, see [X-Frame-Options][1] in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options
    #   @return [Types::ResponseHeadersPolicyFrameOptions]
    #
    # @!attribute [rw] referrer_policy
    #   Determines whether CloudFront includes the `Referrer-Policy` HTTP
    #   response header and the header's value.
    #
    #   For more information about the `Referrer-Policy` HTTP response
    #   header, see [Referrer-Policy][1] in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy
    #   @return [Types::ResponseHeadersPolicyReferrerPolicy]
    #
    # @!attribute [rw] content_security_policy
    #   The policy directives and their values that CloudFront includes as
    #   values for the `Content-Security-Policy` HTTP response header.
    #
    #   For more information about the `Content-Security-Policy` HTTP
    #   response header, see [Content-Security-Policy][1] in the MDN Web
    #   Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy
    #   @return [Types::ResponseHeadersPolicyContentSecurityPolicy]
    #
    # @!attribute [rw] content_type_options
    #   Determines whether CloudFront includes the `X-Content-Type-Options`
    #   HTTP response header with its value set to `nosniff`.
    #
    #   For more information about the `X-Content-Type-Options` HTTP
    #   response header, see [X-Content-Type-Options][1] in the MDN Web
    #   Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options
    #   @return [Types::ResponseHeadersPolicyContentTypeOptions]
    #
    # @!attribute [rw] strict_transport_security
    #   Determines whether CloudFront includes the
    #   `Strict-Transport-Security` HTTP response header and the header's
    #   value.
    #
    #   For more information about the `Strict-Transport-Security` HTTP
    #   response header, see [Strict-Transport-Security][1] in the MDN Web
    #   Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security
    #   @return [Types::ResponseHeadersPolicyStrictTransportSecurity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicySecurityHeadersConfig AWS API Documentation
    #
    class ResponseHeadersPolicySecurityHeadersConfig < Struct.new(
      :xss_protection,
      :frame_options,
      :referrer_policy,
      :content_security_policy,
      :content_type_options,
      :strict_transport_security)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for enabling the `Server-Timing` header in HTTP
    # responses sent from CloudFront. CloudFront adds this header to HTTP
    # responses that it sends in response to requests that match a cache
    # behavior that's associated with this response headers policy.
    #
    # You can use the `Server-Timing` header to view metrics that can help
    # you gain insights about the behavior and performance of CloudFront.
    # For example, you can see which cache layer served a cache hit, or the
    # first byte latency from the origin when there was a cache miss. You
    # can use the metrics in the `Server-Timing` header to troubleshoot
    # issues or test the efficiency of your CloudFront configuration. For
    # more information, see [Server-Timing header][1] in the *Amazon
    # CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/understanding-response-headers-policies.html#server-timing-header
    #
    # @!attribute [rw] enabled
    #   A Boolean that determines whether CloudFront adds the
    #   `Server-Timing` header to HTTP responses that it sends in response
    #   to requests that match a cache behavior that's associated with this
    #   response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] sampling_rate
    #   A number 0–100 (inclusive) that specifies the percentage of
    #   responses that you want CloudFront to add the `Server-Timing` header
    #   to. When you set the sampling rate to 100, CloudFront adds the
    #   `Server-Timing` header to the HTTP response for every request that
    #   matches the cache behavior that this response headers policy is
    #   attached to. When you set it to 50, CloudFront adds the header to
    #   50% of the responses for requests that match the cache behavior. You
    #   can set the sampling rate to any number 0–100 with up to four
    #   decimal places.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyServerTimingHeadersConfig AWS API Documentation
    #
    class ResponseHeadersPolicyServerTimingHeadersConfig < Struct.new(
      :enabled,
      :sampling_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether CloudFront includes the `Strict-Transport-Security`
    # HTTP response header and the header's value.
    #
    # For more information about the `Strict-Transport-Security` HTTP
    # response header, see [Strict-Transport-Security][1] in the MDN Web
    # Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `Strict-Transport-Security` HTTP response header received from the
    #   origin with the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_subdomains
    #   A Boolean that determines whether CloudFront includes the
    #   `includeSubDomains` directive in the `Strict-Transport-Security`
    #   HTTP response header.
    #   @return [Boolean]
    #
    # @!attribute [rw] preload
    #   A Boolean that determines whether CloudFront includes the `preload`
    #   directive in the `Strict-Transport-Security` HTTP response header.
    #   @return [Boolean]
    #
    # @!attribute [rw] access_control_max_age_sec
    #   A number that CloudFront uses as the value for the `max-age`
    #   directive in the `Strict-Transport-Security` HTTP response header.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyStrictTransportSecurity AWS API Documentation
    #
    class ResponseHeadersPolicyStrictTransportSecurity < Struct.new(
      :override,
      :include_subdomains,
      :preload,
      :access_control_max_age_sec)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a response headers policy.
    #
    # @!attribute [rw] type
    #   The type of response headers policy, either `managed` (created by
    #   Amazon Web Services) or `custom` (created in this Amazon Web
    #   Services account).
    #   @return [String]
    #
    # @!attribute [rw] response_headers_policy
    #   The response headers policy.
    #   @return [Types::ResponseHeadersPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicySummary AWS API Documentation
    #
    class ResponseHeadersPolicySummary < Struct.new(
      :type,
      :response_headers_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether CloudFront includes the `X-XSS-Protection` HTTP
    # response header and the header's value.
    #
    # For more information about the `X-XSS-Protection` HTTP response
    # header, see [X-XSS-Protection][1] in the MDN Web Docs.
    #
    #
    #
    # [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
    #
    # @!attribute [rw] override
    #   A Boolean that determines whether CloudFront overrides the
    #   `X-XSS-Protection` HTTP response header received from the origin
    #   with the one specified in this response headers policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] protection
    #   A Boolean that determines the value of the `X-XSS-Protection` HTTP
    #   response header. When this setting is `true`, the value of the
    #   `X-XSS-Protection` header is `1`. When this setting is `false`, the
    #   value of the `X-XSS-Protection` header is `0`.
    #
    #   For more information about these settings, see [X-XSS-Protection][1]
    #   in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
    #   @return [Boolean]
    #
    # @!attribute [rw] mode_block
    #   A Boolean that determines whether CloudFront includes the
    #   `mode=block` directive in the `X-XSS-Protection` header.
    #
    #   For more information about this directive, see [X-XSS-Protection][1]
    #   in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
    #   @return [Boolean]
    #
    # @!attribute [rw] report_uri
    #   A reporting URI, which CloudFront uses as the value of the `report`
    #   directive in the `X-XSS-Protection` header.
    #
    #   You cannot specify a `ReportUri` when `ModeBlock` is `true`.
    #
    #   For more information about using a reporting URL, see
    #   [X-XSS-Protection][1] in the MDN Web Docs.
    #
    #
    #
    #   [1]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ResponseHeadersPolicyXSSProtection AWS API Documentation
    #
    class ResponseHeadersPolicyXSSProtection < Struct.new(
      :override,
      :protection,
      :mode_block,
      :report_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that identifies ways in which you want to restrict
    # distribution of your content.
    #
    # @!attribute [rw] geo_restriction
    #   A complex type that controls the countries in which your content is
    #   distributed. CloudFront determines the location of your users using
    #   `MaxMind` GeoIP databases.
    #   @return [Types::GeoRestriction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Restrictions AWS API Documentation
    #
    class Restrictions < Struct.new(
      :geo_restriction)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about the Amazon S3 bucket
    # from which you want CloudFront to get your media files for
    # distribution.
    #
    # @!attribute [rw] domain_name
    #   The DNS name of the Amazon S3 origin.
    #   @return [String]
    #
    # @!attribute [rw] origin_access_identity
    #   The CloudFront origin access identity to associate with the
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
    #   Restrict Access to Your Amazon S3 Content][1] in the <i> Amazon
    #   CloudFront Developer Guide</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/S3Origin AWS API Documentation
    #
    class S3Origin < Struct.new(
      :domain_name,
      :origin_access_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about the Amazon S3 origin.
    # If the origin is a custom origin or an S3 bucket that is configured as
    # a website endpoint, use the `CustomOriginConfig` element instead.
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
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/S3OriginConfig AWS API Documentation
    #
    class S3OriginConfig < Struct.new(
      :origin_access_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Session stickiness provides the ability to define multiple requests
    # from a single viewer as a single session. This prevents the
    # potentially inconsistent experience of sending some of a given user's
    # requests to your staging distribution, while others are sent to your
    # primary distribution. Define the session duration using TTL values.
    #
    # @!attribute [rw] idle_ttl
    #   The amount of time after which you want sessions to cease if no
    #   requests are received. Allowed values are 300–3600 seconds (5–60
    #   minutes).
    #
    #   The value must be less than or equal to `MaximumTTL`.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_ttl
    #   The maximum amount of time to consider requests from the viewer as
    #   being part of the same session. Allowed values are 300–3600 seconds
    #   (5–60 minutes).
    #
    #   The value must be less than or equal to `IdleTTL`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/SessionStickinessConfig AWS API Documentation
    #
    class SessionStickinessConfig < Struct.new(
      :idle_ttl,
      :maximum_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon Web Services accounts and the active CloudFront key
    # pairs in each account that CloudFront can use to verify the signatures
    # of signed URLs and signed cookies.
    #
    # @!attribute [rw] aws_account_number
    #   An Amazon Web Services account number that contains active
    #   CloudFront key pairs that CloudFront can use to verify the
    #   signatures of signed URLs and signed cookies. If the Amazon Web
    #   Services account that owns the key pairs is the same account that
    #   owns the CloudFront distribution, the value of this field is `self`.
    #   @return [String]
    #
    # @!attribute [rw] key_pair_ids
    #   A list of CloudFront key pair identifiers.
    #   @return [Types::KeyPairIds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Signer AWS API Documentation
    #
    class Signer < Struct.new(
      :aws_account_number,
      :key_pair_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CloudFront domain name of the staging distribution.
    #
    # @!attribute [rw] quantity
    #   The number of CloudFront domain names in your staging distribution.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The CloudFront domain name of the staging distribution.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StagingDistributionDnsNames AWS API Documentation
    #
    class StagingDistributionDnsNames < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A continuous deployment policy for this staging distribution already
    # exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StagingDistributionInUse AWS API Documentation
    #
    class StagingDistributionInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex data type for the status codes that you specify that, when
    # returned by a primary origin, trigger CloudFront to failover to a
    # second origin.
    #
    # @!attribute [rw] quantity
    #   The number of status codes.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   The items (status codes) for an origin group.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StatusCodes AWS API Documentation
    #
    class StatusCodes < Struct.new(
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A streaming distribution tells CloudFront where you want RTMP content
    # to be delivered from, and the details about how to track and manage
    # content delivery.
    #
    # @!attribute [rw] id
    #   The identifier for the RTMP distribution. For example:
    #   `EGTXBD79EXAMPLE`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the distribution. For example:
    #   `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`,
    #   where `123456789012` is your Amazon Web Services account ID.
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
    #   A complex type that lists the Amazon Web Services accounts, if any,
    #   that you included in the `TrustedSigners` complex type for this
    #   distribution. These are the accounts that you want to allow to
    #   create signed URLs for private content.
    #
    #   The `Signer` complex type lists the Amazon Web Services account
    #   number of the trusted signer or `self` if the signer is the Amazon
    #   Web Services account that created the distribution. The `Signer`
    #   element also includes the IDs of any active CloudFront key pairs
    #   that are associated with the trusted signer's Amazon Web Services
    #   account. If no `KeyPairId` element appears for a `Signer`, that
    #   signer can't create signed URLs.
    #
    #   For more information, see [Serving Private Content through
    #   CloudFront][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::ActiveTrustedSigners]
    #
    # @!attribute [rw] streaming_distribution_config
    #   The current configuration information for the RTMP distribution.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistribution AWS API Documentation
    #
    class StreamingDistribution < Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :active_trusted_signers,
      :streaming_distribution_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller reference you attempted to create the streaming
    # distribution with is associated with another distribution
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionAlreadyExists AWS API Documentation
    #
    class StreamingDistributionAlreadyExists < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The RTMP distribution's configuration information.
    #
    # @!attribute [rw] caller_reference
    #   A unique value (for example, a date-time stamp) that ensures that
    #   the request can't be replayed.
    #
    #   If the value of `CallerReference` is new (regardless of the content
    #   of the `StreamingDistributionConfig` object), CloudFront creates a
    #   new distribution.
    #
    #   If `CallerReference` is a value that you already sent in a previous
    #   request to create a distribution, CloudFront returns a
    #   `DistributionAlreadyExists` error.
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
    #   A complex type that specifies any Amazon Web Services accounts that
    #   you want to permit to create signed URLs for private content. If you
    #   want the distribution to use signed URLs, include this element; if
    #   you want the distribution to use public URLs, remove this element.
    #   For more information, see [Serving Private Content through
    #   CloudFront][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionConfig AWS API Documentation
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A streaming distribution Configuration and a list of tags to be
    # associated with the streaming distribution.
    #
    # @!attribute [rw] streaming_distribution_config
    #   A streaming distribution Configuration.
    #   @return [Types::StreamingDistributionConfig]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionConfigWithTags AWS API Documentation
    #
    class StreamingDistributionConfigWithTags < Struct.new(
      :streaming_distribution_config,
      :tags)
      SENSITIVE = []
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
    #   current Amazon Web Services account.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A complex type that contains one `StreamingDistributionSummary`
    #   element for each distribution that was created by the current Amazon
    #   Web Services account.
    #   @return [Array<Types::StreamingDistributionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionList AWS API Documentation
    #
    class StreamingDistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified CloudFront distribution is not disabled. You must
    # disable the distribution before you can delete it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionNotDisabled AWS API Documentation
    #
    class StreamingDistributionNotDisabled < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the information for a CloudFront streaming distribution.
    #
    # @!attribute [rw] id
    #   The identifier for the distribution, for example, `EDFDVBD632BHDS5`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN (Amazon Resource Name) for the streaming distribution. For
    #   example:
    #   `arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5`,
    #   where `123456789012` is your Amazon Web Services account ID.
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
    #   A complex type that specifies the Amazon Web Services accounts, if
    #   any, that you want to allow to create signed URLs for private
    #   content. If you want to require signed URLs in requests for objects
    #   in the target origin that match the `PathPattern` for this cache
    #   behavior, specify `true` for `Enabled`, and specify the applicable
    #   values for `Quantity` and `Items`.If you don't want to require
    #   signed URLs in requests for objects that match `PathPattern`,
    #   specify `false` for `Enabled` and `0` for `Quantity`. Omit `Items`.
    #   To add, change, or remove one or more trusted signers, change
    #   `Enabled` to `true` (if it's currently `false`), change `Quantity`
    #   as applicable, and specify all of the trusted signers that you want
    #   to include in the updated distribution.
    #
    #   For more information, see [Serving Private Content through
    #   CloudFront][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html
    #   @return [Types::TrustedSigners]
    #
    # @!attribute [rw] comment
    #   The comment originally specified when this distribution was created.
    #   @return [String]
    #
    # @!attribute [rw] price_class
    #   A complex type that contains information about price class for this
    #   streaming distribution.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether the distribution is enabled to accept end user requests for
    #   content.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingDistributionSummary AWS API Documentation
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for this
    # streaming distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/StreamingLoggingConfig AWS API Documentation
    #
    class StreamingLoggingConfig < Struct.new(
      :enabled,
      :bucket,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains `Tag` key and `Tag` value.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains zero or more `Tag` elements.
    #
    # @!attribute [rw] items
    #   A complex type that contains `Tag` key elements.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TagKeys AWS API Documentation
    #
    class TagKeys < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to add tags to a CloudFront resource.
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A complex type that contains zero or more `Tag` elements.
    #   @return [Types::Tags]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains zero or more `Tag` elements.
    #
    # @!attribute [rw] items
    #   A complex type that contains `Tag` elements.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/Tags AWS API Documentation
    #
    class Tags < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CloudFront function failed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TestFunctionFailed AWS API Documentation
    #
    class TestFunctionFailed < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function that you are testing.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the function that you are
    #   testing, which you can get using `DescribeFunction`.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The stage of the function that you are testing, either `DEVELOPMENT`
    #   or `LIVE`.
    #   @return [String]
    #
    # @!attribute [rw] event_object
    #   The event object to test the function with. For more information
    #   about the structure of the event object, see [Testing functions][1]
    #   in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TestFunctionRequest AWS API Documentation
    #
    class TestFunctionRequest < Struct.new(
      :name,
      :if_match,
      :stage,
      :event_object)
      SENSITIVE = [:event_object]
      include Aws::Structure
    end

    # @!attribute [rw] test_result
    #   An object that represents the result of running the function with
    #   the provided event object.
    #   @return [Types::TestResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TestFunctionResult AWS API Documentation
    #
    class TestFunctionResult < Struct.new(
      :test_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the result of testing a CloudFront function with
    # `TestFunction`.
    #
    # @!attribute [rw] function_summary
    #   Contains configuration information and metadata about the CloudFront
    #   function that was tested.
    #   @return [Types::FunctionSummary]
    #
    # @!attribute [rw] compute_utilization
    #   The amount of time that the function took to run as a percentage of
    #   the maximum allowed time. For example, a compute utilization of 35
    #   means that the function completed in 35% of the maximum allowed
    #   time.
    #   @return [String]
    #
    # @!attribute [rw] function_execution_logs
    #   Contains the log lines that the function wrote (if any) when running
    #   the test.
    #   @return [Array<String>]
    #
    # @!attribute [rw] function_error_message
    #   If the result of testing the function was an error, this field
    #   contains the error message.
    #   @return [String]
    #
    # @!attribute [rw] function_output
    #   The event object returned by the function. For more information
    #   about the structure of the event object, see [Event object
    #   structure][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/functions-event-structure.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TestResult AWS API Documentation
    #
    class TestResult < Struct.new(
      :function_summary,
      :compute_utilization,
      :function_execution_logs,
      :function_error_message,
      :function_output)
      SENSITIVE = [:function_execution_logs, :function_error_message, :function_output]
      include Aws::Structure
    end

    # The length of the `Content-Security-Policy` header value in the
    # response headers policy exceeds the maximum.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooLongCSPInResponseHeadersPolicy AWS API Documentation
    #
    class TooLongCSPInResponseHeadersPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot create more cache behaviors for the distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCacheBehaviors AWS API Documentation
    #
    class TooManyCacheBehaviors < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of cache policies for this Amazon
    # Web Services account. For more information, see [Quotas][1] (formerly
    # known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCachePolicies AWS API Documentation
    #
    class TooManyCachePolicies < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot create anymore custom SSL/TLS certificates.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCertificates AWS API Documentation
    #
    class TooManyCertificates < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause you to exceed the maximum number
    # of origin access identities allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCloudFrontOriginAccessIdentities AWS API Documentation
    #
    class TooManyCloudFrontOriginAccessIdentities < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of continuous deployment policies
    # for this Amazon Web Services account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyContinuousDeploymentPolicies AWS API Documentation
    #
    class TooManyContinuousDeploymentPolicies < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains more cookie names in the whitelist than are
    # allowed per cache behavior.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCookieNamesInWhiteList AWS API Documentation
    #
    class TooManyCookieNamesInWhiteList < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of cookies in the cache policy exceeds the maximum. For
    # more information, see [Quotas][1] (formerly known as limits) in the
    # *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCookiesInCachePolicy AWS API Documentation
    #
    class TooManyCookiesInCachePolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of cookies in the origin request policy exceeds the
    # maximum. For more information, see [Quotas][1] (formerly known as
    # limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCookiesInOriginRequestPolicy AWS API Documentation
    #
    class TooManyCookiesInOriginRequestPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of custom headers in the response headers policy exceeds
    # the maximum.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyCustomHeadersInResponseHeadersPolicy AWS API Documentation
    #
    class TooManyCustomHeadersInResponseHeadersPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains more CNAMEs than are allowed per distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionCNAMEs AWS API Documentation
    #
    class TooManyDistributionCNAMEs < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause you to exceed the maximum number
    # of distributions allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributions AWS API Documentation
    #
    class TooManyDistributions < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified cache policy. For more information, see [Quotas][1]
    # (formerly known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToCachePolicy AWS API Documentation
    #
    class TooManyDistributionsAssociatedToCachePolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified configuration for field-level encryption.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToFieldLevelEncryptionConfig AWS API Documentation
    #
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of distributions that reference this key group is more than
    # the maximum allowed. For more information, see [Quotas][1] (formerly
    # known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToKeyGroup AWS API Documentation
    #
    class TooManyDistributionsAssociatedToKeyGroup < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified origin access control.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToOriginAccessControl AWS API Documentation
    #
    class TooManyDistributionsAssociatedToOriginAccessControl < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified origin request policy. For more information, see [Quotas][1]
    # (formerly known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToOriginRequestPolicy AWS API Documentation
    #
    class TooManyDistributionsAssociatedToOriginRequestPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified response headers policy.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsAssociatedToResponseHeadersPolicy AWS API Documentation
    #
    class TooManyDistributionsAssociatedToResponseHeadersPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of distributions that are
    # associated with a CloudFront function. For more information, see
    # [Quotas][1] (formerly known as limits) in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsWithFunctionAssociations AWS API Documentation
    #
    class TooManyDistributionsWithFunctionAssociations < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause the maximum number of
    # distributions with Lambda@Edge function associations per owner to be
    # exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsWithLambdaAssociations AWS API Documentation
    #
    class TooManyDistributionsWithLambdaAssociations < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of distributions have been associated with the
    # specified Lambda@Edge function.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyDistributionsWithSingleFunctionARN AWS API Documentation
    #
    class TooManyDistributionsWithSingleFunctionARN < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of configurations for field-level encryption have
    # been created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionConfigs AWS API Documentation
    #
    class TooManyFieldLevelEncryptionConfigs < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of content type profiles for field-level encryption
    # have been created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionContentTypeProfiles AWS API Documentation
    #
    class TooManyFieldLevelEncryptionContentTypeProfiles < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of encryption entities for field-level encryption
    # have been created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionEncryptionEntities AWS API Documentation
    #
    class TooManyFieldLevelEncryptionEncryptionEntities < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of field patterns for field-level encryption have
    # been created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionFieldPatterns AWS API Documentation
    #
    class TooManyFieldLevelEncryptionFieldPatterns < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of profiles for field-level encryption have been
    # created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionProfiles AWS API Documentation
    #
    class TooManyFieldLevelEncryptionProfiles < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of query arg profiles for field-level encryption
    # have been created.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFieldLevelEncryptionQueryArgProfiles AWS API Documentation
    #
    class TooManyFieldLevelEncryptionQueryArgProfiles < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of CloudFront function
    # associations for this distribution. For more information, see
    # [Quotas][1] (formerly known as limits) in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFunctionAssociations AWS API Documentation
    #
    class TooManyFunctionAssociations < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of CloudFront functions for this
    # Amazon Web Services account. For more information, see [Quotas][1]
    # (formerly known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyFunctions AWS API Documentation
    #
    class TooManyFunctions < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of headers in the cache policy exceeds the maximum. For
    # more information, see [Quotas][1] (formerly known as limits) in the
    # *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyHeadersInCachePolicy AWS API Documentation
    #
    class TooManyHeadersInCachePolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains too many headers in forwarded values.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyHeadersInForwardedValues AWS API Documentation
    #
    class TooManyHeadersInForwardedValues < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of headers in the origin request policy exceeds the
    # maximum. For more information, see [Quotas][1] (formerly known as
    # limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyHeadersInOriginRequestPolicy AWS API Documentation
    #
    class TooManyHeadersInOriginRequestPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the maximum number of allowable InProgress
    # invalidation batch requests, or invalidation objects.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyInvalidationsInProgress AWS API Documentation
    #
    class TooManyInvalidationsInProgress < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of key groups for this Amazon Web
    # Services account. For more information, see [Quotas][1] (formerly
    # known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyKeyGroups AWS API Documentation
    #
    class TooManyKeyGroups < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of key groups referenced by this distribution is more than
    # the maximum allowed. For more information, see [Quotas][1] (formerly
    # known as limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyKeyGroupsAssociatedToDistribution AWS API Documentation
    #
    class TooManyKeyGroupsAssociatedToDistribution < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains more Lambda@Edge function associations than are
    # allowed per distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyLambdaFunctionAssociations AWS API Documentation
    #
    class TooManyLambdaFunctionAssociations < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of origin access controls in your Amazon Web Services
    # account exceeds the maximum allowed.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyOriginAccessControls AWS API Documentation
    #
    class TooManyOriginAccessControls < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains too many origin custom headers.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyOriginCustomHeaders AWS API Documentation
    #
    class TooManyOriginCustomHeaders < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause you to exceed the maximum number
    # of origin groups allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyOriginGroupsPerDistribution AWS API Documentation
    #
    class TooManyOriginGroupsPerDistribution < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of origin request policies for
    # this Amazon Web Services account. For more information, see
    # [Quotas][1] (formerly known as limits) in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyOriginRequestPolicies AWS API Documentation
    #
    class TooManyOriginRequestPolicies < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot create more origins for the distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyOrigins AWS API Documentation
    #
    class TooManyOrigins < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of public keys for field-level encryption have been
    # created. To create a new public key, delete one of the existing keys.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyPublicKeys AWS API Documentation
    #
    class TooManyPublicKeys < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of public keys in this key group is more than the maximum
    # allowed. For more information, see [Quotas][1] (formerly known as
    # limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyPublicKeysInKeyGroup AWS API Documentation
    #
    class TooManyPublicKeysInKeyGroup < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains too many query string parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyQueryStringParameters AWS API Documentation
    #
    class TooManyQueryStringParameters < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of query strings in the cache policy exceeds the maximum.
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyQueryStringsInCachePolicy AWS API Documentation
    #
    class TooManyQueryStringsInCachePolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of query strings in the origin request policy exceeds the
    # maximum. For more information, see [Quotas][1] (formerly known as
    # limits) in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyQueryStringsInOriginRequestPolicy AWS API Documentation
    #
    class TooManyQueryStringsInOriginRequestPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of real-time log configurations
    # for this Amazon Web Services account. For more information, see
    # [Quotas][1] (formerly known as limits) in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyRealtimeLogConfigs AWS API Documentation
    #
    class TooManyRealtimeLogConfigs < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of headers in `RemoveHeadersConfig` in the response headers
    # policy exceeds the maximum.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyRemoveHeadersInResponseHeadersPolicy AWS API Documentation
    #
    class TooManyRemoveHeadersInResponseHeadersPolicy < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached the maximum number of response headers policies for
    # this Amazon Web Services account.
    #
    # For more information, see [Quotas][1] (formerly known as limits) in
    # the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyResponseHeadersPolicies AWS API Documentation
    #
    class TooManyResponseHeadersPolicies < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains more CNAMEs than are allowed per distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyStreamingDistributionCNAMEs AWS API Documentation
    #
    class TooManyStreamingDistributionCNAMEs < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause you to exceed the maximum number
    # of streaming distributions allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyStreamingDistributions AWS API Documentation
    #
    class TooManyStreamingDistributions < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request contains more trusted signers than are allowed per
    # distribution.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TooManyTrustedSigners AWS API Documentation
    #
    class TooManyTrustedSigners < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The traffic configuration of your continuous deployment.
    #
    # @!attribute [rw] single_weight_config
    #   Contains the percentage of traffic to send to the staging
    #   distribution.
    #   @return [Types::ContinuousDeploymentSingleWeightConfig]
    #
    # @!attribute [rw] single_header_config
    #   Determines which HTTP requests are sent to the staging distribution.
    #   @return [Types::ContinuousDeploymentSingleHeaderConfig]
    #
    # @!attribute [rw] type
    #   The type of traffic configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TrafficConfig AWS API Documentation
    #
    class TrafficConfig < Struct.new(
      :single_weight_config,
      :single_header_config,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified key group does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TrustedKeyGroupDoesNotExist AWS API Documentation
    #
    class TrustedKeyGroupDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of key groups whose public keys CloudFront can use to verify
    # the signatures of signed URLs and signed cookies.
    #
    # @!attribute [rw] enabled
    #   This field is `true` if any of the key groups in the list have
    #   public keys that CloudFront can use to verify the signatures of
    #   signed URLs and signed cookies. If not, this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of key groups in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of key groups identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TrustedKeyGroups AWS API Documentation
    #
    class TrustedKeyGroups < Struct.new(
      :enabled,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of your trusted signers don't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TrustedSignerDoesNotExist AWS API Documentation
    #
    class TrustedSignerDoesNotExist < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of Amazon Web Services accounts whose public keys CloudFront
    # can use to verify the signatures of signed URLs and signed cookies.
    #
    # @!attribute [rw] enabled
    #   This field is `true` if any of the Amazon Web Services accounts have
    #   public keys that CloudFront can use to verify the signatures of
    #   signed URLs and signed cookies. If not, this field is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] quantity
    #   The number of Amazon Web Services accounts in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] items
    #   A list of Amazon Web Services account identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/TrustedSigners AWS API Documentation
    #
    class TrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation is not supported in this region.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UnsupportedOperation AWS API Documentation
    #
    class UnsupportedOperation < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to remove tags from a CloudFront resource.
    #
    # @!attribute [rw] resource
    #   An ARN of a CloudFront resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A complex type that contains zero or more `Tag` key elements.
    #   @return [Types::TagKeys]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy_config
    #   A cache policy configuration.
    #   @return [Types::CachePolicyConfig]
    #
    # @!attribute [rw] id
    #   The unique identifier for the cache policy that you are updating.
    #   The identifier is returned in a cache behavior's `CachePolicyId`
    #   field in the response to `GetDistributionConfig`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the cache policy that you are updating. The version
    #   is returned in the cache policy's `ETag` field in the response to
    #   `GetCachePolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCachePolicyRequest AWS API Documentation
    #
    class UpdateCachePolicyRequest < Struct.new(
      :cache_policy_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cache_policy
    #   A cache policy.
    #   @return [Types::CachePolicy]
    #
    # @!attribute [rw] etag
    #   The current version of the cache policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCachePolicyResult AWS API Documentation
    #
    class UpdateCachePolicyResult < Struct.new(
      :cache_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update an origin access identity.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCloudFrontOriginAccessIdentityRequest AWS API Documentation
    #
    class UpdateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config,
      :id,
      :if_match)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateCloudFrontOriginAccessIdentityResult AWS API Documentation
    #
    class UpdateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy_config
    #   The continuous deployment policy configuration.
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    #
    # @!attribute [rw] id
    #   The identifier of the continuous deployment policy that you are
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the continuous deployment
    #   policy that you are updating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateContinuousDeploymentPolicyRequest AWS API Documentation
    #
    class UpdateContinuousDeploymentPolicyRequest < Struct.new(
      :continuous_deployment_policy_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] continuous_deployment_policy
    #   A continuous deployment policy.
    #   @return [Types::ContinuousDeploymentPolicy]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the continuous
    #   deployment policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateContinuousDeploymentPolicyResult AWS API Documentation
    #
    class UpdateContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update a distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistributionRequest AWS API Documentation
    #
    class UpdateDistributionRequest < Struct.new(
      :distribution_config,
      :id,
      :if_match)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistributionResult AWS API Documentation
    #
    class UpdateDistributionResult < Struct.new(
      :distribution,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the primary distribution to which you are copying
    #   a staging distribution's configuration.
    #   @return [String]
    #
    # @!attribute [rw] staging_distribution_id
    #   The identifier of the staging distribution whose configuration you
    #   are copying to the primary distribution.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current versions (`ETag` values) of both primary and staging
    #   distributions. Provide these in the following format:
    #
    #   `<primary ETag>, <staging ETag>`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistributionWithStagingConfigRequest AWS API Documentation
    #
    class UpdateDistributionWithStagingConfigRequest < Struct.new(
      :id,
      :staging_distribution_id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] distribution
    #   A distribution tells CloudFront where you want content to be
    #   delivered from, and the details about how to track and manage
    #   content delivery.
    #   @return [Types::Distribution]
    #
    # @!attribute [rw] etag
    #   The current version of the primary distribution (after it's
    #   updated).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateDistributionWithStagingConfigResult AWS API Documentation
    #
    class UpdateDistributionWithStagingConfigResult < Struct.new(
      :distribution,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionConfigRequest AWS API Documentation
    #
    class UpdateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config,
      :id,
      :if_match)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionConfigResult AWS API Documentation
    #
    class UpdateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionProfileRequest AWS API Documentation
    #
    class UpdateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config,
      :id,
      :if_match)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFieldLevelEncryptionProfileResult AWS API Documentation
    #
    class UpdateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the function that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the function that you are
    #   updating, which you can get using `DescribeFunction`.
    #   @return [String]
    #
    # @!attribute [rw] function_config
    #   Configuration information about the function.
    #   @return [Types::FunctionConfig]
    #
    # @!attribute [rw] function_code
    #   The function code. For more information about writing a CloudFront
    #   function, see [Writing function code for CloudFront Functions][1] in
    #   the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFunctionRequest AWS API Documentation
    #
    class UpdateFunctionRequest < Struct.new(
      :name,
      :if_match,
      :function_config,
      :function_code)
      SENSITIVE = [:function_code]
      include Aws::Structure
    end

    # @!attribute [rw] function_summary
    #   Contains configuration information and metadata about a CloudFront
    #   function.
    #   @return [Types::FunctionSummary]
    #
    # @!attribute [rw] etag
    #   The version identifier for the current version of the CloudFront
    #   function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateFunctionResult AWS API Documentation
    #
    class UpdateFunctionResult < Struct.new(
      :function_summary,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group_config
    #   The key group configuration.
    #   @return [Types::KeyGroupConfig]
    #
    # @!attribute [rw] id
    #   The identifier of the key group that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the key group that you are updating. The version is
    #   the key group's `ETag` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateKeyGroupRequest AWS API Documentation
    #
    class UpdateKeyGroupRequest < Struct.new(
      :key_group_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_group
    #   The key group that was just updated.
    #   @return [Types::KeyGroup]
    #
    # @!attribute [rw] etag
    #   The identifier for this version of the key group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateKeyGroupResult AWS API Documentation
    #
    class UpdateKeyGroupResult < Struct.new(
      :key_group,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control_config
    #   An origin access control.
    #   @return [Types::OriginAccessControlConfig]
    #
    # @!attribute [rw] id
    #   The unique identifier of the origin access control that you are
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The current version (`ETag` value) of the origin access control that
    #   you are updating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginAccessControlRequest AWS API Documentation
    #
    class UpdateOriginAccessControlRequest < Struct.new(
      :origin_access_control_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_access_control
    #   The origin access control after it has been updated.
    #   @return [Types::OriginAccessControl]
    #
    # @!attribute [rw] etag
    #   The new version of the origin access control after it has been
    #   updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginAccessControlResult AWS API Documentation
    #
    class UpdateOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy_config
    #   An origin request policy configuration.
    #   @return [Types::OriginRequestPolicyConfig]
    #
    # @!attribute [rw] id
    #   The unique identifier for the origin request policy that you are
    #   updating. The identifier is returned in a cache behavior's
    #   `OriginRequestPolicyId` field in the response to
    #   `GetDistributionConfig`.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the origin request policy that you are updating. The
    #   version is returned in the origin request policy's `ETag` field in
    #   the response to `GetOriginRequestPolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginRequestPolicyRequest AWS API Documentation
    #
    class UpdateOriginRequestPolicyRequest < Struct.new(
      :origin_request_policy_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_request_policy
    #   An origin request policy.
    #   @return [Types::OriginRequestPolicy]
    #
    # @!attribute [rw] etag
    #   The current version of the origin request policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateOriginRequestPolicyResult AWS API Documentation
    #
    class UpdateOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key_config
    #   A public key configuration.
    #   @return [Types::PublicKeyConfig]
    #
    # @!attribute [rw] id
    #   The identifier of the public key that you are updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The value of the `ETag` header that you received when retrieving the
    #   public key to update. For example: `E2QWRUHAPOMQZL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdatePublicKeyRequest AWS API Documentation
    #
    class UpdatePublicKeyRequest < Struct.new(
      :public_key_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] public_key
    #   The public key.
    #   @return [Types::PublicKey]
    #
    # @!attribute [rw] etag
    #   The identifier of the current version of the public key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdatePublicKeyResult AWS API Documentation
    #
    class UpdatePublicKeyResult < Struct.new(
      :public_key,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_points
    #   Contains information about the Amazon Kinesis data stream where you
    #   are sending real-time log data.
    #   @return [Array<Types::EndPoint>]
    #
    # @!attribute [rw] fields
    #   A list of fields to include in each real-time log record.
    #
    #   For more information about fields, see [Real-time log configuration
    #   fields][1] in the *Amazon CloudFront Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name for this real-time log configuration.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for this real-time log configuration.
    #   @return [String]
    #
    # @!attribute [rw] sampling_rate
    #   The sampling rate for this real-time log configuration. The sampling
    #   rate determines the percentage of viewer requests that are
    #   represented in the real-time log data. You must provide an integer
    #   between 1 and 100, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateRealtimeLogConfigRequest AWS API Documentation
    #
    class UpdateRealtimeLogConfigRequest < Struct.new(
      :end_points,
      :fields,
      :name,
      :arn,
      :sampling_rate)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] realtime_log_config
    #   A real-time log configuration.
    #   @return [Types::RealtimeLogConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateRealtimeLogConfigResult AWS API Documentation
    #
    class UpdateRealtimeLogConfigResult < Struct.new(
      :realtime_log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy_config
    #   A response headers policy configuration.
    #   @return [Types::ResponseHeadersPolicyConfig]
    #
    # @!attribute [rw] id
    #   The identifier for the response headers policy that you are
    #   updating.
    #   @return [String]
    #
    # @!attribute [rw] if_match
    #   The version of the response headers policy that you are updating.
    #
    #   The version is returned in the cache policy's `ETag` field in the
    #   response to `GetResponseHeadersPolicyConfig`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateResponseHeadersPolicyRequest AWS API Documentation
    #
    class UpdateResponseHeadersPolicyRequest < Struct.new(
      :response_headers_policy_config,
      :id,
      :if_match)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] response_headers_policy
    #   A response headers policy.
    #   @return [Types::ResponseHeadersPolicy]
    #
    # @!attribute [rw] etag
    #   The current version of the response headers policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateResponseHeadersPolicyResult AWS API Documentation
    #
    class UpdateResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update a streaming distribution.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateStreamingDistributionRequest AWS API Documentation
    #
    class UpdateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config,
      :id,
      :if_match)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/UpdateStreamingDistributionResult AWS API Documentation
    #
    class UpdateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that determines the distribution's SSL/TLS
    # configuration for communicating with viewers.
    #
    # If the distribution doesn't use `Aliases` (also known as alternate
    # domain names or CNAMEs)—that is, if the distribution uses the
    # CloudFront domain name such as `d111111abcdef8.cloudfront.net`—set
    # `CloudFrontDefaultCertificate` to `true` and leave all other fields
    # empty.
    #
    # If the distribution uses `Aliases` (alternate domain names or CNAMEs),
    # use the fields in this type to specify the following settings:
    #
    # * Which viewers the distribution accepts HTTPS connections from: only
    #   viewers that support [server name indication (SNI)][1]
    #   (recommended), or all viewers including those that don't support
    #   SNI.
    #
    #   * To accept HTTPS connections from only viewers that support SNI,
    #     set `SSLSupportMethod` to `sni-only`. This is recommended. Most
    #     browsers and clients support SNI.
    #
    #   * To accept HTTPS connections from all viewers, including those that
    #     don't support SNI, set `SSLSupportMethod` to `vip`. This is not
    #     recommended, and results in additional monthly charges from
    #     CloudFront.
    #
    # * The minimum SSL/TLS protocol version that the distribution can use
    #   to communicate with viewers. To specify a minimum version, choose a
    #   value for `MinimumProtocolVersion`. For more information, see
    #   [Security Policy][2] in the *Amazon CloudFront Developer Guide*.
    #
    # * The location of the SSL/TLS certificate, [Certificate Manager
    #   (ACM)][3] (recommended) or [Identity and Access Management
    #   (IAM)][4]. You specify the location by setting a value in one of the
    #   following fields (not both):
    #
    #   * `ACMCertificateArn`
    #
    #   * `IAMCertificateId`
    #
    # All distributions support HTTPS connections from viewers. To require
    # viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use
    # `ViewerProtocolPolicy` in the `CacheBehavior` or
    # `DefaultCacheBehavior`. To specify how CloudFront should use SSL/TLS
    # to communicate with your custom origin, use `CustomOriginConfig`.
    #
    # For more information, see [Using HTTPS with CloudFront][5] and [ Using
    # Alternate Domain Names and HTTPS][6] in the *Amazon CloudFront
    # Developer Guide*.
    #
    #
    #
    # [1]: https://en.wikipedia.org/wiki/Server_Name_Indication
    # [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy
    # [3]: https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html
    # [4]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    # [5]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html
    # [6]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html
    #
    # @!attribute [rw] cloud_front_default_certificate
    #   If the distribution uses the CloudFront domain name such as
    #   `d111111abcdef8.cloudfront.net`, set this field to `true`.
    #
    #   If the distribution uses `Aliases` (alternate domain names or
    #   CNAMEs), set this field to `false` and specify values for the
    #   following fields:
    #
    #   * `ACMCertificateArn` or `IAMCertificateId` (specify a value for
    #     one, not both)
    #
    #   * `MinimumProtocolVersion`
    #
    #   * `SSLSupportMethod`
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_certificate_id
    #   If the distribution uses `Aliases` (alternate domain names or
    #   CNAMEs) and the SSL/TLS certificate is stored in [Identity and
    #   Access Management (IAM)][1], provide the ID of the IAM certificate.
    #
    #   If you specify an IAM certificate ID, you must also specify values
    #   for `MinimumProtocolVersion` and `SSLSupportMethod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html
    #   @return [String]
    #
    # @!attribute [rw] acm_certificate_arn
    #   If the distribution uses `Aliases` (alternate domain names or
    #   CNAMEs) and the SSL/TLS certificate is stored in [Certificate
    #   Manager (ACM)][1], provide the Amazon Resource Name (ARN) of the ACM
    #   certificate. CloudFront only supports ACM certificates in the US
    #   East (N. Virginia) Region (`us-east-1`).
    #
    #   If you specify an ACM certificate ARN, you must also specify values
    #   for `MinimumProtocolVersion` and `SSLSupportMethod`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html
    #   @return [String]
    #
    # @!attribute [rw] ssl_support_method
    #   If the distribution uses `Aliases` (alternate domain names or
    #   CNAMEs), specify which viewers the distribution accepts HTTPS
    #   connections from.
    #
    #   * `sni-only` – The distribution accepts HTTPS connections from only
    #     viewers that support [server name indication (SNI)][1]. This is
    #     recommended. Most browsers and clients support SNI.
    #
    #   * `vip` – The distribution accepts HTTPS connections from all
    #     viewers including those that don't support SNI. This is not
    #     recommended, and results in additional monthly charges from
    #     CloudFront.
    #
    #   * `static-ip` - Do not specify this value unless your distribution
    #     has been enabled for this feature by the CloudFront team. If you
    #     have a use case that requires static IP addresses for a
    #     distribution, contact CloudFront through the [Amazon Web Services
    #     Support Center][2].
    #
    #   If the distribution uses the CloudFront domain name such as
    #   `d111111abcdef8.cloudfront.net`, don't set a value for this field.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Server_Name_Indication
    #   [2]: https://console.aws.amazon.com/support/home
    #   @return [String]
    #
    # @!attribute [rw] minimum_protocol_version
    #   If the distribution uses `Aliases` (alternate domain names or
    #   CNAMEs), specify the security policy that you want CloudFront to use
    #   for HTTPS connections with viewers. The security policy determines
    #   two settings:
    #
    #   * The minimum SSL/TLS protocol that CloudFront can use to
    #     communicate with viewers.
    #
    #   * The ciphers that CloudFront can use to encrypt the content that it
    #     returns to viewers.
    #
    #   For more information, see [Security Policy][1] and [Supported
    #   Protocols and Ciphers Between Viewers and CloudFront][2] in the
    #   *Amazon CloudFront Developer Guide*.
    #
    #   <note markdown="1"> On the CloudFront console, this setting is called **Security
    #   Policy**.
    #
    #    </note>
    #
    #   When you're using SNI only (you set `SSLSupportMethod` to
    #   `sni-only`), you must specify `TLSv1` or higher.
    #
    #   If the distribution uses the CloudFront domain name such as
    #   `d111111abcdef8.cloudfront.net` (you set
    #   `CloudFrontDefaultCertificate` to `true`), CloudFront automatically
    #   sets the security policy to `TLSv1` regardless of the value that you
    #   set here.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy
    #   [2]: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   This field is deprecated. Use one of the following fields instead:
    #
    #   * `ACMCertificateArn`
    #
    #   * `IAMCertificateId`
    #
    #   * `CloudFrontDefaultCertificate`
    #   @return [String]
    #
    # @!attribute [rw] certificate_source
    #   This field is deprecated. Use one of the following fields instead:
    #
    #   * `ACMCertificateArn`
    #
    #   * `IAMCertificateId`
    #
    #   * `CloudFrontDefaultCertificate`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cloudfront-2020-05-31/ViewerCertificate AWS API Documentation
    #
    class ViewerCertificate < Struct.new(
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :acm_certificate_arn,
      :ssl_support_method,
      :minimum_protocol_version,
      :certificate,
      :certificate_source)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
