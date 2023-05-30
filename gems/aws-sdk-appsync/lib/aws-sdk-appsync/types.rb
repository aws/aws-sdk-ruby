# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppSync
  module Types

    # You don't have access to perform this operation on this resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an additional authentication provider.
    #
    # @!attribute [rw] authentication_type
    #   The authentication type: API key, Identity and Access Management
    #   (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.
    #   @return [String]
    #
    # @!attribute [rw] open_id_connect_config
    #   The OIDC configuration.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito user pool configuration.
    #   @return [Types::CognitoUserPoolConfig]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   Configuration for Lambda function authorization.
    #   @return [Types::LambdaAuthorizerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AdditionalAuthenticationProvider AWS API Documentation
    #
    class AdditionalAuthenticationProvider < Struct.new(
      :authentication_type,
      :open_id_connect_config,
      :user_pool_config,
      :lambda_authorizer_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an `ApiAssociation` object.
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] association_status
    #   Identifies the status of an association.
    #
    #   * **PROCESSING**: The API association is being created. You cannot
    #     modify association requests during processing.
    #
    #   * **SUCCESS**: The API association was successful. You can modify
    #     associations after success.
    #
    #   * **FAILED**: The API association has failed. You can modify
    #     associations after failure.
    #   @return [String]
    #
    # @!attribute [rw] deployment_detail
    #   Details about the last deployment status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiAssociation AWS API Documentation
    #
    class ApiAssociation < Struct.new(
      :domain_name,
      :api_id,
      :association_status,
      :deployment_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `ApiCache` object.
    #
    # @!attribute [rw] ttl
    #   TTL in seconds for cache entries.
    #
    #   Valid values are 1–3,600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] api_caching_behavior
    #   Caching behavior.
    #
    #   * **FULL\_REQUEST\_CACHING**: All requests are fully cached.
    #
    #   * **PER\_RESOLVER\_CACHING**: Individual resolvers that you specify
    #     are cached.
    #   @return [String]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   Transit encryption flag when connecting to cache. You cannot update
    #   this setting after creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   At-rest encryption flag for cache. You cannot update this setting
    #   after creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The cache instance type. Valid values are
    #
    #   * `SMALL`
    #
    #   * `MEDIUM`
    #
    #   * `LARGE`
    #
    #   * `XLARGE`
    #
    #   * `LARGE_2X`
    #
    #   * `LARGE_4X`
    #
    #   * `LARGE_8X` (not available in all regions)
    #
    #   * `LARGE_12X`
    #
    #   Historically, instance types were identified by an EC2-style value.
    #   As of July 2020, this is deprecated, and the generic identifiers
    #   above should be used.
    #
    #   The following legacy instance types are available, but their use is
    #   discouraged:
    #
    #   * **T2\_SMALL**: A t2.small instance type.
    #
    #   * **T2\_MEDIUM**: A t2.medium instance type.
    #
    #   * **R4\_LARGE**: A r4.large instance type.
    #
    #   * **R4\_XLARGE**: A r4.xlarge instance type.
    #
    #   * **R4\_2XLARGE**: A r4.2xlarge instance type.
    #
    #   * **R4\_4XLARGE**: A r4.4xlarge instance type.
    #
    #   * **R4\_8XLARGE**: A r4.8xlarge instance type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The cache instance status.
    #
    #   * **AVAILABLE**: The instance is available for use.
    #
    #   * **CREATING**: The instance is currently creating.
    #
    #   * **DELETING**: The instance is currently deleting.
    #
    #   * **MODIFYING**: The instance is currently modifying.
    #
    #   * **FAILED**: The instance has failed creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiCache AWS API Documentation
    #
    class ApiCache < Struct.new(
      :ttl,
      :api_caching_behavior,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an API key.
    #
    # Customers invoke AppSync GraphQL API operations with API keys as an
    # identity mechanism. There are two key versions:
    #
    # **da1**: We introduced this version at launch in November 2017. These
    # keys always expire after 7 days. Amazon DynamoDB TTL manages key
    # expiration. These keys ceased to be valid after February 21, 2018, and
    # they should no longer be used.
    #
    # * `ListApiKeys` returns the expiration time in milliseconds.
    #
    # * `CreateApiKey` returns the expiration time in milliseconds.
    #
    # * `UpdateApiKey` is not available for this key version.
    #
    # * `DeleteApiKey` deletes the item from the table.
    #
    # * Expiration is stored in DynamoDB as milliseconds. This results in a
    #   bug where keys are not automatically deleted because DynamoDB
    #   expects the TTL to be stored in seconds. As a one-time action, we
    #   deleted these keys from the table on February 21, 2018.
    #
    # **da2**: We introduced this version in February 2018 when AppSync
    # added support to extend key expiration.
    #
    # * `ListApiKeys` returns the expiration time and deletion time in
    #   seconds.
    #
    # * `CreateApiKey` returns the expiration time and deletion time in
    #   seconds and accepts a user-provided expiration time in seconds.
    #
    # * `UpdateApiKey` returns the expiration time and and deletion time in
    #   seconds and accepts a user-provided expiration time in seconds.
    #   Expired API keys are kept for 60 days after the expiration time. You
    #   can update the key expiration time as long as the key isn't
    #   deleted.
    #
    # * `DeleteApiKey` deletes the item from the table.
    #
    # * Expiration is stored in DynamoDB as seconds. After the expiration
    #   time, using the key to authenticate will fail. However, you can
    #   reinstate the key before deletion.
    #
    # * Deletion is stored in DynamoDB as seconds. The key is deleted after
    #   deletion time.
    #
    # @!attribute [rw] id
    #   The API key ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The time after which the API key expires. The date is represented as
    #   seconds since the epoch, rounded down to the nearest hour.
    #   @return [Integer]
    #
    # @!attribute [rw] deletes
    #   The time after which the API key is deleted. The date is represented
    #   as seconds since the epoch, rounded down to the nearest hour.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiKey AWS API Documentation
    #
    class ApiKey < Struct.new(
      :id,
      :description,
      :expires,
      :deletes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API key exceeded a limit. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiKeyLimitExceededException AWS API Documentation
    #
    class ApiKeyLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The API key expiration must be set to a value between 1 and 365 days
    # from creation (for `CreateApiKey`) or from update (for
    # `UpdateApiKey`).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiKeyValidityOutOfBoundsException AWS API Documentation
    #
    class ApiKeyValidityOutOfBoundsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GraphQL API exceeded a limit. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ApiLimitExceededException AWS API Documentation
    #
    class ApiLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a runtime used by an Amazon Web Services AppSync pipeline
    # resolver or Amazon Web Services AppSync function. Specifies the name
    # and version of the runtime to use. Note that if a runtime is
    # specified, code must also be specified.
    #
    # @!attribute [rw] name
    #   The `name` of the runtime to use. Currently, the only allowed value
    #   is `APPSYNC_JS`.
    #   @return [String]
    #
    # @!attribute [rw] runtime_version
    #   The `version` of the runtime to use. Currently, the only allowed
    #   version is `1.0.0`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AppSyncRuntime AWS API Documentation
    #
    class AppSyncRuntime < Struct.new(
      :name,
      :runtime_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API ID. Private APIs can not be associated with custom domains.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateApiRequest AWS API Documentation
    #
    class AssociateApiRequest < Struct.new(
      :domain_name,
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_association
    #   The `ApiAssociation` object.
    #   @return [Types::ApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateApiResponse AWS API Documentation
    #
    class AssociateApiResponse < Struct.new(
      :api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_identifier
    #   The identifier of the AppSync Source API. This is generated by the
    #   AppSync service. In most cases, source APIs (especially in your
    #   account) only require the API ID value or ARN of the source API.
    #   However, source APIs from other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the source API.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description field.
    #   @return [String]
    #
    # @!attribute [rw] source_api_association_config
    #   The `SourceApiAssociationConfig` object data.
    #   @return [Types::SourceApiAssociationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateMergedGraphqlApiRequest AWS API Documentation
    #
    class AssociateMergedGraphqlApiRequest < Struct.new(
      :source_api_identifier,
      :merged_api_identifier,
      :description,
      :source_api_association_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association
    #   The `SourceApiAssociation` object data.
    #   @return [Types::SourceApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateMergedGraphqlApiResponse AWS API Documentation
    #
    class AssociateMergedGraphqlApiResponse < Struct.new(
      :source_api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] source_api_identifier
    #   The identifier of the AppSync Source API. This is generated by the
    #   AppSync service. In most cases, source APIs (especially in your
    #   account) only require the API ID value or ARN of the source API.
    #   However, source APIs from other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the source API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description field.
    #   @return [String]
    #
    # @!attribute [rw] source_api_association_config
    #   The `SourceApiAssociationConfig` object data.
    #   @return [Types::SourceApiAssociationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateSourceGraphqlApiRequest AWS API Documentation
    #
    class AssociateSourceGraphqlApiRequest < Struct.new(
      :merged_api_identifier,
      :source_api_identifier,
      :description,
      :source_api_association_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association
    #   The `SourceApiAssociation` object data.
    #   @return [Types::SourceApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AssociateSourceGraphqlApiResponse AWS API Documentation
    #
    class AssociateSourceGraphqlApiResponse < Struct.new(
      :source_api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authorization configuration in case the HTTP endpoint requires
    # authorization.
    #
    # @!attribute [rw] authorization_type
    #   The authorization type that the HTTP endpoint requires.
    #
    #   * **AWS\_IAM**: The authorization type is Signature Version 4
    #     (SigV4).
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] aws_iam_config
    #   The Identity and Access Management (IAM) settings.
    #   @return [Types::AwsIamConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AuthorizationConfig AWS API Documentation
    #
    class AuthorizationConfig < Struct.new(
      :authorization_type,
      :aws_iam_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Identity and Access Management (IAM) configuration.
    #
    # @!attribute [rw] signing_region
    #   The signing Amazon Web Services Region for IAM authorization.
    #   @return [String]
    #
    # @!attribute [rw] signing_service_name
    #   The signing service name for IAM authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/AwsIamConfig AWS API Documentation
    #
    class AwsIamConfig < Struct.new(
      :signing_region,
      :signing_service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides further details for the reason behind the bad request. For
    # reason type `CODE_ERROR`, the detail will contain a list of code
    # errors.
    #
    # @!attribute [rw] code_errors
    #   Contains the list of errors in the request.
    #   @return [Array<Types::CodeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/BadRequestDetail AWS API Documentation
    #
    class BadRequestDetail < Struct.new(
      :code_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not well formed. For example, a value is invalid or a
    # required field is missing. Check the field values, and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Provides context for the cause of the bad request. The only
    #   supported value is `CODE_ERROR`.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   Provides further details for the reason behind the bad request. For
    #   reason type `CODE_ERROR`, the detail will contain a list of code
    #   errors.
    #   @return [Types::BadRequestDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message,
      :reason,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caching configuration for a resolver that has caching activated.
    #
    # @!attribute [rw] ttl
    #   The TTL in seconds for a resolver that has caching activated.
    #
    #   Valid values are 1–3,600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] caching_keys
    #   The caching keys for a resolver that has caching activated.
    #
    #   Valid values are entries from the `$context.arguments`,
    #   `$context.source`, and `$context.identity` maps.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CachingConfig AWS API Documentation
    #
    class CachingConfig < Struct.new(
      :ttl,
      :caching_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an AppSync error.
    #
    # @!attribute [rw] error_type
    #   The type of code error.
    #
    #   Examples include, but aren't limited to: `LINT_ERROR`,
    #   `PARSER_ERROR`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A user presentable error.
    #
    #   Examples include, but aren't limited to: `Parsing error:
    #   Unterminated string literal`.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The line, column, and span location of the error in the code.
    #   @return [Types::CodeErrorLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CodeError AWS API Documentation
    #
    class CodeError < Struct.new(
      :error_type,
      :value,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the location of the error in a code sample.
    #
    # @!attribute [rw] line
    #   The line number in the code. Defaults to `0` if unknown.
    #   @return [Integer]
    #
    # @!attribute [rw] column
    #   The column number in the code. Defaults to `0` if unknown.
    #   @return [Integer]
    #
    # @!attribute [rw] span
    #   The span/length of the error. Defaults to `-1` if unknown.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CodeErrorLocation AWS API Documentation
    #
    class CodeErrorLocation < Struct.new(
      :line,
      :column,
      :span)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Cognito user pool configuration.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region in which the user pool was created.
    #   @return [String]
    #
    # @!attribute [rw] app_id_client_regex
    #   A regular expression for validating the incoming Amazon Cognito user
    #   pool app client ID. If this value isn't set, no filtering is
    #   applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CognitoUserPoolConfig AWS API Documentation
    #
    class CognitoUserPoolConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :app_id_client_regex)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another modification is in progress at this time and it must complete
    # before you can make your change.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `CreateApiCache` operation.
    #
    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   TTL in seconds for cache entries.
    #
    #   Valid values are 1–3,600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] transit_encryption_enabled
    #   Transit encryption flag when connecting to cache. You cannot update
    #   this setting after creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] at_rest_encryption_enabled
    #   At-rest encryption flag for cache. You cannot update this setting
    #   after creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] api_caching_behavior
    #   Caching behavior.
    #
    #   * **FULL\_REQUEST\_CACHING**: All requests are fully cached.
    #
    #   * **PER\_RESOLVER\_CACHING**: Individual resolvers that you specify
    #     are cached.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The cache instance type. Valid values are
    #
    #   * `SMALL`
    #
    #   * `MEDIUM`
    #
    #   * `LARGE`
    #
    #   * `XLARGE`
    #
    #   * `LARGE_2X`
    #
    #   * `LARGE_4X`
    #
    #   * `LARGE_8X` (not available in all regions)
    #
    #   * `LARGE_12X`
    #
    #   Historically, instance types were identified by an EC2-style value.
    #   As of July 2020, this is deprecated, and the generic identifiers
    #   above should be used.
    #
    #   The following legacy instance types are available, but their use is
    #   discouraged:
    #
    #   * **T2\_SMALL**: A t2.small instance type.
    #
    #   * **T2\_MEDIUM**: A t2.medium instance type.
    #
    #   * **R4\_LARGE**: A r4.large instance type.
    #
    #   * **R4\_XLARGE**: A r4.xlarge instance type.
    #
    #   * **R4\_2XLARGE**: A r4.2xlarge instance type.
    #
    #   * **R4\_4XLARGE**: A r4.4xlarge instance type.
    #
    #   * **R4\_8XLARGE**: A r4.8xlarge instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiCacheRequest AWS API Documentation
    #
    class CreateApiCacheRequest < Struct.new(
      :api_id,
      :ttl,
      :transit_encryption_enabled,
      :at_rest_encryption_enabled,
      :api_caching_behavior,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `CreateApiCache` operation.
    #
    # @!attribute [rw] api_cache
    #   The `ApiCache` object.
    #   @return [Types::ApiCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiCacheResponse AWS API Documentation
    #
    class CreateApiCacheResponse < Struct.new(
      :api_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The ID for your GraphQL API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   From the creation time, the time after which the API key expires.
    #   The date is represented as seconds since the epoch, rounded down to
    #   the nearest hour. The default value for this parameter is 7 days
    #   from creation time. For more information, see .
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKeyRequest AWS API Documentation
    #
    class CreateApiKeyRequest < Struct.new(
      :api_id,
      :description,
      :expires)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_key
    #   The API key.
    #   @return [Types::ApiKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateApiKeyResponse AWS API Documentation
    #
    class CreateApiKeyResponse < Struct.new(
      :api_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID for the GraphQL API for the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-supplied name for the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Identity and Access Management (IAM) service role Amazon
    #   Resource Name (ARN) for the data source. The system assumes this
    #   role when accessing the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   Amazon DynamoDB settings.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   Lambda settings.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   Amazon OpenSearch Service settings.
    #
    #   As of September 2021, Amazon Elasticsearch service is Amazon
    #   OpenSearch Service. This configuration is deprecated. For new data
    #   sources, use CreateDataSourceRequest$openSearchServiceConfig to
    #   create an OpenSearch data source.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] open_search_service_config
    #   Amazon OpenSearch Service settings.
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   HTTP endpoint settings.
    #   @return [Types::HttpDataSourceConfig]
    #
    # @!attribute [rw] relational_database_config
    #   Relational database settings.
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    #
    # @!attribute [rw] event_bridge_config
    #   Amazon EventBridge settings.
    #   @return [Types::EventBridgeDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSourceRequest AWS API Documentation
    #
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
      :event_bridge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate. This can be an
    #   Certificate Manager (ACM) certificate or an Identity and Access
    #   Management (IAM) server certificate.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the `DomainName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDomainNameRequest AWS API Documentation
    #
    class CreateDomainNameRequest < Struct.new(
      :domain_name,
      :certificate_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name_config
    #   The configuration for the `DomainName`.
    #   @return [Types::DomainNameConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateDomainNameResponse AWS API Documentation
    #
    class CreateDomainNameResponse < Struct.new(
      :domain_name_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The `Function` name. The function name does not have to be unique.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The `Function` description.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The `Function` `DataSource` name.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The `Function` request mapping template. Functions support only the
    #   2018-05-29 version of the request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The `Function` response mapping template.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The `version` of the request mapping template. Currently, the
    #   supported value is 2018-05-29. Note that when using VTL and mapping
    #   templates, the `functionVersion` is required.
    #   @return [String]
    #
    # @!attribute [rw] sync_config
    #   Describes a Sync configuration for a resolver.
    #
    #   Specifies which Conflict Detection strategy and Resolution strategy
    #   to use when the resolver is invoked.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `function` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateFunctionRequest AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_configuration
    #   The `Function` object.
    #   @return [Types::FunctionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateFunctionResponse AWS API Documentation
    #
    class CreateFunctionResponse < Struct.new(
      :function_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A user-supplied name for the `GraphqlApi`.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch Logs configuration.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type: API key, Identity and Access Management
    #   (IAM), OpenID Connect (OIDC), Amazon Cognito user pools, or Lambda.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito user pool configuration.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The OIDC configuration.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @!attribute [rw] tags
    #   A `TagMap` object.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_authentication_providers
    #   A list of additional authentication providers for the `GraphqlApi`
    #   API.
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    #
    # @!attribute [rw] xray_enabled
    #   A flag indicating whether to use X-Ray tracing for the `GraphqlApi`.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   Configuration for Lambda function authorization.
    #   @return [Types::LambdaAuthorizerConfig]
    #
    # @!attribute [rw] visibility
    #   Sets the value of the GraphQL API to public (`GLOBAL`) or private
    #   (`PRIVATE`). If no value is provided, the visibility will be set to
    #   `GLOBAL` by default. This value cannot be changed once the API has
    #   been created.
    #   @return [String]
    #
    # @!attribute [rw] api_type
    #   The value that indicates whether the GraphQL API is a standard API
    #   (`GRAPHQL`) or merged API (`MERGED`).
    #   @return [String]
    #
    # @!attribute [rw] merged_api_execution_role_arn
    #   The Identity and Access Management service role ARN for a merged
    #   API. The AppSync service assumes this role on behalf of the Merged
    #   API to validate access to source APIs at runtime and to prompt the
    #   `AUTO_MERGE` to update the merged API endpoint with the source API
    #   changes automatically.
    #   @return [String]
    #
    # @!attribute [rw] owner_contact
    #   The owner contact information for an API resource.
    #
    #   This field accepts any string input with a length of 0 - 256
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApiRequest AWS API Documentation
    #
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
      :visibility,
      :api_type,
      :merged_api_execution_role_arn,
      :owner_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The `GraphqlApi`.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateGraphqlApiResponse AWS API Documentation
    #
    class CreateGraphqlApiResponse < Struct.new(
      :graphql_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The ID for the GraphQL API for which the resolver is being created.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the `Type`.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The name of the field to attach the resolver to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The name of the data source for which the resolver is being created.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The mapping template to use for requests.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #
    #   VTL request mapping templates are optional when using an Lambda data
    #   source. For all other data sources, VTL request and response mapping
    #   templates are required.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The mapping template to use for responses from the data source.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The resolver type.
    #
    #   * **UNIT**: A UNIT resolver type. A UNIT resolver is the default
    #     resolver type. You can use a UNIT resolver to run a GraphQL query
    #     against a single data source.
    #
    #   * **PIPELINE**: A PIPELINE resolver type. You can use a PIPELINE
    #     resolver to invoke a series of `Function` objects in a serial
    #     manner. You can use a pipeline resolver to run a GraphQL query
    #     against multiple data sources.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_config
    #   The `PipelineConfig`.
    #   @return [Types::PipelineConfig]
    #
    # @!attribute [rw] sync_config
    #   The `SyncConfig` for a resolver attached to a versioned data source.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] caching_config
    #   The caching configuration for the resolver.
    #   @return [Types::CachingConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `resolver` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolverRequest AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateResolverResponse AWS API Documentation
    #
    class CreateResolverResponse < Struct.new(
      :resolver)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The type definition, in GraphQL Schema Definition Language (SDL)
    #   format.
    #
    #   For more information, see the [GraphQL SDL documentation][1].
    #
    #
    #
    #   [1]: http://graphql.org/learn/schema/
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateTypeRequest AWS API Documentation
    #
    class CreateTypeRequest < Struct.new(
      :api_id,
      :definition,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/CreateTypeResponse AWS API Documentation
    #
    class CreateTypeResponse < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a data source.
    #
    # @!attribute [rw] data_source_arn
    #   The data source Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source.
    #
    #   * **AWS\_LAMBDA**: The data source is an Lambda function.
    #
    #   * **AMAZON\_DYNAMODB**: The data source is an Amazon DynamoDB table.
    #
    #   * **AMAZON\_ELASTICSEARCH**: The data source is an Amazon OpenSearch
    #     Service domain.
    #
    #   * **AMAZON\_OPENSEARCH\_SERVICE**: The data source is an Amazon
    #     OpenSearch Service domain.
    #
    #   * **AMAZON\_EVENTBRIDGE**: The data source is an Amazon EventBridge
    #     configuration.
    #
    #   * **NONE**: There is no data source. Use this type when you want to
    #     invoke a GraphQL operation without connecting to a data source,
    #     such as when you're performing data transformation with resolvers
    #     or invoking a subscription from a mutation.
    #
    #   * **HTTP**: The data source is an HTTP endpoint.
    #
    #   * **RELATIONAL\_DATABASE**: The data source is a relational
    #     database.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Identity and Access Management (IAM) service role Amazon
    #   Resource Name (ARN) for the data source. The system assumes this
    #   role when accessing the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   DynamoDB settings.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   Lambda settings.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   Amazon OpenSearch Service settings.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] open_search_service_config
    #   Amazon OpenSearch Service settings.
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   HTTP endpoint settings.
    #   @return [Types::HttpDataSourceConfig]
    #
    # @!attribute [rw] relational_database_config
    #   Relational database settings.
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    #
    # @!attribute [rw] event_bridge_config
    #   Amazon EventBridge settings.
    #   @return [Types::EventBridgeDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DataSource AWS API Documentation
    #
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
      :event_bridge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `DeleteApiCache` operation.
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiCacheRequest AWS API Documentation
    #
    class DeleteApiCacheRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `DeleteApiCache` operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiCacheResponse AWS API Documentation
    #
    class DeleteApiCacheResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the API key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKeyRequest AWS API Documentation
    #
    class DeleteApiKeyRequest < Struct.new(
      :api_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteApiKeyResponse AWS API Documentation
    #
    class DeleteApiKeyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :api_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDomainNameRequest AWS API Documentation
    #
    class DeleteDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteDomainNameResponse AWS API Documentation
    #
    class DeleteDomainNameResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] function_id
    #   The `Function` ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteFunctionRequest AWS API Documentation
    #
    class DeleteFunctionRequest < Struct.new(
      :api_id,
      :function_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteFunctionResponse AWS API Documentation
    #
    class DeleteFunctionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApiRequest AWS API Documentation
    #
    class DeleteGraphqlApiRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteGraphqlApiResponse AWS API Documentation
    #
    class DeleteGraphqlApiResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The name of the resolver type.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolverRequest AWS API Documentation
    #
    class DeleteResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteResolverResponse AWS API Documentation
    #
    class DeleteResolverResponse < Aws::EmptyStructure; end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteTypeRequest AWS API Documentation
    #
    class DeleteTypeRequest < Struct.new(
      :api_id,
      :type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeleteTypeResponse AWS API Documentation
    #
    class DeleteTypeResponse < Aws::EmptyStructure; end

    # Describes a Delta Sync configuration.
    #
    # @!attribute [rw] base_table_ttl
    #   The number of minutes that an Item is stored in the data source.
    #   @return [Integer]
    #
    # @!attribute [rw] delta_sync_table_name
    #   The Delta Sync table name.
    #   @return [String]
    #
    # @!attribute [rw] delta_sync_table_ttl
    #   The number of minutes that a Delta Sync log entry is stored in the
    #   Delta Sync table.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DeltaSyncConfig AWS API Documentation
    #
    class DeltaSyncConfig < Struct.new(
      :base_table_ttl,
      :delta_sync_table_name,
      :delta_sync_table_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateApiRequest AWS API Documentation
    #
    class DisassociateApiRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateApiResponse AWS API Documentation
    #
    class DisassociateApiResponse < Aws::EmptyStructure; end

    # @!attribute [rw] source_api_identifier
    #   The identifier of the AppSync Source API. This is generated by the
    #   AppSync service. In most cases, source APIs (especially in your
    #   account) only require the API ID value or ARN of the source API.
    #   However, source APIs from other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the source API.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateMergedGraphqlApiRequest AWS API Documentation
    #
    class DisassociateMergedGraphqlApiRequest < Struct.new(
      :source_api_identifier,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association_status
    #   The state of the source API association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateMergedGraphqlApiResponse AWS API Documentation
    #
    class DisassociateMergedGraphqlApiResponse < Struct.new(
      :source_api_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateSourceGraphqlApiRequest AWS API Documentation
    #
    class DisassociateSourceGraphqlApiRequest < Struct.new(
      :merged_api_identifier,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association_status
    #   The state of the source API association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DisassociateSourceGraphqlApiResponse AWS API Documentation
    #
    class DisassociateSourceGraphqlApiResponse < Struct.new(
      :source_api_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a configuration for a custom domain.
    #
    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the `DomainName` configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate. This can be an
    #   Certificate Manager (ACM) certificate or an Identity and Access
    #   Management (IAM) server certificate.
    #   @return [String]
    #
    # @!attribute [rw] appsync_domain_name
    #   The domain name that AppSync provides.
    #   @return [String]
    #
    # @!attribute [rw] hosted_zone_id
    #   The ID of your Amazon Route 53 hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DomainNameConfig AWS API Documentation
    #
    class DomainNameConfig < Struct.new(
      :domain_name,
      :description,
      :certificate_arn,
      :appsync_domain_name,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon DynamoDB data source configuration.
    #
    # @!attribute [rw] table_name
    #   The table name.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] use_caller_credentials
    #   Set to TRUE to use Amazon Cognito credentials with this data source.
    #   @return [Boolean]
    #
    # @!attribute [rw] delta_sync_config
    #   The `DeltaSyncConfig` for a versioned data source.
    #   @return [Types::DeltaSyncConfig]
    #
    # @!attribute [rw] versioned
    #   Set to TRUE to use Conflict Detection and Resolution with this data
    #   source.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/DynamodbDataSourceConfig AWS API Documentation
    #
    class DynamodbDataSourceConfig < Struct.new(
      :table_name,
      :aws_region,
      :use_caller_credentials,
      :delta_sync_config,
      :versioned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an OpenSearch data source configuration.
    #
    # As of September 2021, Amazon Elasticsearch service is Amazon
    # OpenSearch Service. This configuration is deprecated. For new data
    # sources, use OpenSearchServiceDataSourceConfig to specify an
    # OpenSearch data source.
    #
    # @!attribute [rw] endpoint
    #   The endpoint.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ElasticsearchDataSourceConfig AWS API Documentation
    #
    class ElasticsearchDataSourceConfig < Struct.new(
      :endpoint,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of errors generated. When using JavaScript, this
    # will apply to the request or response function evaluation.
    #
    # @!attribute [rw] message
    #   The error payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of errors from a code evaluation response.
    #
    # @!attribute [rw] message
    #   The error payload.
    #   @return [String]
    #
    # @!attribute [rw] code_errors
    #   Contains the list of `CodeError` objects.
    #   @return [Array<Types::CodeError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EvaluateCodeErrorDetail AWS API Documentation
    #
    class EvaluateCodeErrorDetail < Struct.new(
      :message,
      :code_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] runtime
    #   The runtime to be used when evaluating the code. Currently, only the
    #   `APPSYNC_JS` runtime is supported.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The code definition to be evaluated. Note that `code` and `runtime`
    #   are both required for this action. The `runtime` value must be
    #   `APPSYNC_JS`.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The map that holds all of the contextual information for your
    #   resolver invocation. A `context` is required for this action.
    #   @return [String]
    #
    # @!attribute [rw] function
    #   The function within the code to be evaluated. If provided, the valid
    #   values are `request` and `response`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EvaluateCodeRequest AWS API Documentation
    #
    class EvaluateCodeRequest < Struct.new(
      :runtime,
      :code,
      :context,
      :function)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_result
    #   The result of the evaluation operation.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Contains the payload of the response error.
    #   @return [Types::EvaluateCodeErrorDetail]
    #
    # @!attribute [rw] logs
    #   A list of logs that were generated by calls to `util.log.info` and
    #   `util.log.error` in the evaluated code.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EvaluateCodeResponse AWS API Documentation
    #
    class EvaluateCodeResponse < Struct.new(
      :evaluation_result,
      :error,
      :logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template
    #   The mapping template; this can be a request or response template. A
    #   `template` is required for this action.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The map that holds all of the contextual information for your
    #   resolver invocation. A `context` is required for this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EvaluateMappingTemplateRequest AWS API Documentation
    #
    class EvaluateMappingTemplateRequest < Struct.new(
      :template,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evaluation_result
    #   The mapping template; this can be a request or response template.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The `ErrorDetail` object.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] logs
    #   A list of logs that were generated by calls to `util.log.info` and
    #   `util.log.error` in the evaluated code.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EvaluateMappingTemplateResponse AWS API Documentation
    #
    class EvaluateMappingTemplateResponse < Struct.new(
      :evaluation_result,
      :error,
      :logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon EventBridge bus data source configuration.
    #
    # @!attribute [rw] event_bus_arn
    #   The ARN of the event bus. For more information about event buses,
    #   see [Amazon EventBridge event buses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-bus.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/EventBridgeDataSourceConfig AWS API Documentation
    #
    class EventBridgeDataSourceConfig < Struct.new(
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `FlushApiCache` operation.
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/FlushApiCacheRequest AWS API Documentation
    #
    class FlushApiCacheRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `FlushApiCache` operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/FlushApiCacheResponse AWS API Documentation
    #
    class FlushApiCacheResponse < Aws::EmptyStructure; end

    # A function is a reusable entity. You can use multiple functions to
    # compose the resolver logic.
    #
    # @!attribute [rw] function_id
    #   A unique ID representing the `Function` object.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the `Function` object.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `Function` object.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The `Function` description.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The name of the `DataSource`.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The `Function` request mapping template. Functions support only the
    #   2018-05-29 version of the request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The `Function` response mapping template.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The version of the request mapping template. Currently, only the
    #   2018-05-29 version of the template is supported.
    #   @return [String]
    #
    # @!attribute [rw] sync_config
    #   Describes a Sync configuration for a resolver.
    #
    #   Specifies which Conflict Detection strategy and Resolution strategy
    #   to use when the resolver is invoked.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `function` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/FunctionConfiguration AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetApiAssociationRequest AWS API Documentation
    #
    class GetApiAssociationRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_association
    #   The `ApiAssociation` object.
    #   @return [Types::ApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetApiAssociationResponse AWS API Documentation
    #
    class GetApiAssociationResponse < Struct.new(
      :api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the input of a `GetApiCache` operation.
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetApiCacheRequest AWS API Documentation
    #
    class GetApiCacheRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `GetApiCache` operation.
    #
    # @!attribute [rw] api_cache
    #   The `ApiCache` object.
    #   @return [Types::ApiCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetApiCacheResponse AWS API Documentation
    #
    class GetApiCacheResponse < Struct.new(
      :api_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :api_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDomainNameRequest AWS API Documentation
    #
    class GetDomainNameRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name_config
    #   The configuration for the `DomainName`.
    #   @return [Types::DomainNameConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetDomainNameResponse AWS API Documentation
    #
    class GetDomainNameResponse < Struct.new(
      :domain_name_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] function_id
    #   The `Function` ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetFunctionRequest AWS API Documentation
    #
    class GetFunctionRequest < Struct.new(
      :api_id,
      :function_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_configuration
    #   The `Function` object.
    #   @return [Types::FunctionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetFunctionResponse AWS API Documentation
    #
    class GetFunctionResponse < Struct.new(
      :function_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID for the GraphQL API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApiRequest AWS API Documentation
    #
    class GetGraphqlApiRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The `GraphqlApi` object.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetGraphqlApiResponse AWS API Documentation
    #
    class GetGraphqlApiResponse < Struct.new(
      :graphql_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The schema format: SDL or JSON.
    #   @return [String]
    #
    # @!attribute [rw] include_directives
    #   A flag that specifies whether the schema introspection should
    #   contain directives.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchemaRequest AWS API Documentation
    #
    class GetIntrospectionSchemaRequest < Struct.new(
      :api_id,
      :format,
      :include_directives)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] schema
    #   The schema, in GraphQL Schema Definition Language (SDL) format.
    #
    #   For more information, see the [GraphQL SDL documentation][1].
    #
    #
    #
    #   [1]: http://graphql.org/learn/schema/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetIntrospectionSchemaResponse AWS API Documentation
    #
    class GetIntrospectionSchemaResponse < Struct.new(
      :schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The resolver type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolverRequest AWS API Documentation
    #
    class GetResolverRequest < Struct.new(
      :api_id,
      :type_name,
      :field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetResolverResponse AWS API Documentation
    #
    class GetResolverResponse < Struct.new(
      :resolver)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatusRequest AWS API Documentation
    #
    class GetSchemaCreationStatusRequest < Struct.new(
      :api_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current state of the schema (PROCESSING, FAILED, SUCCESS, or
    #   NOT\_APPLICABLE). When the schema is in the ACTIVE state, you can
    #   add data.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   Detailed information about the status of the schema creation
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSchemaCreationStatusResponse AWS API Documentation
    #
    class GetSchemaCreationStatusResponse < Struct.new(
      :status,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSourceApiAssociationRequest AWS API Documentation
    #
    class GetSourceApiAssociationRequest < Struct.new(
      :merged_api_identifier,
      :association_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association
    #   The `SourceApiAssociation` object data.
    #   @return [Types::SourceApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetSourceApiAssociationResponse AWS API Documentation
    #
    class GetSourceApiAssociationResponse < Struct.new(
      :source_api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetTypeRequest AWS API Documentation
    #
    class GetTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GetTypeResponse AWS API Documentation
    #
    class GetTypeResponse < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GraphQL schema is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GraphQLSchemaException AWS API Documentation
    #
    class GraphQLSchemaException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a GraphQL API.
    #
    # @!attribute [rw] name
    #   The API name.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch Logs configuration.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] user_pool_config
    #   The Amazon Cognito user pool configuration.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The OpenID Connect configuration.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] uris
    #   The URIs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] additional_authentication_providers
    #   A list of additional authentication providers for the `GraphqlApi`
    #   API.
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    #
    # @!attribute [rw] xray_enabled
    #   A flag indicating whether to use X-Ray tracing for this
    #   `GraphqlApi`.
    #   @return [Boolean]
    #
    # @!attribute [rw] waf_web_acl_arn
    #   The ARN of the WAF access control list (ACL) associated with this
    #   `GraphqlApi`, if one exists.
    #   @return [String]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   Configuration for Lambda function authorization.
    #   @return [Types::LambdaAuthorizerConfig]
    #
    # @!attribute [rw] dns
    #   The DNS records for the API.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] visibility
    #   Sets the value of the GraphQL API to public (`GLOBAL`) or private
    #   (`PRIVATE`). If no value is provided, the visibility will be set to
    #   `GLOBAL` by default. This value cannot be changed once the API has
    #   been created.
    #   @return [String]
    #
    # @!attribute [rw] api_type
    #   The value that indicates whether the GraphQL API is a standard API
    #   (`GRAPHQL`) or merged API (`MERGED`).
    #   @return [String]
    #
    # @!attribute [rw] merged_api_execution_role_arn
    #   The Identity and Access Management service role ARN for a merged
    #   API. The AppSync service assumes this role on behalf of the Merged
    #   API to validate access to source APIs at runtime and to prompt the
    #   `AUTO_MERGE` to update the merged API endpoint with the source API
    #   changes automatically.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The account owner of the GraphQL API.
    #   @return [String]
    #
    # @!attribute [rw] owner_contact
    #   The owner contact information for an API resource.
    #
    #   This field accepts any string input with a length of 0 - 256
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/GraphqlApi AWS API Documentation
    #
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
      :owner_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an HTTP data source configuration.
    #
    # @!attribute [rw] endpoint
    #   The HTTP URL endpoint. You can specify either the domain name or IP,
    #   and port combination, and the URL scheme must be HTTP or HTTPS. If
    #   you don't specify the port, AppSync uses the default port 80 for
    #   the HTTP endpoint and port 443 for HTTPS endpoints.
    #   @return [String]
    #
    # @!attribute [rw] authorization_config
    #   The authorization configuration in case the HTTP endpoint requires
    #   authorization.
    #   @return [Types::AuthorizationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/HttpDataSourceConfig AWS API Documentation
    #
    class HttpDataSourceConfig < Struct.new(
      :endpoint,
      :authorization_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal AppSync error occurred. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `LambdaAuthorizerConfig` specifies how to authorize AppSync API
    # access when using the `AWS_LAMBDA` authorizer mode. Be aware that an
    # AppSync API can have only one Lambda authorizer configured at a time.
    #
    # @!attribute [rw] authorizer_result_ttl_in_seconds
    #   The number of seconds a response should be cached for. The default
    #   is 0 seconds, which disables caching. If you don't specify a value
    #   for `authorizerResultTtlInSeconds`, the default value is used. The
    #   maximum value is one hour (3600 seconds). The Lambda function can
    #   override this by returning a `ttlOverride` key in its response.
    #   @return [Integer]
    #
    # @!attribute [rw] authorizer_uri
    #   The Amazon Resource Name (ARN) of the Lambda function to be called
    #   for authorization. This can be a standard Lambda ARN, a version ARN
    #   (`.../v3`), or an alias ARN.
    #
    #   **Note**: This Lambda function must have the following
    #   resource-based policy assigned to it. When configuring Lambda
    #   authorizers in the console, this is done for you. To use the Command
    #   Line Interface (CLI), run the following:
    #
    #   `aws lambda add-permission --function-name
    #   "arn:aws:lambda:us-east-2:111122223333:function:my-function"
    #   --statement-id "appsync" --principal appsync.amazonaws.com --action
    #   lambda:InvokeFunction`
    #   @return [String]
    #
    # @!attribute [rw] identity_validation_expression
    #   A regular expression for validation of tokens before the Lambda
    #   function is called.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LambdaAuthorizerConfig AWS API Documentation
    #
    class LambdaAuthorizerConfig < Struct.new(
      :authorizer_result_ttl_in_seconds,
      :authorizer_uri,
      :identity_validation_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The `LambdaConflictHandlerConfig` object when configuring `LAMBDA` as
    # the Conflict Handler.
    #
    # @!attribute [rw] lambda_conflict_handler_arn
    #   The Amazon Resource Name (ARN) for the Lambda function to use as the
    #   Conflict Handler.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LambdaConflictHandlerConfig AWS API Documentation
    #
    class LambdaConflictHandlerConfig < Struct.new(
      :lambda_conflict_handler_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Lambda data source configuration.
    #
    # @!attribute [rw] lambda_function_arn
    #   The Amazon Resource Name (ARN) for the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LambdaDataSourceConfig AWS API Documentation
    #
    class LambdaDataSourceConfig < Struct.new(
      :lambda_function_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeded a limit. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeysRequest AWS API Documentation
    #
    class ListApiKeysRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_keys
    #   The `ApiKey` objects.
    #   @return [Array<Types::ApiKey>]
    #
    # @!attribute [rw] next_token
    #   An identifier to pass in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListApiKeysResponse AWS API Documentation
    #
    class ListApiKeysResponse < Struct.new(
      :api_keys,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   The `DataSource` objects.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   An identifier to pass in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDomainNamesRequest AWS API Documentation
    #
    class ListDomainNamesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name_configs
    #   Lists configurations for multiple domain names.
    #   @return [Array<Types::DomainNameConfig>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListDomainNamesResponse AWS API Documentation
    #
    class ListDomainNamesResponse < Struct.new(
      :domain_name_configs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListFunctionsRequest AWS API Documentation
    #
    class ListFunctionsRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] functions
    #   A list of `Function` objects.
    #   @return [Array<Types::FunctionConfiguration>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListFunctionsResponse AWS API Documentation
    #
    class ListFunctionsResponse < Struct.new(
      :functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @!attribute [rw] api_type
    #   The value that indicates whether the GraphQL API is a standard API
    #   (`GRAPHQL`) or merged API (`MERGED`).
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The account owner of the GraphQL API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApisRequest AWS API Documentation
    #
    class ListGraphqlApisRequest < Struct.new(
      :next_token,
      :max_results,
      :api_type,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graphql_apis
    #   The `GraphqlApi` objects.
    #   @return [Array<Types::GraphqlApi>]
    #
    # @!attribute [rw] next_token
    #   An identifier to pass in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListGraphqlApisResponse AWS API Documentation
    #
    class ListGraphqlApisResponse < Struct.new(
      :graphql_apis,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] function_id
    #   The function ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversByFunctionRequest AWS API Documentation
    #
    class ListResolversByFunctionRequest < Struct.new(
      :api_id,
      :function_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolvers
    #   The list of resolvers.
    #   @return [Array<Types::Resolver>]
    #
    # @!attribute [rw] next_token
    #   An identifier that you can use to return the next set of items in
    #   the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversByFunctionResponse AWS API Documentation
    #
    class ListResolversByFunctionResponse < Struct.new(
      :resolvers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversRequest AWS API Documentation
    #
    class ListResolversRequest < Struct.new(
      :api_id,
      :type_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolvers
    #   The `Resolver` objects.
    #   @return [Array<Types::Resolver>]
    #
    # @!attribute [rw] next_token
    #   An identifier to pass in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListResolversResponse AWS API Documentation
    #
    class ListResolversResponse < Struct.new(
      :resolvers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListSourceApiAssociationsRequest AWS API Documentation
    #
    class ListSourceApiAssociationsRequest < Struct.new(
      :api_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association_summaries
    #   The `SourceApiAssociationSummary` object data.
    #   @return [Array<Types::SourceApiAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListSourceApiAssociationsResponse AWS API Documentation
    #
    class ListSourceApiAssociationsResponse < Struct.new(
      :source_api_association_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The `GraphqlApi` Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A `TagMap` object.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesByAssociationRequest AWS API Documentation
    #
    class ListTypesByAssociationRequest < Struct.new(
      :merged_api_identifier,
      :association_id,
      :format,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] types
    #   The `Type` objects.
    #   @return [Array<Types::Type>]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesByAssociationResponse AWS API Documentation
    #
    class ListTypesByAssociationResponse < Struct.new(
      :types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   An identifier that was returned from the previous call to this
    #   operation, which you can use to return the next set of items in the
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that you want the request to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesRequest AWS API Documentation
    #
    class ListTypesRequest < Struct.new(
      :api_id,
      :format,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] types
    #   The `Type` objects.
    #   @return [Array<Types::Type>]
    #
    # @!attribute [rw] next_token
    #   An identifier to pass in the next request to this operation to
    #   return the next set of items in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/ListTypesResponse AWS API Documentation
    #
    class ListTypesResponse < Struct.new(
      :types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon CloudWatch Logs configuration.
    #
    # @!attribute [rw] field_log_level
    #   The field logging level. Values can be NONE, ERROR, or ALL.
    #
    #   * **NONE**: No field-level logs are captured.
    #
    #   * **ERROR**: Logs the following information only for the fields that
    #     are in error:
    #
    #     * The error section in the server response.
    #
    #     * Field-level errors.
    #
    #     * The generated request/response functions that got resolved for
    #       error fields.
    #
    #   * **ALL**: The following information is logged for all fields in the
    #     query:
    #
    #     * Field-level tracing information.
    #
    #     * The generated request/response functions that got resolved for
    #       each field.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The service role that AppSync assumes to publish to CloudWatch logs
    #   in your account.
    #   @return [String]
    #
    # @!attribute [rw] exclude_verbose_content
    #   Set to TRUE to exclude sections that contain information such as
    #   headers, context, and evaluated mapping templates, regardless of
    #   logging level.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/LogConfig AWS API Documentation
    #
    class LogConfig < Struct.new(
      :field_log_level,
      :cloud_watch_logs_role_arn,
      :exclude_verbose_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request was not found. Check the
    # resource, and then try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an OpenID Connect (OIDC) configuration.
    #
    # @!attribute [rw] issuer
    #   The issuer for the OIDC configuration. The issuer returned by
    #   discovery must exactly match the value of `iss` in the ID token.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client identifier of the relying party at the OpenID identity
    #   provider. This identifier is typically obtained when the relying
    #   party is registered with the OpenID identity provider. You can
    #   specify a regular expression so that AppSync can validate against
    #   multiple client identifiers at a time.
    #   @return [String]
    #
    # @!attribute [rw] iat_ttl
    #   The number of milliseconds that a token is valid after it's issued
    #   to a user.
    #   @return [Integer]
    #
    # @!attribute [rw] auth_ttl
    #   The number of milliseconds that a token is valid after being
    #   authenticated.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/OpenIDConnectConfig AWS API Documentation
    #
    class OpenIDConnectConfig < Struct.new(
      :issuer,
      :client_id,
      :iat_ttl,
      :auth_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an OpenSearch data source configuration.
    #
    # @!attribute [rw] endpoint
    #   The endpoint.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/OpenSearchServiceDataSourceConfig AWS API Documentation
    #
    class OpenSearchServiceDataSourceConfig < Struct.new(
      :endpoint,
      :aws_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pipeline configuration for a resolver of kind `PIPELINE`.
    #
    # @!attribute [rw] functions
    #   A list of `Function` objects.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/PipelineConfig AWS API Documentation
    #
    class PipelineConfig < Struct.new(
      :functions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Relational Database Service (Amazon RDS) HTTP endpoint
    # configuration.
    #
    # @!attribute [rw] aws_region
    #   Amazon Web Services Region for Amazon RDS HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   Amazon RDS cluster Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Logical database name.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   Logical schema name.
    #   @return [String]
    #
    # @!attribute [rw] aws_secret_store_arn
    #   Amazon Web Services secret store Amazon Resource Name (ARN) for
    #   database credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/RdsHttpEndpointConfig AWS API Documentation
    #
    class RdsHttpEndpointConfig < Struct.new(
      :aws_region,
      :db_cluster_identifier,
      :database_name,
      :schema,
      :aws_secret_store_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a relational database data source configuration.
    #
    # @!attribute [rw] relational_database_source_type
    #   Source type for the relational database.
    #
    #   * **RDS\_HTTP\_ENDPOINT**: The relational database source type is an
    #     Amazon Relational Database Service (Amazon RDS) HTTP endpoint.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] rds_http_endpoint_config
    #   Amazon RDS HTTP endpoint settings.
    #   @return [Types::RdsHttpEndpointConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/RelationalDatabaseDataSourceConfig AWS API Documentation
    #
    class RelationalDatabaseDataSourceConfig < Struct.new(
      :relational_database_source_type,
      :rds_http_endpoint_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resolver.
    #
    # @!attribute [rw] type_name
    #   The resolver type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The resolver field name.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The resolver data source name.
    #   @return [String]
    #
    # @!attribute [rw] resolver_arn
    #   The resolver Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The response mapping template.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The resolver type.
    #
    #   * **UNIT**: A UNIT resolver type. A UNIT resolver is the default
    #     resolver type. You can use a UNIT resolver to run a GraphQL query
    #     against a single data source.
    #
    #   * **PIPELINE**: A PIPELINE resolver type. You can use a PIPELINE
    #     resolver to invoke a series of `Function` objects in a serial
    #     manner. You can use a pipeline resolver to run a GraphQL query
    #     against multiple data sources.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_config
    #   The `PipelineConfig`.
    #   @return [Types::PipelineConfig]
    #
    # @!attribute [rw] sync_config
    #   The `SyncConfig` for a resolver attached to a versioned data source.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] caching_config
    #   The caching configuration for the resolver.
    #   @return [Types::CachingConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `resolver` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/Resolver AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration of a source API. A source API is a GraphQL
    # API that is linked to a merged API. There can be multiple source APIs
    # attached to each merged API. When linked to a merged API, the source
    # API's schema, data sources, and resolvers will be combined with other
    # linked source API data to form a new, singular API.
    #
    # Source APIs can originate from your account or from other accounts via
    # Amazon Web Services Resource Access Manager. For more information
    # about sharing resources from other accounts, see [What is Amazon Web
    # Services Resource Access Manager?][1] in the *Amazon Web Services
    # Resource Access Manager* guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ram/latest/userguide/what-is.html
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the source API association.
    #   @return [String]
    #
    # @!attribute [rw] source_api_id
    #   The ID of the AppSync source API.
    #   @return [String]
    #
    # @!attribute [rw] source_api_arn
    #   The Amazon Resource Name (ARN) of the AppSync source API.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_arn
    #   The Amazon Resource Name (ARN) of the AppSync Merged API.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_id
    #   The ID of the AppSync Merged API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description field.
    #   @return [String]
    #
    # @!attribute [rw] source_api_association_config
    #   The `SourceApiAssociationConfig` object data.
    #   @return [Types::SourceApiAssociationConfig]
    #
    # @!attribute [rw] source_api_association_status
    #   The state of the source API association.
    #   @return [String]
    #
    # @!attribute [rw] source_api_association_status_detail
    #   The detailed message related to the current state of the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_merge_date
    #   The datetime value of the last successful merge of the source API
    #   association. The result will be in UTC format and your local time
    #   zone.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/SourceApiAssociation AWS API Documentation
    #
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
      :last_successful_merge_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes properties used to specify configurations related to a
    # source API.
    #
    # @!attribute [rw] merge_type
    #   The property that indicates which merging option is enabled in the
    #   source API association.
    #
    #   Valid merge types are `MANUAL_MERGE` (default) and `AUTO_MERGE`.
    #   Manual merges are the default behavior and require the user to
    #   trigger any changes from the source APIs to the merged API manually.
    #   Auto merges subscribe the merged API to the changes performed on the
    #   source APIs so that any change in the source APIs are also made to
    #   the merged API. Auto merges use `MergedApiExecutionRoleArn` to
    #   perform merge operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/SourceApiAssociationConfig AWS API Documentation
    #
    class SourceApiAssociationConfig < Struct.new(
      :merge_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the ARNs and IDs of associations, Merged APIs, and source
    # APIs.
    #
    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] association_arn
    #   The Amazon Resource Name (ARN) of the source API association.
    #   @return [String]
    #
    # @!attribute [rw] source_api_id
    #   The ID of the AppSync source API.
    #   @return [String]
    #
    # @!attribute [rw] source_api_arn
    #   The Amazon Resource Name (ARN) of the AppSync Source API.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_id
    #   The ID of the AppSync Merged API.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_arn
    #   The Amazon Resource Name (ARN) of the AppSync Merged API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/SourceApiAssociationSummary AWS API Documentation
    #
    class SourceApiAssociationSummary < Struct.new(
      :association_id,
      :association_arn,
      :source_api_id,
      :source_api_arn,
      :merged_api_id,
      :merged_api_arn,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The schema definition, in GraphQL schema language format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreationRequest AWS API Documentation
    #
    class StartSchemaCreationRequest < Struct.new(
      :api_id,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current state of the schema (PROCESSING, FAILED, SUCCESS, or
    #   NOT\_APPLICABLE). When the schema is in the ACTIVE state, you can
    #   add data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaCreationResponse AWS API Documentation
    #
    class StartSchemaCreationResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaMergeRequest AWS API Documentation
    #
    class StartSchemaMergeRequest < Struct.new(
      :association_id,
      :merged_api_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association_status
    #   The state of the source API association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/StartSchemaMergeResponse AWS API Documentation
    #
    class StartSchemaMergeResponse < Struct.new(
      :source_api_association_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a Sync configuration for a resolver.
    #
    # Specifies which Conflict Detection strategy and Resolution strategy to
    # use when the resolver is invoked.
    #
    # @!attribute [rw] conflict_handler
    #   The Conflict Resolution strategy to perform in the event of a
    #   conflict.
    #
    #   * **OPTIMISTIC\_CONCURRENCY**: Resolve conflicts by rejecting
    #     mutations when versions don't match the latest version at the
    #     server.
    #
    #   * **AUTOMERGE**: Resolve conflicts with the Automerge conflict
    #     resolution strategy.
    #
    #   * **LAMBDA**: Resolve conflicts with an Lambda function supplied in
    #     the `LambdaConflictHandlerConfig`.
    #   @return [String]
    #
    # @!attribute [rw] conflict_detection
    #   The Conflict Detection strategy to use.
    #
    #   * **VERSION**: Detect conflicts based on object versions for this
    #     resolver.
    #
    #   * **NONE**: Do not detect conflicts when invoking this resolver.
    #   @return [String]
    #
    # @!attribute [rw] lambda_conflict_handler_config
    #   The `LambdaConflictHandlerConfig` when configuring `LAMBDA` as the
    #   Conflict Handler.
    #   @return [Types::LambdaConflictHandlerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/SyncConfig AWS API Documentation
    #
    class SyncConfig < Struct.new(
      :conflict_handler,
      :conflict_detection,
      :lambda_conflict_handler_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The `GraphqlApi` Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A `TagMap` object.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Describes a type.
    #
    # @!attribute [rw] name
    #   The type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The type description.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The type Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The type definition.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/Type AWS API Documentation
    #
    class Type < Struct.new(
      :name,
      :description,
      :arn,
      :definition,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # You aren't authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The `GraphqlApi` Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of `TagKey` objects.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Represents the input of a `UpdateApiCache` operation.
    #
    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   TTL in seconds for cache entries.
    #
    #   Valid values are 1–3,600 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] api_caching_behavior
    #   Caching behavior.
    #
    #   * **FULL\_REQUEST\_CACHING**: All requests are fully cached.
    #
    #   * **PER\_RESOLVER\_CACHING**: Individual resolvers that you specify
    #     are cached.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The cache instance type. Valid values are
    #
    #   * `SMALL`
    #
    #   * `MEDIUM`
    #
    #   * `LARGE`
    #
    #   * `XLARGE`
    #
    #   * `LARGE_2X`
    #
    #   * `LARGE_4X`
    #
    #   * `LARGE_8X` (not available in all regions)
    #
    #   * `LARGE_12X`
    #
    #   Historically, instance types were identified by an EC2-style value.
    #   As of July 2020, this is deprecated, and the generic identifiers
    #   above should be used.
    #
    #   The following legacy instance types are available, but their use is
    #   discouraged:
    #
    #   * **T2\_SMALL**: A t2.small instance type.
    #
    #   * **T2\_MEDIUM**: A t2.medium instance type.
    #
    #   * **R4\_LARGE**: A r4.large instance type.
    #
    #   * **R4\_XLARGE**: A r4.xlarge instance type.
    #
    #   * **R4\_2XLARGE**: A r4.2xlarge instance type.
    #
    #   * **R4\_4XLARGE**: A r4.4xlarge instance type.
    #
    #   * **R4\_8XLARGE**: A r4.8xlarge instance type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiCacheRequest AWS API Documentation
    #
    class UpdateApiCacheRequest < Struct.new(
      :api_id,
      :ttl,
      :api_caching_behavior,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the output of a `UpdateApiCache` operation.
    #
    # @!attribute [rw] api_cache
    #   The `ApiCache` object.
    #   @return [Types::ApiCache]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiCacheResponse AWS API Documentation
    #
    class UpdateApiCacheResponse < Struct.new(
      :api_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The ID for the GraphQL API.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The API key ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the purpose of the API key.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   From the update time, the time after which the API key expires. The
    #   date is represented as seconds since the epoch. For more
    #   information, see .
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKeyRequest AWS API Documentation
    #
    class UpdateApiKeyRequest < Struct.new(
      :api_id,
      :id,
      :description,
      :expires)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_key
    #   The API key.
    #   @return [Types::ApiKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateApiKeyResponse AWS API Documentation
    #
    class UpdateApiKeyResponse < Struct.new(
      :api_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the data source.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The new data source type.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The new service role Amazon Resource Name (ARN) for the data source.
    #   @return [String]
    #
    # @!attribute [rw] dynamodb_config
    #   The new Amazon DynamoDB configuration.
    #   @return [Types::DynamodbDataSourceConfig]
    #
    # @!attribute [rw] lambda_config
    #   The new Lambda configuration.
    #   @return [Types::LambdaDataSourceConfig]
    #
    # @!attribute [rw] elasticsearch_config
    #   The new OpenSearch configuration.
    #
    #   As of September 2021, Amazon Elasticsearch service is Amazon
    #   OpenSearch Service. This configuration is deprecated. Instead, use
    #   UpdateDataSourceRequest$openSearchServiceConfig to update an
    #   OpenSearch data source.
    #   @return [Types::ElasticsearchDataSourceConfig]
    #
    # @!attribute [rw] open_search_service_config
    #   The new OpenSearch configuration.
    #   @return [Types::OpenSearchServiceDataSourceConfig]
    #
    # @!attribute [rw] http_config
    #   The new HTTP endpoint configuration.
    #   @return [Types::HttpDataSourceConfig]
    #
    # @!attribute [rw] relational_database_config
    #   The new relational database configuration.
    #   @return [Types::RelationalDatabaseDataSourceConfig]
    #
    # @!attribute [rw] event_bridge_config
    #   The new Amazon EventBridge settings.
    #   @return [Types::EventBridgeDataSourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSourceRequest AWS API Documentation
    #
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
      :event_bridge_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source
    #   The updated `DataSource` object.
    #   @return [Types::DataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Struct.new(
      :data_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The domain name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the `DomainName`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDomainNameRequest AWS API Documentation
    #
    class UpdateDomainNameRequest < Struct.new(
      :domain_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name_config
    #   The configuration for the `DomainName`.
    #   @return [Types::DomainNameConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateDomainNameResponse AWS API Documentation
    #
    class UpdateDomainNameResponse < Struct.new(
      :domain_name_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The GraphQL API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The `Function` name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The `Function` description.
    #   @return [String]
    #
    # @!attribute [rw] function_id
    #   The function ID.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The `Function` `DataSource` name.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The `Function` request mapping template. Functions support only the
    #   2018-05-29 version of the request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The `Function` request mapping template.
    #   @return [String]
    #
    # @!attribute [rw] function_version
    #   The `version` of the request mapping template. Currently, the
    #   supported value is 2018-05-29. Note that when using VTL and mapping
    #   templates, the `functionVersion` is required.
    #   @return [String]
    #
    # @!attribute [rw] sync_config
    #   Describes a Sync configuration for a resolver.
    #
    #   Specifies which Conflict Detection strategy and Resolution strategy
    #   to use when the resolver is invoked.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `function` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateFunctionRequest AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] function_configuration
    #   The `Function` object.
    #   @return [Types::FunctionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateFunctionResponse AWS API Documentation
    #
    class UpdateFunctionResponse < Struct.new(
      :function_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new name for the `GraphqlApi` object.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The Amazon CloudWatch Logs configuration for the `GraphqlApi`
    #   object.
    #   @return [Types::LogConfig]
    #
    # @!attribute [rw] authentication_type
    #   The new authentication type for the `GraphqlApi` object.
    #   @return [String]
    #
    # @!attribute [rw] user_pool_config
    #   The new Amazon Cognito user pool configuration for the `~GraphqlApi`
    #   object.
    #   @return [Types::UserPoolConfig]
    #
    # @!attribute [rw] open_id_connect_config
    #   The OpenID Connect configuration for the `GraphqlApi` object.
    #   @return [Types::OpenIDConnectConfig]
    #
    # @!attribute [rw] additional_authentication_providers
    #   A list of additional authentication providers for the `GraphqlApi`
    #   API.
    #   @return [Array<Types::AdditionalAuthenticationProvider>]
    #
    # @!attribute [rw] xray_enabled
    #   A flag indicating whether to use X-Ray tracing for the `GraphqlApi`.
    #   @return [Boolean]
    #
    # @!attribute [rw] lambda_authorizer_config
    #   Configuration for Lambda function authorization.
    #   @return [Types::LambdaAuthorizerConfig]
    #
    # @!attribute [rw] merged_api_execution_role_arn
    #   The Identity and Access Management service role ARN for a merged
    #   API. The AppSync service assumes this role on behalf of the Merged
    #   API to validate access to source APIs at runtime and to prompt the
    #   `AUTO_MERGE` to update the merged API endpoint with the source API
    #   changes automatically.
    #   @return [String]
    #
    # @!attribute [rw] owner_contact
    #   The owner contact information for an API resource.
    #
    #   This field accepts any string input with a length of 0 - 256
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApiRequest AWS API Documentation
    #
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
      :owner_contact)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graphql_api
    #   The updated `GraphqlApi` object.
    #   @return [Types::GraphqlApi]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateGraphqlApiResponse AWS API Documentation
    #
    class UpdateGraphqlApiResponse < Struct.new(
      :graphql_api)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The new type name.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   The new field name.
    #   @return [String]
    #
    # @!attribute [rw] data_source_name
    #   The new data source name.
    #   @return [String]
    #
    # @!attribute [rw] request_mapping_template
    #   The new request mapping template.
    #
    #   A resolver uses a request mapping template to convert a GraphQL
    #   expression into a format that a data source can understand. Mapping
    #   templates are written in Apache Velocity Template Language (VTL).
    #
    #   VTL request mapping templates are optional when using an Lambda data
    #   source. For all other data sources, VTL request and response mapping
    #   templates are required.
    #   @return [String]
    #
    # @!attribute [rw] response_mapping_template
    #   The new response mapping template.
    #   @return [String]
    #
    # @!attribute [rw] kind
    #   The resolver type.
    #
    #   * **UNIT**: A UNIT resolver type. A UNIT resolver is the default
    #     resolver type. You can use a UNIT resolver to run a GraphQL query
    #     against a single data source.
    #
    #   * **PIPELINE**: A PIPELINE resolver type. You can use a PIPELINE
    #     resolver to invoke a series of `Function` objects in a serial
    #     manner. You can use a pipeline resolver to run a GraphQL query
    #     against multiple data sources.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_config
    #   The `PipelineConfig`.
    #   @return [Types::PipelineConfig]
    #
    # @!attribute [rw] sync_config
    #   The `SyncConfig` for a resolver attached to a versioned data source.
    #   @return [Types::SyncConfig]
    #
    # @!attribute [rw] caching_config
    #   The caching configuration for the resolver.
    #   @return [Types::CachingConfig]
    #
    # @!attribute [rw] max_batch_size
    #   The maximum batching size for a resolver.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   Describes a runtime used by an Amazon Web Services AppSync pipeline
    #   resolver or Amazon Web Services AppSync function. Specifies the name
    #   and version of the runtime to use. Note that if a runtime is
    #   specified, code must also be specified.
    #   @return [Types::AppSyncRuntime]
    #
    # @!attribute [rw] code
    #   The `resolver` code that contains the request and response
    #   functions. When code is used, the `runtime` is required. The
    #   `runtime` value must be `APPSYNC_JS`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolverRequest AWS API Documentation
    #
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
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolver
    #   The updated `Resolver` object.
    #   @return [Types::Resolver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateResolverResponse AWS API Documentation
    #
    class UpdateResolverResponse < Struct.new(
      :resolver)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] association_id
    #   The ID generated by the AppSync service for the source API
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] merged_api_identifier
    #   The identifier of the AppSync Merged API. This is generated by the
    #   AppSync service. In most cases, Merged APIs (especially in your
    #   account) only require the API ID value or ARN of the merged API.
    #   However, Merged APIs in other accounts (cross-account use cases)
    #   strictly require the full resource ARN of the merged API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description field.
    #   @return [String]
    #
    # @!attribute [rw] source_api_association_config
    #   The `SourceApiAssociationConfig` object data.
    #   @return [Types::SourceApiAssociationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateSourceApiAssociationRequest AWS API Documentation
    #
    class UpdateSourceApiAssociationRequest < Struct.new(
      :association_id,
      :merged_api_identifier,
      :description,
      :source_api_association_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_api_association
    #   The `SourceApiAssociation` object data.
    #   @return [Types::SourceApiAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateSourceApiAssociationResponse AWS API Documentation
    #
    class UpdateSourceApiAssociationResponse < Struct.new(
      :source_api_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_id
    #   The API ID.
    #   @return [String]
    #
    # @!attribute [rw] type_name
    #   The new type name.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The new definition.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The new type format: SDL or JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateTypeRequest AWS API Documentation
    #
    class UpdateTypeRequest < Struct.new(
      :api_id,
      :type_name,
      :definition,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] type
    #   The updated `Type` object.
    #   @return [Types::Type]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UpdateTypeResponse AWS API Documentation
    #
    class UpdateTypeResponse < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an Amazon Cognito user pool configuration.
    #
    # @!attribute [rw] user_pool_id
    #   The user pool ID.
    #   @return [String]
    #
    # @!attribute [rw] aws_region
    #   The Amazon Web Services Region in which the user pool was created.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action that you want your GraphQL API to take when a request
    #   that uses Amazon Cognito user pool authentication doesn't match the
    #   Amazon Cognito user pool configuration.
    #   @return [String]
    #
    # @!attribute [rw] app_id_client_regex
    #   A regular expression for validating the incoming Amazon Cognito user
    #   pool app client ID. If this value isn't set, no filtering is
    #   applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appsync-2017-07-25/UserPoolConfig AWS API Documentation
    #
    class UserPoolConfig < Struct.new(
      :user_pool_id,
      :aws_region,
      :default_action,
      :app_id_client_regex)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
