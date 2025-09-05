# frozen_string_literal: true

# This is generated code!

module Aws::AppSync
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have access to perform this operation on this resource.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an additional authentication provider.</p>
    # @!attribute authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    #   @return [String]
    # @!attribute open_id_connect_config
    #   <p>The OIDC configuration.</p>
    #   @return [Types::OpenIDConnectConfig]
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #   @return [Types::CognitoUserPoolConfig]
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #   @return [Types::LambdaAuthorizerConfig]
    class AdditionalAuthenticationProvider < Struct.new(
      :authentication_type,
      :open_id_connect_config,
      :user_pool_config,
      :lambda_authorizer_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an AppSync API. You can use <code>Api</code> for an AppSync API with your preferred configuration, such as an Event API that provides
    #          real-time message publishing and message subscriptions over WebSockets.</p>
    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>Api</code>.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for the <code>Api</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    # @!attribute dns
    #   <p>The DNS records for the API. This will include an HTTP and a real-time endpoint.</p>
    #   @return [Hash<String, String>]
    # @!attribute api_arn
    #   <p>The Amazon Resource Name (ARN) for the <code>Api</code>.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time that the <code>Api</code> was created.</p>
    #   @return [Time]
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for this
    #               <code>Api</code>.</p>
    #   @return [Boolean]
    # @!attribute waf_web_acl_arn
    #   <p>The Amazon Resource Name (ARN) of the WAF web access control list (web
    #            ACL) associated with this <code>Api</code>, if one exists.</p>
    #   @return [String]
    # @!attribute event_config
    #   <p>The Event API configuration. This includes the default authorization configuration for
    #            connecting, publishing, and subscribing to an Event API.</p>
    #   @return [Types::EventConfig]
    class Api < Struct.new(
      :api_id,
      :name,
      :owner_contact,
      :tags,
      :dns,
      :api_arn,
      :created,
      :xray_enabled,
      :waf_web_acl_arn,
      :event_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:xray_enabled] = false unless options.key?(:xray_enabled)
        super
      end
    end

    # <p>Describes an <code>ApiAssociation</code> object.</p>
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute association_status
    #   <p>Identifies the status of an association.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>PROCESSING</b>: The API association is being
    #                  created. You cannot modify association requests during processing.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SUCCESS</b>: The API association was successful.
    #                  You can modify associations after success.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The API association has failed. You
    #                  can modify associations after failure.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute deployment_detail
    #   <p>Details about the last deployment status.</p>
    #   @return [String]
    class ApiAssociation < Struct.new(
      :domain_name,
      :api_id,
      :association_status,
      :deployment_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>ApiCache</code> object.</p>
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #   @return [Integer]
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests from the
    #                  same user are cached. Individual resolvers are automatically cached. All API calls
    #                  will try to return responses from the cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    #   @return [Boolean]
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The cache instance status.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AVAILABLE</b>: The instance is available for
    #                  use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>CREATING</b>: The instance is currently
    #                  creating.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DELETING</b>: The instance is currently
    #                  deleting.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>MODIFYING</b>: The instance is currently
    #                  modifying.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The instance has failed
    #                  creation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute health_metrics_config
    #   <p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the
    #                  throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing
    #                  bottlenecks in a cache configuration.</p>
    #               </li>
    #               <li>
    #                  <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis
    #                  process. This is useful for diagnosing bottlenecks in a cache
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or
    #               <code>DISABLED</code>.</p>
    #   @return [String]
    class ApiCache < Struct.new(
      :ttl,
      :api_caching_behavior,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :type,
      :status,
      :health_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ttl] = 0 unless options.key?(:ttl)
        options[:transit_encryption_enabled] = false unless options.key?(:transit_encryption_enabled)
        options[:at_rest_encryption_enabled] = false unless options.key?(:at_rest_encryption_enabled)
        super
      end
    end

    # <p>Describes an API key.</p>
    #          <p>Customers invoke AppSync GraphQL API operations with API keys as an
    #          identity mechanism. There are two key versions:</p>
    #          <p>
    #             <b>da1</b>: We introduced this version at launch in November
    #          2017. These keys always expire after 7 days. Amazon DynamoDB TTL manages key
    #          expiration. These keys ceased to be valid after February 21, 2018, and they should no
    #          longer be used.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ListApiKeys</code> returns the expiration time in milliseconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateApiKey</code> returns the expiration time in
    #                milliseconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UpdateApiKey</code> is not available for this key version.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteApiKey</code> deletes the item from the table.</p>
    #             </li>
    #             <li>
    #                <p>Expiration is stored in DynamoDB as milliseconds. This results in a
    #                bug where keys are not automatically deleted because DynamoDB expects the
    #                TTL to be stored in seconds. As a one-time action, we deleted these keys from the
    #                table on February 21, 2018.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>da2</b>: We introduced this version in February 2018 when
    #             AppSync added support to extend key expiration.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>ListApiKeys</code> returns the expiration time and deletion time in
    #                seconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateApiKey</code> returns the expiration time and deletion time in
    #                seconds and accepts a user-provided expiration time in seconds.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UpdateApiKey</code> returns the expiration time and and deletion time in
    #                seconds and accepts a user-provided expiration time in seconds. Expired API keys are
    #                kept for 60 days after the expiration time. You can update the key expiration time as
    #                long as the key isn't deleted.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DeleteApiKey</code> deletes the item from the table.</p>
    #             </li>
    #             <li>
    #                <p>Expiration is stored in DynamoDB as seconds. After the expiration
    #                time, using the key to authenticate will fail. However, you can reinstate the key
    #                before deletion.</p>
    #             </li>
    #             <li>
    #                <p>Deletion is stored in DynamoDB as seconds. The key is deleted after
    #                deletion time.</p>
    #             </li>
    #          </ul>
    # @!attribute id
    #   <p>The API key ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The time after which the API key expires. The date is represented as seconds since the
    #            epoch, rounded down to the nearest hour.</p>
    #   @return [Integer]
    # @!attribute deletes
    #   <p>The time after which the API key is deleted. The date is represented as seconds since
    #            the epoch, rounded down to the nearest hour.</p>
    #   @return [Integer]
    class ApiKey < Struct.new(
      :id,
      :description,
      :expires,
      :deletes,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:expires] = 0 unless options.key?(:expires)
        options[:deletes] = 0 unless options.key?(:deletes)
        super
      end
    end

    # <p>The API key exceeded a limit. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ApiKeyLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The API key expiration must be set to a value between 1 and 365 days from creation (for
    #             <code>CreateApiKey</code>) or from update (for <code>UpdateApiKey</code>).</p>
    # @!attribute message
    #   @return [String]
    class ApiKeyValidityOutOfBoundsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The GraphQL API exceeded a limit. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ApiLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #          that if a runtime is specified, code must also be specified.</p>
    # @!attribute name
    #   <p>The <code>name</code> of the runtime to use. Currently, the only allowed value is
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    # @!attribute runtime_version
    #   <p>The <code>version</code> of the runtime to use. Currently, the only allowed version is
    #               <code>1.0.0</code>.</p>
    #   @return [String]
    class AppSyncRuntime < Struct.new(
      :name,
      :runtime_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The API ID. Private APIs can not be associated with custom domains.</p>
    #   @return [String]
    class AssociateApiRequest < Struct.new(
      :domain_name,
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_association
    #   <p>The <code>ApiAssociation</code> object.</p>
    #   @return [Types::ApiAssociation]
    class AssociateApiResponse < Struct.new(
      :api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    #   @return [String]
    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description field.</p>
    #   @return [String]
    # @!attribute source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    #   @return [Types::SourceApiAssociationConfig]
    class AssociateMergedGraphqlApiRequest < Struct.new(
      :source_api_identifier,
      :merged_api_identifier,
      :description,
      :source_api_association_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association
    #   <p>The <code>SourceApiAssociation</code> object data.</p>
    #   @return [Types::SourceApiAssociation]
    class AssociateMergedGraphqlApiResponse < Struct.new(
      :source_api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description field.</p>
    #   @return [String]
    # @!attribute source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    #   @return [Types::SourceApiAssociationConfig]
    class AssociateSourceGraphqlApiRequest < Struct.new(
      :merged_api_identifier,
      :source_api_identifier,
      :description,
      :source_api_association_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association
    #   <p>The <code>SourceApiAssociation</code> object data.</p>
    #   @return [Types::SourceApiAssociation]
    class AssociateSourceGraphqlApiResponse < Struct.new(
      :source_api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an authorization configuration. Use <code>AuthMode</code> to specify the
    #          publishing and subscription authorization configuration for an Event API.</p>
    # @!attribute auth_type
    #   <p>The authorization type.</p>
    #   @return [String]
    class AuthMode < Struct.new(
      :auth_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an authorization provider.</p>
    # @!attribute auth_type
    #   <p>The authorization type.</p>
    #   @return [String]
    # @!attribute cognito_config
    #   <p>Describes an Amazon Cognito user pool configuration.</p>
    #   @return [Types::CognitoConfig]
    # @!attribute open_id_connect_config
    #   <p>Describes an OpenID Connect (OIDC) configuration.</p>
    #   @return [Types::OpenIDConnectConfig]
    # @!attribute lambda_authorizer_config
    #   <p>A <code>LambdaAuthorizerConfig</code> specifies how to authorize AppSync
    #            API access when using the <code>AWS_LAMBDA</code> authorizer mode. Be aware that an AppSync API can have only one Lambda authorizer configured at a
    #            time.</p>
    #   @return [Types::LambdaAuthorizerConfig]
    class AuthProvider < Struct.new(
      :auth_type,
      :cognito_config,
      :open_id_connect_config,
      :lambda_authorizer_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The authorization configuration in case the HTTP endpoint requires authorization.</p>
    # @!attribute authorization_type
    #   <p>The authorization type that the HTTP endpoint requires.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AWS_IAM</b>: The authorization type is Signature
    #                  Version 4 (SigV4).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute aws_iam_config
    #   <p>The Identity and Access Management (IAM) settings.</p>
    #   @return [Types::AwsIamConfig]
    class AuthorizationConfig < Struct.new(
      :authorization_type,
      :aws_iam_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Identity and Access Management (IAM) configuration.</p>
    # @!attribute signing_region
    #   <p>The signing Amazon Web Services Region for IAM authorization.</p>
    #   @return [String]
    # @!attribute signing_service_name
    #   <p>The signing service name for IAM authorization.</p>
    #   @return [String]
    class AwsIamConfig < Struct.new(
      :signing_region,
      :signing_service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides further details for the reason behind the bad request. For reason type
    #             <code>CODE_ERROR</code>, the detail will contain a list of code errors.</p>
    # @!attribute code_errors
    #   <p>Contains the list of errors in the request.</p>
    #   @return [Array<Types::CodeError>]
    class BadRequestDetail < Struct.new(
      :code_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request is not well formed. For example, a value is invalid or a required field is
    #          missing. Check the field values, and then try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>Provides context for the cause of the bad request. The only supported value is
    #               <code>CODE_ERROR</code>.</p>
    #   @return [String]
    # @!attribute detail
    #   <p>Provides further details for the reason behind the bad request. For reason type
    #               <code>CODE_ERROR</code>, the detail will contain a list of code errors.</p>
    #   @return [Types::BadRequestDetail]
    class BadRequestException < Struct.new(
      :message,
      :reason,
      :detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The caching configuration for a resolver that has caching activated.</p>
    # @!attribute ttl
    #   <p>The TTL in seconds for a resolver that has caching activated.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #   @return [Integer]
    # @!attribute caching_keys
    #   <p>The caching keys for a resolver that has caching activated.</p>
    #            <p>Valid values are entries from the <code>$context.arguments</code>,
    #               <code>$context.source</code>, and <code>$context.identity</code> maps.</p>
    #   @return [Array<String>]
    class CachingConfig < Struct.new(
      :ttl,
      :caching_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ttl] = 0 unless options.key?(:ttl)
        super
      end
    end

    # <p>Describes a channel namespace associated with an <code>Api</code>. The
    #             <code>ChannelNamespace</code> contains the definitions for code handlers for the
    #             <code>Api</code>.</p>
    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the channel namespace. This name must be unique within the
    #            <code>Api</code>.</p>
    #   @return [String]
    # @!attribute subscribe_auth_modes
    #   <p>The authorization mode to use for subscribing to messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code>authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute publish_auth_modes
    #   <p>The authorization mode to use for publishing messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code>authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute code_handlers
    #   <p>The event handler functions that run custom business logic to process published events
    #            and subscribe requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    # @!attribute channel_namespace_arn
    #   <p>The Amazon Resource Name (ARN) for the <code>ChannelNamespace</code>.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date and time that the <code>ChannelNamespace</code> was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date and time that the <code>ChannelNamespace</code> was last changed.</p>
    #   @return [Time]
    # @!attribute handler_configs
    #   <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    #   @return [Types::HandlerConfigs]
    class ChannelNamespace < Struct.new(
      :api_id,
      :name,
      :subscribe_auth_modes,
      :publish_auth_modes,
      :code_handlers,
      :tags,
      :channel_namespace_arn,
      :created,
      :last_modified,
      :handler_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an AppSync error.</p>
    # @!attribute error_type
    #   <p>The type of code error. </p>
    #            <p>Examples include, but aren't limited to: <code>LINT_ERROR</code>,
    #               <code>PARSER_ERROR</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A user presentable error.</p>
    #            <p>Examples include, but aren't limited to: <code>Parsing error: Unterminated string
    #               literal</code>.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The line, column, and span location of the error in the code.</p>
    #   @return [Types::CodeErrorLocation]
    class CodeError < Struct.new(
      :error_type,
      :value,
      :location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the location of the error in a code sample.</p>
    # @!attribute line
    #   <p>The line number in the code. Defaults to <code>0</code> if unknown.</p>
    #   @return [Integer]
    # @!attribute column
    #   <p>The column number in the code. Defaults to <code>0</code> if unknown.</p>
    #   @return [Integer]
    # @!attribute span
    #   <p>The span/length of the error. Defaults to <code>-1</code> if unknown.</p>
    #   @return [Integer]
    class CodeErrorLocation < Struct.new(
      :line,
      :column,
      :span,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:line] = 0 unless options.key?(:line)
        options[:column] = 0 unless options.key?(:column)
        options[:span] = 0 unless options.key?(:span)
        super
      end
    end

    # <p>Describes an Amazon Cognito configuration.</p>
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region in which the user pool was created.</p>
    #   @return [String]
    # @!attribute app_id_client_regex
    #   <p>A regular expression for validating the incoming Amazon Cognito user pool app client
    #            ID. If this value isn't set, no filtering is applied.</p>
    #   @return [String]
    class CognitoConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :app_id_client_regex,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Cognito user pool configuration.</p>
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region in which the user pool was created.</p>
    #   @return [String]
    # @!attribute app_id_client_regex
    #   <p>A regular expression for validating the incoming Amazon Cognito user pool app client
    #            ID. If this value isn't set, no filtering is applied.</p>
    #   @return [String]
    class CognitoUserPoolConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :app_id_client_regex,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Another modification is in progress at this time and it must complete before you can
    #          make your change.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict with a previous successful update is detected. This typically occurs when the
    #          previous update did not have time to propagate before the next update was made. A retry
    #          (with appropriate backoff logic) is the recommended response to this exception.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>CreateApiCache</code> operation.</p>
    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #   @return [Integer]
    # @!attribute transit_encryption_enabled
    #   <p>Transit encryption flag when connecting to cache. You cannot update this setting after
    #            creation.</p>
    #   @deprecated
    #     transitEncryptionEnabled attribute is deprecated. Encryption in transit is always enabled.
    #     Since: 5/15/2025
    #   @return [Boolean]
    # @!attribute at_rest_encryption_enabled
    #   <p>At-rest encryption flag for cache. You cannot update this setting after creation.</p>
    #   @deprecated
    #     atRestEncryptionEnabled attribute is deprecated. Encryption at rest is always enabled.
    #     Since: 5/15/2025
    #   @return [Boolean]
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests from the
    #                  same user are cached. Individual resolvers are automatically cached. All API calls
    #                  will try to return responses from the cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute health_metrics_config
    #   <p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the
    #                  throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing
    #                  bottlenecks in a cache configuration.</p>
    #               </li>
    #               <li>
    #                  <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis
    #                  process. This is useful for diagnosing bottlenecks in a cache
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or
    #               <code>DISABLED</code>.</p>
    #   @return [String]
    class CreateApiCacheRequest < Struct.new(
      :api_id,
      :ttl,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :api_caching_behavior,
      :type,
      :health_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>CreateApiCache</code> operation.</p>
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #   @return [Types::ApiCache]
    class CreateApiCacheResponse < Struct.new(
      :api_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID for your GraphQL API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>From the creation time, the time after which the API key expires. The date is
    #            represented as seconds since the epoch, rounded down to the nearest hour. The default value
    #            for this parameter is 7 days from creation time. For more information, see .</p>
    #   @return [Integer]
    class CreateApiKeyRequest < Struct.new(
      :api_id,
      :description,
      :expires,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key
    #   <p>The API key.</p>
    #   @return [Types::ApiKey]
    class CreateApiKeyResponse < Struct.new(
      :api_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the <code>Api</code>.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for the <code>Api</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    # @!attribute event_config
    #   <p>The Event API configuration. This includes the default authorization configuration for
    #            connecting, publishing, and subscribing to an Event API.</p>
    #   @return [Types::EventConfig]
    class CreateApiRequest < Struct.new(
      :name,
      :owner_contact,
      :tags,
      :event_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api
    #   <p>The <code>Api</code> object.</p>
    #   @return [Types::Api]
    class CreateApiResponse < Struct.new(
      :api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ChannelNamespace</code>. This name must be unique within the
    #               <code>Api</code>
    #            </p>
    #   @return [String]
    # @!attribute subscribe_auth_modes
    #   <p>The authorization mode to use for subscribing to messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute publish_auth_modes
    #   <p>The authorization mode to use for publishing messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute code_handlers
    #   <p>The event handler functions that run custom business logic to process published events
    #            and subscribe requests.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    # @!attribute handler_configs
    #   <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    #   @return [Types::HandlerConfigs]
    class CreateChannelNamespaceRequest < Struct.new(
      :api_id,
      :name,
      :subscribe_auth_modes,
      :publish_auth_modes,
      :code_handlers,
      :tags,
      :handler_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_namespace
    #   <p>The <code>ChannelNamespace</code> object.</p>
    #   @return [Types::ChannelNamespace]
    class CreateChannelNamespaceResponse < Struct.new(
      :channel_namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-supplied name for the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    #   @return [String]
    # @!attribute dynamodb_config
    #   <p>Amazon DynamoDB settings.</p>
    #   @return [Types::DynamodbDataSourceConfig]
    # @!attribute lambda_config
    #   <p>Lambda settings.</p>
    #   @return [Types::LambdaDataSourceConfig]
    # @!attribute elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. For new data sources, use <a>CreateDataSourceRequest$openSearchServiceConfig</a> to create an OpenSearch data source.</p>
    #   @return [Types::ElasticsearchDataSourceConfig]
    # @!attribute open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    # @!attribute http_config
    #   <p>HTTP endpoint settings.</p>
    #   @return [Types::HttpDataSourceConfig]
    # @!attribute relational_database_config
    #   <p>Relational database settings.</p>
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    # @!attribute event_bridge_config
    #   <p>Amazon EventBridge settings.</p>
    #   @return [Types::EventBridgeDataSourceConfig]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced data source metrics for specified data sources. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>dataSourceLevelMetricsBehavior</code> value is set to
    #               <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>
    #            is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>
    #            will be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class CreateDataSourceRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      :event_bridge_config,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>The <code>DataSource</code> object.</p>
    #   @return [Types::DataSource]
    class CreateDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the <code>DomainName</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :certificate_arn,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #   @return [Types::DomainNameConfig]
    class CreateDomainNameResponse < Struct.new(
      :domain_name_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The <code>Function</code> name. The function name does not have to be unique.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29. Note that when using VTL and mapping templates, the
    #               <code>functionVersion</code> is required.</p>
    #   @return [String]
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #   @return [Types::SyncConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>function</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    class CreateFunctionRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      :runtime,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #   @return [Types::FunctionConfiguration]
    class CreateFunctionResponse < Struct.new(
      :function_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A user-supplied name for the <code>GraphqlApi</code>.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    #   @return [Types::LogConfig]
    # @!attribute authentication_type
    #   <p>The authentication type: API key, Identity and Access Management (IAM), OpenID
    #            Connect (OIDC), Amazon Cognito user pools, or Lambda.</p>
    #   @return [String]
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #   @return [Types::UserPoolConfig]
    # @!attribute open_id_connect_config
    #   <p>The OIDC configuration.</p>
    #   @return [Types::OpenIDConnectConfig]
    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #   @return [Boolean]
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #   @return [Types::LambdaAuthorizerConfig]
    # @!attribute api_type
    #   <p>The value that indicates whether the GraphQL API is a standard API
    #            (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
    #   @return [String]
    # @!attribute merged_api_execution_role_arn
    #   <p>The Identity and Access Management service role ARN for a merged API. The AppSync
    #            service assumes this role on behalf of the Merged API to validate access to source APIs at
    #            runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with
    #            the source API changes automatically.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private
    #               (<code>PRIVATE</code>). If no value is provided, the visibility will be set to
    #               <code>GLOBAL</code> by default. This value cannot be changed once the API has been
    #            created.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for an API resource.</p>
    #            <p>This field accepts any string input with a length of 0 - 256 characters.</p>
    #   @return [String]
    # @!attribute introspection_config
    #   <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable
    #               (<code>DISABLED</code>) introspection. If no value is provided, the introspection
    #            configuration will be set to <code>ENABLED</code> by default. This field will produce an
    #            error if the operation attempts to use the introspection feature while this field is
    #            disabled.</p>
    #            <p>For more information about introspection, see <a href="https://graphql.org/learn/introspection/">GraphQL introspection</a>.</p>
    #   @return [String]
    # @!attribute query_depth_limit
    #   <p>The maximum depth a query can have in a single request. Depth refers to the amount of
    #            nested levels allowed in the body of query. The default value is <code>0</code> (or
    #            unspecified), which indicates there's no depth limit. If you set a limit, it can be between
    #               <code>1</code> and <code>75</code> nested levels. This field will produce a limit error
    #            if the operation falls out of bounds.</p>
    #            <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field
    #            produces an error, the error will be thrown upwards to the first nullable field
    #            available.</p>
    #   @return [Integer]
    # @!attribute resolver_count_limit
    #   <p>The maximum number of resolvers that can be invoked in a single request. The default
    #            value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.
    #            When specified, the limit value can be between <code>1</code> and <code>10000</code>. This
    #            field will produce a limit error if the operation falls out of bounds.</p>
    #   @return [Integer]
    # @!attribute enhanced_metrics_config
    #   <p>The <code>enhancedMetricsConfig</code> object.</p>
    #   @return [Types::EnhancedMetricsConfig]
    class CreateGraphqlApiRequest < Struct.new(
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config,
      :tags,
      :additional_authentication_providers,
      :xray_enabled,
      :lambda_authorizer_config,
      :api_type,
      :merged_api_execution_role_arn,
      :visibility,
      :owner_contact,
      :introspection_config,
      :query_depth_limit,
      :resolver_count_limit,
      :enhanced_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graphql_api
    #   <p>The <code>GraphqlApi</code>.</p>
    #   @return [Types::GraphqlApi]
    class CreateGraphqlApiResponse < Struct.new(
      :graphql_api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID for the GraphQL API for which the resolver is being created.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the <code>Type</code>.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>The name of the field to attach the resolver to.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The name of the data source for which the resolver is being created.</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The mapping template to use for requests.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The mapping template to use for responses from the data source.</p>
    #   @return [String]
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #   @return [Types::PipelineConfig]
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #   @return [Types::SyncConfig]
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #   @return [Types::CachingConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>resolver</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced resolver metrics for specified resolvers. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>resolverLevelMetricsBehavior</code> value is set to
    #               <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is
    #            set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will
    #            be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class CreateResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      :runtime,
      :code,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolver
    #   <p>The <code>Resolver</code> object.</p>
    #   @return [Types::Resolver]
    class CreateResolverResponse < Struct.new(
      :resolver,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #   @return [String]
    class CreateTypeRequest < Struct.new(
      :api_id,
      :definition,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The <code>Type</code> object.</p>
    #   @return [Types::Type]
    class CreateTypeResponse < Struct.new(
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a data source.</p>
    # @!attribute data_source_arn
    #   <p>The data source Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>AWS_LAMBDA</b>: The data source is an Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_DYNAMODB</b>: The data source is an Amazon DynamoDB table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_ELASTICSEARCH</b>: The data source is an
    #                     Amazon OpenSearch Service domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_OPENSEARCH_SERVICE</b>: The data source is
    #                  an Amazon OpenSearch Service domain.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_EVENTBRIDGE</b>: The data source is an
    #                     Amazon EventBridge configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AMAZON_BEDROCK_RUNTIME</b>: The data source is the
    #                     Amazon Bedrock runtime.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: There is no data source. Use this type
    #                  when you want to invoke a GraphQL operation without connecting to a data source, such
    #                  as when you're performing data transformation with resolvers or invoking a
    #                  subscription from a mutation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>HTTP</b>: The data source is an HTTP
    #                  endpoint.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RELATIONAL_DATABASE</b>: The data source is a
    #                  relational database.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute service_role_arn
    #   <p>The Identity and Access Management (IAM) service role Amazon Resource Name (ARN)
    #            for the data source. The system assumes this role when accessing the data source.</p>
    #   @return [String]
    # @!attribute dynamodb_config
    #   <p>DynamoDB settings.</p>
    #   @return [Types::DynamodbDataSourceConfig]
    # @!attribute lambda_config
    #   <p>Lambda settings.</p>
    #   @return [Types::LambdaDataSourceConfig]
    # @!attribute elasticsearch_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #   @return [Types::ElasticsearchDataSourceConfig]
    # @!attribute open_search_service_config
    #   <p>Amazon OpenSearch Service settings.</p>
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    # @!attribute http_config
    #   <p>HTTP endpoint settings.</p>
    #   @return [Types::HttpDataSourceConfig]
    # @!attribute relational_database_config
    #   <p>Relational database settings.</p>
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    # @!attribute event_bridge_config
    #   <p>Amazon EventBridge settings.</p>
    #   @return [Types::EventBridgeDataSourceConfig]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced data source metrics for specified data sources. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>dataSourceLevelMetricsBehavior</code> value is set to
    #               <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>
    #            is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>
    #            will be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class DataSource < Struct.new(
      :data_source_arn,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      :event_bridge_config,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the introspected data that was retrieved from the data source.</p>
    # @!attribute name
    #   <p>The name of the model. For example, this could be the name of a single table in a
    #            database.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The <code>DataSourceIntrospectionModelField</code> object data.</p>
    #   @return [Array<Types::DataSourceIntrospectionModelField>]
    # @!attribute primary_key
    #   <p>The primary key stored as a <code>DataSourceIntrospectionModelIndex</code>
    #            object.</p>
    #   @return [Types::DataSourceIntrospectionModelIndex]
    # @!attribute indexes
    #   <p>The array of <code>DataSourceIntrospectionModelIndex</code> objects.</p>
    #   @return [Array<Types::DataSourceIntrospectionModelIndex>]
    # @!attribute sdl
    #   <p>Contains the output of the SDL that was generated from the introspected types. This is
    #            controlled by the <code>includeModelsSDL</code> parameter of the
    #               <code>GetDataSourceIntrospection</code> operation.</p>
    #   @return [String]
    class DataSourceIntrospectionModel < Struct.new(
      :name,
      :fields,
      :primary_key,
      :indexes,
      :sdl,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the fields that were retrieved from the introspected data.</p>
    # @!attribute name
    #   <p>The name of the field that was retrieved from the introspected data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The <code>DataSourceIntrospectionModelFieldType</code> object data.</p>
    #   @return [Types::DataSourceIntrospectionModelFieldType]
    # @!attribute length
    #   <p>The length value of the introspected field.</p>
    #   @return [Integer]
    class DataSourceIntrospectionModelField < Struct.new(
      :name,
      :type,
      :length,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:length] = 0 unless options.key?(:length)
        super
      end
    end

    # <p>Represents the type data for each field retrieved from the introspection.</p>
    # @!attribute kind
    #   <p>Specifies the classification of data. For example, this could be set to values like
    #               <code>Scalar</code> or <code>NonNull</code> to indicate a fundamental property of the
    #            field.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Scalar</code>: Indicates the value is a primitive type
    #                  (scalar).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NonNull</code>: Indicates the field cannot be
    #                  <code>null</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>List</code>: Indicates the field contains a list.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data type that represents the field. For example, <code>String</code> is
    #            a valid <code>name</code> value.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The <code>DataSourceIntrospectionModelFieldType</code> object data. The
    #               <code>type</code> is only present if
    #               <code>DataSourceIntrospectionModelFieldType.kind</code> is set to <code>NonNull</code>
    #            or <code>List</code>. </p>
    #            <p>The <code>type</code> typically contains its own <code>kind</code> and <code>name</code>
    #            fields to represent the actual type data. For instance, <code>type</code> could contain a
    #               <code>kind</code> value of <code>Scalar</code> with a <code>name</code> value of
    #               <code>String</code>. The values <code>Scalar</code> and <code>String</code> will be
    #            collectively stored in the <code>values</code> field.</p>
    #   @return [Types::DataSourceIntrospectionModelFieldType]
    # @!attribute values
    #   <p>The values of the <code>type</code> field. This field represents the AppSync data type
    #            equivalent of the introspected field.</p>
    #   @return [Array<String>]
    class DataSourceIntrospectionModelFieldType < Struct.new(
      :kind,
      :name,
      :type,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The index that was retrieved from the introspected data.</p>
    # @!attribute name
    #   <p>The name of the index.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The fields of the index.</p>
    #   @return [Array<String>]
    class DataSourceIntrospectionModelIndex < Struct.new(
      :name,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DataSourceIntrospectionResult</code>. This is the
    #          populated result of a <code>GetDataSourceIntrospection</code> operation.</p>
    # @!attribute models
    #   <p>The array of <code>DataSourceIntrospectionModel</code> objects.</p>
    #   @return [Array<Types::DataSourceIntrospectionModel>]
    # @!attribute next_token
    #   <p>Determines the number of types to be returned in a single response before paginating.
    #            This value is typically taken from <code>nextToken</code> value from the previous
    #            response.</p>
    #   @return [String]
    class DataSourceIntrospectionResult < Struct.new(
      :models,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>DeleteApiCache</code> operation.</p>
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    class DeleteApiCacheRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>DeleteApiCache</code> operation.</p>
    class DeleteApiCacheResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID for the API key.</p>
    #   @return [String]
    class DeleteApiKeyRequest < Struct.new(
      :api_id,
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApiKeyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    class DeleteApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteApiResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID of the <code>Api</code> associated with the <code>ChannelNamespace</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    #   @return [String]
    class DeleteChannelNamespaceRequest < Struct.new(
      :api_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteChannelNamespaceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    class DeleteDataSourceRequest < Struct.new(
      :api_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteDataSourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class DeleteDomainNameRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainNameResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute function_id
    #   <p>The <code>Function</code> ID.</p>
    #   @return [String]
    class DeleteFunctionRequest < Struct.new(
      :api_id,
      :function_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteFunctionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    class DeleteGraphqlApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteGraphqlApiResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The name of the resolver type.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #   @return [String]
    class DeleteResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteResolverResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The type name.</p>
    #   @return [String]
    class DeleteTypeRequest < Struct.new(
      :api_id,
      :type_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTypeResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Delta Sync configuration.</p>
    # @!attribute base_table_ttl
    #   <p>The number of minutes that an Item is stored in the data source.</p>
    #   @return [Integer]
    # @!attribute delta_sync_table_name
    #   <p>The Delta Sync table name.</p>
    #   @return [String]
    # @!attribute delta_sync_table_ttl
    #   <p>The number of minutes that a Delta Sync log entry is stored in the Delta Sync
    #            table.</p>
    #   @return [Integer]
    class DeltaSyncConfig < Struct.new(
      :base_table_ttl,
      :delta_sync_table_name,
      :delta_sync_table_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:base_table_ttl] = 0 unless options.key?(:base_table_ttl)
        options[:delta_sync_table_ttl] = 0 unless options.key?(:delta_sync_table_ttl)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class DisassociateApiRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DisassociateApiResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_identifier
    #   <p>The identifier of the AppSync Source API. This is generated by the AppSync service. In
    #            most cases, source APIs (especially in your account) only require the API ID value or ARN
    #            of the source API. However, source APIs from other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the source API.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    class DisassociateMergedGraphqlApiRequest < Struct.new(
      :source_api_identifier,
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association_status
    #   <p>The state of the source API association.</p>
    #   @return [String]
    class DisassociateMergedGraphqlApiResponse < Struct.new(
      :source_api_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    class DisassociateSourceGraphqlApiRequest < Struct.new(
      :merged_api_identifier,
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association_status
    #   <p>The state of the source API association.</p>
    #   @return [String]
    class DisassociateSourceGraphqlApiResponse < Struct.new(
      :source_api_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a configuration for a custom domain.</p>
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the <code>DomainName</code> configuration.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate. This can be an Certificate Manager
    #               (ACM) certificate or an Identity and Access Management (IAM)
    #            server certificate.</p>
    #   @return [String]
    # @!attribute appsync_domain_name
    #   <p>The domain name that AppSync provides.</p>
    #   @return [String]
    # @!attribute hosted_zone_id
    #   <p>The ID of your Amazon Route 53 hosted zone.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map with keys of <code>TagKey</code> objects and values of <code>TagValue</code>
    #            objects.</p>
    #   @return [Hash<String, String>]
    # @!attribute domain_name_arn
    #   <p>The Amazon Resource Name (ARN) of the domain name.</p>
    #   @return [String]
    class DomainNameConfig < Struct.new(
      :domain_name,
      :description,
      :certificate_arn,
      :appsync_domain_name,
      :hosted_zone_id,
      :tags,
      :domain_name_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon DynamoDB data source configuration.</p>
    # @!attribute table_name
    #   <p>The table name.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute use_caller_credentials
    #   <p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>
    #   @return [Boolean]
    # @!attribute delta_sync_config
    #   <p>The <code>DeltaSyncConfig</code> for a versioned data source.</p>
    #   @return [Types::DeltaSyncConfig]
    # @!attribute versioned
    #   <p>Set to TRUE to use Conflict Detection and Resolution with this data source.</p>
    #   @return [Boolean]
    class DynamodbDataSourceConfig < Struct.new(
      :table_name,
      :aws_region,
      :use_caller_credentials,
      :delta_sync_config,
      :versioned,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:use_caller_credentials] = false unless options.key?(:use_caller_credentials)
        options[:versioned] = false unless options.key?(:versioned)
        super
      end
    end

    # <p>Describes an OpenSearch data source configuration.</p>
    #          <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #          configuration is deprecated. For new data sources, use <a>OpenSearchServiceDataSourceConfig</a> to specify an OpenSearch data
    #          source.</p>
    # @!attribute endpoint
    #   <p>The endpoint.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    class ElasticsearchDataSourceConfig < Struct.new(
      :endpoint,
      :aws_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Enables and controls the enhanced metrics feature. Enhanced metrics emit granular data
    #          on API usage and performance such as AppSync request and error counts, latency, and cache
    #          hits/misses. All enhanced metric data is sent to your CloudWatch account, and you can
    #          configure the types of data that will be sent. </p>
    #          <p>Enhanced metrics can be configured at the resolver, data source, and operation levels.
    #             <code>EnhancedMetricsConfig</code> contains three required parameters, each controlling
    #          one of these categories:</p>
    #          <ol>
    #             <li>
    #                <p>
    #                   <code>resolverLevelMetricsBehavior</code>: Controls how resolver metrics will
    #                be emitted to CloudWatch. Resolver metrics include:</p>
    #                <ul>
    #                   <li>
    #                      <p>GraphQL errors: The number of GraphQL errors that occurred.</p>
    #                   </li>
    #                   <li>
    #                      <p>Requests: The number of invocations that occurred during a request.
    #                   </p>
    #                   </li>
    #                   <li>
    #                      <p>Latency: The time to complete a resolver invocation.</p>
    #                   </li>
    #                   <li>
    #                      <p>Cache hits: The number of cache hits during a request.</p>
    #                   </li>
    #                   <li>
    #                      <p>Cache misses: The number of cache misses during a request.</p>
    #                   </li>
    #                </ul>
    #                <p>These metrics can be emitted to CloudWatch per resolver or for all resolvers in
    #                the request. Metrics will be recorded by API ID and resolver name.
    #                   <code>resolverLevelMetricsBehavior</code> accepts one of these values at a
    #                time:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>FULL_REQUEST_RESOLVER_METRICS</code>: Records and emits metric data
    #                      for all resolvers in the request.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PER_RESOLVER_METRICS</code>: Records and emits metric data for
    #                      resolvers that have the <code>metricsConfig</code> value set to
    #                         <code>ENABLED</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>dataSourceLevelMetricsBehavior</code>: Controls how data source metrics
    #                will be emitted to CloudWatch. Data source metrics include:</p>
    #                <ul>
    #                   <li>
    #                      <p>Requests: The number of invocations that occured during a
    #                      request.</p>
    #                   </li>
    #                   <li>
    #                      <p>Latency: The time to complete a data source invocation.</p>
    #                   </li>
    #                   <li>
    #                      <p>Errors: The number of errors that occurred during a data source
    #                      invocation.</p>
    #                   </li>
    #                </ul>
    #                <p>These metrics can be emitted to CloudWatch per data source or for all data sources
    #                in the request. Metrics will be recorded by API ID and data source name.
    #                   <code>dataSourceLevelMetricsBehavior</code> accepts one of these values at a
    #                time:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>FULL_REQUEST_DATA_SOURCE_METRICS</code>: Records and emits metric
    #                      data for all data sources in the request.</p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>PER_DATA_SOURCE_METRICS</code>: Records and emits metric data for
    #                      data sources that have the <code>metricsConfig</code> value set to
    #                         <code>ENABLED</code>.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>operationLevelMetricsConfig</code>: Controls how operation metrics will
    #                be emitted to CloudWatch. Operation metrics include:</p>
    #                <ul>
    #                   <li>
    #                      <p>Requests: The number of times a specified GraphQL operation was
    #                      called.</p>
    #                   </li>
    #                   <li>
    #                      <p>GraphQL errors: The number of GraphQL errors that occurred during a
    #                      specified GraphQL operation.</p>
    #                   </li>
    #                </ul>
    #                <p>Metrics will be recorded by API ID and operation name. You can set the value to
    #                   <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #             </li>
    #          </ol>
    # @!attribute resolver_level_metrics_behavior
    #   <p>Controls how resolver metrics will be emitted to CloudWatch. Resolver metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>GraphQL errors: The number of GraphQL errors that occurred.</p>
    #               </li>
    #               <li>
    #                  <p>Requests: The number of invocations that occurred during a request. </p>
    #               </li>
    #               <li>
    #                  <p>Latency: The time to complete a resolver invocation.</p>
    #               </li>
    #               <li>
    #                  <p>Cache hits: The number of cache hits during a request.</p>
    #               </li>
    #               <li>
    #                  <p>Cache misses: The number of cache misses during a request.</p>
    #               </li>
    #            </ul>
    #            <p>These metrics can be emitted to CloudWatch per resolver or for all resolvers in the
    #            request. Metrics will be recorded by API ID and resolver name.
    #               <code>resolverLevelMetricsBehavior</code> accepts one of these values at a time:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULL_REQUEST_RESOLVER_METRICS</code>: Records and emits metric data for
    #                  all resolvers in the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PER_RESOLVER_METRICS</code>: Records and emits metric data for resolvers
    #                  that have the <code>metricsConfig</code> value set to <code>ENABLED</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_source_level_metrics_behavior
    #   <p>Controls how data source metrics will be emitted to CloudWatch. Data source metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>Requests: The number of invocations that occured during a request.</p>
    #               </li>
    #               <li>
    #                  <p>Latency: The time to complete a data source invocation.</p>
    #               </li>
    #               <li>
    #                  <p>Errors: The number of errors that occurred during a data source
    #                  invocation.</p>
    #               </li>
    #            </ul>
    #            <p>These metrics can be emitted to CloudWatch per data source or for all data sources in
    #            the request. Metrics will be recorded by API ID and data source name.
    #               <code>dataSourceLevelMetricsBehavior</code> accepts one of these values at a
    #            time:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULL_REQUEST_DATA_SOURCE_METRICS</code>: Records and emits metric data
    #                  for all data sources in the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PER_DATA_SOURCE_METRICS</code>: Records and emits metric data for data
    #                  sources that have the <code>metricsConfig</code> value set to
    #                  <code>ENABLED</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute operation_level_metrics_config
    #   <p> Controls how operation metrics will be emitted to CloudWatch. Operation metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>Requests: The number of times a specified GraphQL operation was
    #                  called.</p>
    #               </li>
    #               <li>
    #                  <p>GraphQL errors: The number of GraphQL errors that occurred during a specified
    #                  GraphQL operation.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID and operation name. You can set the value to
    #               <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class EnhancedMetricsConfig < Struct.new(
      :resolver_level_metrics_behavior,
      :data_source_level_metrics_behavior,
      :operation_level_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of errors generated. When using JavaScript, this will apply to the
    #          request or response function evaluation.</p>
    # @!attribute message
    #   <p>The error payload.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of errors from a code evaluation response.</p>
    # @!attribute message
    #   <p>The error payload.</p>
    #   @return [String]
    # @!attribute code_errors
    #   <p>Contains the list of <code>CodeError</code> objects.</p>
    #   @return [Array<Types::CodeError>]
    class EvaluateCodeErrorDetail < Struct.new(
      :message,
      :code_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute runtime
    #   <p>The runtime to be used when evaluating the code. Currently, only the
    #               <code>APPSYNC_JS</code> runtime is supported.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The code definition to be evaluated. Note that <code>code</code> and
    #               <code>runtime</code> are both required for this action. The <code>runtime</code> value
    #            must be <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The map that holds all of the contextual information for your resolver invocation. A
    #               <code>context</code> is required for this action.</p>
    #   @return [String]
    # @!attribute function
    #   <p>The function within the code to be evaluated. If provided, the valid values are
    #               <code>request</code> and <code>response</code>.</p>
    #   @return [String]
    class EvaluateCodeRequest < Struct.new(
      :runtime,
      :code,
      :context,
      :function,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_result
    #   <p>The result of the evaluation operation.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Contains the payload of the response error.</p>
    #   @return [Types::EvaluateCodeErrorDetail]
    # @!attribute logs
    #   <p>A list of logs that were generated by calls to <code>util.log.info</code> and
    #               <code>util.log.error</code> in the evaluated code.</p>
    #   @return [Array<String>]
    # @!attribute stash
    #   <p>An object available inside each resolver and function handler. A single <code>stash</code> object lives through a single resolver run. Therefore, you can use the stash to pass arbitrary data across request and response handlers and across functions in a pipeline resolver.</p>
    #   @return [String]
    # @!attribute out_errors
    #   <p>The list of runtime errors that are added to the GraphQL operation response.</p>
    #   @return [String]
    class EvaluateCodeResponse < Struct.new(
      :evaluation_result,
      :error,
      :logs,
      :stash,
      :out_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template
    #   <p>The mapping template; this can be a request or response template. A
    #               <code>template</code> is required for this action.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The map that holds all of the contextual information for your resolver invocation. A
    #               <code>context</code> is required for this action.</p>
    #   @return [String]
    class EvaluateMappingTemplateRequest < Struct.new(
      :template,
      :context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute evaluation_result
    #   <p>The mapping template; this can be a request or response template.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The <code>ErrorDetail</code> object.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute logs
    #   <p>A list of logs that were generated by calls to <code>util.log.info</code> and
    #               <code>util.log.error</code> in the evaluated code.</p>
    #   @return [Array<String>]
    # @!attribute stash
    #   <p>An object available inside each resolver and function handler. A single <code>stash</code> object lives through a single resolver run. Therefore, you can use the stash to pass arbitrary data across request and response handlers and across functions in a pipeline resolver.</p>
    #   @return [String]
    # @!attribute out_errors
    #   <p>The list of runtime errors that are added to the GraphQL operation response.</p>
    #   @return [String]
    class EvaluateMappingTemplateResponse < Struct.new(
      :evaluation_result,
      :error,
      :logs,
      :stash,
      :out_errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon EventBridge bus data source configuration.</p>
    # @!attribute event_bus_arn
    #   <p>The ARN of the event bus. For more information about event buses, see <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html">Amazon
    #               EventBridge event buses</a>.</p>
    #   @return [String]
    class EventBridgeDataSourceConfig < Struct.new(
      :event_bus_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the authorization configuration for connections, message publishing, message
    #          subscriptions, and logging for an Event API.</p>
    # @!attribute auth_providers
    #   <p>A list of authorization providers.</p>
    #   @return [Array<Types::AuthProvider>]
    # @!attribute connection_auth_modes
    #   <p>A list of valid authorization modes for the Event API connections.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute default_publish_auth_modes
    #   <p>A list of valid authorization modes for the Event API publishing.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute default_subscribe_auth_modes
    #   <p>A list of valid authorization modes for the Event API subscriptions.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the Event API.</p>
    #   @return [Types::EventLogConfig]
    class EventConfig < Struct.new(
      :auth_providers,
      :connection_auth_modes,
      :default_publish_auth_modes,
      :default_subscribe_auth_modes,
      :log_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the CloudWatch Logs configuration for the Event API.</p>
    # @!attribute log_level
    #   <p>The type of information to log for the Event API. </p>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The IAM service role that AppSync assumes to publish CloudWatch Logs in your account.</p>
    #   @return [String]
    class EventLogConfig < Struct.new(
      :log_level,
      :cloud_watch_logs_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>FlushApiCache</code> operation.</p>
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    class FlushApiCacheRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>FlushApiCache</code> operation.</p>
    class FlushApiCacheResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A function is a reusable entity. You can use multiple functions to compose the resolver
    #          logic.</p>
    # @!attribute function_id
    #   <p>A unique ID representing the <code>Function</code> object.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the <code>Function</code> object.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>Function</code> object.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The name of the <code>DataSource</code>.</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> response mapping template.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The version of the request mapping template. Currently, only the 2018-05-29 version of
    #            the template is supported.</p>
    #   @return [String]
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #   @return [Types::SyncConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>function</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    class FunctionConfiguration < Struct.new(
      :function_id,
      :function_arn,
      :name,
      :description,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      :runtime,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_batch_size] = 0 unless options.key?(:max_batch_size)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class GetApiAssociationRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_association
    #   <p>The <code>ApiAssociation</code> object.</p>
    #   @return [Types::ApiAssociation]
    class GetApiAssociationResponse < Struct.new(
      :api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>GetApiCache</code> operation.</p>
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    class GetApiCacheRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>GetApiCache</code> operation.</p>
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #   @return [Types::ApiCache]
    class GetApiCacheResponse < Struct.new(
      :api_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    class GetApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api
    #   <p>The <code>Api</code> object.</p>
    #   @return [Types::Api]
    class GetApiResponse < Struct.new(
      :api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    #   @return [String]
    class GetChannelNamespaceRequest < Struct.new(
      :api_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_namespace
    #   <p>The <code>ChannelNamespace</code> object.</p>
    #   @return [Types::ChannelNamespace]
    class GetChannelNamespaceResponse < Struct.new(
      :channel_namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute introspection_id
    #   <p>The introspection ID. Each introspection contains a unique ID that can be used to
    #            reference the instrospection record.</p>
    #   @return [String]
    # @!attribute include_models_sdl
    #   <p>A boolean flag that determines whether SDL should be generated for introspected types.
    #            If set to <code>true</code>, each model will contain an <code>sdl</code> property that
    #            contains the SDL for that type. The SDL only contains the type data and no additional
    #            metadata or directives. </p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Determines the number of types to be returned in a single response before paginating.
    #            This value is typically taken from <code>nextToken</code> value from the previous
    #            response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of introspected types that will be returned in a single
    #            response.</p>
    #   @return [Integer]
    class GetDataSourceIntrospectionRequest < Struct.new(
      :introspection_id,
      :include_models_sdl,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute introspection_id
    #   <p>The introspection ID. Each introspection contains a unique ID that can be used to
    #            reference the instrospection record.</p>
    #   @return [String]
    # @!attribute introspection_status
    #   <p>The status of the introspection during retrieval. By default, when a new instrospection
    #            is being retrieved, the status will be set to <code>PROCESSING</code>. Once the operation
    #            has been completed, the status will change to <code>SUCCESS</code> or <code>FAILED</code>
    #            depending on how the data was parsed. A <code>FAILED</code> operation will return an error
    #            and its details as an <code>introspectionStatusDetail</code>.</p>
    #   @return [String]
    # @!attribute introspection_status_detail
    #   <p>The error detail field. When a <code>FAILED</code>
    #               <code>introspectionStatus</code> is returned, the <code>introspectionStatusDetail</code>
    #            will also return the exact error that was generated during the operation.</p>
    #   @return [String]
    # @!attribute introspection_result
    #   <p>The <code>DataSourceIntrospectionResult</code> object data.</p>
    #   @return [Types::DataSourceIntrospectionResult]
    class GetDataSourceIntrospectionResponse < Struct.new(
      :introspection_id,
      :introspection_status,
      :introspection_status_detail,
      :introspection_result,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data source.</p>
    #   @return [String]
    class GetDataSourceRequest < Struct.new(
      :api_id,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>The <code>DataSource</code> object.</p>
    #   @return [Types::DataSource]
    class GetDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    class GetDomainNameRequest < Struct.new(
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #   @return [Types::DomainNameConfig]
    class GetDomainNameResponse < Struct.new(
      :domain_name_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute function_id
    #   <p>The <code>Function</code> ID.</p>
    #   @return [String]
    class GetFunctionRequest < Struct.new(
      :api_id,
      :function_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #   @return [Types::FunctionConfiguration]
    class GetFunctionResponse < Struct.new(
      :function_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID of the API from which the environmental variable list will be retrieved.</p>
    #   @return [String]
    class GetGraphqlApiEnvironmentVariablesRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_variables
    #   <p>The payload containing each environmental variable in the <code>"key" : "value"</code>
    #            format.</p>
    #   @return [Hash<String, String>]
    class GetGraphqlApiEnvironmentVariablesResponse < Struct.new(
      :environment_variables,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID for the GraphQL API.</p>
    #   @return [String]
    class GetGraphqlApiRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graphql_api
    #   <p>The <code>GraphqlApi</code> object.</p>
    #   @return [Types::GraphqlApi]
    class GetGraphqlApiResponse < Struct.new(
      :graphql_api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The schema format: SDL or JSON.</p>
    #   @return [String]
    # @!attribute include_directives
    #   <p>A flag that specifies whether the schema introspection should contain directives.</p>
    #   @return [Boolean]
    class GetIntrospectionSchemaRequest < Struct.new(
      :api_id,
      :format,
      :include_directives,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute schema
    #   <p>The schema, in GraphQL Schema Definition Language (SDL) format.</p>
    #            <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL
    #               documentation</a>.</p>
    #   @return [String]
    class GetIntrospectionSchemaResponse < Struct.new(
      :schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The resolver type name.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #   @return [String]
    class GetResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolver
    #   <p>The <code>Resolver</code> object.</p>
    #   @return [Types::Resolver]
    class GetResolverResponse < Struct.new(
      :resolver,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    class GetSchemaCreationStatusRequest < Struct.new(
      :api_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
    #            the schema is in the ACTIVE state, you can add data.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Detailed information about the status of the schema creation operation.</p>
    #   @return [String]
    class GetSchemaCreationStatusResponse < Struct.new(
      :status,
      :details,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    class GetSourceApiAssociationRequest < Struct.new(
      :merged_api_identifier,
      :association_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association
    #   <p>The <code>SourceApiAssociation</code> object data.</p>
    #   @return [Types::SourceApiAssociation]
    class GetSourceApiAssociationResponse < Struct.new(
      :source_api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The type name.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #   @return [String]
    class GetTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The <code>Type</code> object.</p>
    #   @return [Types::Type]
    class GetTypeResponse < Struct.new(
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The GraphQL schema is not valid.</p>
    # @!attribute message
    #   @return [String]
    class GraphQLSchemaException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a GraphQL API.</p>
    # @!attribute name
    #   <p>The API name.</p>
    #   @return [String]
    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration.</p>
    #   @return [Types::LogConfig]
    # @!attribute user_pool_config
    #   <p>The Amazon Cognito user pool configuration.</p>
    #   @return [Types::UserPoolConfig]
    # @!attribute open_id_connect_config
    #   <p>The OpenID Connect configuration.</p>
    #   @return [Types::OpenIDConnectConfig]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute uris
    #   <p>The URIs.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for this
    #               <code>GraphqlApi</code>.</p>
    #   @return [Boolean]
    # @!attribute waf_web_acl_arn
    #   <p>The ARN of the WAF access control list (ACL) associated with this
    #               <code>GraphqlApi</code>, if one exists.</p>
    #   @return [String]
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #   @return [Types::LambdaAuthorizerConfig]
    # @!attribute dns
    #   <p>The DNS records for the API.</p>
    #   @return [Hash<String, String>]
    # @!attribute visibility
    #   <p>Sets the value of the GraphQL API to public (<code>GLOBAL</code>) or private
    #               (<code>PRIVATE</code>). If no value is provided, the visibility will be set to
    #               <code>GLOBAL</code> by default. This value cannot be changed once the API has been
    #            created.</p>
    #   @return [String]
    # @!attribute api_type
    #   <p>The value that indicates whether the GraphQL API is a standard API
    #            (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
    #   @return [String]
    # @!attribute merged_api_execution_role_arn
    #   <p>The Identity and Access Management service role ARN for a merged API. The AppSync
    #            service assumes this role on behalf of the Merged API to validate access to source APIs at
    #            runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with
    #            the source API changes automatically.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The account owner of the GraphQL API.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for an API resource.</p>
    #            <p>This field accepts any string input with a length of 0 - 256 characters.</p>
    #   @return [String]
    # @!attribute introspection_config
    #   <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable
    #               (<code>DISABLED</code>) introspection. If no value is provided, the introspection
    #            configuration will be set to <code>ENABLED</code> by default. This field will produce an
    #            error if the operation attempts to use the introspection feature while this field is
    #            disabled.</p>
    #            <p>For more information about introspection, see <a href="https://graphql.org/learn/introspection/">GraphQL introspection</a>.</p>
    #   @return [String]
    # @!attribute query_depth_limit
    #   <p>The maximum depth a query can have in a single request. Depth refers to the amount of
    #            nested levels allowed in the body of query. The default value is <code>0</code> (or
    #            unspecified), which indicates there's no depth limit. If you set a limit, it can be between
    #               <code>1</code> and <code>75</code> nested levels. This field will produce a limit error
    #            if the operation falls out of bounds.</p>
    #            <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field
    #            produces an error, the error will be thrown upwards to the first nullable field
    #            available.</p>
    #   @return [Integer]
    # @!attribute resolver_count_limit
    #   <p>The maximum number of resolvers that can be invoked in a single request. The default
    #            value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.
    #            When specified, the limit value can be between <code>1</code> and <code>10000</code>. This
    #            field will produce a limit error if the operation falls out of bounds.</p>
    #   @return [Integer]
    # @!attribute enhanced_metrics_config
    #   <p>The <code>enhancedMetricsConfig</code> object.</p>
    #   @return [Types::EnhancedMetricsConfig]
    class GraphqlApi < Struct.new(
      :name,
      :api_id,
      :authentication_type,
      :log_config,
      :user_pool_config,
      :open_id_connect_config,
      :arn,
      :uris,
      :tags,
      :additional_authentication_providers,
      :xray_enabled,
      :waf_web_acl_arn,
      :lambda_authorizer_config,
      :dns,
      :visibility,
      :api_type,
      :merged_api_execution_role_arn,
      :owner,
      :owner_contact,
      :introspection_config,
      :query_depth_limit,
      :resolver_count_limit,
      :enhanced_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:xray_enabled] = false unless options.key?(:xray_enabled)
        options[:query_depth_limit] = 0 unless options.key?(:query_depth_limit)
        options[:resolver_count_limit] = 0 unless options.key?(:resolver_count_limit)
        super
      end
    end

    # <p>The configuration for a handler.</p>
    # @!attribute behavior
    #   <p>The behavior for the handler.</p>
    #   @return [String]
    # @!attribute integration
    #   <p>The integration data source configuration for the handler.</p>
    #   @return [Types::Integration]
    class HandlerConfig < Struct.new(
      :behavior,
      :integration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    # @!attribute on_publish
    #   <p>The configuration for the <code>OnPublish</code> handler.</p>
    #   @return [Types::HandlerConfig]
    # @!attribute on_subscribe
    #   <p>The configuration for the <code>OnSubscribe</code> handler.</p>
    #   @return [Types::HandlerConfig]
    class HandlerConfigs < Struct.new(
      :on_publish,
      :on_subscribe,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an HTTP data source configuration.</p>
    # @!attribute endpoint
    #   <p>The HTTP URL endpoint. You can specify either the domain name or IP, and port
    #            combination, and the URL scheme must be HTTP or HTTPS. If you don't specify the port,
    #               AppSync uses the default port 80 for the HTTP endpoint and port 443 for
    #            HTTPS endpoints.</p>
    #   @return [String]
    # @!attribute authorization_config
    #   <p>The authorization configuration in case the HTTP endpoint requires authorization.</p>
    #   @return [Types::AuthorizationConfig]
    class HttpDataSourceConfig < Struct.new(
      :endpoint,
      :authorization_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The integration data source configuration for the handler.</p>
    # @!attribute data_source_name
    #   <p>The unique name of the data source that has been configured on the API.</p>
    #   @return [String]
    # @!attribute lambda_config
    #   <p>The configuration for a Lambda data source.</p>
    #   @return [Types::LambdaConfig]
    class Integration < Struct.new(
      :data_source_name,
      :lambda_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal AppSync error occurred. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>LambdaAuthorizerConfig</code> specifies how to authorize AppSync
    #          API access when using the <code>AWS_LAMBDA</code> authorizer mode. Be aware that an AppSync API can have only one Lambda authorizer configured at a
    #          time.</p>
    # @!attribute authorizer_result_ttl_in_seconds
    #   <p>The number of seconds a response should be cached for. The default is 0 seconds, which
    #            disables caching. If you don't specify a value for
    #               <code>authorizerResultTtlInSeconds</code>, the default value is used. The maximum value
    #            is one hour (3600 seconds). The Lambda function can override this by returning
    #            a <code>ttlOverride</code> key in its response.</p>
    #   @return [Integer]
    # @!attribute authorizer_uri
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to be called for
    #            authorization. This can be a standard Lambda ARN, a version ARN
    #               (<code>.../v3</code>), or an alias ARN. </p>
    #            <p>
    #               <b>Note</b>: This Lambda function must have the
    #            following resource-based policy assigned to it. When configuring Lambda
    #            authorizers in the console, this is done for you. To use the Command Line Interface
    #               (CLI), run the following:</p>
    #            <p>
    #               <code>aws lambda add-permission --function-name
    #               "arn:aws:lambda:us-east-2:111122223333:function:my-function" --statement-id "appsync"
    #               --principal appsync.amazonaws.com --action lambda:InvokeFunction</code>
    #            </p>
    #   @return [String]
    # @!attribute identity_validation_expression
    #   <p>A regular expression for validation of tokens before the Lambda function is
    #            called.</p>
    #   @return [String]
    class LambdaAuthorizerConfig < Struct.new(
      :authorizer_result_ttl_in_seconds,
      :authorizer_uri,
      :identity_validation_expression,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:authorizer_result_ttl_in_seconds] = 0 unless options.key?(:authorizer_result_ttl_in_seconds)
        super
      end
    end

    # <p>The configuration for a Lambda data source.</p>
    # @!attribute invoke_type
    #   <p>The invocation type for a Lambda data source.</p>
    #   @return [String]
    class LambdaConfig < Struct.new(
      :invoke_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>LambdaConflictHandlerConfig</code> object when configuring <code>LAMBDA</code>
    #          as the Conflict Handler.</p>
    # @!attribute lambda_conflict_handler_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function to use as the
    #            Conflict Handler.</p>
    #   @return [String]
    class LambdaConflictHandlerConfig < Struct.new(
      :lambda_conflict_handler_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Lambda data source configuration.</p>
    # @!attribute lambda_function_arn
    #   <p>The Amazon Resource Name (ARN) for the Lambda function.</p>
    #   @return [String]
    class LambdaDataSourceConfig < Struct.new(
      :lambda_function_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded a limit. Try your request again.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListApiKeysRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_keys
    #   <p>The <code>ApiKey</code> objects.</p>
    #   @return [Array<Types::ApiKey>]
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #   @return [String]
    class ListApiKeysResponse < Struct.new(
      :api_keys,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListApisRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute apis
    #   <p>The <code>Api</code> objects.</p>
    #   @return [Array<Types::Api>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListApisResponse < Struct.new(
      :apis,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListChannelNamespacesRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_namespaces
    #   <p>The <code>ChannelNamespace</code> objects.</p>
    #   @return [Array<Types::ChannelNamespace>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListChannelNamespacesResponse < Struct.new(
      :channel_namespaces,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListDataSourcesRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_sources
    #   <p>The <code>DataSource</code> objects.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #   @return [String]
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListDomainNamesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_configs
    #   <p>Lists configurations for multiple domain names.</p>
    #   @return [Array<Types::DomainNameConfig>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListDomainNamesResponse < Struct.new(
      :domain_name_configs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListFunctionsRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute functions
    #   <p>A list of <code>Function</code> objects.</p>
    #   @return [Array<Types::FunctionConfiguration>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListFunctionsResponse < Struct.new(
      :functions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    # @!attribute api_type
    #   <p>The value that indicates whether the GraphQL API is a standard API
    #            (<code>GRAPHQL</code>) or merged API (<code>MERGED</code>).</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The account owner of the GraphQL API.</p>
    #   @return [String]
    class ListGraphqlApisRequest < Struct.new(
      :next_token,
      :max_results,
      :api_type,
      :owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graphql_apis
    #   <p>The <code>GraphqlApi</code> objects.</p>
    #   @return [Array<Types::GraphqlApi>]
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #   @return [String]
    class ListGraphqlApisResponse < Struct.new(
      :graphql_apis,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute function_id
    #   <p>The function ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListResolversByFunctionRequest < Struct.new(
      :api_id,
      :function_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolvers
    #   <p>The list of resolvers.</p>
    #   @return [Array<Types::Resolver>]
    # @!attribute next_token
    #   <p>An identifier that you can use to return the next set of items in the list.</p>
    #   @return [String]
    class ListResolversByFunctionResponse < Struct.new(
      :resolvers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The type name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListResolversRequest < Struct.new(
      :api_id,
      :type_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolvers
    #   <p>The <code>Resolver</code> objects.</p>
    #   @return [Array<Types::Resolver>]
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #   @return [String]
    class ListResolversResponse < Struct.new(
      :resolvers,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListSourceApiAssociationsRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association_summaries
    #   <p>The <code>SourceApiAssociationSummary</code> object data.</p>
    #   @return [Array<Types::SourceApiAssociationSummary>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListSourceApiAssociationsResponse < Struct.new(
      :source_api_association_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListTypesByAssociationRequest < Struct.new(
      :merged_api_identifier,
      :association_id,
      :format,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute types
    #   <p>The <code>Type</code> objects.</p>
    #   @return [Array<Types::Type>]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    class ListTypesByAssociationResponse < Struct.new(
      :types,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which you can
    #            use to return the next set of items in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that you want the request to return.</p>
    #   @return [Integer]
    class ListTypesRequest < Struct.new(
      :api_id,
      :format,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute types
    #   <p>The <code>Type</code> objects.</p>
    #   @return [Array<Types::Type>]
    # @!attribute next_token
    #   <p>An identifier to pass in the next request to this operation to return the next set of
    #            items in the list.</p>
    #   @return [String]
    class ListTypesResponse < Struct.new(
      :types,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch Logs configuration.</p>
    # @!attribute field_log_level
    #   <p>The field logging level. Values can be NONE, ERROR, or ALL.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: No field-level logs are
    #                  captured.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ERROR</b>: Logs the following information only for
    #                  the fields that are in error:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The error section in the server response.</p>
    #                     </li>
    #                     <li>
    #                        <p>Field-level errors.</p>
    #                     </li>
    #                     <li>
    #                        <p>The generated request/response functions that got resolved for error
    #                        fields.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>ALL</b>: The following information is logged for
    #                  all fields in the query:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Field-level tracing information.</p>
    #                     </li>
    #                     <li>
    #                        <p>The generated request/response functions that got resolved for each
    #                        field.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cloud_watch_logs_role_arn
    #   <p>The service role that AppSync assumes to publish to CloudWatch
    #            logs in your account.</p>
    #   @return [String]
    # @!attribute exclude_verbose_content
    #   <p>Set to TRUE to exclude sections that contain information such as headers, context, and
    #            evaluated mapping templates, regardless of logging level.</p>
    #   @return [Boolean]
    class LogConfig < Struct.new(
      :field_log_level,
      :cloud_watch_logs_role_arn,
      :exclude_verbose_content,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:exclude_verbose_content] = false unless options.key?(:exclude_verbose_content)
        super
      end
    end

    # <p>The resource specified in the request was not found. Check the resource, and then try
    #          again.</p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an OpenID Connect (OIDC) configuration.</p>
    # @!attribute issuer
    #   <p>The issuer for the OIDC configuration. The issuer returned by discovery must exactly
    #            match the value of <code>iss</code> in the ID token.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client identifier of the relying party at the OpenID identity provider. This
    #            identifier is typically obtained when the relying party is registered with the OpenID
    #            identity provider. You can specify a regular expression so that AppSync can
    #            validate against multiple client identifiers at a time.</p>
    #   @return [String]
    # @!attribute iat_ttl
    #   <p>The number of milliseconds that a token is valid after it's issued to a user.</p>
    #   @return [Integer]
    # @!attribute auth_ttl
    #   <p>The number of milliseconds that a token is valid after being authenticated.</p>
    #   @return [Integer]
    class OpenIDConnectConfig < Struct.new(
      :issuer,
      :client_id,
      :iat_ttl,
      :auth_ttl,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:iat_ttl] = 0 unless options.key?(:iat_ttl)
        options[:auth_ttl] = 0 unless options.key?(:auth_ttl)
        super
      end
    end

    # <p>Describes an OpenSearch data source configuration.</p>
    # @!attribute endpoint
    #   <p>The endpoint.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    class OpenSearchServiceDataSourceConfig < Struct.new(
      :endpoint,
      :aws_region,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The pipeline configuration for a resolver of kind <code>PIPELINE</code>.</p>
    # @!attribute functions
    #   <p>A list of <code>Function</code> objects.</p>
    #   @return [Array<String>]
    class PipelineConfig < Struct.new(
      :functions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID of the API to which the environmental variable list will be written.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>The list of environmental variables to add to the API.</p>
    #            <p>When creating an environmental variable key-value pair, it must follow the additional
    #            constraints below:</p>
    #            <ul>
    #               <li>
    #                  <p>Keys must begin with a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Keys must be at least two characters long.</p>
    #               </li>
    #               <li>
    #                  <p>Keys can only contain letters, numbers, and the underscore character
    #                  (_).</p>
    #               </li>
    #               <li>
    #                  <p>Values can be up to 512 characters long.</p>
    #               </li>
    #               <li>
    #                  <p>You can configure up to 50 key-value pairs in a GraphQL API.</p>
    #               </li>
    #            </ul>
    #            <p>You can create a list of environmental variables by adding it to the
    #               <code>environmentVariables</code> payload as a list in the format
    #               <code>{"key1":"value1","key2":"value2", …}</code>. Note that each call of the
    #               <code>PutGraphqlApiEnvironmentVariables</code> action will result in the overwriting of
    #            the existing environmental variable list of that API. This means the existing environmental
    #            variables will be lost. To avoid this, you must include all existing and new environmental
    #            variables in the list each time you call this action.</p>
    #   @return [Hash<String, String>]
    class PutGraphqlApiEnvironmentVariablesRequest < Struct.new(
      :api_id,
      :environment_variables,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_variables
    #   <p>The payload containing each environmental variable in the <code>"key" : "value"</code>
    #            format.</p>
    #   @return [Hash<String, String>]
    class PutGraphqlApiEnvironmentVariablesResponse < Struct.new(
      :environment_variables,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the metadata required to introspect the RDS cluster.</p>
    # @!attribute resource_arn
    #   <p>The resource ARN of the RDS cluster.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The secret's ARN that was obtained from Secrets Manager. A secret consists of secret
    #            information, the secret value, plus metadata about the secret. A secret value can be a
    #            string or binary. It typically includes the ARN, secret name and description, policies,
    #            tags, encryption key from the Key Management Service, and key rotation data.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database in the cluster.</p>
    #   @return [String]
    class RdsDataApiConfig < Struct.new(
      :resource_arn,
      :secret_arn,
      :database_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Relational Database Service (Amazon RDS) HTTP endpoint configuration.</p>
    # @!attribute aws_region
    #   <p>Amazon Web Services Region for Amazon RDS HTTP endpoint.</p>
    #   @return [String]
    # @!attribute db_cluster_identifier
    #   <p>Amazon RDS cluster Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Logical database name.</p>
    #   @return [String]
    # @!attribute schema
    #   <p>Logical schema name.</p>
    #   @return [String]
    # @!attribute aws_secret_store_arn
    #   <p>Amazon Web Services secret store Amazon Resource Name (ARN) for database
    #            credentials.</p>
    #   @return [String]
    class RdsHttpEndpointConfig < Struct.new(
      :aws_region,
      :db_cluster_identifier,
      :database_name,
      :schema,
      :aws_secret_store_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a relational database data source configuration.</p>
    # @!attribute relational_database_source_type
    #   <p>Source type for the relational database.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RDS_HTTP_ENDPOINT</b>: The relational database
    #                  source type is an Amazon Relational Database Service (Amazon RDS) HTTP
    #                  endpoint.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute rds_http_endpoint_config
    #   <p>Amazon RDS HTTP endpoint settings.</p>
    #   @return [Types::RdsHttpEndpointConfig]
    class RelationalDatabaseDataSourceConfig < Struct.new(
      :relational_database_source_type,
      :rds_http_endpoint_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resolver.</p>
    # @!attribute type_name
    #   <p>The resolver type name.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>The resolver field name.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The resolver data source name.</p>
    #   @return [String]
    # @!attribute resolver_arn
    #   <p>The resolver Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The request mapping template.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The response mapping template.</p>
    #   @return [String]
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #   @return [Types::PipelineConfig]
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #   @return [Types::SyncConfig]
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #   @return [Types::CachingConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>resolver</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced resolver metrics for specified resolvers. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>resolverLevelMetricsBehavior</code> value is set to
    #               <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is
    #            set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will
    #            be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class Resolver < Struct.new(
      :type_name,
      :field_name,
      :data_source_name,
      :resolver_arn,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      :runtime,
      :code,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_batch_size] = 0 unless options.key?(:max_batch_size)
        super
      end
    end

    # <p>The operation exceeded the service quota for this resource.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration of a source API. A source API is a GraphQL API that is
    #          linked to a merged API. There can be multiple source APIs attached to each merged API. When
    #          linked to a merged API, the source API's schema, data sources, and resolvers will be
    #          combined with other linked source API data to form a new, singular API. </p>
    #          <p>Source APIs can originate from your account or from other accounts via Amazon Web Services Resource Access Manager. For more information about sharing resources from other
    #          accounts, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/what-is.html">What is Amazon Web Services Resource Access Manager?</a> in the <i>Amazon Web Services Resource Access Manager</i> guide.</p>
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the source API association.</p>
    #   @return [String]
    # @!attribute source_api_id
    #   <p>The ID of the AppSync source API.</p>
    #   @return [String]
    # @!attribute source_api_arn
    #   <p>The Amazon Resource Name (ARN) of the AppSync source API.</p>
    #   @return [String]
    # @!attribute merged_api_arn
    #   <p>The Amazon Resource Name (ARN) of the AppSync Merged API.</p>
    #   @return [String]
    # @!attribute merged_api_id
    #   <p>The ID of the AppSync Merged API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description field.</p>
    #   @return [String]
    # @!attribute source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    #   @return [Types::SourceApiAssociationConfig]
    # @!attribute source_api_association_status
    #   <p>The state of the source API association.</p>
    #   @return [String]
    # @!attribute source_api_association_status_detail
    #   <p>The detailed message related to the current state of the source API association.</p>
    #   @return [String]
    # @!attribute last_successful_merge_date
    #   <p>The datetime value of the last successful merge of the source API association. The
    #            result will be in UTC format and your local time zone.</p>
    #   @return [Time]
    class SourceApiAssociation < Struct.new(
      :association_id,
      :association_arn,
      :source_api_id,
      :source_api_arn,
      :merged_api_arn,
      :merged_api_id,
      :description,
      :source_api_association_config,
      :source_api_association_status,
      :source_api_association_status_detail,
      :last_successful_merge_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes properties used to specify configurations related to a source API.</p>
    # @!attribute merge_type
    #   <p>The property that indicates which merging option is enabled in the source API
    #            association.</p>
    #            <p>Valid merge types are <code>MANUAL_MERGE</code> (default) and <code>AUTO_MERGE</code>.
    #            Manual merges are the default behavior and require the user to trigger any changes from the
    #            source APIs to the merged API manually. Auto merges subscribe the merged API to the changes
    #            performed on the source APIs so that any change in the source APIs are also made to the
    #            merged API. Auto merges use <code>MergedApiExecutionRoleArn</code> to perform merge
    #            operations.</p>
    #   @return [String]
    class SourceApiAssociationConfig < Struct.new(
      :merge_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the ARNs and IDs of associations, Merged APIs, and source APIs.</p>
    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    # @!attribute association_arn
    #   <p>The Amazon Resource Name (ARN) of the source API association.</p>
    #   @return [String]
    # @!attribute source_api_id
    #   <p>The ID of the AppSync source API.</p>
    #   @return [String]
    # @!attribute source_api_arn
    #   <p>The Amazon Resource Name (ARN) of the AppSync Source API.</p>
    #   @return [String]
    # @!attribute merged_api_id
    #   <p>The ID of the AppSync Merged API.</p>
    #   @return [String]
    # @!attribute merged_api_arn
    #   <p>The Amazon Resource Name (ARN) of the AppSync Merged API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description field.</p>
    #   @return [String]
    class SourceApiAssociationSummary < Struct.new(
      :association_id,
      :association_arn,
      :source_api_id,
      :source_api_arn,
      :merged_api_id,
      :merged_api_arn,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rds_data_api_config
    #   <p>The <code>rdsDataApiConfig</code> object data.</p>
    #   @return [Types::RdsDataApiConfig]
    class StartDataSourceIntrospectionRequest < Struct.new(
      :rds_data_api_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute introspection_id
    #   <p>The introspection ID. Each introspection contains a unique ID that can be used to
    #            reference the instrospection record.</p>
    #   @return [String]
    # @!attribute introspection_status
    #   <p>The status of the introspection during creation. By default, when a new instrospection
    #            has been created, the status will be set to <code>PROCESSING</code>. Once the operation has
    #            been completed, the status will change to <code>SUCCESS</code> or <code>FAILED</code>
    #            depending on how the data was parsed. A <code>FAILED</code> operation will return an error
    #            and its details as an <code>introspectionStatusDetail</code>.</p>
    #   @return [String]
    # @!attribute introspection_status_detail
    #   <p>The error detail field. When a <code>FAILED</code>
    #               <code>introspectionStatus</code> is returned, the <code>introspectionStatusDetail</code>
    #            will also return the exact error that was generated during the operation.</p>
    #   @return [String]
    class StartDataSourceIntrospectionResponse < Struct.new(
      :introspection_id,
      :introspection_status,
      :introspection_status_detail,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The schema definition, in GraphQL schema language format.</p>
    #   @return [String]
    class StartSchemaCreationRequest < Struct.new(
      :api_id,
      :definition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current state of the schema (PROCESSING, FAILED, SUCCESS, or NOT_APPLICABLE). When
    #            the schema is in the ACTIVE state, you can add data.</p>
    #   @return [String]
    class StartSchemaCreationResponse < Struct.new(
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    class StartSchemaMergeRequest < Struct.new(
      :association_id,
      :merged_api_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association_status
    #   <p>The state of the source API association.</p>
    #   @return [String]
    class StartSchemaMergeResponse < Struct.new(
      :source_api_association_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a Sync configuration for a resolver.</p>
    #          <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #          resolver is invoked.</p>
    # @!attribute conflict_handler
    #   <p>The Conflict Resolution strategy to perform in the event of a conflict.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>OPTIMISTIC_CONCURRENCY</b>: Resolve conflicts by
    #                  rejecting mutations when versions don't match the latest version at the
    #                  server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>AUTOMERGE</b>: Resolve conflicts with the
    #                  Automerge conflict resolution strategy.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>LAMBDA</b>: Resolve conflicts with an Lambda function supplied in the
    #                  <code>LambdaConflictHandlerConfig</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute conflict_detection
    #   <p>The Conflict Detection strategy to use.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>VERSION</b>: Detect conflicts based on object
    #                  versions for this resolver.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NONE</b>: Do not detect conflicts when invoking
    #                  this resolver.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute lambda_conflict_handler_config
    #   <p>The <code>LambdaConflictHandlerConfig</code> when configuring <code>LAMBDA</code> as the
    #            Conflict Handler.</p>
    #   @return [Types::LambdaConflictHandlerConfig]
    class SyncConfig < Struct.new(
      :conflict_handler,
      :conflict_detection,
      :lambda_conflict_handler_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A <code>TagMap</code> object.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a type.</p>
    # @!attribute name
    #   <p>The type name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The type description.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The type Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The type definition.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The type format: SDL or JSON.</p>
    #   @return [String]
    class Type < Struct.new(
      :name,
      :description,
      :arn,
      :definition,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You aren't authorized to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <code>GraphqlApi</code> Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of <code>TagKey</code> objects.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input of a <code>UpdateApiCache</code> operation.</p>
    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute ttl
    #   <p>TTL in seconds for cache entries.</p>
    #            <p>Valid values are 1–3,600 seconds.</p>
    #   @return [Integer]
    # @!attribute api_caching_behavior
    #   <p>Caching behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>FULL_REQUEST_CACHING</b>: All requests from the
    #                  same user are cached. Individual resolvers are automatically cached. All API calls
    #                  will try to return responses from the cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PER_RESOLVER_CACHING</b>: Individual resolvers
    #                  that you specify are cached.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OPERATION_LEVEL_CACHING</b>: Full requests are cached together and returned without executing resolvers.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute type
    #   <p>The cache instance type. Valid values are </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMALL</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MEDIUM</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>XLARGE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_2X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_4X</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_8X</code> (not available in all regions)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LARGE_12X</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Historically, instance types were identified by an EC2-style value. As of July 2020, this is deprecated, and the generic identifiers above should be used.</p>
    #            <p>The following legacy instance types are available, but their use is discouraged:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>T2_SMALL</b>: A t2.small instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>T2_MEDIUM</b>: A t2.medium instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_LARGE</b>: A r4.large instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_XLARGE</b>: A r4.xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_2XLARGE</b>: A r4.2xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_4XLARGE</b>: A r4.4xlarge instance type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>R4_8XLARGE</b>: A r4.8xlarge instance type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute health_metrics_config
    #   <p>Controls how cache health metrics will be emitted to CloudWatch. Cache health metrics
    #            include:</p>
    #            <ul>
    #               <li>
    #                  <p>NetworkBandwidthOutAllowanceExceeded: The network packets dropped because the
    #                  throughput exceeded the aggregated bandwidth limit. This is useful for diagnosing
    #                  bottlenecks in a cache configuration.</p>
    #               </li>
    #               <li>
    #                  <p>EngineCPUUtilization: The CPU utilization (percentage) allocated to the Redis
    #                  process. This is useful for diagnosing bottlenecks in a cache
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>Metrics will be recorded by API ID. You can set the value to <code>ENABLED</code> or
    #               <code>DISABLED</code>.</p>
    #   @return [String]
    class UpdateApiCacheRequest < Struct.new(
      :api_id,
      :ttl,
      :api_caching_behavior,
      :type,
      :health_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the output of a <code>UpdateApiCache</code> operation.</p>
    # @!attribute api_cache
    #   <p>The <code>ApiCache</code> object.</p>
    #   @return [Types::ApiCache]
    class UpdateApiCacheResponse < Struct.new(
      :api_cache,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The ID for the GraphQL API.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The API key ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the purpose of the API key.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>From the update time, the time after which the API key expires. The date is represented
    #            as seconds since the epoch. For more information, see .</p>
    #   @return [Integer]
    class UpdateApiKeyRequest < Struct.new(
      :api_id,
      :id,
      :description,
      :expires,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_key
    #   <p>The API key.</p>
    #   @return [Types::ApiKey]
    class UpdateApiKeyResponse < Struct.new(
      :api_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Api.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for the <code>Api</code>.</p>
    #   @return [String]
    # @!attribute event_config
    #   <p>The new event configuration. This includes the default authorization configuration for
    #            connecting, publishing, and subscribing to an Event API.</p>
    #   @return [Types::EventConfig]
    class UpdateApiRequest < Struct.new(
      :api_id,
      :name,
      :owner_contact,
      :event_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api
    #   <p>The <code>Api</code> object.</p>
    #   @return [Types::Api]
    class UpdateApiResponse < Struct.new(
      :api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The <code>Api</code> ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ChannelNamespace</code>.</p>
    #   @return [String]
    # @!attribute subscribe_auth_modes
    #   <p>The authorization mode to use for subscribing to messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute publish_auth_modes
    #   <p>The authorization mode to use for publishing messages on the channel namespace. This
    #            configuration overrides the default <code>Api</code> authorization configuration.</p>
    #   @return [Array<Types::AuthMode>]
    # @!attribute code_handlers
    #   <p>The event handler functions that run custom business logic to process published events
    #            and subscribe requests.</p>
    #   @return [String]
    # @!attribute handler_configs
    #   <p>The configuration for the <code>OnPublish</code> and <code>OnSubscribe</code> handlers.</p>
    #   @return [Types::HandlerConfigs]
    class UpdateChannelNamespaceRequest < Struct.new(
      :api_id,
      :name,
      :subscribe_auth_modes,
      :publish_auth_modes,
      :code_handlers,
      :handler_configs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_namespace
    #   <p>The <code>ChannelNamespace</code> object.</p>
    #   @return [Types::ChannelNamespace]
    class UpdateChannelNamespaceResponse < Struct.new(
      :channel_namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the data source.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The new data source type.</p>
    #   @return [String]
    # @!attribute service_role_arn
    #   <p>The new service role Amazon Resource Name (ARN) for the data source.</p>
    #   @return [String]
    # @!attribute dynamodb_config
    #   <p>The new Amazon DynamoDB configuration.</p>
    #   @return [Types::DynamodbDataSourceConfig]
    # @!attribute lambda_config
    #   <p>The new Lambda configuration.</p>
    #   @return [Types::LambdaDataSourceConfig]
    # @!attribute elasticsearch_config
    #   <p>The new OpenSearch configuration.</p>
    #            <p>As of September 2021, Amazon Elasticsearch service is Amazon OpenSearch Service. This
    #            configuration is deprecated. Instead, use <a>UpdateDataSourceRequest$openSearchServiceConfig</a> to update an OpenSearch data source.</p>
    #   @return [Types::ElasticsearchDataSourceConfig]
    # @!attribute open_search_service_config
    #   <p>The new OpenSearch configuration.</p>
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    # @!attribute http_config
    #   <p>The new HTTP endpoint configuration.</p>
    #   @return [Types::HttpDataSourceConfig]
    # @!attribute relational_database_config
    #   <p>The new relational database configuration.</p>
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    # @!attribute event_bridge_config
    #   <p>The new Amazon EventBridge settings.</p>
    #   @return [Types::EventBridgeDataSourceConfig]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced data source metrics for specified data sources. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>dataSourceLevelMetricsBehavior</code> value is set to
    #               <code>PER_DATA_SOURCE_METRICS</code>. If the <code>dataSourceLevelMetricsBehavior</code>
    #            is set to <code>FULL_REQUEST_DATA_SOURCE_METRICS</code> instead, <code>metricsConfig</code>
    #            will be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class UpdateDataSourceRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :type,
      :service_role_arn,
      :dynamodb_config,
      :lambda_config,
      :elasticsearch_config,
      :open_search_service_config,
      :http_config,
      :relational_database_config,
      :event_bridge_config,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_source
    #   <p>The updated <code>DataSource</code> object.</p>
    #   @return [Types::DataSource]
    class UpdateDataSourceResponse < Struct.new(
      :data_source,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The domain name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the <code>DomainName</code>.</p>
    #   @return [String]
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name_config
    #   <p>The configuration for the <code>DomainName</code>.</p>
    #   @return [Types::DomainNameConfig]
    class UpdateDomainNameResponse < Struct.new(
      :domain_name_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The GraphQL API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The <code>Function</code> name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The <code>Function</code> description.</p>
    #   @return [String]
    # @!attribute function_id
    #   <p>The function ID.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The <code>Function</code>
    #               <code>DataSource</code> name.</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The <code>Function</code> request mapping template. Functions support only the
    #            2018-05-29 version of the request mapping template.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The <code>Function</code> request mapping template.</p>
    #   @return [String]
    # @!attribute function_version
    #   <p>The <code>version</code> of the request mapping template. Currently, the supported value
    #            is 2018-05-29. Note that when using VTL and mapping templates, the
    #               <code>functionVersion</code> is required.</p>
    #   @return [String]
    # @!attribute sync_config
    #   <p>Describes a Sync configuration for a resolver.</p>
    #            <p>Specifies which Conflict Detection strategy and Resolution strategy to use when the
    #            resolver is invoked.</p>
    #   @return [Types::SyncConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>function</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    class UpdateFunctionRequest < Struct.new(
      :api_id,
      :name,
      :description,
      :function_id,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :function_version,
      :sync_config,
      :max_batch_size,
      :runtime,
      :code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute function_configuration
    #   <p>The <code>Function</code> object.</p>
    #   @return [Types::FunctionConfiguration]
    class UpdateFunctionResponse < Struct.new(
      :function_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The new name for the <code>GraphqlApi</code> object.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The Amazon CloudWatch Logs configuration for the <code>GraphqlApi</code> object.</p>
    #   @return [Types::LogConfig]
    # @!attribute authentication_type
    #   <p>The new authentication type for the <code>GraphqlApi</code> object.</p>
    #   @return [String]
    # @!attribute user_pool_config
    #   <p>The new Amazon Cognito user pool configuration for the <code>~GraphqlApi</code>
    #            object.</p>
    #   @return [Types::UserPoolConfig]
    # @!attribute open_id_connect_config
    #   <p>The OpenID Connect configuration for the <code>GraphqlApi</code> object.</p>
    #   @return [Types::OpenIDConnectConfig]
    # @!attribute additional_authentication_providers
    #   <p>A list of additional authentication providers for the <code>GraphqlApi</code>
    #            API.</p>
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    # @!attribute xray_enabled
    #   <p>A flag indicating whether to use X-Ray tracing for the
    #               <code>GraphqlApi</code>.</p>
    #   @return [Boolean]
    # @!attribute lambda_authorizer_config
    #   <p>Configuration for Lambda function authorization.</p>
    #   @return [Types::LambdaAuthorizerConfig]
    # @!attribute merged_api_execution_role_arn
    #   <p>The Identity and Access Management service role ARN for a merged API. The AppSync
    #            service assumes this role on behalf of the Merged API to validate access to source APIs at
    #            runtime and to prompt the <code>AUTO_MERGE</code> to update the merged API endpoint with
    #            the source API changes automatically.</p>
    #   @return [String]
    # @!attribute owner_contact
    #   <p>The owner contact information for an API resource.</p>
    #            <p>This field accepts any string input with a length of 0 - 256 characters.</p>
    #   @return [String]
    # @!attribute introspection_config
    #   <p>Sets the value of the GraphQL API to enable (<code>ENABLED</code>) or disable
    #               (<code>DISABLED</code>) introspection. If no value is provided, the introspection
    #            configuration will be set to <code>ENABLED</code> by default. This field will produce an
    #            error if the operation attempts to use the introspection feature while this field is
    #            disabled.</p>
    #            <p>For more information about introspection, see <a href="https://graphql.org/learn/introspection/">GraphQL introspection</a>.</p>
    #   @return [String]
    # @!attribute query_depth_limit
    #   <p>The maximum depth a query can have in a single request. Depth refers to the amount of
    #            nested levels allowed in the body of query. The default value is <code>0</code> (or
    #            unspecified), which indicates there's no depth limit. If you set a limit, it can be between
    #               <code>1</code> and <code>75</code> nested levels. This field will produce a limit error
    #            if the operation falls out of bounds.</p>
    #            <p>Note that fields can still be set to nullable or non-nullable. If a non-nullable field
    #            produces an error, the error will be thrown upwards to the first nullable field
    #            available.</p>
    #   @return [Integer]
    # @!attribute resolver_count_limit
    #   <p>The maximum number of resolvers that can be invoked in a single request. The default
    #            value is <code>0</code> (or unspecified), which will set the limit to <code>10000</code>.
    #            When specified, the limit value can be between <code>1</code> and <code>10000</code>. This
    #            field will produce a limit error if the operation falls out of bounds.</p>
    #   @return [Integer]
    # @!attribute enhanced_metrics_config
    #   <p>The <code>enhancedMetricsConfig</code> object.</p>
    #   @return [Types::EnhancedMetricsConfig]
    class UpdateGraphqlApiRequest < Struct.new(
      :api_id,
      :name,
      :log_config,
      :authentication_type,
      :user_pool_config,
      :open_id_connect_config,
      :additional_authentication_providers,
      :xray_enabled,
      :lambda_authorizer_config,
      :merged_api_execution_role_arn,
      :owner_contact,
      :introspection_config,
      :query_depth_limit,
      :resolver_count_limit,
      :enhanced_metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graphql_api
    #   <p>The updated <code>GraphqlApi</code> object.</p>
    #   @return [Types::GraphqlApi]
    class UpdateGraphqlApiResponse < Struct.new(
      :graphql_api,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The new type name.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>The new field name.</p>
    #   @return [String]
    # @!attribute data_source_name
    #   <p>The new data source name.</p>
    #   @return [String]
    # @!attribute request_mapping_template
    #   <p>The new request mapping template.</p>
    #            <p>A resolver uses a request mapping template to convert a GraphQL expression into a format
    #            that a data source can understand. Mapping templates are written in Apache Velocity
    #            Template Language (VTL).</p>
    #            <p>VTL request mapping templates are optional when using an Lambda data
    #            source. For all other data sources, VTL request and response mapping templates are
    #            required.</p>
    #   @return [String]
    # @!attribute response_mapping_template
    #   <p>The new response mapping template.</p>
    #   @return [String]
    # @!attribute kind
    #   <p>The resolver type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>UNIT</b>: A UNIT resolver type. A UNIT resolver is
    #                  the default resolver type. You can use a UNIT resolver to run a GraphQL query against
    #                  a single data source.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PIPELINE</b>: A PIPELINE resolver type. You can
    #                  use a PIPELINE resolver to invoke a series of <code>Function</code> objects in a
    #                  serial manner. You can use a pipeline resolver to run a GraphQL query against
    #                  multiple data sources.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pipeline_config
    #   <p>The <code>PipelineConfig</code>.</p>
    #   @return [Types::PipelineConfig]
    # @!attribute sync_config
    #   <p>The <code>SyncConfig</code> for a resolver attached to a versioned data source.</p>
    #   @return [Types::SyncConfig]
    # @!attribute caching_config
    #   <p>The caching configuration for the resolver.</p>
    #   @return [Types::CachingConfig]
    # @!attribute max_batch_size
    #   <p>The maximum batching size for a resolver.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>Describes a runtime used by an Amazon Web Services AppSync pipeline resolver or Amazon Web Services AppSync function. Specifies the name and version of the runtime to use. Note
    #            that if a runtime is specified, code must also be specified.</p>
    #   @return [Types::AppSyncRuntime]
    # @!attribute code
    #   <p>The <code>resolver</code> code that contains the request and response functions. When
    #            code is used, the <code>runtime</code> is required. The <code>runtime</code> value must be
    #               <code>APPSYNC_JS</code>.</p>
    #   @return [String]
    # @!attribute metrics_config
    #   <p>Enables or disables enhanced resolver metrics for specified resolvers. Note that
    #               <code>metricsConfig</code> won't be used unless the
    #               <code>resolverLevelMetricsBehavior</code> value is set to
    #               <code>PER_RESOLVER_METRICS</code>. If the <code>resolverLevelMetricsBehavior</code> is
    #            set to <code>FULL_REQUEST_RESOLVER_METRICS</code> instead, <code>metricsConfig</code> will
    #            be ignored. However, you can still set its value.</p>
    #            <p>
    #               <code>metricsConfig</code> can be <code>ENABLED</code> or <code>DISABLED</code>.</p>
    #   @return [String]
    class UpdateResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name,
      :data_source_name,
      :request_mapping_template,
      :response_mapping_template,
      :kind,
      :pipeline_config,
      :sync_config,
      :caching_config,
      :max_batch_size,
      :runtime,
      :code,
      :metrics_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolver
    #   <p>The updated <code>Resolver</code> object.</p>
    #   @return [Types::Resolver]
    class UpdateResolverResponse < Struct.new(
      :resolver,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute association_id
    #   <p>The ID generated by the AppSync service for the source API association.</p>
    #   @return [String]
    # @!attribute merged_api_identifier
    #   <p>The identifier of the AppSync Merged API. This is generated by the AppSync service. In
    #            most cases, Merged APIs (especially in your account) only require the API ID value or ARN
    #            of the merged API. However, Merged APIs in other accounts (cross-account use cases)
    #            strictly require the full resource ARN of the merged API.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description field.</p>
    #   @return [String]
    # @!attribute source_api_association_config
    #   <p>The <code>SourceApiAssociationConfig</code> object data.</p>
    #   @return [Types::SourceApiAssociationConfig]
    class UpdateSourceApiAssociationRequest < Struct.new(
      :association_id,
      :merged_api_identifier,
      :description,
      :source_api_association_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_api_association
    #   <p>The <code>SourceApiAssociation</code> object data.</p>
    #   @return [Types::SourceApiAssociation]
    class UpdateSourceApiAssociationResponse < Struct.new(
      :source_api_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute api_id
    #   <p>The API ID.</p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The new type name.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The new definition.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The new type format: SDL or JSON.</p>
    #   @return [String]
    class UpdateTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :definition,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute type
    #   <p>The updated <code>Type</code> object.</p>
    #   @return [Types::Type]
    class UpdateTypeResponse < Struct.new(
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Cognito user pool configuration.</p>
    # @!attribute user_pool_id
    #   <p>The user pool ID.</p>
    #   @return [String]
    # @!attribute aws_region
    #   <p>The Amazon Web Services Region in which the user pool was created.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito user pool authentication doesn't match the Amazon Cognito user pool
    #            configuration.</p>
    #   @return [String]
    # @!attribute app_id_client_regex
    #   <p>A regular expression for validating the incoming Amazon Cognito user pool app client
    #            ID. If this value isn't set, no filtering is applied.</p>
    #   @return [String]
    class UserPoolConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :default_action,
      :app_id_client_regex,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
