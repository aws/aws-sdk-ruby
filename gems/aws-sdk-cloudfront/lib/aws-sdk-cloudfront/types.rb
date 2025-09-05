# frozen_string_literal: true

# This is generated code!

module Aws::CloudFront
  # This module contains the types returned by client operations.
  module Types

    # <p>Access denied.</p>
    # @!attribute message
    #   @return [String]
    class AccessDenied < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of key groups, and the public keys in each key group, that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the key groups have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this field is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of key groups in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of key groups, including the identifiers of the public keys in each key group that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    #   @return [Array<Types::KGKeyPairIds>]
    class ActiveTrustedKeyGroups < Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list are configured as trusted signers. If not, this field is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of Amazon Web Services accounts in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of Amazon Web Services accounts and the identifiers of active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    #   @return [Array<Types::Signer>]
    class ActiveTrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions. The status is returned in the CloudFront response; you can't configure it yourself.</p> <p>For more information about ICP recordals, see <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html"> Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    # @!attribute cname
    #   <p>A domain name associated with a distribution.</p>
    #   @return [String]
    # @!attribute icp_recordal_status
    #   <p>The Internet Content Provider (ICP) recordal status for a CNAME. The ICPRecordalStatus is set to APPROVED for all CNAMEs (aliases) in Amazon Web Services Regions outside of China.</p> <p>The status values returned are the following:</p> <ul> <li> <p> <b>APPROVED</b> indicates that the associated CNAME has a valid ICP recordal number. Multiple CNAMEs can be associated with a distribution, and CNAMEs can correspond to different ICP recordals. To be marked as APPROVED, that is, valid to use with the China Regions, a CNAME must have one ICP recordal number associated with it.</p> </li> <li> <p> <b>SUSPENDED</b> indicates that the associated CNAME does not have a valid ICP recordal number.</p> </li> <li> <p> <b>PENDING</b> indicates that CloudFront can't determine the ICP recordal status of the CNAME associated with the distribution because there was an error in trying to determine the status. You can try again to see if the error is resolved in which case CloudFront returns an APPROVED or SUSPENDED status.</p> </li> </ul>
    #   @return [String]
    class AliasICPRecordal < Struct.new(
      :cname,
      :icp_recordal_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
    # @!attribute quantity
    #   <p>The number of CNAME aliases, if any, that you want to associate with this distribution.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains the CNAME aliases, if any, that you want to associate with this distribution.</p>
    #   @return [Array<String>]
    class Aliases < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
    # @!attribute quantity
    #   <p>The number of HTTP methods that you want CloudFront to forward to your origin. Valid values are 2 (for <code>GET</code> and <code>HEAD</code> requests), 3 (for <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests) and 7 (for <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests).</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains the HTTP methods that you want CloudFront to process and forward to your origin.</p>
    #   @return [Array<String>]
    # @!attribute cached_methods
    #   <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly.</p>
    #   @return [Types::CachedMethods]
    class AllowedMethods < Struct.new(
      :quantity,
      :items,
      :cached_methods,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Anycast static IP list. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/request-static-ips.html">Request Anycast static IPs to use for allowlisting</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Anycast static IP list. Valid values: <code>Deployed</code>, <code>Deploying</code>, or <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute anycast_ips
    #   <p>The static IP addresses that are allocated to the Anycast static IP list.</p>
    #   @return [Array<String>]
    # @!attribute ip_count
    #   <p>The number of IP addresses in the Anycast static IP list.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The last time the Anycast static IP list was modified.</p>
    #   @return [Time]
    class AnycastIpList < Struct.new(
      :id,
      :name,
      :status,
      :arn,
      :anycast_ips,
      :ip_count,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Anycast static IP list collection.</p>
    # @!attribute items
    #   <p>Items in the Anycast static IP list collection. Each item is of the <a>AnycastIpListSummary</a> structure type.</p>
    #   @return [Array<Types::AnycastIpListSummary>]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>Indicates the next page of the Anycast static IP list collection. To get the next page of the list, use this value in the <code>Marker</code> field of your request.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of Anycast static IP list collections that you want returned in the response.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>If there are more items in the list collection than are in this response, this value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The quantity of Anycast static IP lists in the collection.</p>
    #   @return [Integer]
    class AnycastIpListCollection < Struct.new(
      :items,
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An abbreviated version of the <a>AnycastIpList</a> structure. Omits the allocated static IP addresses (<a>AnycastIpList$AnycastIps</a>).</p>
    # @!attribute id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The deployment status of the Anycast static IP list. Valid values: Deployed, Deploying, or Failed.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute ip_count
    #   <p>The number of IP addresses in the Anycast static IP list.</p>
    #   @return [Integer]
    # @!attribute last_modified_time
    #   <p>The last time the Anycast static IP list was modified.</p>
    #   @return [Time]
    class AnycastIpListSummary < Struct.new(
      :id,
      :name,
      :status,
      :arn,
      :ip_count,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_distribution_id
    #   <p>The ID of the standard distribution that you're associating the alias with.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias (also known as a CNAME) to add to the target standard distribution.</p>
    #   @return [String]
    class AssociateAliasRequest < Struct.new(
      :target_distribution_id,
      :alias,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current <code>ETag</code> of the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    #   @return [String]
    class AssociateDistributionTenantWebACLRequest < Struct.new(
      :id,
      :web_acl_arn,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WAF web ACL that you associated with the distribution tenant.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class AssociateDistributionTenantWebACLResult < Struct.new(
      :id,
      :web_acl_arn,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution.</p>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web ACL to associate.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're associating with the WAF web ACL.</p>
    #   @return [String]
    class AssociateDistributionWebACLRequest < Struct.new(
      :id,
      :web_acl_arn,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution.</p>
    #   @return [String]
    # @!attribute web_acl_arn
    #   <p>The ARN of the WAF web ACL that you associated with the distribution.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution.</p>
    #   @return [String]
    class AssociateDistributionWebACLResult < Struct.new(
      :id,
      :web_acl_arn,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Invalidation batch specified is too large.</p>
    # @!attribute message
    #   @return [String]
    class BatchTooLarge < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CNAME specified is already defined for CloudFront.</p>
    # @!attribute message
    #   @return [String]
    class CNAMEAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes how CloudFront processes requests.</p> <p>You must create at least as many cache behaviors (including the default cache behavior) as you have origins if you want CloudFront to serve objects from all of the origins. Each cache behavior specifies the one origin from which you want CloudFront to get objects. If you have two origins and only the default cache behavior, the default cache behavior will cause CloudFront to get objects from one of the origins, but the other origin is never used.</p> <p>For the current quota (formerly known as limit) on the number of cache behaviors that you can add to a distribution, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you don't want to specify any cache behaviors, include only an empty <code>CacheBehaviors</code> element. Don't specify an empty individual <code>CacheBehavior</code> element, because this is invalid. For more information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CacheBehaviors.html">CacheBehaviors</a>. </p> <p>To delete all cache behaviors in an existing distribution, update the distribution configuration and include only an empty <code>CacheBehaviors</code> element.</p> <p>To add, change, or remove one or more cache behaviors, update the distribution configuration and specify all of the cache behaviors that you want to include in the updated distribution.</p> <important> <p>If your minimum TTL is greater than 0, CloudFront will cache content for at least the duration specified in the cache policy's minimum TTL, even if the <code>Cache-Control: no-cache</code>, <code>no-store</code>, or <code>private</code> directives are present in the origin headers.</p> </important> <p>For more information about cache behaviors, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesCacheBehavior">Cache Behavior Settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute path_pattern
    #   <p>The pattern (for example, <code>images/*.jpg</code>) that specifies which requests to apply the behavior to. When CloudFront receives a viewer request, the requested path is compared with path patterns in the order in which cache behaviors are listed in the distribution.</p> <note> <p>You can optionally include a slash (<code>/</code>) at the beginning of the path pattern. For example, <code>/images/*.jpg</code>. CloudFront behavior is the same with or without the leading <code>/</code>.</p> </note> <p>The path pattern for the default cache behavior is <code>*</code> and cannot be changed. If the request for an object does not match the path pattern for any cache behaviors, CloudFront applies the behavior in the default cache behavior.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesPathPattern">Path Pattern</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute target_origin_id
    #   <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they match this cache behavior.</p>
    #   @return [String]
    # @!attribute trusted_signers
    #   <important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in the trusted signer's Amazon Web Services account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedSigners]
    # @!attribute trusted_key_groups
    #   <p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedKeyGroups]
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
    #   @return [String]
    # @!attribute allowed_methods
    #   <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
    #   @return [Types::AllowedMethods]
    # @!attribute smooth_streaming
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>.</p>
    #   @return [Boolean]
    # @!attribute compress
    #   <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify true; if not, specify false. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute lambda_function_associations
    #   <p>A complex type that contains zero or more Lambda@Edge function associations for a cache behavior.</p>
    #   @return [Types::LambdaFunctionAssociations]
    # @!attribute function_associations
    #   <p>A list of CloudFront functions that are associated with this cache behavior. CloudFront functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>
    #   @return [Types::FunctionAssociations]
    # @!attribute field_level_encryption_id
    #   <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for this cache behavior.</p>
    #   @return [String]
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_policy_id
    #   <p>The unique identifier of the cache policy that is attached to this cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>CacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p>
    #   @return [String]
    # @!attribute origin_request_policy_id
    #   <p>The unique identifier of the origin request policy that is attached to this cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute response_headers_policy_id
    #   <p>The identifier for a response headers policy.</p>
    #   @return [String]
    # @!attribute grpc_config
    #   <p>The gRPC configuration for your cache behavior.</p>
    #   @return [Types::GrpcConfig]
    # @!attribute forwarded_values
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>CacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    #   @deprecated
    #   @return [Types::ForwardedValues]
    # @!attribute min_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html"> Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i> Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute default_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute max_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @deprecated
    #   @return [Integer]
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
      :grpc_config,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>
    # @!attribute quantity
    #   <p>The number of cache behaviors for this distribution.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Optional: A complex type that contains cache behaviors for this distribution. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
    #   @return [Array<Types::CacheBehavior>]
    class CacheBehaviors < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cache policy.</p> <p>When it's attached to a cache behavior, the cache policy determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are also included in requests that CloudFront sends to the origin. CloudFront sends a request when it can't find a valid object in its cache that matches the request's cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>
    # @!attribute id
    #   <p>The unique identifier for the cache policy.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time when the cache policy was last modified.</p>
    #   @return [Time]
    # @!attribute cache_policy_config
    #   <p>The cache policy configuration.</p>
    #   @return [Types::CachePolicyConfig]
    class CachePolicy < Struct.new(
      :id,
      :last_modified_time,
      :cache_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cache policy with this name already exists. You must provide a unique name. To modify an existing cache policy, use <code>UpdateCachePolicy</code>.</p>
    # @!attribute message
    #   @return [String]
    class CachePolicyAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A cache policy configuration.</p> <p>This configuration determines the following:</p> <ul> <li> <p>The values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> </li> <li> <p>The default, minimum, and maximum time to live (TTL) values that you want objects to stay in the CloudFront cache.</p> <important> <p>If your minimum TTL is greater than 0, CloudFront will cache content for at least the duration specified in the cache policy's minimum TTL, even if the <code>Cache-Control: no-cache</code>, <code>no-store</code>, or <code>private</code> directives are present in the origin headers.</p> </important> </li> </ul> <p>The headers, cookies, and query strings that are included in the cache key are also included in requests that CloudFront sends to the origin. CloudFront sends a request when it can't find a valid object in its cache that matches the request's cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>
    # @!attribute comment
    #   <p>A comment to describe the cache policy. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name to identify the cache policy.</p>
    #   @return [String]
    # @!attribute default_ttl
    #   <p>The default amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value as the object's time to live (TTL) only when the origin does <i>not</i> send <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 86400 seconds (one day). If the value of <code>MinTTL</code> is more than 86400 seconds, then the default value for this field is the same as the value of <code>MinTTL</code>.</p>
    #   @return [Integer]
    # @!attribute max_ttl
    #   <p>The maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. CloudFront uses this value only when the origin sends <code>Cache-Control</code> or <code>Expires</code> headers with the object. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default value for this field is 31536000 seconds (one year). If the value of <code>MinTTL</code> or <code>DefaultTTL</code> is more than 31536000 seconds, then the default value for this field is the same as the value of <code>DefaultTTL</code>.</p>
    #   @return [Integer]
    # @!attribute min_ttl
    #   <p>The minimum amount of time, in seconds, that you want objects to stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute parameters_in_cache_key_and_forwarded_to_origin
    #   <p>The HTTP headers, cookies, and URL query strings to include in the cache key. The values included in the cache key are also included in requests that CloudFront sends to the origin.</p>
    #   @return [Types::ParametersInCacheKeyAndForwardedToOrigin]
    class CachePolicyConfig < Struct.new(
      :comment,
      :name,
      :default_ttl,
      :max_ttl,
      :min_ttl,
      :parameters_in_cache_key_and_forwarded_to_origin,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    # @!attribute cookie_behavior
    #   <p>Determines whether any cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No cookies in viewer requests are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those that are listed in the <code>CookieNames</code> type, which are not included.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>
    #   @return [String]
    # @!attribute cookies
    #   <p>Contains a list of cookie names.</p>
    #   @return [Types::CookieNames]
    class CachePolicyCookiesConfig < Struct.new(
      :cookie_behavior,
      :cookies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    # @!attribute header_behavior
    #   <p>Determines whether any HTTP headers are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No HTTP headers are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the HTTP headers that are listed in the <code>Headers</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>
    #   @return [String]
    # @!attribute headers
    #   <p>Contains a list of HTTP header names.</p>
    #   @return [Types::Headers]
    class CachePolicyHeadersConfig < Struct.new(
      :header_behavior,
      :headers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the cache policy because it is attached to one or more cache behaviors.</p>
    # @!attribute message
    #   @return [String]
    class CachePolicyInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of cache policies.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing cache policies where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of cache policies requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The total number of cache policies returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the cache policies in the list.</p>
    #   @return [Array<Types::CachePolicySummary>]
    class CachePolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    # @!attribute query_string_behavior
    #   <p>Determines whether any URL query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No query strings in viewer requests are included in the cache key or in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in an <code>OriginRequestPolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin, <i> <b>except</b> </i> those that are listed in the <code>QueryStringNames</code> type, which are not included.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in the cache key and in requests that CloudFront sends to the origin.</p> </li> </ul>
    #   @return [String]
    # @!attribute query_strings
    #   <p>Contains the specific query strings in viewer requests that either <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in the cache key and in requests that CloudFront sends to the origin. The behavior depends on whether the <code>QueryStringBehavior</code> field in the <code>CachePolicyQueryStringsConfig</code> type is set to <code>whitelist</code> (the listed query strings <i> <b>are</b> </i> included) or <code>allExcept</code> (the listed query strings <i> <b>are not</b> </i> included, but all other query strings are).</p>
    #   @return [Types::QueryStringNames]
    class CachePolicyQueryStringsConfig < Struct.new(
      :query_string_behavior,
      :query_strings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a cache policy.</p>
    # @!attribute type
    #   <p>The type of cache policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>
    #   @return [String]
    # @!attribute cache_policy
    #   <p>The cache policy.</p>
    #   @return [Types::CachePolicy]
    class CachePolicySummary < Struct.new(
      :type,
      :cache_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls whether CloudFront caches the response to requests using the specified HTTP methods. There are two choices:</p> <ul> <li> <p>CloudFront caches responses to <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront caches responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> </ul> <p>If you pick the second choice for your Amazon S3 Origin, you may need to forward Access-Control-Request-Method, Access-Control-Request-Headers, and Origin headers for the responses to be cached correctly.</p>
    # @!attribute quantity
    #   <p>The number of HTTP methods for which you want CloudFront to cache responses. Valid values are <code>2</code> (for caching responses to <code>GET</code> and <code>HEAD</code> requests) and <code>3</code> (for caching responses to <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests).</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains the HTTP methods that you want CloudFront to cache responses to. Valid values for <code>CachedMethods</code> include <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code>, depending on which caching option you choose. For more information, see the preceding section.</p>
    #   @return [Array<String>]
    class CachedMethods < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You can't change the value of a public key.</p>
    # @!attribute message
    #   @return [String]
    class CannotChangeImmutablePublicKeyFields < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity cannot be deleted while it is in use.</p>
    # @!attribute message
    #   @return [String]
    class CannotDeleteEntityWhileInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity cannot be updated while it is in use.</p>
    # @!attribute message
    #   @return [String]
    class CannotUpdateEntityWhileInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Certificate Manager (ACM) certificate associated with your distribution.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the ACM certificate.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>CloudFront origin access identity.</p>
    # @!attribute id
    #   <p>The ID for the origin access identity, for example, <code>E74FTE3AJFJ256A</code>. </p>
    #   @return [String]
    # @!attribute s3_canonical_user_id
    #   <p>The Amazon S3 canonical user ID for the origin access identity, used when giving the origin access identity read permission to an object in Amazon S3.</p>
    #   @return [String]
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity.</p>
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    class CloudFrontOriginAccessIdentity < Struct.new(
      :id,
      :s3_canonical_user_id,
      :cloud_front_origin_access_identity_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
    # @!attribute message
    #   @return [String]
    class CloudFrontOriginAccessIdentityAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Origin access identity configuration. Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/CloudFront/identity ID/config</code> resource.</p>
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>CloudFrontOriginAccessIdentityConfig</code> object), a new origin access identity is created.</p> <p>If the <code>CallerReference</code> is a value already sent in a previous identity request, and the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is identical to the original request (ignoring white space), the response includes the same information returned to the original request.</p> <p>If the <code>CallerReference</code> is a value you already sent in a previous request to create an identity, but the content of the <code>CloudFrontOriginAccessIdentityConfig</code> is different from the original request, CloudFront returns a <code>CloudFrontOriginAccessIdentityAlreadyExists</code> error. </p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment to describe the origin access identity. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    class CloudFrontOriginAccessIdentityConfig < Struct.new(
      :caller_reference,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Origin Access Identity specified is already in use.</p>
    # @!attribute message
    #   @return [String]
    class CloudFrontOriginAccessIdentityInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lists the origin access identities for CloudFront.Send a <code>GET</code> request to the <code>/<i>CloudFront API version</i>/origin-access-identity/cloudfront</code> resource. The response includes a <code>CloudFrontOriginAccessIdentityList</code> element with zero or more <code>CloudFrontOriginAccessIdentitySummary</code> child elements. By default, your entire list of origin access identities is returned in one single page. If the list is long, you can paginate it using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your origin access identities where they left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin access identities you want in the response body.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more origin access identities remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more items in the list.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of CloudFront origin access identities that were created by the current Amazon Web Services account.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains one <code>CloudFrontOriginAccessIdentitySummary</code> element for each origin access identity that was created by the current Amazon Web Services account.</p>
    #   @return [Array<Types::CloudFrontOriginAccessIdentitySummary>]
    class CloudFrontOriginAccessIdentityList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary of the information about a CloudFront origin access identity.</p>
    # @!attribute id
    #   <p>The ID for the origin access identity. For example: <code>E74FTE3AJFJ256A</code>.</p>
    #   @return [String]
    # @!attribute s3_canonical_user_id
    #   <p>The Amazon S3 canonical user ID for the origin access identity, which you use when giving the origin access identity read permission to an object in Amazon S3.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>The comment for this origin access identity, as originally specified when created.</p>
    #   @return [String]
    class CloudFrontOriginAccessIdentitySummary < Struct.new(
      :id,
      :s3_canonical_user_id,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An alias (also called a CNAME) and the CloudFront standard distribution and Amazon Web Services account ID that it's associated with. The standard distribution and account IDs are partially hidden, which allows you to identify the standard distributions and accounts that you own, and helps to protect the information of ones that you don't own.</p>
    # @!attribute alias
    #   <p>An alias (also called a CNAME).</p>
    #   @return [String]
    # @!attribute distribution_id
    #   <p>The (partially hidden) ID of the CloudFront standard distribution associated with the alias.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The (partially hidden) ID of the Amazon Web Services account that owns the standard distribution that's associated with the alias.</p>
    #   @return [String]
    class ConflictingAlias < Struct.new(
      :alias,
      :distribution_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of aliases (also called CNAMEs) and the CloudFront standard distributions and Amazon Web Services accounts that they are associated with. In the list, the standard distribution and account IDs are partially hidden, which allows you to identify the standard distributions and accounts that you own, but helps to protect the information of ones that you don't own.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing conflicting aliases where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of conflicting aliases requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of conflicting aliases returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the conflicting aliases in the list.</p>
    #   @return [Array<Types::ConflictingAlias>]
    class ConflictingAliasesList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The connection group for your distribution tenants. When you first create a distribution tenant and you don't specify a connection group, CloudFront will automatically create a default connection group for you. When you create a new distribution tenant and don't specify a connection group, the default one will be associated with your distribution tenant.</p>
    # @!attribute id
    #   <p>The ID of the connection group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection group.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the connection group was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time when the connection group was updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    # @!attribute ipv6_enabled
    #   <p>IPv6 is enabled for the connection group.</p>
    #   @return [Boolean]
    # @!attribute routing_endpoint
    #   <p>The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.</p>
    #   @return [String]
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the connection group.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the connection group is enabled.</p>
    #   @return [Boolean]
    # @!attribute is_default
    #   <p>Whether the connection group is the default connection group for the distribution tenants.</p>
    #   @return [Boolean]
    class ConnectionGroup < Struct.new(
      :id,
      :name,
      :arn,
      :created_time,
      :last_modified_time,
      :tags,
      :ipv6_enabled,
      :routing_endpoint,
      :anycast_ip_list_id,
      :status,
      :enabled,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about what CloudFront resources your connection groups are associated with.</p>
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    class ConnectionGroupAssociationFilter < Struct.new(
      :anycast_ip_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary that contains details about your connection groups.</p>
    # @!attribute id
    #   <p>The ID of the connection group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the connection group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the connection group.</p>
    #   @return [String]
    # @!attribute routing_endpoint
    #   <p>The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the connection group was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time when the connection group was updated.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The current version of the connection group.</p>
    #   @return [String]
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the connection group is enabled</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the connection group.</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>Whether the connection group is the default connection group for the distribution tenants.</p>
    #   @return [Boolean]
    class ConnectionGroupSummary < Struct.new(
      :id,
      :name,
      :arn,
      :routing_endpoint,
      :created_time,
      :last_modified_time,
      :e_tag,
      :anycast_ip_list_id,
      :enabled,
      :status,
      :is_default,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A field-level encryption content type profile.</p>
    # @!attribute format
    #   <p>The format for a field-level encryption content type-profile mapping.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The profile ID for a field-level encryption content type-profile mapping.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type for a field-level encryption content type-profile mapping.</p>
    #   @return [String]
    class ContentTypeProfile < Struct.new(
      :format,
      :profile_id,
      :content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a field-level encryption content type-profile mapping.</p>
    # @!attribute forward_when_content_type_is_unknown
    #   <p>The setting in a field-level encryption content type-profile mapping that specifies what to do when an unknown content type is provided for the profile. If true, content is forwarded without being encrypted when the content type is unknown. If false (the default), an error is returned when the content type is unknown.</p>
    #   @return [Boolean]
    # @!attribute content_type_profiles
    #   <p>The configuration for a field-level encryption content type-profile.</p>
    #   @return [Types::ContentTypeProfiles]
    class ContentTypeProfileConfig < Struct.new(
      :forward_when_content_type_is_unknown,
      :content_type_profiles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Field-level encryption content type-profile.</p>
    # @!attribute quantity
    #   <p>The number of field-level encryption content type-profile mappings.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Items in a field-level encryption content type-profile mapping.</p>
    #   @return [Array<Types::ContentTypeProfile>]
    class ContentTypeProfiles < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A continuous deployment policy.</p>
    # @!attribute id
    #   <p>The identifier of the continuous deployment policy.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time the continuous deployment policy was last modified.</p>
    #   @return [Time]
    # @!attribute continuous_deployment_policy_config
    #   <p>Contains the configuration for a continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    class ContinuousDeploymentPolicy < Struct.new(
      :id,
      :last_modified_time,
      :continuous_deployment_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A continuous deployment policy with this configuration already exists.</p>
    # @!attribute message
    #   @return [String]
    class ContinuousDeploymentPolicyAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration for a continuous deployment policy.</p>
    # @!attribute staging_distribution_dns_names
    #   <p>The CloudFront domain name of the staging distribution. For example: <code>d111111abcdef8.cloudfront.net</code>.</p>
    #   @return [Types::StagingDistributionDnsNames]
    # @!attribute enabled
    #   <p>A Boolean that indicates whether this continuous deployment policy is enabled (in effect). When this value is <code>true</code>, this policy is enabled and in effect. When this value is <code>false</code>, this policy is not enabled and has no effect.</p>
    #   @return [Boolean]
    # @!attribute traffic_config
    #   <p>Contains the parameters for routing production traffic from your primary to staging distributions.</p>
    #   @return [Types::TrafficConfig]
    class ContinuousDeploymentPolicyConfig < Struct.new(
      :staging_distribution_dns_names,
      :enabled,
      :traffic_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot delete a continuous deployment policy that is associated with a primary distribution.</p>
    # @!attribute message
    #   @return [String]
    class ContinuousDeploymentPolicyInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of continuous deployment policies.</p>
    # @!attribute next_marker
    #   <p>Indicates the next page of continuous deployment policies. To get the next page of the list, use this value in the <code>Marker</code> field of your request.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of continuous deployment policies that were specified in your request.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The total number of continuous deployment policies in your Amazon Web Services account, regardless of the <code>MaxItems</code> value.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of continuous deployment policy items.</p>
    #   @return [Array<Types::ContinuousDeploymentPolicySummary>]
    class ContinuousDeploymentPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the information about your continuous deployment policies.</p>
    # @!attribute continuous_deployment_policy
    #   <p>The continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicy]
    class ContinuousDeploymentPolicySummary < Struct.new(
      :continuous_deployment_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This configuration determines which HTTP requests are sent to the staging distribution. If the HTTP request contains a header and value that matches what you specify here, the request is sent to the staging distribution. Otherwise the request is sent to the primary distribution.</p>
    # @!attribute header
    #   <p>The request header name that you want CloudFront to send to your staging distribution. The header must contain the prefix <code>aws-cf-cd-</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The request header value.</p>
    #   @return [String]
    class ContinuousDeploymentSingleHeaderConfig < Struct.new(
      :header,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the percentage of traffic to send to a staging distribution.</p>
    # @!attribute weight
    #   <p>The percentage of traffic to send to a staging distribution, expressed as a decimal number between 0 and 0.15. For example, a value of 0.10 means 10% of traffic is sent to the staging distribution.</p>
    #   @return [Float]
    # @!attribute session_stickiness_config
    #   <p>Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to your staging distribution, while others are sent to your primary distribution. Define the session duration using TTL values.</p>
    #   @return [Types::SessionStickinessConfig]
    class ContinuousDeploymentSingleWeightConfig < Struct.new(
      :weight,
      :session_stickiness_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of cookie names.</p>
    # @!attribute quantity
    #   <p>The number of cookie names in the <code>Items</code> list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of cookie names.</p>
    #   @return [Array<String>]
    class CookieNames < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use <code>CookiesConfig</code> in a cache policy. See <code>CachePolicy</code>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use <code>CookiesConfig</code> in an origin request policy. See <code>OriginRequestPolicy</code>.</p> <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">Caching Content Based on Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute forward
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Specifies which cookies to forward to the origin for this cache behavior: all, none, or the list of cookies specified in the <code>WhitelistedNames</code> complex type.</p> <p>Amazon S3 doesn't process cookies. When the cache behavior is forwarding requests to an Amazon S3 origin, specify none for the <code>Forward</code> element.</p>
    #   @return [String]
    # @!attribute whitelisted_names
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Required if you specify <code>whitelist</code> for the value of <code>Forward</code>. A complex type that specifies how many different cookies you want CloudFront to forward to the origin for this cache behavior and, if you want to forward selected cookies, the names of those cookies.</p> <p>If you specify <code>all</code> or <code>none</code> for the value of <code>Forward</code>, omit <code>WhitelistedNames</code>. If you change the value of <code>Forward</code> from <code>whitelist</code> to <code>all</code> or <code>none</code> and you don't delete the <code>WhitelistedNames</code> element and its child elements, CloudFront deletes them automatically.</p> <p>For the current limit on the number of cookie names that you can whitelist for each cache behavior, see <a href="https://docs.aws.amazon.com/general/latest/gr/xrefaws_service_limits.html#limits_cloudfront"> CloudFront Limits</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Types::CookieNames]
    class CookiePreference < Struct.new(
      :forward,
      :whitelisted_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute primary_distribution_id
    #   <p>The identifier of the primary distribution whose configuration you are copying. To get a distribution ID, use <code>ListDistributions</code>.</p>
    #   @return [String]
    # @!attribute staging
    #   <p>The type of distribution that your primary distribution will be copied to. The only valid value is <code>True</code>, indicating that you are copying to a staging distribution.</p>
    #   @return [Boolean]
    # @!attribute if_match
    #   <p>The version identifier of the primary distribution whose configuration you are copying. This is the <code>ETag</code> value returned in the response to <code>GetDistribution</code> and <code>GetDistributionConfig</code>.</p>
    #   @return [String]
    # @!attribute caller_reference
    #   <p>A value that uniquely identifies a request to create a resource. This helps to prevent CloudFront from creating a duplicate resource if you accidentally resubmit an identical request.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>A Boolean flag to specify the state of the staging distribution when it's created. When you set this value to <code>True</code>, the staging distribution is enabled. When you set this value to <code>False</code>, the staging distribution is disabled.</p> <p>If you omit this field, the default value is <code>True</code>.</p>
    #   @return [Boolean]
    class CopyDistributionRequest < Struct.new(
      :primary_distribution_id,
      :staging,
      :if_match,
      :caller_reference,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution
    #   <p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.</p>
    #   @return [Types::Distribution]
    # @!attribute location
    #   <p>The URL of the staging distribution.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the staging distribution.</p>
    #   @return [String]
    class CopyDistributionResult < Struct.new(
      :distribution,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Name of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute ip_count
    #   <p>The number of static IP addresses that are allocated to the Anycast static IP list. Valid values: 21 or 3.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class CreateAnycastIpListRequest < Struct.new(
      :name,
      :ip_count,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute anycast_ip_list
    #   <p>A response structure that includes the version identifier (ETag) and the created <a>AnycastIpList</a> structure.</p>
    #   @return [Types::AnycastIpList]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the Anycast static IP list.</p>
    #   @return [String]
    class CreateAnycastIpListResult < Struct.new(
      :anycast_ip_list,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy_config
    #   <p>A cache policy configuration.</p>
    #   @return [Types::CachePolicyConfig]
    class CreateCachePolicyRequest < Struct.new(
      :cache_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy
    #   <p>A cache policy.</p>
    #   @return [Types::CachePolicy]
    # @!attribute location
    #   <p>The fully qualified URI of the cache policy just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #   @return [String]
    class CreateCachePolicyResult < Struct.new(
      :cache_policy,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new origin access identity (OAI). An origin access identity is a special CloudFront user that you can associate with Amazon S3 origins, so that you can secure all or just some of your Amazon S3 content. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html"> Restricting Access to Amazon S3 Content by Using an Origin Access Identity</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The current configuration information for the identity.</p>
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    class CreateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #   @return [Types::CloudFrontOriginAccessIdentity]
    # @!attribute location
    #   <p>The fully qualified URI of the new origin access identity just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the origin access identity created.</p>
    #   @return [String]
    class CreateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the connection group. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the connection group.</p>
    #   @return [String]
    # @!attribute ipv6_enabled
    #   <p>Enable IPv6 for the connection group. The default is <code>true</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Enable the connection group.</p>
    #   @return [Boolean]
    class CreateConnectionGroupRequest < Struct.new(
      :name,
      :ipv6_enabled,
      :tags,
      :anycast_ip_list_id,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_group
    #   <p>The connection group that you created.</p>
    #   @return [Types::ConnectionGroup]
    # @!attribute e_tag
    #   <p>The current version of the connection group.</p>
    #   @return [String]
    class CreateConnectionGroupResult < Struct.new(
      :connection_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy_config
    #   <p>Contains the configuration for a continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    class CreateContinuousDeploymentPolicyRequest < Struct.new(
      :continuous_deployment_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy
    #   <p>A continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicy]
    # @!attribute location
    #   <p>The location of the continuous deployment policy.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the continuous deployment policy.</p>
    #   @return [String]
    class CreateContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new distribution.</p>
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #   @return [Types::DistributionConfig]
    class CreateDistributionRequest < Struct.new(
      :distribution_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #   @return [Types::Distribution]
    # @!attribute location
    #   <p>The fully qualified URI of the new distribution resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #   @return [String]
    class CreateDistributionResult < Struct.new(
      :distribution,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the multi-tenant distribution to use for creating the distribution tenant.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution tenant. Enter a friendly identifier that is unique within your Amazon Web Services account. This name can't be updated after you create the distribution tenant.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The domains associated with the distribution tenant. You must specify at least one domain in the request.</p>
    #   @return [Array<Types::DomainItem>]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    # @!attribute customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    #   @return [Types::Customizations]
    # @!attribute parameters
    #   <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute connection_group_id
    #   <p>The ID of the connection group to associate with the distribution tenant.</p>
    #   @return [String]
    # @!attribute managed_certificate_request
    #   <p>The configuration for the CloudFront managed ACM certificate request.</p>
    #   @return [Types::ManagedCertificateRequest]
    # @!attribute enabled
    #   <p>Indicates whether the distribution tenant should be enabled when created. If the distribution tenant is disabled, the distribution tenant won't serve traffic.</p>
    #   @return [Boolean]
    class CreateDistributionTenantRequest < Struct.new(
      :distribution_id,
      :name,
      :domains,
      :tags,
      :customizations,
      :parameters,
      :connection_group_id,
      :managed_certificate_request,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_tenant
    #   <p>The distribution tenant that you created.</p>
    #   @return [Types::DistributionTenant]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class CreateDistributionTenantResult < Struct.new(
      :distribution_tenant,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new distribution with tags.</p>
    # @!attribute distribution_config_with_tags
    #   <p>The distribution's configuration information.</p>
    #   @return [Types::DistributionConfigWithTags]
    class CreateDistributionWithTagsRequest < Struct.new(
      :distribution_config_with_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #   @return [Types::Distribution]
    # @!attribute location
    #   <p>The fully qualified URI of the new distribution resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #   @return [String]
    class CreateDistributionWithTagsResult < Struct.new(
      :distribution,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>The request to create a new field-level encryption configuration.</p>
    #   @return [Types::FieldLevelEncryptionConfig]
    class CreateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Returned when you create a new field-level encryption configuration.</p>
    #   @return [Types::FieldLevelEncryption]
    # @!attribute location
    #   <p>The fully qualified URI of the new configuration resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class CreateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>The request to create a field-level encryption profile.</p>
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    class CreateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Returned when you create a new field-level encryption profile.</p>
    #   @return [Types::FieldLevelEncryptionProfile]
    # @!attribute location
    #   <p>The fully qualified URI of the new profile resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class CreateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name to identify the function.</p>
    #   @return [String]
    # @!attribute function_config
    #   <p>Configuration information about the function, including an optional comment and the function's runtime.</p>
    #   @return [Types::FunctionConfig]
    # @!attribute function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class CreateFunctionRequest < Struct.new(
      :name,
      :function_config,
      :function_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #   @return [Types::FunctionSummary]
    # @!attribute location
    #   <p>The URL of the CloudFront function. Use the URL to manage the function with the CloudFront API.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #   @return [String]
    class CreateFunctionResult < Struct.new(
      :function_summary,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute invalidation_batch
    #   <p>An invalidation batch.</p>
    #   @return [Types::InvalidationBatch]
    class CreateInvalidationForDistributionTenantRequest < Struct.new(
      :id,
      :invalidation_batch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute location
    #   <p>The location for the invalidation.</p>
    #   @return [String]
    # @!attribute invalidation
    #   <p>An invalidation.</p>
    #   @return [Types::Invalidation]
    class CreateInvalidationForDistributionTenantResult < Struct.new(
      :location,
      :invalidation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create an invalidation.</p>
    # @!attribute distribution_id
    #   <p>The distribution's id.</p>
    #   @return [String]
    # @!attribute invalidation_batch
    #   <p>The batch information for the invalidation.</p>
    #   @return [Types::InvalidationBatch]
    class CreateInvalidationRequest < Struct.new(
      :distribution_id,
      :invalidation_batch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute location
    #   <p>The fully qualified URI of the distribution and invalidation batch request, including the <code>Invalidation ID</code>.</p>
    #   @return [String]
    # @!attribute invalidation
    #   <p>The invalidation's information.</p>
    #   @return [Types::Invalidation]
    class CreateInvalidationResult < Struct.new(
      :location,
      :invalidation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group_config
    #   <p>A key group configuration.</p>
    #   @return [Types::KeyGroupConfig]
    class CreateKeyGroupRequest < Struct.new(
      :key_group_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group
    #   <p>The key group that was just created.</p>
    #   @return [Types::KeyGroup]
    # @!attribute location
    #   <p>The URL of the key group.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #   @return [String]
    class CreateKeyGroupResult < Struct.new(
      :key_group,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the key value store. The minimum length is 1 character and the maximum length is 64 characters.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>The comment of the key value store.</p>
    #   @return [String]
    # @!attribute import_source
    #   <p>The S3 bucket that provides the source for the import. The source must be in a valid JSON format.</p>
    #   @return [Types::ImportSource]
    class CreateKeyValueStoreRequest < Struct.new(
      :name,
      :comment,
      :import_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_value_store
    #   <p>The resulting key value store.</p>
    #   @return [Types::KeyValueStore]
    # @!attribute e_tag
    #   <p>The <code>ETag</code> in the resulting key value store.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the resulting key value store.</p>
    #   @return [String]
    class CreateKeyValueStoreResult < Struct.new(
      :key_value_store,
      :e_tag,
      :location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are enabling metrics for.</p>
    #   @return [String]
    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #   @return [Types::MonitoringSubscription]
    class CreateMonitoringSubscriptionRequest < Struct.new(
      :distribution_id,
      :monitoring_subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #   @return [Types::MonitoringSubscription]
    class CreateMonitoringSubscriptionResult < Struct.new(
      :monitoring_subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control_config
    #   <p>Contains the origin access control.</p>
    #   @return [Types::OriginAccessControlConfig]
    class CreateOriginAccessControlRequest < Struct.new(
      :origin_access_control_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control
    #   <p>Contains an origin access control.</p>
    #   @return [Types::OriginAccessControl]
    # @!attribute location
    #   <p>The URL of the origin access control.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the origin access control.</p>
    #   @return [String]
    class CreateOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #   @return [Types::OriginRequestPolicyConfig]
    class CreateOriginRequestPolicyRequest < Struct.new(
      :origin_request_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy
    #   <p>An origin request policy.</p>
    #   @return [Types::OriginRequestPolicy]
    # @!attribute location
    #   <p>The fully qualified URI of the origin request policy just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #   @return [String]
    class CreateOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_config
    #   <p>A CloudFront public key configuration.</p>
    #   @return [Types::PublicKeyConfig]
    class CreatePublicKeyRequest < Struct.new(
      :public_key_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #   @return [Types::PublicKey]
    # @!attribute location
    #   <p>The URL of the public key.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key.</p>
    #   @return [String]
    class CreatePublicKeyResult < Struct.new(
      :public_key,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>
    #   @return [Array<Types::EndPoint>]
    # @!attribute fields
    #   <p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>A unique name to identify this real-time log configuration.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. You can specify a whole number between 1 and 100 (inclusive) to determine the percentage of viewer requests that are represented in the real-time log data.</p>
    #   @return [Integer]
    class CreateRealtimeLogConfigRequest < Struct.new(
      :end_points,
      :fields,
      :name,
      :sampling_rate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #   @return [Types::RealtimeLogConfig]
    class CreateRealtimeLogConfigResult < Struct.new(
      :realtime_log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>Contains metadata about the response headers policy, and a set of configurations that specify the HTTP headers.</p>
    #   @return [Types::ResponseHeadersPolicyConfig]
    class CreateResponseHeadersPolicyRequest < Struct.new(
      :response_headers_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy
    #   <p>Contains a response headers policy.</p>
    #   @return [Types::ResponseHeadersPolicy]
    # @!attribute location
    #   <p>The URL of the response headers policy.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #   @return [String]
    class CreateResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new streaming distribution.</p>
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #   @return [Types::StreamingDistributionConfig]
    class CreateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #   @return [Types::StreamingDistribution]
    # @!attribute location
    #   <p>The fully qualified URI of the new streaming distribution resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the streaming distribution created.</p>
    #   @return [String]
    class CreateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new streaming distribution with tags.</p>
    # @!attribute streaming_distribution_config_with_tags
    #   <p>The streaming distribution's configuration information.</p>
    #   @return [Types::StreamingDistributionConfigWithTags]
    class CreateStreamingDistributionWithTagsRequest < Struct.new(
      :streaming_distribution_config_with_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #   @return [Types::StreamingDistribution]
    # @!attribute location
    #   <p>The fully qualified URI of the new streaming distribution resource just created.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution created.</p>
    #   @return [String]
    class CreateStreamingDistributionWithTagsResult < Struct.new(
      :streaming_distribution,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin_endpoint_config
    #   <p>The VPC origin endpoint configuration.</p>
    #   @return [Types::VpcOriginEndpointConfig]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class CreateVpcOriginRequest < Struct.new(
      :vpc_origin_endpoint_config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin
    #   <p>The VPC origin.</p>
    #   @return [Types::VpcOrigin]
    # @!attribute location
    #   <p>The VPC origin location.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The VPC origin ETag.</p>
    #   @return [String]
    class CreateVpcOriginResult < Struct.new(
      :vpc_origin,
      :location,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute error_code
    #   <p>The HTTP status code for which you want to specify a custom error page and/or a caching duration.</p>
    #   @return [Integer]
    # @!attribute response_page_path
    #   <p>The path to the custom error page that you want CloudFront to return to a viewer when your origin returns the HTTP status code specified by <code>ErrorCode</code>, for example, <code>/4xx-errors/403-forbidden.html</code>. If you want to store your objects and your custom error pages in different locations, your distribution must include a cache behavior for which the following is true:</p> <ul> <li> <p>The value of <code>PathPattern</code> matches the path to your custom error messages. For example, suppose you saved custom error pages for 4xx errors in an Amazon S3 bucket in a directory named <code>/4xx-errors</code>. Your distribution must include a cache behavior for which the path pattern routes requests for your custom error pages to that location, for example, <code>/4xx-errors/*</code>.</p> </li> <li> <p>The value of <code>TargetOriginId</code> specifies the value of the <code>ID</code> element for the origin that contains your custom error pages.</p> </li> </ul> <p>If you specify a value for <code>ResponsePagePath</code>, you must also specify a value for <code>ResponseCode</code>.</p> <p>We recommend that you store custom error pages in an Amazon S3 bucket. If you store custom error pages on an HTTP server and the server starts to return 5xx errors, CloudFront can't get the files that you want to return to viewers because the origin server is unavailable.</p>
    #   @return [String]
    # @!attribute response_code
    #   <p>The HTTP status code that you want CloudFront to return to the viewer along with the custom error page. There are a variety of reasons that you might want CloudFront to return a status code different from the status code that your origin returned to CloudFront, for example:</p> <ul> <li> <p>Some Internet devices (some firewalls and corporate proxies, for example) intercept HTTP 4xx and 5xx and prevent the response from being returned to the viewer. If you substitute <code>200</code>, the response typically won't be intercepted.</p> </li> <li> <p>If you don't care about distinguishing among different client errors or server errors, you can specify <code>400</code> or <code>500</code> as the <code>ResponseCode</code> for all 4xx or 5xx errors.</p> </li> <li> <p>You might want to return a <code>200</code> status code (OK) and static website so your customers don't know that your website is down.</p> </li> </ul> <p>If you specify a value for <code>ResponseCode</code>, you must also specify a value for <code>ResponsePagePath</code>.</p>
    #   @return [String]
    # @!attribute error_caching_min_ttl
    #   <p>The minimum amount of time, in seconds, that you want CloudFront to cache the HTTP status code specified in <code>ErrorCode</code>. When this time period has elapsed, CloudFront queries your origin to see whether the problem that caused the error has been resolved and the requested object is now available.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    class CustomErrorResponse < Struct.new(
      :error_code,
      :response_page_path,
      :response_code,
      :error_caching_min_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute quantity
    #   <p>The number of HTTP status codes for which you want to specify a custom error page and/or a caching duration. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains a <code>CustomErrorResponse</code> element for each HTTP status code for which you want to specify a custom error page and/or a caching duration. </p>
    #   @return [Array<Types::CustomErrorResponse>]
    class CustomErrorResponses < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains the list of Custom Headers for each origin.</p>
    # @!attribute quantity
    #   <p>The number of custom headers, if any, for this distribution.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p> <b>Optional</b>: A list that contains one <code>OriginCustomHeader</code> element for each custom header that you want CloudFront to forward to the origin. If Quantity is <code>0</code>, omit <code>Items</code>.</p>
    #   @return [Array<Types::OriginCustomHeader>]
    class CustomHeaders < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A custom origin. A custom origin is any origin that is <i>not</i> an Amazon S3 bucket, with one exception. An Amazon S3 bucket that is <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html">configured with static website hosting</a> <i>is</i> a custom origin.</p>
    # @!attribute http_port
    #   <p>The HTTP port that CloudFront uses to connect to the origin. Specify the HTTP port that the origin listens on.</p>
    #   @return [Integer]
    # @!attribute https_port
    #   <p>The HTTPS port that CloudFront uses to connect to the origin. Specify the HTTPS port that the origin listens on.</p>
    #   @return [Integer]
    # @!attribute origin_protocol_policy
    #   <p>Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect to the origin. Valid values are:</p> <ul> <li> <p> <code>http-only</code> – CloudFront always uses HTTP to connect to the origin.</p> </li> <li> <p> <code>match-viewer</code> – CloudFront connects to the origin using the same protocol that the viewer used to connect to CloudFront.</p> </li> <li> <p> <code>https-only</code> – CloudFront always uses HTTPS to connect to the origin.</p> </li> </ul>
    #   @return [String]
    # @!attribute origin_ssl_protocols
    #   <p>Specifies the minimum SSL/TLS protocol that CloudFront uses when connecting to your origin over HTTPS. Valid values include <code>SSLv3</code>, <code>TLSv1</code>, <code>TLSv1.1</code>, and <code>TLSv1.2</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginSSLProtocols">Minimum Origin SSL Protocol</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::OriginSslProtocols]
    # @!attribute origin_read_timeout
    #   <p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute origin_keepalive_timeout
    #   <p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 5 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginKeepaliveTimeout">Keep-alive timeout (custom origins only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    class CustomOriginConfig < Struct.new(
      :http_port,
      :https_port,
      :origin_protocol_policy,
      :origin_ssl_protocols,
      :origin_read_timeout,
      :origin_keepalive_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    # @!attribute web_acl
    #   <p>The WAF web ACL.</p>
    #   @return [Types::WebAclCustomization]
    # @!attribute certificate
    #   <p>The Certificate Manager (ACM) certificate.</p>
    #   @return [Types::Certificate]
    # @!attribute geo_restrictions
    #   <p>The geographic restrictions.</p>
    #   @return [Types::GeoRestrictionCustomization]
    class Customizations < Struct.new(
      :web_acl,
      :certificate,
      :geo_restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if request URLs don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p> <important> <p>If your minimum TTL is greater than 0, CloudFront will cache content for at least the duration specified in the cache policy's minimum TTL, even if the <code>Cache-Control: no-cache</code>, <code>no-store</code>, or <code>private</code> directives are present in the origin headers.</p> </important>
    # @!attribute target_origin_id
    #   <p>The value of <code>ID</code> for the origin that you want CloudFront to route requests to when they use the default cache behavior.</p>
    #   @return [String]
    # @!attribute trusted_signers
    #   <important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A list of Amazon Web Services account IDs whose public keys CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted signers, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with the private key of a CloudFront key pair in a trusted signer's Amazon Web Services account. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedSigners]
    # @!attribute trusted_key_groups
    #   <p>A list of key groups that CloudFront can use to validate signed URLs or signed cookies.</p> <p>When a cache behavior contains trusted key groups, CloudFront requires signed URLs or signed cookies for all requests that match the cache behavior. The URLs or cookies must be signed with a private key whose corresponding public key is in the key group. The signed URL or cookie contains information about which public key CloudFront should use to verify the signature. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving private content</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedKeyGroups]
    # @!attribute viewer_protocol_policy
    #   <p>The protocol that viewers can use to access the files in the origin specified by <code>TargetOriginId</code> when a request matches the path pattern in <code>PathPattern</code>. You can specify the following options:</p> <ul> <li> <p> <code>allow-all</code>: Viewers can use HTTP or HTTPS.</p> </li> <li> <p> <code>redirect-to-https</code>: If a viewer submits an HTTP request, CloudFront returns an HTTP status code of 301 (Moved Permanently) to the viewer along with the HTTPS URL. The viewer then resubmits the request using the new URL.</p> </li> <li> <p> <code>https-only</code>: If a viewer sends an HTTP request, CloudFront returns an HTTP status code of 403 (Forbidden).</p> </li> </ul> <p>For more information about requiring the HTTPS protocol, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-viewers-to-cloudfront.html">Requiring HTTPS Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>The only way to guarantee that viewers retrieve an object that was fetched from the origin using HTTPS is never to use any other protocol to fetch the object. If you have recently changed from HTTP to HTTPS, we recommend that you clear your objects' cache because cached objects are protocol agnostic. That means that an edge location will return an object from the cache regardless of whether the current request protocol matches the protocol used previously. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing Cache Expiration</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
    #   @return [String]
    # @!attribute allowed_methods
    #   <p>A complex type that controls which HTTP methods CloudFront processes and forwards to your Amazon S3 bucket or your custom origin. There are three choices:</p> <ul> <li> <p>CloudFront forwards only <code>GET</code> and <code>HEAD</code> requests.</p> </li> <li> <p>CloudFront forwards only <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> requests.</p> </li> <li> <p>CloudFront forwards <code>GET, HEAD, OPTIONS, PUT, PATCH, POST</code>, and <code>DELETE</code> requests.</p> </li> </ul> <p>If you pick the third choice, you may need to restrict access to your Amazon S3 bucket or to your custom origin so users can't perform operations that you don't want them to. For example, you might not want users to have permissions to delete objects from your origin.</p>
    #   @return [Types::AllowedMethods]
    # @!attribute smooth_streaming
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>Indicates whether you want to distribute media files in the Microsoft Smooth Streaming format using the origin that is associated with this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. If you specify <code>true</code> for <code>SmoothStreaming</code>, you can still distribute other content using this cache behavior if the content matches the value of <code>PathPattern</code>.</p>
    #   @return [Boolean]
    # @!attribute compress
    #   <p>Whether you want CloudFront to automatically compress certain files for this cache behavior. If so, specify <code>true</code>; if not, specify <code>false</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/ServingCompressedFiles.html">Serving Compressed Files</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute lambda_function_associations
    #   <p>A complex type that contains zero or more Lambda@Edge function associations for a cache behavior.</p>
    #   @return [Types::LambdaFunctionAssociations]
    # @!attribute function_associations
    #   <p>A list of CloudFront functions that are associated with this cache behavior. Your functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>
    #   @return [Types::FunctionAssociations]
    # @!attribute field_level_encryption_id
    #   <p>The value of <code>ID</code> for the field-level encryption configuration that you want CloudFront to use for encrypting specific fields of data for the default cache behavior.</p>
    #   @return [String]
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration that is attached to this cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html">Real-time logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute cache_policy_id
    #   <p>The unique identifier of the cache policy that is attached to the default cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>DefaultCacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p>
    #   @return [String]
    # @!attribute origin_request_policy_id
    #   <p>The unique identifier of the origin request policy that is attached to the default cache behavior. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute response_headers_policy_id
    #   <p>The identifier for a response headers policy.</p>
    #   @return [String]
    # @!attribute grpc_config
    #   <p>The gRPC configuration for your cache behavior.</p>
    #   @return [Types::GrpcConfig]
    # @!attribute forwarded_values
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/working-with-policies.html">Working with policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-origin-request-policies.html">Using the managed origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A <code>DefaultCacheBehavior</code> must include either a <code>CachePolicyId</code> or <code>ForwardedValues</code>. We recommend that you use a <code>CachePolicyId</code>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    #   @deprecated
    #   @return [Types::ForwardedValues]
    # @!attribute min_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MinTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The minimum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>You must specify <code>0</code> for <code>MinTTL</code> if you configure CloudFront to forward all headers to your origin (under <code>Headers</code>, if you specify <code>1</code> for <code>Quantity</code> and <code>*</code> for <code>Name</code>).</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute default_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>DefaultTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The default amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin does not add HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute max_ttl
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use the <code>MaxTTL</code> field in a cache policy instead of this field. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> or <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html">Using the managed cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>The maximum amount of time that you want objects to stay in CloudFront caches before CloudFront forwards another request to your origin to determine whether the object has been updated. The value that you specify applies only when your origin adds HTTP headers such as <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and <code>Expires</code> to objects. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html">Managing How Long Content Stays in an Edge Cache (Expiration)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @deprecated
    #   @return [Integer]
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
      :grpc_config,
      :forwarded_values,
      :min_ttl,
      :default_ttl,
      :max_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the Anycast static IP list that you are deleting.</p>
    #   @return [String]
    class DeleteAnycastIpListRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy that you are deleting. To get the identifier, you can use <code>ListCachePolicies</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the cache policy that you are deleting. The version is the cache policy's <code>ETag</code> value, which you can get using <code>ListCachePolicies</code>, <code>GetCachePolicy</code>, or <code>GetCachePolicyConfig</code>.</p>
    #   @return [String]
    class DeleteCachePolicyRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes a origin access identity.</p>
    # @!attribute id
    #   <p>The origin access identity's ID.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header you received from a previous <code>GET</code> or <code>PUT</code> request. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeleteCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the connection group to delete.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the connection group to delete.</p>
    #   @return [String]
    class DeleteConnectionGroupRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the continuous deployment policy that you are deleting.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are deleting.</p>
    #   @return [String]
    class DeleteContinuousDeploymentPolicyRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This action deletes a web distribution. To delete a web distribution using the CloudFront API, perform the following steps.</p> <p> <b>To delete a web distribution using the CloudFront API:</b> </p> <ol> <li> <p>Disable the web distribution</p> </li> <li> <p>Submit a <code>GET Distribution Config</code> request to get the current configuration and the <code>Etag</code> header for the distribution.</p> </li> <li> <p>Update the XML document that was returned in the response to your <code>GET Distribution Config</code> request to change the value of <code>Enabled</code> to <code>false</code>.</p> </li> <li> <p>Submit a <code>PUT Distribution Config</code> request to update the configuration for your distribution. In the request body, include the XML document that you updated in Step 3. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 2.</p> </li> <li> <p>Review the response to the <code>PUT Distribution Config</code> request to confirm that the distribution was successfully disabled.</p> </li> <li> <p>Submit a <code>GET Distribution</code> request to confirm that your changes have propagated. When propagation is complete, the value of <code>Status</code> is <code>Deployed</code>.</p> </li> <li> <p>Submit a <code>DELETE Distribution</code> request. Set the value of the HTTP <code>If-Match</code> header to the value of the <code>ETag</code> header that CloudFront returned when you submitted the <code>GET Distribution Config</code> request in Step 6.</p> </li> <li> <p>Review the response to your <code>DELETE Distribution</code> request to confirm that the distribution was successfully deleted.</p> </li> </ol> <p>For information about deleting a distribution using the CloudFront console, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/HowToDeleteDistribution.html">Deleting a Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute id
    #   <p>The distribution ID.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeleteDistributionRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant to delete.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    #   @return [String]
    class DeleteDistributionTenantRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the configuration you want to delete from CloudFront.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeleteFieldLevelEncryptionConfigRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Request the ID of the profile you want to delete from CloudFront.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeleteFieldLevelEncryptionProfileRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are deleting.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are deleting, which you can get using <code>DescribeFunction</code>.</p>
    #   @return [String]
    class DeleteFunctionRequest < Struct.new(
      :name,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group that you are deleting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the key group that you are deleting. The version is the key group's <code>ETag</code> value. To get the <code>ETag</code>, use <code>GetKeyGroup</code> or <code>GetKeyGroupConfig</code>.</p>
    #   @return [String]
    class DeleteKeyGroupRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the key value store.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The key value store to delete, if a match occurs.</p>
    #   @return [String]
    class DeleteKeyValueStoreRequest < Struct.new(
      :name,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are disabling metrics for.</p>
    #   @return [String]
    class DeleteMonitoringSubscriptionRequest < Struct.new(
      :distribution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteMonitoringSubscriptionResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the origin access control that you are deleting.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the origin access control that you are deleting.</p>
    #   @return [String]
    class DeleteOriginAccessControlRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy that you are deleting. To get the identifier, you can use <code>ListOriginRequestPolicies</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the origin request policy that you are deleting. The version is the origin request policy's <code>ETag</code> value, which you can get using <code>ListOriginRequestPolicies</code>, <code>GetOriginRequestPolicy</code>, or <code>GetOriginRequestPolicyConfig</code>.</p>
    #   @return [String]
    class DeleteOriginRequestPolicyRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the public key you want to remove from CloudFront.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key identity to delete. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeletePublicKeyRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the real-time log configuration to delete.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to delete.</p>
    #   @return [String]
    class DeleteRealtimeLogConfigRequest < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy that you are deleting.</p> <p>To get the identifier, you can use <code>ListResponseHeadersPolicies</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the response headers policy that you are deleting.</p> <p>The version is the response headers policy's <code>ETag</code> value, which you can get using <code>ListResponseHeadersPolicies</code>, <code>GetResponseHeadersPolicy</code>, or <code>GetResponseHeadersPolicyConfig</code>.</p>
    #   @return [String]
    class DeleteResponseHeadersPolicyRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to delete a streaming distribution.</p>
    # @!attribute id
    #   <p>The distribution ID.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when you disabled the streaming distribution. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class DeleteStreamingDistributionRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version identifier of the VPC origin to delete. This is the <code>ETag</code> value returned in the response to <a>GetVpcOrigin</a>.</p>
    #   @return [String]
    class DeleteVpcOriginRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin
    #   <p>The VPC origin.</p>
    #   @return [Types::VpcOrigin]
    # @!attribute e_tag
    #   <p>The VPC origin ETag.</p>
    #   @return [String]
    class DeleteVpcOriginResult < Struct.new(
      :vpc_origin,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are getting information about.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #   @return [String]
    class DescribeFunctionRequest < Struct.new(
      :name,
      :stage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #   @return [Types::FunctionSummary]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #   @return [String]
    class DescribeFunctionResult < Struct.new(
      :function_summary,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the key value store.</p>
    #   @return [String]
    class DescribeKeyValueStoreRequest < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_value_store
    #   <p>The resulting key value store.</p>
    #   @return [Types::KeyValueStore]
    # @!attribute e_tag
    #   <p>The <code>ETag</code> of the resulting key value store.</p>
    #   @return [String]
    class DescribeKeyValueStoreResult < Struct.new(
      :key_value_store,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version of the distribution tenant that you're disassociating from the WAF web ACL. This is the <code>ETag</code> value returned in the response to the <code>GetDistributionTenant</code> API operation.</p>
    #   @return [String]
    class DisassociateDistributionTenantWebACLRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class DisassociateDistributionTenantWebACLResult < Struct.new(
      :id,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution that you're disassociating from the WAF web ACL.</p>
    #   @return [String]
    class DisassociateDistributionWebACLRequest < Struct.new(
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution.</p>
    #   @return [String]
    class DisassociateDistributionWebACLResult < Struct.new(
      :id,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.</p>
    # @!attribute id
    #   <p>The distribution's identifier. For example: <code>E1U5RQF7T870K0</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The distribution's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The distribution's status. When the status is <code>Deployed</code>, the distribution's information is fully propagated to all CloudFront edge locations.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time when the distribution was last modified.</p>
    #   @return [Time]
    # @!attribute in_progress_invalidation_batches
    #   <p>The number of invalidation batches currently in progress.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The distribution's CloudFront domain name. For example: <code>d111111abcdef8.cloudfront.net</code>.</p>
    #   @return [String]
    # @!attribute active_trusted_signers
    #   <important> <p>We recommend using <code>TrustedKeyGroups</code> instead of <code>TrustedSigners</code>.</p> </important> <p>This field contains a list of Amazon Web Services account IDs and the active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs or signed cookies.</p>
    #   @return [Types::ActiveTrustedSigners]
    # @!attribute active_trusted_key_groups
    #   <p>This field contains a list of key groups and the public keys in each key group that CloudFront can use to verify the signatures of signed URLs or signed cookies.</p>
    #   @return [Types::ActiveTrustedKeyGroups]
    # @!attribute distribution_config
    #   <p>The distribution's configuration.</p>
    #   @return [Types::DistributionConfig]
    # @!attribute alias_icp_recordals
    #   <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html"> Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    #   @return [Array<Types::AliasICPRecordal>]
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
      :alias_icp_recordals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The caller reference you attempted to create the distribution with is associated with another distribution.</p>
    # @!attribute message
    #   @return [String]
    class DistributionAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A distribution configuration.</p>
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>DistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
    #   @return [String]
    # @!attribute aliases
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
    #   @return [Types::Aliases]
    # @!attribute default_root_object
    #   <p>When a viewer requests the root URL for your distribution, the default root object is the object that you want CloudFront to request from your origin. For example, if your root URL is <code>https://www.example.com</code>, you can specify CloudFront to return the <code>index.html</code> file as the default root object. You can specify a default root object so that viewers see a specific file or object, instead of another object in your distribution (for example, <code>https://www.example.com/product-description.html</code>). A default root object avoids exposing the contents of your distribution.</p> <p>You can specify the object name or a path to the object name (for example, <code>index.html</code> or <code>exampleFolderName/index.html</code>). Your string can't begin with a forward slash (<code>/</code>). Only specify the object name or the path to the object.</p> <p>If you don't want to specify a default root object when you create a distribution, include an empty <code>DefaultRootObject</code> element.</p> <p>To delete the default root object from an existing distribution, update the distribution configuration and include an empty <code>DefaultRootObject</code> element.</p> <p>To replace the default root object, update the distribution configuration and specify the new object.</p> <p>For more information about the default root object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DefaultRootObject.html">Specify a default root object</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute origins
    #   <p>A complex type that contains information about origins for this distribution.</p>
    #   @return [Types::Origins]
    # @!attribute origin_groups
    #   <p>A complex type that contains information about origin groups for this distribution.</p>
    #   @return [Types::OriginGroups]
    # @!attribute default_cache_behavior
    #   <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
    #   @return [Types::DefaultCacheBehavior]
    # @!attribute cache_behaviors
    #   <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>
    #   @return [Types::CacheBehaviors]
    # @!attribute custom_error_responses
    #   <p>A complex type that controls the following:</p> <ul> <li> <p>Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range with custom error messages before returning the response to the viewer.</p> </li> <li> <p>How long CloudFront caches HTTP status codes in the 4xx and 5xx range.</p> </li> </ul> <p>For more information about custom error pages, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html">Customizing Error Responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::CustomErrorResponses]
    # @!attribute comment
    #   <p>A comment to describe the distribution. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>A complex type that controls whether access logs are written for the distribution.</p> <p>For more information about logging, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Access Logs</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::LoggingConfig]
    # @!attribute price_class
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The price class that corresponds with the maximum price that you want to pay for CloudFront service. If you specify <code>PriceClass_All</code>, CloudFront responds to requests for your objects from all CloudFront edge locations.</p> <p>If you specify a price class other than <code>PriceClass_All</code>, CloudFront serves your objects from the CloudFront edge location that has the lowest latency among the edge locations in your price class. Viewers who are in or near regions that are excluded from your specified price class may encounter slower performance.</p> <p>For more information about price classes, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PriceClass.html">Choosing the Price Class for a CloudFront Distribution</a> in the <i>Amazon CloudFront Developer Guide</i>. For information about CloudFront pricing, including how price classes (such as Price Class 100) map to CloudFront regions, see <a href="http://aws.amazon.com/cloudfront/pricing/">Amazon CloudFront Pricing</a>.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>From this field, you can enable or disable the selected distribution.</p>
    #   @return [Boolean]
    # @!attribute viewer_certificate
    #   <p>A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers.</p>
    #   @return [Types::ViewerCertificate]
    # @!attribute restrictions
    #   <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
    #   @return [Types::Restrictions]
    # @!attribute web_acl_id
    #   <note> <p>Multi-tenant distributions only support WAF V2 web ACLs.</p> </note> <p>A unique identifier that specifies the WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>. To specify a web ACL created using WAF Classic, use the ACL ID, for example <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> <p>WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to CloudFront, and lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, CloudFront responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You can also configure CloudFront to return a custom error page when a request is blocked. For more information about WAF, see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html">WAF Developer Guide</a>.</p>
    #   @return [String]
    # @!attribute http_version
    #   <p>(Optional) Specify the HTTP version(s) that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support HTTP/2 automatically use an earlier HTTP version.</p> <p>For viewers and CloudFront to use HTTP/2, viewers must support TLSv1.2 or later, and must support Server Name Indication (SNI).</p> <p>For viewers and CloudFront to use HTTP/3, viewers must support TLSv1.3 and Server Name Indication (SNI). CloudFront supports HTTP/3 connection migration to allow the viewer to switch networks without losing connection. For more information about connection migration, see <a href="https://www.rfc-editor.org/rfc/rfc9000.html#name-connection-migration">Connection Migration</a> at RFC 9000. For more information about supported TLSv1.3 ciphers, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html">Supported protocols and ciphers between viewers and CloudFront</a>.</p>
    #   @return [String]
    # @!attribute is_ipv6_enabled
    #   <note> <p>To use this field for a multi-tenant distribution, use a connection group instead. For more information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ConnectionGroup.html">ConnectionGroup</a>.</p> </note> <p>If you want CloudFront to respond to IPv6 DNS requests with an IPv6 address for your distribution, specify <code>true</code>. If you specify <code>false</code>, CloudFront responds to IPv6 DNS requests with the DNS response code <code>NOERROR</code> and with no IP addresses. This allows viewers to submit a second request, for an IPv4 address for your distribution.</p> <p>In general, you should enable IPv6 if you have users on IPv6 networks who want to access your content. However, if you're using signed URLs or signed cookies to restrict access to your content, and if you're using a custom policy that includes the <code>IpAddress</code> parameter to restrict the IP addresses that can access your content, don't enable IPv6. If you want to restrict access to some content by IP address and not restrict access to other content (or restrict access but not by IP address), you can create two distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-creating-signed-url-custom-policy.html">Creating a Signed URL Using a Custom Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you're using an Route 53 Amazon Web Services Integration alias resource record set to route traffic to your CloudFront distribution, you need to create a second alias resource record set when both of the following are true:</p> <ul> <li> <p>You enable IPv6 for the distribution</p> </li> <li> <p>You're using alternate domain names in the URLs for your objects</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html">Routing Traffic to an Amazon CloudFront Web Distribution by Using Your Domain Name</a> in the <i>Route 53 Amazon Web Services Integration Developer Guide</i>.</p> <p>If you created a CNAME resource record set, either with Route 53 Amazon Web Services Integration or with another DNS service, you don't need to make any changes. A CNAME record will route traffic to your distribution regardless of the IP address format of the viewer request.</p>
    #   @return [Boolean]
    # @!attribute continuous_deployment_policy_id
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The identifier of a continuous deployment policy. For more information, see <code>CreateContinuousDeploymentPolicy</code>.</p>
    #   @return [String]
    # @!attribute staging
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A Boolean that indicates whether this is a staging distribution. When this value is <code>true</code>, this is a staging distribution. When this value is <code>false</code>, this is not a staging distribution.</p>
    #   @return [Boolean]
    # @!attribute anycast_ip_list_id
    #   <note> <p>To use this field for a multi-tenant distribution, use a connection group instead. For more information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_ConnectionGroup.html">ConnectionGroup</a>.</p> </note> <p>ID of the Anycast static IP list that is associated with the distribution.</p>
    #   @return [String]
    # @!attribute tenant_config
    #   <note> <p>This field only supports multi-tenant distributions. You can't specify this field for standard distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A distribution tenant configuration.</p>
    #   @return [Types::TenantConfig]
    # @!attribute connection_mode
    #   <p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>
    #   @return [String]
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
      :staging,
      :anycast_ip_list_id,
      :tenant_config,
      :connection_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A distribution Configuration and a list of tags to be associated with the distribution.</p>
    # @!attribute distribution_config
    #   <p>A distribution configuration.</p>
    #   @return [Types::DistributionConfig]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class DistributionConfigWithTags < Struct.new(
      :distribution_config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of distribution IDs.</p>
    # @!attribute marker
    #   <p>The value provided in the <code>Marker</code> request field.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>Contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing distribution IDs where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs requested.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more distribution IDs remain to be listed. If your results were truncated, you can make a subsequent request using the <code>Marker</code> request field to retrieve more distribution IDs in the list.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The total number of distribution IDs returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the distribution IDs in the list.</p>
    #   @return [Array<String>]
    class DistributionIdList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A distribution list.</p>
    # @!attribute marker
    #   <p>The value you provided for the <code>Marker</code> request parameter.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your distributions where they left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The value you provided for the <code>MaxItems</code> request parameter.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of distributions that were created by the current Amazon Web Services account.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains one <code>DistributionSummary</code> element for each distribution that was created by the current Amazon Web Services account.</p>
    #   @return [Array<Types::DistributionSummary>]
    class DistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.</p>
    # @!attribute message
    #   @return [String]
    class DistributionNotDisabled < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The IDs for the distribution resources.</p>
    # @!attribute distribution_id
    #   <p>The ID of the multi-tenant distribution.</p>
    #   @return [String]
    # @!attribute distribution_tenant_id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    class DistributionResourceId < Struct.new(
      :distribution_id,
      :distribution_tenant_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the information about a CloudFront distribution.</p>
    # @!attribute id
    #   <p>The identifier for the distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the distribution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time the distribution was last modified.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>The domain name that corresponds to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
    #   @return [String]
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this distribution.</p>
    #   @return [Types::Aliases]
    # @!attribute origins
    #   <p>A complex type that contains information about origins for this distribution.</p>
    #   @return [Types::Origins]
    # @!attribute origin_groups
    #   <p>A complex type that contains information about origin groups for this distribution.</p>
    #   @return [Types::OriginGroups]
    # @!attribute default_cache_behavior
    #   <p>A complex type that describes the default cache behavior if you don't specify a <code>CacheBehavior</code> element or if files don't match any of the values of <code>PathPattern</code> in <code>CacheBehavior</code> elements. You must create exactly one default cache behavior.</p>
    #   @return [Types::DefaultCacheBehavior]
    # @!attribute cache_behaviors
    #   <p>A complex type that contains zero or more <code>CacheBehavior</code> elements.</p>
    #   @return [Types::CacheBehaviors]
    # @!attribute custom_error_responses
    #   <p>A complex type that contains zero or more <code>CustomErrorResponses</code> elements.</p>
    #   @return [Types::CustomErrorResponses]
    # @!attribute comment
    #   <p>The comment originally specified when this distribution was created.</p>
    #   @return [String]
    # @!attribute price_class
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>A complex type that contains information about price class for this streaming distribution.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the distribution is enabled to accept user requests for content.</p>
    #   @return [Boolean]
    # @!attribute viewer_certificate
    #   <p>A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers.</p>
    #   @return [Types::ViewerCertificate]
    # @!attribute restrictions
    #   <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
    #   @return [Types::Restrictions]
    # @!attribute web_acl_id
    #   <p>The Web ACL Id (if any) associated with the distribution.</p>
    #   @return [String]
    # @!attribute http_version
    #   <p>Specify the maximum HTTP version that you want viewers to use to communicate with CloudFront. The default value for new web distributions is <code>http2</code>. Viewers that don't support <code>HTTP/2</code> will automatically use an earlier version.</p>
    #   @return [String]
    # @!attribute is_ipv6_enabled
    #   <p>Whether CloudFront responds to IPv6 DNS requests with an IPv6 address for your distribution.</p>
    #   @return [Boolean]
    # @!attribute alias_icp_recordals
    #   <p>Amazon Web Services services in China customers must file for an Internet Content Provider (ICP) recordal if they want to serve content publicly on an alternate domain name, also known as a CNAME, that they've added to CloudFront. AliasICPRecordal provides the ICP recordal status for CNAMEs associated with distributions.</p> <p>For more information about ICP recordals, see <a href="https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html"> Signup, Accounts, and Credentials</a> in <i>Getting Started with Amazon Web Services services in China</i>.</p>
    #   @return [Array<Types::AliasICPRecordal>]
    # @!attribute staging
    #   <p>A Boolean that indicates whether this is a staging distribution. When this value is <code>true</code>, this is a staging distribution. When this value is <code>false</code>, this is not a staging distribution.</p>
    #   @return [Boolean]
    # @!attribute connection_mode
    #   <p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>
    #   @return [String]
    # @!attribute anycast_ip_list_id
    #   <p>ID of the Anycast static IP list that is associated with the distribution.</p>
    #   @return [String]
    class DistributionSummary < Struct.new(
      :id,
      :arn,
      :e_tag,
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
      :staging,
      :connection_mode,
      :anycast_ip_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The distribution tenant.</p>
    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute distribution_id
    #   <p>The ID of the multi-tenant distribution.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution tenant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution tenant.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The domains associated with the distribution tenant.</p>
    #   @return [Array<Types::DomainResult>]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    # @!attribute customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    #   @return [Types::Customizations]
    # @!attribute parameters
    #   <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute connection_group_id
    #   <p>The ID of the connection group for the distribution tenant. If you don't specify a connection group, CloudFront uses the default connection group.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the distribution tenant was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time when the distribution tenant was updated.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>Indicates whether the distribution tenant is in an enabled state. If disabled, the distribution tenant won't serve traffic.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the distribution tenant.</p>
    #   @return [String]
    class DistributionTenant < Struct.new(
      :id,
      :distribution_id,
      :name,
      :arn,
      :domains,
      :tags,
      :customizations,
      :parameters,
      :connection_group_id,
      :created_time,
      :last_modified_time,
      :enabled,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filter by the associated distribution ID or connection group ID.</p>
    # @!attribute distribution_id
    #   <p>The distribution ID to filter by. You can find distribution tenants associated with a specific distribution.</p>
    #   @return [String]
    # @!attribute connection_group_id
    #   <p>The ID of the connection group to filter by. You can find distribution tenants associated with a specific connection group.</p>
    #   @return [String]
    class DistributionTenantAssociationFilter < Struct.new(
      :distribution_id,
      :connection_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the information about a distribution tenant.</p>
    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute distribution_id
    #   <p>The identifier for the multi-tenant distribution. For example: <code>EDFDVBD632BHDS5</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution tenant.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution tenant.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The domains associated with the distribution tenant.</p>
    #   @return [Array<Types::DomainResult>]
    # @!attribute connection_group_id
    #   <p>The ID of the connection group ID for the distribution tenant. If you don't specify a connection group, CloudFront uses the default connection group.</p>
    #   @return [String]
    # @!attribute customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    #   @return [Types::Customizations]
    # @!attribute created_time
    #   <p>The date and time when the distribution tenant was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time when the distribution tenant was updated.</p>
    #   @return [Time]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the distribution tenants are in an enabled state. If disabled, the distribution tenant won't service traffic.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the distribution tenant.</p>
    #   @return [String]
    class DistributionTenantSummary < Struct.new(
      :id,
      :distribution_id,
      :name,
      :arn,
      :domains,
      :connection_group_id,
      :customizations,
      :created_time,
      :last_modified_time,
      :e_tag,
      :enabled,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The DNS configuration for your domain names.</p>
    # @!attribute domain
    #   <p>The domain name that you're verifying.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of your domain name.</p> <ul> <li> <p> <code>valid-configuration</code>: The domain name is correctly configured and points to the correct routing endpoint of the connection group.</p> </li> <li> <p> <code>invalid-configuration</code>: There is either a missing DNS record or the DNS record exists but it's using an incorrect routing endpoint. Update the DNS record to point to the correct routing endpoint.</p> </li> <li> <p> <code>unknown-configuration</code>: CloudFront can't validate your DNS configuration. This status can appear if CloudFront can't verify the DNS record, or the DNS lookup request failed or timed out.</p> </li> </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>Explains the status of the DNS configuration.</p>
    #   @return [String]
    class DnsConfiguration < Struct.new(
      :domain,
      :status,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the domain conflict. Use this information to determine the affected domain, the related resource, and the affected Amazon Web Services account.</p>
    # @!attribute domain
    #   <p>The domain used to find existing conflicts for domain configurations.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The CloudFront resource type that has a domain conflict.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that has a domain conflict.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The ID of the Amazon Web Services account for the domain conflict.</p>
    #   @return [String]
    class DomainConflict < Struct.new(
      :domain,
      :resource_type,
      :resource_id,
      :account_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The domain for the specified distribution tenant.</p>
    # @!attribute domain
    #   <p>The domain name.</p>
    #   @return [String]
    class DomainItem < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The details about the domain result.</p>
    # @!attribute domain
    #   <p>The specified domain.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Whether the domain is active or inactive.</p>
    #   @return [String]
    class DomainResult < Struct.new(
      :domain,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Complex data type for field-level encryption profiles that includes all of the encryption entities.</p>
    # @!attribute quantity
    #   <p>Number of field pattern items in a field-level encryption content type-profile mapping.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>An array of field patterns in a field-level encryption content type-profile mapping. </p>
    #   @return [Array<Types::EncryptionEntity>]
    class EncryptionEntities < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Complex data type for field-level encryption profiles that includes the encryption key and field pattern specifications.</p>
    # @!attribute public_key_id
    #   <p>The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns.</p>
    #   @return [String]
    # @!attribute provider_id
    #   <p>The provider associated with the public key being used for encryption. This value must also be provided with the private key for applications to be able to decrypt data.</p>
    #   @return [String]
    # @!attribute field_patterns
    #   <p>Field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted. You can provide the full field name, or any beginning characters followed by a wildcard (*). You can't overlap field patterns. For example, you can't have both ABC* and AB*. Note that field patterns are case-sensitive.</p>
    #   @return [Types::FieldPatterns]
    class EncryptionEntity < Struct.new(
      :public_key_id,
      :provider_id,
      :field_patterns,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Kinesis data stream where you're sending real-time log data in a real-time log configuration.</p>
    # @!attribute stream_type
    #   <p>The type of data stream where you are sending real-time log data. The only valid value is <code>Kinesis</code>.</p>
    #   @return [String]
    # @!attribute kinesis_stream_config
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data in a real-time log configuration.</p>
    #   @return [Types::KinesisStreamConfig]
    class EndPoint < Struct.new(
      :stream_type,
      :kinesis_stream_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity already exists. You must provide a unique entity.</p>
    # @!attribute message
    #   @return [String]
    class EntityAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class EntityLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity was not found.</p>
    # @!attribute message
    #   @return [String]
    class EntityNotFound < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity size limit was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class EntitySizeLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type that includes the profile configurations and other options specified for field-level encryption.</p>
    # @!attribute id
    #   <p>The configuration ID for a field-level encryption configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last time the field-level encryption configuration was changed.</p>
    #   @return [Time]
    # @!attribute field_level_encryption_config
    #   <p>A complex data type that includes the profile configurations specified for field-level encryption.</p>
    #   @return [Types::FieldLevelEncryptionConfig]
    class FieldLevelEncryption < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type that includes the profile configurations specified for field-level encryption.</p>
    # @!attribute caller_reference
    #   <p>A unique number that ensures the request can't be replayed.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment about the configuration. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute query_arg_profile_config
    #   <p>A complex data type that specifies when to forward content if a profile isn't found and the profile that can be provided as a query argument in a request.</p>
    #   @return [Types::QueryArgProfileConfig]
    # @!attribute content_type_profile_config
    #   <p>A complex data type that specifies when to forward content if a content type isn't recognized and profiles to use as by default in a request if a query argument doesn't specify a profile to use.</p>
    #   @return [Types::ContentTypeProfileConfig]
    class FieldLevelEncryptionConfig < Struct.new(
      :caller_reference,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration for field-level encryption already exists.</p>
    # @!attribute message
    #   @return [String]
    class FieldLevelEncryptionConfigAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration for field-level encryption is in use.</p>
    # @!attribute message
    #   @return [String]
    class FieldLevelEncryptionConfigInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>List of field-level encryption configurations.</p>
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your configurations where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of elements you want in the response body.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of field-level encryption items.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>An array of field-level encryption items.</p>
    #   @return [Array<Types::FieldLevelEncryptionSummary>]
    class FieldLevelEncryptionList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type for field-level encryption profiles.</p>
    # @!attribute id
    #   <p>The ID for a field-level encryption profile configuration which includes a set of profiles that specify certain selected data fields to be encrypted by specific public keys.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last time the field-level encryption profile was updated.</p>
    #   @return [Time]
    # @!attribute field_level_encryption_profile_config
    #   <p>A complex data type that includes the profile name and the encryption entities for the field-level encryption profile.</p>
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    class FieldLevelEncryptionProfile < Struct.new(
      :id,
      :last_modified_time,
      :field_level_encryption_profile_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified profile for field-level encryption already exists.</p>
    # @!attribute message
    #   @return [String]
    class FieldLevelEncryptionProfileAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type of profiles for the field-level encryption.</p>
    # @!attribute name
    #   <p>Profile name for the field-level encryption profile.</p>
    #   @return [String]
    # @!attribute caller_reference
    #   <p>A unique number that ensures that the request can't be replayed.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>An optional comment for the field-level encryption profile. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute encryption_entities
    #   <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>
    #   @return [Types::EncryptionEntities]
    class FieldLevelEncryptionProfileConfig < Struct.new(
      :name,
      :caller_reference,
      :comment,
      :encryption_entities,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified profile for field-level encryption is in use.</p>
    # @!attribute message
    #   @return [String]
    class FieldLevelEncryptionProfileInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>List of field-level encryption profiles.</p>
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your profiles where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of field-level encryption profiles.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The field-level encryption profile items.</p>
    #   @return [Array<Types::FieldLevelEncryptionProfileSummary>]
    class FieldLevelEncryptionProfileList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum size of a profile for field-level encryption was exceeded.</p>
    # @!attribute message
    #   @return [String]
    class FieldLevelEncryptionProfileSizeExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The field-level encryption profile summary.</p>
    # @!attribute id
    #   <p>ID for the field-level encryption profile summary.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The time when the field-level encryption profile summary was last updated.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>Name for the field-level encryption profile summary.</p>
    #   @return [String]
    # @!attribute encryption_entities
    #   <p>A complex data type of encryption entities for the field-level encryption profile that include the public key ID, provider, and field patterns for specifying which fields to encrypt with this key.</p>
    #   @return [Types::EncryptionEntities]
    # @!attribute comment
    #   <p>An optional comment for the field-level encryption profile summary. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    class FieldLevelEncryptionProfileSummary < Struct.new(
      :id,
      :last_modified_time,
      :name,
      :encryption_entities,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a field-level encryption item.</p>
    # @!attribute id
    #   <p>The unique ID of a field-level encryption item.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last time that the summary of field-level encryption items was modified.</p>
    #   @return [Time]
    # @!attribute comment
    #   <p>An optional comment about the field-level encryption item. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute query_arg_profile_config
    #   <p>A summary of a query argument-profile mapping.</p>
    #   @return [Types::QueryArgProfileConfig]
    # @!attribute content_type_profile_config
    #   <p>A summary of a content type-profile mapping.</p>
    #   @return [Types::ContentTypeProfileConfig]
    class FieldLevelEncryptionSummary < Struct.new(
      :id,
      :last_modified_time,
      :comment,
      :query_arg_profile_config,
      :content_type_profile_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type that includes the field patterns to match for field-level encryption.</p>
    # @!attribute quantity
    #   <p>The number of field-level encryption field patterns.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>An array of the field-level encryption field patterns.</p>
    #   @return [Array<String>]
    class FieldPatterns < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include values in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send values to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies how CloudFront handles query strings, cookies, and HTTP headers.</p>
    # @!attribute query_string
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior and cache based on the query string parameters. CloudFront behavior depends on the value of <code>QueryString</code> and on the values that you specify for <code>QueryStringCacheKeys</code>, if any:</p> <p>If you specify true for <code>QueryString</code> and you don't specify any values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin and caches based on all query string parameters. Depending on how many query string parameters and values you have, this can adversely affect performance because CloudFront must forward more requests to the origin.</p> <p>If you specify true for <code>QueryString</code> and you specify one or more values for <code>QueryStringCacheKeys</code>, CloudFront forwards all query string parameters to the origin, but it only caches based on the query string parameters that you specify.</p> <p>If you specify false for <code>QueryString</code>, CloudFront doesn't forward any query string parameters to the origin, and doesn't cache based on query string parameters.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/QueryStringParameters.html">Configuring CloudFront to Cache Based on Query String Parameters</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute cookies
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include cookies in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send cookies to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies whether you want CloudFront to forward cookies to the origin and, if so, which ones. For more information about forwarding cookies to the origin, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html">How CloudFront Forwards, Caches, and Logs Cookies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::CookiePreference]
    # @!attribute headers
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include headers in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send headers to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that specifies the <code>Headers</code>, if any, that you want CloudFront to forward to the origin for this cache behavior (whitelisted headers). For the headers that you specify, CloudFront also caches separate versions of a specified object that is based on the header values in viewer requests.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/header-caching.html"> Caching Content Based on Request Headers</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::Headers]
    # @!attribute query_string_cache_keys
    #   <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use a cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-key-create-cache-policy">Creating cache policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use an origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-origin-requests.html#origin-request-create-origin-request-policy">Creating origin request policies</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for this cache behavior.</p>
    #   @return [Types::QueryStringCacheKeys]
    class ForwardedValues < Struct.new(
      :query_string,
      :cookies,
      :headers,
      :query_string_cache_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A function with the same name already exists in this Amazon Web Services account. To create a function, you must provide a unique name. To update an existing function, use <code>UpdateFunction</code>.</p>
    # @!attribute message
    #   @return [String]
    class FunctionAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFront function that is associated with a cache behavior in a CloudFront distribution.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>The event type of the function, either <code>viewer-request</code> or <code>viewer-response</code>. You cannot use origin-facing event types (<code>origin-request</code> and <code>origin-response</code>) with a CloudFront function.</p>
    #   @return [String]
    class FunctionAssociation < Struct.new(
      :function_arn,
      :event_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CloudFront functions that are associated with a cache behavior in a CloudFront distribution. Your functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>
    # @!attribute quantity
    #   <p>The number of CloudFront functions in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The CloudFront functions that are associated with a cache behavior in a CloudFront distribution. Your functions must be published to the <code>LIVE</code> stage to associate them with a cache behavior.</p>
    #   @return [Array<Types::FunctionAssociation>]
    class FunctionAssociations < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information about a CloudFront function.</p>
    # @!attribute comment
    #   <p>A comment to describe the function.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The function's runtime environment version.</p>
    #   @return [String]
    # @!attribute key_value_store_associations
    #   <p>The configuration for the key value store associations.</p>
    #   @return [Types::KeyValueStoreAssociations]
    class FunctionConfig < Struct.new(
      :comment,
      :runtime,
      :key_value_store_associations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the function because it's attached to one or more cache behaviors.</p>
    # @!attribute message
    #   @return [String]
    class FunctionInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CloudFront functions.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing functions where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of functions requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of functions returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the functions in the list.</p>
    #   @return [Array<Types::FunctionSummary>]
    class FunctionList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a CloudFront function.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the function. The ARN uniquely identifies the function.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The stage that the function is in, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p> <p>When a function is in the <code>DEVELOPMENT</code> stage, you can test the function with <code>TestFunction</code>, and update it with <code>UpdateFunction</code>.</p> <p>When a function is in the <code>LIVE</code> stage, you can attach the function to a distribution's cache behavior, using the function's ARN.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the function was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time when the function was most recently updated.</p>
    #   @return [Time]
    class FunctionMetadata < Struct.new(
      :function_arn,
      :stage,
      :created_time,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The function is too large. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class FunctionSizeLimitExceeded < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains configuration information and metadata about a CloudFront function.</p>
    # @!attribute name
    #   <p>The name of the CloudFront function.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the CloudFront function.</p>
    #   @return [String]
    # @!attribute function_config
    #   <p>Contains configuration information about a CloudFront function.</p>
    #   @return [Types::FunctionConfig]
    # @!attribute function_metadata
    #   <p>Contains metadata about a CloudFront function.</p>
    #   @return [Types::FunctionMetadata]
    class FunctionSummary < Struct.new(
      :name,
      :status,
      :function_config,
      :function_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases. </p>
    # @!attribute restriction_type
    #   <p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geo restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>
    #   @return [String]
    # @!attribute quantity
    #   <p>When geo restriction is <code>enabled</code>, this is the number of countries in your <code>whitelist</code> or <code>blacklist</code>. Otherwise, when it is not enabled, <code>Quantity</code> is <code>0</code>, and you can omit <code>Items</code>.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains a <code>Location</code> element for each country in which you want CloudFront either to distribute your content (<code>whitelist</code>) or not distribute your content (<code>blacklist</code>).</p> <p>The <code>Location</code> element is a two-letter, uppercase country code for a country that you want to include in your <code>blacklist</code> or <code>whitelist</code>. Include one <code>Location</code> element for each country.</p> <p>CloudFront and <code>MaxMind</code> both use <code>ISO 3166</code> country codes. For the current list of countries and the corresponding codes, see <code>ISO 3166-1-alpha-2</code> code on the <i>International Organization for Standardization</i> website. You can also refer to the country list on the CloudFront console, which includes both country names and codes.</p>
    #   @return [Array<String>]
    class GeoRestriction < Struct.new(
      :restriction_type,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The customizations that you specified for the distribution tenant for geographic restrictions.</p>
    # @!attribute restriction_type
    #   <p>The method that you want to use to restrict distribution of your content by country:</p> <ul> <li> <p> <code>none</code>: No geographic restriction is enabled, meaning access to content is not restricted by client geo location.</p> </li> <li> <p> <code>blacklist</code>: The <code>Location</code> elements specify the countries in which you don't want CloudFront to distribute your content.</p> </li> <li> <p> <code>whitelist</code>: The <code>Location</code> elements specify the countries in which you want CloudFront to distribute your content.</p> </li> </ul>
    #   @return [String]
    # @!attribute locations
    #   <p>The locations for geographic restrictions.</p>
    #   @return [Array<String>]
    class GeoRestrictionCustomization < Struct.new(
      :restriction_type,
      :locations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    class GetAnycastIpListRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute anycast_ip_list
    #   <p>The Anycast static IP list details.</p>
    #   @return [Types::AnycastIpList]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the Anycast static IP list.</p>
    #   @return [String]
    class GetAnycastIpListResult < Struct.new(
      :anycast_ip_list,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    #   @return [String]
    class GetCachePolicyConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy_config
    #   <p>The cache policy configuration.</p>
    #   @return [Types::CachePolicyConfig]
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #   @return [String]
    class GetCachePolicyConfigResult < Struct.new(
      :cache_policy_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the cache policy. If the cache policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the cache policy is not attached to a cache behavior, you can get the identifier using <code>ListCachePolicies</code>.</p>
    #   @return [String]
    class GetCachePolicyRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy
    #   <p>The cache policy.</p>
    #   @return [Types::CachePolicy]
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #   @return [String]
    class GetCachePolicyResult < Struct.new(
      :cache_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The origin access identity's configuration information. For more information, see <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CloudFrontOriginAccessIdentityConfig.html">CloudFrontOriginAccessIdentityConfig</a>.</p>
    # @!attribute id
    #   <p>The identity's ID.</p>
    #   @return [String]
    class GetCloudFrontOriginAccessIdentityConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The origin access identity's configuration information.</p>
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetCloudFrontOriginAccessIdentityConfigResult < Struct.new(
      :cloud_front_origin_access_identity_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get an origin access identity's information.</p>
    # @!attribute id
    #   <p>The identity's ID.</p>
    #   @return [String]
    class GetCloudFrontOriginAccessIdentityRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #   @return [Types::CloudFrontOriginAccessIdentity]
    # @!attribute e_tag
    #   <p>The current version of the origin access identity's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute routing_endpoint
    #   <p>The routing endpoint for the target connection group, such as d111111abcdef8.cloudfront.net.</p>
    #   @return [String]
    class GetConnectionGroupByRoutingEndpointRequest < Struct.new(
      :routing_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_group
    #   <p>The connection group for your distribution tenants. When you first create a distribution tenant and you don't specify a connection group, CloudFront will automatically create a default connection group for you. When you create a new distribution tenant and don't specify a connection group, the default one will be associated with your distribution tenant.</p>
    #   @return [Types::ConnectionGroup]
    # @!attribute e_tag
    #   <p>The current version of the connection group.</p>
    #   @return [String]
    class GetConnectionGroupByRoutingEndpointResult < Struct.new(
      :connection_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ID, name, or Amazon Resource Name (ARN) of the connection group.</p>
    #   @return [String]
    class GetConnectionGroupRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_group
    #   <p>The connection group that you retrieved.</p>
    #   @return [Types::ConnectionGroup]
    # @!attribute e_tag
    #   <p>The current version of the connection group.</p>
    #   @return [String]
    class GetConnectionGroupResult < Struct.new(
      :connection_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the continuous deployment policy whose configuration you are getting.</p>
    #   @return [String]
    class GetContinuousDeploymentPolicyConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy_config
    #   <p>Contains the configuration for a continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the continuous deployment policy.</p>
    #   @return [String]
    class GetContinuousDeploymentPolicyConfigResult < Struct.new(
      :continuous_deployment_policy_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the continuous deployment policy that you are getting.</p>
    #   @return [String]
    class GetContinuousDeploymentPolicyRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy
    #   <p>A continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicy]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the continuous deployment policy.</p>
    #   @return [String]
    class GetContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get a distribution configuration.</p>
    # @!attribute id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #   @return [String]
    class GetDistributionConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #   @return [Types::DistributionConfig]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetDistributionConfigResult < Struct.new(
      :distribution_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get a distribution's information.</p>
    # @!attribute id
    #   <p>The distribution's ID. If the ID is empty, an empty distribution configuration is returned.</p>
    #   @return [String]
    class GetDistributionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #   @return [Types::Distribution]
    # @!attribute e_tag
    #   <p>The current version of the distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetDistributionResult < Struct.new(
      :distribution,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>A domain name associated with the target distribution tenant.</p>
    #   @return [String]
    class GetDistributionTenantByDomainRequest < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_tenant
    #   <p>The distribution tenant.</p>
    #   @return [Types::DistributionTenant]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class GetDistributionTenantByDomainResult < Struct.new(
      :distribution_tenant,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    #   @return [String]
    class GetDistributionTenantRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_tenant
    #   <p>The distribution tenant that you retrieved.</p>
    #   @return [Types::DistributionTenant]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class GetDistributionTenantResult < Struct.new(
      :distribution_tenant,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #   @return [String]
    class GetFieldLevelEncryptionConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>Return the field-level encryption configuration information.</p>
    #   @return [Types::FieldLevelEncryptionConfig]
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Get the ID for the field-level encryption profile configuration information.</p>
    #   @return [String]
    class GetFieldLevelEncryptionProfileConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>Return the field-level encryption profile configuration information.</p>
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    # @!attribute e_tag
    #   <p>The current version of the field-level encryption profile configuration result. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetFieldLevelEncryptionProfileConfigResult < Struct.new(
      :field_level_encryption_profile_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Get the ID for the field-level encryption profile information.</p>
    #   @return [String]
    class GetFieldLevelEncryptionProfileRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Return the field-level encryption profile information.</p>
    #   @return [Types::FieldLevelEncryptionProfile]
    # @!attribute e_tag
    #   <p>The current version of the field level encryption profile. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Request the ID for the field-level encryption configuration information.</p>
    #   @return [String]
    class GetFieldLevelEncryptionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Return the field-level encryption configuration information.</p>
    #   @return [Types::FieldLevelEncryption]
    # @!attribute e_tag
    #   <p>The current version of the field level encryption configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetFieldLevelEncryptionResult < Struct.new(
      :field_level_encryption,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function whose code you are getting.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The function's stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #   @return [String]
    class GetFunctionRequest < Struct.new(
      :name,
      :stage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_code
    #   <p>The function code of a CloudFront function.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type (media type) of the response.</p>
    #   @return [String]
    class GetFunctionResult < Struct.new(
      :function_code,
      :e_tag,
      :content_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_tenant_id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the invalidation to retrieve.</p>
    #   @return [String]
    class GetInvalidationForDistributionTenantRequest < Struct.new(
      :distribution_tenant_id,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invalidation
    #   <p>An invalidation.</p>
    #   @return [Types::Invalidation]
    class GetInvalidationForDistributionTenantResult < Struct.new(
      :invalidation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get an invalidation's information.</p>
    # @!attribute distribution_id
    #   <p>The distribution's ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier for the invalidation request, for example, <code>IDFDVBD632BHDS5</code>.</p>
    #   @return [String]
    class GetInvalidationRequest < Struct.new(
      :distribution_id,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute invalidation
    #   <p>The invalidation's information. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/InvalidationDatatype.html">Invalidation Complex Type</a>.</p>
    #   @return [Types::Invalidation]
    class GetInvalidationResult < Struct.new(
      :invalidation,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group whose configuration you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    #   @return [String]
    class GetKeyGroupConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #   @return [Types::KeyGroupConfig]
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #   @return [String]
    class GetKeyGroupConfigResult < Struct.new(
      :key_group_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the key group that you are getting. To get the identifier, use <code>ListKeyGroups</code>.</p>
    #   @return [String]
    class GetKeyGroupRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group
    #   <p>The key group.</p>
    #   @return [Types::KeyGroup]
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #   @return [String]
    class GetKeyGroupResult < Struct.new(
      :key_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    #   @return [String]
    class GetManagedCertificateDetailsRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute managed_certificate_details
    #   <p>Contains details about the CloudFront managed ACM certificate.</p>
    #   @return [Types::ManagedCertificateDetails]
    class GetManagedCertificateDetailsResult < Struct.new(
      :managed_certificate_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of the distribution that you are getting metrics information for.</p>
    #   @return [String]
    class GetMonitoringSubscriptionRequest < Struct.new(
      :distribution_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute monitoring_subscription
    #   <p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #   @return [Types::MonitoringSubscription]
    class GetMonitoringSubscriptionResult < Struct.new(
      :monitoring_subscription,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the origin access control.</p>
    #   @return [String]
    class GetOriginAccessControlConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control_config
    #   <p>Contains an origin access control configuration.</p>
    #   @return [Types::OriginAccessControlConfig]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the origin access control.</p>
    #   @return [String]
    class GetOriginAccessControlConfigResult < Struct.new(
      :origin_access_control_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the origin access control.</p>
    #   @return [String]
    class GetOriginAccessControlRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control
    #   <p>Contains an origin access control, including its unique identifier.</p>
    #   @return [Types::OriginAccessControl]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the origin access control.</p>
    #   @return [String]
    class GetOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    #   @return [String]
    class GetOriginRequestPolicyConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>The origin request policy configuration.</p>
    #   @return [Types::OriginRequestPolicyConfig]
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #   @return [String]
    class GetOriginRequestPolicyConfigResult < Struct.new(
      :origin_request_policy_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier for the origin request policy. If the origin request policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the origin request policy is not attached to a cache behavior, you can get the identifier using <code>ListOriginRequestPolicies</code>.</p>
    #   @return [String]
    class GetOriginRequestPolicyRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy
    #   <p>The origin request policy.</p>
    #   @return [Types::OriginRequestPolicy]
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #   @return [String]
    class GetOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the public key whose configuration you are getting.</p>
    #   @return [String]
    class GetPublicKeyConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_config
    #   <p>A public key configuration.</p>
    #   @return [Types::PublicKeyConfig]
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key configuration.</p>
    #   @return [String]
    class GetPublicKeyConfigResult < Struct.new(
      :public_key_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the public key you are getting.</p>
    #   @return [String]
    class GetPublicKeyRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #   @return [Types::PublicKey]
    # @!attribute e_tag
    #   <p>The identifier for this version of the public key.</p>
    #   @return [String]
    class GetPublicKeyResult < Struct.new(
      :public_key,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the real-time log configuration to get.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration to get.</p>
    #   @return [String]
    class GetRealtimeLogConfigRequest < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #   @return [Types::RealtimeLogConfig]
    class GetRealtimeLogConfigResult < Struct.new(
      :realtime_log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    #   @return [String]
    class GetResponseHeadersPolicyConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>Contains a response headers policy.</p>
    #   @return [Types::ResponseHeadersPolicyConfig]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #   @return [String]
    class GetResponseHeadersPolicyConfigResult < Struct.new(
      :response_headers_policy_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier for the response headers policy.</p> <p>If the response headers policy is attached to a distribution's cache behavior, you can get the policy's identifier using <code>ListDistributions</code> or <code>GetDistribution</code>. If the response headers policy is not attached to a cache behavior, you can get the identifier using <code>ListResponseHeadersPolicies</code>.</p>
    #   @return [String]
    class GetResponseHeadersPolicyRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy
    #   <p>Contains a response headers policy.</p>
    #   @return [Types::ResponseHeadersPolicy]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the response headers policy.</p>
    #   @return [String]
    class GetResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>To request to get a streaming distribution configuration.</p>
    # @!attribute id
    #   <p>The streaming distribution's ID.</p>
    #   @return [String]
    class GetStreamingDistributionConfigRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #   @return [Types::StreamingDistributionConfig]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>. </p>
    #   @return [String]
    class GetStreamingDistributionConfigResult < Struct.new(
      :streaming_distribution_config,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get a streaming distribution's information.</p>
    # @!attribute id
    #   <p>The streaming distribution's ID.</p>
    #   @return [String]
    class GetStreamingDistributionRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #   @return [Types::StreamingDistribution]
    # @!attribute e_tag
    #   <p>The current version of the streaming distribution's information. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class GetStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    class GetVpcOriginRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin
    #   <p>The VPC origin.</p>
    #   @return [Types::VpcOrigin]
    # @!attribute e_tag
    #   <p>The VPC origin ETag.</p>
    #   @return [String]
    class GetVpcOriginResult < Struct.new(
      :vpc_origin,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon CloudFront supports gRPC, an open-source remote procedure call (RPC) framework built on HTTP/2. gRPC offers bi-directional streaming and binary protocol that buffers payloads, making it suitable for applications that require low latency communications.</p> <p>To enable your distribution to handle gRPC requests, you must include HTTP/2 as one of the supported <code>HTTP</code> versions and allow <code>HTTP</code> methods, including <code>POST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-using-grpc.html">Using gRPC with CloudFront distributions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute enabled
    #   <p>Enables your CloudFront distribution to receive gRPC requests and to proxy them directly to your origins.</p>
    #   @return [Boolean]
    class GrpcConfig < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of HTTP header names.</p>
    # @!attribute quantity
    #   <p>The number of header names in the <code>Items</code> list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of HTTP header names.</p>
    #   @return [Array<String>]
    class Headers < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Deletion is not allowed for this entity.</p>
    # @!attribute message
    #   @return [String]
    class IllegalDelete < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration for field-level encryption can't be associated with the specified cache behavior.</p>
    # @!attribute message
    #   @return [String]
    class IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin cannot contain both an origin access control (OAC) and an origin access identity (OAI).</p>
    # @!attribute message
    #   @return [String]
    class IllegalOriginAccessConfiguration < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The update contains modifications that are not allowed.</p>
    # @!attribute message
    #   @return [String]
    class IllegalUpdate < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The import source for the key value store.</p>
    # @!attribute source_type
    #   <p>The source type of the import source for the key value store.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The Amazon Resource Name (ARN) of the import source for the key value store.</p>
    #   @return [String]
    class ImportSource < Struct.new(
      :source_type,
      :source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value of <code>Quantity</code> and the size of <code>Items</code> don't match.</p>
    # @!attribute message
    #   @return [String]
    class InconsistentQuantities < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An argument is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgument < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified CloudFront resource can't be associated.</p>
    # @!attribute message
    #   @return [String]
    class InvalidAssociation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The default root object file name is too big or contains an invalid character.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDefaultRootObject < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin access control is associated with an origin whose domain name is not supported.</p>
    # @!attribute message
    #   @return [String]
    class InvalidDomainNameForOriginAccessControl < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid error code was specified.</p>
    # @!attribute message
    #   @return [String]
    class InvalidErrorCode < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains forward cookies option which doesn't match with the expectation for the <code>whitelisted</code> list of cookie names. Either list of cookie names has been specified when not allowed or list of cookie names is missing when expected.</p>
    # @!attribute message
    #   @return [String]
    class InvalidForwardCookies < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFront function association is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidFunctionAssociation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified geo restriction parameter is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidGeoRestrictionParameter < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The headers specified are not valid for an Amazon S3 origin.</p>
    # @!attribute message
    #   @return [String]
    class InvalidHeadersForS3Origin < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>If-Match</code> version is missing or not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidIfMatchVersion < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Lambda@Edge function association is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLambdaFunctionAssociation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The location code specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidLocationCode < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The minimum protocol version specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidMinimumProtocolVersion < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 origin server specified does not refer to a valid Amazon S3 bucket.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOrigin < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The origin access control is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOriginAccessControl < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The origin access identity is not valid or doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOriginAccessIdentity < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The keep alive timeout specified for the origin is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOriginKeepaliveTimeout < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The read timeout specified for the origin is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOriginReadTimeout < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot specify SSLv3 as the minimum protocol version if you only want to support only clients that support Server Name Indication (SNI).</p>
    # @!attribute message
    #   @return [String]
    class InvalidProtocolSettings < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The query string parameters specified are not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidQueryStringParameters < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The relative path is too big, is not URL-encoded, or does not begin with a slash (/).</p>
    # @!attribute message
    #   @return [String]
    class InvalidRelativePath < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation requires the HTTPS protocol. Ensure that you specify the HTTPS protocol in your request, or omit the <code>RequiredProtocols</code> element from your distribution configuration.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequiredProtocol < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response code is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResponseCode < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The TTL order specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTTLOrder < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tagging specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidTagging < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A viewer certificate specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidViewerCertificate < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A web ACL ID specified is not valid. To specify a web ACL created using the latest version of WAF, use the ACL ARN, for example <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/473e64fd-f30b-4765-81a0-62ad96dd167a</code>. To specify a web ACL created using WAF Classic, use the ACL ID, for example <code>473e64fd-f30b-4765-81a0-62ad96dd167a</code>.</p>
    # @!attribute message
    #   @return [String]
    class InvalidWebACLId < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An invalidation.</p>
    # @!attribute id
    #   <p>The identifier for the invalidation request. For example: <code>IDFDVBD632BHDS5</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the invalidation request. When the invalidation batch is finished, the status is <code>Completed</code>.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The date and time the invalidation request was first made.</p>
    #   @return [Time]
    # @!attribute invalidation_batch
    #   <p>The current invalidation information for the batch request.</p>
    #   @return [Types::InvalidationBatch]
    class Invalidation < Struct.new(
      :id,
      :status,
      :create_time,
      :invalidation_batch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An invalidation batch.</p>
    # @!attribute paths
    #   <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::Paths]
    # @!attribute caller_reference
    #   <p>A value that you specify to uniquely identify an invalidation request. CloudFront uses the value to prevent you from accidentally resubmitting an identical request. Whenever you create a new invalidation request, you must specify a new value for <code>CallerReference</code> and change other values in the request as applicable. One way to ensure that the value of <code>CallerReference</code> is unique is to use a <code>timestamp</code>, for example, <code>20120301090000</code>.</p> <p>If you make a second invalidation request with the same value for <code>CallerReference</code>, and if the rest of the request is the same, CloudFront doesn't create a new invalidation request. Instead, CloudFront returns information about the invalidation request that you previously created with the same <code>CallerReference</code>.</p> <p>If <code>CallerReference</code> is a value you already sent in a previous invalidation batch request but the content of any <code>Path</code> is different from the original request, CloudFront returns an <code>InvalidationBatchAlreadyExists</code> error.</p>
    #   @return [String]
    class InvalidationBatch < Struct.new(
      :paths,
      :caller_reference,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your invalidation batches where they left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more invalidation batch requests remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more invalidation batches in the list.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of invalidation batches that were created by the current Amazon Web Services account. </p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains one <code>InvalidationSummary</code> element for each invalidation batch created by the current Amazon Web Services account.</p>
    #   @return [Array<Types::InvalidationSummary>]
    class InvalidationList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an invalidation request.</p>
    # @!attribute id
    #   <p>The unique ID for an invalidation request.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time that an invalidation request was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of an invalidation request.</p>
    #   @return [String]
    class InvalidationSummary < Struct.new(
      :id,
      :create_time,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of identifiers for the public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute key_group_id
    #   <p>The identifier of the key group that contains the public keys.</p>
    #   @return [String]
    # @!attribute key_pair_ids
    #   <p>A list of CloudFront key pair identifiers.</p>
    #   @return [Types::KeyPairIds]
    class KGKeyPairIds < Struct.new(
      :key_group_id,
      :key_pair_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key group.</p> <p>A key group contains a list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p>
    # @!attribute id
    #   <p>The identifier for the key group.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time when the key group was last modified.</p>
    #   @return [Time]
    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #   @return [Types::KeyGroupConfig]
    class KeyGroup < Struct.new(
      :id,
      :last_modified_time,
      :key_group_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key group with this name already exists. You must provide a unique name. To modify an existing key group, use <code>UpdateKeyGroup</code>.</p>
    # @!attribute message
    #   @return [String]
    class KeyGroupAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key group configuration.</p> <p>A key group contains a list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">CloudFront signed URLs and signed cookies</a>.</p>
    # @!attribute name
    #   <p>A name to identify the key group.</p>
    #   @return [String]
    # @!attribute items
    #   <p>A list of the identifiers of the public keys in the key group.</p>
    #   @return [Array<String>]
    # @!attribute comment
    #   <p>A comment to describe the key group. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    class KeyGroupConfig < Struct.new(
      :name,
      :items,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of key groups.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing key groups.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of key groups requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of key groups returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of key groups.</p>
    #   @return [Array<Types::KeyGroupSummary>]
    class KeyGroupList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a key group.</p>
    # @!attribute key_group
    #   <p>A key group.</p>
    #   @return [Types::KeyGroup]
    class KeyGroupSummary < Struct.new(
      :key_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CloudFront key pair identifiers.</p>
    # @!attribute quantity
    #   <p>The number of key pair identifiers in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of CloudFront key pair identifiers.</p>
    #   @return [Array<String>]
    class KeyPairIds < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key value store. Use this to separate data from function code, allowing you to update data without having to publish a new version of a function. The key value store holds keys and their corresponding values.</p>
    # @!attribute name
    #   <p>The name of the key value store.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique Id for the key value store.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment for the key value store.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the key value store.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the key value store.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The last-modified time of the key value store.</p>
    #   @return [Time]
    class KeyValueStore < Struct.new(
      :name,
      :id,
      :comment,
      :arn,
      :status,
      :last_modified_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key value store association.</p>
    # @!attribute key_value_store_arn
    #   <p>The Amazon Resource Name (ARN) of the key value store association.</p>
    #   @return [String]
    class KeyValueStoreAssociation < Struct.new(
      :key_value_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key value store associations.</p>
    # @!attribute quantity
    #   <p>The quantity of key value store associations.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The items of the key value store association.</p>
    #   @return [Array<Types::KeyValueStoreAssociation>]
    class KeyValueStoreAssociations < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key value store list.</p>
    # @!attribute next_marker
    #   <p>The next marker associated with the key value store list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items in the key value store list.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The quantity of the key value store list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The items of the key value store list.</p>
    #   @return [Array<Types::KeyValueStore>]
    class KeyValueStoreList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that CloudFront can use to send real-time log data to your Kinesis data stream.</p> <p>For more information the IAM role, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role">Real-time log configuration IAM role</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) of the Kinesis data stream where you are sending real-time log data.</p>
    #   @return [String]
    class KinesisStreamConfig < Struct.new(
      :role_arn,
      :stream_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains a Lambda@Edge function association.</p>
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Lambda@Edge function. You must specify the ARN of a function version; you can't specify an alias or $LATEST.</p>
    #   @return [String]
    # @!attribute event_type
    #   <p>Specifies the event type that triggers a Lambda@Edge function invocation. You can specify the following values:</p> <ul> <li> <p> <code>viewer-request</code>: The function executes when CloudFront receives a request from a viewer and before it checks to see whether the requested object is in the edge cache.</p> </li> <li> <p> <code>origin-request</code>: The function executes only when CloudFront sends a request to your origin. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>origin-response</code>: The function executes after CloudFront receives a response from the origin and before it caches the object in the response. When the requested object is in the edge cache, the function doesn't execute.</p> </li> <li> <p> <code>viewer-response</code>: The function executes before CloudFront returns the requested object to the viewer. The function executes regardless of whether the object was already in the edge cache.</p> <p>If the origin returns an HTTP status code other than HTTP 200 (OK), the function doesn't execute.</p> </li> </ul>
    #   @return [String]
    # @!attribute include_body
    #   <p>A flag that allows a Lambda@Edge function to have read access to the body content. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html">Accessing the Request Body by Choosing the Include Body Option</a> in the Amazon CloudFront Developer Guide.</p>
    #   @return [Boolean]
    class LambdaFunctionAssociation < Struct.new(
      :lambda_function_arn,
      :event_type,
      :include_body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that specifies a list of Lambda@Edge functions associations for a cache behavior.</p> <p>If you want to invoke one or more Lambda@Edge functions triggered by requests that match the <code>PathPattern</code> of the cache behavior, specify the applicable values for <code>Quantity</code> and <code>Items</code>. Note that there can be up to 4 <code>LambdaFunctionAssociation</code> items in this list (one for each possible value of <code>EventType</code>) and each <code>EventType</code> can be associated with only one function.</p> <p>If you don't want to invoke any Lambda@Edge functions for the requests that match <code>PathPattern</code>, specify <code>0</code> for <code>Quantity</code> and omit <code>Items</code>.</p>
    # @!attribute quantity
    #   <p>The number of Lambda@Edge function associations for this cache behavior.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p> <b>Optional</b>: A complex type that contains <code>LambdaFunctionAssociation</code> items for this cache behavior. If <code>Quantity</code> is <code>0</code>, you can omit <code>Items</code>.</p>
    #   @return [Array<Types::LambdaFunctionAssociation>]
    class LambdaFunctionAssociations < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of Anycast static IP lists that you want returned in the response.</p>
    #   @return [Integer]
    class ListAnycastIpListsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute anycast_ip_lists
    #   <p>Root level tag for the <code>AnycastIpLists</code> parameters.</p>
    #   @return [Types::AnycastIpListCollection]
    class ListAnycastIpListsResult < Struct.new(
      :anycast_ip_lists,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>A filter to return only the specified kinds of cache policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of cache policies. The response includes cache policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of cache policies that you want in the response.</p>
    #   @return [Integer]
    class ListCachePoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy_list
    #   <p>A list of cache policies.</p>
    #   @return [Types::CachePolicyList]
    class ListCachePoliciesResult < Struct.new(
      :cache_policy_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list origin access identities.</p>
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of origin access identities. The results include identities in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last identity on that page).</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin access identities you want in the response body.</p>
    #   @return [Integer]
    class ListCloudFrontOriginAccessIdentitiesRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute cloud_front_origin_access_identity_list
    #   <p>The <code>CloudFrontOriginAccessIdentityList</code> type.</p>
    #   @return [Types::CloudFrontOriginAccessIdentityList]
    class ListCloudFrontOriginAccessIdentitiesResult < Struct.new(
      :cloud_front_origin_access_identity_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id
    #   <p>The ID of a standard distribution in your account that has an attached TLS certificate that includes the provided alias.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The alias (also called a CNAME) to search for conflicting aliases.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in the list of conflicting aliases. The response includes conflicting aliases in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of conflicting aliases that you want in the response.</p>
    #   @return [Integer]
    class ListConflictingAliasesRequest < Struct.new(
      :distribution_id,
      :alias,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute conflicting_aliases_list
    #   <p>A list of conflicting aliases.</p>
    #   @return [Types::ConflictingAliasesList]
    class ListConflictingAliasesResult < Struct.new(
      :conflicting_aliases_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_filter
    #   <p>Filter by associated Anycast IP list ID.</p>
    #   @return [Types::ConnectionGroupAssociationFilter]
    # @!attribute marker
    #   <p>The marker for the next set of connection groups to retrieve.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of connection groups to return.</p>
    #   @return [Integer]
    class ListConnectionGroupsRequest < Struct.new(
      :association_filter,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>
    #   @return [String]
    # @!attribute connection_groups
    #   <p>The list of connection groups that you retrieved.</p>
    #   @return [Array<Types::ConnectionGroupSummary>]
    class ListConnectionGroupsResult < Struct.new(
      :next_marker,
      :connection_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of continuous deployment policies. The response includes policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of continuous deployment policies that you want returned in the response.</p>
    #   @return [Integer]
    class ListContinuousDeploymentPoliciesRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy_list
    #   <p>A list of continuous deployment policies.</p>
    #   @return [Types::ContinuousDeploymentPolicyList]
    class ListContinuousDeploymentPoliciesResult < Struct.new(
      :continuous_deployment_policy_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_acl_arn
    #   <p>Filter by the ARN of the associated WAF web ACL.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>Filter by the ARN of the associated ACM certificate.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution tenants to return by the specified customization.</p>
    #   @return [Integer]
    class ListDistributionTenantsByCustomizationRequest < Struct.new(
      :web_acl_arn,
      :certificate_arn,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>
    #   @return [String]
    # @!attribute distribution_tenant_list
    #   <p>A list of distribution tenants with the specified customization.</p>
    #   @return [Array<Types::DistributionTenantSummary>]
    class ListDistributionTenantsByCustomizationResult < Struct.new(
      :next_marker,
      :distribution_tenant_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_filter
    #   <p>Filter by the associated distribution ID or connection group ID.</p>
    #   @return [Types::DistributionTenantAssociationFilter]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution tenants to return.</p>
    #   @return [Integer]
    class ListDistributionTenantsRequest < Struct.new(
      :association_filter,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_marker
    #   <p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>
    #   @return [String]
    # @!attribute distribution_tenant_list
    #   <p>The list of distribution tenants that you retrieved.</p>
    #   @return [Array<Types::DistributionTenantSummary>]
    class ListDistributionTenantsResult < Struct.new(
      :next_marker,
      :distribution_tenant_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list. The response includes items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distributions that you want returned in the response.</p>
    #   @return [Integer]
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    class ListDistributionsByAnycastIpListIdRequest < Struct.new(
      :marker,
      :max_items,
      :anycast_ip_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_list
    #   <p>A distribution list.</p>
    #   @return [Types::DistributionList]
    class ListDistributionsByAnycastIpListIdResult < Struct.new(
      :distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #   @return [Integer]
    # @!attribute cache_policy_id
    #   <p>The ID of the cache policy whose associated distribution IDs you want to list.</p>
    #   @return [String]
    class ListDistributionsByCachePolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :cache_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #   @return [Types::DistributionIdList]
    class ListDistributionsByCachePolicyIdResult < Struct.new(
      :distribution_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p> The marker for the next set of distributions to retrieve.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distributions to return.</p>
    #   @return [Integer]
    # @!attribute connection_mode
    #   <p>This field specifies whether the connection mode is through a standard distribution (direct) or a multi-tenant distribution with distribution tenants (tenant-only).</p>
    #   @return [String]
    class ListDistributionsByConnectionModeRequest < Struct.new(
      :marker,
      :max_items,
      :connection_mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_list
    #   <p>A distribution list.</p>
    #   @return [Types::DistributionList]
    class ListDistributionsByConnectionModeResult < Struct.new(
      :distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #   @return [Integer]
    # @!attribute key_group_id
    #   <p>The ID of the key group whose associated distribution IDs you are listing.</p>
    #   @return [String]
    class ListDistributionsByKeyGroupRequest < Struct.new(
      :marker,
      :max_items,
      :key_group_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #   @return [Types::DistributionIdList]
    class ListDistributionsByKeyGroupResult < Struct.new(
      :distribution_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want in the response.</p>
    #   @return [Integer]
    # @!attribute origin_request_policy_id
    #   <p>The ID of the origin request policy whose associated distribution IDs you want to list.</p>
    #   @return [String]
    class ListDistributionsByOriginRequestPolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :origin_request_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #   @return [Types::DistributionIdList]
    class ListDistributionsByOriginRequestPolicyIdResult < Struct.new(
      :distribution_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distributions. The response includes distributions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distributions that you want in the response.</p>
    #   @return [Integer]
    # @!attribute realtime_log_config_name
    #   <p>The name of the real-time log configuration whose associated distributions you want to list.</p>
    #   @return [String]
    # @!attribute realtime_log_config_arn
    #   <p>The Amazon Resource Name (ARN) of the real-time log configuration whose associated distributions you want to list.</p>
    #   @return [String]
    class ListDistributionsByRealtimeLogConfigRequest < Struct.new(
      :marker,
      :max_items,
      :realtime_log_config_name,
      :realtime_log_config_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_list
    #   <p>A distribution list.</p>
    #   @return [Types::DistributionList]
    class ListDistributionsByRealtimeLogConfigResult < Struct.new(
      :distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of distribution IDs. The response includes distribution IDs in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distribution IDs that you want to get in the response.</p>
    #   @return [Integer]
    # @!attribute response_headers_policy_id
    #   <p>The ID of the response headers policy whose associated distribution IDs you want to list.</p>
    #   @return [String]
    class ListDistributionsByResponseHeadersPolicyIdRequest < Struct.new(
      :marker,
      :max_items,
      :response_headers_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #   @return [Types::DistributionIdList]
    class ListDistributionsByResponseHeadersPolicyIdResult < Struct.new(
      :distribution_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker associated with the VPC origin distributions list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items included in the list.</p>
    #   @return [Integer]
    # @!attribute vpc_origin_id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    class ListDistributionsByVpcOriginIdRequest < Struct.new(
      :marker,
      :max_items,
      :vpc_origin_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_id_list
    #   <p>A list of distribution IDs.</p>
    #   @return [Types::DistributionIdList]
    class ListDistributionsByVpcOriginIdResult < Struct.new(
      :distribution_id_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list distributions that are associated with a specified WAF web ACL.</p>
    # @!attribute marker
    #   <p>Use <code>Marker</code> and <code>MaxItems</code> to control pagination of results. If you have more than <code>MaxItems</code> distributions that satisfy the request, the response includes a <code>NextMarker</code> element. To get the next page of results, submit another request. For the value of <code>Marker</code>, specify the value of <code>NextMarker</code> from the last response. (For the first request, omit <code>Marker</code>.)</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distributions that you want CloudFront to return in the response body. The maximum and default values are both 100.</p>
    #   @return [Integer]
    # @!attribute web_acl_id
    #   <p>The ID of the WAF web ACL that you want to list the associated distributions. If you specify "null" for the ID, the request returns a list of the distributions that aren't associated with a web ACL. </p> <p>For WAFV2, this is the ARN of the web ACL, such as <code>arn:aws:wafv2:us-east-1:123456789012:global/webacl/ExampleWebACL/a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p> <p>For WAF Classic, this is the ID of the web ACL, such as <code>a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    #   @return [String]
    class ListDistributionsByWebACLIdRequest < Struct.new(
      :marker,
      :max_items,
      :web_acl_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response to a request to list the distributions that are associated with a specified WAF web ACL.</p>
    # @!attribute distribution_list
    #   <p>The <code>DistributionList</code> type.</p>
    #   @return [Types::DistributionList]
    class ListDistributionsByWebACLIdResult < Struct.new(
      :distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list your distributions.</p>
    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of distributions. The results include distributions in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last distribution on that page).</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of distributions you want in the response body.</p>
    #   @return [Integer]
    class ListDistributionsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution_list
    #   <p>The <code>DistributionList</code> type.</p>
    #   @return [Types::DistributionList]
    class ListDistributionsResult < Struct.new(
      :distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain to check for conflicts.</p>
    #   @return [String]
    # @!attribute domain_control_validation_resource
    #   <p>The distribution resource identifier. This can be the standard distribution or distribution tenant that has a valid certificate, which covers the domain that you specify.</p>
    #   @return [Types::DistributionResourceId]
    # @!attribute max_items
    #   <p>The maximum number of domain conflicts to return.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of domain conflicts.</p>
    #   @return [String]
    class ListDomainConflictsRequest < Struct.new(
      :domain,
      :domain_control_validation_resource,
      :max_items,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_conflicts
    #   <p>Contains details about the domain conflicts.</p>
    #   @return [Array<Types::DomainConflict>]
    # @!attribute next_marker
    #   <p>A token used for pagination of results returned in the response. You can use the token from the previous request to define where the current request should begin.</p>
    #   @return [String]
    class ListDomainConflictsResult < Struct.new(
      :domain_conflicts,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of configurations. The results include configurations in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last configuration on that page).</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption configurations you want in the response body.</p>
    #   @return [Integer]
    class ListFieldLevelEncryptionConfigsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_list
    #   <p>Returns a list of all field-level encryption configurations that have been created in CloudFront for this account.</p>
    #   @return [Types::FieldLevelEncryptionList]
    class ListFieldLevelEncryptionConfigsResult < Struct.new(
      :field_level_encryption_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of profiles. The results include profiles in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last profile on that page).</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of field-level encryption profiles you want in the response body. </p>
    #   @return [Integer]
    class ListFieldLevelEncryptionProfilesRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile_list
    #   <p>Returns a list of the field-level encryption profiles that have been created in CloudFront for this account.</p>
    #   @return [Types::FieldLevelEncryptionProfileList]
    class ListFieldLevelEncryptionProfilesResult < Struct.new(
      :field_level_encryption_profile_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of functions. The response includes functions in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of functions that you want in the response.</p>
    #   @return [Integer]
    # @!attribute stage
    #   <p>An optional filter to return only the functions that are in the specified stage, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #   @return [String]
    class ListFunctionsRequest < Struct.new(
      :marker,
      :max_items,
      :stage,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_list
    #   <p>A list of CloudFront functions.</p>
    #   @return [Types::FunctionList]
    class ListFunctionsResult < Struct.new(
      :function_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of invalidations to return for the distribution tenant.</p>
    #   @return [Integer]
    class ListInvalidationsForDistributionTenantRequest < Struct.new(
      :id,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute invalidation_list
    #   <p>The <code>InvalidationList</code> complex type describes the list of invalidation objects. For more information about invalidation, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html">Invalidating Objects (Web Distributions Only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::InvalidationList]
    class ListInvalidationsForDistributionTenantResult < Struct.new(
      :invalidation_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list invalidations.</p>
    # @!attribute distribution_id
    #   <p>The distribution's ID.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this parameter when paginating results to indicate where to begin in your list of invalidation batches. Because the results are returned in decreasing order from most recent to oldest, the most recent results are on the first page, the second page will contain earlier results, and so on. To get the next page of results, set <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response. This value is the same as the ID of the last invalidation batch on that page.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of invalidation batches that you want in the response body.</p>
    #   @return [Integer]
    class ListInvalidationsRequest < Struct.new(
      :distribution_id,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute invalidation_list
    #   <p>Information about invalidation batches.</p>
    #   @return [Types::InvalidationList]
    class ListInvalidationsResult < Struct.new(
      :invalidation_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of key groups. The response includes key groups in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of key groups that you want in the response.</p>
    #   @return [Integer]
    class ListKeyGroupsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group_list
    #   <p>A list of key groups.</p>
    #   @return [Types::KeyGroupList]
    class ListKeyGroupsResult < Struct.new(
      :key_group_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker associated with the key value stores list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items in the key value stores list.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the request for the key value stores list.</p>
    #   @return [String]
    class ListKeyValueStoresRequest < Struct.new(
      :marker,
      :max_items,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_value_store_list
    #   <p>The resulting key value stores list.</p>
    #   @return [Types::KeyValueStoreList]
    class ListKeyValueStoresResult < Struct.new(
      :key_value_store_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of origin access controls. The response includes the items in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin access controls that you want in the response.</p>
    #   @return [Integer]
    class ListOriginAccessControlsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control_list
    #   <p>A list of origin access controls.</p>
    #   @return [Types::OriginAccessControlList]
    class ListOriginAccessControlsResult < Struct.new(
      :origin_access_control_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>A filter to return only the specified kinds of origin request policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Returns only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Returns only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of origin request policies. The response includes origin request policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin request policies that you want in the response.</p>
    #   @return [Integer]
    class ListOriginRequestPoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy_list
    #   <p>A list of origin request policies.</p>
    #   @return [Types::OriginRequestPolicyList]
    class ListOriginRequestPoliciesResult < Struct.new(
      :origin_request_policy_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Use this when paginating results to indicate where to begin in your list of public keys. The results include public keys in the list that occur after the marker. To get the next page of results, set the <code>Marker</code> to the value of the <code>NextMarker</code> from the current page's response (which is also the ID of the last public key on that page).</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of public keys you want in the response body.</p>
    #   @return [Integer]
    class ListPublicKeysRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_list
    #   <p>Returns a list of all public keys that have been added to CloudFront for this account.</p>
    #   @return [Types::PublicKeyList]
    class ListPublicKeysResult < Struct.new(
      :public_key_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of real-time log configurations that you want in the response.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of real-time log configurations. The response includes real-time log configurations in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    class ListRealtimeLogConfigsRequest < Struct.new(
      :max_items,
      :marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute realtime_log_configs
    #   <p>A list of real-time log configurations.</p>
    #   @return [Types::RealtimeLogConfigs]
    class ListRealtimeLogConfigsResult < Struct.new(
      :realtime_log_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>A filter to get only the specified kind of response headers policies. Valid values are:</p> <ul> <li> <p> <code>managed</code> – Gets only the managed policies created by Amazon Web Services.</p> </li> <li> <p> <code>custom</code> – Gets only the custom policies created in your Amazon Web Services account.</p> </li> </ul>
    #   @return [String]
    # @!attribute marker
    #   <p>Use this field when paginating results to indicate where to begin in your list of response headers policies. The response includes response headers policies in the list that occur after the marker. To get the next page of the list, set this field's value to the value of <code>NextMarker</code> from the current page's response.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of response headers policies that you want to get in the response.</p>
    #   @return [Integer]
    class ListResponseHeadersPoliciesRequest < Struct.new(
      :type,
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy_list
    #   <p>A list of response headers policies.</p>
    #   @return [Types::ResponseHeadersPolicyList]
    class ListResponseHeadersPoliciesResult < Struct.new(
      :response_headers_policy_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list your streaming distributions.</p>
    # @!attribute marker
    #   <p>The value that you provided for the <code>Marker</code> request parameter.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The value that you provided for the <code>MaxItems</code> request parameter.</p>
    #   @return [Integer]
    class ListStreamingDistributionsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution_list
    #   <p>The <code>StreamingDistributionList</code> type.</p>
    #   @return [Types::StreamingDistributionList]
    class ListStreamingDistributionsResult < Struct.new(
      :streaming_distribution_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list tags for a CloudFront resource.</p>
    # @!attribute resource
    #   <p>An ARN of a CloudFront resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class ListTagsForResourceResult < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker associated with the VPC origins list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items included in the list.</p>
    #   @return [Integer]
    class ListVpcOriginsRequest < Struct.new(
      :marker,
      :max_items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin_list
    #   <p>List of VPC origins.</p>
    #   @return [Types::VpcOriginList]
    class ListVpcOriginsResult < Struct.new(
      :vpc_origin_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that specifies whether access logs are written for the distribution.</p> <note> <p>If you already enabled standard logging (legacy) and you want to enable standard logging (v2) to send your access logs to Amazon S3, we recommend that you specify a <i>different</i> Amazon S3 bucket or use a <i>separate path</i> in the same bucket (for example, use a log prefix or partitioning). This helps you keep track of which log files are associated with which logging subscription and prevents log files from overwriting each other. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/AccessLogs.html">Standard logging (access logs)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note>
    # @!attribute enabled
    #   <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a distribution or if you want to disable logging for an existing distribution, specify <code>false</code> for <code>Enabled</code>, and specify empty <code>Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>prefix</code>, the values are automatically deleted.</p>
    #   @return [Boolean]
    # @!attribute include_cookies
    #   <p>Specifies whether you want CloudFront to include cookies in access logs, specify <code>true</code> for <code>IncludeCookies</code>. If you choose to include cookies in logs, CloudFront logs all cookies regardless of how you configure the cache behaviors for this distribution. If you don't want to include cookies when you create a distribution or if you want to disable include cookies for an existing distribution, specify <code>false</code> for <code>IncludeCookies</code>.</p>
    #   @return [Boolean]
    # @!attribute bucket
    #   <p>The Amazon S3 bucket to store the access logs in, for example, <code>amzn-s3-demo-bucket.s3.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>An optional string that you want CloudFront to prefix to the access log <code>filenames</code> for this distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
    #   @return [String]
    class LoggingConfig < Struct.new(
      :enabled,
      :include_cookies,
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        options[:include_cookies] = false unless options.key?(:include_cookies)
        options[:bucket] = '' unless options.key?(:bucket)
        options[:prefix] = '' unless options.key?(:prefix)
        super
      end
    end

    # <p>Contains details about the CloudFront managed ACM certificate.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the CloudFront managed ACM certificate.</p>
    #   @return [String]
    # @!attribute certificate_status
    #   <p>The status of the CloudFront managed ACM certificate.</p> <note> <p>Your distribution tenant will be updated with the latest certificate status. When calling the <a href="https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_UpdateDistributionTenant.html">UpdateDistributionTenant</a> operation, use the latest value for the <code>ETag</code>.</p> </note>
    #   @return [String]
    # @!attribute validation_token_host
    #   <p>Contains details about the validation token host of the specified CloudFront managed ACM certificate.</p> <ul> <li> <p>For <code>cloudfront</code>, CloudFront will automatically serve the validation token. Choose this mode if you can point the domain's DNS to CloudFront immediately.</p> </li> <li> <p>For <code>self-hosted</code>, you serve the validation token from your existing infrastructure. Choose this mode when you need to maintain current traffic flow while your certificate is being issued. You can place the validation token at the well-known path on your existing web server, wait for ACM to validate and issue the certificate, and then update your DNS to point to CloudFront.</p> </li> </ul> <note> <p>This setting only affects the initial certificate request. Once the DNS points to CloudFront, all future certificate renewals are automatically handled through CloudFront.</p> </note>
    #   @return [String]
    # @!attribute validation_token_details
    #   <p>Contains details about the validation token of the specified CloudFront managed ACM certificate.</p>
    #   @return [Array<Types::ValidationTokenDetail>]
    class ManagedCertificateDetails < Struct.new(
      :certificate_arn,
      :certificate_status,
      :validation_token_host,
      :validation_token_details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents the request for the Amazon CloudFront managed ACM certificate.</p>
    # @!attribute validation_token_host
    #   <p>Specify how the HTTP validation token will be served when requesting the CloudFront managed ACM certificate.</p> <ul> <li> <p>For <code>cloudfront</code>, CloudFront will automatically serve the validation token. Choose this mode if you can point the domain's DNS to CloudFront immediately.</p> </li> <li> <p>For <code>self-hosted</code>, you serve the validation token from your existing infrastructure. Choose this mode when you need to maintain current traffic flow while your certificate is being issued. You can place the validation token at the well-known path on your existing web server, wait for ACM to validate and issue the certificate, and then update your DNS to point to CloudFront.</p> </li> </ul>
    #   @return [String]
    # @!attribute primary_domain_name
    #   <p>The primary domain name associated with the CloudFront managed ACM certificate.</p>
    #   @return [String]
    # @!attribute certificate_transparency_logging_preference
    #   <p>You can opt out of certificate transparency logging by specifying the <code>disabled</code> option. Opt in by specifying <code>enabled</code>. For more information, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency">Certificate Transparency Logging </a> in the <i>Certificate Manager User Guide</i>.</p>
    #   @return [String]
    class ManagedCertificateRequest < Struct.new(
      :validation_token_host,
      :primary_domain_name,
      :certificate_transparency_logging_preference,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation requires a body. Ensure that the body is present and the <code>Content-Type</code> header is set.</p>
    # @!attribute message
    #   @return [String]
    class MissingBody < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A monitoring subscription. This structure contains information about whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    # @!attribute realtime_metrics_subscription_config
    #   <p>A subscription configuration for additional CloudWatch metrics.</p>
    #   @return [Types::RealtimeMetricsSubscriptionConfig]
    class MonitoringSubscription < Struct.new(
      :realtime_metrics_subscription_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A monitoring subscription already exists for the specified distribution.</p>
    # @!attribute message
    #   @return [String]
    class MonitoringSubscriptionAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The cache policy does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchCachePolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified origin access identity does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchCloudFrontOriginAccessIdentity < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The continuous deployment policy doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchContinuousDeploymentPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified distribution does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchDistribution < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified configuration for field-level encryption doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchFieldLevelEncryptionConfig < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified profile for field-level encryption doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchFieldLevelEncryptionProfile < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The function does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchFunctionExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified invalidation does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchInvalidation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A monitoring subscription does not exist for the specified distribution.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchMonitoringSubscription < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No origin exists with the specified <code>Origin Id</code>.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchOrigin < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The origin access control does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchOriginAccessControl < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The origin request policy does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchOriginRequestPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified public key doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchPublicKey < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The real-time log configuration does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchRealtimeLogConfig < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource that was specified is not valid.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchResource < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response headers policy does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchResponseHeadersPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified streaming distribution does not exist.</p>
    # @!attribute message
    #   @return [String]
    class NoSuchStreamingDistribution < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin.</p> <p>An origin is the location where content is stored, and from which CloudFront gets content to serve to viewers. To specify an origin:</p> <ul> <li> <p>Use <code>S3OriginConfig</code> to specify an Amazon S3 bucket that is not configured with static website hosting.</p> </li> <li> <p>Use <code>VpcOriginConfig</code> to specify a VPC origin.</p> </li> <li> <p>Use <code>CustomOriginConfig</code> to specify all other kinds of origins, including:</p> <ul> <li> <p>An Amazon S3 bucket that is configured with static website hosting</p> </li> <li> <p>An Elastic Load Balancing load balancer</p> </li> <li> <p>An Elemental MediaPackage endpoint</p> </li> <li> <p>An Elemental MediaStore container</p> </li> <li> <p>Any other HTTP server, running on an Amazon EC2 instance or any other kind of host</p> </li> </ul> </li> </ul> <p>For the current maximum number of origins that you can specify per distribution, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html#limits-web-distributions">General Quotas on Web Distributions</a> in the <i>Amazon CloudFront Developer Guide</i> (quotas were formerly referred to as limits).</p>
    # @!attribute id
    #   <p>A unique identifier for the origin. This value must be unique within the distribution.</p> <p>Use this value to specify the <code>TargetOriginId</code> in a <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name for the origin.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesDomainName">Origin Domain Name</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute origin_path
    #   <p>An optional path that CloudFront appends to the origin domain name when CloudFront requests content from the origin.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginPath">Origin Path</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>A list of HTTP header names and values that CloudFront adds to the requests that it sends to the origin.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/add-origin-custom-headers.html">Adding Custom Headers to Origin Requests</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::CustomHeaders]
    # @!attribute s3_origin_config
    #   <p>Use this type to specify an origin that is an Amazon S3 bucket that is not configured with static website hosting. To specify any other type of origin, including an Amazon S3 bucket that is configured with static website hosting, use the <code>CustomOriginConfig</code> type instead.</p>
    #   @return [Types::S3OriginConfig]
    # @!attribute custom_origin_config
    #   <p>Use this type to specify an origin that is not an Amazon S3 bucket, with one exception. If the Amazon S3 bucket is configured with static website hosting, use this type. If the Amazon S3 bucket is not configured with static website hosting, use the <code>S3OriginConfig</code> type instead.</p>
    #   @return [Types::CustomOriginConfig]
    # @!attribute vpc_origin_config
    #   <p>The VPC origin configuration.</p>
    #   @return [Types::VpcOriginConfig]
    # @!attribute connection_attempts
    #   <p>The number of times that CloudFront attempts to connect to the origin. The minimum number is 1, the maximum is 3, and the default (if you don't specify otherwise) is 3.</p> <p>For a custom origin (including an Amazon S3 bucket that's configured with static website hosting), this value also specifies the number of times that CloudFront attempts to get a response from the origin, in the case of an <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout">Origin Response Timeout</a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-attempts">Origin Connection Attempts</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute connection_timeout
    #   <p>The number of seconds that CloudFront waits when trying to establish a connection to the origin. The minimum timeout is 1 second, the maximum is 10 seconds, and the default (if you don't specify otherwise) is 10 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#origin-connection-timeout">Origin Connection Timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute response_completion_timeout
    #   <p>The time (in seconds) that a request from CloudFront to the origin can stay open and wait for a response. If the complete response isn't received from the origin by this time, CloudFront ends the connection.</p> <p>The value for <code>ResponseCompletionTimeout</code> must be equal to or greater than the value for <code>OriginReadTimeout</code>. If you don't set a value for <code>ResponseCompletionTimeout</code>, CloudFront doesn't enforce a maximum value.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#response-completion-timeout">Response completion timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute origin_shield
    #   <p>CloudFront Origin Shield. Using Origin Shield can help reduce the load on your origin.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::OriginShield]
    # @!attribute origin_access_control_id
    #   <p>The unique identifier of an origin access control for this origin.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Restricting access to an Amazon S3 origin</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class Origin < Struct.new(
      :id,
      :domain_name,
      :origin_path,
      :custom_headers,
      :s3_origin_config,
      :custom_origin_config,
      :vpc_origin_config,
      :connection_attempts,
      :connection_timeout,
      :response_completion_timeout,
      :origin_shield,
      :origin_access_control_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFront origin access control, including its unique identifier.</p>
    # @!attribute id
    #   <p>The unique identifier of the origin access control.</p>
    #   @return [String]
    # @!attribute origin_access_control_config
    #   <p>The origin access control.</p>
    #   @return [Types::OriginAccessControlConfig]
    class OriginAccessControl < Struct.new(
      :id,
      :origin_access_control_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin access control with the specified parameters already exists.</p>
    # @!attribute message
    #   @return [String]
    class OriginAccessControlAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFront origin access control configuration.</p>
    # @!attribute name
    #   <p>A name to identify the origin access control. You can specify up to 64 characters.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the origin access control.</p>
    #   @return [String]
    # @!attribute signing_protocol
    #   <p>The signing protocol of the origin access control, which determines how CloudFront signs (authenticates) requests. The only valid value is <code>sigv4</code>.</p>
    #   @return [String]
    # @!attribute signing_behavior
    #   <p>Specifies which requests CloudFront signs (adds authentication information to). Specify <code>always</code> for the most common use case. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html#oac-advanced-settings">origin access control advanced settings</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>This field can have one of the following values:</p> <ul> <li> <p> <code>always</code> – CloudFront signs all origin requests, overwriting the <code>Authorization</code> header from the viewer request if one exists.</p> </li> <li> <p> <code>never</code> – CloudFront doesn't sign any origin requests. This value turns off origin access control for all origins in all distributions that use this origin access control.</p> </li> <li> <p> <code>no-override</code> – If the viewer request doesn't contain the <code>Authorization</code> header, then CloudFront signs the origin request. If the viewer request contains the <code>Authorization</code> header, then CloudFront doesn't sign the origin request and instead passes along the <code>Authorization</code> header from the viewer request. <b>WARNING: To pass along the <code>Authorization</code> header from the viewer request, you <i>must</i> add the <code>Authorization</code> header to a <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html">cache policy</a> for all cache behaviors that use origins associated with this origin access control.</b> </p> </li> </ul>
    #   @return [String]
    # @!attribute origin_access_control_origin_type
    #   <p>The type of origin that this origin access control is for.</p>
    #   @return [String]
    class OriginAccessControlConfig < Struct.new(
      :name,
      :description,
      :signing_protocol,
      :signing_behavior,
      :origin_access_control_origin_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the origin access control because it's in use by one or more distributions.</p>
    # @!attribute message
    #   @return [String]
    class OriginAccessControlInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CloudFront origin access controls.</p>
    # @!attribute marker
    #   <p>The value of the <code>Marker</code> field that was provided in the request.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value to use in the <code>Marker</code> field of another request to continue listing origin access controls.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin access controls requested.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>If there are more items in the list than are in this response, this value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of origin access controls returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the origin access controls in the list.</p>
    #   @return [Array<Types::OriginAccessControlSummary>]
    class OriginAccessControlList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A CloudFront origin access control.</p>
    # @!attribute id
    #   <p>The unique identifier of the origin access control.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the origin access control.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name that identifies the origin access control.</p>
    #   @return [String]
    # @!attribute signing_protocol
    #   <p>The signing protocol of the origin access control. The signing protocol determines how CloudFront signs (authenticates) requests. The only valid value is <code>sigv4</code>.</p>
    #   @return [String]
    # @!attribute signing_behavior
    #   <p>A value that specifies which requests CloudFront signs (adds authentication information to). This field can have one of the following values:</p> <ul> <li> <p> <code>never</code> – CloudFront doesn't sign any origin requests.</p> </li> <li> <p> <code>always</code> – CloudFront signs all origin requests, overwriting the <code>Authorization</code> header from the viewer request if necessary.</p> </li> <li> <p> <code>no-override</code> – If the viewer request doesn't contain the <code>Authorization</code> header, CloudFront signs the origin request. If the viewer request contains the <code>Authorization</code> header, CloudFront doesn't sign the origin request, but instead passes along the <code>Authorization</code> header that it received in the viewer request.</p> </li> </ul>
    #   @return [String]
    # @!attribute origin_access_control_origin_type
    #   <p>The type of origin that this origin access control is for.</p>
    #   @return [String]
    class OriginAccessControlSummary < Struct.new(
      :id,
      :description,
      :name,
      :signing_protocol,
      :signing_behavior,
      :origin_access_control_origin_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains <code>HeaderName</code> and <code>HeaderValue</code> elements, if any, for this distribution.</p>
    # @!attribute header_name
    #   <p>The name of a header that you want CloudFront to send to your origin. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/forward-custom-headers.html">Adding Custom Headers to Origin Requests</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute header_value
    #   <p>The value for the header that you specified in the <code>HeaderName</code> field.</p>
    #   @return [String]
    class OriginCustomHeader < Struct.new(
      :header_name,
      :header_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin group includes two origins (a primary origin and a secondary origin to failover to) and a failover criteria that you specify. You create an origin group to support origin failover in CloudFront. When you create or update a distribution, you can specify the origin group instead of a single origin, and CloudFront will failover from the primary origin to the secondary origin under the failover conditions that you've chosen.</p> <p>Optionally, you can choose selection criteria for your origin group to specify how your origins are selected when your distribution routes viewer requests.</p>
    # @!attribute id
    #   <p>The origin group's ID.</p>
    #   @return [String]
    # @!attribute failover_criteria
    #   <p>A complex type that contains information about the failover criteria for an origin group.</p>
    #   @return [Types::OriginGroupFailoverCriteria]
    # @!attribute members
    #   <p>A complex type that contains information about the origins in an origin group.</p>
    #   @return [Types::OriginGroupMembers]
    # @!attribute selection_criteria
    #   <p>The selection criteria for the origin group. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/high_availability_origin_failover.html#concept_origin_groups.creating">Create an origin group</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class OriginGroup < Struct.new(
      :id,
      :failover_criteria,
      :members,
      :selection_criteria,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type that includes information about the failover criteria for an origin group, including the status codes for which CloudFront will failover from the primary origin to the second origin.</p>
    # @!attribute status_codes
    #   <p>The status codes that, when returned from the primary origin, will trigger CloudFront to failover to the second origin.</p>
    #   @return [Types::StatusCodes]
    class OriginGroupFailoverCriteria < Struct.new(
      :status_codes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin in an origin group.</p>
    # @!attribute origin_id
    #   <p>The ID for an origin in an origin group.</p>
    #   @return [String]
    class OriginGroupMember < Struct.new(
      :origin_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type for the origins included in an origin group.</p>
    # @!attribute quantity
    #   <p>The number of origins in an origin group.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Items (origins) in an origin group.</p>
    #   @return [Array<Types::OriginGroupMember>]
    class OriginGroupMembers < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type for the origin groups specified for a distribution.</p>
    # @!attribute quantity
    #   <p>The number of origin groups.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The items (origin groups) in a distribution.</p>
    #   @return [Array<Types::OriginGroup>]
    class OriginGroups < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin request policy.</p> <p>When it's attached to a cache behavior, the origin request policy determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can't find an object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p>
    # @!attribute id
    #   <p>The unique identifier for the origin request policy.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time when the origin request policy was last modified.</p>
    #   @return [Time]
    # @!attribute origin_request_policy_config
    #   <p>The origin request policy configuration.</p>
    #   @return [Types::OriginRequestPolicyConfig]
    class OriginRequestPolicy < Struct.new(
      :id,
      :last_modified_time,
      :origin_request_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin request policy with this name already exists. You must provide a unique name. To modify an existing origin request policy, use <code>UpdateOriginRequestPolicy</code>.</p>
    # @!attribute message
    #   @return [String]
    class OriginRequestPolicyAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An origin request policy configuration.</p> <p>This configuration determines the values that CloudFront includes in requests that it sends to the origin. Each request that CloudFront sends to the origin includes the following:</p> <ul> <li> <p>The request body and the URL path (without the domain name) from the viewer request.</p> </li> <li> <p>The headers that CloudFront automatically includes in every origin request, including <code>Host</code>, <code>User-Agent</code>, and <code>X-Amz-Cf-Id</code>.</p> </li> <li> <p>All HTTP headers, cookies, and URL query strings that are specified in the cache policy or the origin request policy. These can include items from the viewer request and, in the case of headers, additional ones that are added by CloudFront.</p> </li> </ul> <p>CloudFront sends a request when it can't find an object in its cache that matches the request. If you want to send values to the origin and also include them in the cache key, use <code>CachePolicy</code>.</p>
    # @!attribute comment
    #   <p>A comment to describe the origin request policy. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name to identify the origin request policy.</p>
    #   @return [String]
    # @!attribute headers_config
    #   <p>The HTTP headers to include in origin requests. These can include headers from viewer requests and additional headers added by CloudFront.</p>
    #   @return [Types::OriginRequestPolicyHeadersConfig]
    # @!attribute cookies_config
    #   <p>The cookies from viewer requests to include in origin requests.</p>
    #   @return [Types::OriginRequestPolicyCookiesConfig]
    # @!attribute query_strings_config
    #   <p>The URL query strings from viewer requests to include in origin requests.</p>
    #   @return [Types::OriginRequestPolicyQueryStringsConfig]
    class OriginRequestPolicyConfig < Struct.new(
      :comment,
      :name,
      :headers_config,
      :cookies_config,
      :query_strings_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in requests that CloudFront sends to the origin.</p>
    # @!attribute cookie_behavior
    #   <p>Determines whether cookies in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No cookies in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any cookies that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the cookies in viewer requests that are listed in the <code>CookieNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All cookies in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All cookies in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>CookieNames</code> type, which are not included.</p> </li> </ul>
    #   @return [String]
    # @!attribute cookies
    #   <p>Contains a list of cookie names.</p>
    #   @return [Types::CookieNames]
    class OriginRequestPolicyCookiesConfig < Struct.new(
      :cookie_behavior,
      :cookies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any HTTP headers (and if so, which headers) are included in requests that CloudFront sends to the origin.</p>
    # @!attribute header_behavior
    #   <p>Determines whether any HTTP headers are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No HTTP headers in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any headers that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the HTTP headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewer</code> – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allViewerAndWhitelistCloudFront</code> – All HTTP headers in viewer requests and the additional CloudFront headers that are listed in the <code>Headers</code> type are included in requests that CloudFront sends to the origin. The additional headers are added by CloudFront.</p> </li> <li> <p> <code>allExcept</code> – All HTTP headers in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>Headers</code> type, which are not included.</p> </li> </ul>
    #   @return [String]
    # @!attribute headers
    #   <p>Contains a list of HTTP header names.</p>
    #   @return [Types::Headers]
    class OriginRequestPolicyHeadersConfig < Struct.new(
      :header_behavior,
      :headers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the origin request policy because it is attached to one or more cache behaviors.</p>
    # @!attribute message
    #   @return [String]
    class OriginRequestPolicyInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of origin request policies.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing origin request policies where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of origin request policies requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The total number of origin request policies returned in the response.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the origin request policies in the list.</p>
    #   @return [Array<Types::OriginRequestPolicySummary>]
    class OriginRequestPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in requests that CloudFront sends to the origin.</p>
    # @!attribute query_string_behavior
    #   <p>Determines whether any URL query strings in viewer requests are included in requests that CloudFront sends to the origin. Valid values are:</p> <ul> <li> <p> <code>none</code> – No query strings in viewer requests are included in requests that CloudFront sends to the origin. Even when this field is set to <code>none</code>, any query strings that are listed in a <code>CachePolicy</code> <i>are</i> included in origin requests.</p> </li> <li> <p> <code>whitelist</code> – Only the query strings in viewer requests that are listed in the <code>QueryStringNames</code> type are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>all</code> – All query strings in viewer requests are included in requests that CloudFront sends to the origin.</p> </li> <li> <p> <code>allExcept</code> – All query strings in viewer requests are included in requests that CloudFront sends to the origin, <i> <b>except</b> </i> for those listed in the <code>QueryStringNames</code> type, which are not included.</p> </li> </ul>
    #   @return [String]
    # @!attribute query_strings
    #   <p>Contains the specific query strings in viewer requests that either <i> <b>are</b> </i> or <i> <b>are not</b> </i> included in requests that CloudFront sends to the origin. The behavior depends on whether the <code>QueryStringBehavior</code> field in the <code>OriginRequestPolicyQueryStringsConfig</code> type is set to <code>whitelist</code> (the listed query strings <i> <b>are</b> </i> included) or <code>allExcept</code> (the listed query strings <i> <b>are not</b> </i> included, but all other query strings are).</p>
    #   @return [Types::QueryStringNames]
    class OriginRequestPolicyQueryStringsConfig < Struct.new(
      :query_string_behavior,
      :query_strings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an origin request policy.</p>
    # @!attribute type
    #   <p>The type of origin request policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>
    #   @return [String]
    # @!attribute origin_request_policy
    #   <p>The origin request policy.</p>
    #   @return [Types::OriginRequestPolicy]
    class OriginRequestPolicySummary < Struct.new(
      :type,
      :origin_request_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>CloudFront Origin Shield.</p> <p>Using Origin Shield can help reduce the load on your origin. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html">Using Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute enabled
    #   <p>A flag that specifies whether Origin Shield is enabled.</p> <p>When it's enabled, CloudFront routes all requests through Origin Shield, which can help protect your origin. When it's disabled, CloudFront might send requests directly to your origin from multiple edge locations or regional edge caches.</p>
    #   @return [Boolean]
    # @!attribute origin_shield_region
    #   <p>The Amazon Web Services Region for Origin Shield.</p> <p>Specify the Amazon Web Services Region that has the lowest latency to your origin. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as <code>us-east-2</code>.</p> <p>When you enable CloudFront Origin Shield, you must specify the Amazon Web Services Region for Origin Shield. For the list of Amazon Web Services Regions that you can specify, and for help choosing the best Region for your origin, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/origin-shield.html#choose-origin-shield-region">Choosing the Amazon Web Services Region for Origin Shield</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class OriginShield < Struct.new(
      :enabled,
      :origin_shield_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin.</p>
    # @!attribute quantity
    #   <p>The number of SSL/TLS protocols that you want to allow CloudFront to use when establishing an HTTPS connection with this origin.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list that contains allowed SSL/TLS protocols for this distribution.</p>
    #   @return [Array<String>]
    class OriginSslProtocols < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the origins for this distribution.</p>
    # @!attribute quantity
    #   <p>The number of origins for this distribution.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of origins.</p>
    #   @return [Array<Types::Origin>]
    class Origins < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    # @!attribute name
    #   <p>The parameter name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The parameter value.</p>
    #   @return [String]
    class Parameter < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    # @!attribute name
    #   <p>The name of the parameter.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The value that you assigned to the parameter.</p>
    #   @return [Types::ParameterDefinitionSchema]
    class ParameterDefinition < Struct.new(
      :name,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object that contains information about the parameter definition.</p>
    # @!attribute string_schema
    #   <p>An object that contains information about the string schema.</p>
    #   @return [Types::StringSchemaConfig]
    class ParameterDefinitionSchema < Struct.new(
      :string_schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This object determines the values that CloudFront includes in the cache key. These values can include HTTP headers, cookies, and URL query strings. CloudFront uses the cache key to find an object in its cache that it can return to the viewer.</p> <p>The headers, cookies, and query strings that are included in the cache key are also included in requests that CloudFront sends to the origin. CloudFront sends a request when it can't find an object in its cache that matches the request's cache key. If you want to send values to the origin but <i>not</i> include them in the cache key, use <code>OriginRequestPolicy</code>.</p>
    # @!attribute enable_accept_encoding_gzip
    #   <p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingBrotli</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer's <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin, if a request is necessary</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects">Compression support</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you set this value to <code>true</code>, and this cache behavior also has an origin request policy attached, do not include the <code>Accept-Encoding</code> header in the origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in origin requests when the value of this field is <code>true</code>, so including this header in an origin request policy has no effect.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it's not included in the cache key and it's not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>
    #   @return [Boolean]
    # @!attribute enable_accept_encoding_brotli
    #   <p>A flag that can affect whether the <code>Accept-Encoding</code> HTTP header is included in the cache key and included in requests that CloudFront sends to the origin.</p> <p>This field is related to the <code>EnableAcceptEncodingGzip</code> field. If one or both of these fields is <code>true</code> <i>and</i> the viewer request includes the <code>Accept-Encoding</code> header, then CloudFront does the following:</p> <ul> <li> <p>Normalizes the value of the viewer's <code>Accept-Encoding</code> header</p> </li> <li> <p>Includes the normalized header in the cache key</p> </li> <li> <p>Includes the normalized header in the request to the origin, if a request is necessary</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/controlling-the-cache-key.html#cache-policy-compressed-objects">Compression support</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <p>If you set this value to <code>true</code>, and this cache behavior also has an origin request policy attached, do not include the <code>Accept-Encoding</code> header in the origin request policy. CloudFront always includes the <code>Accept-Encoding</code> header in origin requests when the value of this field is <code>true</code>, so including this header in an origin request policy has no effect.</p> <p>If both of these fields are <code>false</code>, then CloudFront treats the <code>Accept-Encoding</code> header the same as any other HTTP header in the viewer request. By default, it's not included in the cache key and it's not included in origin requests. In this case, you can manually add <code>Accept-Encoding</code> to the headers whitelist like any other HTTP header.</p>
    #   @return [Boolean]
    # @!attribute headers_config
    #   <p>An object that determines whether any HTTP headers (and if so, which headers) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    #   @return [Types::CachePolicyHeadersConfig]
    # @!attribute cookies_config
    #   <p>An object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    #   @return [Types::CachePolicyCookiesConfig]
    # @!attribute query_strings_config
    #   <p>An object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the cache key and in requests that CloudFront sends to the origin.</p>
    #   @return [Types::CachePolicyQueryStringsConfig]
    class ParametersInCacheKeyAndForwardedToOrigin < Struct.new(
      :enable_accept_encoding_gzip,
      :enable_accept_encoding_brotli,
      :headers_config,
      :cookies_config,
      :query_strings_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the objects that you want to invalidate. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html#invalidation-specifying-objects">Specifying the Objects to Invalidate</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute quantity
    #   <p>The number of invalidation paths specified for the objects that you want to invalidate.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains a list of the paths that you want to invalidate.</p>
    #   @return [Array<String>]
    class Paths < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The precondition in one or more of the request fields evaluated to <code>false</code>.</p>
    # @!attribute message
    #   @return [String]
    class PreconditionFailed < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    # @!attribute id
    #   <p>The identifier of the public key.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the public key was uploaded.</p>
    #   @return [Time]
    # @!attribute public_key_config
    #   <p>Configuration information about a public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #   @return [Types::PublicKeyConfig]
    class PublicKey < Struct.new(
      :id,
      :created_time,
      :public_key_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified public key already exists.</p>
    # @!attribute message
    #   @return [String]
    class PublicKeyAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about a public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    # @!attribute caller_reference
    #   <p>A string included in the request to help make sure that the request can't be replayed.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name to help identify the public key.</p>
    #   @return [String]
    # @!attribute encoded_key
    #   <p>The public key that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment to describe the public key. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    class PublicKeyConfig < Struct.new(
      :caller_reference,
      :name,
      :encoded_key,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified public key is in use.</p>
    # @!attribute message
    #   @return [String]
    class PublicKeyInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of public keys that you can use with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">signed URLs and signed cookies</a>, or with <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html">field-level encryption</a>.</p>
    # @!attribute next_marker
    #   <p>If there are more elements to be listed, this element is present and contains the value that you can use for the <code>Marker</code> request parameter to continue listing your public keys where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of public keys you want in the response.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of public keys in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of public keys.</p>
    #   @return [Array<Types::PublicKeySummary>]
    class PublicKeyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a public key.</p>
    # @!attribute id
    #   <p>The identifier of the public key.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name to help identify the public key.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time when the public key was uploaded.</p>
    #   @return [Time]
    # @!attribute encoded_key
    #   <p>The public key.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment to describe the public key. The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    class PublicKeySummary < Struct.new(
      :id,
      :name,
      :created_time,
      :encoded_key,
      :comment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are publishing.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are publishing, which you can get using <code>DescribeFunction</code>.</p>
    #   @return [String]
    class PublishFunctionRequest < Struct.new(
      :name,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #   @return [Types::FunctionSummary]
    class PublishFunctionResult < Struct.new(
      :function_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Query argument-profile mapping for field-level encryption.</p>
    # @!attribute query_arg
    #   <p>Query argument for field-level encryption query argument-profile mapping.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>ID of profile to use for field-level encryption query argument-profile mapping</p>
    #   @return [String]
    class QueryArgProfile < Struct.new(
      :query_arg,
      :profile_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for query argument-profile mapping for field-level encryption.</p>
    # @!attribute forward_when_query_arg_profile_is_unknown
    #   <p>Flag to set if you want a request to be forwarded to the origin even if the profile specified by the field-level encryption query argument, fle-profile, is unknown.</p>
    #   @return [Boolean]
    # @!attribute query_arg_profiles
    #   <p>Profiles specified for query argument-profile mapping for field-level encryption.</p>
    #   @return [Types::QueryArgProfiles]
    class QueryArgProfileConfig < Struct.new(
      :forward_when_query_arg_profile_is_unknown,
      :query_arg_profiles,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>No profile specified for the field-level encryption query argument.</p>
    # @!attribute message
    #   @return [String]
    class QueryArgProfileEmpty < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Query argument-profile mapping for field-level encryption.</p>
    # @!attribute quantity
    #   <p>Number of profiles for query argument-profile mapping for field-level encryption.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Number of items for query argument-profile mapping for field-level encryption.</p>
    #   @return [Array<Types::QueryArgProfile>]
    class QueryArgProfiles < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This field is deprecated. We recommend that you use a cache policy or an origin request policy instead of this field.</p> <p>If you want to include query strings in the cache key, use <code>QueryStringsConfig</code> in a cache policy. See <code>CachePolicy</code>.</p> <p>If you want to send query strings to the origin but not include them in the cache key, use <code>QueryStringsConfig</code> in an origin request policy. See <code>OriginRequestPolicy</code>.</p> <p>A complex type that contains information about the query string parameters that you want CloudFront to use for caching for a cache behavior.</p>
    # @!attribute quantity
    #   <p>The number of <code>whitelisted</code> query string parameters for a cache behavior.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list that contains the query string parameters that you want CloudFront to use as a basis for caching for a cache behavior. If <code>Quantity</code> is 0, you can omit <code>Items</code>.</p>
    #   @return [Array<String>]
    class QueryStringCacheKeys < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a list of query string names.</p>
    # @!attribute quantity
    #   <p>The number of query string names in the <code>Items</code> list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of query string names.</p>
    #   @return [Array<String>]
    class QueryStringNames < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A real-time log configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this real-time log configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The unique name of this real-time log configuration.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. The sampling rate is an integer between 1 and 100, inclusive.</p>
    #   @return [Integer]
    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data for this real-time log configuration.</p>
    #   @return [Array<Types::EndPoint>]
    # @!attribute fields
    #   <p>A list of fields that are included in each real-time log record. In an API response, the fields are provided in the same order in which they are sent to the Amazon Kinesis data stream.</p> <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Array<String>]
    class RealtimeLogConfig < Struct.new(
      :arn,
      :name,
      :sampling_rate,
      :end_points,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A real-time log configuration with this name already exists. You must provide a unique name. To modify an existing real-time log configuration, use <code>UpdateRealtimeLogConfig</code>.</p>
    # @!attribute message
    #   @return [String]
    class RealtimeLogConfigAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the real-time log configuration because it is attached to one or more cache behaviors.</p>
    # @!attribute message
    #   @return [String]
    class RealtimeLogConfigInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified real-time log configuration belongs to a different Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class RealtimeLogConfigOwnerMismatch < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of real-time log configurations.</p>
    # @!attribute max_items
    #   <p>The maximum number of real-time log configurations requested.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>Contains the list of real-time log configurations.</p>
    #   @return [Array<Types::RealtimeLogConfig>]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether there are more real-time log configurations than are contained in this list.</p>
    #   @return [Boolean]
    # @!attribute marker
    #   <p>This parameter indicates where this list of real-time log configurations begins. This list includes real-time log configurations that occur after the marker.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing real-time log configurations where you left off. </p>
    #   @return [String]
    class RealtimeLogConfigs < Struct.new(
      :max_items,
      :items,
      :is_truncated,
      :marker,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A subscription configuration for additional CloudWatch metrics.</p>
    # @!attribute realtime_metrics_subscription_status
    #   <p>A flag that indicates whether additional CloudWatch metrics are enabled for a given CloudFront distribution.</p>
    #   @return [String]
    class RealtimeMetricsSubscriptionConfig < Struct.new(
      :realtime_metrics_subscription_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete this resource because it is in use.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified CloudFront resource hasn't been disabled yet.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotDisabled < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response headers policy.</p> <p>A response headers policy contains information about a set of HTTP response headers.</p> <p>After you create a response headers policy, you can use its ID to attach it to one or more cache behaviors in a CloudFront distribution. When it's attached to a cache behavior, the response headers policy affects the HTTP headers that CloudFront includes in HTTP responses to requests that match the cache behavior. CloudFront adds or removes response headers according to the configuration of the response headers policy.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/modifying-response-headers.html">Adding or removing HTTP headers in CloudFront responses</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute id
    #   <p>The identifier for the response headers policy.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time when the response headers policy was last modified.</p>
    #   @return [Time]
    # @!attribute response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    #   @return [Types::ResponseHeadersPolicyConfig]
    class ResponseHeadersPolicy < Struct.new(
      :id,
      :last_modified_time,
      :response_headers_policy_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of HTTP header names that CloudFront includes as values for the <code>Access-Control-Allow-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>
    # @!attribute quantity
    #   <p>The number of HTTP header names in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of HTTP header names. You can specify <code>*</code> to allow all headers.</p>
    #   @return [Array<String>]
    class ResponseHeadersPolicyAccessControlAllowHeaders < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of HTTP methods that CloudFront includes as values for the <code>Access-Control-Allow-Methods</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>
    # @!attribute quantity
    #   <p>The number of HTTP methods in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of HTTP methods. Valid values are:</p> <ul> <li> <p> <code>GET</code> </p> </li> <li> <p> <code>DELETE</code> </p> </li> <li> <p> <code>HEAD</code> </p> </li> <li> <p> <code>OPTIONS</code> </p> </li> <li> <p> <code>PATCH</code> </p> </li> <li> <p> <code>POST</code> </p> </li> <li> <p> <code>PUT</code> </p> </li> <li> <p> <code>ALL</code> </p> </li> </ul> <p> <code>ALL</code> is a special value that includes all of the listed HTTP methods.</p>
    #   @return [Array<String>]
    class ResponseHeadersPolicyAccessControlAllowMethods < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of origins (domain names) that CloudFront can use as the value for the <code>Access-Control-Allow-Origin</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    # @!attribute quantity
    #   <p>The number of origins in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of origins (domain names). You can specify <code>*</code> to allow all origins.</p>
    #   @return [Array<String>]
    class ResponseHeadersPolicyAccessControlAllowOrigins < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of HTTP headers that CloudFront includes as values for the <code>Access-Control-Expose-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    # @!attribute quantity
    #   <p>The number of HTTP headers in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of HTTP headers. You can specify <code>*</code> to expose all headers.</p>
    #   @return [Array<String>]
    class ResponseHeadersPolicyAccessControlExposeHeaders < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response headers policy with this name already exists. You must provide a unique name. To modify an existing response headers policy, use <code>UpdateResponseHeadersPolicy</code>.</p>
    # @!attribute message
    #   @return [String]
    class ResponseHeadersPolicyAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A response headers policy configuration.</p> <p>A response headers policy configuration contains metadata about the response headers policy, and configurations for sets of HTTP response headers.</p>
    # @!attribute comment
    #   <p>A comment to describe the response headers policy.</p> <p>The comment cannot be longer than 128 characters.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A name to identify the response headers policy.</p> <p>The name must be unique for response headers policies in this Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute cors_config
    #   <p>A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS).</p>
    #   @return [Types::ResponseHeadersPolicyCorsConfig]
    # @!attribute security_headers_config
    #   <p>A configuration for a set of security-related HTTP response headers.</p>
    #   @return [Types::ResponseHeadersPolicySecurityHeadersConfig]
    # @!attribute server_timing_headers_config
    #   <p>A configuration for enabling the <code>Server-Timing</code> header in HTTP responses sent from CloudFront.</p>
    #   @return [Types::ResponseHeadersPolicyServerTimingHeadersConfig]
    # @!attribute custom_headers_config
    #   <p>A configuration for a set of custom HTTP response headers.</p>
    #   @return [Types::ResponseHeadersPolicyCustomHeadersConfig]
    # @!attribute remove_headers_config
    #   <p>A configuration for a set of HTTP headers to remove from the HTTP response.</p>
    #   @return [Types::ResponseHeadersPolicyRemoveHeadersConfig]
    class ResponseHeadersPolicyConfig < Struct.new(
      :comment,
      :name,
      :cors_config,
      :security_headers_config,
      :server_timing_headers_config,
      :custom_headers_config,
      :remove_headers_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The policy directives and their values that CloudFront includes as values for the <code>Content-Security-Policy</code> HTTP response header.</p> <p>For more information about the <code>Content-Security-Policy</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Content-Security-Policy</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute content_security_policy
    #   <p>The policy directives and their values that CloudFront includes as values for the <code>Content-Security-Policy</code> HTTP response header.</p>
    #   @return [String]
    class ResponseHeadersPolicyContentSecurityPolicy < Struct.new(
      :override,
      :content_security_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response header with its value set to <code>nosniff</code>.</p> <p>For more information about the <code>X-Content-Type-Options</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-Content-Type-Options</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    class ResponseHeadersPolicyContentTypeOptions < Struct.new(
      :override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for a set of HTTP response headers that are used for cross-origin resource sharing (CORS). CloudFront adds these headers to HTTP responses that it sends for CORS requests that match a cache behavior associated with this response headers policy.</p> <p>For more information about CORS, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">Cross-Origin Resource Sharing (CORS)</a> in the MDN Web Docs.</p>
    # @!attribute access_control_allow_origins
    #   <p>A list of origins (domain names) that CloudFront can use as the value for the <code>Access-Control-Allow-Origin</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Origin</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin">Access-Control-Allow-Origin</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowOrigins]
    # @!attribute access_control_allow_headers
    #   <p>A list of HTTP header names that CloudFront includes as values for the <code>Access-Control-Allow-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Headers</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers">Access-Control-Allow-Headers</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowHeaders]
    # @!attribute access_control_allow_methods
    #   <p>A list of HTTP methods that CloudFront includes as values for the <code>Access-Control-Allow-Methods</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Methods</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods">Access-Control-Allow-Methods</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyAccessControlAllowMethods]
    # @!attribute access_control_allow_credentials
    #   <p>A Boolean that CloudFront uses as the value for the <code>Access-Control-Allow-Credentials</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Allow-Credentials</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials">Access-Control-Allow-Credentials</a> in the MDN Web Docs.</p>
    #   @return [Boolean]
    # @!attribute access_control_expose_headers
    #   <p>A list of HTTP headers that CloudFront includes as values for the <code>Access-Control-Expose-Headers</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Expose-Headers</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Expose-Headers">Access-Control-Expose-Headers</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyAccessControlExposeHeaders]
    # @!attribute access_control_max_age_sec
    #   <p>A number that CloudFront uses as the value for the <code>Access-Control-Max-Age</code> HTTP response header.</p> <p>For more information about the <code>Access-Control-Max-Age</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Max-Age">Access-Control-Max-Age</a> in the MDN Web Docs.</p>
    #   @return [Integer]
    # @!attribute origin_override
    #   <p>A Boolean that determines whether CloudFront overrides HTTP response headers received from the origin with the ones specified in this response headers policy.</p>
    #   @return [Boolean]
    class ResponseHeadersPolicyCorsConfig < Struct.new(
      :access_control_allow_origins,
      :access_control_allow_headers,
      :access_control_allow_methods,
      :access_control_allow_credentials,
      :access_control_expose_headers,
      :access_control_max_age_sec,
      :origin_override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An HTTP response header name and its value. CloudFront includes this header in HTTP responses that it sends for requests that match a cache behavior that's associated with this response headers policy.</p>
    # @!attribute header
    #   <p>The HTTP response header name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value for the HTTP response header.</p>
    #   @return [String]
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides a response header with the same name received from the origin with the header specified here.</p>
    #   @return [Boolean]
    class ResponseHeadersPolicyCustomHeader < Struct.new(
      :header,
      :value,
      :override,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of HTTP response header names and their values. CloudFront includes these headers in HTTP responses that it sends for requests that match a cache behavior that's associated with this response headers policy.</p>
    # @!attribute quantity
    #   <p>The number of HTTP response headers in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of HTTP response headers and their values.</p>
    #   @return [Array<Types::ResponseHeadersPolicyCustomHeader>]
    class ResponseHeadersPolicyCustomHeadersConfig < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-Frame-Options</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute frame_option
    #   <p>The value of the <code>X-Frame-Options</code> HTTP response header. Valid values are <code>DENY</code> and <code>SAMEORIGIN</code>.</p> <p>For more information about these values, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [String]
    class ResponseHeadersPolicyFrameOptions < Struct.new(
      :override,
      :frame_option,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Cannot delete the response headers policy because it is attached to one or more cache behaviors in a CloudFront distribution.</p>
    # @!attribute message
    #   @return [String]
    class ResponseHeadersPolicyInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of response headers policies.</p>
    # @!attribute next_marker
    #   <p>If there are more items in the list than are in this response, this element is present. It contains the value that you should use in the <code>Marker</code> field of a subsequent request to continue listing response headers policies where you left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of response headers policies requested.</p>
    #   @return [Integer]
    # @!attribute quantity
    #   <p>The number of response headers policies returned.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The response headers policies in the list.</p>
    #   @return [Array<Types::ResponseHeadersPolicySummary>]
    class ResponseHeadersPolicyList < Struct.new(
      :next_marker,
      :max_items,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Referrer-Policy</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute referrer_policy
    #   <p>The value of the <code>Referrer-Policy</code> HTTP response header. Valid values are:</p> <ul> <li> <p> <code>no-referrer</code> </p> </li> <li> <p> <code>no-referrer-when-downgrade</code> </p> </li> <li> <p> <code>origin</code> </p> </li> <li> <p> <code>origin-when-cross-origin</code> </p> </li> <li> <p> <code>same-origin</code> </p> </li> <li> <p> <code>strict-origin</code> </p> </li> <li> <p> <code>strict-origin-when-cross-origin</code> </p> </li> <li> <p> <code>unsafe-url</code> </p> </li> </ul> <p>For more information about these values, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    #   @return [String]
    class ResponseHeadersPolicyReferrerPolicy < Struct.new(
      :override,
      :referrer_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The name of an HTTP header that CloudFront removes from HTTP responses to requests that match the cache behavior that this response headers policy is attached to.</p>
    # @!attribute header
    #   <p>The HTTP header name.</p>
    #   @return [String]
    class ResponseHeadersPolicyRemoveHeader < Struct.new(
      :header,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of HTTP header names that CloudFront removes from HTTP responses to requests that match the cache behavior that this response headers policy is attached to.</p>
    # @!attribute quantity
    #   <p>The number of HTTP header names in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The list of HTTP header names.</p>
    #   @return [Array<Types::ResponseHeadersPolicyRemoveHeader>]
    class ResponseHeadersPolicyRemoveHeadersConfig < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for a set of security-related HTTP response headers. CloudFront adds these headers to HTTP responses that it sends for requests that match a cache behavior associated with this response headers policy.</p>
    # @!attribute xss_protection
    #   <p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyXSSProtection]
    # @!attribute frame_options
    #   <p>Determines whether CloudFront includes the <code>X-Frame-Options</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-Frame-Options</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options">X-Frame-Options</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyFrameOptions]
    # @!attribute referrer_policy
    #   <p>Determines whether CloudFront includes the <code>Referrer-Policy</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Referrer-Policy</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy">Referrer-Policy</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyReferrerPolicy]
    # @!attribute content_security_policy
    #   <p>The policy directives and their values that CloudFront includes as values for the <code>Content-Security-Policy</code> HTTP response header.</p> <p>For more information about the <code>Content-Security-Policy</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy">Content-Security-Policy</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyContentSecurityPolicy]
    # @!attribute content_type_options
    #   <p>Determines whether CloudFront includes the <code>X-Content-Type-Options</code> HTTP response header with its value set to <code>nosniff</code>.</p> <p>For more information about the <code>X-Content-Type-Options</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options">X-Content-Type-Options</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyContentTypeOptions]
    # @!attribute strict_transport_security
    #   <p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Strict-Transport-Security</code> HTTP response header, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/understanding-response-headers-policies.html#understanding-response-headers-policies-security">Security headers</a> in the <i>Amazon CloudFront Developer Guide</i> and <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    #   @return [Types::ResponseHeadersPolicyStrictTransportSecurity]
    class ResponseHeadersPolicySecurityHeadersConfig < Struct.new(
      :xss_protection,
      :frame_options,
      :referrer_policy,
      :content_security_policy,
      :content_type_options,
      :strict_transport_security,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for enabling the <code>Server-Timing</code> header in HTTP responses sent from CloudFront. CloudFront adds this header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.</p> <p>You can use the <code>Server-Timing</code> header to view metrics that can help you gain insights about the behavior and performance of CloudFront. For example, you can see which cache layer served a cache hit, or the first byte latency from the origin when there was a cache miss. You can use the metrics in the <code>Server-Timing</code> header to troubleshoot issues or test the efficiency of your CloudFront configuration. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/understanding-response-headers-policies.html#server-timing-header">Server-Timing header</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute enabled
    #   <p>A Boolean that determines whether CloudFront adds the <code>Server-Timing</code> header to HTTP responses that it sends in response to requests that match a cache behavior that's associated with this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute sampling_rate
    #   <p>A number 0–100 (inclusive) that specifies the percentage of responses that you want CloudFront to add the <code>Server-Timing</code> header to. When you set the sampling rate to 100, CloudFront adds the <code>Server-Timing</code> header to the HTTP response for every request that matches the cache behavior that this response headers policy is attached to. When you set it to 50, CloudFront adds the header to 50% of the responses for requests that match the cache behavior. You can set the sampling rate to any number 0–100 with up to four decimal places.</p>
    #   @return [Float]
    class ResponseHeadersPolicyServerTimingHeadersConfig < Struct.new(
      :enabled,
      :sampling_rate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether CloudFront includes the <code>Strict-Transport-Security</code> HTTP response header and the header's value.</p> <p>For more information about the <code>Strict-Transport-Security</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security">Strict-Transport-Security</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>Strict-Transport-Security</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute include_subdomains
    #   <p>A Boolean that determines whether CloudFront includes the <code>includeSubDomains</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>
    #   @return [Boolean]
    # @!attribute preload
    #   <p>A Boolean that determines whether CloudFront includes the <code>preload</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>
    #   @return [Boolean]
    # @!attribute access_control_max_age_sec
    #   <p>A number that CloudFront uses as the value for the <code>max-age</code> directive in the <code>Strict-Transport-Security</code> HTTP response header.</p>
    #   @return [Integer]
    class ResponseHeadersPolicyStrictTransportSecurity < Struct.new(
      :override,
      :include_subdomains,
      :preload,
      :access_control_max_age_sec,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a response headers policy.</p>
    # @!attribute type
    #   <p>The type of response headers policy, either <code>managed</code> (created by Amazon Web Services) or <code>custom</code> (created in this Amazon Web Services account).</p>
    #   @return [String]
    # @!attribute response_headers_policy
    #   <p>The response headers policy.</p>
    #   @return [Types::ResponseHeadersPolicy]
    class ResponseHeadersPolicySummary < Struct.new(
      :type,
      :response_headers_policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Determines whether CloudFront includes the <code>X-XSS-Protection</code> HTTP response header and the header's value.</p> <p>For more information about the <code>X-XSS-Protection</code> HTTP response header, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    # @!attribute override
    #   <p>A Boolean that determines whether CloudFront overrides the <code>X-XSS-Protection</code> HTTP response header received from the origin with the one specified in this response headers policy.</p>
    #   @return [Boolean]
    # @!attribute protection
    #   <p>A Boolean that determines the value of the <code>X-XSS-Protection</code> HTTP response header. When this setting is <code>true</code>, the value of the <code>X-XSS-Protection</code> header is <code>1</code>. When this setting is <code>false</code>, the value of the <code>X-XSS-Protection</code> header is <code>0</code>.</p> <p>For more information about these settings, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #   @return [Boolean]
    # @!attribute mode_block
    #   <p>A Boolean that determines whether CloudFront includes the <code>mode=block</code> directive in the <code>X-XSS-Protection</code> header.</p> <p>For more information about this directive, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #   @return [Boolean]
    # @!attribute report_uri
    #   <p>A reporting URI, which CloudFront uses as the value of the <code>report</code> directive in the <code>X-XSS-Protection</code> header.</p> <p>You cannot specify a <code>ReportUri</code> when <code>ModeBlock</code> is <code>true</code>.</p> <p>For more information about using a reporting URL, see <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection">X-XSS-Protection</a> in the MDN Web Docs.</p>
    #   @return [String]
    class ResponseHeadersPolicyXSSProtection < Struct.new(
      :override,
      :protection,
      :mode_block,
      :report_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that identifies ways in which you want to restrict distribution of your content.</p>
    # @!attribute geo_restriction
    #   <p>A complex type that controls the countries in which your content is distributed. CloudFront determines the location of your users using <code>MaxMind</code> GeoIP databases.</p>
    #   @return [Types::GeoRestriction]
    class Restrictions < Struct.new(
      :geo_restriction,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
    # @!attribute domain_name
    #   <p>The DNS name of the Amazon S3 origin.</p>
    #   @return [String]
    # @!attribute origin_access_identity
    #   <p>The CloudFront origin access identity to associate with the distribution. Use an origin access identity to configure the distribution so that end users can only access objects in an Amazon S3 bucket through CloudFront.</p> <p>If you want end users to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html">Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content</a> in the <i> Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class S3Origin < Struct.new(
      :domain_name,
      :origin_access_identity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains information about the Amazon S3 origin. If the origin is a custom origin or an S3 bucket that is configured as a website endpoint, use the <code>CustomOriginConfig</code> element instead.</p>
    # @!attribute origin_access_identity
    #   <note> <p>If you're using origin access control (OAC) instead of origin access identity, specify an empty <code>OriginAccessIdentity</code> element. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-origin.html">Restricting access to an Amazon Web Services</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The CloudFront origin access identity to associate with the origin. Use an origin access identity to configure the origin so that viewers can <i>only</i> access objects in an Amazon S3 bucket through CloudFront. The format of the value is:</p> <p> <code>origin-access-identity/cloudfront/ID-of-origin-access-identity</code> </p> <p>The <code> <i>ID-of-origin-access-identity</i> </code> is the value that CloudFront returned in the <code>ID</code> element when you created the origin access identity.</p> <p>If you want viewers to be able to access objects using either the CloudFront URL or the Amazon S3 URL, specify an empty <code>OriginAccessIdentity</code> element.</p> <p>To delete the origin access identity from an existing distribution, update the distribution configuration and include an empty <code>OriginAccessIdentity</code> element.</p> <p>To replace the origin access identity, update the distribution configuration and specify the new origin access identity.</p> <p>For more information about the origin access identity, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute origin_read_timeout
    #   <p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    class S3OriginConfig < Struct.new(
      :origin_access_identity,
      :origin_read_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:origin_access_identity] = '' unless options.key?(:origin_access_identity)
        super
      end
    end

    # <p>Session stickiness provides the ability to define multiple requests from a single viewer as a single session. This prevents the potentially inconsistent experience of sending some of a given user's requests to your staging distribution, while others are sent to your primary distribution. Define the session duration using TTL values.</p>
    # @!attribute idle_ttl
    #   <p>The amount of time after which you want sessions to cease if no requests are received. Allowed values are 300–3600 seconds (5–60 minutes).</p> <p>The value must be less than or equal to <code>MaximumTTL</code>.</p>
    #   @return [Integer]
    # @!attribute maximum_ttl
    #   <p>The maximum amount of time to consider requests from the viewer as being part of the same session. Allowed values are 300–3600 seconds (5–60 minutes).</p> <p>The value must be greater than or equal to <code>IdleTTL</code>.</p>
    #   @return [Integer]
    class SessionStickinessConfig < Struct.new(
      :idle_ttl,
      :maximum_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Amazon Web Services accounts and the active CloudFront key pairs in each account that CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute aws_account_number
    #   <p>An Amazon Web Services account number that contains active CloudFront key pairs that CloudFront can use to verify the signatures of signed URLs and signed cookies. If the Amazon Web Services account that owns the key pairs is the same account that owns the CloudFront distribution, the value of this field is <code>self</code>.</p>
    #   @return [String]
    # @!attribute key_pair_ids
    #   <p>A list of CloudFront key pair identifiers.</p>
    #   @return [Types::KeyPairIds]
    class Signer < Struct.new(
      :aws_account_number,
      :key_pair_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CloudFront domain name of the staging distribution.</p>
    # @!attribute quantity
    #   <p>The number of CloudFront domain names in your staging distribution.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The CloudFront domain name of the staging distribution.</p>
    #   @return [Array<String>]
    class StagingDistributionDnsNames < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A continuous deployment policy for this staging distribution already exists.</p>
    # @!attribute message
    #   @return [String]
    class StagingDistributionInUse < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex data type for the status codes that you specify that, when returned by a primary origin, trigger CloudFront to failover to a second origin.</p>
    # @!attribute quantity
    #   <p>The number of status codes.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The items (status codes) for an origin group.</p>
    #   @return [Array<Integer>]
    class StatusCodes < Struct.new(
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A streaming distribution tells CloudFront where you want RTMP content to be delivered from, and the details about how to track and manage content delivery.</p>
    # @!attribute id
    #   <p>The identifier for the RTMP distribution. For example: <code>EGTXBD79EXAMPLE</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the distribution. For example: <code>arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the RTMP distribution. When the status is <code>Deployed</code>, the distribution's information is propagated to all CloudFront edge locations.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time that the distribution was last modified.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>The domain name that corresponds to the streaming distribution, for example, <code>s5c39gqb8ow64r.cloudfront.net</code>.</p>
    #   @return [String]
    # @!attribute active_trusted_signers
    #   <p>A complex type that lists the Amazon Web Services accounts, if any, that you included in the <code>TrustedSigners</code> complex type for this distribution. These are the accounts that you want to allow to create signed URLs for private content.</p> <p>The <code>Signer</code> complex type lists the Amazon Web Services account number of the trusted signer or <code>self</code> if the signer is the Amazon Web Services account that created the distribution. The <code>Signer</code> element also includes the IDs of any active CloudFront key pairs that are associated with the trusted signer's Amazon Web Services account. If no <code>KeyPairId</code> element appears for a <code>Signer</code>, that signer can't create signed URLs.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::ActiveTrustedSigners]
    # @!attribute streaming_distribution_config
    #   <p>The current configuration information for the RTMP distribution.</p>
    #   @return [Types::StreamingDistributionConfig]
    class StreamingDistribution < Struct.new(
      :id,
      :arn,
      :status,
      :last_modified_time,
      :domain_name,
      :active_trusted_signers,
      :streaming_distribution_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The caller reference you attempted to create the streaming distribution with is associated with another distribution</p>
    # @!attribute message
    #   @return [String]
    class StreamingDistributionAlreadyExists < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The RTMP distribution's configuration information.</p>
    # @!attribute caller_reference
    #   <p>A unique value (for example, a date-time stamp) that ensures that the request can't be replayed.</p> <p>If the value of <code>CallerReference</code> is new (regardless of the content of the <code>StreamingDistributionConfig</code> object), CloudFront creates a new distribution.</p> <p>If <code>CallerReference</code> is a value that you already sent in a previous request to create a distribution, CloudFront returns a <code>DistributionAlreadyExists</code> error.</p>
    #   @return [String]
    # @!attribute s3_origin
    #   <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
    #   @return [Types::S3Origin]
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>
    #   @return [Types::Aliases]
    # @!attribute comment
    #   <p>Any comments you want to include about the streaming distribution.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>A complex type that controls whether access logs are written for the streaming distribution.</p>
    #   @return [Types::StreamingLoggingConfig]
    # @!attribute trusted_signers
    #   <p>A complex type that specifies any Amazon Web Services accounts that you want to permit to create signed URLs for private content. If you want the distribution to use signed URLs, include this element; if you want the distribution to use public URLs, remove this element. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedSigners]
    # @!attribute price_class
    #   <p>A complex type that contains information about price class for this streaming distribution.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the streaming distribution is enabled to accept user requests for content.</p>
    #   @return [Boolean]
    class StreamingDistributionConfig < Struct.new(
      :caller_reference,
      :s3_origin,
      :aliases,
      :comment,
      :logging,
      :trusted_signers,
      :price_class,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A streaming distribution Configuration and a list of tags to be associated with the streaming distribution.</p>
    # @!attribute streaming_distribution_config
    #   <p>A streaming distribution Configuration.</p>
    #   @return [Types::StreamingDistributionConfig]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class StreamingDistributionConfigWithTags < Struct.new(
      :streaming_distribution_config,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A streaming distribution list.</p>
    # @!attribute marker
    #   <p>The value you provided for the <code>Marker</code> request parameter.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>If <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value you can use for the <code>Marker</code> request parameter to continue listing your RTMP distributions where they left off.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The value you provided for the <code>MaxItems</code> request parameter.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more streaming distributions remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more distributions in the list. </p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of streaming distributions that were created by the current Amazon Web Services account. </p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A complex type that contains one <code>StreamingDistributionSummary</code> element for each distribution that was created by the current Amazon Web Services account.</p>
    #   @return [Array<Types::StreamingDistributionSummary>]
    class StreamingDistributionList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified CloudFront distribution is not disabled. You must disable the distribution before you can delete it.</p>
    # @!attribute message
    #   @return [String]
    class StreamingDistributionNotDisabled < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the information for a CloudFront streaming distribution.</p>
    # @!attribute id
    #   <p>The identifier for the distribution, for example, <code>EDFDVBD632BHDS5</code>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) for the streaming distribution. For example: <code>arn:aws:cloudfront::123456789012:streaming-distribution/EDFDVBD632BHDS5</code>, where <code>123456789012</code> is your Amazon Web Services account ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates the current status of the distribution. When the status is <code>Deployed</code>, the distribution's information is fully propagated throughout the Amazon CloudFront system.</p>
    #   @return [String]
    # @!attribute last_modified_time
    #   <p>The date and time the distribution was last modified.</p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>The domain name corresponding to the distribution, for example, <code>d111111abcdef8.cloudfront.net</code>.</p>
    #   @return [String]
    # @!attribute s3_origin
    #   <p>A complex type that contains information about the Amazon S3 bucket from which you want CloudFront to get your media files for distribution.</p>
    #   @return [Types::S3Origin]
    # @!attribute aliases
    #   <p>A complex type that contains information about CNAMEs (alternate domain names), if any, for this streaming distribution.</p>
    #   @return [Types::Aliases]
    # @!attribute trusted_signers
    #   <p>A complex type that specifies the Amazon Web Services accounts, if any, that you want to allow to create signed URLs for private content. If you want to require signed URLs in requests for objects in the target origin that match the <code>PathPattern</code> for this cache behavior, specify <code>true</code> for <code>Enabled</code>, and specify the applicable values for <code>Quantity</code> and <code>Items</code>.If you don't want to require signed URLs in requests for objects that match <code>PathPattern</code>, specify <code>false</code> for <code>Enabled</code> and <code>0</code> for <code>Quantity</code>. Omit <code>Items</code>. To add, change, or remove one or more trusted signers, change <code>Enabled</code> to <code>true</code> (if it's currently <code>false</code>), change <code>Quantity</code> as applicable, and specify all of the trusted signers that you want to include in the updated distribution.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/PrivateContent.html">Serving Private Content through CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Types::TrustedSigners]
    # @!attribute comment
    #   <p>The comment originally specified when this distribution was created.</p>
    #   @return [String]
    # @!attribute price_class
    #   <p>A complex type that contains information about price class for this streaming distribution.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the distribution is enabled to accept end user requests for content.</p>
    #   @return [Boolean]
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
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that controls whether access logs are written for this streaming distribution.</p>
    # @!attribute enabled
    #   <p>Specifies whether you want CloudFront to save access logs to an Amazon S3 bucket. If you don't want to enable logging when you create a streaming distribution or if you want to disable logging for an existing streaming distribution, specify <code>false</code> for <code>Enabled</code>, and specify <code>empty Bucket</code> and <code>Prefix</code> elements. If you specify <code>false</code> for <code>Enabled</code> but you specify values for <code>Bucket</code> and <code>Prefix</code>, the values are automatically deleted.</p>
    #   @return [Boolean]
    # @!attribute bucket
    #   <p>The Amazon S3 bucket to store the access logs in, for example, <code>amzn-s3-demo-bucket.s3.amazonaws.com</code>.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>An optional string that you want CloudFront to prefix to the access log filenames for this streaming distribution, for example, <code>myprefix/</code>. If you want to enable logging, but you don't want to specify a prefix, you still must include an empty <code>Prefix</code> element in the <code>Logging</code> element.</p>
    #   @return [String]
    class StreamingLoggingConfig < Struct.new(
      :enabled,
      :bucket,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a string schema.</p>
    # @!attribute comment
    #   <p>A comment to describe the parameter.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the parameter.</p>
    #   @return [String]
    # @!attribute required
    #   <p>Whether the defined parameter is required.</p>
    #   @return [Boolean]
    class StringSchemaConfig < Struct.new(
      :comment,
      :default_value,
      :required,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains <code>Tag</code> key and <code>Tag</code> value.</p>
    # @!attribute key
    #   <p>A string that contains <code>Tag</code> key.</p> <p>The string length should be between 1 and 128 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A string that contains an optional <code>Tag</code> value.</p> <p>The string length should be between 0 and 256 characters. Valid characters include <code>a-z</code>, <code>A-Z</code>, <code>0-9</code>, space, and the special characters <code>_ - . : / = + @</code>.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @!attribute items
    #   <p>A complex type that contains <code>Tag</code> key elements.</p>
    #   @return [Array<String>]
    class TagKeys < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to add tags to a CloudFront resource.</p>
    # @!attribute resource
    #   <p>An ARN of a CloudFront resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    #   @return [Types::Tags]
    class TagResourceRequest < Struct.new(
      :resource,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains zero or more <code>Tag</code> elements.</p>
    # @!attribute items
    #   <p>A complex type that contains <code>Tag</code> elements.</p>
    #   @return [Array<Types::Tag>]
    class Tags < Struct.new(
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <note> <p>This field only supports multi-tenant distributions. You can't specify this field for standard distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>The configuration for a distribution tenant.</p>
    # @!attribute parameter_definitions
    #   <p>The parameters that you specify for a distribution tenant.</p>
    #   @return [Array<Types::ParameterDefinition>]
    class TenantConfig < Struct.new(
      :parameter_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The CloudFront function failed.</p>
    # @!attribute message
    #   @return [String]
    class TestFunctionFailed < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are testing.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are testing, which you can get using <code>DescribeFunction</code>.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The stage of the function that you are testing, either <code>DEVELOPMENT</code> or <code>LIVE</code>.</p>
    #   @return [String]
    # @!attribute event_object
    #   <p>The event object to test the function with. For more information about the structure of the event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/managing-functions.html#test-function">Testing functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class TestFunctionRequest < Struct.new(
      :name,
      :if_match,
      :stage,
      :event_object,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_result
    #   <p>An object that represents the result of running the function with the provided event object.</p>
    #   @return [Types::TestResult]
    class TestFunctionResult < Struct.new(
      :test_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the result of testing a CloudFront function with <code>TestFunction</code>.</p>
    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about the CloudFront function that was tested.</p>
    #   @return [Types::FunctionSummary]
    # @!attribute compute_utilization
    #   <p>The amount of time that the function took to run as a percentage of the maximum allowed time. For example, a compute utilization of 35 means that the function completed in 35% of the maximum allowed time.</p>
    #   @return [String]
    # @!attribute function_execution_logs
    #   <p>Contains the log lines that the function wrote (if any) when running the test.</p>
    #   @return [Array<String>]
    # @!attribute function_error_message
    #   <p>If the result of testing the function was an error, this field contains the error message.</p>
    #   @return [String]
    # @!attribute function_output
    #   <p>The event object returned by the function. For more information about the structure of the event object, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/functions-event-structure.html">Event object structure</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class TestResult < Struct.new(
      :function_summary,
      :compute_utilization,
      :function_execution_logs,
      :function_error_message,
      :function_output,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The length of the <code>Content-Security-Policy</code> header value in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooLongCSPInResponseHeadersPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot create more cache behaviors for the distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCacheBehaviors < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of cache policies for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCachePolicies < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot create anymore custom SSL/TLS certificates.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCertificates < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin access identities allowed.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCloudFrontOriginAccessIdentities < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of continuous deployment policies for this Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class TooManyContinuousDeploymentPolicies < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains more cookie names in the whitelist than are allowed per cache behavior.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCookieNamesInWhiteList < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of cookies in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCookiesInCachePolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of cookies in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCookiesInOriginRequestPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of custom headers in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyCustomHeadersInResponseHeadersPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionCNAMEs < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of distributions allowed.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributions < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified cache policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToCachePolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified configuration for field-level encryption.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToFieldLevelEncryptionConfig < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of distributions that reference this key group is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToKeyGroup < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified origin access control.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToOriginAccessControl < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified origin request policy. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToOriginRequestPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified response headers policy.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsAssociatedToResponseHeadersPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of distributions that are associated with a CloudFront function. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsWithFunctionAssociations < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause the maximum number of distributions with Lambda@Edge function associations per owner to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsWithLambdaAssociations < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of distributions have been associated with the specified Lambda@Edge function.</p>
    # @!attribute message
    #   @return [String]
    class TooManyDistributionsWithSingleFunctionARN < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of configurations for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionConfigs < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of content type profiles for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionContentTypeProfiles < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of encryption entities for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionEncryptionEntities < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of field patterns for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionFieldPatterns < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of profiles for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionProfiles < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of query arg profiles for field-level encryption have been created.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFieldLevelEncryptionQueryArgProfiles < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of CloudFront function associations for this distribution. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFunctionAssociations < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of CloudFront functions for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyFunctions < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of headers in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyHeadersInCachePolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains too many headers in forwarded values.</p>
    # @!attribute message
    #   @return [String]
    class TooManyHeadersInForwardedValues < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of headers in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyHeadersInOriginRequestPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the maximum number of allowable InProgress invalidation batch requests, or invalidation objects.</p>
    # @!attribute message
    #   @return [String]
    class TooManyInvalidationsInProgress < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of key groups for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyKeyGroups < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of key groups referenced by this distribution is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyKeyGroupsAssociatedToDistribution < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains more Lambda@Edge function associations than are allowed per distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyLambdaFunctionAssociations < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of origin access controls in your Amazon Web Services account exceeds the maximum allowed.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyOriginAccessControls < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains too many origin custom headers.</p>
    # @!attribute message
    #   @return [String]
    class TooManyOriginCustomHeaders < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of origin groups allowed.</p>
    # @!attribute message
    #   @return [String]
    class TooManyOriginGroupsPerDistribution < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of origin request policies for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyOriginRequestPolicies < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You cannot create more origins for the distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyOrigins < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of public keys for field-level encryption have been created. To create a new public key, delete one of the existing keys.</p>
    # @!attribute message
    #   @return [String]
    class TooManyPublicKeys < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of public keys in this key group is more than the maximum allowed. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyPublicKeysInKeyGroup < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains too many query string parameters.</p>
    # @!attribute message
    #   @return [String]
    class TooManyQueryStringParameters < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of query strings in the cache policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyQueryStringsInCachePolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of query strings in the origin request policy exceeds the maximum. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyQueryStringsInOriginRequestPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of real-time log configurations for this Amazon Web Services account. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRealtimeLogConfigs < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number of headers in <code>RemoveHeadersConfig</code> in the response headers policy exceeds the maximum.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRemoveHeadersInResponseHeadersPolicy < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You have reached the maximum number of response headers policies for this Amazon Web Services account.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/cloudfront-limits.html">Quotas</a> (formerly known as limits) in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class TooManyResponseHeadersPolicies < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains more CNAMEs than are allowed per distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyStreamingDistributionCNAMEs < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause you to exceed the maximum number of streaming distributions allowed.</p>
    # @!attribute message
    #   @return [String]
    class TooManyStreamingDistributions < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Your request contains more trusted signers than are allowed per distribution.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTrustedSigners < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The traffic configuration of your continuous deployment.</p>
    # @!attribute single_weight_config
    #   <p>Contains the percentage of traffic to send to the staging distribution.</p>
    #   @return [Types::ContinuousDeploymentSingleWeightConfig]
    # @!attribute single_header_config
    #   <p>Determines which HTTP requests are sent to the staging distribution.</p>
    #   @return [Types::ContinuousDeploymentSingleHeaderConfig]
    # @!attribute type
    #   <p>The type of traffic configuration.</p>
    #   @return [String]
    class TrafficConfig < Struct.new(
      :single_weight_config,
      :single_header_config,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified key group does not exist.</p>
    # @!attribute message
    #   @return [String]
    class TrustedKeyGroupDoesNotExist < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of key groups whose public keys CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the key groups in the list have public keys that CloudFront can use to verify the signatures of signed URLs and signed cookies. If not, this field is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of key groups in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of key groups identifiers.</p>
    #   @return [Array<String>]
    class TrustedKeyGroups < Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of your trusted signers don't exist.</p>
    # @!attribute message
    #   @return [String]
    class TrustedSignerDoesNotExist < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of Amazon Web Services accounts whose public keys CloudFront can use to verify the signatures of signed URLs and signed cookies.</p>
    # @!attribute enabled
    #   <p>This field is <code>true</code> if any of the Amazon Web Services accounts in the list are configured as trusted signers. If not, this field is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of Amazon Web Services accounts in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>A list of Amazon Web Services account identifiers.</p>
    #   @return [Array<String>]
    class TrustedSigners < Struct.new(
      :enabled,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not supported in this Amazon Web Services Region.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedOperation < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to remove tags from a CloudFront resource.</p>
    # @!attribute resource
    #   <p>An ARN of a CloudFront resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A complex type that contains zero or more <code>Tag</code> key elements.</p>
    #   @return [Types::TagKeys]
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy_config
    #   <p>A cache policy configuration.</p>
    #   @return [Types::CachePolicyConfig]
    # @!attribute id
    #   <p>The unique identifier for the cache policy that you are updating. The identifier is returned in a cache behavior's <code>CachePolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the cache policy that you are updating. The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetCachePolicyConfig</code>.</p>
    #   @return [String]
    class UpdateCachePolicyRequest < Struct.new(
      :cache_policy_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute cache_policy
    #   <p>A cache policy.</p>
    #   @return [Types::CachePolicy]
    # @!attribute e_tag
    #   <p>The current version of the cache policy.</p>
    #   @return [String]
    class UpdateCachePolicyResult < Struct.new(
      :cache_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to update an origin access identity.</p>
    # @!attribute cloud_front_origin_access_identity_config
    #   <p>The identity's configuration information.</p>
    #   @return [Types::CloudFrontOriginAccessIdentityConfig]
    # @!attribute id
    #   <p>The identity's id.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the identity's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateCloudFrontOriginAccessIdentityRequest < Struct.new(
      :cloud_front_origin_access_identity_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute cloud_front_origin_access_identity
    #   <p>The origin access identity's information.</p>
    #   @return [Types::CloudFrontOriginAccessIdentity]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateCloudFrontOriginAccessIdentityResult < Struct.new(
      :cloud_front_origin_access_identity,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the connection group.</p>
    #   @return [String]
    # @!attribute ipv6_enabled
    #   <p>Enable IPv6 for the connection group. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesEnableIPv6">Enable IPv6</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the connection group that you're updating.</p>
    #   @return [String]
    # @!attribute anycast_ip_list_id
    #   <p>The ID of the Anycast static IP list.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Whether the connection group is enabled.</p>
    #   @return [Boolean]
    class UpdateConnectionGroupRequest < Struct.new(
      :id,
      :ipv6_enabled,
      :if_match,
      :anycast_ip_list_id,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_group
    #   <p>The connection group that you updated.</p>
    #   @return [Types::ConnectionGroup]
    # @!attribute e_tag
    #   <p>The current version of the connection group.</p>
    #   @return [String]
    class UpdateConnectionGroupResult < Struct.new(
      :connection_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy_config
    #   <p>The continuous deployment policy configuration.</p>
    #   @return [Types::ContinuousDeploymentPolicyConfig]
    # @!attribute id
    #   <p>The identifier of the continuous deployment policy that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the continuous deployment policy that you are updating.</p>
    #   @return [String]
    class UpdateContinuousDeploymentPolicyRequest < Struct.new(
      :continuous_deployment_policy_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute continuous_deployment_policy
    #   <p>A continuous deployment policy.</p>
    #   @return [Types::ContinuousDeploymentPolicy]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the continuous deployment policy.</p>
    #   @return [String]
    class UpdateContinuousDeploymentPolicyResult < Struct.new(
      :continuous_deployment_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to update a distribution.</p>
    # @!attribute distribution_config
    #   <p>The distribution's configuration information.</p>
    #   @return [Types::DistributionConfig]
    # @!attribute id
    #   <p>The distribution's id.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateDistributionRequest < Struct.new(
      :distribution_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute distribution
    #   <p>The distribution's information.</p>
    #   @return [Types::Distribution]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateDistributionResult < Struct.new(
      :distribution,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the distribution tenant.</p>
    #   @return [String]
    # @!attribute distribution_id
    #   <p>The ID for the multi-tenant distribution.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The domains to update for the distribution tenant. A domain object can contain only a domain property. You must specify at least one domain. Each distribution tenant can have up to 5 domains.</p>
    #   @return [Array<Types::DomainItem>]
    # @!attribute customizations
    #   <p>Customizations for the distribution tenant. For each distribution tenant, you can specify the geographic restrictions, and the Amazon Resource Names (ARNs) for the ACM certificate and WAF web ACL. These are specific values that you can override or disable from the multi-tenant distribution that was used to create the distribution tenant.</p>
    #   @return [Types::Customizations]
    # @!attribute parameters
    #   <p>A list of parameter values to add to the resource. A parameter is specified as a key-value pair. A valid parameter value must exist for any parameter that is marked as required in the multi-tenant distribution.</p>
    #   @return [Array<Types::Parameter>]
    # @!attribute connection_group_id
    #   <p>The ID of the target connection group.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the distribution tenant to update. This value is returned in the response of the <code>GetDistributionTenant</code> API operation.</p>
    #   @return [String]
    # @!attribute managed_certificate_request
    #   <p>An object that contains the CloudFront managed ACM certificate request.</p>
    #   @return [Types::ManagedCertificateRequest]
    # @!attribute enabled
    #   <p>Indicates whether the distribution tenant should be updated to an enabled state. If you update the distribution tenant and it's not enabled, the distribution tenant won't serve traffic.</p>
    #   @return [Boolean]
    class UpdateDistributionTenantRequest < Struct.new(
      :id,
      :distribution_id,
      :domains,
      :customizations,
      :parameters,
      :connection_group_id,
      :if_match,
      :managed_certificate_request,
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_tenant
    #   <p>The distribution tenant that you're updating.</p>
    #   @return [Types::DistributionTenant]
    # @!attribute e_tag
    #   <p>The current version of the distribution tenant.</p>
    #   @return [String]
    class UpdateDistributionTenantResult < Struct.new(
      :distribution_tenant,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the primary distribution to which you are copying a staging distribution's configuration.</p>
    #   @return [String]
    # @!attribute staging_distribution_id
    #   <p>The identifier of the staging distribution whose configuration you are copying to the primary distribution.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current versions (<code>ETag</code> values) of both primary and staging distributions. Provide these in the following format:</p> <p> <code>&lt;primary ETag&gt;, &lt;staging ETag&gt;</code> </p>
    #   @return [String]
    class UpdateDistributionWithStagingConfigRequest < Struct.new(
      :id,
      :staging_distribution_id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution
    #   <p>A distribution tells CloudFront where you want content to be delivered from, and the details about how to track and manage content delivery.</p>
    #   @return [Types::Distribution]
    # @!attribute e_tag
    #   <p>The current version of the primary distribution (after it's updated).</p>
    #   @return [String]
    class UpdateDistributionWithStagingConfigResult < Struct.new(
      :distribution,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain to update.</p>
    #   @return [String]
    # @!attribute target_resource
    #   <p>The target standard distribution or distribution tenant resource for the domain. You can specify either <code>DistributionId</code> or <code>DistributionTenantId</code>, but not both.</p>
    #   @return [Types::DistributionResourceId]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> identifier for the standard distribution or distribution tenant that will be associated with the domain.</p>
    #   @return [String]
    class UpdateDomainAssociationRequest < Struct.new(
      :domain,
      :target_resource,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain that you're moving.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The intended destination for the domain.</p>
    #   @return [String]
    # @!attribute e_tag
    #   <p>The current version of the target standard distribution or distribution tenant that was associated with the domain.</p>
    #   @return [String]
    class UpdateDomainAssociationResult < Struct.new(
      :domain,
      :resource_id,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_config
    #   <p>Request to update a field-level encryption configuration.</p>
    #   @return [Types::FieldLevelEncryptionConfig]
    # @!attribute id
    #   <p>The ID of the configuration you want to update.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the configuration identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateFieldLevelEncryptionConfigRequest < Struct.new(
      :field_level_encryption_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption
    #   <p>Return the results of updating the configuration.</p>
    #   @return [Types::FieldLevelEncryption]
    # @!attribute e_tag
    #   <p>The value of the <code>ETag</code> header that you received when updating the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateFieldLevelEncryptionConfigResult < Struct.new(
      :field_level_encryption,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile_config
    #   <p>Request to update a field-level encryption profile.</p>
    #   @return [Types::FieldLevelEncryptionProfileConfig]
    # @!attribute id
    #   <p>The ID of the field-level encryption profile request.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the profile identity to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateFieldLevelEncryptionProfileRequest < Struct.new(
      :field_level_encryption_profile_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_level_encryption_profile
    #   <p>Return the results of updating the profile.</p>
    #   @return [Types::FieldLevelEncryptionProfile]
    # @!attribute e_tag
    #   <p>The result of the field-level encryption profile request.</p>
    #   @return [String]
    class UpdateFieldLevelEncryptionProfileResult < Struct.new(
      :field_level_encryption_profile,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the function that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the function that you are updating, which you can get using <code>DescribeFunction</code>.</p>
    #   @return [String]
    # @!attribute function_config
    #   <p>Configuration information about the function.</p>
    #   @return [Types::FunctionConfig]
    # @!attribute function_code
    #   <p>The function code. For more information about writing a CloudFront function, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/writing-function-code.html">Writing function code for CloudFront Functions</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [String]
    class UpdateFunctionRequest < Struct.new(
      :name,
      :if_match,
      :function_config,
      :function_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_summary
    #   <p>Contains configuration information and metadata about a CloudFront function.</p>
    #   @return [Types::FunctionSummary]
    # @!attribute e_tag
    #   <p>The version identifier for the current version of the CloudFront function.</p>
    #   @return [String]
    class UpdateFunctionResult < Struct.new(
      :function_summary,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group_config
    #   <p>The key group configuration.</p>
    #   @return [Types::KeyGroupConfig]
    # @!attribute id
    #   <p>The identifier of the key group that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the key group that you are updating. The version is the key group's <code>ETag</code> value.</p>
    #   @return [String]
    class UpdateKeyGroupRequest < Struct.new(
      :key_group_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_group
    #   <p>The key group that was just updated.</p>
    #   @return [Types::KeyGroup]
    # @!attribute e_tag
    #   <p>The identifier for this version of the key group.</p>
    #   @return [String]
    class UpdateKeyGroupResult < Struct.new(
      :key_group,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the key value store to update.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>The comment of the key value store to update.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The key value store to update, if a match occurs.</p>
    #   @return [String]
    class UpdateKeyValueStoreRequest < Struct.new(
      :name,
      :comment,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_value_store
    #   <p>The resulting key value store to update.</p>
    #   @return [Types::KeyValueStore]
    # @!attribute e_tag
    #   <p>The <code>ETag</code> of the resulting key value store.</p>
    #   @return [String]
    class UpdateKeyValueStoreResult < Struct.new(
      :key_value_store,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control_config
    #   <p>An origin access control.</p>
    #   @return [Types::OriginAccessControlConfig]
    # @!attribute id
    #   <p>The unique identifier of the origin access control that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The current version (<code>ETag</code> value) of the origin access control that you are updating.</p>
    #   @return [String]
    class UpdateOriginAccessControlRequest < Struct.new(
      :origin_access_control_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_access_control
    #   <p>The origin access control after it has been updated.</p>
    #   @return [Types::OriginAccessControl]
    # @!attribute e_tag
    #   <p>The new version of the origin access control after it has been updated.</p>
    #   @return [String]
    class UpdateOriginAccessControlResult < Struct.new(
      :origin_access_control,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy_config
    #   <p>An origin request policy configuration.</p>
    #   @return [Types::OriginRequestPolicyConfig]
    # @!attribute id
    #   <p>The unique identifier for the origin request policy that you are updating. The identifier is returned in a cache behavior's <code>OriginRequestPolicyId</code> field in the response to <code>GetDistributionConfig</code>.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the origin request policy that you are updating. The version is returned in the origin request policy's <code>ETag</code> field in the response to <code>GetOriginRequestPolicyConfig</code>.</p>
    #   @return [String]
    class UpdateOriginRequestPolicyRequest < Struct.new(
      :origin_request_policy_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_request_policy
    #   <p>An origin request policy.</p>
    #   @return [Types::OriginRequestPolicy]
    # @!attribute e_tag
    #   <p>The current version of the origin request policy.</p>
    #   @return [String]
    class UpdateOriginRequestPolicyResult < Struct.new(
      :origin_request_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key_config
    #   <p>A public key configuration.</p>
    #   @return [Types::PublicKeyConfig]
    # @!attribute id
    #   <p>The identifier of the public key that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the public key to update. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdatePublicKeyRequest < Struct.new(
      :public_key_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute public_key
    #   <p>The public key.</p>
    #   @return [Types::PublicKey]
    # @!attribute e_tag
    #   <p>The identifier of the current version of the public key.</p>
    #   @return [String]
    class UpdatePublicKeyResult < Struct.new(
      :public_key,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute end_points
    #   <p>Contains information about the Amazon Kinesis data stream where you are sending real-time log data.</p>
    #   @return [Array<Types::EndPoint>]
    # @!attribute fields
    #   <p>A list of fields to include in each real-time log record.</p> <p>For more information about fields, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-fields">Real-time log configuration fields</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p>The name for this real-time log configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for this real-time log configuration.</p>
    #   @return [String]
    # @!attribute sampling_rate
    #   <p>The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. You must provide an integer between 1 and 100, inclusive.</p>
    #   @return [Integer]
    class UpdateRealtimeLogConfigRequest < Struct.new(
      :end_points,
      :fields,
      :name,
      :arn,
      :sampling_rate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute realtime_log_config
    #   <p>A real-time log configuration.</p>
    #   @return [Types::RealtimeLogConfig]
    class UpdateRealtimeLogConfigResult < Struct.new(
      :realtime_log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy_config
    #   <p>A response headers policy configuration.</p>
    #   @return [Types::ResponseHeadersPolicyConfig]
    # @!attribute id
    #   <p>The identifier for the response headers policy that you are updating.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The version of the response headers policy that you are updating.</p> <p>The version is returned in the cache policy's <code>ETag</code> field in the response to <code>GetResponseHeadersPolicyConfig</code>.</p>
    #   @return [String]
    class UpdateResponseHeadersPolicyRequest < Struct.new(
      :response_headers_policy_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute response_headers_policy
    #   <p>A response headers policy.</p>
    #   @return [Types::ResponseHeadersPolicy]
    # @!attribute e_tag
    #   <p>The current version of the response headers policy.</p>
    #   @return [String]
    class UpdateResponseHeadersPolicyResult < Struct.new(
      :response_headers_policy,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to update a streaming distribution.</p>
    # @!attribute streaming_distribution_config
    #   <p>The streaming distribution's configuration information.</p>
    #   @return [Types::StreamingDistributionConfig]
    # @!attribute id
    #   <p>The streaming distribution's id.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The value of the <code>ETag</code> header that you received when retrieving the streaming distribution's configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateStreamingDistributionRequest < Struct.new(
      :streaming_distribution_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The returned result of the corresponding request.</p>
    # @!attribute streaming_distribution
    #   <p>The streaming distribution's information.</p>
    #   @return [Types::StreamingDistribution]
    # @!attribute e_tag
    #   <p>The current version of the configuration. For example: <code>E2QWRUHAPOMQZL</code>.</p>
    #   @return [String]
    class UpdateStreamingDistributionResult < Struct.new(
      :streaming_distribution,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin_endpoint_config
    #   <p>The VPC origin endpoint configuration.</p>
    #   @return [Types::VpcOriginEndpointConfig]
    # @!attribute id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    # @!attribute if_match
    #   <p>The VPC origin to update, if a match occurs.</p>
    #   @return [String]
    class UpdateVpcOriginRequest < Struct.new(
      :vpc_origin_endpoint_config,
      :id,
      :if_match,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_origin
    #   <p>The VPC origin.</p>
    #   @return [Types::VpcOrigin]
    # @!attribute e_tag
    #   <p>The VPC origin ETag.</p>
    #   @return [String]
    class UpdateVpcOriginResult < Struct.new(
      :vpc_origin,
      :e_tag,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the validation token.</p>
    # @!attribute domain
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute redirect_to
    #   <p>The domain to redirect to.</p>
    #   @return [String]
    # @!attribute redirect_from
    #   <p>The domain to redirect from.</p>
    #   @return [String]
    class ValidationTokenDetail < Struct.new(
      :domain,
      :redirect_to,
      :redirect_from,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The domain name that you're verifying.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the distribution tenant. You can specify the ARN, ID, or name of the distribution tenant.</p>
    #   @return [String]
    class VerifyDnsConfigurationRequest < Struct.new(
      :domain,
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute dns_configuration_list
    #   <p>The list of domain names, their statuses, and a description of each status.</p>
    #   @return [Array<Types::DnsConfiguration>]
    class VerifyDnsConfigurationResult < Struct.new(
      :dns_configuration_list,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that determines the distribution's SSL/TLS configuration for communicating with viewers.</p> <p>If the distribution doesn't use <code>Aliases</code> (also known as alternate domain names or CNAMEs)—that is, if the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>—set <code>CloudFrontDefaultCertificate</code> to <code>true</code> and leave all other fields empty.</p> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), use the fields in this type to specify the following settings:</p> <ul> <li> <p>Which viewers the distribution accepts HTTPS connections from: only viewers that support <a href="https://en.wikipedia.org/wiki/Server_Name_Indication">server name indication (SNI)</a> (recommended), or all viewers including those that don't support SNI.</p> <ul> <li> <p>To accept HTTPS connections from only viewers that support SNI, set <code>SSLSupportMethod</code> to <code>sni-only</code>. This is recommended. Most browsers and clients support SNI. </p> </li> <li> <p>To accept HTTPS connections from all viewers, including those that don't support SNI, set <code>SSLSupportMethod</code> to <code>vip</code>. This is not recommended, and results in additional monthly charges from CloudFront.</p> </li> </ul> </li> <li> <p>The minimum SSL/TLS protocol version that the distribution can use to communicate with viewers. To specify a minimum version, choose a value for <code>MinimumProtocolVersion</code>. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy">Security Policy</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </li> <li> <p>The location of the SSL/TLS certificate, <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">Certificate Manager (ACM)</a> (recommended) or <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Identity and Access Management (IAM)</a>. You specify the location by setting a value in one of the following fields (not both):</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> </ul> </li> </ul> <p>All distributions support HTTPS connections from viewers. To require viewers to use HTTPS only, or to redirect them from HTTP to HTTPS, use <code>ViewerProtocolPolicy</code> in the <code>CacheBehavior</code> or <code>DefaultCacheBehavior</code>. To specify how CloudFront should use SSL/TLS to communicate with your custom origin, use <code>CustomOriginConfig</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https.html">Using HTTPS with CloudFront</a> and <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-https-alternate-domain-names.html"> Using Alternate Domain Names and HTTPS</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    # @!attribute cloud_front_default_certificate
    #   <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, set this field to <code>true</code>.</p> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), set this field to <code>false</code> and specify values for the following fields:</p> <ul> <li> <p> <code>ACMCertificateArn</code> or <code>IAMCertificateId</code> (specify a value for one, not both)</p> </li> <li> <p> <code>MinimumProtocolVersion</code> </p> </li> <li> <p> <code>SSLSupportMethod</code> </p> </li> </ul>
    #   @return [Boolean]
    # @!attribute iam_certificate_id
    #   <note> <p>This field only supports standard distributions. You can't specify this field for multi-tenant distributions. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-config-options.html#unsupported-saas">Unsupported features for SaaS Manager for Amazon CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> </note> <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Identity and Access Management (IAM)</a>, provide the ID of the IAM certificate.</p> <p>If you specify an IAM certificate ID, you must also specify values for <code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>. </p>
    #   @return [String]
    # @!attribute acm_certificate_arn
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs) and the SSL/TLS certificate is stored in <a href="https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html">Certificate Manager (ACM)</a>, provide the Amazon Resource Name (ARN) of the ACM certificate. CloudFront only supports ACM certificates in the US East (N. Virginia) Region (<code>us-east-1</code>).</p> <p>If you specify an ACM certificate ARN, you must also specify values for <code>MinimumProtocolVersion</code> and <code>SSLSupportMethod</code>.</p>
    #   @return [String]
    # @!attribute ssl_support_method
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify which viewers the distribution accepts HTTPS connections from.</p> <ul> <li> <p> <code>sni-only</code> – The distribution accepts HTTPS connections from only viewers that support <a href="https://en.wikipedia.org/wiki/Server_Name_Indication">server name indication (SNI)</a>. This is recommended. Most browsers and clients support SNI.</p> </li> <li> <p> <code>vip</code> – The distribution accepts HTTPS connections from all viewers including those that don't support SNI. This is not recommended, and results in additional monthly charges from CloudFront.</p> </li> <li> <p> <code>static-ip</code> - Do not specify this value unless your distribution has been enabled for this feature by the CloudFront team. If you have a use case that requires static IP addresses for a distribution, contact CloudFront through the <a href="https://console.aws.amazon.com/support/home">Amazon Web ServicesSupport Center</a>.</p> </li> </ul> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code>, don't set a value for this field.</p>
    #   @return [String]
    # @!attribute minimum_protocol_version
    #   <p>If the distribution uses <code>Aliases</code> (alternate domain names or CNAMEs), specify the security policy that you want CloudFront to use for HTTPS connections with viewers. The security policy determines two settings:</p> <ul> <li> <p>The minimum SSL/TLS protocol that CloudFront can use to communicate with viewers.</p> </li> <li> <p>The ciphers that CloudFront can use to encrypt the content that it returns to viewers.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValues-security-policy">Security Policy</a> and <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/secure-connections-supported-viewer-protocols-ciphers.html#secure-connections-supported-ciphers">Supported Protocols and Ciphers Between Viewers and CloudFront</a> in the <i>Amazon CloudFront Developer Guide</i>.</p> <note> <p>On the CloudFront console, this setting is called <b>Security Policy</b>.</p> </note> <p>When you're using SNI only (you set <code>SSLSupportMethod</code> to <code>sni-only</code>), you must specify <code>TLSv1</code> or higher.</p> <p>If the distribution uses the CloudFront domain name such as <code>d111111abcdef8.cloudfront.net</code> (you set <code>CloudFrontDefaultCertificate</code> to <code>true</code>), CloudFront automatically sets the security policy to <code>TLSv1</code> regardless of the value that you set here.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>
    #   @deprecated
    #   @return [String]
    # @!attribute certificate_source
    #   <p>This field is deprecated. Use one of the following fields instead:</p> <ul> <li> <p> <code>ACMCertificateArn</code> </p> </li> <li> <p> <code>IAMCertificateId</code> </p> </li> <li> <p> <code>CloudFrontDefaultCertificate</code> </p> </li> </ul>
    #   @deprecated
    #   @return [String]
    class ViewerCertificate < Struct.new(
      :cloud_front_default_certificate,
      :iam_certificate_id,
      :acm_certificate_arn,
      :ssl_support_method,
      :minimum_protocol_version,
      :certificate,
      :certificate_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon CloudFront VPC origin.</p>
    # @!attribute id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The VPC origin ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The VPC origin status.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The VPC origin created time.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The VPC origin last modified time.</p>
    #   @return [Time]
    # @!attribute vpc_origin_endpoint_config
    #   <p>The VPC origin endpoint configuration.</p>
    #   @return [Types::VpcOriginEndpointConfig]
    class VpcOrigin < Struct.new(
      :id,
      :arn,
      :status,
      :created_time,
      :last_modified_time,
      :vpc_origin_endpoint_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon CloudFront VPC origin configuration.</p>
    # @!attribute vpc_origin_id
    #   <p>The VPC origin ID.</p>
    #   @return [String]
    # @!attribute origin_read_timeout
    #   <p>Specifies how long, in seconds, CloudFront waits for a response from the origin. This is also known as the <i>origin response timeout</i>. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 30 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginResponseTimeout">Response timeout</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute origin_keepalive_timeout
    #   <p>Specifies how long, in seconds, CloudFront persists its connection to the origin. The minimum timeout is 1 second, the maximum is 120 seconds, and the default (if you don't specify otherwise) is 5 seconds.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistValuesOrigin.html#DownloadDistValuesOriginKeepaliveTimeout">Keep-alive timeout (custom origins only)</a> in the <i>Amazon CloudFront Developer Guide</i>.</p>
    #   @return [Integer]
    class VpcOriginConfig < Struct.new(
      :vpc_origin_id,
      :origin_read_timeout,
      :origin_keepalive_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon CloudFront VPC origin endpoint configuration.</p>
    # @!attribute name
    #   <p>The name of the CloudFront VPC origin endpoint configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the CloudFront VPC origin endpoint configuration.</p>
    #   @return [String]
    # @!attribute http_port
    #   <p>The HTTP port for the CloudFront VPC origin endpoint configuration. The default value is <code>80</code>.</p>
    #   @return [Integer]
    # @!attribute https_port
    #   <p>The HTTPS port of the CloudFront VPC origin endpoint configuration. The default value is <code>443</code>.</p>
    #   @return [Integer]
    # @!attribute origin_protocol_policy
    #   <p>The origin protocol policy for the CloudFront VPC origin endpoint configuration.</p>
    #   @return [String]
    # @!attribute origin_ssl_protocols
    #   <p>A complex type that contains information about the SSL/TLS protocols that CloudFront can use when establishing an HTTPS connection with your origin.</p>
    #   @return [Types::OriginSslProtocols]
    class VpcOriginEndpointConfig < Struct.new(
      :name,
      :arn,
      :http_port,
      :https_port,
      :origin_protocol_policy,
      :origin_ssl_protocols,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A list of CloudFront VPC origins.</p>
    # @!attribute marker
    #   <p>The marker associated with the VPC origins list.</p>
    #   @return [String]
    # @!attribute next_marker
    #   <p>The next marker associated with the VPC origins list.</p>
    #   @return [String]
    # @!attribute max_items
    #   <p>The maximum number of items included in the list.</p>
    #   @return [Integer]
    # @!attribute is_truncated
    #   <p>A flag that indicates whether more VPC origins remain to be listed. If your results were truncated, you can make a follow-up pagination request using the <code>Marker</code> request parameter to retrieve more VPC origins in the list.</p>
    #   @return [Boolean]
    # @!attribute quantity
    #   <p>The number of VPC origins in the list.</p>
    #   @return [Integer]
    # @!attribute items
    #   <p>The items of the VPC origins list.</p>
    #   @return [Array<Types::VpcOriginSummary>]
    class VpcOriginList < Struct.new(
      :marker,
      :next_marker,
      :max_items,
      :is_truncated,
      :quantity,
      :items,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the CloudFront VPC origin.</p>
    # @!attribute id
    #   <p>The VPC origin summary ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The VPC origin summary name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The VPC origin summary status.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The VPC origin summary created time.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The VPC origin summary last modified time.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The VPC origin summary ARN.</p>
    #   @return [String]
    # @!attribute origin_endpoint_arn
    #   <p>The VPC origin summary origin endpoint ARN.</p>
    #   @return [String]
    class VpcOriginSummary < Struct.new(
      :id,
      :name,
      :status,
      :created_time,
      :last_modified_time,
      :arn,
      :origin_endpoint_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The WAF web ACL customization specified for the distribution tenant.</p>
    # @!attribute action
    #   <p>The action for the WAF web ACL customization. You can specify <code>override</code> to specify a separate WAF web ACL for the distribution tenant. If you specify <code>disable</code>, the distribution tenant won't have WAF web ACL protections and won't inherit from the multi-tenant distribution.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web ACL.</p>
    #   @return [String]
    class WebAclCustomization < Struct.new(
      :action,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
