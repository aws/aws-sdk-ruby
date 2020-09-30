# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityHub
  module Types

    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         master_id: "NonEmptyString", # required
    #         invitation_id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] master_id
    #   The account ID of the Security Hub master account that sent the
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent from the Security Hub master account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :master_id,
      :invitation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AcceptInvitationResponse AWS API Documentation
    #
    class AcceptInvitationResponse < Aws::EmptyStructure; end

    # You don't have permission to perform the action specified in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an AWS account.
    #
    # @note When making an API call, you may pass AccountDetails
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId",
    #         email: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] account_id
    #   The ID of an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email of an AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AccountDetails AWS API Documentation
    #
    class AccountDetails < Struct.new(
      :account_id,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # An `ActionTarget` object.
    #
    # @!attribute [rw] action_target_arn
    #   The ARN for the target action.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the target action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ActionTarget AWS API Documentation
    #
    class ActionTarget < Struct.new(
      :action_target_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Availability Zone.
    #
    # @note When making an API call, you may pass AvailabilityZone
    #   data as a hash:
    #
    #       {
    #         zone_name: "NonEmptyString",
    #         subnet_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] zone_name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet. You can specify one subnet per Availability
    #   Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :zone_name,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about settings for logging access for the stage.
    #
    # @note When making an API call, you may pass AwsApiGatewayAccessLogSettings
    #   data as a hash:
    #
    #       {
    #         format: "NonEmptyString",
    #         destination_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] format
    #   A single-line format of the access logs of data, as specified by
    #   selected `$context` variables. The format must include at least
    #   `$context.requestId`.
    #   @return [String]
    #
    # @!attribute [rw] destination_arn
    #   The ARN of the CloudWatch Logs log group that receives the access
    #   logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayAccessLogSettings AWS API Documentation
    #
    class AwsApiGatewayAccessLogSettings < Struct.new(
      :format,
      :destination_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about settings for canary deployment in the
    # stage.
    #
    # @note When making an API call, you may pass AwsApiGatewayCanarySettings
    #   data as a hash:
    #
    #       {
    #         percent_traffic: 1.0,
    #         deployment_id: "NonEmptyString",
    #         stage_variable_overrides: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         use_stage_cache: false,
    #       }
    #
    # @!attribute [rw] percent_traffic
    #   The percentage of traffic that is diverted to a canary deployment.
    #   @return [Float]
    #
    # @!attribute [rw] deployment_id
    #   The deployment identifier for the canary deployment.
    #   @return [String]
    #
    # @!attribute [rw] stage_variable_overrides
    #   Stage variables that are overridden in the canary release
    #   deployment. The variables include new stage variables that are
    #   introduced in the canary.
    #
    #   Each variable is represented as a string-to-string map between the
    #   stage variable name and the variable value.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] use_stage_cache
    #   Indicates whether the canary deployment uses the stage cache.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayCanarySettings AWS API Documentation
    #
    class AwsApiGatewayCanarySettings < Struct.new(
      :percent_traffic,
      :deployment_id,
      :stage_variable_overrides,
      :use_stage_cache)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the endpoints for the API.
    #
    # @note When making an API call, you may pass AwsApiGatewayEndpointConfiguration
    #   data as a hash:
    #
    #       {
    #         types: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] types
    #   A list of endpoint types for the REST API.
    #
    #   For an edge-optimized API, the endpoint type is `EDGE`. For a
    #   Regional API, the endpoint type is `REGIONAL`. For a private API,
    #   the endpoint type is `PRIVATE`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayEndpointConfiguration AWS API Documentation
    #
    class AwsApiGatewayEndpointConfiguration < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings for a method for the stage.
    #
    # @note When making an API call, you may pass AwsApiGatewayMethodSettings
    #   data as a hash:
    #
    #       {
    #         metrics_enabled: false,
    #         logging_level: "NonEmptyString",
    #         data_trace_enabled: false,
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #         caching_enabled: false,
    #         cache_ttl_in_seconds: 1,
    #         cache_data_encrypted: false,
    #         require_authorization_for_cache_control: false,
    #         unauthorized_cache_control_header_strategy: "NonEmptyString",
    #         http_method: "NonEmptyString",
    #         resource_path: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] metrics_enabled
    #   Indicates whether CloudWatch metrics are enabled for the method.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   The logging level for this method. The logging level affects the log
    #   entries that are pushed to CloudWatch Logs.
    #
    #   If the logging level is `ERROR`, then the logs only include
    #   error-level entries.
    #
    #   If the logging level is `INFO`, then the logs include both `ERROR`
    #   events and extra informational events.
    #
    #   Valid values: `OFF` \| `ERROR` \| `INFO`
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Indicates whether data trace logging is enabled for the method. Data
    #   trace logging affects the log entries that are pushed to CloudWatch
    #   Logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   The throttling burst limit for the method.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   The throttling rate limit for the method.
    #   @return [Float]
    #
    # @!attribute [rw] caching_enabled
    #   Indicates whether responses are cached and returned for requests.
    #   For responses to be cached, a cache cluster must be enabled on the
    #   stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_ttl_in_seconds
    #   Specifies the time to live (TTL), in seconds, for cached responses.
    #   The higher the TTL, the longer the response is cached.
    #   @return [Integer]
    #
    # @!attribute [rw] cache_data_encrypted
    #   Indicates whether the cached responses are encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_authorization_for_cache_control
    #   Indicates whether authorization is required for a cache invalidation
    #   request.
    #   @return [Boolean]
    #
    # @!attribute [rw] unauthorized_cache_control_header_strategy
    #   Indicates how to handle unauthorized requests for cache
    #   invalidation.
    #
    #   Valid values: `FAIL_WITH_403` \| `SUCCEED_WITH_RESPONSE_HEADER` \|
    #   `SUCCEED_WITHOUT_RESPONSE_HEADER`
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTP method. You can use an asterisk (*) as a wildcard to apply
    #   method settings to multiple methods.
    #   @return [String]
    #
    # @!attribute [rw] resource_path
    #   The resource path for this method. Forward slashes (/) are encoded
    #   as ~1 . The initial slash must include a forward slash.
    #
    #   For example, the path value `/resource/subresource` must be encoded
    #   as `/~1resource~1subresource`.
    #
    #   To specify the root path, use only a slash (/). You can use an
    #   asterisk (*) as a wildcard to apply method settings to multiple
    #   methods.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayMethodSettings AWS API Documentation
    #
    class AwsApiGatewayMethodSettings < Struct.new(
      :metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit,
      :caching_enabled,
      :cache_ttl_in_seconds,
      :cache_data_encrypted,
      :require_authorization_for_cache_control,
      :unauthorized_cache_control_header_strategy,
      :http_method,
      :resource_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # contains information about a REST API in version 1 of Amazon API
    # Gateway.
    #
    # @note When making an API call, you may pass AwsApiGatewayRestApiDetails
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString",
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         created_date: "NonEmptyString",
    #         version: "NonEmptyString",
    #         binary_media_types: ["NonEmptyString"],
    #         minimum_compression_size: 1,
    #         api_key_source: "NonEmptyString",
    #         endpoint_configuration: {
    #           types: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the REST API.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates when the API was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version identifier for the REST API.
    #   @return [String]
    #
    # @!attribute [rw] binary_media_types
    #   The list of binary media types supported by the REST API.
    #   @return [Array<String>]
    #
    # @!attribute [rw] minimum_compression_size
    #   The minimum size in bytes of a payload before compression is
    #   enabled.
    #
    #   If `null`, then compression is disabled.
    #
    #   If 0, then all payloads are compressed.
    #   @return [Integer]
    #
    # @!attribute [rw] api_key_source
    #   The source of the API key for metering requests according to a usage
    #   plan.
    #
    #   `HEADER` indicates whether to read the API key from the X-API-Key
    #   header of a request.
    #
    #   `AUTHORIZER` indicates whether to read the API key from the
    #   `UsageIdentifierKey` from a custom authorizer.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configuration
    #   The endpoint configuration of the REST API.
    #   @return [Types::AwsApiGatewayEndpointConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayRestApiDetails AWS API Documentation
    #
    class AwsApiGatewayRestApiDetails < Struct.new(
      :id,
      :name,
      :description,
      :created_date,
      :version,
      :binary_media_types,
      :minimum_compression_size,
      :api_key_source,
      :endpoint_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a version 1 Amazon API Gateway stage.
    #
    # @note When making an API call, you may pass AwsApiGatewayStageDetails
    #   data as a hash:
    #
    #       {
    #         deployment_id: "NonEmptyString",
    #         client_certificate_id: "NonEmptyString",
    #         stage_name: "NonEmptyString",
    #         description: "NonEmptyString",
    #         cache_cluster_enabled: false,
    #         cache_cluster_size: "NonEmptyString",
    #         cache_cluster_status: "NonEmptyString",
    #         method_settings: [
    #           {
    #             metrics_enabled: false,
    #             logging_level: "NonEmptyString",
    #             data_trace_enabled: false,
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #             caching_enabled: false,
    #             cache_ttl_in_seconds: 1,
    #             cache_data_encrypted: false,
    #             require_authorization_for_cache_control: false,
    #             unauthorized_cache_control_header_strategy: "NonEmptyString",
    #             http_method: "NonEmptyString",
    #             resource_path: "NonEmptyString",
    #           },
    #         ],
    #         variables: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         documentation_version: "NonEmptyString",
    #         access_log_settings: {
    #           format: "NonEmptyString",
    #           destination_arn: "NonEmptyString",
    #         },
    #         canary_settings: {
    #           percent_traffic: 1.0,
    #           deployment_id: "NonEmptyString",
    #           stage_variable_overrides: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           use_stage_cache: false,
    #         },
    #         tracing_enabled: false,
    #         created_date: "NonEmptyString",
    #         last_updated_date: "NonEmptyString",
    #         web_acl_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment that the stage points to.
    #   @return [String]
    #
    # @!attribute [rw] client_certificate_id
    #   The identifier of the client certificate for the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_enabled
    #   Indicates whether a cache cluster is enabled for the stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] cache_cluster_size
    #   If a cache cluster is enabled, the size of the cache cluster.
    #   @return [String]
    #
    # @!attribute [rw] cache_cluster_status
    #   If a cache cluster is enabled, the status of the cache cluster.
    #   @return [String]
    #
    # @!attribute [rw] method_settings
    #   Defines the method settings for the stage.
    #   @return [Array<Types::AwsApiGatewayMethodSettings>]
    #
    # @!attribute [rw] variables
    #   A map that defines the stage variables for the stage.
    #
    #   Variable names can have alphanumeric and underscore characters.
    #
    #   Variable values can contain the following characters:
    #
    #   * Uppercase and lowercase letters
    #
    #   * Numbers
    #
    #   * Special characters -.\_~:/?#&amp;=,
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] documentation_version
    #   The version of the API documentation that is associated with the
    #   stage.
    #   @return [String]
    #
    # @!attribute [rw] access_log_settings
    #   Settings for logging access for the stage.
    #   @return [Types::AwsApiGatewayAccessLogSettings]
    #
    # @!attribute [rw] canary_settings
    #   Information about settings for canary deployment in the stage.
    #   @return [Types::AwsApiGatewayCanarySettings]
    #
    # @!attribute [rw] tracing_enabled
    #   Indicates whether active tracing with AWS X-Ray is enabled for the
    #   stage.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_date
    #   Indicates when the stage was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   Indicates when the stage was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] web_acl_arn
    #   The ARN of the web ACL associated with the stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayStageDetails AWS API Documentation
    #
    class AwsApiGatewayStageDetails < Struct.new(
      :deployment_id,
      :client_certificate_id,
      :stage_name,
      :description,
      :cache_cluster_enabled,
      :cache_cluster_size,
      :cache_cluster_status,
      :method_settings,
      :variables,
      :documentation_version,
      :access_log_settings,
      :canary_settings,
      :tracing_enabled,
      :created_date,
      :last_updated_date,
      :web_acl_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version 2 API in Amazon API Gateway.
    #
    # @note When making an API call, you may pass AwsApiGatewayV2ApiDetails
    #   data as a hash:
    #
    #       {
    #         api_endpoint: "NonEmptyString",
    #         api_id: "NonEmptyString",
    #         api_key_selection_expression: "NonEmptyString",
    #         created_date: "NonEmptyString",
    #         description: "NonEmptyString",
    #         version: "NonEmptyString",
    #         name: "NonEmptyString",
    #         protocol_type: "NonEmptyString",
    #         route_selection_expression: "NonEmptyString",
    #         cors_configuration: {
    #           allow_origins: ["NonEmptyString"],
    #           allow_credentials: false,
    #           expose_headers: ["NonEmptyString"],
    #           max_age: 1,
    #           allow_methods: ["NonEmptyString"],
    #           allow_headers: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] api_endpoint
    #   The URI of the API.
    #
    #   Uses the format ` <api-id>.execute-api.<region>.amazonaws.com`
    #
    #   The stage name is typically appended to the URI to form a complete
    #   path to a deployed API stage.
    #   @return [String]
    #
    # @!attribute [rw] api_id
    #   The identifier of the API.
    #   @return [String]
    #
    # @!attribute [rw] api_key_selection_expression
    #   An API key selection expression. Supported only for WebSocket APIs.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates when the API was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the API.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version identifier for the API.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API.
    #   @return [String]
    #
    # @!attribute [rw] protocol_type
    #   The API protocol for the API.
    #
    #   Valid values: `WEBSOCKET` \| `HTTP`
    #   @return [String]
    #
    # @!attribute [rw] route_selection_expression
    #   The route selection expression for the API.
    #
    #   For HTTP APIs, must be `$\{request.method\} $\{request.path\}`. This
    #   is the default value for HTTP APIs.
    #
    #   For WebSocket APIs, there is no default value.
    #   @return [String]
    #
    # @!attribute [rw] cors_configuration
    #   A cross-origin resource sharing (CORS) configuration. Supported only
    #   for HTTP APIs.
    #   @return [Types::AwsCorsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2ApiDetails AWS API Documentation
    #
    class AwsApiGatewayV2ApiDetails < Struct.new(
      :api_endpoint,
      :api_id,
      :api_key_selection_expression,
      :created_date,
      :description,
      :version,
      :name,
      :protocol_type,
      :route_selection_expression,
      :cors_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains route settings for a stage.
    #
    # @note When making an API call, you may pass AwsApiGatewayV2RouteSettings
    #   data as a hash:
    #
    #       {
    #         detailed_metrics_enabled: false,
    #         logging_level: "NonEmptyString",
    #         data_trace_enabled: false,
    #         throttling_burst_limit: 1,
    #         throttling_rate_limit: 1.0,
    #       }
    #
    # @!attribute [rw] detailed_metrics_enabled
    #   Indicates whether detailed metrics are enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] logging_level
    #   The logging level. The logging level affects the log entries that
    #   are pushed to CloudWatch Logs. Supported only for WebSocket APIs.
    #
    #   If the logging level is `ERROR`, then the logs only include
    #   error-level entries.
    #
    #   If the logging level is `INFO`, then the logs include both `ERROR`
    #   events and extra informational events.
    #
    #   Valid values: `OFF` \| `ERROR` \| `INFO`
    #   @return [String]
    #
    # @!attribute [rw] data_trace_enabled
    #   Indicates whether data trace logging is enabled. Data trace logging
    #   affects the log entries that are pushed to CloudWatch Logs.
    #   Supported only for WebSocket APIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] throttling_burst_limit
    #   The throttling burst limit.
    #   @return [Integer]
    #
    # @!attribute [rw] throttling_rate_limit
    #   The throttling rate limit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2RouteSettings AWS API Documentation
    #
    class AwsApiGatewayV2RouteSettings < Struct.new(
      :detailed_metrics_enabled,
      :logging_level,
      :data_trace_enabled,
      :throttling_burst_limit,
      :throttling_rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a version 2 stage for Amazon API Gateway.
    #
    # @note When making an API call, you may pass AwsApiGatewayV2StageDetails
    #   data as a hash:
    #
    #       {
    #         created_date: "NonEmptyString",
    #         description: "NonEmptyString",
    #         default_route_settings: {
    #           detailed_metrics_enabled: false,
    #           logging_level: "NonEmptyString",
    #           data_trace_enabled: false,
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         deployment_id: "NonEmptyString",
    #         last_updated_date: "NonEmptyString",
    #         route_settings: {
    #           detailed_metrics_enabled: false,
    #           logging_level: "NonEmptyString",
    #           data_trace_enabled: false,
    #           throttling_burst_limit: 1,
    #           throttling_rate_limit: 1.0,
    #         },
    #         stage_name: "NonEmptyString",
    #         stage_variables: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         access_log_settings: {
    #           format: "NonEmptyString",
    #           destination_arn: "NonEmptyString",
    #         },
    #         auto_deploy: false,
    #         last_deployment_status_message: "NonEmptyString",
    #         api_gateway_managed: false,
    #       }
    #
    # @!attribute [rw] created_date
    #   Indicates when the stage was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] default_route_settings
    #   Default route settings for the stage.
    #   @return [Types::AwsApiGatewayV2RouteSettings]
    #
    # @!attribute [rw] deployment_id
    #   The identifier of the deployment that the stage is associated with.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   Indicates when the stage was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] route_settings
    #   The route settings for the stage.
    #   @return [Types::AwsApiGatewayV2RouteSettings]
    #
    # @!attribute [rw] stage_name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] stage_variables
    #   A map that defines the stage variables for the stage.
    #
    #   Variable names can have alphanumeric and underscore characters.
    #
    #   Variable values can contain the following characters:
    #
    #   * Uppercase and lowercase letters
    #
    #   * Numbers
    #
    #   * Special characters -.\_~:/?#&amp;=,
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_log_settings
    #   Information about settings for logging access for the stage.
    #   @return [Types::AwsApiGatewayAccessLogSettings]
    #
    # @!attribute [rw] auto_deploy
    #   Indicates whether updates to an API automatically trigger a new
    #   deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_deployment_status_message
    #   The status of the last deployment of a stage. Supported only if the
    #   stage has automatic deployment enabled.
    #   @return [String]
    #
    # @!attribute [rw] api_gateway_managed
    #   Indicates whether the stage is managed by API Gateway.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsApiGatewayV2StageDetails AWS API Documentation
    #
    class AwsApiGatewayV2StageDetails < Struct.new(
      :created_date,
      :description,
      :default_route_settings,
      :deployment_id,
      :last_updated_date,
      :route_settings,
      :stage_name,
      :stage_variables,
      :access_log_settings,
      :auto_deploy,
      :last_deployment_status_message,
      :api_gateway_managed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an auto scaling group.
    #
    # @note When making an API call, you may pass AwsAutoScalingAutoScalingGroupDetails
    #   data as a hash:
    #
    #       {
    #         launch_configuration_name: "NonEmptyString",
    #         load_balancer_names: ["NonEmptyString"],
    #         health_check_type: "NonEmptyString",
    #         health_check_grace_period: 1,
    #         created_time: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] launch_configuration_name
    #   The name of the launch configuration.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_names
    #   The list of load balancers associated with the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_check_type
    #   The service to use for the health checks.
    #   @return [String]
    #
    # @!attribute [rw] health_check_grace_period
    #   The amount of time, in seconds, that Amazon EC2 Auto Scaling waits
    #   before it checks the health status of an EC2 instance that has come
    #   into service.
    #   @return [Integer]
    #
    # @!attribute [rw] created_time
    #   Indicates when the auto scaling group was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsAutoScalingAutoScalingGroupDetails AWS API Documentation
    #
    class AwsAutoScalingAutoScalingGroupDetails < Struct.new(
      :launch_configuration_name,
      :load_balancer_names,
      :health_check_type,
      :health_check_grace_period,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an AWS Certificate Manager certificate.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateDetails
    #   data as a hash:
    #
    #       {
    #         certificate_authority_arn: "NonEmptyString",
    #         created_at: "NonEmptyString",
    #         domain_name: "NonEmptyString",
    #         domain_validation_options: [
    #           {
    #             domain_name: "NonEmptyString",
    #             resource_record: {
    #               name: "NonEmptyString",
    #               type: "NonEmptyString",
    #               value: "NonEmptyString",
    #             },
    #             validation_domain: "NonEmptyString",
    #             validation_emails: ["NonEmptyString"],
    #             validation_method: "NonEmptyString",
    #             validation_status: "NonEmptyString",
    #           },
    #         ],
    #         extended_key_usages: [
    #           {
    #             name: "NonEmptyString",
    #             o_id: "NonEmptyString",
    #           },
    #         ],
    #         failure_reason: "NonEmptyString",
    #         imported_at: "NonEmptyString",
    #         in_use_by: ["NonEmptyString"],
    #         issued_at: "NonEmptyString",
    #         issuer: "NonEmptyString",
    #         key_algorithm: "NonEmptyString",
    #         key_usages: [
    #           {
    #             name: "NonEmptyString",
    #           },
    #         ],
    #         not_after: "NonEmptyString",
    #         not_before: "NonEmptyString",
    #         options: {
    #           certificate_transparency_logging_preference: "NonEmptyString",
    #         },
    #         renewal_eligibility: "NonEmptyString",
    #         renewal_summary: {
    #           domain_validation_options: [
    #             {
    #               domain_name: "NonEmptyString",
    #               resource_record: {
    #                 name: "NonEmptyString",
    #                 type: "NonEmptyString",
    #                 value: "NonEmptyString",
    #               },
    #               validation_domain: "NonEmptyString",
    #               validation_emails: ["NonEmptyString"],
    #               validation_method: "NonEmptyString",
    #               validation_status: "NonEmptyString",
    #             },
    #           ],
    #           renewal_status: "NonEmptyString",
    #           renewal_status_reason: "NonEmptyString",
    #           updated_at: "NonEmptyString",
    #         },
    #         serial: "NonEmptyString",
    #         signature_algorithm: "NonEmptyString",
    #         status: "NonEmptyString",
    #         subject: "NonEmptyString",
    #         subject_alternative_names: ["NonEmptyString"],
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] certificate_authority_arn
    #   The ARN of the private certificate authority (CA) that will be used
    #   to issue the certificate.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the certificate was requested.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The fully qualified domain name (FQDN), such as www.example.com,
    #   that is secured by the certificate.
    #   @return [String]
    #
    # @!attribute [rw] domain_validation_options
    #   Contains information about the initial validation of each domain
    #   name that occurs as a result of the `RequestCertificate` request.
    #
    #   Only provided if the certificate type is `AMAZON_ISSUED`.
    #   @return [Array<Types::AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute [rw] extended_key_usages
    #   Contains a list of Extended Key Usage X.509 v3 extension objects.
    #   Each object specifies a purpose for which the certificate public key
    #   can be used and consists of a name and an object identifier (OID).
    #   @return [Array<Types::AwsCertificateManagerCertificateExtendedKeyUsage>]
    #
    # @!attribute [rw] failure_reason
    #   For a failed certificate request, the reason for the failure.
    #
    #   Valid values: `NO_AVAILABLE_CONTACTS` \|
    #   `ADDITIONAL_VERIFICATION_REQUIRED` \| `DOMAIN_NOT_ALLOWED` \|
    #   `INVALID_PUBLIC_DOMAIN` \| `DOMAIN_VALIDATION_DENIED` \| `CAA_ERROR`
    #   \| `PCA_LIMIT_EXCEEDED` \| `PCA_INVALID_ARN` \| `PCA_INVALID_STATE`
    #   \| `PCA_REQUEST_FAILED` \| `PCA_NAME_CONSTRAINTS_VALIDATION` \|
    #   `PCA_RESOURCE_NOT_FOUND` \| `PCA_INVALID_ARGS` \|
    #   `PCA_INVALID_DURATION` \| `PCA_ACCESS_DENIED` \| `SLR_NOT_FOUND` \|
    #   `OTHER`
    #   @return [String]
    #
    # @!attribute [rw] imported_at
    #   Indicates when the certificate was imported. Provided if the
    #   certificate type is `IMPORTED`.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] in_use_by
    #   The list of ARNs for the AWS resources that use the certificate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] issued_at
    #   Indicates when the certificate was issued. Provided if the
    #   certificate type is `AMAZON_ISSUED`.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] issuer
    #   The name of the certificate authority that issued and signed the
    #   certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_algorithm
    #   The algorithm that was used to generate the public-private key pair.
    #
    #   Valid values: `RSA_2048` \| `RSA_1024` \|` RSA_4096` \|
    #   `EC_prime256v1` \| `EC_secp384r1` \| `EC_secp521r1`
    #   @return [String]
    #
    # @!attribute [rw] key_usages
    #   A list of key usage X.509 v3 extension objects.
    #   @return [Array<Types::AwsCertificateManagerCertificateKeyUsage>]
    #
    # @!attribute [rw] not_after
    #   The time after which the certificate becomes invalid.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] not_before
    #   The time before which the certificate is not valid.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] options
    #   Provides a value that specifies whether to add the certificate to a
    #   transparency log.
    #   @return [Types::AwsCertificateManagerCertificateOptions]
    #
    # @!attribute [rw] renewal_eligibility
    #   Whether the certificate is eligible for renewal.
    #
    #   Valid values: `ELIGIBLE` \| `INELIGIBLE`
    #   @return [String]
    #
    # @!attribute [rw] renewal_summary
    #   Information about the status of the AWS Certificate Manager managed
    #   renewal for the certificate. Provided only when the certificate type
    #   is `AMAZON_ISSUED`.
    #   @return [Types::AwsCertificateManagerCertificateRenewalSummary]
    #
    # @!attribute [rw] serial
    #   The serial number of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] signature_algorithm
    #   The algorithm that was used to sign the certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the certificate.
    #
    #   Valid values: `PENDING_VALIDATION` \| `ISSUED` \| `INACTIVE` \|
    #   `EXPIRED` \| `VALIDATION_TIMED_OUT` \| `REVOKED` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The name of the entity that is associated with the public key
    #   contained in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] subject_alternative_names
    #   One or more domain names (subject alternative names) included in the
    #   certificate. This list contains the domain names that are bound to
    #   the public key that is contained in the certificate.
    #
    #   The subject alternative names include the canonical domain name (CN)
    #   of the certificate and additional domain names that can be used to
    #   connect to the website.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The source of the certificate. For certificates that AWS Certificate
    #   Manager provides, `Type` is `AMAZON_ISSUED`. For certificates that
    #   are imported with `ImportCertificate`, `Type` is `IMPORTED`.
    #
    #   Valid values: `IMPORTED` \| `AMAZON_ISSUED` \| `PRIVATE`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateDetails AWS API Documentation
    #
    class AwsCertificateManagerCertificateDetails < Struct.new(
      :certificate_authority_arn,
      :created_at,
      :domain_name,
      :domain_validation_options,
      :extended_key_usages,
      :failure_reason,
      :imported_at,
      :in_use_by,
      :issued_at,
      :issuer,
      :key_algorithm,
      :key_usages,
      :not_after,
      :not_before,
      :options,
      :renewal_eligibility,
      :renewal_summary,
      :serial,
      :signature_algorithm,
      :status,
      :subject,
      :subject_alternative_names,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about one of the following:
    #
    # * The initial validation of each domain name that occurs as a result
    #   of the `RequestCertificate` request
    #
    # * The validation of each domain name in the certificate, as it
    #   pertains to AWS Certificate Manager managed renewal
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateDomainValidationOption
    #   data as a hash:
    #
    #       {
    #         domain_name: "NonEmptyString",
    #         resource_record: {
    #           name: "NonEmptyString",
    #           type: "NonEmptyString",
    #           value: "NonEmptyString",
    #         },
    #         validation_domain: "NonEmptyString",
    #         validation_emails: ["NonEmptyString"],
    #         validation_method: "NonEmptyString",
    #         validation_status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] domain_name
    #   A fully qualified domain name (FQDN) in the certificate.
    #   @return [String]
    #
    # @!attribute [rw] resource_record
    #   The CNAME record that is added to the DNS database for domain
    #   validation.
    #   @return [Types::AwsCertificateManagerCertificateResourceRecord]
    #
    # @!attribute [rw] validation_domain
    #   The domain name that AWS Certificate Manager uses to send domain
    #   validation emails.
    #   @return [String]
    #
    # @!attribute [rw] validation_emails
    #   A list of email addresses that AWS Certificate Manager uses to send
    #   domain validation emails.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation_method
    #   The method used to validate the domain name.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The validation status of the domain name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateDomainValidationOption AWS API Documentation
    #
    class AwsCertificateManagerCertificateDomainValidationOption < Struct.new(
      :domain_name,
      :resource_record,
      :validation_domain,
      :validation_emails,
      :validation_method,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an extended key usage X.509 v3 extension
    # object.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateExtendedKeyUsage
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         o_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of an extension value. Indicates the purpose for which the
    #   certificate public key can be used.
    #   @return [String]
    #
    # @!attribute [rw] o_id
    #   An object identifier (OID) for the extension value.
    #
    #   The format is numbers separated by periods.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateExtendedKeyUsage AWS API Documentation
    #
    class AwsCertificateManagerCertificateExtendedKeyUsage < Struct.new(
      :name,
      :o_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a key usage X.509 v3 extension object.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateKeyUsage
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The key usage extension name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateKeyUsage AWS API Documentation
    #
    class AwsCertificateManagerCertificateKeyUsage < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains other options for the certificate.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateOptions
    #   data as a hash:
    #
    #       {
    #         certificate_transparency_logging_preference: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] certificate_transparency_logging_preference
    #   Whether to add the certificate to a transparency log.
    #
    #   Valid values: `DISABLED` \| `ENABLED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateOptions AWS API Documentation
    #
    class AwsCertificateManagerCertificateOptions < Struct.new(
      :certificate_transparency_logging_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the AWS Certificate Manager managed renewal
    # for an `AMAZON_ISSUED` certificate.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateRenewalSummary
    #   data as a hash:
    #
    #       {
    #         domain_validation_options: [
    #           {
    #             domain_name: "NonEmptyString",
    #             resource_record: {
    #               name: "NonEmptyString",
    #               type: "NonEmptyString",
    #               value: "NonEmptyString",
    #             },
    #             validation_domain: "NonEmptyString",
    #             validation_emails: ["NonEmptyString"],
    #             validation_method: "NonEmptyString",
    #             validation_status: "NonEmptyString",
    #           },
    #         ],
    #         renewal_status: "NonEmptyString",
    #         renewal_status_reason: "NonEmptyString",
    #         updated_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] domain_validation_options
    #   Information about the validation of each domain name in the
    #   certificate, as it pertains to AWS Certificate Manager managed
    #   renewal. Provided only when the certificate type is `AMAZON_ISSUED`.
    #   @return [Array<Types::AwsCertificateManagerCertificateDomainValidationOption>]
    #
    # @!attribute [rw] renewal_status
    #   The status of the AWS Certificate Manager managed renewal of the
    #   certificate.
    #
    #   Valid values: `PENDING_AUTO_RENEWAL` \| `PENDING_VALIDATION` \|
    #   `SUCCESS` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] renewal_status_reason
    #   The reason that a renewal request was unsuccessful.
    #
    #   Valid values: `NO_AVAILABLE_CONTACTS` \|
    #   `ADDITIONAL_VERIFICATION_REQUIRED` \| `DOMAIN_NOT_ALLOWED` \|
    #   `INVALID_PUBLIC_DOMAIN` \| `DOMAIN_VALIDATION_DENIED` \| `CAA_ERROR`
    #   \| `PCA_LIMIT_EXCEEDED` \| `PCA_INVALID_ARN` \| `PCA_INVALID_STATE`
    #   \| `PCA_REQUEST_FAILED` \| `PCA_NAME_CONSTRAINTS_VALIDATION` \|
    #   `PCA_RESOURCE_NOT_FOUND` \| `PCA_INVALID_ARGS` \|
    #   `PCA_INVALID_DURATION` \| `PCA_ACCESS_DENIED` \| `SLR_NOT_FOUND` \|
    #   `OTHER`
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Indicates when the renewal summary was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateRenewalSummary AWS API Documentation
    #
    class AwsCertificateManagerCertificateRenewalSummary < Struct.new(
      :domain_validation_options,
      :renewal_status,
      :renewal_status_reason,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about the CNAME record that is added to the DNS
    # database for domain validation.
    #
    # @note When making an API call, you may pass AwsCertificateManagerCertificateResourceRecord
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         type: "NonEmptyString",
    #         value: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCertificateManagerCertificateResourceRecord AWS API Documentation
    #
    class AwsCertificateManagerCertificateResourceRecord < Struct.new(
      :name,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a cache behavior for the distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionCacheBehavior
    #   data as a hash:
    #
    #       {
    #         viewer_protocol_policy: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in an origin.
    #   You can specify the following options:
    #
    #   * `allow-all` - Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https` - CloudFront responds to HTTP requests with an
    #     HTTP status code of 301 (Moved Permanently) and the HTTPS URL. The
    #     viewer then uses the new URL to resubmit.
    #
    #   * `https-only` - CloudFront responds to HTTP request with an HTTP
    #     status code of 403 (Forbidden).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionCacheBehavior AWS API Documentation
    #
    class AwsCloudFrontDistributionCacheBehavior < Struct.new(
      :viewer_protocol_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about caching for the distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionCacheBehaviors
    #   data as a hash:
    #
    #       {
    #         items: [
    #           {
    #             viewer_protocol_policy: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] items
    #   The cache behaviors for the distribution.
    #   @return [Array<Types::AwsCloudFrontDistributionCacheBehavior>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionCacheBehaviors AWS API Documentation
    #
    class AwsCloudFrontDistributionCacheBehaviors < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the default cache configuration for the
    # distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionDefaultCacheBehavior
    #   data as a hash:
    #
    #       {
    #         viewer_protocol_policy: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] viewer_protocol_policy
    #   The protocol that viewers can use to access the files in an origin.
    #   You can specify the following options:
    #
    #   * `allow-all` - Viewers can use HTTP or HTTPS.
    #
    #   * `redirect-to-https` - CloudFront responds to HTTP requests with an
    #     HTTP status code of 301 (Moved Permanently) and the HTTPS URL. The
    #     viewer then uses the new URL to resubmit.
    #
    #   * `https-only` - CloudFront responds to HTTP request with an HTTP
    #     status code of 403 (Forbidden).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionDefaultCacheBehavior AWS API Documentation
    #
    class AwsCloudFrontDistributionDefaultCacheBehavior < Struct.new(
      :viewer_protocol_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A distribution configuration.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionDetails
    #   data as a hash:
    #
    #       {
    #         cache_behaviors: {
    #           items: [
    #             {
    #               viewer_protocol_policy: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         default_cache_behavior: {
    #           viewer_protocol_policy: "NonEmptyString",
    #         },
    #         default_root_object: "NonEmptyString",
    #         domain_name: "NonEmptyString",
    #         etag: "NonEmptyString",
    #         last_modified_time: "NonEmptyString",
    #         logging: {
    #           bucket: "NonEmptyString",
    #           enabled: false,
    #           include_cookies: false,
    #           prefix: "NonEmptyString",
    #         },
    #         origins: {
    #           items: [
    #             {
    #               domain_name: "NonEmptyString",
    #               id: "NonEmptyString",
    #               origin_path: "NonEmptyString",
    #               s3_origin_config: {
    #                 origin_access_identity: "NonEmptyString",
    #               },
    #             },
    #           ],
    #         },
    #         origin_groups: {
    #           items: [
    #             {
    #               failover_criteria: {
    #                 status_codes: {
    #                   items: [1],
    #                   quantity: 1,
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         status: "NonEmptyString",
    #         web_acl_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cache_behaviors
    #   Provides information about the cache configuration for the
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionCacheBehaviors]
    #
    # @!attribute [rw] default_cache_behavior
    #   The default cache behavior for the configuration.
    #   @return [Types::AwsCloudFrontDistributionDefaultCacheBehavior]
    #
    # @!attribute [rw] default_root_object
    #   The object that CloudFront sends in response to requests from the
    #   origin (for example, index.html) when a viewer requests the root URL
    #   for the distribution (http://www.example.com) instead of an object
    #   in your distribution
    #   (http://www.example.com/product-description.html).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name corresponding to the distribution.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The entity tag is a hash of the object.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   Indicates when that the distribution was last modified.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   A complex type that controls whether access logs are written for the
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionLogging]
    #
    # @!attribute [rw] origins
    #   A complex type that contains information about origins for this
    #   distribution.
    #   @return [Types::AwsCloudFrontDistributionOrigins]
    #
    # @!attribute [rw] origin_groups
    #   Provides information about the origin groups in the distribution.
    #   @return [Types::AwsCloudFrontDistributionOriginGroups]
    #
    # @!attribute [rw] status
    #   Indicates the current status of the distribution.
    #   @return [String]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier that specifies the AWS WAF web ACL, if any, to
    #   associate with this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionDetails AWS API Documentation
    #
    class AwsCloudFrontDistributionDetails < Struct.new(
      :cache_behaviors,
      :default_cache_behavior,
      :default_root_object,
      :domain_name,
      :etag,
      :last_modified_time,
      :logging,
      :origins,
      :origin_groups,
      :status,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that controls whether access logs are written for the
    # distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionLogging
    #   data as a hash:
    #
    #       {
    #         bucket: "NonEmptyString",
    #         enabled: false,
    #         include_cookies: false,
    #         prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] bucket
    #   The Amazon S3 bucket to store the access logs in.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   With this field, you can enable or disable the selected
    #   distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_cookies
    #   Specifies whether you want CloudFront to include cookies in access
    #   logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] prefix
    #   An optional string that you want CloudFront to use as a prefix to
    #   the access log filenames for this distribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionLogging AWS API Documentation
    #
    class AwsCloudFrontDistributionLogging < Struct.new(
      :bucket,
      :enabled,
      :include_cookies,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an origin group for the distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginGroup
    #   data as a hash:
    #
    #       {
    #         failover_criteria: {
    #           status_codes: {
    #             items: [1],
    #             quantity: 1,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] failover_criteria
    #   Provides the criteria for an origin group to fail over.
    #   @return [Types::AwsCloudFrontDistributionOriginGroupFailover]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroup AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroup < Struct.new(
      :failover_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about when an origin group fails over.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginGroupFailover
    #   data as a hash:
    #
    #       {
    #         status_codes: {
    #           items: [1],
    #           quantity: 1,
    #         },
    #       }
    #
    # @!attribute [rw] status_codes
    #   Information about the status codes that cause an origin group to
    #   fail over.
    #   @return [Types::AwsCloudFrontDistributionOriginGroupFailoverStatusCodes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroupFailover AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroupFailover < Struct.new(
      :status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status codes that cause an origin group to fail over.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginGroupFailoverStatusCodes
    #   data as a hash:
    #
    #       {
    #         items: [1],
    #         quantity: 1,
    #       }
    #
    # @!attribute [rw] items
    #   The list of status code values that can cause a failover to the next
    #   origin.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] quantity
    #   The number of status codes that can cause a failover.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroupFailoverStatusCodes AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroupFailoverStatusCodes < Struct.new(
      :items,
      :quantity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about origin groups that are associated with the
    # distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginGroups
    #   data as a hash:
    #
    #       {
    #         items: [
    #           {
    #             failover_criteria: {
    #               status_codes: {
    #                 items: [1],
    #                 quantity: 1,
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] items
    #   The list of origin groups.
    #   @return [Array<Types::AwsCloudFrontDistributionOriginGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginGroups AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginGroups < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that describes the Amazon S3 bucket, HTTP server (for
    # example, a web server), Amazon Elemental MediaStore, or other server
    # from which CloudFront gets your files.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginItem
    #   data as a hash:
    #
    #       {
    #         domain_name: "NonEmptyString",
    #         id: "NonEmptyString",
    #         origin_path: "NonEmptyString",
    #         s3_origin_config: {
    #           origin_access_identity: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] domain_name
    #   Amazon S3 origins: The DNS name of the Amazon S3 bucket from which
    #   you want CloudFront to get objects for this origin.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier for the origin or origin group.
    #   @return [String]
    #
    # @!attribute [rw] origin_path
    #   An optional element that causes CloudFront to request your content
    #   from a directory in your Amazon S3 bucket or your custom origin.
    #   @return [String]
    #
    # @!attribute [rw] s3_origin_config
    #   An origin that is an S3 bucket that is not configured with static
    #   website hosting.
    #   @return [Types::AwsCloudFrontDistributionOriginS3OriginConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginItem AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginItem < Struct.new(
      :domain_name,
      :id,
      :origin_path,
      :s3_origin_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an origin that is an S3 bucket that is not
    # configured with static website hosting.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOriginS3OriginConfig
    #   data as a hash:
    #
    #       {
    #         origin_access_identity: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] origin_access_identity
    #   The CloudFront origin access identity to associate with the origin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOriginS3OriginConfig AWS API Documentation
    #
    class AwsCloudFrontDistributionOriginS3OriginConfig < Struct.new(
      :origin_access_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains information about origins and origin
    # groups for this distribution.
    #
    # @note When making an API call, you may pass AwsCloudFrontDistributionOrigins
    #   data as a hash:
    #
    #       {
    #         items: [
    #           {
    #             domain_name: "NonEmptyString",
    #             id: "NonEmptyString",
    #             origin_path: "NonEmptyString",
    #             s3_origin_config: {
    #               origin_access_identity: "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] items
    #   A complex type that contains origins or origin groups for this
    #   distribution.
    #   @return [Array<Types::AwsCloudFrontDistributionOriginItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudFrontDistributionOrigins AWS API Documentation
    #
    class AwsCloudFrontDistributionOrigins < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a CloudTrail trail.
    #
    # @note When making an API call, you may pass AwsCloudTrailTrailDetails
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs_log_group_arn: "NonEmptyString",
    #         cloud_watch_logs_role_arn: "NonEmptyString",
    #         has_custom_event_selectors: false,
    #         home_region: "NonEmptyString",
    #         include_global_service_events: false,
    #         is_multi_region_trail: false,
    #         is_organization_trail: false,
    #         kms_key_id: "NonEmptyString",
    #         log_file_validation_enabled: false,
    #         name: "NonEmptyString",
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #         sns_topic_arn: "NonEmptyString",
    #         sns_topic_name: "NonEmptyString",
    #         trail_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cloud_watch_logs_log_group_arn
    #   The ARN of the log group that CloudTrail logs are delivered to.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_role_arn
    #   The ARN of the role that the CloudWatch Logs endpoint assumes when
    #   it writes to the log group.
    #   @return [String]
    #
    # @!attribute [rw] has_custom_event_selectors
    #   Indicates whether the trail has custom event selectors.
    #   @return [Boolean]
    #
    # @!attribute [rw] home_region
    #   The Region where the trail was created.
    #   @return [String]
    #
    # @!attribute [rw] include_global_service_events
    #   Indicates whether the trail publishes events from global services
    #   such as IAM to the log files.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_multi_region_trail
    #   Indicates whether the trail applies only to the current Region or to
    #   all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] is_organization_trail
    #   Whether the trail is created for all accounts in an organization in
    #   AWS Organizations, or only for the current AWS account.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS KMS key ID to use to encrypt the logs.
    #   @return [String]
    #
    # @!attribute [rw] log_file_validation_enabled
    #   Indicates whether CloudTrail log file validation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the trail.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket where the log files are published.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The S3 key prefix. The key prefix is added after the name of the S3
    #   bucket where the log files are published.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The ARN of the SNS topic that is used for notifications of log file
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_name
    #   The name of the SNS topic that is used for notifications of log file
    #   delivery.
    #   @return [String]
    #
    # @!attribute [rw] trail_arn
    #   The ARN of the trail.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCloudTrailTrailDetails AWS API Documentation
    #
    class AwsCloudTrailTrailDetails < Struct.new(
      :cloud_watch_logs_log_group_arn,
      :cloud_watch_logs_role_arn,
      :has_custom_event_selectors,
      :home_region,
      :include_global_service_events,
      :is_multi_region_trail,
      :is_organization_trail,
      :kms_key_id,
      :log_file_validation_enabled,
      :name,
      :s3_bucket_name,
      :s3_key_prefix,
      :sns_topic_arn,
      :sns_topic_name,
      :trail_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an AWS CodeBuild project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectDetails
    #   data as a hash:
    #
    #       {
    #         encryption_key: "NonEmptyString",
    #         environment: {
    #           certificate: "NonEmptyString",
    #           image_pull_credentials_type: "NonEmptyString",
    #           registry_credential: {
    #             credential: "NonEmptyString",
    #             credential_provider: "NonEmptyString",
    #           },
    #           type: "NonEmptyString",
    #         },
    #         name: "NonEmptyString",
    #         source: {
    #           type: "NonEmptyString",
    #           location: "NonEmptyString",
    #           git_clone_depth: 1,
    #           insecure_ssl: false,
    #         },
    #         service_role: "NonEmptyString",
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #         },
    #       }
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   used to encrypt the build output artifacts.
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK alias (using the format alias/alias-name).
    #   @return [String]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build project.
    #   @return [Types::AwsCodeBuildProjectEnvironment]
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for this build
    #   project.
    #   @return [Types::AwsCodeBuildProjectSource]
    #
    # @!attribute [rw] service_role
    #   The ARN of the IAM role that enables AWS CodeBuild to interact with
    #   dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that AWS CodeBuild accesses.
    #   @return [Types::AwsCodeBuildProjectVpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectDetails AWS API Documentation
    #
    class AwsCodeBuildProjectDetails < Struct.new(
      :encryption_key,
      :environment,
      :name,
      :source,
      :service_role,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build environment for this build project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectEnvironment
    #   data as a hash:
    #
    #       {
    #         certificate: "NonEmptyString",
    #         image_pull_credentials_type: "NonEmptyString",
    #         registry_credential: {
    #           credential: "NonEmptyString",
    #           credential_provider: "NonEmptyString",
    #         },
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] certificate
    #   The certificate to use with this build project.
    #   @return [String]
    #
    # @!attribute [rw] image_pull_credentials_type
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   build.
    #
    #   Valid values:
    #
    #   * `CODEBUILD` specifies that AWS CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     the AWS CodeBuild service principal.
    #
    #   * `SERVICE_ROLE` specifies that AWS CodeBuild uses your build
    #     project's service role.
    #
    #   When you use a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When you use an AWS CodeBuild curated
    #   image, you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] registry_credential
    #   The credentials for access to a private registry.
    #   @return [Types::AwsCodeBuildProjectEnvironmentRegistryCredential]
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #
    #   The environment type `ARM_CONTAINER` is available only in Regions US
    #   East (N. Virginia), US East (Ohio), US West (Oregon), Europe
    #   (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific
    #   (Sydney), and Europe (Frankfurt).
    #
    #   The environment type `LINUX_CONTAINER` with compute type
    #   build.general1.2xlarge is available only in Regions US East (N.
    #   Virginia), US East (N. Virginia), US West (Oregon), Canada
    #   (Central), Europe (Ireland), Europe (London), Europe (Frankfurt),
    #   Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific
    #   (Singapore), Asia Pacific (Sydney), China (Beijing), and China
    #   (Ningxia).
    #
    #   The environment type `LINUX_GPU_CONTAINER` is available only in
    #   Regions US East (N. Virginia), US East (N. Virginia), US West
    #   (Oregon), Canada (Central), Europe (Ireland), Europe (London),
    #   Europe (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia
    #   Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and
    #   China (Ningxia).
    #
    #   Valid values: `WINDOWS_CONTAINER` \| `LINUX_CONTAINER` \|
    #   `LINUX_GPU_CONTAINER` \| `ARM_CONTAINER`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironment AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironment < Struct.new(
      :certificate,
      :image_pull_credentials_type,
      :registry_credential,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The credentials for access to a private registry.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectEnvironmentRegistryCredential
    #   data as a hash:
    #
    #       {
    #         credential: "NonEmptyString",
    #         credential_provider: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] credential
    #   The Amazon Resource Name (ARN) or name of credentials created using
    #   AWS Secrets Manager.
    #
    #   <note markdown="1"> The credential can use the name of the credentials only if they
    #   exist in your current AWS Region.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The service that created the credentials to access a private Docker
    #   registry.
    #
    #   The valid value,` SECRETS_MANAGER`, is for AWS Secrets Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectEnvironmentRegistryCredential AWS API Documentation
    #
    class AwsCodeBuildProjectEnvironmentRegistryCredential < Struct.new(
      :credential,
      :credential_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build input source code for this build project.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectSource
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         location: "NonEmptyString",
    #         git_clone_depth: 1,
    #         insecure_ssl: false,
    #       }
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values are:
    #
    #   * `BITBUCKET` - The source code is in a Bitbucket repository.
    #
    #   * `CODECOMMIT` - The source code is in an AWS CodeCommit repository.
    #
    #   * `CODEPIPELINE` - The source code settings are specified in the
    #     source action of a pipeline in AWS CodePipeline.
    #
    #   * `GITHUB` - The source code is in a GitHub repository.
    #
    #   * `GITHUB_ENTERPRISE` - The source code is in a GitHub Enterprise
    #     repository.
    #
    #   * `NO_SOURCE` - The project does not have input source code.
    #
    #   * `S3` - The source code is in an S3 input bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of the source code to be built.
    #
    #   Valid values include:
    #
    #   * For source code settings that are specified in the source action
    #     of a pipeline in AWS CodePipeline, location should not be
    #     specified. If it is specified, AWS CodePipeline ignores it. This
    #     is because AWS CodePipeline uses the settings in a pipeline's
    #     source action instead of this value.
    #
    #   * For source code in an AWS CodeCommit repository, the HTTPS clone
    #     URL to the repository that contains the source code and the build
    #     spec file (for example,
    #     `https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name`
    #     ).
    #
    #   * For source code in an S3 input bucket, one of the following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, `bucket-name/path/to/object-name.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, `bucket-name/path/to/source-code/folder/`).
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the build spec file.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the build spec file.
    #   @return [String]
    #
    # @!attribute [rw] git_clone_depth
    #   Information about the Git clone depth for the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] insecure_ssl
    #   Whether to ignore SSL warnings while connecting to the project
    #   source code.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectSource AWS API Documentation
    #
    class AwsCodeBuildProjectSource < Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :insecure_ssl)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPC configuration that AWS CodeBuild accesses.
    #
    # @note When making an API call, you may pass AwsCodeBuildProjectVpcConfig
    #   data as a hash:
    #
    #       {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of one or more subnet IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of one or more security group IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCodeBuildProjectVpcConfig AWS API Documentation
    #
    class AwsCodeBuildProjectVpcConfig < Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the cross-origin resource sharing (CORS) configuration for
    # the API. CORS is only supported for HTTP APIs.
    #
    # @note When making an API call, you may pass AwsCorsConfiguration
    #   data as a hash:
    #
    #       {
    #         allow_origins: ["NonEmptyString"],
    #         allow_credentials: false,
    #         expose_headers: ["NonEmptyString"],
    #         max_age: 1,
    #         allow_methods: ["NonEmptyString"],
    #         allow_headers: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] allow_origins
    #   The allowed origins for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_credentials
    #   Indicates whether the CORS request includes credentials.
    #   @return [Boolean]
    #
    # @!attribute [rw] expose_headers
    #   The exposed headers for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_age
    #   The number of seconds for which the browser caches preflight request
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_methods
    #   The allowed methods for CORS requests.
    #   @return [Array<String>]
    #
    # @!attribute [rw] allow_headers
    #   The allowed headers for CORS requests.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsCorsConfiguration AWS API Documentation
    #
    class AwsCorsConfiguration < Struct.new(
      :allow_origins,
      :allow_credentials,
      :expose_headers,
      :max_age,
      :allow_methods,
      :allow_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a definition of an attribute for the table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableAttributeDefinition
    #   data as a hash:
    #
    #       {
    #         attribute_name: "NonEmptyString",
    #         attribute_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_type
    #   The type of the attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableAttributeDefinition AWS API Documentation
    #
    class AwsDynamoDbTableAttributeDefinition < Struct.new(
      :attribute_name,
      :attribute_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the billing for read/write capacity on the
    # table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableBillingModeSummary
    #   data as a hash:
    #
    #       {
    #         billing_mode: "NonEmptyString",
    #         last_update_to_pay_per_request_date_time: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] billing_mode
    #   The method used to charge for read and write throughput and to
    #   manage capacity.
    #   @return [String]
    #
    # @!attribute [rw] last_update_to_pay_per_request_date_time
    #   If the billing mode is `PAY_PER_REQUEST`, indicates when the billing
    #   mode was set to that value.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableBillingModeSummary AWS API Documentation
    #
    class AwsDynamoDbTableBillingModeSummary < Struct.new(
      :billing_mode,
      :last_update_to_pay_per_request_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about a DynamoDB table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableDetails
    #   data as a hash:
    #
    #       {
    #         attribute_definitions: [
    #           {
    #             attribute_name: "NonEmptyString",
    #             attribute_type: "NonEmptyString",
    #           },
    #         ],
    #         billing_mode_summary: {
    #           billing_mode: "NonEmptyString",
    #           last_update_to_pay_per_request_date_time: "NonEmptyString",
    #         },
    #         creation_date_time: "NonEmptyString",
    #         global_secondary_indexes: [
    #           {
    #             backfilling: false,
    #             index_arn: "NonEmptyString",
    #             index_name: "NonEmptyString",
    #             index_size_bytes: 1,
    #             index_status: "NonEmptyString",
    #             item_count: 1,
    #             key_schema: [
    #               {
    #                 attribute_name: "NonEmptyString",
    #                 key_type: "NonEmptyString",
    #               },
    #             ],
    #             projection: {
    #               non_key_attributes: ["NonEmptyString"],
    #               projection_type: "NonEmptyString",
    #             },
    #             provisioned_throughput: {
    #               last_decrease_date_time: "NonEmptyString",
    #               last_increase_date_time: "NonEmptyString",
    #               number_of_decreases_today: 1,
    #               read_capacity_units: 1,
    #               write_capacity_units: 1,
    #             },
    #           },
    #         ],
    #         global_table_version: "NonEmptyString",
    #         item_count: 1,
    #         key_schema: [
    #           {
    #             attribute_name: "NonEmptyString",
    #             key_type: "NonEmptyString",
    #           },
    #         ],
    #         latest_stream_arn: "NonEmptyString",
    #         latest_stream_label: "NonEmptyString",
    #         local_secondary_indexes: [
    #           {
    #             index_arn: "NonEmptyString",
    #             index_name: "NonEmptyString",
    #             key_schema: [
    #               {
    #                 attribute_name: "NonEmptyString",
    #                 key_type: "NonEmptyString",
    #               },
    #             ],
    #             projection: {
    #               non_key_attributes: ["NonEmptyString"],
    #               projection_type: "NonEmptyString",
    #             },
    #           },
    #         ],
    #         provisioned_throughput: {
    #           last_decrease_date_time: "NonEmptyString",
    #           last_increase_date_time: "NonEmptyString",
    #           number_of_decreases_today: 1,
    #           read_capacity_units: 1,
    #           write_capacity_units: 1,
    #         },
    #         replicas: [
    #           {
    #             global_secondary_indexes: [
    #               {
    #                 index_name: "NonEmptyString",
    #                 provisioned_throughput_override: {
    #                   read_capacity_units: 1,
    #                 },
    #               },
    #             ],
    #             kms_master_key_id: "NonEmptyString",
    #             provisioned_throughput_override: {
    #               read_capacity_units: 1,
    #             },
    #             region_name: "NonEmptyString",
    #             replica_status: "NonEmptyString",
    #             replica_status_description: "NonEmptyString",
    #           },
    #         ],
    #         restore_summary: {
    #           source_backup_arn: "NonEmptyString",
    #           source_table_arn: "NonEmptyString",
    #           restore_date_time: "NonEmptyString",
    #           restore_in_progress: false,
    #         },
    #         sse_description: {
    #           inaccessible_encryption_date_time: "NonEmptyString",
    #           status: "NonEmptyString",
    #           sse_type: "NonEmptyString",
    #           kms_master_key_arn: "NonEmptyString",
    #         },
    #         stream_specification: {
    #           stream_enabled: false,
    #           stream_view_type: "NonEmptyString",
    #         },
    #         table_id: "NonEmptyString",
    #         table_name: "NonEmptyString",
    #         table_size_bytes: 1,
    #         table_status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attribute_definitions
    #   A list of attribute definitions for the table.
    #   @return [Array<Types::AwsDynamoDbTableAttributeDefinition>]
    #
    # @!attribute [rw] billing_mode_summary
    #   Information about the billing for read/write capacity on the table.
    #   @return [Types::AwsDynamoDbTableBillingModeSummary]
    #
    # @!attribute [rw] creation_date_time
    #   Indicates when the table was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] global_secondary_indexes
    #   List of global secondary indexes for the table.
    #   @return [Array<Types::AwsDynamoDbTableGlobalSecondaryIndex>]
    #
    # @!attribute [rw] global_table_version
    #   The version of global tables being used.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The number of items in the table.
    #   @return [Integer]
    #
    # @!attribute [rw] key_schema
    #   The primary key structure for the table.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] latest_stream_arn
    #   The ARN of the latest stream for the table.
    #   @return [String]
    #
    # @!attribute [rw] latest_stream_label
    #   The label of the latest stream. The label is not a unique
    #   identifier.
    #   @return [String]
    #
    # @!attribute [rw] local_secondary_indexes
    #   The list of local secondary indexes for the table.
    #   @return [Array<Types::AwsDynamoDbTableLocalSecondaryIndex>]
    #
    # @!attribute [rw] provisioned_throughput
    #   Information about the provisioned throughput for the table.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughput]
    #
    # @!attribute [rw] replicas
    #   The list of replicas of this table.
    #   @return [Array<Types::AwsDynamoDbTableReplica>]
    #
    # @!attribute [rw] restore_summary
    #   Information about the restore for the table.
    #   @return [Types::AwsDynamoDbTableRestoreSummary]
    #
    # @!attribute [rw] sse_description
    #   Information about the server-side encryption for the table.
    #   @return [Types::AwsDynamoDbTableSseDescription]
    #
    # @!attribute [rw] stream_specification
    #   The current DynamoDB Streams configuration for the table.
    #   @return [Types::AwsDynamoDbTableStreamSpecification]
    #
    # @!attribute [rw] table_id
    #   The identifier of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_size_bytes
    #   The total size of the table in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] table_status
    #   The current status of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableDetails AWS API Documentation
    #
    class AwsDynamoDbTableDetails < Struct.new(
      :attribute_definitions,
      :billing_mode_summary,
      :creation_date_time,
      :global_secondary_indexes,
      :global_table_version,
      :item_count,
      :key_schema,
      :latest_stream_arn,
      :latest_stream_label,
      :local_secondary_indexes,
      :provisioned_throughput,
      :replicas,
      :restore_summary,
      :sse_description,
      :stream_specification,
      :table_id,
      :table_name,
      :table_size_bytes,
      :table_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information abut a global secondary index for the table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableGlobalSecondaryIndex
    #   data as a hash:
    #
    #       {
    #         backfilling: false,
    #         index_arn: "NonEmptyString",
    #         index_name: "NonEmptyString",
    #         index_size_bytes: 1,
    #         index_status: "NonEmptyString",
    #         item_count: 1,
    #         key_schema: [
    #           {
    #             attribute_name: "NonEmptyString",
    #             key_type: "NonEmptyString",
    #           },
    #         ],
    #         projection: {
    #           non_key_attributes: ["NonEmptyString"],
    #           projection_type: "NonEmptyString",
    #         },
    #         provisioned_throughput: {
    #           last_decrease_date_time: "NonEmptyString",
    #           last_increase_date_time: "NonEmptyString",
    #           number_of_decreases_today: 1,
    #           read_capacity_units: 1,
    #           write_capacity_units: 1,
    #         },
    #       }
    #
    # @!attribute [rw] backfilling
    #   Whether the index is currently backfilling.
    #   @return [Boolean]
    #
    # @!attribute [rw] index_arn
    #   The ARN of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_size_bytes
    #   The total size in bytes of the index.
    #   @return [Integer]
    #
    # @!attribute [rw] index_status
    #   The current status of the index.
    #   @return [String]
    #
    # @!attribute [rw] item_count
    #   The number of items in the index.
    #   @return [Integer]
    #
    # @!attribute [rw] key_schema
    #   The key schema for the index.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] projection
    #   Attributes that are copied from the table into an index.
    #   @return [Types::AwsDynamoDbTableProjection]
    #
    # @!attribute [rw] provisioned_throughput
    #   Information about the provisioned throughput settings for the
    #   indexes.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableGlobalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableGlobalSecondaryIndex < Struct.new(
      :backfilling,
      :index_arn,
      :index_name,
      :index_size_bytes,
      :index_status,
      :item_count,
      :key_schema,
      :projection,
      :provisioned_throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # A component of the key schema for the DynamoDB table, a global
    # secondary index, or a local secondary index.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableKeySchema
    #   data as a hash:
    #
    #       {
    #         attribute_name: "NonEmptyString",
    #         key_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attribute_name
    #   The name of the key schema attribute.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key used for the key schema attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableKeySchema AWS API Documentation
    #
    class AwsDynamoDbTableKeySchema < Struct.new(
      :attribute_name,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a local secondary index for a DynamoDB table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableLocalSecondaryIndex
    #   data as a hash:
    #
    #       {
    #         index_arn: "NonEmptyString",
    #         index_name: "NonEmptyString",
    #         key_schema: [
    #           {
    #             attribute_name: "NonEmptyString",
    #             key_type: "NonEmptyString",
    #           },
    #         ],
    #         projection: {
    #           non_key_attributes: ["NonEmptyString"],
    #           projection_type: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] index_arn
    #   The ARN of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] key_schema
    #   The complete key schema for the index.
    #   @return [Array<Types::AwsDynamoDbTableKeySchema>]
    #
    # @!attribute [rw] projection
    #   Attributes that are copied from the table into the index. These are
    #   in addition to the primary key attributes and index key attributes,
    #   which are automatically projected.
    #   @return [Types::AwsDynamoDbTableProjection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableLocalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableLocalSecondaryIndex < Struct.new(
      :index_arn,
      :index_name,
      :key_schema,
      :projection)
      SENSITIVE = []
      include Aws::Structure
    end

    # For global and local secondary indexes, identifies the attributes that
    # are copied from the table into the index.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableProjection
    #   data as a hash:
    #
    #       {
    #         non_key_attributes: ["NonEmptyString"],
    #         projection_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] non_key_attributes
    #   The nonkey attributes that are projected into the index. For each
    #   attribute, provide the attribute name.
    #   @return [Array<String>]
    #
    # @!attribute [rw] projection_type
    #   The types of attributes that are projected into the index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProjection AWS API Documentation
    #
    class AwsDynamoDbTableProjection < Struct.new(
      :non_key_attributes,
      :projection_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the provisioned throughput for the table or for a
    # global secondary index.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableProvisionedThroughput
    #   data as a hash:
    #
    #       {
    #         last_decrease_date_time: "NonEmptyString",
    #         last_increase_date_time: "NonEmptyString",
    #         number_of_decreases_today: 1,
    #         read_capacity_units: 1,
    #         write_capacity_units: 1,
    #       }
    #
    # @!attribute [rw] last_decrease_date_time
    #   Indicates when the provisioned throughput was last decreased.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_increase_date_time
    #   Indicates when the provisioned throughput was last increased.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] number_of_decreases_today
    #   The number of times during the current UTC calendar day that the
    #   provisioned throughput was decreased.
    #   @return [Integer]
    #
    # @!attribute [rw] read_capacity_units
    #   The maximum number of strongly consistent reads consumed per second
    #   before DynamoDB returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The maximum number of writes consumed per second before DynamoDB
    #   returns a `ThrottlingException`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProvisionedThroughput AWS API Documentation
    #
    class AwsDynamoDbTableProvisionedThroughput < Struct.new(
      :last_decrease_date_time,
      :last_increase_date_time,
      :number_of_decreases_today,
      :read_capacity_units,
      :write_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Replica-specific configuration for the provisioned throughput.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableProvisionedThroughputOverride
    #   data as a hash:
    #
    #       {
    #         read_capacity_units: 1,
    #       }
    #
    # @!attribute [rw] read_capacity_units
    #   The read capacity units for the replica.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableProvisionedThroughputOverride AWS API Documentation
    #
    class AwsDynamoDbTableProvisionedThroughputOverride < Struct.new(
      :read_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a replica of a DynamoDB table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableReplica
    #   data as a hash:
    #
    #       {
    #         global_secondary_indexes: [
    #           {
    #             index_name: "NonEmptyString",
    #             provisioned_throughput_override: {
    #               read_capacity_units: 1,
    #             },
    #           },
    #         ],
    #         kms_master_key_id: "NonEmptyString",
    #         provisioned_throughput_override: {
    #           read_capacity_units: 1,
    #         },
    #         region_name: "NonEmptyString",
    #         replica_status: "NonEmptyString",
    #         replica_status_description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] global_secondary_indexes
    #   List of global secondary indexes for the replica.
    #   @return [Array<Types::AwsDynamoDbTableReplicaGlobalSecondaryIndex>]
    #
    # @!attribute [rw] kms_master_key_id
    #   The identifier of the AWS KMS customer master key (CMK) that will be
    #   used for AWS KMS encryption for the replica.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_override
    #   Replica-specific configuration for the provisioned throughput.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughputOverride]
    #
    # @!attribute [rw] region_name
    #   The name of the Region where the replica is located.
    #   @return [String]
    #
    # @!attribute [rw] replica_status
    #   The current status of the replica.
    #   @return [String]
    #
    # @!attribute [rw] replica_status_description
    #   Detailed information about the replica status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableReplica AWS API Documentation
    #
    class AwsDynamoDbTableReplica < Struct.new(
      :global_secondary_indexes,
      :kms_master_key_id,
      :provisioned_throughput_override,
      :region_name,
      :replica_status,
      :replica_status_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a global secondary index for a DynamoDB table
    # replica.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableReplicaGlobalSecondaryIndex
    #   data as a hash:
    #
    #       {
    #         index_name: "NonEmptyString",
    #         provisioned_throughput_override: {
    #           read_capacity_units: 1,
    #         },
    #       }
    #
    # @!attribute [rw] index_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_throughput_override
    #   Replica-specific configuration for the provisioned throughput for
    #   the index.
    #   @return [Types::AwsDynamoDbTableProvisionedThroughputOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableReplicaGlobalSecondaryIndex AWS API Documentation
    #
    class AwsDynamoDbTableReplicaGlobalSecondaryIndex < Struct.new(
      :index_name,
      :provisioned_throughput_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the restore for the table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableRestoreSummary
    #   data as a hash:
    #
    #       {
    #         source_backup_arn: "NonEmptyString",
    #         source_table_arn: "NonEmptyString",
    #         restore_date_time: "NonEmptyString",
    #         restore_in_progress: false,
    #       }
    #
    # @!attribute [rw] source_backup_arn
    #   The ARN of the source backup from which the table was restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_arn
    #   The ARN of the source table for the backup.
    #   @return [String]
    #
    # @!attribute [rw] restore_date_time
    #   Indicates the point in time that the table was restored to.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] restore_in_progress
    #   Whether a restore is currently in progress.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableRestoreSummary AWS API Documentation
    #
    class AwsDynamoDbTableRestoreSummary < Struct.new(
      :source_backup_arn,
      :source_table_arn,
      :restore_date_time,
      :restore_in_progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the server-side encryption for the table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableSseDescription
    #   data as a hash:
    #
    #       {
    #         inaccessible_encryption_date_time: "NonEmptyString",
    #         status: "NonEmptyString",
    #         sse_type: "NonEmptyString",
    #         kms_master_key_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] inaccessible_encryption_date_time
    #   If the key is inaccessible, the date and time when DynamoDB detected
    #   that the key was inaccessible.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] sse_type
    #   The type of server-side encryption.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_arn
    #   The ARN of the AWS KMS customer master key (CMK) that is used for
    #   the AWS KMS encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableSseDescription AWS API Documentation
    #
    class AwsDynamoDbTableSseDescription < Struct.new(
      :inaccessible_encryption_date_time,
      :status,
      :sse_type,
      :kms_master_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current DynamoDB Streams configuration for the table.
    #
    # @note When making an API call, you may pass AwsDynamoDbTableStreamSpecification
    #   data as a hash:
    #
    #       {
    #         stream_enabled: false,
    #         stream_view_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] stream_enabled
    #   Indicates whether DynamoDB Streams is enabled on the table.
    #   @return [Boolean]
    #
    # @!attribute [rw] stream_view_type
    #   Determines the information that is written to the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsDynamoDbTableStreamSpecification AWS API Documentation
    #
    class AwsDynamoDbTableStreamSpecification < Struct.new(
      :stream_enabled,
      :stream_view_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Elastic IP address.
    #
    # @note When making an API call, you may pass AwsEc2EipDetails
    #   data as a hash:
    #
    #       {
    #         instance_id: "NonEmptyString",
    #         public_ip: "NonEmptyString",
    #         allocation_id: "NonEmptyString",
    #         association_id: "NonEmptyString",
    #         domain: "NonEmptyString",
    #         public_ipv_4_pool: "NonEmptyString",
    #         network_border_group: "NonEmptyString",
    #         network_interface_id: "NonEmptyString",
    #         network_interface_owner_id: "NonEmptyString",
    #         private_ip_address: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The identifier of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] public_ip
    #   A public IP address that is associated with the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] allocation_id
    #   The identifier that AWS assigns to represent the allocation of the
    #   Elastic IP address for use with Amazon VPC.
    #   @return [String]
    #
    # @!attribute [rw] association_id
    #   The identifier that represents the association of the Elastic IP
    #   address with an EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain in which to allocate the address.
    #
    #   If the address is for use with EC2 instances in a VPC, then `Domain`
    #   is `vpc`. Otherwise, `Domain` is `standard`.
    #   @return [String]
    #
    # @!attribute [rw] public_ipv_4_pool
    #   The identifier of an IP address pool. This parameter allows Amazon
    #   EC2 to select an IP address from the address pool.
    #   @return [String]
    #
    # @!attribute [rw] network_border_group
    #   The name of the location from which the Elastic IP address is
    #   advertised.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The identifier of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_owner_id
    #   The AWS account ID of the owner of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address that is associated with the Elastic IP
    #   address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2EipDetails AWS API Documentation
    #
    class AwsEc2EipDetails < Struct.new(
      :instance_id,
      :public_ip,
      :allocation_id,
      :association_id,
      :domain,
      :public_ipv_4_pool,
      :network_border_group,
      :network_interface_id,
      :network_interface_owner_id,
      :private_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon EC2 instance.
    #
    # @note When making an API call, you may pass AwsEc2InstanceDetails
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         ip_v4_addresses: ["NonEmptyString"],
    #         ip_v6_addresses: ["NonEmptyString"],
    #         key_name: "NonEmptyString",
    #         iam_instance_profile_arn: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         subnet_id: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The instance type of the instance.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] key_name
    #   The key name associated with the instance.
    #   @return [String]
    #
    # @!attribute [rw] iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the instance was launched.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2InstanceDetails AWS API Documentation
    #
    class AwsEc2InstanceDetails < Struct.new(
      :type,
      :image_id,
      :ip_v4_addresses,
      :ip_v6_addresses,
      :key_name,
      :iam_instance_profile_arn,
      :vpc_id,
      :subnet_id,
      :launched_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the network interface attachment.
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceAttachment
    #   data as a hash:
    #
    #       {
    #         attach_time: "NonEmptyString",
    #         attachment_id: "NonEmptyString",
    #         delete_on_termination: false,
    #         device_index: 1,
    #         instance_id: "NonEmptyString",
    #         instance_owner_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attach_time
    #   Indicates when the attachment initiated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the network interface attachment
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Indicates whether the network interface is deleted when the instance
    #   is terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] device_index
    #   The device index of the network interface attachment on the
    #   instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_id
    #   The ID of the instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_owner_id
    #   The AWS account ID of the owner of the instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state.
    #
    #   Valid values: `attaching` \| `attached` \| `detaching` \| `detached`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceAttachment AWS API Documentation
    #
    class AwsEc2NetworkInterfaceAttachment < Struct.new(
      :attach_time,
      :attachment_id,
      :delete_on_termination,
      :device_index,
      :instance_id,
      :instance_owner_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the network interface
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceDetails
    #   data as a hash:
    #
    #       {
    #         attachment: {
    #           attach_time: "NonEmptyString",
    #           attachment_id: "NonEmptyString",
    #           delete_on_termination: false,
    #           device_index: 1,
    #           instance_id: "NonEmptyString",
    #           instance_owner_id: "NonEmptyString",
    #           status: "NonEmptyString",
    #         },
    #         network_interface_id: "NonEmptyString",
    #         security_groups: [
    #           {
    #             group_name: "NonEmptyString",
    #             group_id: "NonEmptyString",
    #           },
    #         ],
    #         source_dest_check: false,
    #       }
    #
    # @!attribute [rw] attachment
    #   The network interface attachment.
    #   @return [Types::AwsEc2NetworkInterfaceAttachment]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   Security groups for the network interface.
    #   @return [Array<Types::AwsEc2NetworkInterfaceSecurityGroup>]
    #
    # @!attribute [rw] source_dest_check
    #   Indicates whether traffic to or from the instance is validated.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceDetails AWS API Documentation
    #
    class AwsEc2NetworkInterfaceDetails < Struct.new(
      :attachment,
      :network_interface_id,
      :security_groups,
      :source_dest_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # A security group associated with the network interface.
    #
    # @note When making an API call, you may pass AwsEc2NetworkInterfaceSecurityGroup
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #         group_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2NetworkInterfaceSecurityGroup AWS API Documentation
    #
    class AwsEc2NetworkInterfaceSecurityGroup < Struct.new(
      :group_name,
      :group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an EC2 security group.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupDetails
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #         group_id: "NonEmptyString",
    #         owner_id: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         ip_permissions: [
    #           {
    #             ip_protocol: "NonEmptyString",
    #             from_port: 1,
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 peering_status: "NonEmptyString",
    #                 user_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_peering_connection_id: "NonEmptyString",
    #               },
    #             ],
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "NonEmptyString",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "NonEmptyString",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 prefix_list_id: "NonEmptyString",
    #               },
    #             ],
    #           },
    #         ],
    #         ip_permissions_egress: [
    #           {
    #             ip_protocol: "NonEmptyString",
    #             from_port: 1,
    #             to_port: 1,
    #             user_id_group_pairs: [
    #               {
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 peering_status: "NonEmptyString",
    #                 user_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_peering_connection_id: "NonEmptyString",
    #               },
    #             ],
    #             ip_ranges: [
    #               {
    #                 cidr_ip: "NonEmptyString",
    #               },
    #             ],
    #             ipv_6_ranges: [
    #               {
    #                 cidr_ipv_6: "NonEmptyString",
    #               },
    #             ],
    #             prefix_list_ids: [
    #               {
    #                 prefix_list_id: "NonEmptyString",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] owner_id
    #   The AWS account ID of the owner of the security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   \[VPC only\] The ID of the VPC for the security group.
    #   @return [String]
    #
    # @!attribute [rw] ip_permissions
    #   The inbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @!attribute [rw] ip_permissions_egress
    #   \[VPC only\] The outbound rules associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupIpPermission>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupDetails AWS API Documentation
    #
    class AwsEc2SecurityGroupDetails < Struct.new(
      :group_name,
      :group_id,
      :owner_id,
      :vpc_id,
      :ip_permissions,
      :ip_permissions_egress)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IP permission for an EC2 security group.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpPermission
    #   data as a hash:
    #
    #       {
    #         ip_protocol: "NonEmptyString",
    #         from_port: 1,
    #         to_port: 1,
    #         user_id_group_pairs: [
    #           {
    #             group_id: "NonEmptyString",
    #             group_name: "NonEmptyString",
    #             peering_status: "NonEmptyString",
    #             user_id: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             vpc_peering_connection_id: "NonEmptyString",
    #           },
    #         ],
    #         ip_ranges: [
    #           {
    #             cidr_ip: "NonEmptyString",
    #           },
    #         ],
    #         ipv_6_ranges: [
    #           {
    #             cidr_ipv_6: "NonEmptyString",
    #           },
    #         ],
    #         prefix_list_ids: [
    #           {
    #             prefix_list_id: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] ip_protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number.
    #
    #   \[VPC only\] Use `-1` to specify all protocols.
    #
    #   When authorizing security group rules, specifying -1 or a protocol
    #   number other than `tcp`, `udp`, `icmp`, or `icmpv6` allows traffic
    #   on all ports, regardless of any port range you specify.
    #
    #   For `tcp`, `udp`, and `icmp`, you must specify a port range.
    #
    #   For `icmpv6`, the port range is optional. If you omit the port
    #   range, traffic for all types and codes is allowed.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number.
    #
    #   A value of -1 indicates all ICMP/ICMPv6 types. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code.
    #
    #   A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all
    #   ICMP/ICMPv6 types, you must specify all codes.
    #   @return [Integer]
    #
    # @!attribute [rw] user_id_group_pairs
    #   The security group and AWS account ID pairs.
    #   @return [Array<Types::AwsEc2SecurityGroupUserIdGroupPair>]
    #
    # @!attribute [rw] ip_ranges
    #   The IPv4 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpRange>]
    #
    # @!attribute [rw] ipv_6_ranges
    #   The IPv6 ranges.
    #   @return [Array<Types::AwsEc2SecurityGroupIpv6Range>]
    #
    # @!attribute [rw] prefix_list_ids
    #   \[VPC only\] The prefix list IDs for an AWS service. With outbound
    #   rules, this is the AWS service to access through a VPC endpoint from
    #   instances associated with the security group.
    #   @return [Array<Types::AwsEc2SecurityGroupPrefixListId>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpPermission AWS API Documentation
    #
    class AwsEc2SecurityGroupIpPermission < Struct.new(
      :ip_protocol,
      :from_port,
      :to_port,
      :user_id_group_pairs,
      :ip_ranges,
      :ipv_6_ranges,
      :prefix_list_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of IPv4 addresses.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpRange
    #   data as a hash:
    #
    #       {
    #         cidr_ip: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr_ip
    #   The IPv4 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv4 address, use
    #   the /32 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpRange AWS API Documentation
    #
    class AwsEc2SecurityGroupIpRange < Struct.new(
      :cidr_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of IPv6 addresses.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupIpv6Range
    #   data as a hash:
    #
    #       {
    #         cidr_ipv_6: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr_ipv_6
    #   The IPv6 CIDR range. You can specify either a CIDR range or a source
    #   security group, but not both. To specify a single IPv6 address, use
    #   the /128 prefix length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupIpv6Range AWS API Documentation
    #
    class AwsEc2SecurityGroupIpv6Range < Struct.new(
      :cidr_ipv_6)
      SENSITIVE = []
      include Aws::Structure
    end

    # A prefix list ID.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupPrefixListId
    #   data as a hash:
    #
    #       {
    #         prefix_list_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupPrefixListId AWS API Documentation
    #
    class AwsEc2SecurityGroupPrefixListId < Struct.new(
      :prefix_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A relationship between a security group and a user.
    #
    # @note When making an API call, you may pass AwsEc2SecurityGroupUserIdGroupPair
    #   data as a hash:
    #
    #       {
    #         group_id: "NonEmptyString",
    #         group_name: "NonEmptyString",
    #         peering_status: "NonEmptyString",
    #         user_id: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         vpc_peering_connection_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_id
    #   The ID of the security group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] peering_status
    #   The status of a VPC peering connection, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of an AWS account.
    #
    #   For a referenced security group in another VPC, the account ID of
    #   the referenced security group is returned in the response. If the
    #   referenced security group is deleted, this value is not returned.
    #
    #   \[EC2-Classic\] Required when adding or removing rules that
    #   reference a security group in another AWS.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the referenced security group, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] vpc_peering_connection_id
    #   The ID of the VPC peering connection, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2SecurityGroupUserIdGroupPair AWS API Documentation
    #
    class AwsEc2SecurityGroupUserIdGroupPair < Struct.new(
      :group_id,
      :group_name,
      :peering_status,
      :user_id,
      :vpc_id,
      :vpc_peering_connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attachment to an AWS EC2 volume.
    #
    # @note When making an API call, you may pass AwsEc2VolumeAttachment
    #   data as a hash:
    #
    #       {
    #         attach_time: "NonEmptyString",
    #         delete_on_termination: false,
    #         instance_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attach_time
    #   The datetime when the attachment initiated.
    #   @return [String]
    #
    # @!attribute [rw] delete_on_termination
    #   Whether the EBS volume is deleted when the EC2 instance is
    #   terminated.
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_id
    #   The identifier of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The attachment state of the volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VolumeAttachment AWS API Documentation
    #
    class AwsEc2VolumeAttachment < Struct.new(
      :attach_time,
      :delete_on_termination,
      :instance_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an EC2 volume.
    #
    # @note When making an API call, you may pass AwsEc2VolumeDetails
    #   data as a hash:
    #
    #       {
    #         create_time: "NonEmptyString",
    #         encrypted: false,
    #         size: 1,
    #         snapshot_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #         kms_key_id: "NonEmptyString",
    #         attachments: [
    #           {
    #             attach_time: "NonEmptyString",
    #             delete_on_termination: false,
    #             instance_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] create_time
    #   Indicates when the volume was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Whether the volume is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] size
    #   The size of the volume, in GiBs.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot from which the volume was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The volume state.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) that was used to protect the volume encryption key for the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   The volume attachments.
    #   @return [Array<Types::AwsEc2VolumeAttachment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VolumeDetails AWS API Documentation
    #
    class AwsEc2VolumeDetails < Struct.new(
      :create_time,
      :encrypted,
      :size,
      :snapshot_id,
      :status,
      :kms_key_id,
      :attachments)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an EC2 VPC.
    #
    # @note When making an API call, you may pass AwsEc2VpcDetails
    #   data as a hash:
    #
    #       {
    #         cidr_block_association_set: [
    #           {
    #             association_id: "NonEmptyString",
    #             cidr_block: "NonEmptyString",
    #             cidr_block_state: "NonEmptyString",
    #           },
    #         ],
    #         ipv_6_cidr_block_association_set: [
    #           {
    #             association_id: "NonEmptyString",
    #             ipv_6_cidr_block: "NonEmptyString",
    #             cidr_block_state: "NonEmptyString",
    #           },
    #         ],
    #         dhcp_options_id: "NonEmptyString",
    #         state: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr_block_association_set
    #   Information about the IPv4 CIDR blocks associated with the VPC.
    #   @return [Array<Types::CidrBlockAssociation>]
    #
    # @!attribute [rw] ipv_6_cidr_block_association_set
    #   Information about the IPv6 CIDR blocks associated with the VPC.
    #   @return [Array<Types::Ipv6CidrBlockAssociation>]
    #
    # @!attribute [rw] dhcp_options_id
    #   The identifier of the set of Dynamic Host Configuration Protocol
    #   (DHCP) options that are associated with the VPC. If the default
    #   options are associated with the VPC, then this is default.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsEc2VpcDetails AWS API Documentation
    #
    class AwsEc2VpcDetails < Struct.new(
      :cidr_block_association_set,
      :ipv_6_cidr_block_association_set,
      :dhcp_options_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Elasticsearch domain.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainDetails
    #   data as a hash:
    #
    #       {
    #         access_policies: "NonEmptyString",
    #         domain_endpoint_options: {
    #           enforce_https: false,
    #           tls_security_policy: "NonEmptyString",
    #         },
    #         domain_id: "NonEmptyString",
    #         domain_name: "NonEmptyString",
    #         endpoint: "NonEmptyString",
    #         endpoints: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         elasticsearch_version: "NonEmptyString",
    #         encryption_at_rest_options: {
    #           enabled: false,
    #           kms_key_id: "NonEmptyString",
    #         },
    #         node_to_node_encryption_options: {
    #           enabled: false,
    #         },
    #         vpc_options: {
    #           availability_zones: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #           subnet_ids: ["NonEmptyString"],
    #           vpc_id: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] access_policies
    #   IAM policy document specifying the access policies for the new
    #   Amazon ES domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_endpoint_options
    #   Additional options for the domain endpoint.
    #   @return [Types::AwsElasticsearchDomainDomainEndpointOptions]
    #
    # @!attribute [rw] domain_id
    #   Unique identifier for an Amazon ES domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of an Amazon ES domain.
    #
    #   Domain names are unique across all domains owned by the same account
    #   within an AWS Region.
    #
    #   Domain names must start with a lowercase letter and must be between
    #   3 and 28 characters.
    #
    #   Valid characters are a-z (lowercase only), 0-9, and – (hyphen).
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   Domain-specific endpoint used to submit index, search, and data
    #   upload requests to an Amazon ES domain.
    #
    #   The endpoint is a service URL.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The key-value pair that exists if the Amazon ES domain uses VPC
    #   endpoints.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] elasticsearch_version
    #   Elasticsearch version.
    #   @return [String]
    #
    # @!attribute [rw] encryption_at_rest_options
    #   Details about the configuration for encryption at rest.
    #   @return [Types::AwsElasticsearchDomainEncryptionAtRestOptions]
    #
    # @!attribute [rw] node_to_node_encryption_options
    #   Details about the configuration for node-to-node encryption.
    #   @return [Types::AwsElasticsearchDomainNodeToNodeEncryptionOptions]
    #
    # @!attribute [rw] vpc_options
    #   Information that Amazon ES derives based on `VPCOptions` for the
    #   domain.
    #   @return [Types::AwsElasticsearchDomainVPCOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDetails AWS API Documentation
    #
    class AwsElasticsearchDomainDetails < Struct.new(
      :access_policies,
      :domain_endpoint_options,
      :domain_id,
      :domain_name,
      :endpoint,
      :endpoints,
      :elasticsearch_version,
      :encryption_at_rest_options,
      :node_to_node_encryption_options,
      :vpc_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional options for the domain endpoint, such as whether to require
    # HTTPS for all traffic.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainDomainEndpointOptions
    #   data as a hash:
    #
    #       {
    #         enforce_https: false,
    #         tls_security_policy: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] enforce_https
    #   Whether to require that all traffic to the domain arrive over HTTPS.
    #   @return [Boolean]
    #
    # @!attribute [rw] tls_security_policy
    #   The TLS security policy to apply to the HTTPS endpoint of the
    #   Elasticsearch domain.
    #
    #   Valid values:
    #
    #   * `Policy-Min-TLS-1-0-2019-07`, which supports TLSv1.0 and higher
    #
    #   * `Policy-Min-TLS-1-2-2019-07`, which only supports TLSv1.2
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainDomainEndpointOptions AWS API Documentation
    #
    class AwsElasticsearchDomainDomainEndpointOptions < Struct.new(
      :enforce_https,
      :tls_security_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for encryption at rest.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainEncryptionAtRestOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         kms_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether encryption at rest is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainEncryptionAtRestOptions AWS API Documentation
    #
    class AwsElasticsearchDomainEncryptionAtRestOptions < Struct.new(
      :enabled,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the configuration for node-to-node encryption.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainNodeToNodeEncryptionOptions
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Whether node-to-node encryption is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainNodeToNodeEncryptionOptions AWS API Documentation
    #
    class AwsElasticsearchDomainNodeToNodeEncryptionOptions < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information that Amazon ES derives based on `VPCOptions` for the
    # domain.
    #
    # @note When making an API call, you may pass AwsElasticsearchDomainVPCOptions
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_ids: ["NonEmptyString"],
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones associated with the VPC subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security group IDs associated with the VPC endpoints for
    #   the domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoints for the
    #   domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   ID for the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElasticsearchDomainVPCOptions AWS API Documentation
    #
    class AwsElasticsearchDomainVPCOptions < Struct.new(
      :availability_zones,
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a stickiness policy that was created using
    # `CreateAppCookieStickinessPolicy`.
    #
    # @note When making an API call, you may pass AwsElbAppCookieStickinessPolicy
    #   data as a hash:
    #
    #       {
    #         cookie_name: "NonEmptyString",
    #         policy_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cookie_name
    #   The name of the application cookie used for stickiness.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The mnemonic name for the policy being created. The name must be
    #   unique within the set of policies for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbAppCookieStickinessPolicy AWS API Documentation
    #
    class AwsElbAppCookieStickinessPolicy < Struct.new(
      :cookie_name,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a stickiness policy that was created using
    # `CreateLBCookieStickinessPolicy`.
    #
    # @note When making an API call, you may pass AwsElbLbCookieStickinessPolicy
    #   data as a hash:
    #
    #       {
    #         cookie_expiration_period: 1,
    #         policy_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cookie_expiration_period
    #   The amount of time, in seconds, after which the cookie is considered
    #   stale. If an expiration period is not specified, the stickiness
    #   session lasts for the duration of the browser session.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy. The name must be unique within the set of
    #   policies for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLbCookieStickinessPolicy AWS API Documentation
    #
    class AwsElbLbCookieStickinessPolicy < Struct.new(
      :cookie_expiration_period,
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the access log configuration for the load
    # balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerAccessLog
    #   data as a hash:
    #
    #       {
    #         emit_interval: 1,
    #         enabled: false,
    #         s3_bucket_name: "NonEmptyString",
    #         s3_bucket_prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] emit_interval
    #   The interval in minutes for publishing the access logs.
    #
    #   You can publish access logs either every 5 minutes or every 60
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Indicates whether access logs are enabled for the load balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket where the access logs are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_prefix
    #   The logical hierarchy that was created for the S3 bucket.
    #
    #   If a prefix is not provided, the log is placed at the root level of
    #   the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerAccessLog AWS API Documentation
    #
    class AwsElbLoadBalancerAccessLog < Struct.new(
      :emit_interval,
      :enabled,
      :s3_bucket_name,
      :s3_bucket_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains attributes for the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerAttributes
    #   data as a hash:
    #
    #       {
    #         access_log: {
    #           emit_interval: 1,
    #           enabled: false,
    #           s3_bucket_name: "NonEmptyString",
    #           s3_bucket_prefix: "NonEmptyString",
    #         },
    #         connection_draining: {
    #           enabled: false,
    #           timeout: 1,
    #         },
    #         connection_settings: {
    #           idle_timeout: 1,
    #         },
    #         cross_zone_load_balancing: {
    #           enabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] access_log
    #   Information about the access log configuration for the load
    #   balancer.
    #
    #   If the access log is enabled, the load balancer captures detailed
    #   information about all requests. It delivers the information to a
    #   specified S3 bucket.
    #   @return [Types::AwsElbLoadBalancerAccessLog]
    #
    # @!attribute [rw] connection_draining
    #   Information about the connection draining configuration for the load
    #   balancer.
    #
    #   If connection draining is enabled, the load balancer allows existing
    #   requests to complete before it shifts traffic away from a
    #   deregistered or unhealthy instance.
    #   @return [Types::AwsElbLoadBalancerConnectionDraining]
    #
    # @!attribute [rw] connection_settings
    #   Connection settings for the load balancer.
    #
    #   If an idle timeout is configured, the load balancer allows
    #   connections to remain idle for the specified duration. When a
    #   connection is idle, no data is sent over the connection.
    #   @return [Types::AwsElbLoadBalancerConnectionSettings]
    #
    # @!attribute [rw] cross_zone_load_balancing
    #   Cross-zone load balancing settings for the load balancer.
    #
    #   If cross-zone load balancing is enabled, the load balancer routes
    #   the request traffic evenly across all instances regardless of the
    #   Availability Zones.
    #   @return [Types::AwsElbLoadBalancerCrossZoneLoadBalancing]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerAttributes AWS API Documentation
    #
    class AwsElbLoadBalancerAttributes < Struct.new(
      :access_log,
      :connection_draining,
      :connection_settings,
      :cross_zone_load_balancing)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the configuration of an EC2 instance for
    # the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerBackendServerDescription
    #   data as a hash:
    #
    #       {
    #         instance_port: 1,
    #         policy_names: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] instance_port
    #   The port on which the EC2 instance is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_names
    #   The names of the policies that are enabled for the EC2 instance.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerBackendServerDescription AWS API Documentation
    #
    class AwsElbLoadBalancerBackendServerDescription < Struct.new(
      :instance_port,
      :policy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the connection draining configuration for
    # the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerConnectionDraining
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         timeout: 1,
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether connection draining is enabled for the load
    #   balancer.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout
    #   The maximum time, in seconds, to keep the existing connections open
    #   before deregistering the instances.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerConnectionDraining AWS API Documentation
    #
    class AwsElbLoadBalancerConnectionDraining < Struct.new(
      :enabled,
      :timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains connection settings for the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerConnectionSettings
    #   data as a hash:
    #
    #       {
    #         idle_timeout: 1,
    #       }
    #
    # @!attribute [rw] idle_timeout
    #   The time, in seconds, that the connection can be idle (no data is
    #   sent over the connection) before it is closed by the load balancer.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerConnectionSettings AWS API Documentation
    #
    class AwsElbLoadBalancerConnectionSettings < Struct.new(
      :idle_timeout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains cross-zone load balancing settings for the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerCrossZoneLoadBalancing
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether cross-zone load balancing is enabled for the load
    #   balancer.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerCrossZoneLoadBalancing AWS API Documentation
    #
    class AwsElbLoadBalancerCrossZoneLoadBalancing < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a Classic Load Balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerDetails
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["NonEmptyString"],
    #         backend_server_descriptions: [
    #           {
    #             instance_port: 1,
    #             policy_names: ["NonEmptyString"],
    #           },
    #         ],
    #         canonical_hosted_zone_name: "NonEmptyString",
    #         canonical_hosted_zone_name_id: "NonEmptyString",
    #         created_time: "NonEmptyString",
    #         dns_name: "NonEmptyString",
    #         health_check: {
    #           healthy_threshold: 1,
    #           interval: 1,
    #           target: "NonEmptyString",
    #           timeout: 1,
    #           unhealthy_threshold: 1,
    #         },
    #         instances: [
    #           {
    #             instance_id: "NonEmptyString",
    #           },
    #         ],
    #         listener_descriptions: [
    #           {
    #             listener: {
    #               instance_port: 1,
    #               instance_protocol: "NonEmptyString",
    #               load_balancer_port: 1,
    #               protocol: "NonEmptyString",
    #               ssl_certificate_id: "NonEmptyString",
    #             },
    #             policy_names: ["NonEmptyString"],
    #           },
    #         ],
    #         load_balancer_attributes: {
    #           access_log: {
    #             emit_interval: 1,
    #             enabled: false,
    #             s3_bucket_name: "NonEmptyString",
    #             s3_bucket_prefix: "NonEmptyString",
    #           },
    #           connection_draining: {
    #             enabled: false,
    #             timeout: 1,
    #           },
    #           connection_settings: {
    #             idle_timeout: 1,
    #           },
    #           cross_zone_load_balancing: {
    #             enabled: false,
    #           },
    #         },
    #         load_balancer_name: "NonEmptyString",
    #         policies: {
    #           app_cookie_stickiness_policies: [
    #             {
    #               cookie_name: "NonEmptyString",
    #               policy_name: "NonEmptyString",
    #             },
    #           ],
    #           lb_cookie_stickiness_policies: [
    #             {
    #               cookie_expiration_period: 1,
    #               policy_name: "NonEmptyString",
    #             },
    #           ],
    #           other_policies: ["NonEmptyString"],
    #         },
    #         scheme: "NonEmptyString",
    #         security_groups: ["NonEmptyString"],
    #         source_security_group: {
    #           group_name: "NonEmptyString",
    #           owner_alias: "NonEmptyString",
    #         },
    #         subnets: ["NonEmptyString"],
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   The list of Availability Zones for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backend_server_descriptions
    #   Information about the configuration of the EC2 instances.
    #   @return [Array<Types::AwsElbLoadBalancerBackendServerDescription>]
    #
    # @!attribute [rw] canonical_hosted_zone_name
    #   The name of the Amazon Route 53 hosted zone for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] canonical_hosted_zone_name_id
    #   The ID of the Amazon Route 53 hosted zone for the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Indicates when the load balancer was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] health_check
    #   Information about the health checks that are conducted on the load
    #   balancer.
    #   @return [Types::AwsElbLoadBalancerHealthCheck]
    #
    # @!attribute [rw] instances
    #   List of EC2 instances for the load balancer.
    #   @return [Array<Types::AwsElbLoadBalancerInstance>]
    #
    # @!attribute [rw] listener_descriptions
    #   The policies that are enabled for the load balancer listeners.
    #   @return [Array<Types::AwsElbLoadBalancerListenerDescription>]
    #
    # @!attribute [rw] load_balancer_attributes
    #   The attributes for a load balancer.
    #   @return [Types::AwsElbLoadBalancerAttributes]
    #
    # @!attribute [rw] load_balancer_name
    #   The name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The policies for a load balancer.
    #   @return [Types::AwsElbLoadBalancerPolicies]
    #
    # @!attribute [rw] scheme
    #   The type of load balancer. Only provided if the load balancer is in
    #   a VPC.
    #
    #   If `Scheme` is `internet-facing`, the load balancer has a public DNS
    #   name that resolves to a public IP address.
    #
    #   If `Scheme` is `internal`, the load balancer has a public DNS name
    #   that resolves to a private IP address.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The security groups for the load balancer. Only provided if the load
    #   balancer is in a VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_security_group
    #   Information about the security group for the load balancer. This is
    #   the security group that is used for inbound rules.
    #   @return [Types::AwsElbLoadBalancerSourceSecurityGroup]
    #
    # @!attribute [rw] subnets
    #   The list of subnet identifiers for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerDetails AWS API Documentation
    #
    class AwsElbLoadBalancerDetails < Struct.new(
      :availability_zones,
      :backend_server_descriptions,
      :canonical_hosted_zone_name,
      :canonical_hosted_zone_name_id,
      :created_time,
      :dns_name,
      :health_check,
      :instances,
      :listener_descriptions,
      :load_balancer_attributes,
      :load_balancer_name,
      :policies,
      :scheme,
      :security_groups,
      :source_security_group,
      :subnets,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the health checks that are conducted on the
    # load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerHealthCheck
    #   data as a hash:
    #
    #       {
    #         healthy_threshold: 1,
    #         interval: 1,
    #         target: "NonEmptyString",
    #         timeout: 1,
    #         unhealthy_threshold: 1,
    #       }
    #
    # @!attribute [rw] healthy_threshold
    #   The number of consecutive health check successes required before the
    #   instance is moved to the Healthy state.
    #   @return [Integer]
    #
    # @!attribute [rw] interval
    #   The approximate interval, in seconds, between health checks of an
    #   individual instance.
    #   @return [Integer]
    #
    # @!attribute [rw] target
    #   The instance that is being checked. The target specifies the
    #   protocol and port. The available protocols are TCP, SSL, HTTP, and
    #   HTTPS. The range of valid ports is 1 through 65535.
    #
    #   For the HTTP and HTTPS protocols, the target also specifies the ping
    #   path.
    #
    #   For the TCP protocol, the target is specified as `TCP: <port> `.
    #
    #   For the SSL protocol, the target is specified as `SSL.<port> `.
    #
    #   For the HTTP and HTTPS protocols, the target is specified as `
    #   <protocol>:<port>/<path to ping> `.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time, in seconds, during which no response means a
    #   failed health check.
    #   @return [Integer]
    #
    # @!attribute [rw] unhealthy_threshold
    #   The number of consecutive health check failures that must occur
    #   before the instance is moved to the Unhealthy state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerHealthCheck AWS API Documentation
    #
    class AwsElbLoadBalancerHealthCheck < Struct.new(
      :healthy_threshold,
      :interval,
      :target,
      :timeout,
      :unhealthy_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an EC2 instance for a load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerInstance
    #   data as a hash:
    #
    #       {
    #         instance_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] instance_id
    #   The instance identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerInstance AWS API Documentation
    #
    class AwsElbLoadBalancerInstance < Struct.new(
      :instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer listener.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerListener
    #   data as a hash:
    #
    #       {
    #         instance_port: 1,
    #         instance_protocol: "NonEmptyString",
    #         load_balancer_port: 1,
    #         protocol: "NonEmptyString",
    #         ssl_certificate_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] instance_port
    #   The port on which the instance is listening.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_protocol
    #   The protocol to use to route traffic to instances.
    #
    #   Valid values: `HTTP` \| `HTTPS` \| `TCP` \| `SSL`
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_port
    #   The port on which the load balancer is listening.
    #
    #   On EC2-VPC, you can specify any port from the range 1-65535.
    #
    #   On EC2-Classic, you can specify any port from the following list:
    #   25, 80, 443, 465, 587, 1024-65535.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The load balancer transport protocol to use for routing.
    #
    #   Valid values: `HTTP` \| `HTTPS` \| `TCP` \| `SSL`
    #   @return [String]
    #
    # @!attribute [rw] ssl_certificate_id
    #   The ARN of the server certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerListener AWS API Documentation
    #
    class AwsElbLoadBalancerListener < Struct.new(
      :instance_port,
      :instance_protocol,
      :load_balancer_port,
      :protocol,
      :ssl_certificate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists the policies that are enabled for a load balancer listener.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerListenerDescription
    #   data as a hash:
    #
    #       {
    #         listener: {
    #           instance_port: 1,
    #           instance_protocol: "NonEmptyString",
    #           load_balancer_port: 1,
    #           protocol: "NonEmptyString",
    #           ssl_certificate_id: "NonEmptyString",
    #         },
    #         policy_names: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] listener
    #   Information about the listener.
    #   @return [Types::AwsElbLoadBalancerListener]
    #
    # @!attribute [rw] policy_names
    #   The policies enabled for the listener.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerListenerDescription AWS API Documentation
    #
    class AwsElbLoadBalancerListenerDescription < Struct.new(
      :listener,
      :policy_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the policies for a load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerPolicies
    #   data as a hash:
    #
    #       {
    #         app_cookie_stickiness_policies: [
    #           {
    #             cookie_name: "NonEmptyString",
    #             policy_name: "NonEmptyString",
    #           },
    #         ],
    #         lb_cookie_stickiness_policies: [
    #           {
    #             cookie_expiration_period: 1,
    #             policy_name: "NonEmptyString",
    #           },
    #         ],
    #         other_policies: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] app_cookie_stickiness_policies
    #   The stickiness policies that are created using
    #   `CreateAppCookieStickinessPolicy`.
    #   @return [Array<Types::AwsElbAppCookieStickinessPolicy>]
    #
    # @!attribute [rw] lb_cookie_stickiness_policies
    #   The stickiness policies that are created using
    #   `CreateLBCookieStickinessPolicy`.
    #   @return [Array<Types::AwsElbLbCookieStickinessPolicy>]
    #
    # @!attribute [rw] other_policies
    #   The policies other than the stickiness policies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerPolicies AWS API Documentation
    #
    class AwsElbLoadBalancerPolicies < Struct.new(
      :app_cookie_stickiness_policies,
      :lb_cookie_stickiness_policies,
      :other_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the security group for the load balancer.
    #
    # @note When making an API call, you may pass AwsElbLoadBalancerSourceSecurityGroup
    #   data as a hash:
    #
    #       {
    #         group_name: "NonEmptyString",
    #         owner_alias: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the security group.
    #   @return [String]
    #
    # @!attribute [rw] owner_alias
    #   The owner of the security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbLoadBalancerSourceSecurityGroup AWS API Documentation
    #
    class AwsElbLoadBalancerSourceSecurityGroup < Struct.new(
      :group_name,
      :owner_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a load balancer.
    #
    # @note When making an API call, you may pass AwsElbv2LoadBalancerDetails
    #   data as a hash:
    #
    #       {
    #         availability_zones: [
    #           {
    #             zone_name: "NonEmptyString",
    #             subnet_id: "NonEmptyString",
    #           },
    #         ],
    #         canonical_hosted_zone_id: "NonEmptyString",
    #         created_time: "NonEmptyString",
    #         dns_name: "NonEmptyString",
    #         ip_address_type: "NonEmptyString",
    #         scheme: "NonEmptyString",
    #         security_groups: ["NonEmptyString"],
    #         state: {
    #           code: "NonEmptyString",
    #           reason: "NonEmptyString",
    #         },
    #         type: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] availability_zones
    #   The Availability Zones for the load balancer.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @!attribute [rw] canonical_hosted_zone_id
    #   The ID of the Amazon Route 53 hosted zone associated with the load
    #   balancer.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Indicates when the load balancer was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] dns_name
    #   The public DNS name of the load balancer.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The type of IP addresses used by the subnets for your load balancer.
    #   The possible values are `ipv4` (for IPv4 addresses) and `dualstack`
    #   (for IPv4 and IPv6 addresses).
    #   @return [String]
    #
    # @!attribute [rw] scheme
    #   The nodes of an Internet-facing load balancer have public IP
    #   addresses.
    #   @return [String]
    #
    # @!attribute [rw] security_groups
    #   The IDs of the security groups for the load balancer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   The state of the load balancer.
    #   @return [Types::LoadBalancerState]
    #
    # @!attribute [rw] type
    #   The type of load balancer.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC for the load balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsElbv2LoadBalancerDetails AWS API Documentation
    #
    class AwsElbv2LoadBalancerDetails < Struct.new(
      :availability_zones,
      :canonical_hosted_zone_id,
      :created_time,
      :dns_name,
      :ip_address_type,
      :scheme,
      :security_groups,
      :state,
      :type,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # IAM access key details related to a finding.
    #
    # @note When making an API call, you may pass AwsIamAccessKeyDetails
    #   data as a hash:
    #
    #       {
    #         user_name: "NonEmptyString",
    #         status: "Active", # accepts Active, Inactive
    #         created_at: "NonEmptyString",
    #         principal_id: "NonEmptyString",
    #         principal_type: "NonEmptyString",
    #         principal_name: "NonEmptyString",
    #         account_id: "NonEmptyString",
    #         access_key_id: "NonEmptyString",
    #         session_context: {
    #           attributes: {
    #             mfa_authenticated: false,
    #             creation_date: "NonEmptyString",
    #           },
    #           session_issuer: {
    #             type: "NonEmptyString",
    #             principal_id: "NonEmptyString",
    #             arn: "NonEmptyString",
    #             account_id: "NonEmptyString",
    #             user_name: "NonEmptyString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] user_name
    #   The user associated with the IAM access key related to a finding.
    #
    #   The `UserName` parameter has been replaced with the `PrincipalName`
    #   parameter because access keys can also be assigned to principals
    #   that are not IAM users.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the IAM access key related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the IAM access key was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The type of principal associated with an access key.
    #   @return [String]
    #
    # @!attribute [rw] principal_name
    #   The name of the principal.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the account for the key.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The identifier of the access key.
    #   @return [String]
    #
    # @!attribute [rw] session_context
    #   Information about the session that the key was used for.
    #   @return [Types::AwsIamAccessKeySessionContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeyDetails AWS API Documentation
    #
    class AwsIamAccessKeyDetails < Struct.new(
      :user_name,
      :status,
      :created_at,
      :principal_id,
      :principal_type,
      :principal_name,
      :account_id,
      :access_key_id,
      :session_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the session that the key was used for.
    #
    # @note When making an API call, you may pass AwsIamAccessKeySessionContext
    #   data as a hash:
    #
    #       {
    #         attributes: {
    #           mfa_authenticated: false,
    #           creation_date: "NonEmptyString",
    #         },
    #         session_issuer: {
    #           type: "NonEmptyString",
    #           principal_id: "NonEmptyString",
    #           arn: "NonEmptyString",
    #           account_id: "NonEmptyString",
    #           user_name: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] attributes
    #   Attributes of the session that the key was used for.
    #   @return [Types::AwsIamAccessKeySessionContextAttributes]
    #
    # @!attribute [rw] session_issuer
    #   Information about the entity that created the session.
    #   @return [Types::AwsIamAccessKeySessionContextSessionIssuer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContext AWS API Documentation
    #
    class AwsIamAccessKeySessionContext < Struct.new(
      :attributes,
      :session_issuer)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of the session that the key was used for.
    #
    # @note When making an API call, you may pass AwsIamAccessKeySessionContextAttributes
    #   data as a hash:
    #
    #       {
    #         mfa_authenticated: false,
    #         creation_date: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] mfa_authenticated
    #   Indicates whether the session used multi-factor authentication
    #   (MFA).
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_date
    #   Indicates when the session was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContextAttributes AWS API Documentation
    #
    class AwsIamAccessKeySessionContextAttributes < Struct.new(
      :mfa_authenticated,
      :creation_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the entity that created the session.
    #
    # @note When making an API call, you may pass AwsIamAccessKeySessionContextSessionIssuer
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #         principal_id: "NonEmptyString",
    #         arn: "NonEmptyString",
    #         account_id: "NonEmptyString",
    #         user_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The type of principal (user, role, or group) that created the
    #   session.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the principal (user, role, or group) that
    #   created the session.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the session.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The identifier of the AWS account that created the session.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the principal that created the session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAccessKeySessionContextSessionIssuer AWS API Documentation
    #
    class AwsIamAccessKeySessionContextSessionIssuer < Struct.new(
      :type,
      :principal_id,
      :arn,
      :account_id,
      :user_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed policy that is attached to an IAM principal.
    #
    # @note When making an API call, you may pass AwsIamAttachedManagedPolicy
    #   data as a hash:
    #
    #       {
    #         policy_name: "NonEmptyString",
    #         policy_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamAttachedManagedPolicy AWS API Documentation
    #
    class AwsIamAttachedManagedPolicy < Struct.new(
      :policy_name,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an IAM group.
    #
    # @note When making an API call, you may pass AwsIamGroupDetails
    #   data as a hash:
    #
    #       {
    #         attached_managed_policies: [
    #           {
    #             policy_name: "NonEmptyString",
    #             policy_arn: "NonEmptyString",
    #           },
    #         ],
    #         create_date: "NonEmptyString",
    #         group_id: "NonEmptyString",
    #         group_name: "NonEmptyString",
    #         group_policy_list: [
    #           {
    #             policy_name: "NonEmptyString",
    #           },
    #         ],
    #         path: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies that are attached to the IAM group.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the IAM group was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the IAM group.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the IAM group.
    #   @return [String]
    #
    # @!attribute [rw] group_policy_list
    #   The list of inline policies that are embedded in the group.
    #   @return [Array<Types::AwsIamGroupPolicy>]
    #
    # @!attribute [rw] path
    #   The path to the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamGroupDetails AWS API Documentation
    #
    class AwsIamGroupDetails < Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_id,
      :group_name,
      :group_policy_list,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A managed policy that is attached to the IAM group.
    #
    # @note When making an API call, you may pass AwsIamGroupPolicy
    #   data as a hash:
    #
    #       {
    #         policy_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamGroupPolicy AWS API Documentation
    #
    class AwsIamGroupPolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance profile.
    #
    # @note When making an API call, you may pass AwsIamInstanceProfile
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString",
    #         create_date: "NonEmptyString",
    #         instance_profile_id: "NonEmptyString",
    #         instance_profile_name: "NonEmptyString",
    #         path: "NonEmptyString",
    #         roles: [
    #           {
    #             arn: "NonEmptyString",
    #             assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #             create_date: "NonEmptyString",
    #             path: "NonEmptyString",
    #             role_id: "NonEmptyString",
    #             role_name: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   Indicates when the instance profile was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_id
    #   The identifier of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The roles associated with the instance profile.
    #   @return [Array<Types::AwsIamInstanceProfileRole>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamInstanceProfile AWS API Documentation
    #
    class AwsIamInstanceProfile < Struct.new(
      :arn,
      :create_date,
      :instance_profile_id,
      :instance_profile_name,
      :path,
      :roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a role associated with an instance profile.
    #
    # @note When making an API call, you may pass AwsIamInstanceProfileRole
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString",
    #         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #         create_date: "NonEmptyString",
    #         path: "NonEmptyString",
    #         role_id: "NonEmptyString",
    #         role_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the role.
    #   @return [String]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The policy that grants an entity permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   Indicates when the role was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The identifier of the role.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamInstanceProfileRole AWS API Documentation
    #
    class AwsIamInstanceProfileRole < Struct.new(
      :arn,
      :assume_role_policy_document,
      :create_date,
      :path,
      :role_id,
      :role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the policy used to set the permissions boundary for
    # an IAM principal.
    #
    # @note When making an API call, you may pass AwsIamPermissionsBoundary
    #   data as a hash:
    #
    #       {
    #         permissions_boundary_arn: "NonEmptyString",
    #         permissions_boundary_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] permissions_boundary_arn
    #   The ARN of the policy used to set the permissions boundary.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary_type
    #   The usage type for the permissions boundary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPermissionsBoundary AWS API Documentation
    #
    class AwsIamPermissionsBoundary < Struct.new(
      :permissions_boundary_arn,
      :permissions_boundary_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an IAM permissions policy.
    #
    # @note When making an API call, you may pass AwsIamPolicyDetails
    #   data as a hash:
    #
    #       {
    #         attachment_count: 1,
    #         create_date: "NonEmptyString",
    #         default_version_id: "NonEmptyString",
    #         description: "NonEmptyString",
    #         is_attachable: false,
    #         path: "NonEmptyString",
    #         permissions_boundary_usage_count: 1,
    #         policy_id: "NonEmptyString",
    #         policy_name: "NonEmptyString",
    #         policy_version_list: [
    #           {
    #             version_id: "NonEmptyString",
    #             is_default_version: false,
    #             create_date: "NonEmptyString",
    #           },
    #         ],
    #         update_date: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] attachment_count
    #   The number of users, groups, and roles that the policy is attached
    #   to.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date
    #   When the policy was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier of the default version of the policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] is_attachable
    #   Whether the policy can be attached to a user, group, or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary_usage_count
    #   The number of users and roles that use the policy to set the
    #   permissions boundary.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_id
    #   The unique identifier of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_version_list
    #   List of versions of the policy.
    #   @return [Array<Types::AwsIamPolicyVersion>]
    #
    # @!attribute [rw] update_date
    #   When the policy was most recently updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPolicyDetails AWS API Documentation
    #
    class AwsIamPolicyDetails < Struct.new(
      :attachment_count,
      :create_date,
      :default_version_id,
      :description,
      :is_attachable,
      :path,
      :permissions_boundary_usage_count,
      :policy_id,
      :policy_name,
      :policy_version_list,
      :update_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # A version of an IAM policy.
    #
    # @note When making an API call, you may pass AwsIamPolicyVersion
    #   data as a hash:
    #
    #       {
    #         version_id: "NonEmptyString",
    #         is_default_version: false,
    #         create_date: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] version_id
    #   The identifier of the policy version.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Whether the version is the default version.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_date
    #   Indicates when the version was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamPolicyVersion AWS API Documentation
    #
    class AwsIamPolicyVersion < Struct.new(
      :version_id,
      :is_default_version,
      :create_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IAM role, including all of the role's
    # policies.
    #
    # @note When making an API call, you may pass AwsIamRoleDetails
    #   data as a hash:
    #
    #       {
    #         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #         attached_managed_policies: [
    #           {
    #             policy_name: "NonEmptyString",
    #             policy_arn: "NonEmptyString",
    #           },
    #         ],
    #         create_date: "NonEmptyString",
    #         instance_profile_list: [
    #           {
    #             arn: "NonEmptyString",
    #             create_date: "NonEmptyString",
    #             instance_profile_id: "NonEmptyString",
    #             instance_profile_name: "NonEmptyString",
    #             path: "NonEmptyString",
    #             roles: [
    #               {
    #                 arn: "NonEmptyString",
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 create_date: "NonEmptyString",
    #                 path: "NonEmptyString",
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #               },
    #             ],
    #           },
    #         ],
    #         permissions_boundary: {
    #           permissions_boundary_arn: "NonEmptyString",
    #           permissions_boundary_type: "NonEmptyString",
    #         },
    #         role_id: "NonEmptyString",
    #         role_name: "NonEmptyString",
    #         role_policy_list: [
    #           {
    #             policy_name: "NonEmptyString",
    #           },
    #         ],
    #         max_session_duration: 1,
    #         path: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust policy that grants permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] attached_managed_policies
    #   The list of the managed policies that are attached to the role.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the role was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_list
    #   The list of instance profiles that contain this role.
    #   @return [Array<Types::AwsIamInstanceProfile>]
    #
    # @!attribute [rw] permissions_boundary
    #   Information about the policy used to set the permissions boundary
    #   for an IAM principal.
    #   @return [Types::AwsIamPermissionsBoundary]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role.
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_policy_list
    #   The list of inline policies that are embedded in the role.
    #   @return [Array<Types::AwsIamRolePolicy>]
    #
    # @!attribute [rw] max_session_duration
    #   The maximum session duration (in seconds) that you want to set for
    #   the specified role.
    #   @return [Integer]
    #
    # @!attribute [rw] path
    #   The path to the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamRoleDetails AWS API Documentation
    #
    class AwsIamRoleDetails < Struct.new(
      :assume_role_policy_document,
      :attached_managed_policies,
      :create_date,
      :instance_profile_list,
      :permissions_boundary,
      :role_id,
      :role_name,
      :role_policy_list,
      :max_session_duration,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # An inline policy that is embedded in the role.
    #
    # @note When making an API call, you may pass AwsIamRolePolicy
    #   data as a hash:
    #
    #       {
    #         policy_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamRolePolicy AWS API Documentation
    #
    class AwsIamRolePolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an IAM user.
    #
    # @note When making an API call, you may pass AwsIamUserDetails
    #   data as a hash:
    #
    #       {
    #         attached_managed_policies: [
    #           {
    #             policy_name: "NonEmptyString",
    #             policy_arn: "NonEmptyString",
    #           },
    #         ],
    #         create_date: "NonEmptyString",
    #         group_list: ["NonEmptyString"],
    #         path: "NonEmptyString",
    #         permissions_boundary: {
    #           permissions_boundary_arn: "NonEmptyString",
    #           permissions_boundary_type: "NonEmptyString",
    #         },
    #         user_id: "NonEmptyString",
    #         user_name: "NonEmptyString",
    #         user_policy_list: [
    #           {
    #             policy_name: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies that are attached to the user.
    #   @return [Array<Types::AwsIamAttachedManagedPolicy>]
    #
    # @!attribute [rw] create_date
    #   Indicates when the user was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] group_list
    #   A list of IAM groups that the user belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] path
    #   The path to the user.
    #   @return [String]
    #
    # @!attribute [rw] permissions_boundary
    #   The permissions boundary for the user.
    #   @return [Types::AwsIamPermissionsBoundary]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_policy_list
    #   The list of inline policies that are embedded in the user.
    #   @return [Array<Types::AwsIamUserPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamUserDetails AWS API Documentation
    #
    class AwsIamUserDetails < Struct.new(
      :attached_managed_policies,
      :create_date,
      :group_list,
      :path,
      :permissions_boundary,
      :user_id,
      :user_name,
      :user_policy_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an inline policy that is embedded in the user.
    #
    # @note When making an API call, you may pass AwsIamUserPolicy
    #   data as a hash:
    #
    #       {
    #         policy_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsIamUserPolicy AWS API Documentation
    #
    class AwsIamUserPolicy < Struct.new(
      :policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a customer master key (CMK).
    #
    # @note When making an API call, you may pass AwsKmsKeyDetails
    #   data as a hash:
    #
    #       {
    #         aws_account_id: "NonEmptyString",
    #         creation_date: 1.0,
    #         key_id: "NonEmptyString",
    #         key_manager: "NonEmptyString",
    #         key_state: "NonEmptyString",
    #         origin: "NonEmptyString",
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] aws_account_id
    #   The twelve-digit account ID of the AWS account that owns the CMK.
    #   @return [String]
    #
    # @!attribute [rw] creation_date
    #   Indicates when the CMK was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [Float]
    #
    # @!attribute [rw] key_id
    #   The globally unique identifier for the CMK.
    #   @return [String]
    #
    # @!attribute [rw] key_manager
    #   The manager of the CMK. CMKs in your AWS account are either customer
    #   managed or AWS managed.
    #   @return [String]
    #
    # @!attribute [rw] key_state
    #   The state of the CMK.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   The source of the CMK's key material.
    #
    #   When this value is `AWS_KMS`, AWS KMS created the key material.
    #
    #   When this value is `EXTERNAL`, the key material was imported from
    #   your existing key management infrastructure or the CMK lacks key
    #   material.
    #
    #   When this value is `AWS_CLOUDHSM`, the key material was created in
    #   the AWS CloudHSM cluster associated with a custom key store.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsKmsKeyDetails AWS API Documentation
    #
    class AwsKmsKeyDetails < Struct.new(
      :aws_account_id,
      :creation_date,
      :key_id,
      :key_manager,
      :key_state,
      :origin,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code for the Lambda function. You can specify either an object in
    # Amazon S3, or upload a deployment package directly.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionCode
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "NonEmptyString",
    #         s3_key: "NonEmptyString",
    #         s3_object_version: "NonEmptyString",
    #         zip_file: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   An Amazon S3 bucket in the same AWS Region as your function. The
    #   bucket can be in a different AWS account.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The Amazon S3 key of the deployment package.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   For versioned objects, the version of the deployment package object
    #   to use.
    #   @return [String]
    #
    # @!attribute [rw] zip_file
    #   The base64-encoded contents of the deployment package. AWS SDK and
    #   AWS CLI clients handle the encoding for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionCode AWS API Documentation
    #
    class AwsLambdaFunctionCode < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      :zip_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dead-letter queue for failed asynchronous invocations.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionDeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         target_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS
    #   topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDeadLetterConfig AWS API Documentation
    #
    class AwsLambdaFunctionDeadLetterConfig < Struct.new(
      :target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a function's configuration.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionDetails
    #   data as a hash:
    #
    #       {
    #         code: {
    #           s3_bucket: "NonEmptyString",
    #           s3_key: "NonEmptyString",
    #           s3_object_version: "NonEmptyString",
    #           zip_file: "NonEmptyString",
    #         },
    #         code_sha_256: "NonEmptyString",
    #         dead_letter_config: {
    #           target_arn: "NonEmptyString",
    #         },
    #         environment: {
    #           variables: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           error: {
    #             error_code: "NonEmptyString",
    #             message: "NonEmptyString",
    #           },
    #         },
    #         function_name: "NonEmptyString",
    #         handler: "NonEmptyString",
    #         kms_key_arn: "NonEmptyString",
    #         last_modified: "NonEmptyString",
    #         layers: [
    #           {
    #             arn: "NonEmptyString",
    #             code_size: 1,
    #           },
    #         ],
    #         master_arn: "NonEmptyString",
    #         memory_size: 1,
    #         revision_id: "NonEmptyString",
    #         role: "NonEmptyString",
    #         runtime: "NonEmptyString",
    #         timeout: 1,
    #         tracing_config: {
    #           mode: "NonEmptyString",
    #         },
    #         vpc_config: {
    #           security_group_ids: ["NonEmptyString"],
    #           subnet_ids: ["NonEmptyString"],
    #           vpc_id: "NonEmptyString",
    #         },
    #         version: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] code
    #   An `AwsLambdaFunctionCode` object.
    #   @return [Types::AwsLambdaFunctionCode]
    #
    # @!attribute [rw] code_sha_256
    #   The SHA256 hash of the function's deployment package.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_config
    #   The function's dead letter queue.
    #   @return [Types::AwsLambdaFunctionDeadLetterConfig]
    #
    # @!attribute [rw] environment
    #   The function's environment variables.
    #   @return [Types::AwsLambdaFunctionEnvironment]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] handler
    #   The function that Lambda calls to begin executing your function.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key that's used to encrypt the function's environment
    #   variables. This key is only returned if you've configured a
    #   customer managed CMK.
    #   @return [String]
    #
    # @!attribute [rw] last_modified
    #   Indicates when the function was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] layers
    #   The function's layers.
    #   @return [Array<Types::AwsLambdaFunctionLayer>]
    #
    # @!attribute [rw] master_arn
    #   For Lambda@Edge functions, the ARN of the master function.
    #   @return [String]
    #
    # @!attribute [rw] memory_size
    #   The memory that's allocated to the function.
    #   @return [Integer]
    #
    # @!attribute [rw] revision_id
    #   The latest updated revision of the function or alias.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The function's execution role.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime environment for the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] timeout
    #   The amount of time that Lambda allows a function to run before
    #   stopping it.
    #   @return [Integer]
    #
    # @!attribute [rw] tracing_config
    #   The function's AWS X-Ray tracing configuration.
    #   @return [Types::AwsLambdaFunctionTracingConfig]
    #
    # @!attribute [rw] vpc_config
    #   The function's networking configuration.
    #   @return [Types::AwsLambdaFunctionVpcConfig]
    #
    # @!attribute [rw] version
    #   The version of the Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionDetails AWS API Documentation
    #
    class AwsLambdaFunctionDetails < Struct.new(
      :code,
      :code_sha_256,
      :dead_letter_config,
      :environment,
      :function_name,
      :handler,
      :kms_key_arn,
      :last_modified,
      :layers,
      :master_arn,
      :memory_size,
      :revision_id,
      :role,
      :runtime,
      :timeout,
      :tracing_config,
      :vpc_config,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A function's environment variable settings.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionEnvironment
    #   data as a hash:
    #
    #       {
    #         variables: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         error: {
    #           error_code: "NonEmptyString",
    #           message: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] variables
    #   Environment variable key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error
    #   An `AwsLambdaFunctionEnvironmentError` object.
    #   @return [Types::AwsLambdaFunctionEnvironmentError]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironment AWS API Documentation
    #
    class AwsLambdaFunctionEnvironment < Struct.new(
      :variables,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error messages for environment variables that couldn't be applied.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionEnvironmentError
    #   data as a hash:
    #
    #       {
    #         error_code: "NonEmptyString",
    #         message: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionEnvironmentError AWS API Documentation
    #
    class AwsLambdaFunctionEnvironmentError < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Lambda layer.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionLayer
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString",
    #         code_size: 1,
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the function layer.
    #   @return [String]
    #
    # @!attribute [rw] code_size
    #   The size of the layer archive in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionLayer AWS API Documentation
    #
    class AwsLambdaFunctionLayer < Struct.new(
      :arn,
      :code_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The function's AWS X-Ray tracing configuration.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionTracingConfig
    #   data as a hash:
    #
    #       {
    #         mode: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] mode
    #   The tracing mode.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionTracingConfig AWS API Documentation
    #
    class AwsLambdaFunctionTracingConfig < Struct.new(
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC security groups and subnets that are attached to a Lambda
    # function. For more information, see VPC Settings.
    #
    # @note When making an API call, you may pass AwsLambdaFunctionVpcConfig
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_ids: ["NonEmptyString"],
    #         vpc_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security groups IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaFunctionVpcConfig AWS API Documentation
    #
    class AwsLambdaFunctionVpcConfig < Struct.new(
      :security_group_ids,
      :subnet_ids,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a Lambda layer version.
    #
    # @note When making an API call, you may pass AwsLambdaLayerVersionDetails
    #   data as a hash:
    #
    #       {
    #         version: 1,
    #         compatible_runtimes: ["NonEmptyString"],
    #         created_date: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] compatible_runtimes
    #   The layer's compatible runtimes. Maximum number of five items.
    #
    #   Valid values: `nodejs10.x` \| `nodejs12.x` \| `java8` \| `java11` \|
    #   `python2.7` \| `python3.6` \| `python3.7` \| `python3.8` \|
    #   `dotnetcore1.0` \| `dotnetcore2.1` \| `go1.x` \| `ruby2.5` \|
    #   `provided`
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   Indicates when the version was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsLambdaLayerVersionDetails AWS API Documentation
    #
    class AwsLambdaLayerVersionDetails < Struct.new(
      :version,
      :compatible_runtimes,
      :created_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM role that is associated with the Amazon RDS DB cluster.
    #
    # @note When making an API call, you may pass AwsRdsDbClusterAssociatedRole
    #   data as a hash:
    #
    #       {
    #         role_arn: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the association between the IAM role and the DB
    #   cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterAssociatedRole AWS API Documentation
    #
    class AwsRdsDbClusterAssociatedRole < Struct.new(
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon RDS DB cluster.
    #
    # @note When making an API call, you may pass AwsRdsDbClusterDetails
    #   data as a hash:
    #
    #       {
    #         allocated_storage: 1,
    #         availability_zones: ["NonEmptyString"],
    #         backup_retention_period: 1,
    #         database_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #         endpoint: "NonEmptyString",
    #         reader_endpoint: "NonEmptyString",
    #         custom_endpoints: ["NonEmptyString"],
    #         multi_az: false,
    #         engine: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         port: 1,
    #         master_username: "NonEmptyString",
    #         preferred_backup_window: "NonEmptyString",
    #         preferred_maintenance_window: "NonEmptyString",
    #         read_replica_identifiers: ["NonEmptyString"],
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         hosted_zone_id: "NonEmptyString",
    #         storage_encrypted: false,
    #         kms_key_id: "NonEmptyString",
    #         db_cluster_resource_id: "NonEmptyString",
    #         associated_roles: [
    #           {
    #             role_arn: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         cluster_create_time: "NonEmptyString",
    #         enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #         engine_mode: "NonEmptyString",
    #         deletion_protection: false,
    #         http_endpoint_enabled: false,
    #         activity_stream_status: "NonEmptyString",
    #         copy_tags_to_snapshot: false,
    #         cross_account_clone: false,
    #         domain_memberships: [
    #           {
    #             domain: "NonEmptyString",
    #             status: "NonEmptyString",
    #             fqdn: "NonEmptyString",
    #             iam_role_name: "NonEmptyString",
    #           },
    #         ],
    #         db_cluster_parameter_group: "NonEmptyString",
    #         db_subnet_group: "NonEmptyString",
    #         db_cluster_option_group_memberships: [
    #           {
    #             db_cluster_option_group_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         db_cluster_identifier: "NonEmptyString",
    #         db_cluster_members: [
    #           {
    #             is_cluster_writer: false,
    #             promotion_tier: 1,
    #             db_instance_identifier: "NonEmptyString",
    #             db_cluster_parameter_group_status: "NonEmptyString",
    #           },
    #         ],
    #         iam_database_authentication_enabled: false,
    #       }
    #
    # @!attribute [rw] allocated_storage
    #   For all database engines except Aurora, specifies the allocated
    #   storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones (AZs) where instances in the DB cluster
    #   can be created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which automated backups are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint for the primary instance of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] reader_endpoint
    #   The reader endpoint for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] custom_endpoints
    #   A list of custom endpoints for the DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] multi_az
    #   Whether the DB cluster has instances in multiple Availability Zones.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine
    #   The name of the database engine to use for this DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version number of the database engine to use.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the DB instances in the DB cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] preferred_backup_window
    #   The range of time each day when automated backups are created, if
    #   automated backups are enabled.
    #
    #   Uses the format `HH:MM-HH:MM`. For example, `04:52-05:22`.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Uses the format `<day>:HH:MM-<day>:HH:MM`.
    #
    #   For the day values, use
    #   `mon`\|`tue`\|`wed`\|`thu`\|`fri`\|`sat`\|`sun`.
    #
    #   For example, `sun:09:32-sun:10:02`.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_identifiers
    #   The identifiers of the read replicas that are associated with this
    #   DB cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of VPC security groups that the DB cluster belongs to.
    #   @return [Array<Types::AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the identifier that Amazon Route 53 assigns when you
    #   create a hosted zone.
    #   @return [String]
    #
    # @!attribute [rw] storage_encrypted
    #   Whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the AWS KMS master key that is used to encrypt the
    #   database instances in the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_resource_id
    #   The identifier of the DB cluster. The identifier must be unique
    #   within each AWS Region and is immutable.
    #   @return [String]
    #
    # @!attribute [rw] associated_roles
    #   A list of the IAM roles that are associated with the DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterAssociatedRole>]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the DB cluster was created, in Universal Coordinated
    #   Time (UTC).
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] enabled_cloud_watch_logs_exports
    #   A list of log types that this DB cluster is configured to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] engine_mode
    #   The database engine mode of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Whether the DB cluster has deletion protection enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] http_endpoint_enabled
    #   Whether the HTTP endpoint for an Aurora Serverless DB cluster is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] activity_stream_status
    #   The status of the database activity stream.
    #   @return [String]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Whether tags are copied from the DB cluster to snapshots of the DB
    #   cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_clone
    #   Whether the DB cluster is a clone of a DB cluster owned by a
    #   different AWS account.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory domain membership records that are associated
    #   with the DB cluster.
    #   @return [Array<Types::AwsRdsDbDomainMembership>]
    #
    # @!attribute [rw] db_cluster_parameter_group
    #   The name of the DB cluster parameter group for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   The subnet group that is associated with the DB cluster, including
    #   the name, description, and subnets in the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_option_group_memberships
    #   The list of option group memberships for this DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterOptionGroupMembership>]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier that the user assigned to the cluster.
    #   This identifier is the unique key that identifies a DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_members
    #   The list of instances that make up the DB cluster.
    #   @return [Array<Types::AwsRdsDbClusterMember>]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether the mapping of IAM accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterDetails AWS API Documentation
    #
    class AwsRdsDbClusterDetails < Struct.new(
      :allocated_storage,
      :availability_zones,
      :backup_retention_period,
      :database_name,
      :status,
      :endpoint,
      :reader_endpoint,
      :custom_endpoints,
      :multi_az,
      :engine,
      :engine_version,
      :port,
      :master_username,
      :preferred_backup_window,
      :preferred_maintenance_window,
      :read_replica_identifiers,
      :vpc_security_groups,
      :hosted_zone_id,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_resource_id,
      :associated_roles,
      :cluster_create_time,
      :enabled_cloud_watch_logs_exports,
      :engine_mode,
      :deletion_protection,
      :http_endpoint_enabled,
      :activity_stream_status,
      :copy_tags_to_snapshot,
      :cross_account_clone,
      :domain_memberships,
      :db_cluster_parameter_group,
      :db_subnet_group,
      :db_cluster_option_group_memberships,
      :db_cluster_identifier,
      :db_cluster_members,
      :iam_database_authentication_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an instance in the DB cluster.
    #
    # @note When making an API call, you may pass AwsRdsDbClusterMember
    #   data as a hash:
    #
    #       {
    #         is_cluster_writer: false,
    #         promotion_tier: 1,
    #         db_instance_identifier: "NonEmptyString",
    #         db_cluster_parameter_group_status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] is_cluster_writer
    #   Whether the cluster member is the primary instance for the DB
    #   cluster.
    #   @return [Boolean]
    #
    # @!attribute [rw] promotion_tier
    #   Specifies the order in which an Aurora replica is promoted to the
    #   primary instance when the existing primary instance fails.
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   The instance identifier for this member of the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_parameter_group_status
    #   The status of the DB cluster parameter group for this member of the
    #   DB cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterMember AWS API Documentation
    #
    class AwsRdsDbClusterMember < Struct.new(
      :is_cluster_writer,
      :promotion_tier,
      :db_instance_identifier,
      :db_cluster_parameter_group_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an option group membership for a DB cluster.
    #
    # @note When making an API call, you may pass AwsRdsDbClusterOptionGroupMembership
    #   data as a hash:
    #
    #       {
    #         db_cluster_option_group_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] db_cluster_option_group_name
    #   The name of the DB cluster option group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DB cluster option group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterOptionGroupMembership AWS API Documentation
    #
    class AwsRdsDbClusterOptionGroupMembership < Struct.new(
      :db_cluster_option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon RDS DB cluster snapshot.
    #
    # @note When making an API call, you may pass AwsRdsDbClusterSnapshotDetails
    #   data as a hash:
    #
    #       {
    #         availability_zones: ["NonEmptyString"],
    #         snapshot_create_time: "NonEmptyString",
    #         engine: "NonEmptyString",
    #         allocated_storage: 1,
    #         status: "NonEmptyString",
    #         port: 1,
    #         vpc_id: "NonEmptyString",
    #         cluster_create_time: "NonEmptyString",
    #         master_username: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         license_model: "NonEmptyString",
    #         snapshot_type: "NonEmptyString",
    #         percent_progress: 1,
    #         storage_encrypted: false,
    #         kms_key_id: "NonEmptyString",
    #         db_cluster_identifier: "NonEmptyString",
    #         db_cluster_snapshot_identifier: "NonEmptyString",
    #         iam_database_authentication_enabled: false,
    #       }
    #
    # @!attribute [rw] availability_zones
    #   A list of Availability Zones where instances in the DB cluster can
    #   be created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] snapshot_create_time
    #   Indicates when the snapshot was taken.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   Specifies the allocated storage size in gibibytes (GiB).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the DB instances in the DB cluster accept
    #   connections.
    #   @return [Integer]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID that is associated with the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the DB cluster was created, in Universal Coordinated
    #   Time (UTC).
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The name of the master user for the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the database engine to use.
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   The license model information for this DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   Specifies the percentage of the estimated data that has been
    #   transferred.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_encrypted
    #   Whether the DB cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN of the AWS KMS master key that is used to encrypt the
    #   database instances in the DB cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   The DB cluster identifier.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_snapshot_identifier
    #   The identifier of the DB cluster snapshot.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   Whether mapping of IAM accounts to database accounts is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbClusterSnapshotDetails AWS API Documentation
    #
    class AwsRdsDbClusterSnapshotDetails < Struct.new(
      :availability_zones,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :vpc_id,
      :cluster_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :percent_progress,
      :storage_encrypted,
      :kms_key_id,
      :db_cluster_identifier,
      :db_cluster_snapshot_identifier,
      :iam_database_authentication_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Active Directory domain membership record
    # associated with the DB instance.
    #
    # @note When making an API call, you may pass AwsRdsDbDomainMembership
    #   data as a hash:
    #
    #       {
    #         domain: "NonEmptyString",
    #         status: "NonEmptyString",
    #         fqdn: "NonEmptyString",
    #         iam_role_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] domain
    #   The identifier of the Active Directory domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Active Directory Domain membership for the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] fqdn
    #   The fully qualified domain name of the Active Directory domain.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_name
    #   The name of the IAM role to use when making API calls to the
    #   Directory Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbDomainMembership AWS API Documentation
    #
    class AwsRdsDbDomainMembership < Struct.new(
      :domain,
      :status,
      :fqdn,
      :iam_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Identity and Access Management (IAM) role associated with the
    # DB instance.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceAssociatedRole
    #   data as a hash:
    #
    #       {
    #         role_arn: "NonEmptyString",
    #         feature_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that is associated
    #   with the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] feature_name
    #   The name of the feature associated with the IAM)role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the state of the association between the IAM role and the
    #   DB instance. The `Status` property returns one of the following
    #   values:
    #
    #   * `ACTIVE` - The IAM role ARN is associated with the DB instance and
    #     can be used to access other AWS services on your behalf.
    #
    #   * `PENDING` - The IAM role ARN is being associated with the DB
    #     instance.
    #
    #   * `INVALID` - The IAM role ARN is associated with the DB instance.
    #     But the DB instance is unable to assume the IAM role in order to
    #     access other AWS services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceAssociatedRole AWS API Documentation
    #
    class AwsRdsDbInstanceAssociatedRole < Struct.new(
      :role_arn,
      :feature_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details of an Amazon RDS DB instance.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceDetails
    #   data as a hash:
    #
    #       {
    #         associated_roles: [
    #           {
    #             role_arn: "NonEmptyString",
    #             feature_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         ca_certificate_identifier: "NonEmptyString",
    #         db_cluster_identifier: "NonEmptyString",
    #         db_instance_identifier: "NonEmptyString",
    #         db_instance_class: "NonEmptyString",
    #         db_instance_port: 1,
    #         dbi_resource_id: "NonEmptyString",
    #         db_name: "NonEmptyString",
    #         deletion_protection: false,
    #         endpoint: {
    #           address: "NonEmptyString",
    #           port: 1,
    #           hosted_zone_id: "NonEmptyString",
    #         },
    #         engine: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         iam_database_authentication_enabled: false,
    #         instance_create_time: "NonEmptyString",
    #         kms_key_id: "NonEmptyString",
    #         publicly_accessible: false,
    #         storage_encrypted: false,
    #         tde_credential_arn: "NonEmptyString",
    #         vpc_security_groups: [
    #           {
    #             vpc_security_group_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         multi_az: false,
    #         enhanced_monitoring_resource_arn: "NonEmptyString",
    #         db_instance_status: "NonEmptyString",
    #         master_username: "NonEmptyString",
    #         allocated_storage: 1,
    #         preferred_backup_window: "NonEmptyString",
    #         backup_retention_period: 1,
    #         db_security_groups: ["NonEmptyString"],
    #         db_parameter_groups: [
    #           {
    #             db_parameter_group_name: "NonEmptyString",
    #             parameter_apply_status: "NonEmptyString",
    #           },
    #         ],
    #         availability_zone: "NonEmptyString",
    #         db_subnet_group: {
    #           db_subnet_group_name: "NonEmptyString",
    #           db_subnet_group_description: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           subnet_group_status: "NonEmptyString",
    #           subnets: [
    #             {
    #               subnet_identifier: "NonEmptyString",
    #               subnet_availability_zone: {
    #                 name: "NonEmptyString",
    #               },
    #               subnet_status: "NonEmptyString",
    #             },
    #           ],
    #           db_subnet_group_arn: "NonEmptyString",
    #         },
    #         preferred_maintenance_window: "NonEmptyString",
    #         pending_modified_values: {
    #           db_instance_class: "NonEmptyString",
    #           allocated_storage: 1,
    #           master_user_password: "NonEmptyString",
    #           port: 1,
    #           backup_retention_period: 1,
    #           multi_az: false,
    #           engine_version: "NonEmptyString",
    #           license_model: "NonEmptyString",
    #           iops: 1,
    #           db_instance_identifier: "NonEmptyString",
    #           storage_type: "NonEmptyString",
    #           ca_certificate_identifier: "NonEmptyString",
    #           db_subnet_group_name: "NonEmptyString",
    #           pending_cloud_watch_logs_exports: {
    #             log_types_to_enable: ["NonEmptyString"],
    #             log_types_to_disable: ["NonEmptyString"],
    #           },
    #           processor_features: [
    #             {
    #               name: "NonEmptyString",
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         latest_restorable_time: "NonEmptyString",
    #         auto_minor_version_upgrade: false,
    #         read_replica_source_db_instance_identifier: "NonEmptyString",
    #         read_replica_db_instance_identifiers: ["NonEmptyString"],
    #         read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #         license_model: "NonEmptyString",
    #         iops: 1,
    #         option_group_memberships: [
    #           {
    #             option_group_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         character_set_name: "NonEmptyString",
    #         secondary_availability_zone: "NonEmptyString",
    #         status_infos: [
    #           {
    #             status_type: "NonEmptyString",
    #             normal: false,
    #             status: "NonEmptyString",
    #             message: "NonEmptyString",
    #           },
    #         ],
    #         storage_type: "NonEmptyString",
    #         domain_memberships: [
    #           {
    #             domain: "NonEmptyString",
    #             status: "NonEmptyString",
    #             fqdn: "NonEmptyString",
    #             iam_role_name: "NonEmptyString",
    #           },
    #         ],
    #         copy_tags_to_snapshot: false,
    #         monitoring_interval: 1,
    #         monitoring_role_arn: "NonEmptyString",
    #         promotion_tier: 1,
    #         timezone: "NonEmptyString",
    #         performance_insights_enabled: false,
    #         performance_insights_kms_key_id: "NonEmptyString",
    #         performance_insights_retention_period: 1,
    #         enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #         processor_features: [
    #           {
    #             name: "NonEmptyString",
    #             value: "NonEmptyString",
    #           },
    #         ],
    #         listener_endpoint: {
    #           address: "NonEmptyString",
    #           port: 1,
    #           hosted_zone_id: "NonEmptyString",
    #         },
    #         max_allocated_storage: 1,
    #       }
    #
    # @!attribute [rw] associated_roles
    #   The AWS Identity and Access Management (IAM) roles associated with
    #   the DB instance.
    #   @return [Array<Types::AwsRdsDbInstanceAssociatedRole>]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   The identifier of the CA certificate for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_cluster_identifier
    #   If the DB instance is a member of a DB cluster, contains the name of
    #   the DB cluster that the DB instance is a member of.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   Contains a user-supplied database identifier. This identifier is the
    #   unique key that identifies a DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_class
    #   Contains the name of the compute and memory capacity class of the DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_port
    #   Specifies the port that the DB instance listens on. If the DB
    #   instance is part of a DB cluster, this can be a different port than
    #   the DB cluster port.
    #   @return [Integer]
    #
    # @!attribute [rw] dbi_resource_id
    #   The AWS Region-unique, immutable identifier for the DB instance.
    #   This identifier is found in AWS CloudTrail log entries whenever the
    #   AWS KMS key for the DB instance is accessed.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The meaning of this parameter differs according to the database
    #   engine you use.
    #
    #   **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    #   Contains the name of the initial database of this instance that was
    #   provided at create time, if one was specified when the DB instance
    #   was created. This same name is returned for the life of the DB
    #   instance.
    #
    #   **Oracle**
    #
    #   Contains the Oracle System ID (SID) of the created DB instance. Not
    #   shown when the returned parameters do not apply to an Oracle DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether the DB instance has deletion protection enabled.
    #
    #   When deletion protection is enabled, the database cannot be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::AwsRdsDbInstanceEndpoint]
    #
    # @!attribute [rw] engine
    #   Provides the name of the database engine to use for this DB
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Indicates the database engine version.
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   True if mapping of AWS Identity and Access Management (IAM) accounts
    #   to database accounts is enabled, and otherwise false.
    #
    #   IAM database authentication can be enabled for the following
    #   database engines.
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   * Aurora 5.6 or higher
    #   @return [Boolean]
    #
    # @!attribute [rw] instance_create_time
    #   Indicates when the DB instance was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   If `StorageEncrypted` is true, the AWS KMS key identifier for the
    #   encrypted DB instance.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the DB instance.
    #
    #   A value of true specifies an Internet-facing instance with a
    #   publicly resolvable DNS name, which resolves to a public IP address.
    #
    #   A value of false specifies an internal instance with a DNS name that
    #   resolves to a private IP address.
    #   @return [Boolean]
    #
    # @!attribute [rw] storage_encrypted
    #   Specifies whether the DB instance is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] tde_credential_arn
    #   The ARN from the key store with which the instance is associated for
    #   TDE encryption.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of VPC security groups that the DB instance belongs to.
    #   @return [Array<Types::AwsRdsDbInstanceVpcSecurityGroup>]
    #
    # @!attribute [rw] multi_az
    #   Whether the DB instance is a multiple Availability Zone deployment.
    #   @return [Boolean]
    #
    # @!attribute [rw] enhanced_monitoring_resource_arn
    #   The ARN of the CloudWatch Logs log stream that receives the enhanced
    #   monitoring metrics data for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] db_instance_status
    #   The current status of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The master user name of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to initially allocate for the
    #   DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_backup_window
    #   The range of time each day when automated backups are created, if
    #   automated backups are enabled.
    #
    #   Uses the format `HH:MM-HH:MM`. For example, `04:52-05:22`.
    #   @return [String]
    #
    # @!attribute [rw] backup_retention_period
    #   The number of days for which to retain automated backups.
    #   @return [Integer]
    #
    # @!attribute [rw] db_security_groups
    #   A list of the DB security groups to assign to the DB instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] db_parameter_groups
    #   A list of the DB parameter groups to assign to the DB instance.
    #   @return [Array<Types::AwsRdsDbParameterGroup>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the DB instance will be created.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group
    #   Information about the subnet group that is associated with the DB
    #   instance.
    #   @return [Types::AwsRdsDbSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Uses the format `<day>:HH:MM-<day>:HH:MM`.
    #
    #   For the day values, use
    #   `mon`\|`tue`\|`wed`\|`thu`\|`fri`\|`sat`\|`sun`.
    #
    #   For example, `sun:09:32-sun:10:02`.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   Changes to the DB instance that are currently pending.
    #   @return [Types::AwsRdsDbPendingModifiedValues]
    #
    # @!attribute [rw] latest_restorable_time
    #   Specifies the latest time to which a database can be restored with
    #   point-in-time restore.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates whether minor version patches are applied automatically.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_replica_source_db_instance_identifier
    #   If this DB instance is a read replica, contains the identifier of
    #   the source DB instance.
    #   @return [String]
    #
    # @!attribute [rw] read_replica_db_instance_identifiers
    #   List of identifiers of the read replicas associated with this DB
    #   instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] read_replica_db_cluster_identifiers
    #   List of identifiers of Aurora DB clusters to which the RDS DB
    #   instance is replicated as a read replica.
    #   @return [Array<String>]
    #
    # @!attribute [rw] license_model
    #   License model information for this DB instance.
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   Specifies the provisioned IOPS (I/O operations per second) for this
    #   DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_memberships
    #   The list of option group memberships for this DB instance.
    #   @return [Array<Types::AwsRdsDbOptionGroupMembership>]
    #
    # @!attribute [rw] character_set_name
    #   The name of the character set that this DB instance is associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] secondary_availability_zone
    #   For a DB instance with multi-Availability Zone support, the name of
    #   the secondary Availability Zone.
    #   @return [String]
    #
    # @!attribute [rw] status_infos
    #   The status of a read replica. If the instance isn't a read replica,
    #   this is empty.
    #   @return [Array<Types::AwsRdsDbStatusInfo>]
    #
    # @!attribute [rw] storage_type
    #   The storage type for the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] domain_memberships
    #   The Active Directory domain membership records associated with the
    #   DB instance.
    #   @return [Array<Types::AwsRdsDbDomainMembership>]
    #
    # @!attribute [rw] copy_tags_to_snapshot
    #   Whether to copy resource tags to snapshots of the DB instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] monitoring_interval
    #   The interval, in seconds, between points when enhanced monitoring
    #   metrics are collected for the DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] monitoring_role_arn
    #   The ARN for the IAM role that permits Amazon RDS to send enhanced
    #   monitoring metrics to CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] promotion_tier
    #   The order in which to promote an Aurora replica to the primary
    #   instance after a failure of the existing primary instance.
    #   @return [Integer]
    #
    # @!attribute [rw] timezone
    #   The time zone of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_enabled
    #   Indicates whether Performance Insights is enabled for the DB
    #   instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] performance_insights_kms_key_id
    #   The identifier of the AWS KMS key used to encrypt the Performance
    #   Insights data.
    #   @return [String]
    #
    # @!attribute [rw] performance_insights_retention_period
    #   The number of days to retain Performance Insights data.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled_cloud_watch_logs_exports
    #   A list of log types that this DB instance is configured to export to
    #   CloudWatch Logs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processor_features
    #   The number of CPU cores and the number of threads per core for the
    #   DB instance class of the DB instance.
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @!attribute [rw] listener_endpoint
    #   Specifies the connection endpoint.
    #   @return [Types::AwsRdsDbInstanceEndpoint]
    #
    # @!attribute [rw] max_allocated_storage
    #   The upper limit to which Amazon RDS can automatically scale the
    #   storage of the DB instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceDetails AWS API Documentation
    #
    class AwsRdsDbInstanceDetails < Struct.new(
      :associated_roles,
      :ca_certificate_identifier,
      :db_cluster_identifier,
      :db_instance_identifier,
      :db_instance_class,
      :db_instance_port,
      :dbi_resource_id,
      :db_name,
      :deletion_protection,
      :endpoint,
      :engine,
      :engine_version,
      :iam_database_authentication_enabled,
      :instance_create_time,
      :kms_key_id,
      :publicly_accessible,
      :storage_encrypted,
      :tde_credential_arn,
      :vpc_security_groups,
      :multi_az,
      :enhanced_monitoring_resource_arn,
      :db_instance_status,
      :master_username,
      :allocated_storage,
      :preferred_backup_window,
      :backup_retention_period,
      :db_security_groups,
      :db_parameter_groups,
      :availability_zone,
      :db_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :latest_restorable_time,
      :auto_minor_version_upgrade,
      :read_replica_source_db_instance_identifier,
      :read_replica_db_instance_identifiers,
      :read_replica_db_cluster_identifiers,
      :license_model,
      :iops,
      :option_group_memberships,
      :character_set_name,
      :secondary_availability_zone,
      :status_infos,
      :storage_type,
      :domain_memberships,
      :copy_tags_to_snapshot,
      :monitoring_interval,
      :monitoring_role_arn,
      :promotion_tier,
      :timezone,
      :performance_insights_enabled,
      :performance_insights_kms_key_id,
      :performance_insights_retention_period,
      :enabled_cloud_watch_logs_exports,
      :processor_features,
      :listener_endpoint,
      :max_allocated_storage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the connection endpoint.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "NonEmptyString",
    #         port: 1,
    #         hosted_zone_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] address
    #   Specifies the DNS address of the DB instance.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Specifies the port that the database engine is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] hosted_zone_id
    #   Specifies the ID that Amazon Route 53 assigns when you create a
    #   hosted zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceEndpoint AWS API Documentation
    #
    class AwsRdsDbInstanceEndpoint < Struct.new(
      :address,
      :port,
      :hosted_zone_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A VPC security groups that the DB instance belongs to.
    #
    # @note When making an API call, you may pass AwsRdsDbInstanceVpcSecurityGroup
    #   data as a hash:
    #
    #       {
    #         vpc_security_group_id: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] vpc_security_group_id
    #   The name of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbInstanceVpcSecurityGroup AWS API Documentation
    #
    class AwsRdsDbInstanceVpcSecurityGroup < Struct.new(
      :vpc_security_group_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AwsRdsDbOptionGroupMembership
    #   data as a hash:
    #
    #       {
    #         option_group_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] option_group_name
    #   @return [String]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbOptionGroupMembership AWS API Documentation
    #
    class AwsRdsDbOptionGroupMembership < Struct.new(
      :option_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AwsRdsDbParameterGroup
    #   data as a hash:
    #
    #       {
    #         db_parameter_group_name: "NonEmptyString",
    #         parameter_apply_status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] db_parameter_group_name
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbParameterGroup AWS API Documentation
    #
    class AwsRdsDbParameterGroup < Struct.new(
      :db_parameter_group_name,
      :parameter_apply_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AwsRdsDbPendingModifiedValues
    #   data as a hash:
    #
    #       {
    #         db_instance_class: "NonEmptyString",
    #         allocated_storage: 1,
    #         master_user_password: "NonEmptyString",
    #         port: 1,
    #         backup_retention_period: 1,
    #         multi_az: false,
    #         engine_version: "NonEmptyString",
    #         license_model: "NonEmptyString",
    #         iops: 1,
    #         db_instance_identifier: "NonEmptyString",
    #         storage_type: "NonEmptyString",
    #         ca_certificate_identifier: "NonEmptyString",
    #         db_subnet_group_name: "NonEmptyString",
    #         pending_cloud_watch_logs_exports: {
    #           log_types_to_enable: ["NonEmptyString"],
    #           log_types_to_disable: ["NonEmptyString"],
    #         },
    #         processor_features: [
    #           {
    #             name: "NonEmptyString",
    #             value: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] db_instance_class
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   @return [Integer]
    #
    # @!attribute [rw] master_user_password
    #   @return [String]
    #
    # @!attribute [rw] port
    #   @return [Integer]
    #
    # @!attribute [rw] backup_retention_period
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   @return [Integer]
    #
    # @!attribute [rw] db_instance_identifier
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   @return [String]
    #
    # @!attribute [rw] ca_certificate_identifier
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_name
    #   @return [String]
    #
    # @!attribute [rw] pending_cloud_watch_logs_exports
    #   @return [Types::AwsRdsPendingCloudWatchLogsExports]
    #
    # @!attribute [rw] processor_features
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbPendingModifiedValues AWS API Documentation
    #
    class AwsRdsDbPendingModifiedValues < Struct.new(
      :db_instance_class,
      :allocated_storage,
      :master_user_password,
      :port,
      :backup_retention_period,
      :multi_az,
      :engine_version,
      :license_model,
      :iops,
      :db_instance_identifier,
      :storage_type,
      :ca_certificate_identifier,
      :db_subnet_group_name,
      :pending_cloud_watch_logs_exports,
      :processor_features)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AwsRdsDbProcessorFeature
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         value: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] value
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbProcessorFeature AWS API Documentation
    #
    class AwsRdsDbProcessorFeature < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AwsRdsDbSnapshotDetails
    #   data as a hash:
    #
    #       {
    #         db_snapshot_identifier: "NonEmptyString",
    #         db_instance_identifier: "NonEmptyString",
    #         snapshot_create_time: "NonEmptyString",
    #         engine: "NonEmptyString",
    #         allocated_storage: 1,
    #         status: "NonEmptyString",
    #         port: 1,
    #         availability_zone: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         instance_create_time: "NonEmptyString",
    #         master_username: "NonEmptyString",
    #         engine_version: "NonEmptyString",
    #         license_model: "NonEmptyString",
    #         snapshot_type: "NonEmptyString",
    #         iops: 1,
    #         option_group_name: "NonEmptyString",
    #         percent_progress: 1,
    #         source_region: "NonEmptyString",
    #         source_db_snapshot_identifier: "NonEmptyString",
    #         storage_type: "NonEmptyString",
    #         tde_credential_arn: "NonEmptyString",
    #         encrypted: false,
    #         kms_key_id: "NonEmptyString",
    #         timezone: "NonEmptyString",
    #         iam_database_authentication_enabled: false,
    #         processor_features: [
    #           {
    #             name: "NonEmptyString",
    #             value: "NonEmptyString",
    #           },
    #         ],
    #         dbi_resource_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] db_snapshot_identifier
    #   @return [String]
    #
    # @!attribute [rw] db_instance_identifier
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   @return [String]
    #
    # @!attribute [rw] port
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   @return [String]
    #
    # @!attribute [rw] instance_create_time
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   @return [String]
    #
    # @!attribute [rw] license_model
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   @return [String]
    #
    # @!attribute [rw] iops
    #   @return [Integer]
    #
    # @!attribute [rw] option_group_name
    #   @return [String]
    #
    # @!attribute [rw] percent_progress
    #   @return [Integer]
    #
    # @!attribute [rw] source_region
    #   @return [String]
    #
    # @!attribute [rw] source_db_snapshot_identifier
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   @return [String]
    #
    # @!attribute [rw] tde_credential_arn
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   @return [String]
    #
    # @!attribute [rw] iam_database_authentication_enabled
    #   @return [Boolean]
    #
    # @!attribute [rw] processor_features
    #   @return [Array<Types::AwsRdsDbProcessorFeature>]
    #
    # @!attribute [rw] dbi_resource_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSnapshotDetails AWS API Documentation
    #
    class AwsRdsDbSnapshotDetails < Struct.new(
      :db_snapshot_identifier,
      :db_instance_identifier,
      :snapshot_create_time,
      :engine,
      :allocated_storage,
      :status,
      :port,
      :availability_zone,
      :vpc_id,
      :instance_create_time,
      :master_username,
      :engine_version,
      :license_model,
      :snapshot_type,
      :iops,
      :option_group_name,
      :percent_progress,
      :source_region,
      :source_db_snapshot_identifier,
      :storage_type,
      :tde_credential_arn,
      :encrypted,
      :kms_key_id,
      :timezone,
      :iam_database_authentication_enabled,
      :processor_features,
      :dbi_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a read replica.
    #
    # @note When making an API call, you may pass AwsRdsDbStatusInfo
    #   data as a hash:
    #
    #       {
    #         status_type: "NonEmptyString",
    #         normal: false,
    #         status: "NonEmptyString",
    #         message: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] status_type
    #   The type of status. For a read replica, the status type is read
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] normal
    #   Whether the read replica instance is operating normally.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the read replica instance.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the read replica is currently in an error state, provides the
    #   error details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbStatusInfo AWS API Documentation
    #
    class AwsRdsDbStatusInfo < Struct.new(
      :status_type,
      :normal,
      :status,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the subnet group for the database instance.
    #
    # @note When making an API call, you may pass AwsRdsDbSubnetGroup
    #   data as a hash:
    #
    #       {
    #         db_subnet_group_name: "NonEmptyString",
    #         db_subnet_group_description: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         subnet_group_status: "NonEmptyString",
    #         subnets: [
    #           {
    #             subnet_identifier: "NonEmptyString",
    #             subnet_availability_zone: {
    #               name: "NonEmptyString",
    #             },
    #             subnet_status: "NonEmptyString",
    #           },
    #         ],
    #         db_subnet_group_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] db_subnet_group_name
    #   The name of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] db_subnet_group_description
    #   The description of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   The status of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of subnets in the subnet group.
    #   @return [Array<Types::AwsRdsDbSubnetGroupSubnet>]
    #
    # @!attribute [rw] db_subnet_group_arn
    #   The ARN of the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroup AWS API Documentation
    #
    class AwsRdsDbSubnetGroup < Struct.new(
      :db_subnet_group_name,
      :db_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :db_subnet_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a subnet in a subnet group.
    #
    # @note When making an API call, you may pass AwsRdsDbSubnetGroupSubnet
    #   data as a hash:
    #
    #       {
    #         subnet_identifier: "NonEmptyString",
    #         subnet_availability_zone: {
    #           name: "NonEmptyString",
    #         },
    #         subnet_status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] subnet_identifier
    #   The identifier of a subnet in the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Information about the Availability Zone for a subnet in the subnet
    #   group.
    #   @return [Types::AwsRdsDbSubnetGroupSubnetAvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   The status of a subnet in the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroupSubnet AWS API Documentation
    #
    class AwsRdsDbSubnetGroupSubnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Availability Zone for a subnet in a subnet group.
    #
    # @note When making an API call, you may pass AwsRdsDbSubnetGroupSubnetAvailabilityZone
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone for a subnet in the subnet group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsDbSubnetGroupSubnetAvailabilityZone AWS API Documentation
    #
    class AwsRdsDbSubnetGroupSubnetAvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the log types to enable and disable.
    #
    # @note When making an API call, you may pass AwsRdsPendingCloudWatchLogsExports
    #   data as a hash:
    #
    #       {
    #         log_types_to_enable: ["NonEmptyString"],
    #         log_types_to_disable: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] log_types_to_enable
    #   A list of log types that are being enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_types_to_disable
    #   A list of log types that are being disabled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRdsPendingCloudWatchLogsExports AWS API Documentation
    #
    class AwsRdsPendingCloudWatchLogsExports < Struct.new(
      :log_types_to_enable,
      :log_types_to_disable)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node in an Amazon Redshift cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterClusterNode
    #   data as a hash:
    #
    #       {
    #         node_role: "NonEmptyString",
    #         private_ip_address: "NonEmptyString",
    #         public_ip_address: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] node_role
    #   The role of the node. A node might be a leader node or a compute
    #   node.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of the node.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of the node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterNode AWS API Documentation
    #
    class AwsRedshiftClusterClusterNode < Struct.new(
      :node_role,
      :private_ip_address,
      :public_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cluster parameter group that is associated with an Amazon Redshift
    # cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterClusterParameterGroup
    #   data as a hash:
    #
    #       {
    #         cluster_parameter_status_list: [
    #           {
    #             parameter_name: "NonEmptyString",
    #             parameter_apply_status: "NonEmptyString",
    #             parameter_apply_error_description: "NonEmptyString",
    #           },
    #         ],
    #         parameter_apply_status: "NonEmptyString",
    #         parameter_group_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cluster_parameter_status_list
    #   The list of parameter statuses.
    #   @return [Array<Types::AwsRedshiftClusterClusterParameterStatus>]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of updates to the parameters.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterParameterGroup AWS API Documentation
    #
    class AwsRedshiftClusterClusterParameterGroup < Struct.new(
      :cluster_parameter_status_list,
      :parameter_apply_status,
      :parameter_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of a parameter in a cluster parameter group for an Amazon
    # Redshift cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterClusterParameterStatus
    #   data as a hash:
    #
    #       {
    #         parameter_name: "NonEmptyString",
    #         parameter_apply_status: "NonEmptyString",
    #         parameter_apply_error_description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of the parameter. Indicates whether the parameter is in
    #   sync with the database, waiting for a cluster reboot, or encountered
    #   an error when it was applied.
    #
    #   Valid values: `in-sync` \| `pending-reboot` \| `applying` \|
    #   `invalid-parameter` \| `apply-deferred` \| `apply-error` \|
    #   `unknown-error`
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_error_description
    #   The error that prevented the parameter from being applied to the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterParameterStatus AWS API Documentation
    #
    class AwsRedshiftClusterClusterParameterStatus < Struct.new(
      :parameter_name,
      :parameter_apply_status,
      :parameter_apply_error_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A security group that is associated with the cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterClusterSecurityGroup
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the cluster security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterSecurityGroup AWS API Documentation
    #
    class AwsRedshiftClusterClusterSecurityGroup < Struct.new(
      :cluster_security_group_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a cross-Region snapshot copy.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterClusterSnapshotCopyStatus
    #   data as a hash:
    #
    #       {
    #         destination_region: "NonEmptyString",
    #         manual_snapshot_retention_period: 1,
    #         retention_period: 1,
    #         snapshot_copy_grant_name: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] destination_region
    #   The destination Region that snapshots are automatically copied to
    #   when cross-Region snapshot copy is enabled.
    #   @return [String]
    #
    # @!attribute [rw] manual_snapshot_retention_period
    #   The number of days that manual snapshots are retained in the
    #   destination region after they are copied from a source region.
    #
    #   If the value is -1, then the manual snapshot is retained
    #   indefinitely.
    #
    #   Valid values: Either -1 or an integer between 1 and 3,653
    #   @return [Integer]
    #
    # @!attribute [rw] retention_period
    #   The number of days to retain automated snapshots in the destination
    #   Region after they are copied from a source Region.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterClusterSnapshotCopyStatus AWS API Documentation
    #
    class AwsRedshiftClusterClusterSnapshotCopyStatus < Struct.new(
      :destination_region,
      :manual_snapshot_retention_period,
      :retention_period,
      :snapshot_copy_grant_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time windows during which maintenance was deferred for an Amazon
    # Redshift cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterDeferredMaintenanceWindow
    #   data as a hash:
    #
    #       {
    #         defer_maintenance_end_time: "NonEmptyString",
    #         defer_maintenance_identifier: "NonEmptyString",
    #         defer_maintenance_start_time: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] defer_maintenance_end_time
    #   The end of the time window for which maintenance was deferred.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] defer_maintenance_identifier
    #   The identifier of the maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] defer_maintenance_start_time
    #   The start of the time window for which maintenance was deferred.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterDeferredMaintenanceWindow AWS API Documentation
    #
    class AwsRedshiftClusterDeferredMaintenanceWindow < Struct.new(
      :defer_maintenance_end_time,
      :defer_maintenance_identifier,
      :defer_maintenance_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon Redshift cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterDetails
    #   data as a hash:
    #
    #       {
    #         allow_version_upgrade: false,
    #         automated_snapshot_retention_period: 1,
    #         availability_zone: "NonEmptyString",
    #         cluster_availability_status: "NonEmptyString",
    #         cluster_create_time: "NonEmptyString",
    #         cluster_identifier: "NonEmptyString",
    #         cluster_nodes: [
    #           {
    #             node_role: "NonEmptyString",
    #             private_ip_address: "NonEmptyString",
    #             public_ip_address: "NonEmptyString",
    #           },
    #         ],
    #         cluster_parameter_groups: [
    #           {
    #             cluster_parameter_status_list: [
    #               {
    #                 parameter_name: "NonEmptyString",
    #                 parameter_apply_status: "NonEmptyString",
    #                 parameter_apply_error_description: "NonEmptyString",
    #               },
    #             ],
    #             parameter_apply_status: "NonEmptyString",
    #             parameter_group_name: "NonEmptyString",
    #           },
    #         ],
    #         cluster_public_key: "NonEmptyString",
    #         cluster_revision_number: "NonEmptyString",
    #         cluster_security_groups: [
    #           {
    #             cluster_security_group_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #         ],
    #         cluster_snapshot_copy_status: {
    #           destination_region: "NonEmptyString",
    #           manual_snapshot_retention_period: 1,
    #           retention_period: 1,
    #           snapshot_copy_grant_name: "NonEmptyString",
    #         },
    #         cluster_status: "NonEmptyString",
    #         cluster_subnet_group_name: "NonEmptyString",
    #         cluster_version: "NonEmptyString",
    #         db_name: "NonEmptyString",
    #         deferred_maintenance_windows: [
    #           {
    #             defer_maintenance_end_time: "NonEmptyString",
    #             defer_maintenance_identifier: "NonEmptyString",
    #             defer_maintenance_start_time: "NonEmptyString",
    #           },
    #         ],
    #         elastic_ip_status: {
    #           elastic_ip: "NonEmptyString",
    #           status: "NonEmptyString",
    #         },
    #         elastic_resize_number_of_node_options: "NonEmptyString",
    #         encrypted: false,
    #         endpoint: {
    #           address: "NonEmptyString",
    #           port: 1,
    #         },
    #         enhanced_vpc_routing: false,
    #         expected_next_snapshot_schedule_time: "NonEmptyString",
    #         expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #         hsm_status: {
    #           hsm_client_certificate_identifier: "NonEmptyString",
    #           hsm_configuration_identifier: "NonEmptyString",
    #           status: "NonEmptyString",
    #         },
    #         iam_roles: [
    #           {
    #             apply_status: "NonEmptyString",
    #             iam_role_arn: "NonEmptyString",
    #           },
    #         ],
    #         kms_key_id: "NonEmptyString",
    #         maintenance_track_name: "NonEmptyString",
    #         manual_snapshot_retention_period: 1,
    #         master_username: "NonEmptyString",
    #         next_maintenance_window_start_time: "NonEmptyString",
    #         node_type: "NonEmptyString",
    #         number_of_nodes: 1,
    #         pending_actions: ["NonEmptyString"],
    #         pending_modified_values: {
    #           automated_snapshot_retention_period: 1,
    #           cluster_identifier: "NonEmptyString",
    #           cluster_type: "NonEmptyString",
    #           cluster_version: "NonEmptyString",
    #           encryption_type: "NonEmptyString",
    #           enhanced_vpc_routing: false,
    #           maintenance_track_name: "NonEmptyString",
    #           master_user_password: "NonEmptyString",
    #           node_type: "NonEmptyString",
    #           number_of_nodes: 1,
    #           publicly_accessible: false,
    #         },
    #         preferred_maintenance_window: "NonEmptyString",
    #         publicly_accessible: false,
    #         resize_info: {
    #           allow_cancel_resize: false,
    #           resize_type: "NonEmptyString",
    #         },
    #         restore_status: {
    #           current_restore_rate_in_mega_bytes_per_second: 1.0,
    #           elapsed_time_in_seconds: 1,
    #           estimated_time_to_completion_in_seconds: 1,
    #           progress_in_mega_bytes: 1,
    #           snapshot_size_in_mega_bytes: 1,
    #           status: "NonEmptyString",
    #         },
    #         snapshot_schedule_identifier: "NonEmptyString",
    #         snapshot_schedule_state: "NonEmptyString",
    #         vpc_id: "NonEmptyString",
    #         vpc_security_groups: [
    #           {
    #             status: "NonEmptyString",
    #             vpc_security_group_id: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] allow_version_upgrade
    #   Indicates whether major version upgrades are applied automatically
    #   to the cluster during the maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automatic cluster snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The name of the Availability Zone in which the cluster is located.
    #   @return [String]
    #
    # @!attribute [rw] cluster_availability_status
    #   The availability status of the cluster for queries. Possible values
    #   are the following:
    #
    #   * `Available` - The cluster is available for queries.
    #
    #   * `Unavailable` - The cluster is not available for queries.
    #
    #   * `Maintenance` - The cluster is intermittently available for
    #     queries due to maintenance activities.
    #
    #   * `Modifying` -The cluster is intermittently available for queries
    #     due to changes that modify the cluster.
    #
    #   * `Failed` - The cluster failed and is not available for queries.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   Indicates when the cluster was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_nodes
    #   The nodes in the cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterNode>]
    #
    # @!attribute [rw] cluster_parameter_groups
    #   The list of cluster parameter groups that are associated with this
    #   cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterParameterGroup>]
    #
    # @!attribute [rw] cluster_public_key
    #   The public key for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_revision_number
    #   The specific revision number of the database in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of cluster security groups that are associated with the
    #   cluster.
    #   @return [Array<Types::AwsRedshiftClusterClusterSecurityGroup>]
    #
    # @!attribute [rw] cluster_snapshot_copy_status
    #   Information about the destination Region and retention period for
    #   the cross-Region snapshot copy.
    #   @return [Types::AwsRedshiftClusterClusterSnapshotCopyStatus]
    #
    # @!attribute [rw] cluster_status
    #   The current status of the cluster.
    #
    #   Valid values: `available` \| `available, prep-for-resize` \|
    #   `available, resize-cleanup` \|` cancelling-resize` \| `creating` \|
    #   `deleting` \| `final-snapshot` \| `hardware-failure` \|
    #   `incompatible-hsm` \|` incompatible-network` \|
    #   `incompatible-parameters` \| `incompatible-restore` \| `modifying`
    #   \| `paused` \| `rebooting` \| `renaming` \| `resizing` \|
    #   `rotating-keys` \| `storage-full` \| `updating-hsm`
    #   @return [String]
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the subnet group that is associated with the cluster.
    #   This parameter is valid only when the cluster is in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The version ID of the Amazon Redshift engine that runs on the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of the initial database that was created when the cluster
    #   was created.
    #
    #   The same name is returned for the life of the cluster.
    #
    #   If an initial database is not specified, a database named `devdev`
    #   is created by default.
    #   @return [String]
    #
    # @!attribute [rw] deferred_maintenance_windows
    #   List of time windows during which maintenance was deferred.
    #   @return [Array<Types::AwsRedshiftClusterDeferredMaintenanceWindow>]
    #
    # @!attribute [rw] elastic_ip_status
    #   Information about the status of the Elastic IP (EIP) address.
    #   @return [Types::AwsRedshiftClusterElasticIpStatus]
    #
    # @!attribute [rw] elastic_resize_number_of_node_options
    #   The number of nodes that you can use the elastic resize method to
    #   resize the cluster to.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the data in the cluster is encrypted at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint.
    #   @return [Types::AwsRedshiftClusterEndpoint]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   Indicates whether to create the cluster with enhanced VPC routing
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_next_snapshot_schedule_time
    #   Indicates when the next snapshot is expected to be taken. The
    #   cluster must have a valid snapshot schedule and have backups
    #   enabled.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] expected_next_snapshot_schedule_time_status
    #   The status of the next expected snapshot.
    #
    #   Valid values: `OnTrack` \| `Pending`
    #   @return [String]
    #
    # @!attribute [rw] hsm_status
    #   Information about whether the Amazon Redshift cluster finished
    #   applying any changes to hardware security module (HSM) settings that
    #   were specified in a modify cluster command.
    #   @return [Types::AwsRedshiftClusterHsmStatus]
    #
    # @!attribute [rw] iam_roles
    #   A list of IAM roles that the cluster can use to access other AWS
    #   services.
    #   @return [Array<Types::AwsRedshiftClusterIamRole>]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS encryption key that is used to encrypt
    #   data in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] manual_snapshot_retention_period
    #   The default number of days to retain a manual snapshot.
    #
    #   If the value is -1, the snapshot is retained indefinitely.
    #
    #   This setting doesn't change the retention period of existing
    #   snapshots.
    #
    #   Valid values: Either -1 or an integer between 1 and 3,653
    #   @return [Integer]
    #
    # @!attribute [rw] master_username
    #   The master user name for the cluster. This name is used to connect
    #   to the database that is specified in as the value of `DBName`.
    #   @return [String]
    #
    # @!attribute [rw] next_maintenance_window_start_time
    #   Indicates the start of the next maintenance window.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of compute nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_actions
    #   A list of cluster operations that are waiting to start.
    #   @return [Array<String>]
    #
    # @!attribute [rw] pending_modified_values
    #   A list of changes to the cluster that are currently pending.
    #   @return [Types::AwsRedshiftClusterPendingModifiedValues]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range, in Universal Coordinated Time (UTC), during
    #   which system maintenance can occur.
    #
    #   Format: ` <day>:HH:MM-<day>:HH:MM`
    #
    #   For the day values, use `mon` \| `tue` \| `wed` \| `thu` \| `fri` \|
    #   `sat` \| `sun`
    #
    #   For example, `sun:09:32-sun:10:02`
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Whether the cluster can be accessed from a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] resize_info
    #   Information about the resize operation for the cluster.
    #   @return [Types::AwsRedshiftClusterResizeInfo]
    #
    # @!attribute [rw] restore_status
    #   Information about the status of a cluster restore action. Only
    #   applies to a cluster that was created by restoring a snapshot.
    #   @return [Types::AwsRedshiftClusterRestoreStatus]
    #
    # @!attribute [rw] snapshot_schedule_identifier
    #   A unique identifier for the cluster snapshot schedule.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_schedule_state
    #   The current state of the cluster snapshot schedule.
    #
    #   Valid values: `MODIFYING` \| `ACTIVE` \| `FAILED`
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC that the cluster is in, if the cluster is
    #   in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   The list of VPC security groups that the cluster belongs to, if the
    #   cluster is in a VPC.
    #   @return [Array<Types::AwsRedshiftClusterVpcSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterDetails AWS API Documentation
    #
    class AwsRedshiftClusterDetails < Struct.new(
      :allow_version_upgrade,
      :automated_snapshot_retention_period,
      :availability_zone,
      :cluster_availability_status,
      :cluster_create_time,
      :cluster_identifier,
      :cluster_nodes,
      :cluster_parameter_groups,
      :cluster_public_key,
      :cluster_revision_number,
      :cluster_security_groups,
      :cluster_snapshot_copy_status,
      :cluster_status,
      :cluster_subnet_group_name,
      :cluster_version,
      :db_name,
      :deferred_maintenance_windows,
      :elastic_ip_status,
      :elastic_resize_number_of_node_options,
      :encrypted,
      :endpoint,
      :enhanced_vpc_routing,
      :expected_next_snapshot_schedule_time,
      :expected_next_snapshot_schedule_time_status,
      :hsm_status,
      :iam_roles,
      :kms_key_id,
      :maintenance_track_name,
      :manual_snapshot_retention_period,
      :master_username,
      :next_maintenance_window_start_time,
      :node_type,
      :number_of_nodes,
      :pending_actions,
      :pending_modified_values,
      :preferred_maintenance_window,
      :publicly_accessible,
      :resize_info,
      :restore_status,
      :snapshot_schedule_identifier,
      :snapshot_schedule_state,
      :vpc_id,
      :vpc_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the elastic IP (EIP) address for an Amazon Redshift
    # cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterElasticIpStatus
    #   data as a hash:
    #
    #       {
    #         elastic_ip: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] elastic_ip
    #   The elastic IP address for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterElasticIpStatus AWS API Documentation
    #
    class AwsRedshiftClusterElasticIpStatus < Struct.new(
      :elastic_ip,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection endpoint for an Amazon Redshift cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterEndpoint
    #   data as a hash:
    #
    #       {
    #         address: "NonEmptyString",
    #         port: 1,
    #       }
    #
    # @!attribute [rw] address
    #   The DNS address of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the database engine listens on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterEndpoint AWS API Documentation
    #
    class AwsRedshiftClusterEndpoint < Struct.new(
      :address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about whether an Amazon Redshift cluster finished applying
    # any hardware changes to security module (HSM) settings that were
    # specified in a modify cluster command.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterHsmStatus
    #   data as a hash:
    #
    #       {
    #         hsm_client_certificate_identifier: "NonEmptyString",
    #         hsm_configuration_identifier: "NonEmptyString",
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The name of the HSM client certificate that the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys that are stored in
    #   an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The name of the HSM configuration that contains the information that
    #   the Amazon Redshift cluster can use to retrieve and store keys in an
    #   HSM.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the Amazon Redshift cluster has finished applying
    #   any HSM settings changes specified in a modify cluster command.
    #
    #   Type: String
    #
    #   Valid values: `active` \| `applying`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterHsmStatus AWS API Documentation
    #
    class AwsRedshiftClusterHsmStatus < Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IAM role that the cluster can use to access other AWS services.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterIamRole
    #   data as a hash:
    #
    #       {
    #         apply_status: "NonEmptyString",
    #         iam_role_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] apply_status
    #   The status of the IAM role's association with the cluster.
    #
    #   Valid values: `in-sync` \| `adding` \| `removing`
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterIamRole AWS API Documentation
    #
    class AwsRedshiftClusterIamRole < Struct.new(
      :apply_status,
      :iam_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Changes to the Amazon Redshift cluster that are currently pending.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterPendingModifiedValues
    #   data as a hash:
    #
    #       {
    #         automated_snapshot_retention_period: 1,
    #         cluster_identifier: "NonEmptyString",
    #         cluster_type: "NonEmptyString",
    #         cluster_version: "NonEmptyString",
    #         encryption_type: "NonEmptyString",
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "NonEmptyString",
    #         master_user_password: "NonEmptyString",
    #         node_type: "NonEmptyString",
    #         number_of_nodes: 1,
    #         publicly_accessible: false,
    #       }
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The pending or in-progress change to the automated snapshot
    #   retention period.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_identifier
    #   The pending or in-progress change to the identifier for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The pending or in-progress change to the cluster type.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The pending or in-progress change to the service version.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type for a cluster.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   Indicates whether to create the cluster with enhanced VPC routing
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track that the cluster changes to during
    #   the next maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The pending or in-progress change to the master user password for
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The pending or in-progress change to the cluster's node type.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The pending or in-progress change to the number of nodes in the
    #   cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   The pending or in-progress change to whether the cluster can be
    #   connected to from the public network.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterPendingModifiedValues AWS API Documentation
    #
    class AwsRedshiftClusterPendingModifiedValues < Struct.new(
      :automated_snapshot_retention_period,
      :cluster_identifier,
      :cluster_type,
      :cluster_version,
      :encryption_type,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :master_user_password,
      :node_type,
      :number_of_nodes,
      :publicly_accessible)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the resize operation for the cluster.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterResizeInfo
    #   data as a hash:
    #
    #       {
    #         allow_cancel_resize: false,
    #         resize_type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] allow_cancel_resize
    #   Indicates whether the resize operation can be canceled.
    #   @return [Boolean]
    #
    # @!attribute [rw] resize_type
    #   The type of resize operation.
    #
    #   Valid values: `ClassicResize`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterResizeInfo AWS API Documentation
    #
    class AwsRedshiftClusterResizeInfo < Struct.new(
      :allow_cancel_resize,
      :resize_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the status of a cluster restore action. It only
    # applies if the cluster was created by restoring a snapshot.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterRestoreStatus
    #   data as a hash:
    #
    #       {
    #         current_restore_rate_in_mega_bytes_per_second: 1.0,
    #         elapsed_time_in_seconds: 1,
    #         estimated_time_to_completion_in_seconds: 1,
    #         progress_in_mega_bytes: 1,
    #         snapshot_size_in_mega_bytes: 1,
    #         status: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] current_restore_rate_in_mega_bytes_per_second
    #   The number of megabytes per second being transferred from the backup
    #   storage. Returns the average rate for a completed backup.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Float]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of time an in-progress restore has been running, or the
    #   amount of time it took a completed restore to finish.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_time_to_completion_in_seconds
    #   The estimate of the time remaining before the restore is complete.
    #   Returns 0 for a completed restore.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   The number of megabytes that were transferred from snapshot storage.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_size_in_mega_bytes
    #   The size of the set of snapshot data that was used to restore the
    #   cluster.
    #
    #   This field is only updated when you restore to DC2 and DS2 node
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the restore action.
    #
    #   Valid values: `starting` \| `restoring` \| `completed` \| `failed`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterRestoreStatus AWS API Documentation
    #
    class AwsRedshiftClusterRestoreStatus < Struct.new(
      :current_restore_rate_in_mega_bytes_per_second,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :progress_in_mega_bytes,
      :snapshot_size_in_mega_bytes,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A VPC security group that the cluster belongs to, if the cluster is in
    # a VPC.
    #
    # @note When making an API call, you may pass AwsRedshiftClusterVpcSecurityGroup
    #   data as a hash:
    #
    #       {
    #         status: "NonEmptyString",
    #         vpc_security_group_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_id
    #   The identifier of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsRedshiftClusterVpcSecurityGroup AWS API Documentation
    #
    class AwsRedshiftClusterVpcSecurityGroup < Struct.new(
      :status,
      :vpc_security_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketDetails
    #   data as a hash:
    #
    #       {
    #         owner_id: "NonEmptyString",
    #         owner_name: "NonEmptyString",
    #         created_at: "NonEmptyString",
    #         server_side_encryption_configuration: {
    #           rules: [
    #             {
    #               apply_server_side_encryption_by_default: {
    #                 sse_algorithm: "NonEmptyString",
    #                 kms_master_key_id: "NonEmptyString",
    #               },
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the S3 bucket was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_configuration
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Types::AwsS3BucketServerSideEncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketDetails AWS API Documentation
    #
    class AwsS3BucketDetails < Struct.new(
      :owner_id,
      :owner_name,
      :created_at,
      :server_side_encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the default server-side encryption to apply to new objects
    # in the bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionByDefault
    #   data as a hash:
    #
    #       {
    #         sse_algorithm: "NonEmptyString",
    #         kms_master_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] sse_algorithm
    #   Server-side encryption algorithm to use for the default encryption.
    #   @return [String]
    #
    # @!attribute [rw] kms_master_key_id
    #   AWS KMS customer master key (CMK) ID to use for the default
    #   encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionByDefault AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionByDefault < Struct.new(
      :sse_algorithm,
      :kms_master_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption configuration for the S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         rules: [
    #           {
    #             apply_server_side_encryption_by_default: {
    #               sse_algorithm: "NonEmptyString",
    #               kms_master_key_id: "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rules
    #   The encryption rules that are applied to the S3 bucket.
    #   @return [Array<Types::AwsS3BucketServerSideEncryptionRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionConfiguration AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionConfiguration < Struct.new(
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # An encryption rule to apply to the S3 bucket.
    #
    # @note When making an API call, you may pass AwsS3BucketServerSideEncryptionRule
    #   data as a hash:
    #
    #       {
    #         apply_server_side_encryption_by_default: {
    #           sse_algorithm: "NonEmptyString",
    #           kms_master_key_id: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] apply_server_side_encryption_by_default
    #   Specifies the default server-side encryption to apply to new objects
    #   in the bucket. If a `PUT` object request doesn't specify any
    #   server-side encryption, this default encryption is applied.
    #   @return [Types::AwsS3BucketServerSideEncryptionByDefault]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3BucketServerSideEncryptionRule AWS API Documentation
    #
    class AwsS3BucketServerSideEncryptionRule < Struct.new(
      :apply_server_side_encryption_by_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an Amazon S3 object.
    #
    # @note When making an API call, you may pass AwsS3ObjectDetails
    #   data as a hash:
    #
    #       {
    #         last_modified: "NonEmptyString",
    #         etag: "NonEmptyString",
    #         version_id: "NonEmptyString",
    #         content_type: "NonEmptyString",
    #         server_side_encryption: "NonEmptyString",
    #         ssekms_key_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] last_modified
    #   Indicates when the object was last modified.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The opaque identifier assigned by a web server to a specific version
    #   of a resource found at a URL.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   A standard MIME type describing the format of the object data.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption
    #   If the object is stored using server-side encryption, the value of
    #   the server-side encryption algorithm used when storing this object
    #   in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] ssekms_key_id
    #   The identifier of the AWS Key Management Service (AWS KMS) symmetric
    #   customer managed customer master key (CMK) that was used for the
    #   object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsS3ObjectDetails AWS API Documentation
    #
    class AwsS3ObjectDetails < Struct.new(
      :last_modified,
      :etag,
      :version_id,
      :content_type,
      :server_side_encryption,
      :ssekms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an AWS Secrets Manager secret.
    #
    # @note When making an API call, you may pass AwsSecretsManagerSecretDetails
    #   data as a hash:
    #
    #       {
    #         rotation_rules: {
    #           automatically_after_days: 1,
    #         },
    #         rotation_occurred_within_frequency: false,
    #         kms_key_id: "NonEmptyString",
    #         rotation_enabled: false,
    #         rotation_lambda_arn: "NonEmptyString",
    #         deleted: false,
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] rotation_rules
    #   Defines the rotation schedule for the secret.
    #   @return [Types::AwsSecretsManagerSecretRotationRules]
    #
    # @!attribute [rw] rotation_occurred_within_frequency
    #   Whether the rotation occurred within the specified rotation
    #   frequency.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The ARN, Key ID, or alias of the AWS KMS customer master key (CMK)
    #   used to encrypt the `SecretString` or `SecretBinary` values for
    #   versions of this secret.
    #   @return [String]
    #
    # @!attribute [rw] rotation_enabled
    #   Whether rotation is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] rotation_lambda_arn
    #   The ARN of the Lambda function that rotates the secret.
    #   @return [String]
    #
    # @!attribute [rw] deleted
    #   Whether the secret is deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of the secret.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The user-provided description of the secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecretsManagerSecretDetails AWS API Documentation
    #
    class AwsSecretsManagerSecretDetails < Struct.new(
      :rotation_rules,
      :rotation_occurred_within_frequency,
      :kms_key_id,
      :rotation_enabled,
      :rotation_lambda_arn,
      :deleted,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the rotation schedule for the secret.
    #
    # @note When making an API call, you may pass AwsSecretsManagerSecretRotationRules
    #   data as a hash:
    #
    #       {
    #         automatically_after_days: 1,
    #       }
    #
    # @!attribute [rw] automatically_after_days
    #   The number of days after the previous rotation to rotate the secret.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecretsManagerSecretRotationRules AWS API Documentation
    #
    class AwsSecretsManagerSecretRotationRules < Struct.new(
      :automatically_after_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides consistent format for the contents of the Security
    # Hub-aggregated findings. `AwsSecurityFinding` format enables you to
    # share findings between AWS security services and third-party
    # solutions, and security standards checks.
    #
    # <note markdown="1"> A finding is a potential security issue generated either by AWS
    # services (Amazon GuardDuty, Amazon Inspector, and Amazon Macie) or by
    # the integrated third-party solutions and standards checks.
    #
    #  </note>
    #
    # @note When making an API call, you may pass AwsSecurityFinding
    #   data as a hash:
    #
    #       {
    #         schema_version: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #         generator_id: "NonEmptyString", # required
    #         aws_account_id: "NonEmptyString", # required
    #         types: ["NonEmptyString"], # required
    #         first_observed_at: "NonEmptyString",
    #         last_observed_at: "NonEmptyString",
    #         created_at: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #         severity: { # required
    #           product: 1.0,
    #           label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #           normalized: 1,
    #           original: "NonEmptyString",
    #         },
    #         confidence: 1,
    #         criticality: 1,
    #         title: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         remediation: {
    #           recommendation: {
    #             text: "NonEmptyString",
    #             url: "NonEmptyString",
    #           },
    #         },
    #         source_url: "NonEmptyString",
    #         product_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         malware: [
    #           {
    #             name: "NonEmptyString", # required
    #             type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #             path: "NonEmptyString",
    #             state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #           },
    #         ],
    #         network: {
    #           direction: "IN", # accepts IN, OUT
    #           protocol: "NonEmptyString",
    #           open_port_range: {
    #             begin: 1,
    #             end: 1,
    #           },
    #           source_ip_v4: "NonEmptyString",
    #           source_ip_v6: "NonEmptyString",
    #           source_port: 1,
    #           source_domain: "NonEmptyString",
    #           source_mac: "NonEmptyString",
    #           destination_ip_v4: "NonEmptyString",
    #           destination_ip_v6: "NonEmptyString",
    #           destination_port: 1,
    #           destination_domain: "NonEmptyString",
    #         },
    #         network_path: [
    #           {
    #             component_id: "NonEmptyString",
    #             component_type: "NonEmptyString",
    #             egress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #             },
    #             ingress: {
    #               protocol: "NonEmptyString",
    #               destination: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #               source: {
    #                 address: ["NonEmptyString"],
    #                 port_ranges: [
    #                   {
    #                     begin: 1,
    #                     end: 1,
    #                   },
    #                 ],
    #               },
    #             },
    #           },
    #         ],
    #         process: {
    #           name: "NonEmptyString",
    #           path: "NonEmptyString",
    #           pid: 1,
    #           parent_pid: 1,
    #           launched_at: "NonEmptyString",
    #           terminated_at: "NonEmptyString",
    #         },
    #         threat_intel_indicators: [
    #           {
    #             type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #             value: "NonEmptyString",
    #             category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #             last_observed_at: "NonEmptyString",
    #             source: "NonEmptyString",
    #             source_url: "NonEmptyString",
    #           },
    #         ],
    #         resources: [ # required
    #           {
    #             type: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #             region: "NonEmptyString",
    #             resource_role: "NonEmptyString",
    #             tags: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             details: {
    #               aws_auto_scaling_auto_scaling_group: {
    #                 launch_configuration_name: "NonEmptyString",
    #                 load_balancer_names: ["NonEmptyString"],
    #                 health_check_type: "NonEmptyString",
    #                 health_check_grace_period: 1,
    #                 created_time: "NonEmptyString",
    #               },
    #               aws_code_build_project: {
    #                 encryption_key: "NonEmptyString",
    #                 environment: {
    #                   certificate: "NonEmptyString",
    #                   image_pull_credentials_type: "NonEmptyString",
    #                   registry_credential: {
    #                     credential: "NonEmptyString",
    #                     credential_provider: "NonEmptyString",
    #                   },
    #                   type: "NonEmptyString",
    #                 },
    #                 name: "NonEmptyString",
    #                 source: {
    #                   type: "NonEmptyString",
    #                   location: "NonEmptyString",
    #                   git_clone_depth: 1,
    #                   insecure_ssl: false,
    #                 },
    #                 service_role: "NonEmptyString",
    #                 vpc_config: {
    #                   vpc_id: "NonEmptyString",
    #                   subnets: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_cloud_front_distribution: {
    #                 cache_behaviors: {
    #                   items: [
    #                     {
    #                       viewer_protocol_policy: "NonEmptyString",
    #                     },
    #                   ],
    #                 },
    #                 default_cache_behavior: {
    #                   viewer_protocol_policy: "NonEmptyString",
    #                 },
    #                 default_root_object: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 last_modified_time: "NonEmptyString",
    #                 logging: {
    #                   bucket: "NonEmptyString",
    #                   enabled: false,
    #                   include_cookies: false,
    #                   prefix: "NonEmptyString",
    #                 },
    #                 origins: {
    #                   items: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       id: "NonEmptyString",
    #                       origin_path: "NonEmptyString",
    #                       s3_origin_config: {
    #                         origin_access_identity: "NonEmptyString",
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 origin_groups: {
    #                   items: [
    #                     {
    #                       failover_criteria: {
    #                         status_codes: {
    #                           items: [1],
    #                           quantity: 1,
    #                         },
    #                       },
    #                     },
    #                   ],
    #                 },
    #                 status: "NonEmptyString",
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               aws_ec2_instance: {
    #                 type: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 ip_v4_addresses: ["NonEmptyString"],
    #                 ip_v6_addresses: ["NonEmptyString"],
    #                 key_name: "NonEmptyString",
    #                 iam_instance_profile_arn: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               aws_ec2_network_interface: {
    #                 attachment: {
    #                   attach_time: "NonEmptyString",
    #                   attachment_id: "NonEmptyString",
    #                   delete_on_termination: false,
    #                   device_index: 1,
    #                   instance_id: "NonEmptyString",
    #                   instance_owner_id: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 network_interface_id: "NonEmptyString",
    #                 security_groups: [
    #                   {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 source_dest_check: false,
    #               },
    #               aws_ec2_security_group: {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 owner_id: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 ip_permissions: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 ip_permissions_egress: [
    #                   {
    #                     ip_protocol: "NonEmptyString",
    #                     from_port: 1,
    #                     to_port: 1,
    #                     user_id_group_pairs: [
    #                       {
    #                         group_id: "NonEmptyString",
    #                         group_name: "NonEmptyString",
    #                         peering_status: "NonEmptyString",
    #                         user_id: "NonEmptyString",
    #                         vpc_id: "NonEmptyString",
    #                         vpc_peering_connection_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     ip_ranges: [
    #                       {
    #                         cidr_ip: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_ranges: [
    #                       {
    #                         cidr_ipv_6: "NonEmptyString",
    #                       },
    #                     ],
    #                     prefix_list_ids: [
    #                       {
    #                         prefix_list_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #               },
    #               aws_ec2_volume: {
    #                 create_time: "NonEmptyString",
    #                 encrypted: false,
    #                 size: 1,
    #                 snapshot_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 attachments: [
    #                   {
    #                     attach_time: "NonEmptyString",
    #                     delete_on_termination: false,
    #                     instance_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_ec2_vpc: {
    #                 cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_cidr_block_association_set: [
    #                   {
    #                     association_id: "NonEmptyString",
    #                     ipv_6_cidr_block: "NonEmptyString",
    #                     cidr_block_state: "NonEmptyString",
    #                   },
    #                 ],
    #                 dhcp_options_id: "NonEmptyString",
    #                 state: "NonEmptyString",
    #               },
    #               aws_ec2_eip: {
    #                 instance_id: "NonEmptyString",
    #                 public_ip: "NonEmptyString",
    #                 allocation_id: "NonEmptyString",
    #                 association_id: "NonEmptyString",
    #                 domain: "NonEmptyString",
    #                 public_ipv_4_pool: "NonEmptyString",
    #                 network_border_group: "NonEmptyString",
    #                 network_interface_id: "NonEmptyString",
    #                 network_interface_owner_id: "NonEmptyString",
    #                 private_ip_address: "NonEmptyString",
    #               },
    #               aws_elbv_2_load_balancer: {
    #                 availability_zones: [
    #                   {
    #                     zone_name: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 canonical_hosted_zone_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 ip_address_type: "NonEmptyString",
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 state: {
    #                   code: "NonEmptyString",
    #                   reason: "NonEmptyString",
    #                 },
    #                 type: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #               },
    #               aws_elasticsearch_domain: {
    #                 access_policies: "NonEmptyString",
    #                 domain_endpoint_options: {
    #                   enforce_https: false,
    #                   tls_security_policy: "NonEmptyString",
    #                 },
    #                 domain_id: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 endpoints: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 elasticsearch_version: "NonEmptyString",
    #                 encryption_at_rest_options: {
    #                   enabled: false,
    #                   kms_key_id: "NonEmptyString",
    #                 },
    #                 node_to_node_encryption_options: {
    #                   enabled: false,
    #                 },
    #                 vpc_options: {
    #                   availability_zones: ["NonEmptyString"],
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #               },
    #               aws_s3_bucket: {
    #                 owner_id: "NonEmptyString",
    #                 owner_name: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 server_side_encryption_configuration: {
    #                   rules: [
    #                     {
    #                       apply_server_side_encryption_by_default: {
    #                         sse_algorithm: "NonEmptyString",
    #                         kms_master_key_id: "NonEmptyString",
    #                       },
    #                     },
    #                   ],
    #                 },
    #               },
    #               aws_s3_object: {
    #                 last_modified: "NonEmptyString",
    #                 etag: "NonEmptyString",
    #                 version_id: "NonEmptyString",
    #                 content_type: "NonEmptyString",
    #                 server_side_encryption: "NonEmptyString",
    #                 ssekms_key_id: "NonEmptyString",
    #               },
    #               aws_secrets_manager_secret: {
    #                 rotation_rules: {
    #                   automatically_after_days: 1,
    #                 },
    #                 rotation_occurred_within_frequency: false,
    #                 kms_key_id: "NonEmptyString",
    #                 rotation_enabled: false,
    #                 rotation_lambda_arn: "NonEmptyString",
    #                 deleted: false,
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #               },
    #               aws_iam_access_key: {
    #                 user_name: "NonEmptyString",
    #                 status: "Active", # accepts Active, Inactive
    #                 created_at: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 principal_type: "NonEmptyString",
    #                 principal_name: "NonEmptyString",
    #                 account_id: "NonEmptyString",
    #                 access_key_id: "NonEmptyString",
    #                 session_context: {
    #                   attributes: {
    #                     mfa_authenticated: false,
    #                     creation_date: "NonEmptyString",
    #                   },
    #                   session_issuer: {
    #                     type: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     arn: "NonEmptyString",
    #                     account_id: "NonEmptyString",
    #                     user_name: "NonEmptyString",
    #                   },
    #                 },
    #               },
    #               aws_iam_user: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_list: ["NonEmptyString"],
    #                 path: "NonEmptyString",
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString",
    #                 },
    #                 user_id: "NonEmptyString",
    #                 user_name: "NonEmptyString",
    #                 user_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_iam_policy: {
    #                 attachment_count: 1,
    #                 create_date: "NonEmptyString",
    #                 default_version_id: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 is_attachable: false,
    #                 path: "NonEmptyString",
    #                 permissions_boundary_usage_count: 1,
    #                 policy_id: "NonEmptyString",
    #                 policy_name: "NonEmptyString",
    #                 policy_version_list: [
    #                   {
    #                     version_id: "NonEmptyString",
    #                     is_default_version: false,
    #                     create_date: "NonEmptyString",
    #                   },
    #                 ],
    #                 update_date: "NonEmptyString",
    #               },
    #               aws_api_gateway_v2_stage: {
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 default_route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0,
    #                 },
    #                 deployment_id: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 route_settings: {
    #                   detailed_metrics_enabled: false,
    #                   logging_level: "NonEmptyString",
    #                   data_trace_enabled: false,
    #                   throttling_burst_limit: 1,
    #                   throttling_rate_limit: 1.0,
    #                 },
    #                 stage_name: "NonEmptyString",
    #                 stage_variables: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString",
    #                 },
    #                 auto_deploy: false,
    #                 last_deployment_status_message: "NonEmptyString",
    #                 api_gateway_managed: false,
    #               },
    #               aws_api_gateway_v2_api: {
    #                 api_endpoint: "NonEmptyString",
    #                 api_id: "NonEmptyString",
    #                 api_key_selection_expression: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 protocol_type: "NonEmptyString",
    #                 route_selection_expression: "NonEmptyString",
    #                 cors_configuration: {
    #                   allow_origins: ["NonEmptyString"],
    #                   allow_credentials: false,
    #                   expose_headers: ["NonEmptyString"],
    #                   max_age: 1,
    #                   allow_methods: ["NonEmptyString"],
    #                   allow_headers: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_dynamo_db_table: {
    #                 attribute_definitions: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     attribute_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 billing_mode_summary: {
    #                   billing_mode: "NonEmptyString",
    #                   last_update_to_pay_per_request_date_time: "NonEmptyString",
    #                 },
    #                 creation_date_time: "NonEmptyString",
    #                 global_secondary_indexes: [
    #                   {
    #                     backfilling: false,
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     index_size_bytes: 1,
    #                     index_status: "NonEmptyString",
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString",
    #                     },
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: "NonEmptyString",
    #                       last_increase_date_time: "NonEmptyString",
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1,
    #                     },
    #                   },
    #                 ],
    #                 global_table_version: "NonEmptyString",
    #                 item_count: 1,
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 latest_stream_arn: "NonEmptyString",
    #                 latest_stream_label: "NonEmptyString",
    #                 local_secondary_indexes: [
    #                   {
    #                     index_arn: "NonEmptyString",
    #                     index_name: "NonEmptyString",
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     projection: {
    #                       non_key_attributes: ["NonEmptyString"],
    #                       projection_type: "NonEmptyString",
    #                     },
    #                   },
    #                 ],
    #                 provisioned_throughput: {
    #                   last_decrease_date_time: "NonEmptyString",
    #                   last_increase_date_time: "NonEmptyString",
    #                   number_of_decreases_today: 1,
    #                   read_capacity_units: 1,
    #                   write_capacity_units: 1,
    #                 },
    #                 replicas: [
    #                   {
    #                     global_secondary_indexes: [
    #                       {
    #                         index_name: "NonEmptyString",
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1,
    #                         },
    #                       },
    #                     ],
    #                     kms_master_key_id: "NonEmptyString",
    #                     provisioned_throughput_override: {
    #                       read_capacity_units: 1,
    #                     },
    #                     region_name: "NonEmptyString",
    #                     replica_status: "NonEmptyString",
    #                     replica_status_description: "NonEmptyString",
    #                   },
    #                 ],
    #                 restore_summary: {
    #                   source_backup_arn: "NonEmptyString",
    #                   source_table_arn: "NonEmptyString",
    #                   restore_date_time: "NonEmptyString",
    #                   restore_in_progress: false,
    #                 },
    #                 sse_description: {
    #                   inaccessible_encryption_date_time: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                   sse_type: "NonEmptyString",
    #                   kms_master_key_arn: "NonEmptyString",
    #                 },
    #                 stream_specification: {
    #                   stream_enabled: false,
    #                   stream_view_type: "NonEmptyString",
    #                 },
    #                 table_id: "NonEmptyString",
    #                 table_name: "NonEmptyString",
    #                 table_size_bytes: 1,
    #                 table_status: "NonEmptyString",
    #               },
    #               aws_api_gateway_stage: {
    #                 deployment_id: "NonEmptyString",
    #                 client_certificate_id: "NonEmptyString",
    #                 stage_name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 cache_cluster_enabled: false,
    #                 cache_cluster_size: "NonEmptyString",
    #                 cache_cluster_status: "NonEmptyString",
    #                 method_settings: [
    #                   {
    #                     metrics_enabled: false,
    #                     logging_level: "NonEmptyString",
    #                     data_trace_enabled: false,
    #                     throttling_burst_limit: 1,
    #                     throttling_rate_limit: 1.0,
    #                     caching_enabled: false,
    #                     cache_ttl_in_seconds: 1,
    #                     cache_data_encrypted: false,
    #                     require_authorization_for_cache_control: false,
    #                     unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                     http_method: "NonEmptyString",
    #                     resource_path: "NonEmptyString",
    #                   },
    #                 ],
    #                 variables: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 documentation_version: "NonEmptyString",
    #                 access_log_settings: {
    #                   format: "NonEmptyString",
    #                   destination_arn: "NonEmptyString",
    #                 },
    #                 canary_settings: {
    #                   percent_traffic: 1.0,
    #                   deployment_id: "NonEmptyString",
    #                   stage_variable_overrides: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                   use_stage_cache: false,
    #                 },
    #                 tracing_enabled: false,
    #                 created_date: "NonEmptyString",
    #                 last_updated_date: "NonEmptyString",
    #                 web_acl_arn: "NonEmptyString",
    #               },
    #               aws_api_gateway_rest_api: {
    #                 id: "NonEmptyString",
    #                 name: "NonEmptyString",
    #                 description: "NonEmptyString",
    #                 created_date: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 binary_media_types: ["NonEmptyString"],
    #                 minimum_compression_size: 1,
    #                 api_key_source: "NonEmptyString",
    #                 endpoint_configuration: {
    #                   types: ["NonEmptyString"],
    #                 },
    #               },
    #               aws_cloud_trail_trail: {
    #                 cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                 cloud_watch_logs_role_arn: "NonEmptyString",
    #                 has_custom_event_selectors: false,
    #                 home_region: "NonEmptyString",
    #                 include_global_service_events: false,
    #                 is_multi_region_trail: false,
    #                 is_organization_trail: false,
    #                 kms_key_id: "NonEmptyString",
    #                 log_file_validation_enabled: false,
    #                 name: "NonEmptyString",
    #                 s3_bucket_name: "NonEmptyString",
    #                 s3_key_prefix: "NonEmptyString",
    #                 sns_topic_arn: "NonEmptyString",
    #                 sns_topic_name: "NonEmptyString",
    #                 trail_arn: "NonEmptyString",
    #               },
    #               aws_certificate_manager_certificate: {
    #                 certificate_authority_arn: "NonEmptyString",
    #                 created_at: "NonEmptyString",
    #                 domain_name: "NonEmptyString",
    #                 domain_validation_options: [
    #                   {
    #                     domain_name: "NonEmptyString",
    #                     resource_record: {
    #                       name: "NonEmptyString",
    #                       type: "NonEmptyString",
    #                       value: "NonEmptyString",
    #                     },
    #                     validation_domain: "NonEmptyString",
    #                     validation_emails: ["NonEmptyString"],
    #                     validation_method: "NonEmptyString",
    #                     validation_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 extended_key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                     o_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 failure_reason: "NonEmptyString",
    #                 imported_at: "NonEmptyString",
    #                 in_use_by: ["NonEmptyString"],
    #                 issued_at: "NonEmptyString",
    #                 issuer: "NonEmptyString",
    #                 key_algorithm: "NonEmptyString",
    #                 key_usages: [
    #                   {
    #                     name: "NonEmptyString",
    #                   },
    #                 ],
    #                 not_after: "NonEmptyString",
    #                 not_before: "NonEmptyString",
    #                 options: {
    #                   certificate_transparency_logging_preference: "NonEmptyString",
    #                 },
    #                 renewal_eligibility: "NonEmptyString",
    #                 renewal_summary: {
    #                   domain_validation_options: [
    #                     {
    #                       domain_name: "NonEmptyString",
    #                       resource_record: {
    #                         name: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                         value: "NonEmptyString",
    #                       },
    #                       validation_domain: "NonEmptyString",
    #                       validation_emails: ["NonEmptyString"],
    #                       validation_method: "NonEmptyString",
    #                       validation_status: "NonEmptyString",
    #                     },
    #                   ],
    #                   renewal_status: "NonEmptyString",
    #                   renewal_status_reason: "NonEmptyString",
    #                   updated_at: "NonEmptyString",
    #                 },
    #                 serial: "NonEmptyString",
    #                 signature_algorithm: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 subject: "NonEmptyString",
    #                 subject_alternative_names: ["NonEmptyString"],
    #                 type: "NonEmptyString",
    #               },
    #               aws_redshift_cluster: {
    #                 allow_version_upgrade: false,
    #                 automated_snapshot_retention_period: 1,
    #                 availability_zone: "NonEmptyString",
    #                 cluster_availability_status: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 cluster_identifier: "NonEmptyString",
    #                 cluster_nodes: [
    #                   {
    #                     node_role: "NonEmptyString",
    #                     private_ip_address: "NonEmptyString",
    #                     public_ip_address: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_parameter_groups: [
    #                   {
    #                     cluster_parameter_status_list: [
    #                       {
    #                         parameter_name: "NonEmptyString",
    #                         parameter_apply_status: "NonEmptyString",
    #                         parameter_apply_error_description: "NonEmptyString",
    #                       },
    #                     ],
    #                     parameter_apply_status: "NonEmptyString",
    #                     parameter_group_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_public_key: "NonEmptyString",
    #                 cluster_revision_number: "NonEmptyString",
    #                 cluster_security_groups: [
    #                   {
    #                     cluster_security_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_snapshot_copy_status: {
    #                   destination_region: "NonEmptyString",
    #                   manual_snapshot_retention_period: 1,
    #                   retention_period: 1,
    #                   snapshot_copy_grant_name: "NonEmptyString",
    #                 },
    #                 cluster_status: "NonEmptyString",
    #                 cluster_subnet_group_name: "NonEmptyString",
    #                 cluster_version: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deferred_maintenance_windows: [
    #                   {
    #                     defer_maintenance_end_time: "NonEmptyString",
    #                     defer_maintenance_identifier: "NonEmptyString",
    #                     defer_maintenance_start_time: "NonEmptyString",
    #                   },
    #                 ],
    #                 elastic_ip_status: {
    #                   elastic_ip: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 elastic_resize_number_of_node_options: "NonEmptyString",
    #                 encrypted: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                 },
    #                 enhanced_vpc_routing: false,
    #                 expected_next_snapshot_schedule_time: "NonEmptyString",
    #                 expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #                 hsm_status: {
    #                   hsm_client_certificate_identifier: "NonEmptyString",
    #                   hsm_configuration_identifier: "NonEmptyString",
    #                   status: "NonEmptyString",
    #                 },
    #                 iam_roles: [
    #                   {
    #                     apply_status: "NonEmptyString",
    #                     iam_role_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 kms_key_id: "NonEmptyString",
    #                 maintenance_track_name: "NonEmptyString",
    #                 manual_snapshot_retention_period: 1,
    #                 master_username: "NonEmptyString",
    #                 next_maintenance_window_start_time: "NonEmptyString",
    #                 node_type: "NonEmptyString",
    #                 number_of_nodes: 1,
    #                 pending_actions: ["NonEmptyString"],
    #                 pending_modified_values: {
    #                   automated_snapshot_retention_period: 1,
    #                   cluster_identifier: "NonEmptyString",
    #                   cluster_type: "NonEmptyString",
    #                   cluster_version: "NonEmptyString",
    #                   encryption_type: "NonEmptyString",
    #                   enhanced_vpc_routing: false,
    #                   maintenance_track_name: "NonEmptyString",
    #                   master_user_password: "NonEmptyString",
    #                   node_type: "NonEmptyString",
    #                   number_of_nodes: 1,
    #                   publicly_accessible: false,
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 resize_info: {
    #                   allow_cancel_resize: false,
    #                   resize_type: "NonEmptyString",
    #                 },
    #                 restore_status: {
    #                   current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                   elapsed_time_in_seconds: 1,
    #                   estimated_time_to_completion_in_seconds: 1,
    #                   progress_in_mega_bytes: 1,
    #                   snapshot_size_in_mega_bytes: 1,
    #                   status: "NonEmptyString",
    #                 },
    #                 snapshot_schedule_identifier: "NonEmptyString",
    #                 snapshot_schedule_state: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     status: "NonEmptyString",
    #                     vpc_security_group_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #               aws_elb_load_balancer: {
    #                 availability_zones: ["NonEmptyString"],
    #                 backend_server_descriptions: [
    #                   {
    #                     instance_port: 1,
    #                     policy_names: ["NonEmptyString"],
    #                   },
    #                 ],
    #                 canonical_hosted_zone_name: "NonEmptyString",
    #                 canonical_hosted_zone_name_id: "NonEmptyString",
    #                 created_time: "NonEmptyString",
    #                 dns_name: "NonEmptyString",
    #                 health_check: {
    #                   healthy_threshold: 1,
    #                   interval: 1,
    #                   target: "NonEmptyString",
    #                   timeout: 1,
    #                   unhealthy_threshold: 1,
    #                 },
    #                 instances: [
    #                   {
    #                     instance_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 listener_descriptions: [
    #                   {
    #                     listener: {
    #                       instance_port: 1,
    #                       instance_protocol: "NonEmptyString",
    #                       load_balancer_port: 1,
    #                       protocol: "NonEmptyString",
    #                       ssl_certificate_id: "NonEmptyString",
    #                     },
    #                     policy_names: ["NonEmptyString"],
    #                   },
    #                 ],
    #                 load_balancer_attributes: {
    #                   access_log: {
    #                     emit_interval: 1,
    #                     enabled: false,
    #                     s3_bucket_name: "NonEmptyString",
    #                     s3_bucket_prefix: "NonEmptyString",
    #                   },
    #                   connection_draining: {
    #                     enabled: false,
    #                     timeout: 1,
    #                   },
    #                   connection_settings: {
    #                     idle_timeout: 1,
    #                   },
    #                   cross_zone_load_balancing: {
    #                     enabled: false,
    #                   },
    #                 },
    #                 load_balancer_name: "NonEmptyString",
    #                 policies: {
    #                   app_cookie_stickiness_policies: [
    #                     {
    #                       cookie_name: "NonEmptyString",
    #                       policy_name: "NonEmptyString",
    #                     },
    #                   ],
    #                   lb_cookie_stickiness_policies: [
    #                     {
    #                       cookie_expiration_period: 1,
    #                       policy_name: "NonEmptyString",
    #                     },
    #                   ],
    #                   other_policies: ["NonEmptyString"],
    #                 },
    #                 scheme: "NonEmptyString",
    #                 security_groups: ["NonEmptyString"],
    #                 source_security_group: {
    #                   group_name: "NonEmptyString",
    #                   owner_alias: "NonEmptyString",
    #                 },
    #                 subnets: ["NonEmptyString"],
    #                 vpc_id: "NonEmptyString",
    #               },
    #               aws_iam_group: {
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #                 group_name: "NonEmptyString",
    #                 group_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 path: "NonEmptyString",
    #               },
    #               aws_iam_role: {
    #                 assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                 attached_managed_policies: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                     policy_arn: "NonEmptyString",
    #                   },
    #                 ],
    #                 create_date: "NonEmptyString",
    #                 instance_profile_list: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     create_date: "NonEmptyString",
    #                     instance_profile_id: "NonEmptyString",
    #                     instance_profile_name: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     roles: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                         create_date: "NonEmptyString",
    #                         path: "NonEmptyString",
    #                         role_id: "NonEmptyString",
    #                         role_name: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                 ],
    #                 permissions_boundary: {
    #                   permissions_boundary_arn: "NonEmptyString",
    #                   permissions_boundary_type: "NonEmptyString",
    #                 },
    #                 role_id: "NonEmptyString",
    #                 role_name: "NonEmptyString",
    #                 role_policy_list: [
    #                   {
    #                     policy_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 max_session_duration: 1,
    #                 path: "NonEmptyString",
    #               },
    #               aws_kms_key: {
    #                 aws_account_id: "NonEmptyString",
    #                 creation_date: 1.0,
    #                 key_id: "NonEmptyString",
    #                 key_manager: "NonEmptyString",
    #                 key_state: "NonEmptyString",
    #                 origin: "NonEmptyString",
    #                 description: "NonEmptyString",
    #               },
    #               aws_lambda_function: {
    #                 code: {
    #                   s3_bucket: "NonEmptyString",
    #                   s3_key: "NonEmptyString",
    #                   s3_object_version: "NonEmptyString",
    #                   zip_file: "NonEmptyString",
    #                 },
    #                 code_sha_256: "NonEmptyString",
    #                 dead_letter_config: {
    #                   target_arn: "NonEmptyString",
    #                 },
    #                 environment: {
    #                   variables: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                   error: {
    #                     error_code: "NonEmptyString",
    #                     message: "NonEmptyString",
    #                   },
    #                 },
    #                 function_name: "NonEmptyString",
    #                 handler: "NonEmptyString",
    #                 kms_key_arn: "NonEmptyString",
    #                 last_modified: "NonEmptyString",
    #                 layers: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     code_size: 1,
    #                   },
    #                 ],
    #                 master_arn: "NonEmptyString",
    #                 memory_size: 1,
    #                 revision_id: "NonEmptyString",
    #                 role: "NonEmptyString",
    #                 runtime: "NonEmptyString",
    #                 timeout: 1,
    #                 tracing_config: {
    #                   mode: "NonEmptyString",
    #                 },
    #                 vpc_config: {
    #                   security_group_ids: ["NonEmptyString"],
    #                   subnet_ids: ["NonEmptyString"],
    #                   vpc_id: "NonEmptyString",
    #                 },
    #                 version: "NonEmptyString",
    #               },
    #               aws_lambda_layer_version: {
    #                 version: 1,
    #                 compatible_runtimes: ["NonEmptyString"],
    #                 created_date: "NonEmptyString",
    #               },
    #               aws_rds_db_instance: {
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     feature_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 ca_certificate_identifier: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_instance_class: "NonEmptyString",
    #                 db_instance_port: 1,
    #                 dbi_resource_id: "NonEmptyString",
    #                 db_name: "NonEmptyString",
    #                 deletion_protection: false,
    #                 endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString",
    #                 },
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 instance_create_time: "NonEmptyString",
    #                 kms_key_id: "NonEmptyString",
    #                 publicly_accessible: false,
    #                 storage_encrypted: false,
    #                 tde_credential_arn: "NonEmptyString",
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 multi_az: false,
    #                 enhanced_monitoring_resource_arn: "NonEmptyString",
    #                 db_instance_status: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 preferred_backup_window: "NonEmptyString",
    #                 backup_retention_period: 1,
    #                 db_security_groups: ["NonEmptyString"],
    #                 db_parameter_groups: [
    #                   {
    #                     db_parameter_group_name: "NonEmptyString",
    #                     parameter_apply_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 availability_zone: "NonEmptyString",
    #                 db_subnet_group: {
    #                   db_subnet_group_name: "NonEmptyString",
    #                   db_subnet_group_description: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   subnet_group_status: "NonEmptyString",
    #                   subnets: [
    #                     {
    #                       subnet_identifier: "NonEmptyString",
    #                       subnet_availability_zone: {
    #                         name: "NonEmptyString",
    #                       },
    #                       subnet_status: "NonEmptyString",
    #                     },
    #                   ],
    #                   db_subnet_group_arn: "NonEmptyString",
    #                 },
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 pending_modified_values: {
    #                   db_instance_class: "NonEmptyString",
    #                   allocated_storage: 1,
    #                   master_user_password: "NonEmptyString",
    #                   port: 1,
    #                   backup_retention_period: 1,
    #                   multi_az: false,
    #                   engine_version: "NonEmptyString",
    #                   license_model: "NonEmptyString",
    #                   iops: 1,
    #                   db_instance_identifier: "NonEmptyString",
    #                   storage_type: "NonEmptyString",
    #                   ca_certificate_identifier: "NonEmptyString",
    #                   db_subnet_group_name: "NonEmptyString",
    #                   pending_cloud_watch_logs_exports: {
    #                     log_types_to_enable: ["NonEmptyString"],
    #                     log_types_to_disable: ["NonEmptyString"],
    #                   },
    #                   processor_features: [
    #                     {
    #                       name: "NonEmptyString",
    #                       value: "NonEmptyString",
    #                     },
    #                   ],
    #                 },
    #                 latest_restorable_time: "NonEmptyString",
    #                 auto_minor_version_upgrade: false,
    #                 read_replica_source_db_instance_identifier: "NonEmptyString",
    #                 read_replica_db_instance_identifiers: ["NonEmptyString"],
    #                 read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #                 license_model: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_memberships: [
    #                   {
    #                     option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 character_set_name: "NonEmptyString",
    #                 secondary_availability_zone: "NonEmptyString",
    #                 status_infos: [
    #                   {
    #                     status_type: "NonEmptyString",
    #                     normal: false,
    #                     status: "NonEmptyString",
    #                     message: "NonEmptyString",
    #                   },
    #                 ],
    #                 storage_type: "NonEmptyString",
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 copy_tags_to_snapshot: false,
    #                 monitoring_interval: 1,
    #                 monitoring_role_arn: "NonEmptyString",
    #                 promotion_tier: 1,
    #                 timezone: "NonEmptyString",
    #                 performance_insights_enabled: false,
    #                 performance_insights_kms_key_id: "NonEmptyString",
    #                 performance_insights_retention_period: 1,
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                   },
    #                 ],
    #                 listener_endpoint: {
    #                   address: "NonEmptyString",
    #                   port: 1,
    #                   hosted_zone_id: "NonEmptyString",
    #                 },
    #                 max_allocated_storage: 1,
    #               },
    #               aws_sns_topic: {
    #                 kms_master_key_id: "NonEmptyString",
    #                 subscription: [
    #                   {
    #                     endpoint: "NonEmptyString",
    #                     protocol: "NonEmptyString",
    #                   },
    #                 ],
    #                 topic_name: "NonEmptyString",
    #                 owner: "NonEmptyString",
    #               },
    #               aws_sqs_queue: {
    #                 kms_data_key_reuse_period_seconds: 1,
    #                 kms_master_key_id: "NonEmptyString",
    #                 queue_name: "NonEmptyString",
    #                 dead_letter_target_arn: "NonEmptyString",
    #               },
    #               aws_waf_web_acl: {
    #                 name: "NonEmptyString",
    #                 default_action: "NonEmptyString",
    #                 rules: [
    #                   {
    #                     action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     excluded_rules: [
    #                       {
    #                         rule_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     override_action: {
    #                       type: "NonEmptyString",
    #                     },
    #                     priority: 1,
    #                     rule_id: "NonEmptyString",
    #                     type: "NonEmptyString",
    #                   },
    #                 ],
    #                 web_acl_id: "NonEmptyString",
    #               },
    #               aws_rds_db_snapshot: {
    #                 db_snapshot_identifier: "NonEmptyString",
    #                 db_instance_identifier: "NonEmptyString",
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 availability_zone: "NonEmptyString",
    #                 vpc_id: "NonEmptyString",
    #                 instance_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 iops: 1,
    #                 option_group_name: "NonEmptyString",
    #                 percent_progress: 1,
    #                 source_region: "NonEmptyString",
    #                 source_db_snapshot_identifier: "NonEmptyString",
    #                 storage_type: "NonEmptyString",
    #                 tde_credential_arn: "NonEmptyString",
    #                 encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 timezone: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #                 processor_features: [
    #                   {
    #                     name: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                   },
    #                 ],
    #                 dbi_resource_id: "NonEmptyString",
    #               },
    #               aws_rds_db_cluster_snapshot: {
    #                 availability_zones: ["NonEmptyString"],
    #                 snapshot_create_time: "NonEmptyString",
    #                 engine: "NonEmptyString",
    #                 allocated_storage: 1,
    #                 status: "NonEmptyString",
    #                 port: 1,
    #                 vpc_id: "NonEmptyString",
    #                 cluster_create_time: "NonEmptyString",
    #                 master_username: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 license_model: "NonEmptyString",
    #                 snapshot_type: "NonEmptyString",
    #                 percent_progress: 1,
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_snapshot_identifier: "NonEmptyString",
    #                 iam_database_authentication_enabled: false,
    #               },
    #               aws_rds_db_cluster: {
    #                 allocated_storage: 1,
    #                 availability_zones: ["NonEmptyString"],
    #                 backup_retention_period: 1,
    #                 database_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 endpoint: "NonEmptyString",
    #                 reader_endpoint: "NonEmptyString",
    #                 custom_endpoints: ["NonEmptyString"],
    #                 multi_az: false,
    #                 engine: "NonEmptyString",
    #                 engine_version: "NonEmptyString",
    #                 port: 1,
    #                 master_username: "NonEmptyString",
    #                 preferred_backup_window: "NonEmptyString",
    #                 preferred_maintenance_window: "NonEmptyString",
    #                 read_replica_identifiers: ["NonEmptyString"],
    #                 vpc_security_groups: [
    #                   {
    #                     vpc_security_group_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 hosted_zone_id: "NonEmptyString",
    #                 storage_encrypted: false,
    #                 kms_key_id: "NonEmptyString",
    #                 db_cluster_resource_id: "NonEmptyString",
    #                 associated_roles: [
    #                   {
    #                     role_arn: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 cluster_create_time: "NonEmptyString",
    #                 enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                 engine_mode: "NonEmptyString",
    #                 deletion_protection: false,
    #                 http_endpoint_enabled: false,
    #                 activity_stream_status: "NonEmptyString",
    #                 copy_tags_to_snapshot: false,
    #                 cross_account_clone: false,
    #                 domain_memberships: [
    #                   {
    #                     domain: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     fqdn: "NonEmptyString",
    #                     iam_role_name: "NonEmptyString",
    #                   },
    #                 ],
    #                 db_cluster_parameter_group: "NonEmptyString",
    #                 db_subnet_group: "NonEmptyString",
    #                 db_cluster_option_group_memberships: [
    #                   {
    #                     db_cluster_option_group_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                   },
    #                 ],
    #                 db_cluster_identifier: "NonEmptyString",
    #                 db_cluster_members: [
    #                   {
    #                     is_cluster_writer: false,
    #                     promotion_tier: 1,
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_cluster_parameter_group_status: "NonEmptyString",
    #                   },
    #                 ],
    #                 iam_database_authentication_enabled: false,
    #               },
    #               container: {
    #                 name: "NonEmptyString",
    #                 image_id: "NonEmptyString",
    #                 image_name: "NonEmptyString",
    #                 launched_at: "NonEmptyString",
    #               },
    #               other: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #             },
    #           },
    #         ],
    #         compliance: {
    #           status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #           related_requirements: ["NonEmptyString"],
    #           status_reasons: [
    #             {
    #               reason_code: "NonEmptyString", # required
    #               description: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #         workflow: {
    #           status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #           updated_at: "NonEmptyString", # required
    #         },
    #         vulnerabilities: [
    #           {
    #             id: "NonEmptyString", # required
    #             vulnerable_packages: [
    #               {
    #                 name: "NonEmptyString",
    #                 version: "NonEmptyString",
    #                 epoch: "NonEmptyString",
    #                 release: "NonEmptyString",
    #                 architecture: "NonEmptyString",
    #               },
    #             ],
    #             cvss: [
    #               {
    #                 version: "NonEmptyString",
    #                 base_score: 1.0,
    #                 base_vector: "NonEmptyString",
    #               },
    #             ],
    #             related_vulnerabilities: ["NonEmptyString"],
    #             vendor: {
    #               name: "NonEmptyString", # required
    #               url: "NonEmptyString",
    #               vendor_severity: "NonEmptyString",
    #               vendor_created_at: "NonEmptyString",
    #               vendor_updated_at: "NonEmptyString",
    #             },
    #             reference_urls: ["NonEmptyString"],
    #           },
    #         ],
    #         patch_summary: {
    #           id: "NonEmptyString", # required
    #           installed_count: 1,
    #           missing_count: 1,
    #           failed_count: 1,
    #           installed_other_count: 1,
    #           installed_rejected_count: 1,
    #           installed_pending_reboot: 1,
    #           operation_start_time: "NonEmptyString",
    #           operation_end_time: "NonEmptyString",
    #           reboot_option: "NonEmptyString",
    #           operation: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] schema_version
    #   The schema version that a finding is formatted for.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   `namespace/category/classifier` that classify a finding.
    #
    #   Valid namespace values are: Software and Configuration Checks \|
    #   TTPs \| Effects \| Unusual Behaviors \| Sensitive Data
    #   Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] first_observed_at
    #   Indicates when the security-findings provider first observed the
    #   potential security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   Indicates when the security-findings provider most recently observed
    #   the potential security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Indicates when the security-findings provider created the potential
    #   security issue that a finding captured.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Indicates when the security-findings provider last updated the
    #   finding record.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   A finding's severity.
    #   @return [Types::Severity]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #
    #   <note markdown="1"> In this release, `Title` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #
    #   <note markdown="1"> In this release, `Description` is a required property.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   A data type that describes the remediation options for a finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [String]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] malware
    #   A list of malware related to a finding.
    #   @return [Array<Types::Malware>]
    #
    # @!attribute [rw] network
    #   The details of network-related information about a finding.
    #   @return [Types::Network]
    #
    # @!attribute [rw] network_path
    #   Provides information about a network path that is relevant to a
    #   finding. Each entry under `NetworkPath` represents a component of
    #   that path.
    #   @return [Array<Types::NetworkPathComponent>]
    #
    # @!attribute [rw] process
    #   The details of process-related information about a finding.
    #   @return [Types::ProcessDetails]
    #
    # @!attribute [rw] threat_intel_indicators
    #   Threat intelligence details related to a finding.
    #   @return [Array<Types::ThreatIntelIndicator>]
    #
    # @!attribute [rw] resources
    #   A set of resource data types that describe the resources that the
    #   finding refers to.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] compliance
    #   This data type is exclusive to findings that are generated as the
    #   result of a check run against a specific rule in a supported
    #   security standard, such as CIS AWS Foundations. Contains security
    #   standard-related finding details.
    #   @return [Types::Compliance]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] workflow
    #   Provides information about the status of the investigation into a
    #   finding.
    #   @return [Types::Workflow]
    #
    # @!attribute [rw] record_state
    #   The record state of a finding.
    #   @return [String]
    #
    # @!attribute [rw] related_findings
    #   A list of related findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @!attribute [rw] note
    #   A user-defined note added to a finding.
    #   @return [Types::Note]
    #
    # @!attribute [rw] vulnerabilities
    #   Provides a list of vulnerabilities associated with the findings.
    #   @return [Array<Types::Vulnerability>]
    #
    # @!attribute [rw] patch_summary
    #   Provides an overview of the patch compliance status for an instance
    #   against a selected compliance standard.
    #   @return [Types::PatchSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFinding AWS API Documentation
    #
    class AwsSecurityFinding < Struct.new(
      :schema_version,
      :id,
      :product_arn,
      :generator_id,
      :aws_account_id,
      :types,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity,
      :confidence,
      :criticality,
      :title,
      :description,
      :remediation,
      :source_url,
      :product_fields,
      :user_defined_fields,
      :malware,
      :network,
      :network_path,
      :process,
      :threat_intel_indicators,
      :resources,
      :compliance,
      :verification_state,
      :workflow_state,
      :workflow,
      :record_state,
      :related_findings,
      :note,
      :vulnerabilities,
      :patch_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of attributes that are applied to all active Security
    # Hub-aggregated findings and that result in a subset of findings that
    # are included in this insight.
    #
    # You can filter by up to 10 finding attributes. For each attribute, you
    # can provide up to 20 filter values.
    #
    # @note When making an API call, you may pass AwsSecurityFindingFilters
    #   data as a hash:
    #
    #       {
    #         product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         aws_account_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         generator_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         first_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         severity_product: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_normalized: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         severity_label: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         confidence: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         criticality: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         title: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         description: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         recommendation_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         product_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #           },
    #         ],
    #         product_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         company_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         user_defined_fields: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #           },
    #         ],
    #         malware_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         malware_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         malware_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         malware_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         network_direction: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         network_protocol: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         network_source_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_source_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_source_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         network_source_mac: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         network_destination_ip_v4: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_ip_v6: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         network_destination_port: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         network_destination_domain: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         process_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         process_path: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         process_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_parent_pid: [
    #           {
    #             gte: 1.0,
    #             lte: 1.0,
    #             eq: 1.0,
    #           },
    #         ],
    #         process_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         process_terminated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         threat_intel_indicator_value: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         threat_intel_indicator_category: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         threat_intel_indicator_last_observed_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         threat_intel_indicator_source: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         threat_intel_indicator_source_url: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_partition: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_region: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_tags: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_type: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v4_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_ip_v6_addresses: [
    #           {
    #             cidr: "NonEmptyString",
    #           },
    #         ],
    #         resource_aws_ec2_instance_key_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_iam_instance_profile_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_vpc_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_subnet_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_ec2_instance_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_s3_bucket_owner_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_iam_access_key_user_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_iam_access_key_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_aws_iam_access_key_created_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_container_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_container_image_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_container_image_name: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         resource_container_launched_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         resource_details_other: [
    #           {
    #             key: "NonEmptyString",
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #           },
    #         ],
    #         compliance_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         verification_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         workflow_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         workflow_status: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         record_state: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         related_findings_product_arn: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         related_findings_id: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         note_text: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         note_updated_at: [
    #           {
    #             start: "NonEmptyString",
    #             end: "NonEmptyString",
    #             date_range: {
    #               value: 1,
    #               unit: "DAYS", # accepts DAYS
    #             },
    #           },
    #         ],
    #         note_updated_by: [
    #           {
    #             value: "NonEmptyString",
    #             comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #           },
    #         ],
    #         keyword: [
    #           {
    #             value: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a
    #   third-party company (security findings provider) after this
    #   provider's product (solution that generates findings) is registered
    #   with Security Hub.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that a finding is generated in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] id
    #   The security findings provider-specific identifier for a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] generator_id
    #   The identifier for the solution-specific component (a discrete unit
    #   of logic) that generated a finding. In various security-findings
    #   providers' solutions, this generator can be called a rule, a check,
    #   a detector, a plugin, etc.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] type
    #   A finding type in the format of `namespace/category/classifier` that
    #   classifies a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] first_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider first observed the potential security
    #   issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] last_observed_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider most recently observed the potential
    #   security issue that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] created_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider captured the potential security issue
    #   that a finding captured.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] updated_at
    #   An ISO8601-formatted timestamp that indicates when the
    #   security-findings provider last updated the finding record.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] severity_product
    #   The native severity as defined by the security-findings provider's
    #   solution that generated the finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_normalized
    #   The normalized severity of a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] severity_label
    #   The label of a finding's severity.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] confidence
    #   A finding's confidence. Confidence is defined as the likelihood
    #   that a finding accurately identifies the behavior or issue that it
    #   was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] criticality
    #   The level of importance assigned to the resources associated with
    #   the finding.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] title
    #   A finding's title.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] description
    #   A finding's description.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] recommendation_text
    #   The recommendation of what to do about the issue described in a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] source_url
    #   A URL that links to a page about the current finding in the
    #   security-findings provider's solution.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] product_fields
    #   A data type where security-findings providers can include additional
    #   solution-specific details that aren't part of the defined
    #   `AwsSecurityFinding` format.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] product_name
    #   The name of the solution (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] company_name
    #   The name of the findings provider (company) that owns the solution
    #   (product) that generates findings.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] malware_name
    #   The name of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_type
    #   The type of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_path
    #   The filesystem path of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] malware_state
    #   The state of the malware that was observed.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_direction
    #   Indicates the direction of network traffic associated with a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_protocol
    #   The protocol of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_source_port
    #   The source port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_source_domain
    #   The source domain of network-related information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] network_destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] network_destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] network_destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_name
    #   The name of the process.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_path
    #   The path to the process executable.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] process_pid
    #   The process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_parent_pid
    #   The parent process ID.
    #   @return [Array<Types::NumberFilter>]
    #
    # @!attribute [rw] process_launched_at
    #   The date/time that the process was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] process_terminated_at
    #   The date/time that the process was terminated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_type
    #   The type of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_value
    #   The value of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_category
    #   The category of a threat intelligence indicator.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_last_observed_at
    #   The date/time of the last observation of a threat intelligence
    #   indicator.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source
    #   The source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] threat_intel_indicator_source_url
    #   The URL for more details from the source of the threat intelligence.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of the resource that details are provided for.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_id
    #   The canonical identifier for the given resource type.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_type
    #   The instance type of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_image_id
    #   The Amazon Machine Image (AMI) ID of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v4_addresses
    #   The IPv4 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_ip_v6_addresses
    #   The IPv6 addresses associated with the instance.
    #   @return [Array<Types::IpFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_key_name
    #   The key name associated with the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_iam_instance_profile_arn
    #   The IAM profile ARN of the instance.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_vpc_id
    #   The identifier of the VPC that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_subnet_id
    #   The identifier of the subnet that the instance was launched in.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_ec2_instance_launched_at
    #   The date and time the instance was launched.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_id
    #   The canonical user ID of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_s3_bucket_owner_name
    #   The display name of the owner of the S3 bucket.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_user_name
    #   The user associated with the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_status
    #   The status of the IAM access key related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_aws_iam_access_key_created_at
    #   The creation date/time of the IAM access key related to a finding.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_container_name
    #   The name of the container related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_id
    #   The identifier of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_image_name
    #   The name of the image related to a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] resource_container_launched_at
    #   The date/time that the container was started.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] resource_details_other
    #   The details of a resource that doesn't have a specific subfield for
    #   the resource type defined.
    #   @return [Array<Types::MapFilter>]
    #
    # @!attribute [rw] compliance_status
    #   Exclusive to findings that are generated as the result of a check
    #   run against a specific rule in a supported standard, such as CIS AWS
    #   Foundations. Contains security standard-related finding details.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] verification_state
    #   The veracity of a finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_state
    #   The workflow state of a finding.
    #
    #   Note that this field is deprecated. To search for a finding based on
    #   its workflow status, use `WorkflowStatus`.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] workflow_status
    #   The status of the investigation into a finding. Allowed values are
    #   the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that the resource owner has been notified
    #     about the security issue. Used when the initial reviewer is not
    #     the resource owner, and needs intervention from the resource
    #     owner.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_product_arn
    #   The ARN of the solution that generated a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] related_findings_id
    #   The solution-generated identifier for a related finding.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_text
    #   The text of a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] note_updated_at
    #   The timestamp of when the note was updated.
    #   @return [Array<Types::DateFilter>]
    #
    # @!attribute [rw] note_updated_by
    #   The principal that created a note.
    #   @return [Array<Types::StringFilter>]
    #
    # @!attribute [rw] keyword
    #   A keyword for a finding.
    #   @return [Array<Types::KeywordFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingFilters AWS API Documentation
    #
    class AwsSecurityFindingFilters < Struct.new(
      :product_arn,
      :aws_account_id,
      :id,
      :generator_id,
      :type,
      :first_observed_at,
      :last_observed_at,
      :created_at,
      :updated_at,
      :severity_product,
      :severity_normalized,
      :severity_label,
      :confidence,
      :criticality,
      :title,
      :description,
      :recommendation_text,
      :source_url,
      :product_fields,
      :product_name,
      :company_name,
      :user_defined_fields,
      :malware_name,
      :malware_type,
      :malware_path,
      :malware_state,
      :network_direction,
      :network_protocol,
      :network_source_ip_v4,
      :network_source_ip_v6,
      :network_source_port,
      :network_source_domain,
      :network_source_mac,
      :network_destination_ip_v4,
      :network_destination_ip_v6,
      :network_destination_port,
      :network_destination_domain,
      :process_name,
      :process_path,
      :process_pid,
      :process_parent_pid,
      :process_launched_at,
      :process_terminated_at,
      :threat_intel_indicator_type,
      :threat_intel_indicator_value,
      :threat_intel_indicator_category,
      :threat_intel_indicator_last_observed_at,
      :threat_intel_indicator_source,
      :threat_intel_indicator_source_url,
      :resource_type,
      :resource_id,
      :resource_partition,
      :resource_region,
      :resource_tags,
      :resource_aws_ec2_instance_type,
      :resource_aws_ec2_instance_image_id,
      :resource_aws_ec2_instance_ip_v4_addresses,
      :resource_aws_ec2_instance_ip_v6_addresses,
      :resource_aws_ec2_instance_key_name,
      :resource_aws_ec2_instance_iam_instance_profile_arn,
      :resource_aws_ec2_instance_vpc_id,
      :resource_aws_ec2_instance_subnet_id,
      :resource_aws_ec2_instance_launched_at,
      :resource_aws_s3_bucket_owner_id,
      :resource_aws_s3_bucket_owner_name,
      :resource_aws_iam_access_key_user_name,
      :resource_aws_iam_access_key_status,
      :resource_aws_iam_access_key_created_at,
      :resource_container_name,
      :resource_container_image_id,
      :resource_container_image_name,
      :resource_container_launched_at,
      :resource_details_other,
      :compliance_status,
      :verification_state,
      :workflow_state,
      :workflow_status,
      :record_state,
      :related_findings_product_arn,
      :related_findings_id,
      :note_text,
      :note_updated_at,
      :note_updated_by,
      :keyword)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a finding to update using `BatchUpdateFindings`.
    #
    # @note When making an API call, you may pass AwsSecurityFindingIdentifier
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #         product_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the finding that was specified by the finding
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] product_arn
    #   The ARN generated by Security Hub that uniquely identifies a product
    #   that generates findings. This can be the ARN for a third-party
    #   product that is integrated with Security Hub, or the ARN for a
    #   custom integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSecurityFindingIdentifier AWS API Documentation
    #
    class AwsSecurityFindingIdentifier < Struct.new(
      :id,
      :product_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper type for the topic's Amazon Resource Name (ARN).
    #
    # @note When making an API call, you may pass AwsSnsTopicDetails
    #   data as a hash:
    #
    #       {
    #         kms_master_key_id: "NonEmptyString",
    #         subscription: [
    #           {
    #             endpoint: "NonEmptyString",
    #             protocol: "NonEmptyString",
    #           },
    #         ],
    #         topic_name: "NonEmptyString",
    #         owner: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an AWS managed customer master key (CMK) for Amazon SNS or
    #   a custom CMK.
    #   @return [String]
    #
    # @!attribute [rw] subscription
    #   Subscription is an embedded property that describes the subscription
    #   endpoints of an Amazon SNS topic.
    #   @return [Array<Types::AwsSnsTopicSubscription>]
    #
    # @!attribute [rw] topic_name
    #   The name of the topic.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The subscription's owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicDetails AWS API Documentation
    #
    class AwsSnsTopicDetails < Struct.new(
      :kms_master_key_id,
      :subscription,
      :topic_name,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # A wrapper type for the attributes of an Amazon SNS subscription.
    #
    # @note When making an API call, you may pass AwsSnsTopicSubscription
    #   data as a hash:
    #
    #       {
    #         endpoint: "NonEmptyString",
    #         protocol: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] endpoint
    #   The subscription's endpoint (format depends on the protocol).
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The subscription's protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSnsTopicSubscription AWS API Documentation
    #
    class AwsSnsTopicSubscription < Struct.new(
      :endpoint,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data about a queue.
    #
    # @note When making an API call, you may pass AwsSqsQueueDetails
    #   data as a hash:
    #
    #       {
    #         kms_data_key_reuse_period_seconds: 1,
    #         kms_master_key_id: "NonEmptyString",
    #         queue_name: "NonEmptyString",
    #         dead_letter_target_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] kms_data_key_reuse_period_seconds
    #   The length of time, in seconds, for which Amazon SQS can reuse a
    #   data key to encrypt or decrypt messages before calling AWS KMS
    #   again.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_master_key_id
    #   The ID of an AWS managed customer master key (CMK) for Amazon SQS or
    #   a custom CMK.
    #   @return [String]
    #
    # @!attribute [rw] queue_name
    #   The name of the new queue.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_target_arn
    #   The Amazon Resource Name (ARN) of the dead-letter queue to which
    #   Amazon SQS moves messages after the value of `maxReceiveCount` is
    #   exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsSqsQueueDetails AWS API Documentation
    #
    class AwsSqsQueueDetails < Struct.new(
      :kms_data_key_reuse_period_seconds,
      :kms_master_key_id,
      :queue_name,
      :dead_letter_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a WAF WebACL.
    #
    # @note When making an API call, you may pass AwsWafWebAclDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         default_action: "NonEmptyString",
    #         rules: [
    #           {
    #             action: {
    #               type: "NonEmptyString",
    #             },
    #             excluded_rules: [
    #               {
    #                 rule_id: "NonEmptyString",
    #               },
    #             ],
    #             override_action: {
    #               type: "NonEmptyString",
    #             },
    #             priority: 1,
    #             rule_id: "NonEmptyString",
    #             type: "NonEmptyString",
    #           },
    #         ],
    #         web_acl_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   A friendly name or description of the WebACL. You can't change the
    #   name of a WebACL after you create it.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   The action to perform if none of the rules contained in the WebACL
    #   match.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   An array that contains the action for each rule in a WebACL, the
    #   priority of the rule, and the ID of the rule.
    #   @return [Array<Types::AwsWafWebAclRule>]
    #
    # @!attribute [rw] web_acl_id
    #   A unique identifier for a WebACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclDetails AWS API Documentation
    #
    class AwsWafWebAclDetails < Struct.new(
      :name,
      :default_action,
      :rules,
      :web_acl_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a rule in a WAF WebACL.
    #
    # @note When making an API call, you may pass AwsWafWebAclRule
    #   data as a hash:
    #
    #       {
    #         action: {
    #           type: "NonEmptyString",
    #         },
    #         excluded_rules: [
    #           {
    #             rule_id: "NonEmptyString",
    #           },
    #         ],
    #         override_action: {
    #           type: "NonEmptyString",
    #         },
    #         priority: 1,
    #         rule_id: "NonEmptyString",
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] action
    #   Specifies the action that CloudFront or AWS WAF takes when a web
    #   request matches the conditions in the rule.
    #   @return [Types::WafAction]
    #
    # @!attribute [rw] excluded_rules
    #   Rules to exclude from a rule group.
    #   @return [Array<Types::WafExcludedRule>]
    #
    # @!attribute [rw] override_action
    #   Use the `OverrideAction` to test your RuleGroup.
    #
    #   Any rule in a RuleGroup can potentially block a request. If you set
    #   the `OverrideAction` to `None`, the RuleGroup blocks a request if
    #   any individual rule in the RuleGroup matches the request and is
    #   configured to block that request.
    #
    #   However, if you first want to test the RuleGroup, set the
    #   `OverrideAction` to `Count`. The RuleGroup then overrides any block
    #   action specified by individual rules contained within the group.
    #   Instead of blocking matching requests, those requests are counted.
    #
    #   `ActivatedRule`\|`OverrideAction` applies only when updating or
    #   adding a RuleGroup to a WebACL. In this case you do not use
    #   `ActivatedRule`\|`Action`. For all other update requests,
    #   `ActivatedRule`\|`Action` is used instead of
    #   `ActivatedRule`\|`OverrideAction`.
    #   @return [Types::WafOverrideAction]
    #
    # @!attribute [rw] priority
    #   Specifies the order in which the rules in a WebACL are evaluated.
    #   Rules with a lower value for `Priority` are evaluated before rules
    #   with a higher value. The value must be a unique integer. If you add
    #   multiple rules to a WebACL, the values do not need to be
    #   consecutive.
    #   @return [Integer]
    #
    # @!attribute [rw] rule_id
    #   The identifier for a rule.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The rule type.
    #
    #   Valid values: `REGULAR` \| `RATE_BASED` \| `GROUP`
    #
    #   The default is `REGULAR`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/AwsWafWebAclRule AWS API Documentation
    #
    class AwsWafWebAclRule < Struct.new(
      :action,
      :excluded_rules,
      :override_action,
      :priority,
      :rule_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   The ARNs of the standards subscriptions to disable.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsRequest AWS API Documentation
    #
    class BatchDisableStandardsRequest < Struct.new(
      :standards_subscription_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were disabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchDisableStandardsResponse AWS API Documentation
    #
    class BatchDisableStandardsResponse < Struct.new(
      :standards_subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchEnableStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_requests: [ # required
    #           {
    #             standards_arn: "NonEmptyString", # required
    #             standards_input: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] standards_subscription_requests
    #   The list of standards checks to enable.
    #   @return [Array<Types::StandardsSubscriptionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsRequest AWS API Documentation
    #
    class BatchEnableStandardsRequest < Struct.new(
      :standards_subscription_requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The details of the standards subscriptions that were enabled.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchEnableStandardsResponse AWS API Documentation
    #
    class BatchEnableStandardsResponse < Struct.new(
      :standards_subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchImportFindingsRequest
    #   data as a hash:
    #
    #       {
    #         findings: [ # required
    #           {
    #             schema_version: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #             product_arn: "NonEmptyString", # required
    #             generator_id: "NonEmptyString", # required
    #             aws_account_id: "NonEmptyString", # required
    #             types: ["NonEmptyString"], # required
    #             first_observed_at: "NonEmptyString",
    #             last_observed_at: "NonEmptyString",
    #             created_at: "NonEmptyString", # required
    #             updated_at: "NonEmptyString", # required
    #             severity: { # required
    #               product: 1.0,
    #               label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #               normalized: 1,
    #               original: "NonEmptyString",
    #             },
    #             confidence: 1,
    #             criticality: 1,
    #             title: "NonEmptyString", # required
    #             description: "NonEmptyString", # required
    #             remediation: {
    #               recommendation: {
    #                 text: "NonEmptyString",
    #                 url: "NonEmptyString",
    #               },
    #             },
    #             source_url: "NonEmptyString",
    #             product_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             user_defined_fields: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             malware: [
    #               {
    #                 name: "NonEmptyString", # required
    #                 type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #                 path: "NonEmptyString",
    #                 state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #               },
    #             ],
    #             network: {
    #               direction: "IN", # accepts IN, OUT
    #               protocol: "NonEmptyString",
    #               open_port_range: {
    #                 begin: 1,
    #                 end: 1,
    #               },
    #               source_ip_v4: "NonEmptyString",
    #               source_ip_v6: "NonEmptyString",
    #               source_port: 1,
    #               source_domain: "NonEmptyString",
    #               source_mac: "NonEmptyString",
    #               destination_ip_v4: "NonEmptyString",
    #               destination_ip_v6: "NonEmptyString",
    #               destination_port: 1,
    #               destination_domain: "NonEmptyString",
    #             },
    #             network_path: [
    #               {
    #                 component_id: "NonEmptyString",
    #                 component_type: "NonEmptyString",
    #                 egress: {
    #                   protocol: "NonEmptyString",
    #                   destination: {
    #                     address: ["NonEmptyString"],
    #                     port_ranges: [
    #                       {
    #                         begin: 1,
    #                         end: 1,
    #                       },
    #                     ],
    #                   },
    #                   source: {
    #                     address: ["NonEmptyString"],
    #                     port_ranges: [
    #                       {
    #                         begin: 1,
    #                         end: 1,
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 ingress: {
    #                   protocol: "NonEmptyString",
    #                   destination: {
    #                     address: ["NonEmptyString"],
    #                     port_ranges: [
    #                       {
    #                         begin: 1,
    #                         end: 1,
    #                       },
    #                     ],
    #                   },
    #                   source: {
    #                     address: ["NonEmptyString"],
    #                     port_ranges: [
    #                       {
    #                         begin: 1,
    #                         end: 1,
    #                       },
    #                     ],
    #                   },
    #                 },
    #               },
    #             ],
    #             process: {
    #               name: "NonEmptyString",
    #               path: "NonEmptyString",
    #               pid: 1,
    #               parent_pid: 1,
    #               launched_at: "NonEmptyString",
    #               terminated_at: "NonEmptyString",
    #             },
    #             threat_intel_indicators: [
    #               {
    #                 type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #                 value: "NonEmptyString",
    #                 category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #                 last_observed_at: "NonEmptyString",
    #                 source: "NonEmptyString",
    #                 source_url: "NonEmptyString",
    #               },
    #             ],
    #             resources: [ # required
    #               {
    #                 type: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #                 partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #                 region: "NonEmptyString",
    #                 resource_role: "NonEmptyString",
    #                 tags: {
    #                   "NonEmptyString" => "NonEmptyString",
    #                 },
    #                 details: {
    #                   aws_auto_scaling_auto_scaling_group: {
    #                     launch_configuration_name: "NonEmptyString",
    #                     load_balancer_names: ["NonEmptyString"],
    #                     health_check_type: "NonEmptyString",
    #                     health_check_grace_period: 1,
    #                     created_time: "NonEmptyString",
    #                   },
    #                   aws_code_build_project: {
    #                     encryption_key: "NonEmptyString",
    #                     environment: {
    #                       certificate: "NonEmptyString",
    #                       image_pull_credentials_type: "NonEmptyString",
    #                       registry_credential: {
    #                         credential: "NonEmptyString",
    #                         credential_provider: "NonEmptyString",
    #                       },
    #                       type: "NonEmptyString",
    #                     },
    #                     name: "NonEmptyString",
    #                     source: {
    #                       type: "NonEmptyString",
    #                       location: "NonEmptyString",
    #                       git_clone_depth: 1,
    #                       insecure_ssl: false,
    #                     },
    #                     service_role: "NonEmptyString",
    #                     vpc_config: {
    #                       vpc_id: "NonEmptyString",
    #                       subnets: ["NonEmptyString"],
    #                       security_group_ids: ["NonEmptyString"],
    #                     },
    #                   },
    #                   aws_cloud_front_distribution: {
    #                     cache_behaviors: {
    #                       items: [
    #                         {
    #                           viewer_protocol_policy: "NonEmptyString",
    #                         },
    #                       ],
    #                     },
    #                     default_cache_behavior: {
    #                       viewer_protocol_policy: "NonEmptyString",
    #                     },
    #                     default_root_object: "NonEmptyString",
    #                     domain_name: "NonEmptyString",
    #                     etag: "NonEmptyString",
    #                     last_modified_time: "NonEmptyString",
    #                     logging: {
    #                       bucket: "NonEmptyString",
    #                       enabled: false,
    #                       include_cookies: false,
    #                       prefix: "NonEmptyString",
    #                     },
    #                     origins: {
    #                       items: [
    #                         {
    #                           domain_name: "NonEmptyString",
    #                           id: "NonEmptyString",
    #                           origin_path: "NonEmptyString",
    #                           s3_origin_config: {
    #                             origin_access_identity: "NonEmptyString",
    #                           },
    #                         },
    #                       ],
    #                     },
    #                     origin_groups: {
    #                       items: [
    #                         {
    #                           failover_criteria: {
    #                             status_codes: {
    #                               items: [1],
    #                               quantity: 1,
    #                             },
    #                           },
    #                         },
    #                       ],
    #                     },
    #                     status: "NonEmptyString",
    #                     web_acl_id: "NonEmptyString",
    #                   },
    #                   aws_ec2_instance: {
    #                     type: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     ip_v4_addresses: ["NonEmptyString"],
    #                     ip_v6_addresses: ["NonEmptyString"],
    #                     key_name: "NonEmptyString",
    #                     iam_instance_profile_arn: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     subnet_id: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   aws_ec2_network_interface: {
    #                     attachment: {
    #                       attach_time: "NonEmptyString",
    #                       attachment_id: "NonEmptyString",
    #                       delete_on_termination: false,
    #                       device_index: 1,
    #                       instance_id: "NonEmptyString",
    #                       instance_owner_id: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                     },
    #                     network_interface_id: "NonEmptyString",
    #                     security_groups: [
    #                       {
    #                         group_name: "NonEmptyString",
    #                         group_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     source_dest_check: false,
    #                   },
    #                   aws_ec2_security_group: {
    #                     group_name: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                     owner_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     ip_permissions: [
    #                       {
    #                         ip_protocol: "NonEmptyString",
    #                         from_port: 1,
    #                         to_port: 1,
    #                         user_id_group_pairs: [
    #                           {
    #                             group_id: "NonEmptyString",
    #                             group_name: "NonEmptyString",
    #                             peering_status: "NonEmptyString",
    #                             user_id: "NonEmptyString",
    #                             vpc_id: "NonEmptyString",
    #                             vpc_peering_connection_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         ip_ranges: [
    #                           {
    #                             cidr_ip: "NonEmptyString",
    #                           },
    #                         ],
    #                         ipv_6_ranges: [
    #                           {
    #                             cidr_ipv_6: "NonEmptyString",
    #                           },
    #                         ],
    #                         prefix_list_ids: [
    #                           {
    #                             prefix_list_id: "NonEmptyString",
    #                           },
    #                         ],
    #                       },
    #                     ],
    #                     ip_permissions_egress: [
    #                       {
    #                         ip_protocol: "NonEmptyString",
    #                         from_port: 1,
    #                         to_port: 1,
    #                         user_id_group_pairs: [
    #                           {
    #                             group_id: "NonEmptyString",
    #                             group_name: "NonEmptyString",
    #                             peering_status: "NonEmptyString",
    #                             user_id: "NonEmptyString",
    #                             vpc_id: "NonEmptyString",
    #                             vpc_peering_connection_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         ip_ranges: [
    #                           {
    #                             cidr_ip: "NonEmptyString",
    #                           },
    #                         ],
    #                         ipv_6_ranges: [
    #                           {
    #                             cidr_ipv_6: "NonEmptyString",
    #                           },
    #                         ],
    #                         prefix_list_ids: [
    #                           {
    #                             prefix_list_id: "NonEmptyString",
    #                           },
    #                         ],
    #                       },
    #                     ],
    #                   },
    #                   aws_ec2_volume: {
    #                     create_time: "NonEmptyString",
    #                     encrypted: false,
    #                     size: 1,
    #                     snapshot_id: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     kms_key_id: "NonEmptyString",
    #                     attachments: [
    #                       {
    #                         attach_time: "NonEmptyString",
    #                         delete_on_termination: false,
    #                         instance_id: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                   aws_ec2_vpc: {
    #                     cidr_block_association_set: [
    #                       {
    #                         association_id: "NonEmptyString",
    #                         cidr_block: "NonEmptyString",
    #                         cidr_block_state: "NonEmptyString",
    #                       },
    #                     ],
    #                     ipv_6_cidr_block_association_set: [
    #                       {
    #                         association_id: "NonEmptyString",
    #                         ipv_6_cidr_block: "NonEmptyString",
    #                         cidr_block_state: "NonEmptyString",
    #                       },
    #                     ],
    #                     dhcp_options_id: "NonEmptyString",
    #                     state: "NonEmptyString",
    #                   },
    #                   aws_ec2_eip: {
    #                     instance_id: "NonEmptyString",
    #                     public_ip: "NonEmptyString",
    #                     allocation_id: "NonEmptyString",
    #                     association_id: "NonEmptyString",
    #                     domain: "NonEmptyString",
    #                     public_ipv_4_pool: "NonEmptyString",
    #                     network_border_group: "NonEmptyString",
    #                     network_interface_id: "NonEmptyString",
    #                     network_interface_owner_id: "NonEmptyString",
    #                     private_ip_address: "NonEmptyString",
    #                   },
    #                   aws_elbv_2_load_balancer: {
    #                     availability_zones: [
    #                       {
    #                         zone_name: "NonEmptyString",
    #                         subnet_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     canonical_hosted_zone_id: "NonEmptyString",
    #                     created_time: "NonEmptyString",
    #                     dns_name: "NonEmptyString",
    #                     ip_address_type: "NonEmptyString",
    #                     scheme: "NonEmptyString",
    #                     security_groups: ["NonEmptyString"],
    #                     state: {
    #                       code: "NonEmptyString",
    #                       reason: "NonEmptyString",
    #                     },
    #                     type: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                   },
    #                   aws_elasticsearch_domain: {
    #                     access_policies: "NonEmptyString",
    #                     domain_endpoint_options: {
    #                       enforce_https: false,
    #                       tls_security_policy: "NonEmptyString",
    #                     },
    #                     domain_id: "NonEmptyString",
    #                     domain_name: "NonEmptyString",
    #                     endpoint: "NonEmptyString",
    #                     endpoints: {
    #                       "NonEmptyString" => "NonEmptyString",
    #                     },
    #                     elasticsearch_version: "NonEmptyString",
    #                     encryption_at_rest_options: {
    #                       enabled: false,
    #                       kms_key_id: "NonEmptyString",
    #                     },
    #                     node_to_node_encryption_options: {
    #                       enabled: false,
    #                     },
    #                     vpc_options: {
    #                       availability_zones: ["NonEmptyString"],
    #                       security_group_ids: ["NonEmptyString"],
    #                       subnet_ids: ["NonEmptyString"],
    #                       vpc_id: "NonEmptyString",
    #                     },
    #                   },
    #                   aws_s3_bucket: {
    #                     owner_id: "NonEmptyString",
    #                     owner_name: "NonEmptyString",
    #                     created_at: "NonEmptyString",
    #                     server_side_encryption_configuration: {
    #                       rules: [
    #                         {
    #                           apply_server_side_encryption_by_default: {
    #                             sse_algorithm: "NonEmptyString",
    #                             kms_master_key_id: "NonEmptyString",
    #                           },
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   aws_s3_object: {
    #                     last_modified: "NonEmptyString",
    #                     etag: "NonEmptyString",
    #                     version_id: "NonEmptyString",
    #                     content_type: "NonEmptyString",
    #                     server_side_encryption: "NonEmptyString",
    #                     ssekms_key_id: "NonEmptyString",
    #                   },
    #                   aws_secrets_manager_secret: {
    #                     rotation_rules: {
    #                       automatically_after_days: 1,
    #                     },
    #                     rotation_occurred_within_frequency: false,
    #                     kms_key_id: "NonEmptyString",
    #                     rotation_enabled: false,
    #                     rotation_lambda_arn: "NonEmptyString",
    #                     deleted: false,
    #                     name: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                   },
    #                   aws_iam_access_key: {
    #                     user_name: "NonEmptyString",
    #                     status: "Active", # accepts Active, Inactive
    #                     created_at: "NonEmptyString",
    #                     principal_id: "NonEmptyString",
    #                     principal_type: "NonEmptyString",
    #                     principal_name: "NonEmptyString",
    #                     account_id: "NonEmptyString",
    #                     access_key_id: "NonEmptyString",
    #                     session_context: {
    #                       attributes: {
    #                         mfa_authenticated: false,
    #                         creation_date: "NonEmptyString",
    #                       },
    #                       session_issuer: {
    #                         type: "NonEmptyString",
    #                         principal_id: "NonEmptyString",
    #                         arn: "NonEmptyString",
    #                         account_id: "NonEmptyString",
    #                         user_name: "NonEmptyString",
    #                       },
    #                     },
    #                   },
    #                   aws_iam_user: {
    #                     attached_managed_policies: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                         policy_arn: "NonEmptyString",
    #                       },
    #                     ],
    #                     create_date: "NonEmptyString",
    #                     group_list: ["NonEmptyString"],
    #                     path: "NonEmptyString",
    #                     permissions_boundary: {
    #                       permissions_boundary_arn: "NonEmptyString",
    #                       permissions_boundary_type: "NonEmptyString",
    #                     },
    #                     user_id: "NonEmptyString",
    #                     user_name: "NonEmptyString",
    #                     user_policy_list: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                   aws_iam_policy: {
    #                     attachment_count: 1,
    #                     create_date: "NonEmptyString",
    #                     default_version_id: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                     is_attachable: false,
    #                     path: "NonEmptyString",
    #                     permissions_boundary_usage_count: 1,
    #                     policy_id: "NonEmptyString",
    #                     policy_name: "NonEmptyString",
    #                     policy_version_list: [
    #                       {
    #                         version_id: "NonEmptyString",
    #                         is_default_version: false,
    #                         create_date: "NonEmptyString",
    #                       },
    #                     ],
    #                     update_date: "NonEmptyString",
    #                   },
    #                   aws_api_gateway_v2_stage: {
    #                     created_date: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                     default_route_settings: {
    #                       detailed_metrics_enabled: false,
    #                       logging_level: "NonEmptyString",
    #                       data_trace_enabled: false,
    #                       throttling_burst_limit: 1,
    #                       throttling_rate_limit: 1.0,
    #                     },
    #                     deployment_id: "NonEmptyString",
    #                     last_updated_date: "NonEmptyString",
    #                     route_settings: {
    #                       detailed_metrics_enabled: false,
    #                       logging_level: "NonEmptyString",
    #                       data_trace_enabled: false,
    #                       throttling_burst_limit: 1,
    #                       throttling_rate_limit: 1.0,
    #                     },
    #                     stage_name: "NonEmptyString",
    #                     stage_variables: {
    #                       "NonEmptyString" => "NonEmptyString",
    #                     },
    #                     access_log_settings: {
    #                       format: "NonEmptyString",
    #                       destination_arn: "NonEmptyString",
    #                     },
    #                     auto_deploy: false,
    #                     last_deployment_status_message: "NonEmptyString",
    #                     api_gateway_managed: false,
    #                   },
    #                   aws_api_gateway_v2_api: {
    #                     api_endpoint: "NonEmptyString",
    #                     api_id: "NonEmptyString",
    #                     api_key_selection_expression: "NonEmptyString",
    #                     created_date: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                     version: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     protocol_type: "NonEmptyString",
    #                     route_selection_expression: "NonEmptyString",
    #                     cors_configuration: {
    #                       allow_origins: ["NonEmptyString"],
    #                       allow_credentials: false,
    #                       expose_headers: ["NonEmptyString"],
    #                       max_age: 1,
    #                       allow_methods: ["NonEmptyString"],
    #                       allow_headers: ["NonEmptyString"],
    #                     },
    #                   },
    #                   aws_dynamo_db_table: {
    #                     attribute_definitions: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         attribute_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     billing_mode_summary: {
    #                       billing_mode: "NonEmptyString",
    #                       last_update_to_pay_per_request_date_time: "NonEmptyString",
    #                     },
    #                     creation_date_time: "NonEmptyString",
    #                     global_secondary_indexes: [
    #                       {
    #                         backfilling: false,
    #                         index_arn: "NonEmptyString",
    #                         index_name: "NonEmptyString",
    #                         index_size_bytes: 1,
    #                         index_status: "NonEmptyString",
    #                         item_count: 1,
    #                         key_schema: [
    #                           {
    #                             attribute_name: "NonEmptyString",
    #                             key_type: "NonEmptyString",
    #                           },
    #                         ],
    #                         projection: {
    #                           non_key_attributes: ["NonEmptyString"],
    #                           projection_type: "NonEmptyString",
    #                         },
    #                         provisioned_throughput: {
    #                           last_decrease_date_time: "NonEmptyString",
    #                           last_increase_date_time: "NonEmptyString",
    #                           number_of_decreases_today: 1,
    #                           read_capacity_units: 1,
    #                           write_capacity_units: 1,
    #                         },
    #                       },
    #                     ],
    #                     global_table_version: "NonEmptyString",
    #                     item_count: 1,
    #                     key_schema: [
    #                       {
    #                         attribute_name: "NonEmptyString",
    #                         key_type: "NonEmptyString",
    #                       },
    #                     ],
    #                     latest_stream_arn: "NonEmptyString",
    #                     latest_stream_label: "NonEmptyString",
    #                     local_secondary_indexes: [
    #                       {
    #                         index_arn: "NonEmptyString",
    #                         index_name: "NonEmptyString",
    #                         key_schema: [
    #                           {
    #                             attribute_name: "NonEmptyString",
    #                             key_type: "NonEmptyString",
    #                           },
    #                         ],
    #                         projection: {
    #                           non_key_attributes: ["NonEmptyString"],
    #                           projection_type: "NonEmptyString",
    #                         },
    #                       },
    #                     ],
    #                     provisioned_throughput: {
    #                       last_decrease_date_time: "NonEmptyString",
    #                       last_increase_date_time: "NonEmptyString",
    #                       number_of_decreases_today: 1,
    #                       read_capacity_units: 1,
    #                       write_capacity_units: 1,
    #                     },
    #                     replicas: [
    #                       {
    #                         global_secondary_indexes: [
    #                           {
    #                             index_name: "NonEmptyString",
    #                             provisioned_throughput_override: {
    #                               read_capacity_units: 1,
    #                             },
    #                           },
    #                         ],
    #                         kms_master_key_id: "NonEmptyString",
    #                         provisioned_throughput_override: {
    #                           read_capacity_units: 1,
    #                         },
    #                         region_name: "NonEmptyString",
    #                         replica_status: "NonEmptyString",
    #                         replica_status_description: "NonEmptyString",
    #                       },
    #                     ],
    #                     restore_summary: {
    #                       source_backup_arn: "NonEmptyString",
    #                       source_table_arn: "NonEmptyString",
    #                       restore_date_time: "NonEmptyString",
    #                       restore_in_progress: false,
    #                     },
    #                     sse_description: {
    #                       inaccessible_encryption_date_time: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                       sse_type: "NonEmptyString",
    #                       kms_master_key_arn: "NonEmptyString",
    #                     },
    #                     stream_specification: {
    #                       stream_enabled: false,
    #                       stream_view_type: "NonEmptyString",
    #                     },
    #                     table_id: "NonEmptyString",
    #                     table_name: "NonEmptyString",
    #                     table_size_bytes: 1,
    #                     table_status: "NonEmptyString",
    #                   },
    #                   aws_api_gateway_stage: {
    #                     deployment_id: "NonEmptyString",
    #                     client_certificate_id: "NonEmptyString",
    #                     stage_name: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                     cache_cluster_enabled: false,
    #                     cache_cluster_size: "NonEmptyString",
    #                     cache_cluster_status: "NonEmptyString",
    #                     method_settings: [
    #                       {
    #                         metrics_enabled: false,
    #                         logging_level: "NonEmptyString",
    #                         data_trace_enabled: false,
    #                         throttling_burst_limit: 1,
    #                         throttling_rate_limit: 1.0,
    #                         caching_enabled: false,
    #                         cache_ttl_in_seconds: 1,
    #                         cache_data_encrypted: false,
    #                         require_authorization_for_cache_control: false,
    #                         unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                         http_method: "NonEmptyString",
    #                         resource_path: "NonEmptyString",
    #                       },
    #                     ],
    #                     variables: {
    #                       "NonEmptyString" => "NonEmptyString",
    #                     },
    #                     documentation_version: "NonEmptyString",
    #                     access_log_settings: {
    #                       format: "NonEmptyString",
    #                       destination_arn: "NonEmptyString",
    #                     },
    #                     canary_settings: {
    #                       percent_traffic: 1.0,
    #                       deployment_id: "NonEmptyString",
    #                       stage_variable_overrides: {
    #                         "NonEmptyString" => "NonEmptyString",
    #                       },
    #                       use_stage_cache: false,
    #                     },
    #                     tracing_enabled: false,
    #                     created_date: "NonEmptyString",
    #                     last_updated_date: "NonEmptyString",
    #                     web_acl_arn: "NonEmptyString",
    #                   },
    #                   aws_api_gateway_rest_api: {
    #                     id: "NonEmptyString",
    #                     name: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                     created_date: "NonEmptyString",
    #                     version: "NonEmptyString",
    #                     binary_media_types: ["NonEmptyString"],
    #                     minimum_compression_size: 1,
    #                     api_key_source: "NonEmptyString",
    #                     endpoint_configuration: {
    #                       types: ["NonEmptyString"],
    #                     },
    #                   },
    #                   aws_cloud_trail_trail: {
    #                     cloud_watch_logs_log_group_arn: "NonEmptyString",
    #                     cloud_watch_logs_role_arn: "NonEmptyString",
    #                     has_custom_event_selectors: false,
    #                     home_region: "NonEmptyString",
    #                     include_global_service_events: false,
    #                     is_multi_region_trail: false,
    #                     is_organization_trail: false,
    #                     kms_key_id: "NonEmptyString",
    #                     log_file_validation_enabled: false,
    #                     name: "NonEmptyString",
    #                     s3_bucket_name: "NonEmptyString",
    #                     s3_key_prefix: "NonEmptyString",
    #                     sns_topic_arn: "NonEmptyString",
    #                     sns_topic_name: "NonEmptyString",
    #                     trail_arn: "NonEmptyString",
    #                   },
    #                   aws_certificate_manager_certificate: {
    #                     certificate_authority_arn: "NonEmptyString",
    #                     created_at: "NonEmptyString",
    #                     domain_name: "NonEmptyString",
    #                     domain_validation_options: [
    #                       {
    #                         domain_name: "NonEmptyString",
    #                         resource_record: {
    #                           name: "NonEmptyString",
    #                           type: "NonEmptyString",
    #                           value: "NonEmptyString",
    #                         },
    #                         validation_domain: "NonEmptyString",
    #                         validation_emails: ["NonEmptyString"],
    #                         validation_method: "NonEmptyString",
    #                         validation_status: "NonEmptyString",
    #                       },
    #                     ],
    #                     extended_key_usages: [
    #                       {
    #                         name: "NonEmptyString",
    #                         o_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     failure_reason: "NonEmptyString",
    #                     imported_at: "NonEmptyString",
    #                     in_use_by: ["NonEmptyString"],
    #                     issued_at: "NonEmptyString",
    #                     issuer: "NonEmptyString",
    #                     key_algorithm: "NonEmptyString",
    #                     key_usages: [
    #                       {
    #                         name: "NonEmptyString",
    #                       },
    #                     ],
    #                     not_after: "NonEmptyString",
    #                     not_before: "NonEmptyString",
    #                     options: {
    #                       certificate_transparency_logging_preference: "NonEmptyString",
    #                     },
    #                     renewal_eligibility: "NonEmptyString",
    #                     renewal_summary: {
    #                       domain_validation_options: [
    #                         {
    #                           domain_name: "NonEmptyString",
    #                           resource_record: {
    #                             name: "NonEmptyString",
    #                             type: "NonEmptyString",
    #                             value: "NonEmptyString",
    #                           },
    #                           validation_domain: "NonEmptyString",
    #                           validation_emails: ["NonEmptyString"],
    #                           validation_method: "NonEmptyString",
    #                           validation_status: "NonEmptyString",
    #                         },
    #                       ],
    #                       renewal_status: "NonEmptyString",
    #                       renewal_status_reason: "NonEmptyString",
    #                       updated_at: "NonEmptyString",
    #                     },
    #                     serial: "NonEmptyString",
    #                     signature_algorithm: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     subject: "NonEmptyString",
    #                     subject_alternative_names: ["NonEmptyString"],
    #                     type: "NonEmptyString",
    #                   },
    #                   aws_redshift_cluster: {
    #                     allow_version_upgrade: false,
    #                     automated_snapshot_retention_period: 1,
    #                     availability_zone: "NonEmptyString",
    #                     cluster_availability_status: "NonEmptyString",
    #                     cluster_create_time: "NonEmptyString",
    #                     cluster_identifier: "NonEmptyString",
    #                     cluster_nodes: [
    #                       {
    #                         node_role: "NonEmptyString",
    #                         private_ip_address: "NonEmptyString",
    #                         public_ip_address: "NonEmptyString",
    #                       },
    #                     ],
    #                     cluster_parameter_groups: [
    #                       {
    #                         cluster_parameter_status_list: [
    #                           {
    #                             parameter_name: "NonEmptyString",
    #                             parameter_apply_status: "NonEmptyString",
    #                             parameter_apply_error_description: "NonEmptyString",
    #                           },
    #                         ],
    #                         parameter_apply_status: "NonEmptyString",
    #                         parameter_group_name: "NonEmptyString",
    #                       },
    #                     ],
    #                     cluster_public_key: "NonEmptyString",
    #                     cluster_revision_number: "NonEmptyString",
    #                     cluster_security_groups: [
    #                       {
    #                         cluster_security_group_name: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     cluster_snapshot_copy_status: {
    #                       destination_region: "NonEmptyString",
    #                       manual_snapshot_retention_period: 1,
    #                       retention_period: 1,
    #                       snapshot_copy_grant_name: "NonEmptyString",
    #                     },
    #                     cluster_status: "NonEmptyString",
    #                     cluster_subnet_group_name: "NonEmptyString",
    #                     cluster_version: "NonEmptyString",
    #                     db_name: "NonEmptyString",
    #                     deferred_maintenance_windows: [
    #                       {
    #                         defer_maintenance_end_time: "NonEmptyString",
    #                         defer_maintenance_identifier: "NonEmptyString",
    #                         defer_maintenance_start_time: "NonEmptyString",
    #                       },
    #                     ],
    #                     elastic_ip_status: {
    #                       elastic_ip: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                     },
    #                     elastic_resize_number_of_node_options: "NonEmptyString",
    #                     encrypted: false,
    #                     endpoint: {
    #                       address: "NonEmptyString",
    #                       port: 1,
    #                     },
    #                     enhanced_vpc_routing: false,
    #                     expected_next_snapshot_schedule_time: "NonEmptyString",
    #                     expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #                     hsm_status: {
    #                       hsm_client_certificate_identifier: "NonEmptyString",
    #                       hsm_configuration_identifier: "NonEmptyString",
    #                       status: "NonEmptyString",
    #                     },
    #                     iam_roles: [
    #                       {
    #                         apply_status: "NonEmptyString",
    #                         iam_role_arn: "NonEmptyString",
    #                       },
    #                     ],
    #                     kms_key_id: "NonEmptyString",
    #                     maintenance_track_name: "NonEmptyString",
    #                     manual_snapshot_retention_period: 1,
    #                     master_username: "NonEmptyString",
    #                     next_maintenance_window_start_time: "NonEmptyString",
    #                     node_type: "NonEmptyString",
    #                     number_of_nodes: 1,
    #                     pending_actions: ["NonEmptyString"],
    #                     pending_modified_values: {
    #                       automated_snapshot_retention_period: 1,
    #                       cluster_identifier: "NonEmptyString",
    #                       cluster_type: "NonEmptyString",
    #                       cluster_version: "NonEmptyString",
    #                       encryption_type: "NonEmptyString",
    #                       enhanced_vpc_routing: false,
    #                       maintenance_track_name: "NonEmptyString",
    #                       master_user_password: "NonEmptyString",
    #                       node_type: "NonEmptyString",
    #                       number_of_nodes: 1,
    #                       publicly_accessible: false,
    #                     },
    #                     preferred_maintenance_window: "NonEmptyString",
    #                     publicly_accessible: false,
    #                     resize_info: {
    #                       allow_cancel_resize: false,
    #                       resize_type: "NonEmptyString",
    #                     },
    #                     restore_status: {
    #                       current_restore_rate_in_mega_bytes_per_second: 1.0,
    #                       elapsed_time_in_seconds: 1,
    #                       estimated_time_to_completion_in_seconds: 1,
    #                       progress_in_mega_bytes: 1,
    #                       snapshot_size_in_mega_bytes: 1,
    #                       status: "NonEmptyString",
    #                     },
    #                     snapshot_schedule_identifier: "NonEmptyString",
    #                     snapshot_schedule_state: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     vpc_security_groups: [
    #                       {
    #                         status: "NonEmptyString",
    #                         vpc_security_group_id: "NonEmptyString",
    #                       },
    #                     ],
    #                   },
    #                   aws_elb_load_balancer: {
    #                     availability_zones: ["NonEmptyString"],
    #                     backend_server_descriptions: [
    #                       {
    #                         instance_port: 1,
    #                         policy_names: ["NonEmptyString"],
    #                       },
    #                     ],
    #                     canonical_hosted_zone_name: "NonEmptyString",
    #                     canonical_hosted_zone_name_id: "NonEmptyString",
    #                     created_time: "NonEmptyString",
    #                     dns_name: "NonEmptyString",
    #                     health_check: {
    #                       healthy_threshold: 1,
    #                       interval: 1,
    #                       target: "NonEmptyString",
    #                       timeout: 1,
    #                       unhealthy_threshold: 1,
    #                     },
    #                     instances: [
    #                       {
    #                         instance_id: "NonEmptyString",
    #                       },
    #                     ],
    #                     listener_descriptions: [
    #                       {
    #                         listener: {
    #                           instance_port: 1,
    #                           instance_protocol: "NonEmptyString",
    #                           load_balancer_port: 1,
    #                           protocol: "NonEmptyString",
    #                           ssl_certificate_id: "NonEmptyString",
    #                         },
    #                         policy_names: ["NonEmptyString"],
    #                       },
    #                     ],
    #                     load_balancer_attributes: {
    #                       access_log: {
    #                         emit_interval: 1,
    #                         enabled: false,
    #                         s3_bucket_name: "NonEmptyString",
    #                         s3_bucket_prefix: "NonEmptyString",
    #                       },
    #                       connection_draining: {
    #                         enabled: false,
    #                         timeout: 1,
    #                       },
    #                       connection_settings: {
    #                         idle_timeout: 1,
    #                       },
    #                       cross_zone_load_balancing: {
    #                         enabled: false,
    #                       },
    #                     },
    #                     load_balancer_name: "NonEmptyString",
    #                     policies: {
    #                       app_cookie_stickiness_policies: [
    #                         {
    #                           cookie_name: "NonEmptyString",
    #                           policy_name: "NonEmptyString",
    #                         },
    #                       ],
    #                       lb_cookie_stickiness_policies: [
    #                         {
    #                           cookie_expiration_period: 1,
    #                           policy_name: "NonEmptyString",
    #                         },
    #                       ],
    #                       other_policies: ["NonEmptyString"],
    #                     },
    #                     scheme: "NonEmptyString",
    #                     security_groups: ["NonEmptyString"],
    #                     source_security_group: {
    #                       group_name: "NonEmptyString",
    #                       owner_alias: "NonEmptyString",
    #                     },
    #                     subnets: ["NonEmptyString"],
    #                     vpc_id: "NonEmptyString",
    #                   },
    #                   aws_iam_group: {
    #                     attached_managed_policies: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                         policy_arn: "NonEmptyString",
    #                       },
    #                     ],
    #                     create_date: "NonEmptyString",
    #                     group_id: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     group_policy_list: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                       },
    #                     ],
    #                     path: "NonEmptyString",
    #                   },
    #                   aws_iam_role: {
    #                     assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                     attached_managed_policies: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                         policy_arn: "NonEmptyString",
    #                       },
    #                     ],
    #                     create_date: "NonEmptyString",
    #                     instance_profile_list: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         create_date: "NonEmptyString",
    #                         instance_profile_id: "NonEmptyString",
    #                         instance_profile_name: "NonEmptyString",
    #                         path: "NonEmptyString",
    #                         roles: [
    #                           {
    #                             arn: "NonEmptyString",
    #                             assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                             create_date: "NonEmptyString",
    #                             path: "NonEmptyString",
    #                             role_id: "NonEmptyString",
    #                             role_name: "NonEmptyString",
    #                           },
    #                         ],
    #                       },
    #                     ],
    #                     permissions_boundary: {
    #                       permissions_boundary_arn: "NonEmptyString",
    #                       permissions_boundary_type: "NonEmptyString",
    #                     },
    #                     role_id: "NonEmptyString",
    #                     role_name: "NonEmptyString",
    #                     role_policy_list: [
    #                       {
    #                         policy_name: "NonEmptyString",
    #                       },
    #                     ],
    #                     max_session_duration: 1,
    #                     path: "NonEmptyString",
    #                   },
    #                   aws_kms_key: {
    #                     aws_account_id: "NonEmptyString",
    #                     creation_date: 1.0,
    #                     key_id: "NonEmptyString",
    #                     key_manager: "NonEmptyString",
    #                     key_state: "NonEmptyString",
    #                     origin: "NonEmptyString",
    #                     description: "NonEmptyString",
    #                   },
    #                   aws_lambda_function: {
    #                     code: {
    #                       s3_bucket: "NonEmptyString",
    #                       s3_key: "NonEmptyString",
    #                       s3_object_version: "NonEmptyString",
    #                       zip_file: "NonEmptyString",
    #                     },
    #                     code_sha_256: "NonEmptyString",
    #                     dead_letter_config: {
    #                       target_arn: "NonEmptyString",
    #                     },
    #                     environment: {
    #                       variables: {
    #                         "NonEmptyString" => "NonEmptyString",
    #                       },
    #                       error: {
    #                         error_code: "NonEmptyString",
    #                         message: "NonEmptyString",
    #                       },
    #                     },
    #                     function_name: "NonEmptyString",
    #                     handler: "NonEmptyString",
    #                     kms_key_arn: "NonEmptyString",
    #                     last_modified: "NonEmptyString",
    #                     layers: [
    #                       {
    #                         arn: "NonEmptyString",
    #                         code_size: 1,
    #                       },
    #                     ],
    #                     master_arn: "NonEmptyString",
    #                     memory_size: 1,
    #                     revision_id: "NonEmptyString",
    #                     role: "NonEmptyString",
    #                     runtime: "NonEmptyString",
    #                     timeout: 1,
    #                     tracing_config: {
    #                       mode: "NonEmptyString",
    #                     },
    #                     vpc_config: {
    #                       security_group_ids: ["NonEmptyString"],
    #                       subnet_ids: ["NonEmptyString"],
    #                       vpc_id: "NonEmptyString",
    #                     },
    #                     version: "NonEmptyString",
    #                   },
    #                   aws_lambda_layer_version: {
    #                     version: 1,
    #                     compatible_runtimes: ["NonEmptyString"],
    #                     created_date: "NonEmptyString",
    #                   },
    #                   aws_rds_db_instance: {
    #                     associated_roles: [
    #                       {
    #                         role_arn: "NonEmptyString",
    #                         feature_name: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     ca_certificate_identifier: "NonEmptyString",
    #                     db_cluster_identifier: "NonEmptyString",
    #                     db_instance_identifier: "NonEmptyString",
    #                     db_instance_class: "NonEmptyString",
    #                     db_instance_port: 1,
    #                     dbi_resource_id: "NonEmptyString",
    #                     db_name: "NonEmptyString",
    #                     deletion_protection: false,
    #                     endpoint: {
    #                       address: "NonEmptyString",
    #                       port: 1,
    #                       hosted_zone_id: "NonEmptyString",
    #                     },
    #                     engine: "NonEmptyString",
    #                     engine_version: "NonEmptyString",
    #                     iam_database_authentication_enabled: false,
    #                     instance_create_time: "NonEmptyString",
    #                     kms_key_id: "NonEmptyString",
    #                     publicly_accessible: false,
    #                     storage_encrypted: false,
    #                     tde_credential_arn: "NonEmptyString",
    #                     vpc_security_groups: [
    #                       {
    #                         vpc_security_group_id: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     multi_az: false,
    #                     enhanced_monitoring_resource_arn: "NonEmptyString",
    #                     db_instance_status: "NonEmptyString",
    #                     master_username: "NonEmptyString",
    #                     allocated_storage: 1,
    #                     preferred_backup_window: "NonEmptyString",
    #                     backup_retention_period: 1,
    #                     db_security_groups: ["NonEmptyString"],
    #                     db_parameter_groups: [
    #                       {
    #                         db_parameter_group_name: "NonEmptyString",
    #                         parameter_apply_status: "NonEmptyString",
    #                       },
    #                     ],
    #                     availability_zone: "NonEmptyString",
    #                     db_subnet_group: {
    #                       db_subnet_group_name: "NonEmptyString",
    #                       db_subnet_group_description: "NonEmptyString",
    #                       vpc_id: "NonEmptyString",
    #                       subnet_group_status: "NonEmptyString",
    #                       subnets: [
    #                         {
    #                           subnet_identifier: "NonEmptyString",
    #                           subnet_availability_zone: {
    #                             name: "NonEmptyString",
    #                           },
    #                           subnet_status: "NonEmptyString",
    #                         },
    #                       ],
    #                       db_subnet_group_arn: "NonEmptyString",
    #                     },
    #                     preferred_maintenance_window: "NonEmptyString",
    #                     pending_modified_values: {
    #                       db_instance_class: "NonEmptyString",
    #                       allocated_storage: 1,
    #                       master_user_password: "NonEmptyString",
    #                       port: 1,
    #                       backup_retention_period: 1,
    #                       multi_az: false,
    #                       engine_version: "NonEmptyString",
    #                       license_model: "NonEmptyString",
    #                       iops: 1,
    #                       db_instance_identifier: "NonEmptyString",
    #                       storage_type: "NonEmptyString",
    #                       ca_certificate_identifier: "NonEmptyString",
    #                       db_subnet_group_name: "NonEmptyString",
    #                       pending_cloud_watch_logs_exports: {
    #                         log_types_to_enable: ["NonEmptyString"],
    #                         log_types_to_disable: ["NonEmptyString"],
    #                       },
    #                       processor_features: [
    #                         {
    #                           name: "NonEmptyString",
    #                           value: "NonEmptyString",
    #                         },
    #                       ],
    #                     },
    #                     latest_restorable_time: "NonEmptyString",
    #                     auto_minor_version_upgrade: false,
    #                     read_replica_source_db_instance_identifier: "NonEmptyString",
    #                     read_replica_db_instance_identifiers: ["NonEmptyString"],
    #                     read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #                     license_model: "NonEmptyString",
    #                     iops: 1,
    #                     option_group_memberships: [
    #                       {
    #                         option_group_name: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     character_set_name: "NonEmptyString",
    #                     secondary_availability_zone: "NonEmptyString",
    #                     status_infos: [
    #                       {
    #                         status_type: "NonEmptyString",
    #                         normal: false,
    #                         status: "NonEmptyString",
    #                         message: "NonEmptyString",
    #                       },
    #                     ],
    #                     storage_type: "NonEmptyString",
    #                     domain_memberships: [
    #                       {
    #                         domain: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                         fqdn: "NonEmptyString",
    #                         iam_role_name: "NonEmptyString",
    #                       },
    #                     ],
    #                     copy_tags_to_snapshot: false,
    #                     monitoring_interval: 1,
    #                     monitoring_role_arn: "NonEmptyString",
    #                     promotion_tier: 1,
    #                     timezone: "NonEmptyString",
    #                     performance_insights_enabled: false,
    #                     performance_insights_kms_key_id: "NonEmptyString",
    #                     performance_insights_retention_period: 1,
    #                     enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                     processor_features: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value: "NonEmptyString",
    #                       },
    #                     ],
    #                     listener_endpoint: {
    #                       address: "NonEmptyString",
    #                       port: 1,
    #                       hosted_zone_id: "NonEmptyString",
    #                     },
    #                     max_allocated_storage: 1,
    #                   },
    #                   aws_sns_topic: {
    #                     kms_master_key_id: "NonEmptyString",
    #                     subscription: [
    #                       {
    #                         endpoint: "NonEmptyString",
    #                         protocol: "NonEmptyString",
    #                       },
    #                     ],
    #                     topic_name: "NonEmptyString",
    #                     owner: "NonEmptyString",
    #                   },
    #                   aws_sqs_queue: {
    #                     kms_data_key_reuse_period_seconds: 1,
    #                     kms_master_key_id: "NonEmptyString",
    #                     queue_name: "NonEmptyString",
    #                     dead_letter_target_arn: "NonEmptyString",
    #                   },
    #                   aws_waf_web_acl: {
    #                     name: "NonEmptyString",
    #                     default_action: "NonEmptyString",
    #                     rules: [
    #                       {
    #                         action: {
    #                           type: "NonEmptyString",
    #                         },
    #                         excluded_rules: [
    #                           {
    #                             rule_id: "NonEmptyString",
    #                           },
    #                         ],
    #                         override_action: {
    #                           type: "NonEmptyString",
    #                         },
    #                         priority: 1,
    #                         rule_id: "NonEmptyString",
    #                         type: "NonEmptyString",
    #                       },
    #                     ],
    #                     web_acl_id: "NonEmptyString",
    #                   },
    #                   aws_rds_db_snapshot: {
    #                     db_snapshot_identifier: "NonEmptyString",
    #                     db_instance_identifier: "NonEmptyString",
    #                     snapshot_create_time: "NonEmptyString",
    #                     engine: "NonEmptyString",
    #                     allocated_storage: 1,
    #                     status: "NonEmptyString",
    #                     port: 1,
    #                     availability_zone: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     instance_create_time: "NonEmptyString",
    #                     master_username: "NonEmptyString",
    #                     engine_version: "NonEmptyString",
    #                     license_model: "NonEmptyString",
    #                     snapshot_type: "NonEmptyString",
    #                     iops: 1,
    #                     option_group_name: "NonEmptyString",
    #                     percent_progress: 1,
    #                     source_region: "NonEmptyString",
    #                     source_db_snapshot_identifier: "NonEmptyString",
    #                     storage_type: "NonEmptyString",
    #                     tde_credential_arn: "NonEmptyString",
    #                     encrypted: false,
    #                     kms_key_id: "NonEmptyString",
    #                     timezone: "NonEmptyString",
    #                     iam_database_authentication_enabled: false,
    #                     processor_features: [
    #                       {
    #                         name: "NonEmptyString",
    #                         value: "NonEmptyString",
    #                       },
    #                     ],
    #                     dbi_resource_id: "NonEmptyString",
    #                   },
    #                   aws_rds_db_cluster_snapshot: {
    #                     availability_zones: ["NonEmptyString"],
    #                     snapshot_create_time: "NonEmptyString",
    #                     engine: "NonEmptyString",
    #                     allocated_storage: 1,
    #                     status: "NonEmptyString",
    #                     port: 1,
    #                     vpc_id: "NonEmptyString",
    #                     cluster_create_time: "NonEmptyString",
    #                     master_username: "NonEmptyString",
    #                     engine_version: "NonEmptyString",
    #                     license_model: "NonEmptyString",
    #                     snapshot_type: "NonEmptyString",
    #                     percent_progress: 1,
    #                     storage_encrypted: false,
    #                     kms_key_id: "NonEmptyString",
    #                     db_cluster_identifier: "NonEmptyString",
    #                     db_cluster_snapshot_identifier: "NonEmptyString",
    #                     iam_database_authentication_enabled: false,
    #                   },
    #                   aws_rds_db_cluster: {
    #                     allocated_storage: 1,
    #                     availability_zones: ["NonEmptyString"],
    #                     backup_retention_period: 1,
    #                     database_name: "NonEmptyString",
    #                     status: "NonEmptyString",
    #                     endpoint: "NonEmptyString",
    #                     reader_endpoint: "NonEmptyString",
    #                     custom_endpoints: ["NonEmptyString"],
    #                     multi_az: false,
    #                     engine: "NonEmptyString",
    #                     engine_version: "NonEmptyString",
    #                     port: 1,
    #                     master_username: "NonEmptyString",
    #                     preferred_backup_window: "NonEmptyString",
    #                     preferred_maintenance_window: "NonEmptyString",
    #                     read_replica_identifiers: ["NonEmptyString"],
    #                     vpc_security_groups: [
    #                       {
    #                         vpc_security_group_id: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     hosted_zone_id: "NonEmptyString",
    #                     storage_encrypted: false,
    #                     kms_key_id: "NonEmptyString",
    #                     db_cluster_resource_id: "NonEmptyString",
    #                     associated_roles: [
    #                       {
    #                         role_arn: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     cluster_create_time: "NonEmptyString",
    #                     enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #                     engine_mode: "NonEmptyString",
    #                     deletion_protection: false,
    #                     http_endpoint_enabled: false,
    #                     activity_stream_status: "NonEmptyString",
    #                     copy_tags_to_snapshot: false,
    #                     cross_account_clone: false,
    #                     domain_memberships: [
    #                       {
    #                         domain: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                         fqdn: "NonEmptyString",
    #                         iam_role_name: "NonEmptyString",
    #                       },
    #                     ],
    #                     db_cluster_parameter_group: "NonEmptyString",
    #                     db_subnet_group: "NonEmptyString",
    #                     db_cluster_option_group_memberships: [
    #                       {
    #                         db_cluster_option_group_name: "NonEmptyString",
    #                         status: "NonEmptyString",
    #                       },
    #                     ],
    #                     db_cluster_identifier: "NonEmptyString",
    #                     db_cluster_members: [
    #                       {
    #                         is_cluster_writer: false,
    #                         promotion_tier: 1,
    #                         db_instance_identifier: "NonEmptyString",
    #                         db_cluster_parameter_group_status: "NonEmptyString",
    #                       },
    #                     ],
    #                     iam_database_authentication_enabled: false,
    #                   },
    #                   container: {
    #                     name: "NonEmptyString",
    #                     image_id: "NonEmptyString",
    #                     image_name: "NonEmptyString",
    #                     launched_at: "NonEmptyString",
    #                   },
    #                   other: {
    #                     "NonEmptyString" => "NonEmptyString",
    #                   },
    #                 },
    #               },
    #             ],
    #             compliance: {
    #               status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #               related_requirements: ["NonEmptyString"],
    #               status_reasons: [
    #                 {
    #                   reason_code: "NonEmptyString", # required
    #                   description: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #             verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #             workflow_state: "NEW", # accepts NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED
    #             workflow: {
    #               status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #             },
    #             record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #             related_findings: [
    #               {
    #                 product_arn: "NonEmptyString", # required
    #                 id: "NonEmptyString", # required
    #               },
    #             ],
    #             note: {
    #               text: "NonEmptyString", # required
    #               updated_by: "NonEmptyString", # required
    #               updated_at: "NonEmptyString", # required
    #             },
    #             vulnerabilities: [
    #               {
    #                 id: "NonEmptyString", # required
    #                 vulnerable_packages: [
    #                   {
    #                     name: "NonEmptyString",
    #                     version: "NonEmptyString",
    #                     epoch: "NonEmptyString",
    #                     release: "NonEmptyString",
    #                     architecture: "NonEmptyString",
    #                   },
    #                 ],
    #                 cvss: [
    #                   {
    #                     version: "NonEmptyString",
    #                     base_score: 1.0,
    #                     base_vector: "NonEmptyString",
    #                   },
    #                 ],
    #                 related_vulnerabilities: ["NonEmptyString"],
    #                 vendor: {
    #                   name: "NonEmptyString", # required
    #                   url: "NonEmptyString",
    #                   vendor_severity: "NonEmptyString",
    #                   vendor_created_at: "NonEmptyString",
    #                   vendor_updated_at: "NonEmptyString",
    #                 },
    #                 reference_urls: ["NonEmptyString"],
    #               },
    #             ],
    #             patch_summary: {
    #               id: "NonEmptyString", # required
    #               installed_count: 1,
    #               missing_count: 1,
    #               failed_count: 1,
    #               installed_other_count: 1,
    #               installed_rejected_count: 1,
    #               installed_pending_reboot: 1,
    #               operation_start_time: "NonEmptyString",
    #               operation_end_time: "NonEmptyString",
    #               reboot_option: "NonEmptyString",
    #               operation: "NonEmptyString",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] findings
    #   A list of findings to import. To successfully import a finding, it
    #   must follow the [AWS Security Finding Format][1]. Maximum of 100
    #   findings per request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsRequest AWS API Documentation
    #
    class BatchImportFindingsRequest < Struct.new(
      :findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_count
    #   The number of findings that failed to import.
    #   @return [Integer]
    #
    # @!attribute [rw] success_count
    #   The number of findings that were successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_findings
    #   The list of findings that failed to import.
    #   @return [Array<Types::ImportFindingsError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchImportFindingsResponse AWS API Documentation
    #
    class BatchImportFindingsResponse < Struct.new(
      :failed_count,
      :success_count,
      :failed_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchUpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         finding_identifiers: [ # required
    #           {
    #             id: "NonEmptyString", # required
    #             product_arn: "NonEmptyString", # required
    #           },
    #         ],
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #         },
    #         severity: {
    #           normalized: 1,
    #           product: 1.0,
    #           label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #         },
    #         verification_state: "UNKNOWN", # accepts UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE
    #         confidence: 1,
    #         criticality: 1,
    #         types: ["NonEmptyString"],
    #         user_defined_fields: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         workflow: {
    #           status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #         },
    #         related_findings: [
    #           {
    #             product_arn: "NonEmptyString", # required
    #             id: "NonEmptyString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] finding_identifiers
    #   The list of findings to update. `BatchUpdateFindings` can be used to
    #   update up to 100 findings at a time.
    #
    #   For each finding, the list provides the finding identifier and the
    #   ARN of the finding provider.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] note
    #   The updated note.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] severity
    #   Used to update the finding severity.
    #   @return [Types::SeverityUpdate]
    #
    # @!attribute [rw] verification_state
    #   Indicates the veracity of a finding.
    #
    #   The available values for `VerificationState` are as follows.
    #
    #   * `UNKNOWN` – The default disposition of a security finding
    #
    #   * `TRUE_POSITIVE` – The security finding is confirmed
    #
    #   * `FALSE_POSITIVE` – The security finding was determined to be a
    #     false alarm
    #
    #   * `BENIGN_POSITIVE` – A special case of `TRUE_POSITIVE` where the
    #     finding doesn't pose any threat, is expected, or both
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The updated value for the finding confidence. Confidence is defined
    #   as the likelihood that a finding accurately identifies the behavior
    #   or issue that it was intended to identify.
    #
    #   Confidence is scored on a 0-100 basis using a ratio scale, where 0
    #   means zero percent confidence and 100 means 100 percent confidence.
    #   @return [Integer]
    #
    # @!attribute [rw] criticality
    #   The updated value for the level of importance assigned to the
    #   resources associated with the findings.
    #
    #   A score of 0 means that the underlying resources have no
    #   criticality, and a score of 100 is reserved for the most critical
    #   resources.
    #   @return [Integer]
    #
    # @!attribute [rw] types
    #   One or more finding types in the format of
    #   namespace/category/classifier that classify a finding.
    #
    #   Valid namespace values are as follows.
    #
    #   * Software and Configuration Checks
    #
    #   * TTPs
    #
    #   * Effects
    #
    #   * Unusual Behaviors
    #
    #   * Sensitive Data Identifications
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_defined_fields
    #   A list of name/value string pairs associated with the finding. These
    #   are custom, user-defined fields added to a finding.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow
    #   Used to update the workflow status of a finding.
    #
    #   The workflow status indicates the progress of the investigation into
    #   the finding.
    #   @return [Types::WorkflowUpdate]
    #
    # @!attribute [rw] related_findings
    #   A list of findings that are related to the updated findings.
    #   @return [Array<Types::RelatedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsRequest AWS API Documentation
    #
    class BatchUpdateFindingsRequest < Struct.new(
      :finding_identifiers,
      :note,
      :severity,
      :verification_state,
      :confidence,
      :criticality,
      :types,
      :user_defined_fields,
      :workflow,
      :related_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] processed_findings
    #   The list of findings that were updated successfully.
    #   @return [Array<Types::AwsSecurityFindingIdentifier>]
    #
    # @!attribute [rw] unprocessed_findings
    #   The list of findings that were not updated.
    #   @return [Array<Types::BatchUpdateFindingsUnprocessedFinding>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsResponse AWS API Documentation
    #
    class BatchUpdateFindingsResponse < Struct.new(
      :processed_findings,
      :unprocessed_findings)
      SENSITIVE = []
      include Aws::Structure
    end

    # A finding from a `BatchUpdateFindings` request that Security Hub was
    # unable to update.
    #
    # @!attribute [rw] finding_identifier
    #   The identifier of the finding that was not updated.
    #   @return [Types::AwsSecurityFindingIdentifier]
    #
    # @!attribute [rw] error_code
    #   The code associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/BatchUpdateFindingsUnprocessedFinding AWS API Documentation
    #
    class BatchUpdateFindingsUnprocessedFinding < Struct.new(
      :finding_identifier,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IPv4 CIDR block association.
    #
    # @note When making an API call, you may pass CidrBlockAssociation
    #   data as a hash:
    #
    #       {
    #         association_id: "NonEmptyString",
    #         cidr_block: "NonEmptyString",
    #         cidr_block_state: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_state
    #   Information about the state of the IPv4 CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CidrBlockAssociation AWS API Documentation
    #
    class CidrBlockAssociation < Struct.new(
      :association_id,
      :cidr_block,
      :cidr_block_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains finding details that are specific to control-based findings.
    # Only returned for findings generated from controls.
    #
    # @note When making an API call, you may pass Compliance
    #   data as a hash:
    #
    #       {
    #         status: "PASSED", # accepts PASSED, WARNING, FAILED, NOT_AVAILABLE
    #         related_requirements: ["NonEmptyString"],
    #         status_reasons: [
    #           {
    #             reason_code: "NonEmptyString", # required
    #             description: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] status
    #   The result of a standards check.
    #
    #   The valid values for `Status` are as follows.
    #
    #   * * `PASSED` - Standards check passed for all evaluated resources.
    #
    #     * `WARNING` - Some information is missing or this check is not
    #       supported for your configuration.
    #
    #     * `FAILED` - Standards check failed for at least one evaluated
    #       resource.
    #
    #     * `NOT_AVAILABLE` - Check could not be performed due to a service
    #       outage, API error, or because the result of the AWS Config
    #       evaluation was `NOT_APPLICABLE`. If the AWS Config evaluation
    #       result was `NOT_APPLICABLE`, then after 3 days, Security Hub
    #       automatically archives the finding.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   For a control, the industry or regulatory framework requirements
    #   that are related to the control. The check for that control is
    #   aligned with these requirements.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_reasons
    #   For findings generated from controls, a list of reasons behind the
    #   value of `Status`. For the list of status reason codes and their
    #   meanings, see [Standards-related information in the ASFF][1] in the
    #   *AWS Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [Array<Types::StatusReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Compliance AWS API Documentation
    #
    class Compliance < Struct.new(
      :status,
      :related_requirements,
      :status_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container details related to a finding.
    #
    # @note When making an API call, you may pass ContainerDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         image_id: "NonEmptyString",
    #         image_name: "NonEmptyString",
    #         launched_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the container related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_id
    #   The identifier of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image related to a finding.
    #   @return [String]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the container started.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ContainerDetails AWS API Documentation
    #
    class ContainerDetails < Struct.new(
      :name,
      :image_id,
      :image_name,
      :launched_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         description: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetRequest AWS API Documentation
    #
    class CreateActionTargetRequest < Struct.new(
      :name,
      :description,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateActionTargetResponse AWS API Documentation
    #
    class CreateActionTargetResponse < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInsightRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom insight to create.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute used to group the findings for the insight. The
    #   grouping attribute identifies the type of item that the insight
    #   applies to. For example, if an insight is grouped by resource
    #   identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightRequest AWS API Documentation
    #
    class CreateInsightRequest < Struct.new(
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateInsightResponse AWS API Documentation
    #
    class CreateInsightResponse < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_details: [
    #           {
    #             account_id: "AccountId",
    #             email: "NonEmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] account_details
    #   The list of accounts to associate with the Security Hub master
    #   account. For each account, the list includes the account ID and the
    #   email address.
    #   @return [Array<Types::AccountDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :account_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not processed. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # CVSS scores from the advisory related to the vulnerability.
    #
    # @note When making an API call, you may pass Cvss
    #   data as a hash:
    #
    #       {
    #         version: "NonEmptyString",
    #         base_score: 1.0,
    #         base_vector: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] version
    #   The version of CVSS for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] base_score
    #   The base CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] base_vector
    #   The base scoring vector for the CVSS score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Cvss AWS API Documentation
    #
    class Cvss < Struct.new(
      :version,
      :base_score,
      :base_vector)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date filter for querying findings.
    #
    # @note When making an API call, you may pass DateFilter
    #   data as a hash:
    #
    #       {
    #         start: "NonEmptyString",
    #         end: "NonEmptyString",
    #         date_range: {
    #           value: 1,
    #           unit: "DAYS", # accepts DAYS
    #         },
    #       }
    #
    # @!attribute [rw] start
    #   A start date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   An end date for the date filter.
    #   @return [String]
    #
    # @!attribute [rw] date_range
    #   A date range for the date filter.
    #   @return [Types::DateRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start,
      :end,
      :date_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # A date range for the date filter.
    #
    # @note When making an API call, you may pass DateRange
    #   data as a hash:
    #
    #       {
    #         value: 1,
    #         unit: "DAYS", # accepts DAYS
    #       }
    #
    # @!attribute [rw] value
    #   A date range value for the date filter.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   A date range unit for the date filter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DateRange AWS API Documentation
    #
    class DateRange < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeclineInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the accounts from which to decline the
    #   invitations to Security Hub.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsRequest AWS API Documentation
    #
    class DeclineInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not processed. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeclineInvitationsResponse AWS API Documentation
    #
    class DeclineInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetRequest AWS API Documentation
    #
    class DeleteActionTargetRequest < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteActionTargetResponse AWS API Documentation
    #
    class DeleteActionTargetResponse < Struct.new(
      :action_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightRequest AWS API Documentation
    #
    class DeleteInsightRequest < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_arn
    #   The ARN of the insight that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInsightResponse AWS API Documentation
    #
    class DeleteInsightResponse < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of the account IDs that sent the invitations to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsRequest AWS API Documentation
    #
    class DeleteInvitationsRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts for which the invitations were not deleted.
    #   For each account, the list includes the account ID and the email
    #   address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteInvitationsResponse AWS API Documentation
    #
    class DeleteInvitationsResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the member accounts to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that were not deleted. For each account,
    #   the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeActionTargetsRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] action_target_arns
    #   A list of custom action target ARNs for the custom action targets to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeActionTargets` operation, set the value of this parameter
    #   to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsRequest AWS API Documentation
    #
    class DescribeActionTargetsRequest < Struct.new(
      :action_target_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_targets
    #   A list of `ActionTarget` objects. Each object includes the
    #   `ActionTargetArn`, `Description`, and `Name` of a custom action
    #   target available in Security Hub.
    #   @return [Array<Types::ActionTarget>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeActionTargetsResponse AWS API Documentation
    #
    class DescribeActionTargetsResponse < Struct.new(
      :action_targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHubRequest
    #   data as a hash:
    #
    #       {
    #         hub_arn: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubRequest AWS API Documentation
    #
    class DescribeHubRequest < Struct.new(
      :hub_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] hub_arn
    #   The ARN of the Hub resource that was retrieved.
    #   @return [String]
    #
    # @!attribute [rw] subscribed_at
    #   The date and time when Security Hub was enabled in the account.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   If set to `true`, then new controls for enabled standards are
    #   enabled automatically. If set to `false`, then new controls are not
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeHubResponse AWS API Documentation
    #
    class DescribeHubResponse < Struct.new(
      :hub_arn,
      :subscribed_at,
      :auto_enable_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProductsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeProducts` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsRequest AWS API Documentation
    #
    class DescribeProductsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] products
    #   A list of products, including details for each product.
    #   @return [Array<Types::Product>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeProductsResponse AWS API Documentation
    #
    class DescribeProductsResponse < Struct.new(
      :products,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStandardsControlsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arn: "NonEmptyString", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandardsControls` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of security standard controls to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsRequest AWS API Documentation
    #
    class DescribeStandardsControlsRequest < Struct.new(
      :standards_subscription_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] controls
    #   A list of security standards controls.
    #   @return [Array<Types::StandardsControl>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsControlsResponse AWS API Documentation
    #
    class DescribeStandardsControlsResponse < Struct.new(
      :controls,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStandardsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `DescribeStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of standards to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsRequest AWS API Documentation
    #
    class DescribeStandardsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards
    #   A list of available standards.
    #   @return [Array<Types::Standard>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DescribeStandardsResponse AWS API Documentation
    #
    class DescribeStandardsResponse < Struct.new(
      :standards,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_subscription_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_subscription_arn
    #   The ARN of the integrated product to disable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductRequest AWS API Documentation
    #
    class DisableImportFindingsForProductRequest < Struct.new(
      :product_subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableImportFindingsForProductResponse AWS API Documentation
    #
    class DisableImportFindingsForProductResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubRequest AWS API Documentation
    #
    class DisableSecurityHubRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisableSecurityHubResponse AWS API Documentation
    #
    class DisableSecurityHubResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountRequest AWS API Documentation
    #
    class DisassociateFromMasterAccountRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateFromMasterAccountResponse AWS API Documentation
    #
    class DisassociateFromMasterAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The account IDs of the member accounts to disassociate from the
    #   master account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersRequest AWS API Documentation
    #
    class DisassociateMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/DisassociateMembersResponse AWS API Documentation
    #
    class DisassociateMembersResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass EnableImportFindingsForProductRequest
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product to enable the integration for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductRequest AWS API Documentation
    #
    class EnableImportFindingsForProductRequest < Struct.new(
      :product_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_subscription_arn
    #   The ARN of your subscription to the product to enable integrations
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableImportFindingsForProductResponse AWS API Documentation
    #
    class EnableImportFindingsForProductResponse < Struct.new(
      :product_subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableSecurityHubRequest
    #   data as a hash:
    #
    #       {
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         enable_default_standards: false,
    #       }
    #
    # @!attribute [rw] tags
    #   The tags to add to the hub resource when you enable Security Hub.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_default_standards
    #   Whether to enable the security standards that Security Hub has
    #   designated as automatically enabled. If you do not provide a value
    #   for `EnableDefaultStandards`, it is set to `true`. To not enable the
    #   automatically enabled standards, set `EnableDefaultStandards` to
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubRequest AWS API Documentation
    #
    class EnableSecurityHubRequest < Struct.new(
      :tags,
      :enable_default_standards)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/EnableSecurityHubResponse AWS API Documentation
    #
    class EnableSecurityHubResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetEnabledStandardsRequest
    #   data as a hash:
    #
    #       {
    #         standards_subscription_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] standards_subscription_arns
    #   The list of the standards subscription ARNs for the standards to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetEnabledStandards` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsRequest AWS API Documentation
    #
    class GetEnabledStandardsRequest < Struct.new(
      :standards_subscription_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] standards_subscriptions
    #   The list of `StandardsSubscriptions` objects that include
    #   information about the enabled standards.
    #   @return [Array<Types::StandardsSubscription>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetEnabledStandardsResponse AWS API Documentation
    #
    class GetEnabledStandardsResponse < Struct.new(
      :standards_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         sort_criteria: [
    #           {
    #             field: "NonEmptyString",
    #             sort_order: "asc", # accepts asc, desc
    #           },
    #         ],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   The finding attributes used to define a condition to filter the
    #   returned findings.
    #
    #   You can filter by up to 10 finding attributes. For each attribute,
    #   you can provide up to 20 filter values.
    #
    #   Note that in the available filter fields, `WorkflowState` is
    #   deprecated. To search for a finding based on its workflow status,
    #   use `WorkflowStatus`.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] sort_criteria
    #   The finding attributes used to sort the list of returned findings.
    #   @return [Array<Types::SortCriterion>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetFindings` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of findings to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsRequest AWS API Documentation
    #
    class GetFindingsRequest < Struct.new(
      :filters,
      :sort_criteria,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] findings
    #   The findings that matched the filters specified in the request.
    #   @return [Array<Types::AwsSecurityFinding>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetFindingsResponse AWS API Documentation
    #
    class GetFindingsResponse < Struct.new(
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightResultsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight for which to return results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsRequest AWS API Documentation
    #
    class GetInsightResultsRequest < Struct.new(
      :insight_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insight_results
    #   The insight results returned by the operation.
    #   @return [Types::InsightResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightResultsResponse AWS API Documentation
    #
    class GetInsightResultsResponse < Struct.new(
      :insight_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInsightsRequest
    #   data as a hash:
    #
    #       {
    #         insight_arns: ["NonEmptyString"],
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] insight_arns
    #   The ARNs of the insights to describe. If you do not provide any
    #   insight ARNs, then `GetInsights` returns all of your custom
    #   insights. It does not return any managed insights.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `GetInsights` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsRequest AWS API Documentation
    #
    class GetInsightsRequest < Struct.new(
      :insight_arns,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] insights
    #   The insights returned by the operation.
    #   @return [Array<Types::Insight>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInsightsResponse AWS API Documentation
    #
    class GetInsightsResponse < Struct.new(
      :insights,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountRequest AWS API Documentation
    #
    class GetInvitationsCountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] invitations_count
    #   The number of all membership invitations sent to this Security Hub
    #   member account, not including the currently accepted invitation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetInvitationsCountResponse AWS API Documentation
    #
    class GetInvitationsCountResponse < Struct.new(
      :invitations_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountRequest AWS API Documentation
    #
    class GetMasterAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] master
    #   A list of details about the Security Hub master account for the
    #   current member account.
    #   @return [Types::Invitation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMasterAccountResponse AWS API Documentation
    #
    class GetMasterAccountResponse < Struct.new(
      :master)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs for the Security Hub member accounts to
    #   return the details for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The list of details about the Security Hub member accounts.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that could not be processed. For each
    #   account, the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of the findings that cannot be imported. For each finding,
    # the list provides the error.
    #
    # @!attribute [rw] id
    #   The identifier of the finding that could not be updated.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the error returned by the `BatchImportFindings`
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ImportFindingsError AWS API Documentation
    #
    class ImportFindingsError < Struct.new(
      :id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Security Hub insight.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a Security Hub insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   One or more attributes used to filter the findings included in the
    #   insight. The insight only includes findings that match the criteria
    #   defined in the filters.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The grouping attribute for the insight's findings. Indicates how to
    #   group the matching findings, and identifies the type of item that
    #   the insight applies to. For example, if an insight is grouped by
    #   resource identifier, then the insight produces a list of resource
    #   identifiers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Insight AWS API Documentation
    #
    class Insight < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # The insight result values returned by the `GetInsightResults`
    # operation.
    #
    # @!attribute [rw] group_by_attribute_value
    #   The value of the attribute that the findings are grouped by for the
    #   insight whose results are returned by the `GetInsightResults`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of findings returned for each `GroupByAttributeValue`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResultValue AWS API Documentation
    #
    class InsightResultValue < Struct.new(
      :group_by_attribute_value,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The insight results returned by the `GetInsightResults` operation.
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight whose results are returned by the
    #   `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] group_by_attribute
    #   The attribute that the findings are grouped by for the insight whose
    #   results are returned by the `GetInsightResults` operation.
    #   @return [String]
    #
    # @!attribute [rw] result_values
    #   The list of insight result values returned by the
    #   `GetInsightResults` operation.
    #   @return [Array<Types::InsightResultValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InsightResults AWS API Documentation
    #
    class InsightResults < Struct.new(
      :insight_arn,
      :group_by_attribute,
      :result_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InternalException AWS API Documentation
    #
    class InternalException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS Security Hub isn't enabled for the account used to make this
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidAccessException AWS API Documentation
    #
    class InvalidAccessException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because you supplied an invalid or
    # out-of-range value for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an invitation.
    #
    # @!attribute [rw] account_id
    #   The account ID of the Security Hub master account that the
    #   invitation was sent from.
    #   @return [String]
    #
    # @!attribute [rw] invitation_id
    #   The ID of the invitation sent to the member account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   The timestamp of when the invitation was sent.
    #   @return [Time]
    #
    # @!attribute [rw] member_status
    #   The current status of the association between the member and master
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Invitation AWS API Documentation
    #
    class Invitation < Struct.new(
      :account_id,
      :invitation_id,
      :invited_at,
      :member_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass InviteMembersRequest
    #   data as a hash:
    #
    #       {
    #         account_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] account_ids
    #   The list of account IDs of the AWS accounts to invite to Security
    #   Hub as members.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersRequest AWS API Documentation
    #
    class InviteMembersRequest < Struct.new(
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_accounts
    #   The list of AWS accounts that could not be processed. For each
    #   account, the list includes the account ID and the email address.
    #   @return [Array<Types::Result>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/InviteMembersResponse AWS API Documentation
    #
    class InviteMembersResponse < Struct.new(
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP filter for querying findings.
    #
    # @note When making an API call, you may pass IpFilter
    #   data as a hash:
    #
    #       {
    #         cidr: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] cidr
    #   A finding's CIDR value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/IpFilter AWS API Documentation
    #
    class IpFilter < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IPV6 CIDR block association.
    #
    # @note When making an API call, you may pass Ipv6CidrBlockAssociation
    #   data as a hash:
    #
    #       {
    #         association_id: "NonEmptyString",
    #         ipv_6_cidr_block: "NonEmptyString",
    #         cidr_block_state: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] association_id
    #   The association ID for the IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] ipv_6_cidr_block
    #   The IPv6 CIDR block.
    #   @return [String]
    #
    # @!attribute [rw] cidr_block_state
    #   Information about the state of the CIDR block.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Ipv6CidrBlockAssociation AWS API Documentation
    #
    class Ipv6CidrBlockAssociation < Struct.new(
      :association_id,
      :ipv_6_cidr_block,
      :cidr_block_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A keyword filter for querying findings.
    #
    # @note When making an API call, you may pass KeywordFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] value
    #   A value for the keyword.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/KeywordFilter AWS API Documentation
    #
    class KeywordFilter < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because it attempted to create resources
    # beyond the current AWS account limits. The error code describes the
    # limit exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnabledProductsForImportRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListEnabledProductsForImport` operation, set the value of this
    #   parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportRequest AWS API Documentation
    #
    class ListEnabledProductsForImportRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] product_subscriptions
    #   The list of ARNs for the resources that represent your subscriptions
    #   to products.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListEnabledProductsForImportResponse AWS API Documentation
    #
    class ListEnabledProductsForImportResponse < Struct.new(
      :product_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListInvitations` operation, set the value of this parameter to
    #   `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The details of the invitations returned by the operation.
    #   @return [Array<Types::Invitation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMembersRequest
    #   data as a hash:
    #
    #       {
    #         only_associated: false,
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] only_associated
    #   Specifies which member accounts to include in the response based on
    #   their relationship status with the master account. The default value
    #   is `TRUE`.
    #
    #   If `OnlyAssociated` is set to `TRUE`, the response includes member
    #   accounts whose relationship status with the master is set to
    #   `ENABLED` or `DISABLED`.
    #
    #   If `OnlyAssociated` is set to `FALSE`, the response includes all
    #   existing member accounts.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token that is required for pagination. On your first call to the
    #   `ListMembers` operation, set the value of this parameter to `NULL`.
    #
    #   For subsequent calls to the operation, to continue listing data, set
    #   the value of this parameter to the value returned from the previous
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :only_associated,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   Member details returned by the operation.
    #   @return [Array<Types::Member>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the state of the load balancer.
    #
    # @note When making an API call, you may pass LoadBalancerState
    #   data as a hash:
    #
    #       {
    #         code: "NonEmptyString",
    #         reason: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] code
    #   The state code. The initial state of the load balancer is
    #   provisioning.
    #
    #   After the load balancer is fully set up and ready to route traffic,
    #   its state is active.
    #
    #   If the load balancer could not be set up, its state is failed.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A description of the state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/LoadBalancerState AWS API Documentation
    #
    class LoadBalancerState < Struct.new(
      :code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of malware related to a finding.
    #
    # @note When making an API call, you may pass Malware
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         type: "ADWARE", # accepts ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM
    #         path: "NonEmptyString",
    #         state: "OBSERVED", # accepts OBSERVED, REMOVAL_FAILED, REMOVED
    #       }
    #
    # @!attribute [rw] name
    #   The name of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file system path of the malware that was observed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the malware that was observed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Malware AWS API Documentation
    #
    class Malware < Struct.new(
      :name,
      :type,
      :path,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # A map filter for querying findings. Each map filter provides the field
    # to check, the value to look for, and the comparison operator.
    #
    # @note When making an API call, you may pass MapFilter
    #   data as a hash:
    #
    #       {
    #         key: "NonEmptyString",
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #       }
    #
    # @!attribute [rw] key
    #   The key of the map filter. For example, for `ResourceTags`, `Key`
    #   identifies the name of the tag. For `UserDefinedFields`, `Key` is
    #   the name of the field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the key in the map filter. Filter values are case
    #   sensitive. For example, one of the values for a tag called
    #   `Department` might be `Security`. If you provide `security` as the
    #   filter value, then there is no match.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to the key value when querying for findings
    #   with a map filter.
    #
    #   To search for values that exactly match the filter value, use
    #   `EQUALS`. For example, for the `ResourceTags` field, the filter
    #   `Department EQUALS Security` matches findings that have the value
    #   `Security` for the tag `Department`.
    #
    #   To search for values other than the filter value, use `NOT_EQUALS`.
    #   For example, for the `ResourceTags` field, the filter `Department
    #   NOT_EQUALS Finance` matches findings that do not have the value
    #   `Finance` for the tag `Department`.
    #
    #   `EQUALS` filters on the same field are joined by `OR`. A finding
    #   matches if it matches any one of those filters.
    #
    #   `NOT_EQUALS` filters on the same field are joined by `AND`. A
    #   finding matches only if it matches all of those filters.
    #
    #   You cannot have both an `EQUALS` filter and a `NOT_EQUALS` filter on
    #   the same field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/MapFilter AWS API Documentation
    #
    class MapFilter < Struct.new(
      :key,
      :value,
      :comparison)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about a member account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID of the member account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the member account.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The AWS account ID of the Security Hub master account associated
    #   with this member account.
    #   @return [String]
    #
    # @!attribute [rw] member_status
    #   The status of the relationship between the member account and its
    #   master account.
    #
    #   The status can have one of the following values:
    #
    #   * `CREATED` - Indicates that the master account added the member
    #     account, but has not yet invited the member account.
    #
    #   * `INVITED` - Indicates that the master account invited the member
    #     account. The member account has not yet responded to the
    #     invitation.
    #
    #   * `ASSOCIATED` - Indicates that the member account accepted the
    #     invitation.
    #
    #   * `REMOVED` - Indicates that the master account disassociated the
    #     member account.
    #
    #   * `RESIGNED` - Indicates that the member account disassociated
    #     themselves from the master account.
    #
    #   * `DELETED` - Indicates that the master account deleted the member
    #     account.
    #   @return [String]
    #
    # @!attribute [rw] invited_at
    #   A timestamp for the date and time when the invitation was sent to
    #   the member account.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for the date and time when the member account was
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Member AWS API Documentation
    #
    class Member < Struct.new(
      :account_id,
      :email,
      :master_id,
      :member_status,
      :invited_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of network-related information about a finding.
    #
    # @note When making an API call, you may pass Network
    #   data as a hash:
    #
    #       {
    #         direction: "IN", # accepts IN, OUT
    #         protocol: "NonEmptyString",
    #         open_port_range: {
    #           begin: 1,
    #           end: 1,
    #         },
    #         source_ip_v4: "NonEmptyString",
    #         source_ip_v6: "NonEmptyString",
    #         source_port: 1,
    #         source_domain: "NonEmptyString",
    #         source_mac: "NonEmptyString",
    #         destination_ip_v4: "NonEmptyString",
    #         destination_ip_v6: "NonEmptyString",
    #         destination_port: 1,
    #         destination_domain: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] direction
    #   The direction of network traffic associated with a finding.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] open_port_range
    #   The range of open ports that is present on the network.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] source_ip_v4
    #   The source IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_ip_v6
    #   The source IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] source_port
    #   The source port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] source_domain
    #   The source domain of network-related information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] source_mac
    #   The source media access control (MAC) address of network-related
    #   information about a finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v4
    #   The destination IPv4 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_ip_v6
    #   The destination IPv6 address of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] destination_port
    #   The destination port of network-related information about a finding.
    #   @return [Integer]
    #
    # @!attribute [rw] destination_domain
    #   The destination domain of network-related information about a
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Network AWS API Documentation
    #
    class Network < Struct.new(
      :direction,
      :protocol,
      :open_port_range,
      :source_ip_v4,
      :source_ip_v6,
      :source_port,
      :source_domain,
      :source_mac,
      :destination_ip_v4,
      :destination_ip_v6,
      :destination_port,
      :destination_domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a network path component that occurs before or after the
    # current component.
    #
    # @note When making an API call, you may pass NetworkHeader
    #   data as a hash:
    #
    #       {
    #         protocol: "NonEmptyString",
    #         destination: {
    #           address: ["NonEmptyString"],
    #           port_ranges: [
    #             {
    #               begin: 1,
    #               end: 1,
    #             },
    #           ],
    #         },
    #         source: {
    #           address: ["NonEmptyString"],
    #           port_ranges: [
    #             {
    #               begin: 1,
    #               end: 1,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] protocol
    #   The protocol used for the component.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   Information about the destination of the component.
    #   @return [Types::NetworkPathComponentDetails]
    #
    # @!attribute [rw] source
    #   Information about the origin of the component.
    #   @return [Types::NetworkPathComponentDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkHeader AWS API Documentation
    #
    class NetworkHeader < Struct.new(
      :protocol,
      :destination,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a network path component.
    #
    # @note When making an API call, you may pass NetworkPathComponent
    #   data as a hash:
    #
    #       {
    #         component_id: "NonEmptyString",
    #         component_type: "NonEmptyString",
    #         egress: {
    #           protocol: "NonEmptyString",
    #           destination: {
    #             address: ["NonEmptyString"],
    #             port_ranges: [
    #               {
    #                 begin: 1,
    #                 end: 1,
    #               },
    #             ],
    #           },
    #           source: {
    #             address: ["NonEmptyString"],
    #             port_ranges: [
    #               {
    #                 begin: 1,
    #                 end: 1,
    #               },
    #             ],
    #           },
    #         },
    #         ingress: {
    #           protocol: "NonEmptyString",
    #           destination: {
    #             address: ["NonEmptyString"],
    #             port_ranges: [
    #               {
    #                 begin: 1,
    #                 end: 1,
    #               },
    #             ],
    #           },
    #           source: {
    #             address: ["NonEmptyString"],
    #             port_ranges: [
    #               {
    #                 begin: 1,
    #                 end: 1,
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] component_id
    #   The identifier of a component in the network path.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The type of component.
    #   @return [String]
    #
    # @!attribute [rw] egress
    #   Information about the component that comes after the current
    #   component in the network path.
    #   @return [Types::NetworkHeader]
    #
    # @!attribute [rw] ingress
    #   Information about the component that comes before the current node
    #   in the network path.
    #   @return [Types::NetworkHeader]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkPathComponent AWS API Documentation
    #
    class NetworkPathComponent < Struct.new(
      :component_id,
      :component_type,
      :egress,
      :ingress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the destination of the next component in the network
    # path.
    #
    # @note When making an API call, you may pass NetworkPathComponentDetails
    #   data as a hash:
    #
    #       {
    #         address: ["NonEmptyString"],
    #         port_ranges: [
    #           {
    #             begin: 1,
    #             end: 1,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] address
    #   The IP addresses of the destination.
    #   @return [Array<String>]
    #
    # @!attribute [rw] port_ranges
    #   A list of port ranges for the destination.
    #   @return [Array<Types::PortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NetworkPathComponentDetails AWS API Documentation
    #
    class NetworkPathComponentDetails < Struct.new(
      :address,
      :port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user-defined note added to a finding.
    #
    # @note When making an API call, you may pass Note
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #         updated_at: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text of a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that created a note.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the note was updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Note AWS API Documentation
    #
    class Note < Struct.new(
      :text,
      :updated_by,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updated note.
    #
    # @note When making an API call, you may pass NoteUpdate
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString", # required
    #         updated_by: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The updated note text.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The principal that updated the note.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NoteUpdate AWS API Documentation
    #
    class NoteUpdate < Struct.new(
      :text,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A number filter for querying findings.
    #
    # @note When making an API call, you may pass NumberFilter
    #   data as a hash:
    #
    #       {
    #         gte: 1.0,
    #         lte: 1.0,
    #         eq: 1.0,
    #       }
    #
    # @!attribute [rw] gte
    #   The greater-than-equal condition to be applied to a single field
    #   when querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] lte
    #   The less-than-equal condition to be applied to a single field when
    #   querying for findings.
    #   @return [Float]
    #
    # @!attribute [rw] eq
    #   The equal-to condition to be applied to a single field when querying
    #   for findings.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/NumberFilter AWS API Documentation
    #
    class NumberFilter < Struct.new(
      :gte,
      :lte,
      :eq)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides an overview of the patch compliance status for an instance
    # against a selected compliance standard.
    #
    # @note When making an API call, you may pass PatchSummary
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #         installed_count: 1,
    #         missing_count: 1,
    #         failed_count: 1,
    #         installed_other_count: 1,
    #         installed_rejected_count: 1,
    #         installed_pending_reboot: 1,
    #         operation_start_time: "NonEmptyString",
    #         operation_end_time: "NonEmptyString",
    #         reboot_option: "NonEmptyString",
    #         operation: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the compliance standard that was used to determine
    #   the patch compliance status.
    #   @return [String]
    #
    # @!attribute [rw] installed_count
    #   The number of patches from the compliance standard that were
    #   installed successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] missing_count
    #   The number of patches that are part of the compliance standard but
    #   are not installed. The count includes patches that failed to
    #   install.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_count
    #   The number of patches from the compliance standard that failed to
    #   install.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_other_count
    #   The number of installed patches that are not part of the compliance
    #   standard.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_rejected_count
    #   The number of patches that are installed but are also on a list of
    #   patches that the customer rejected.
    #   @return [Integer]
    #
    # @!attribute [rw] installed_pending_reboot
    #   The number of patches that were applied, but that require the
    #   instance to be rebooted in order to be marked as installed.
    #   @return [Integer]
    #
    # @!attribute [rw] operation_start_time
    #   Indicates when the operation started.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] operation_end_time
    #   Indicates when the operation completed.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] reboot_option
    #   The reboot option specified for the instance.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The type of patch operation performed. For Patch Manager, the values
    #   are `SCAN` and `INSTALL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PatchSummary AWS API Documentation
    #
    class PatchSummary < Struct.new(
      :id,
      :installed_count,
      :missing_count,
      :failed_count,
      :installed_other_count,
      :installed_rejected_count,
      :installed_pending_reboot,
      :operation_start_time,
      :operation_end_time,
      :reboot_option,
      :operation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A range of ports.
    #
    # @note When making an API call, you may pass PortRange
    #   data as a hash:
    #
    #       {
    #         begin: 1,
    #         end: 1,
    #       }
    #
    # @!attribute [rw] begin
    #   The first port in the port range.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The last port in the port range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :begin,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of process-related information about a finding.
    #
    # @note When making an API call, you may pass ProcessDetails
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         path: "NonEmptyString",
    #         pid: 1,
    #         parent_pid: 1,
    #         launched_at: "NonEmptyString",
    #         terminated_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the process.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the process executable.
    #   @return [String]
    #
    # @!attribute [rw] pid
    #   The process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_pid
    #   The parent process ID.
    #   @return [Integer]
    #
    # @!attribute [rw] launched_at
    #   Indicates when the process was launched.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] terminated_at
    #   Indicates when the process was terminated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ProcessDetails AWS API Documentation
    #
    class ProcessDetails < Struct.new(
      :name,
      :path,
      :pid,
      :parent_pid,
      :launched_at,
      :terminated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a product.
    #
    # @!attribute [rw] product_arn
    #   The ARN assigned to the product.
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The name of the product.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   The name of the company that provides the product.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the product.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The categories assigned to the product.
    #   @return [Array<String>]
    #
    # @!attribute [rw] integration_types
    #   The types of integration that the product supports. Available values
    #   are the following.
    #
    #   * `SEND_FINDINGS_TO_SECURITY_HUB` - Indicates that the integration
    #     sends findings to Security Hub.
    #
    #   * `RECEIVE_FINDINGS_FROM_SECURITY_HUB` - Indicates that the
    #     integration receives findings from Security Hub.
    #   @return [Array<String>]
    #
    # @!attribute [rw] marketplace_url
    #   The URL for the page that contains more information about the
    #   product.
    #   @return [String]
    #
    # @!attribute [rw] activation_url
    #   The URL used to activate the product.
    #   @return [String]
    #
    # @!attribute [rw] product_subscription_resource_policy
    #   The resource policy associated with the product.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Product AWS API Documentation
    #
    class Product < Struct.new(
      :product_arn,
      :product_name,
      :company_name,
      :description,
      :categories,
      :integration_types,
      :marketplace_url,
      :activation_url,
      :product_subscription_resource_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A recommendation on how to remediate the issue identified in a
    # finding.
    #
    # @note When making an API call, you may pass Recommendation
    #   data as a hash:
    #
    #       {
    #         text: "NonEmptyString",
    #         url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] text
    #   Describes the recommended steps to take to remediate an issue
    #   identified in a finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A URL to a page or site that contains information about how to
    #   remediate a finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :text,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a related finding.
    #
    # @note When making an API call, you may pass RelatedFinding
    #   data as a hash:
    #
    #       {
    #         product_arn: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] product_arn
    #   The ARN of the product that generated a related finding.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The product-generated identifier for a related finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/RelatedFinding AWS API Documentation
    #
    class RelatedFinding < Struct.new(
      :product_arn,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the remediation steps for a finding.
    #
    # @note When making an API call, you may pass Remediation
    #   data as a hash:
    #
    #       {
    #         recommendation: {
    #           text: "NonEmptyString",
    #           url: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] recommendation
    #   A recommendation on the steps to take to remediate the issue
    #   identified by a finding.
    #   @return [Types::Recommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource related to a finding.
    #
    # @note When making an API call, you may pass Resource
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString", # required
    #         id: "NonEmptyString", # required
    #         partition: "aws", # accepts aws, aws-cn, aws-us-gov
    #         region: "NonEmptyString",
    #         resource_role: "NonEmptyString",
    #         tags: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         details: {
    #           aws_auto_scaling_auto_scaling_group: {
    #             launch_configuration_name: "NonEmptyString",
    #             load_balancer_names: ["NonEmptyString"],
    #             health_check_type: "NonEmptyString",
    #             health_check_grace_period: 1,
    #             created_time: "NonEmptyString",
    #           },
    #           aws_code_build_project: {
    #             encryption_key: "NonEmptyString",
    #             environment: {
    #               certificate: "NonEmptyString",
    #               image_pull_credentials_type: "NonEmptyString",
    #               registry_credential: {
    #                 credential: "NonEmptyString",
    #                 credential_provider: "NonEmptyString",
    #               },
    #               type: "NonEmptyString",
    #             },
    #             name: "NonEmptyString",
    #             source: {
    #               type: "NonEmptyString",
    #               location: "NonEmptyString",
    #               git_clone_depth: 1,
    #               insecure_ssl: false,
    #             },
    #             service_role: "NonEmptyString",
    #             vpc_config: {
    #               vpc_id: "NonEmptyString",
    #               subnets: ["NonEmptyString"],
    #               security_group_ids: ["NonEmptyString"],
    #             },
    #           },
    #           aws_cloud_front_distribution: {
    #             cache_behaviors: {
    #               items: [
    #                 {
    #                   viewer_protocol_policy: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #             default_cache_behavior: {
    #               viewer_protocol_policy: "NonEmptyString",
    #             },
    #             default_root_object: "NonEmptyString",
    #             domain_name: "NonEmptyString",
    #             etag: "NonEmptyString",
    #             last_modified_time: "NonEmptyString",
    #             logging: {
    #               bucket: "NonEmptyString",
    #               enabled: false,
    #               include_cookies: false,
    #               prefix: "NonEmptyString",
    #             },
    #             origins: {
    #               items: [
    #                 {
    #                   domain_name: "NonEmptyString",
    #                   id: "NonEmptyString",
    #                   origin_path: "NonEmptyString",
    #                   s3_origin_config: {
    #                     origin_access_identity: "NonEmptyString",
    #                   },
    #                 },
    #               ],
    #             },
    #             origin_groups: {
    #               items: [
    #                 {
    #                   failover_criteria: {
    #                     status_codes: {
    #                       items: [1],
    #                       quantity: 1,
    #                     },
    #                   },
    #                 },
    #               ],
    #             },
    #             status: "NonEmptyString",
    #             web_acl_id: "NonEmptyString",
    #           },
    #           aws_ec2_instance: {
    #             type: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             ip_v4_addresses: ["NonEmptyString"],
    #             ip_v6_addresses: ["NonEmptyString"],
    #             key_name: "NonEmptyString",
    #             iam_instance_profile_arn: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             subnet_id: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           aws_ec2_network_interface: {
    #             attachment: {
    #               attach_time: "NonEmptyString",
    #               attachment_id: "NonEmptyString",
    #               delete_on_termination: false,
    #               device_index: 1,
    #               instance_id: "NonEmptyString",
    #               instance_owner_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #             network_interface_id: "NonEmptyString",
    #             security_groups: [
    #               {
    #                 group_name: "NonEmptyString",
    #                 group_id: "NonEmptyString",
    #               },
    #             ],
    #             source_dest_check: false,
    #           },
    #           aws_ec2_security_group: {
    #             group_name: "NonEmptyString",
    #             group_id: "NonEmptyString",
    #             owner_id: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             ip_permissions: [
    #               {
    #                 ip_protocol: "NonEmptyString",
    #                 from_port: 1,
    #                 to_port: 1,
    #                 user_id_group_pairs: [
    #                   {
    #                     group_id: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     peering_status: "NonEmptyString",
    #                     user_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_ranges: [
    #                   {
    #                     cidr_ipv_6: "NonEmptyString",
    #                   },
    #                 ],
    #                 prefix_list_ids: [
    #                   {
    #                     prefix_list_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #             ],
    #             ip_permissions_egress: [
    #               {
    #                 ip_protocol: "NonEmptyString",
    #                 from_port: 1,
    #                 to_port: 1,
    #                 user_id_group_pairs: [
    #                   {
    #                     group_id: "NonEmptyString",
    #                     group_name: "NonEmptyString",
    #                     peering_status: "NonEmptyString",
    #                     user_id: "NonEmptyString",
    #                     vpc_id: "NonEmptyString",
    #                     vpc_peering_connection_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 ip_ranges: [
    #                   {
    #                     cidr_ip: "NonEmptyString",
    #                   },
    #                 ],
    #                 ipv_6_ranges: [
    #                   {
    #                     cidr_ipv_6: "NonEmptyString",
    #                   },
    #                 ],
    #                 prefix_list_ids: [
    #                   {
    #                     prefix_list_id: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #             ],
    #           },
    #           aws_ec2_volume: {
    #             create_time: "NonEmptyString",
    #             encrypted: false,
    #             size: 1,
    #             snapshot_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #             kms_key_id: "NonEmptyString",
    #             attachments: [
    #               {
    #                 attach_time: "NonEmptyString",
    #                 delete_on_termination: false,
    #                 instance_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           aws_ec2_vpc: {
    #             cidr_block_association_set: [
    #               {
    #                 association_id: "NonEmptyString",
    #                 cidr_block: "NonEmptyString",
    #                 cidr_block_state: "NonEmptyString",
    #               },
    #             ],
    #             ipv_6_cidr_block_association_set: [
    #               {
    #                 association_id: "NonEmptyString",
    #                 ipv_6_cidr_block: "NonEmptyString",
    #                 cidr_block_state: "NonEmptyString",
    #               },
    #             ],
    #             dhcp_options_id: "NonEmptyString",
    #             state: "NonEmptyString",
    #           },
    #           aws_ec2_eip: {
    #             instance_id: "NonEmptyString",
    #             public_ip: "NonEmptyString",
    #             allocation_id: "NonEmptyString",
    #             association_id: "NonEmptyString",
    #             domain: "NonEmptyString",
    #             public_ipv_4_pool: "NonEmptyString",
    #             network_border_group: "NonEmptyString",
    #             network_interface_id: "NonEmptyString",
    #             network_interface_owner_id: "NonEmptyString",
    #             private_ip_address: "NonEmptyString",
    #           },
    #           aws_elbv_2_load_balancer: {
    #             availability_zones: [
    #               {
    #                 zone_name: "NonEmptyString",
    #                 subnet_id: "NonEmptyString",
    #               },
    #             ],
    #             canonical_hosted_zone_id: "NonEmptyString",
    #             created_time: "NonEmptyString",
    #             dns_name: "NonEmptyString",
    #             ip_address_type: "NonEmptyString",
    #             scheme: "NonEmptyString",
    #             security_groups: ["NonEmptyString"],
    #             state: {
    #               code: "NonEmptyString",
    #               reason: "NonEmptyString",
    #             },
    #             type: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #           },
    #           aws_elasticsearch_domain: {
    #             access_policies: "NonEmptyString",
    #             domain_endpoint_options: {
    #               enforce_https: false,
    #               tls_security_policy: "NonEmptyString",
    #             },
    #             domain_id: "NonEmptyString",
    #             domain_name: "NonEmptyString",
    #             endpoint: "NonEmptyString",
    #             endpoints: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             elasticsearch_version: "NonEmptyString",
    #             encryption_at_rest_options: {
    #               enabled: false,
    #               kms_key_id: "NonEmptyString",
    #             },
    #             node_to_node_encryption_options: {
    #               enabled: false,
    #             },
    #             vpc_options: {
    #               availability_zones: ["NonEmptyString"],
    #               security_group_ids: ["NonEmptyString"],
    #               subnet_ids: ["NonEmptyString"],
    #               vpc_id: "NonEmptyString",
    #             },
    #           },
    #           aws_s3_bucket: {
    #             owner_id: "NonEmptyString",
    #             owner_name: "NonEmptyString",
    #             created_at: "NonEmptyString",
    #             server_side_encryption_configuration: {
    #               rules: [
    #                 {
    #                   apply_server_side_encryption_by_default: {
    #                     sse_algorithm: "NonEmptyString",
    #                     kms_master_key_id: "NonEmptyString",
    #                   },
    #                 },
    #               ],
    #             },
    #           },
    #           aws_s3_object: {
    #             last_modified: "NonEmptyString",
    #             etag: "NonEmptyString",
    #             version_id: "NonEmptyString",
    #             content_type: "NonEmptyString",
    #             server_side_encryption: "NonEmptyString",
    #             ssekms_key_id: "NonEmptyString",
    #           },
    #           aws_secrets_manager_secret: {
    #             rotation_rules: {
    #               automatically_after_days: 1,
    #             },
    #             rotation_occurred_within_frequency: false,
    #             kms_key_id: "NonEmptyString",
    #             rotation_enabled: false,
    #             rotation_lambda_arn: "NonEmptyString",
    #             deleted: false,
    #             name: "NonEmptyString",
    #             description: "NonEmptyString",
    #           },
    #           aws_iam_access_key: {
    #             user_name: "NonEmptyString",
    #             status: "Active", # accepts Active, Inactive
    #             created_at: "NonEmptyString",
    #             principal_id: "NonEmptyString",
    #             principal_type: "NonEmptyString",
    #             principal_name: "NonEmptyString",
    #             account_id: "NonEmptyString",
    #             access_key_id: "NonEmptyString",
    #             session_context: {
    #               attributes: {
    #                 mfa_authenticated: false,
    #                 creation_date: "NonEmptyString",
    #               },
    #               session_issuer: {
    #                 type: "NonEmptyString",
    #                 principal_id: "NonEmptyString",
    #                 arn: "NonEmptyString",
    #                 account_id: "NonEmptyString",
    #                 user_name: "NonEmptyString",
    #               },
    #             },
    #           },
    #           aws_iam_user: {
    #             attached_managed_policies: [
    #               {
    #                 policy_name: "NonEmptyString",
    #                 policy_arn: "NonEmptyString",
    #               },
    #             ],
    #             create_date: "NonEmptyString",
    #             group_list: ["NonEmptyString"],
    #             path: "NonEmptyString",
    #             permissions_boundary: {
    #               permissions_boundary_arn: "NonEmptyString",
    #               permissions_boundary_type: "NonEmptyString",
    #             },
    #             user_id: "NonEmptyString",
    #             user_name: "NonEmptyString",
    #             user_policy_list: [
    #               {
    #                 policy_name: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           aws_iam_policy: {
    #             attachment_count: 1,
    #             create_date: "NonEmptyString",
    #             default_version_id: "NonEmptyString",
    #             description: "NonEmptyString",
    #             is_attachable: false,
    #             path: "NonEmptyString",
    #             permissions_boundary_usage_count: 1,
    #             policy_id: "NonEmptyString",
    #             policy_name: "NonEmptyString",
    #             policy_version_list: [
    #               {
    #                 version_id: "NonEmptyString",
    #                 is_default_version: false,
    #                 create_date: "NonEmptyString",
    #               },
    #             ],
    #             update_date: "NonEmptyString",
    #           },
    #           aws_api_gateway_v2_stage: {
    #             created_date: "NonEmptyString",
    #             description: "NonEmptyString",
    #             default_route_settings: {
    #               detailed_metrics_enabled: false,
    #               logging_level: "NonEmptyString",
    #               data_trace_enabled: false,
    #               throttling_burst_limit: 1,
    #               throttling_rate_limit: 1.0,
    #             },
    #             deployment_id: "NonEmptyString",
    #             last_updated_date: "NonEmptyString",
    #             route_settings: {
    #               detailed_metrics_enabled: false,
    #               logging_level: "NonEmptyString",
    #               data_trace_enabled: false,
    #               throttling_burst_limit: 1,
    #               throttling_rate_limit: 1.0,
    #             },
    #             stage_name: "NonEmptyString",
    #             stage_variables: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             access_log_settings: {
    #               format: "NonEmptyString",
    #               destination_arn: "NonEmptyString",
    #             },
    #             auto_deploy: false,
    #             last_deployment_status_message: "NonEmptyString",
    #             api_gateway_managed: false,
    #           },
    #           aws_api_gateway_v2_api: {
    #             api_endpoint: "NonEmptyString",
    #             api_id: "NonEmptyString",
    #             api_key_selection_expression: "NonEmptyString",
    #             created_date: "NonEmptyString",
    #             description: "NonEmptyString",
    #             version: "NonEmptyString",
    #             name: "NonEmptyString",
    #             protocol_type: "NonEmptyString",
    #             route_selection_expression: "NonEmptyString",
    #             cors_configuration: {
    #               allow_origins: ["NonEmptyString"],
    #               allow_credentials: false,
    #               expose_headers: ["NonEmptyString"],
    #               max_age: 1,
    #               allow_methods: ["NonEmptyString"],
    #               allow_headers: ["NonEmptyString"],
    #             },
    #           },
    #           aws_dynamo_db_table: {
    #             attribute_definitions: [
    #               {
    #                 attribute_name: "NonEmptyString",
    #                 attribute_type: "NonEmptyString",
    #               },
    #             ],
    #             billing_mode_summary: {
    #               billing_mode: "NonEmptyString",
    #               last_update_to_pay_per_request_date_time: "NonEmptyString",
    #             },
    #             creation_date_time: "NonEmptyString",
    #             global_secondary_indexes: [
    #               {
    #                 backfilling: false,
    #                 index_arn: "NonEmptyString",
    #                 index_name: "NonEmptyString",
    #                 index_size_bytes: 1,
    #                 index_status: "NonEmptyString",
    #                 item_count: 1,
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 projection: {
    #                   non_key_attributes: ["NonEmptyString"],
    #                   projection_type: "NonEmptyString",
    #                 },
    #                 provisioned_throughput: {
    #                   last_decrease_date_time: "NonEmptyString",
    #                   last_increase_date_time: "NonEmptyString",
    #                   number_of_decreases_today: 1,
    #                   read_capacity_units: 1,
    #                   write_capacity_units: 1,
    #                 },
    #               },
    #             ],
    #             global_table_version: "NonEmptyString",
    #             item_count: 1,
    #             key_schema: [
    #               {
    #                 attribute_name: "NonEmptyString",
    #                 key_type: "NonEmptyString",
    #               },
    #             ],
    #             latest_stream_arn: "NonEmptyString",
    #             latest_stream_label: "NonEmptyString",
    #             local_secondary_indexes: [
    #               {
    #                 index_arn: "NonEmptyString",
    #                 index_name: "NonEmptyString",
    #                 key_schema: [
    #                   {
    #                     attribute_name: "NonEmptyString",
    #                     key_type: "NonEmptyString",
    #                   },
    #                 ],
    #                 projection: {
    #                   non_key_attributes: ["NonEmptyString"],
    #                   projection_type: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #             provisioned_throughput: {
    #               last_decrease_date_time: "NonEmptyString",
    #               last_increase_date_time: "NonEmptyString",
    #               number_of_decreases_today: 1,
    #               read_capacity_units: 1,
    #               write_capacity_units: 1,
    #             },
    #             replicas: [
    #               {
    #                 global_secondary_indexes: [
    #                   {
    #                     index_name: "NonEmptyString",
    #                     provisioned_throughput_override: {
    #                       read_capacity_units: 1,
    #                     },
    #                   },
    #                 ],
    #                 kms_master_key_id: "NonEmptyString",
    #                 provisioned_throughput_override: {
    #                   read_capacity_units: 1,
    #                 },
    #                 region_name: "NonEmptyString",
    #                 replica_status: "NonEmptyString",
    #                 replica_status_description: "NonEmptyString",
    #               },
    #             ],
    #             restore_summary: {
    #               source_backup_arn: "NonEmptyString",
    #               source_table_arn: "NonEmptyString",
    #               restore_date_time: "NonEmptyString",
    #               restore_in_progress: false,
    #             },
    #             sse_description: {
    #               inaccessible_encryption_date_time: "NonEmptyString",
    #               status: "NonEmptyString",
    #               sse_type: "NonEmptyString",
    #               kms_master_key_arn: "NonEmptyString",
    #             },
    #             stream_specification: {
    #               stream_enabled: false,
    #               stream_view_type: "NonEmptyString",
    #             },
    #             table_id: "NonEmptyString",
    #             table_name: "NonEmptyString",
    #             table_size_bytes: 1,
    #             table_status: "NonEmptyString",
    #           },
    #           aws_api_gateway_stage: {
    #             deployment_id: "NonEmptyString",
    #             client_certificate_id: "NonEmptyString",
    #             stage_name: "NonEmptyString",
    #             description: "NonEmptyString",
    #             cache_cluster_enabled: false,
    #             cache_cluster_size: "NonEmptyString",
    #             cache_cluster_status: "NonEmptyString",
    #             method_settings: [
    #               {
    #                 metrics_enabled: false,
    #                 logging_level: "NonEmptyString",
    #                 data_trace_enabled: false,
    #                 throttling_burst_limit: 1,
    #                 throttling_rate_limit: 1.0,
    #                 caching_enabled: false,
    #                 cache_ttl_in_seconds: 1,
    #                 cache_data_encrypted: false,
    #                 require_authorization_for_cache_control: false,
    #                 unauthorized_cache_control_header_strategy: "NonEmptyString",
    #                 http_method: "NonEmptyString",
    #                 resource_path: "NonEmptyString",
    #               },
    #             ],
    #             variables: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             documentation_version: "NonEmptyString",
    #             access_log_settings: {
    #               format: "NonEmptyString",
    #               destination_arn: "NonEmptyString",
    #             },
    #             canary_settings: {
    #               percent_traffic: 1.0,
    #               deployment_id: "NonEmptyString",
    #               stage_variable_overrides: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #               use_stage_cache: false,
    #             },
    #             tracing_enabled: false,
    #             created_date: "NonEmptyString",
    #             last_updated_date: "NonEmptyString",
    #             web_acl_arn: "NonEmptyString",
    #           },
    #           aws_api_gateway_rest_api: {
    #             id: "NonEmptyString",
    #             name: "NonEmptyString",
    #             description: "NonEmptyString",
    #             created_date: "NonEmptyString",
    #             version: "NonEmptyString",
    #             binary_media_types: ["NonEmptyString"],
    #             minimum_compression_size: 1,
    #             api_key_source: "NonEmptyString",
    #             endpoint_configuration: {
    #               types: ["NonEmptyString"],
    #             },
    #           },
    #           aws_cloud_trail_trail: {
    #             cloud_watch_logs_log_group_arn: "NonEmptyString",
    #             cloud_watch_logs_role_arn: "NonEmptyString",
    #             has_custom_event_selectors: false,
    #             home_region: "NonEmptyString",
    #             include_global_service_events: false,
    #             is_multi_region_trail: false,
    #             is_organization_trail: false,
    #             kms_key_id: "NonEmptyString",
    #             log_file_validation_enabled: false,
    #             name: "NonEmptyString",
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString",
    #             sns_topic_arn: "NonEmptyString",
    #             sns_topic_name: "NonEmptyString",
    #             trail_arn: "NonEmptyString",
    #           },
    #           aws_certificate_manager_certificate: {
    #             certificate_authority_arn: "NonEmptyString",
    #             created_at: "NonEmptyString",
    #             domain_name: "NonEmptyString",
    #             domain_validation_options: [
    #               {
    #                 domain_name: "NonEmptyString",
    #                 resource_record: {
    #                   name: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                 },
    #                 validation_domain: "NonEmptyString",
    #                 validation_emails: ["NonEmptyString"],
    #                 validation_method: "NonEmptyString",
    #                 validation_status: "NonEmptyString",
    #               },
    #             ],
    #             extended_key_usages: [
    #               {
    #                 name: "NonEmptyString",
    #                 o_id: "NonEmptyString",
    #               },
    #             ],
    #             failure_reason: "NonEmptyString",
    #             imported_at: "NonEmptyString",
    #             in_use_by: ["NonEmptyString"],
    #             issued_at: "NonEmptyString",
    #             issuer: "NonEmptyString",
    #             key_algorithm: "NonEmptyString",
    #             key_usages: [
    #               {
    #                 name: "NonEmptyString",
    #               },
    #             ],
    #             not_after: "NonEmptyString",
    #             not_before: "NonEmptyString",
    #             options: {
    #               certificate_transparency_logging_preference: "NonEmptyString",
    #             },
    #             renewal_eligibility: "NonEmptyString",
    #             renewal_summary: {
    #               domain_validation_options: [
    #                 {
    #                   domain_name: "NonEmptyString",
    #                   resource_record: {
    #                     name: "NonEmptyString",
    #                     type: "NonEmptyString",
    #                     value: "NonEmptyString",
    #                   },
    #                   validation_domain: "NonEmptyString",
    #                   validation_emails: ["NonEmptyString"],
    #                   validation_method: "NonEmptyString",
    #                   validation_status: "NonEmptyString",
    #                 },
    #               ],
    #               renewal_status: "NonEmptyString",
    #               renewal_status_reason: "NonEmptyString",
    #               updated_at: "NonEmptyString",
    #             },
    #             serial: "NonEmptyString",
    #             signature_algorithm: "NonEmptyString",
    #             status: "NonEmptyString",
    #             subject: "NonEmptyString",
    #             subject_alternative_names: ["NonEmptyString"],
    #             type: "NonEmptyString",
    #           },
    #           aws_redshift_cluster: {
    #             allow_version_upgrade: false,
    #             automated_snapshot_retention_period: 1,
    #             availability_zone: "NonEmptyString",
    #             cluster_availability_status: "NonEmptyString",
    #             cluster_create_time: "NonEmptyString",
    #             cluster_identifier: "NonEmptyString",
    #             cluster_nodes: [
    #               {
    #                 node_role: "NonEmptyString",
    #                 private_ip_address: "NonEmptyString",
    #                 public_ip_address: "NonEmptyString",
    #               },
    #             ],
    #             cluster_parameter_groups: [
    #               {
    #                 cluster_parameter_status_list: [
    #                   {
    #                     parameter_name: "NonEmptyString",
    #                     parameter_apply_status: "NonEmptyString",
    #                     parameter_apply_error_description: "NonEmptyString",
    #                   },
    #                 ],
    #                 parameter_apply_status: "NonEmptyString",
    #                 parameter_group_name: "NonEmptyString",
    #               },
    #             ],
    #             cluster_public_key: "NonEmptyString",
    #             cluster_revision_number: "NonEmptyString",
    #             cluster_security_groups: [
    #               {
    #                 cluster_security_group_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             cluster_snapshot_copy_status: {
    #               destination_region: "NonEmptyString",
    #               manual_snapshot_retention_period: 1,
    #               retention_period: 1,
    #               snapshot_copy_grant_name: "NonEmptyString",
    #             },
    #             cluster_status: "NonEmptyString",
    #             cluster_subnet_group_name: "NonEmptyString",
    #             cluster_version: "NonEmptyString",
    #             db_name: "NonEmptyString",
    #             deferred_maintenance_windows: [
    #               {
    #                 defer_maintenance_end_time: "NonEmptyString",
    #                 defer_maintenance_identifier: "NonEmptyString",
    #                 defer_maintenance_start_time: "NonEmptyString",
    #               },
    #             ],
    #             elastic_ip_status: {
    #               elastic_ip: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #             elastic_resize_number_of_node_options: "NonEmptyString",
    #             encrypted: false,
    #             endpoint: {
    #               address: "NonEmptyString",
    #               port: 1,
    #             },
    #             enhanced_vpc_routing: false,
    #             expected_next_snapshot_schedule_time: "NonEmptyString",
    #             expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #             hsm_status: {
    #               hsm_client_certificate_identifier: "NonEmptyString",
    #               hsm_configuration_identifier: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #             iam_roles: [
    #               {
    #                 apply_status: "NonEmptyString",
    #                 iam_role_arn: "NonEmptyString",
    #               },
    #             ],
    #             kms_key_id: "NonEmptyString",
    #             maintenance_track_name: "NonEmptyString",
    #             manual_snapshot_retention_period: 1,
    #             master_username: "NonEmptyString",
    #             next_maintenance_window_start_time: "NonEmptyString",
    #             node_type: "NonEmptyString",
    #             number_of_nodes: 1,
    #             pending_actions: ["NonEmptyString"],
    #             pending_modified_values: {
    #               automated_snapshot_retention_period: 1,
    #               cluster_identifier: "NonEmptyString",
    #               cluster_type: "NonEmptyString",
    #               cluster_version: "NonEmptyString",
    #               encryption_type: "NonEmptyString",
    #               enhanced_vpc_routing: false,
    #               maintenance_track_name: "NonEmptyString",
    #               master_user_password: "NonEmptyString",
    #               node_type: "NonEmptyString",
    #               number_of_nodes: 1,
    #               publicly_accessible: false,
    #             },
    #             preferred_maintenance_window: "NonEmptyString",
    #             publicly_accessible: false,
    #             resize_info: {
    #               allow_cancel_resize: false,
    #               resize_type: "NonEmptyString",
    #             },
    #             restore_status: {
    #               current_restore_rate_in_mega_bytes_per_second: 1.0,
    #               elapsed_time_in_seconds: 1,
    #               estimated_time_to_completion_in_seconds: 1,
    #               progress_in_mega_bytes: 1,
    #               snapshot_size_in_mega_bytes: 1,
    #               status: "NonEmptyString",
    #             },
    #             snapshot_schedule_identifier: "NonEmptyString",
    #             snapshot_schedule_state: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             vpc_security_groups: [
    #               {
    #                 status: "NonEmptyString",
    #                 vpc_security_group_id: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           aws_elb_load_balancer: {
    #             availability_zones: ["NonEmptyString"],
    #             backend_server_descriptions: [
    #               {
    #                 instance_port: 1,
    #                 policy_names: ["NonEmptyString"],
    #               },
    #             ],
    #             canonical_hosted_zone_name: "NonEmptyString",
    #             canonical_hosted_zone_name_id: "NonEmptyString",
    #             created_time: "NonEmptyString",
    #             dns_name: "NonEmptyString",
    #             health_check: {
    #               healthy_threshold: 1,
    #               interval: 1,
    #               target: "NonEmptyString",
    #               timeout: 1,
    #               unhealthy_threshold: 1,
    #             },
    #             instances: [
    #               {
    #                 instance_id: "NonEmptyString",
    #               },
    #             ],
    #             listener_descriptions: [
    #               {
    #                 listener: {
    #                   instance_port: 1,
    #                   instance_protocol: "NonEmptyString",
    #                   load_balancer_port: 1,
    #                   protocol: "NonEmptyString",
    #                   ssl_certificate_id: "NonEmptyString",
    #                 },
    #                 policy_names: ["NonEmptyString"],
    #               },
    #             ],
    #             load_balancer_attributes: {
    #               access_log: {
    #                 emit_interval: 1,
    #                 enabled: false,
    #                 s3_bucket_name: "NonEmptyString",
    #                 s3_bucket_prefix: "NonEmptyString",
    #               },
    #               connection_draining: {
    #                 enabled: false,
    #                 timeout: 1,
    #               },
    #               connection_settings: {
    #                 idle_timeout: 1,
    #               },
    #               cross_zone_load_balancing: {
    #                 enabled: false,
    #               },
    #             },
    #             load_balancer_name: "NonEmptyString",
    #             policies: {
    #               app_cookie_stickiness_policies: [
    #                 {
    #                   cookie_name: "NonEmptyString",
    #                   policy_name: "NonEmptyString",
    #                 },
    #               ],
    #               lb_cookie_stickiness_policies: [
    #                 {
    #                   cookie_expiration_period: 1,
    #                   policy_name: "NonEmptyString",
    #                 },
    #               ],
    #               other_policies: ["NonEmptyString"],
    #             },
    #             scheme: "NonEmptyString",
    #             security_groups: ["NonEmptyString"],
    #             source_security_group: {
    #               group_name: "NonEmptyString",
    #               owner_alias: "NonEmptyString",
    #             },
    #             subnets: ["NonEmptyString"],
    #             vpc_id: "NonEmptyString",
    #           },
    #           aws_iam_group: {
    #             attached_managed_policies: [
    #               {
    #                 policy_name: "NonEmptyString",
    #                 policy_arn: "NonEmptyString",
    #               },
    #             ],
    #             create_date: "NonEmptyString",
    #             group_id: "NonEmptyString",
    #             group_name: "NonEmptyString",
    #             group_policy_list: [
    #               {
    #                 policy_name: "NonEmptyString",
    #               },
    #             ],
    #             path: "NonEmptyString",
    #           },
    #           aws_iam_role: {
    #             assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #             attached_managed_policies: [
    #               {
    #                 policy_name: "NonEmptyString",
    #                 policy_arn: "NonEmptyString",
    #               },
    #             ],
    #             create_date: "NonEmptyString",
    #             instance_profile_list: [
    #               {
    #                 arn: "NonEmptyString",
    #                 create_date: "NonEmptyString",
    #                 instance_profile_id: "NonEmptyString",
    #                 instance_profile_name: "NonEmptyString",
    #                 path: "NonEmptyString",
    #                 roles: [
    #                   {
    #                     arn: "NonEmptyString",
    #                     assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                     create_date: "NonEmptyString",
    #                     path: "NonEmptyString",
    #                     role_id: "NonEmptyString",
    #                     role_name: "NonEmptyString",
    #                   },
    #                 ],
    #               },
    #             ],
    #             permissions_boundary: {
    #               permissions_boundary_arn: "NonEmptyString",
    #               permissions_boundary_type: "NonEmptyString",
    #             },
    #             role_id: "NonEmptyString",
    #             role_name: "NonEmptyString",
    #             role_policy_list: [
    #               {
    #                 policy_name: "NonEmptyString",
    #               },
    #             ],
    #             max_session_duration: 1,
    #             path: "NonEmptyString",
    #           },
    #           aws_kms_key: {
    #             aws_account_id: "NonEmptyString",
    #             creation_date: 1.0,
    #             key_id: "NonEmptyString",
    #             key_manager: "NonEmptyString",
    #             key_state: "NonEmptyString",
    #             origin: "NonEmptyString",
    #             description: "NonEmptyString",
    #           },
    #           aws_lambda_function: {
    #             code: {
    #               s3_bucket: "NonEmptyString",
    #               s3_key: "NonEmptyString",
    #               s3_object_version: "NonEmptyString",
    #               zip_file: "NonEmptyString",
    #             },
    #             code_sha_256: "NonEmptyString",
    #             dead_letter_config: {
    #               target_arn: "NonEmptyString",
    #             },
    #             environment: {
    #               variables: {
    #                 "NonEmptyString" => "NonEmptyString",
    #               },
    #               error: {
    #                 error_code: "NonEmptyString",
    #                 message: "NonEmptyString",
    #               },
    #             },
    #             function_name: "NonEmptyString",
    #             handler: "NonEmptyString",
    #             kms_key_arn: "NonEmptyString",
    #             last_modified: "NonEmptyString",
    #             layers: [
    #               {
    #                 arn: "NonEmptyString",
    #                 code_size: 1,
    #               },
    #             ],
    #             master_arn: "NonEmptyString",
    #             memory_size: 1,
    #             revision_id: "NonEmptyString",
    #             role: "NonEmptyString",
    #             runtime: "NonEmptyString",
    #             timeout: 1,
    #             tracing_config: {
    #               mode: "NonEmptyString",
    #             },
    #             vpc_config: {
    #               security_group_ids: ["NonEmptyString"],
    #               subnet_ids: ["NonEmptyString"],
    #               vpc_id: "NonEmptyString",
    #             },
    #             version: "NonEmptyString",
    #           },
    #           aws_lambda_layer_version: {
    #             version: 1,
    #             compatible_runtimes: ["NonEmptyString"],
    #             created_date: "NonEmptyString",
    #           },
    #           aws_rds_db_instance: {
    #             associated_roles: [
    #               {
    #                 role_arn: "NonEmptyString",
    #                 feature_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             ca_certificate_identifier: "NonEmptyString",
    #             db_cluster_identifier: "NonEmptyString",
    #             db_instance_identifier: "NonEmptyString",
    #             db_instance_class: "NonEmptyString",
    #             db_instance_port: 1,
    #             dbi_resource_id: "NonEmptyString",
    #             db_name: "NonEmptyString",
    #             deletion_protection: false,
    #             endpoint: {
    #               address: "NonEmptyString",
    #               port: 1,
    #               hosted_zone_id: "NonEmptyString",
    #             },
    #             engine: "NonEmptyString",
    #             engine_version: "NonEmptyString",
    #             iam_database_authentication_enabled: false,
    #             instance_create_time: "NonEmptyString",
    #             kms_key_id: "NonEmptyString",
    #             publicly_accessible: false,
    #             storage_encrypted: false,
    #             tde_credential_arn: "NonEmptyString",
    #             vpc_security_groups: [
    #               {
    #                 vpc_security_group_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             multi_az: false,
    #             enhanced_monitoring_resource_arn: "NonEmptyString",
    #             db_instance_status: "NonEmptyString",
    #             master_username: "NonEmptyString",
    #             allocated_storage: 1,
    #             preferred_backup_window: "NonEmptyString",
    #             backup_retention_period: 1,
    #             db_security_groups: ["NonEmptyString"],
    #             db_parameter_groups: [
    #               {
    #                 db_parameter_group_name: "NonEmptyString",
    #                 parameter_apply_status: "NonEmptyString",
    #               },
    #             ],
    #             availability_zone: "NonEmptyString",
    #             db_subnet_group: {
    #               db_subnet_group_name: "NonEmptyString",
    #               db_subnet_group_description: "NonEmptyString",
    #               vpc_id: "NonEmptyString",
    #               subnet_group_status: "NonEmptyString",
    #               subnets: [
    #                 {
    #                   subnet_identifier: "NonEmptyString",
    #                   subnet_availability_zone: {
    #                     name: "NonEmptyString",
    #                   },
    #                   subnet_status: "NonEmptyString",
    #                 },
    #               ],
    #               db_subnet_group_arn: "NonEmptyString",
    #             },
    #             preferred_maintenance_window: "NonEmptyString",
    #             pending_modified_values: {
    #               db_instance_class: "NonEmptyString",
    #               allocated_storage: 1,
    #               master_user_password: "NonEmptyString",
    #               port: 1,
    #               backup_retention_period: 1,
    #               multi_az: false,
    #               engine_version: "NonEmptyString",
    #               license_model: "NonEmptyString",
    #               iops: 1,
    #               db_instance_identifier: "NonEmptyString",
    #               storage_type: "NonEmptyString",
    #               ca_certificate_identifier: "NonEmptyString",
    #               db_subnet_group_name: "NonEmptyString",
    #               pending_cloud_watch_logs_exports: {
    #                 log_types_to_enable: ["NonEmptyString"],
    #                 log_types_to_disable: ["NonEmptyString"],
    #               },
    #               processor_features: [
    #                 {
    #                   name: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #             latest_restorable_time: "NonEmptyString",
    #             auto_minor_version_upgrade: false,
    #             read_replica_source_db_instance_identifier: "NonEmptyString",
    #             read_replica_db_instance_identifiers: ["NonEmptyString"],
    #             read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #             license_model: "NonEmptyString",
    #             iops: 1,
    #             option_group_memberships: [
    #               {
    #                 option_group_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             character_set_name: "NonEmptyString",
    #             secondary_availability_zone: "NonEmptyString",
    #             status_infos: [
    #               {
    #                 status_type: "NonEmptyString",
    #                 normal: false,
    #                 status: "NonEmptyString",
    #                 message: "NonEmptyString",
    #               },
    #             ],
    #             storage_type: "NonEmptyString",
    #             domain_memberships: [
    #               {
    #                 domain: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 fqdn: "NonEmptyString",
    #                 iam_role_name: "NonEmptyString",
    #               },
    #             ],
    #             copy_tags_to_snapshot: false,
    #             monitoring_interval: 1,
    #             monitoring_role_arn: "NonEmptyString",
    #             promotion_tier: 1,
    #             timezone: "NonEmptyString",
    #             performance_insights_enabled: false,
    #             performance_insights_kms_key_id: "NonEmptyString",
    #             performance_insights_retention_period: 1,
    #             enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #             processor_features: [
    #               {
    #                 name: "NonEmptyString",
    #                 value: "NonEmptyString",
    #               },
    #             ],
    #             listener_endpoint: {
    #               address: "NonEmptyString",
    #               port: 1,
    #               hosted_zone_id: "NonEmptyString",
    #             },
    #             max_allocated_storage: 1,
    #           },
    #           aws_sns_topic: {
    #             kms_master_key_id: "NonEmptyString",
    #             subscription: [
    #               {
    #                 endpoint: "NonEmptyString",
    #                 protocol: "NonEmptyString",
    #               },
    #             ],
    #             topic_name: "NonEmptyString",
    #             owner: "NonEmptyString",
    #           },
    #           aws_sqs_queue: {
    #             kms_data_key_reuse_period_seconds: 1,
    #             kms_master_key_id: "NonEmptyString",
    #             queue_name: "NonEmptyString",
    #             dead_letter_target_arn: "NonEmptyString",
    #           },
    #           aws_waf_web_acl: {
    #             name: "NonEmptyString",
    #             default_action: "NonEmptyString",
    #             rules: [
    #               {
    #                 action: {
    #                   type: "NonEmptyString",
    #                 },
    #                 excluded_rules: [
    #                   {
    #                     rule_id: "NonEmptyString",
    #                   },
    #                 ],
    #                 override_action: {
    #                   type: "NonEmptyString",
    #                 },
    #                 priority: 1,
    #                 rule_id: "NonEmptyString",
    #                 type: "NonEmptyString",
    #               },
    #             ],
    #             web_acl_id: "NonEmptyString",
    #           },
    #           aws_rds_db_snapshot: {
    #             db_snapshot_identifier: "NonEmptyString",
    #             db_instance_identifier: "NonEmptyString",
    #             snapshot_create_time: "NonEmptyString",
    #             engine: "NonEmptyString",
    #             allocated_storage: 1,
    #             status: "NonEmptyString",
    #             port: 1,
    #             availability_zone: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             instance_create_time: "NonEmptyString",
    #             master_username: "NonEmptyString",
    #             engine_version: "NonEmptyString",
    #             license_model: "NonEmptyString",
    #             snapshot_type: "NonEmptyString",
    #             iops: 1,
    #             option_group_name: "NonEmptyString",
    #             percent_progress: 1,
    #             source_region: "NonEmptyString",
    #             source_db_snapshot_identifier: "NonEmptyString",
    #             storage_type: "NonEmptyString",
    #             tde_credential_arn: "NonEmptyString",
    #             encrypted: false,
    #             kms_key_id: "NonEmptyString",
    #             timezone: "NonEmptyString",
    #             iam_database_authentication_enabled: false,
    #             processor_features: [
    #               {
    #                 name: "NonEmptyString",
    #                 value: "NonEmptyString",
    #               },
    #             ],
    #             dbi_resource_id: "NonEmptyString",
    #           },
    #           aws_rds_db_cluster_snapshot: {
    #             availability_zones: ["NonEmptyString"],
    #             snapshot_create_time: "NonEmptyString",
    #             engine: "NonEmptyString",
    #             allocated_storage: 1,
    #             status: "NonEmptyString",
    #             port: 1,
    #             vpc_id: "NonEmptyString",
    #             cluster_create_time: "NonEmptyString",
    #             master_username: "NonEmptyString",
    #             engine_version: "NonEmptyString",
    #             license_model: "NonEmptyString",
    #             snapshot_type: "NonEmptyString",
    #             percent_progress: 1,
    #             storage_encrypted: false,
    #             kms_key_id: "NonEmptyString",
    #             db_cluster_identifier: "NonEmptyString",
    #             db_cluster_snapshot_identifier: "NonEmptyString",
    #             iam_database_authentication_enabled: false,
    #           },
    #           aws_rds_db_cluster: {
    #             allocated_storage: 1,
    #             availability_zones: ["NonEmptyString"],
    #             backup_retention_period: 1,
    #             database_name: "NonEmptyString",
    #             status: "NonEmptyString",
    #             endpoint: "NonEmptyString",
    #             reader_endpoint: "NonEmptyString",
    #             custom_endpoints: ["NonEmptyString"],
    #             multi_az: false,
    #             engine: "NonEmptyString",
    #             engine_version: "NonEmptyString",
    #             port: 1,
    #             master_username: "NonEmptyString",
    #             preferred_backup_window: "NonEmptyString",
    #             preferred_maintenance_window: "NonEmptyString",
    #             read_replica_identifiers: ["NonEmptyString"],
    #             vpc_security_groups: [
    #               {
    #                 vpc_security_group_id: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             hosted_zone_id: "NonEmptyString",
    #             storage_encrypted: false,
    #             kms_key_id: "NonEmptyString",
    #             db_cluster_resource_id: "NonEmptyString",
    #             associated_roles: [
    #               {
    #                 role_arn: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             cluster_create_time: "NonEmptyString",
    #             enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #             engine_mode: "NonEmptyString",
    #             deletion_protection: false,
    #             http_endpoint_enabled: false,
    #             activity_stream_status: "NonEmptyString",
    #             copy_tags_to_snapshot: false,
    #             cross_account_clone: false,
    #             domain_memberships: [
    #               {
    #                 domain: "NonEmptyString",
    #                 status: "NonEmptyString",
    #                 fqdn: "NonEmptyString",
    #                 iam_role_name: "NonEmptyString",
    #               },
    #             ],
    #             db_cluster_parameter_group: "NonEmptyString",
    #             db_subnet_group: "NonEmptyString",
    #             db_cluster_option_group_memberships: [
    #               {
    #                 db_cluster_option_group_name: "NonEmptyString",
    #                 status: "NonEmptyString",
    #               },
    #             ],
    #             db_cluster_identifier: "NonEmptyString",
    #             db_cluster_members: [
    #               {
    #                 is_cluster_writer: false,
    #                 promotion_tier: 1,
    #                 db_instance_identifier: "NonEmptyString",
    #                 db_cluster_parameter_group_status: "NonEmptyString",
    #               },
    #             ],
    #             iam_database_authentication_enabled: false,
    #           },
    #           container: {
    #             name: "NonEmptyString",
    #             image_id: "NonEmptyString",
    #             image_name: "NonEmptyString",
    #             launched_at: "NonEmptyString",
    #           },
    #           other: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of the resource that details are provided for. If possible,
    #   set `Type` to one of the supported resource types. For example, if
    #   the resource is an EC2 instance, then set `Type` to
    #   `AwsEc2Instance`.
    #
    #   If the resource does not match any of the provided types, then set
    #   `Type` to `Other`.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The canonical identifier for the given resource type.
    #   @return [String]
    #
    # @!attribute [rw] partition
    #   The canonical AWS partition name that the Region is assigned to.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The canonical AWS external Region name where this resource is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] resource_role
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of AWS tags associated with a resource at the time the
    #   finding was processed.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] details
    #   Additional details about the resource related to a finding.
    #   @return [Types::ResourceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :type,
      :id,
      :partition,
      :region,
      :resource_role,
      :tags,
      :details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request conflicts with an existing
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional details about a resource related to a finding.
    #
    # To provide the details, use the object that corresponds to the
    # resource type. For example, if the resource type is `AwsEc2Instance`,
    # then you use the `AwsEc2Instance` object to provide the details.
    #
    # If the type-specific object does not contain all of the fields you
    # want to populate, then you use the `Other` object to populate those
    # additional fields.
    #
    # You also use the `Other` object to populate the details when the
    # selected type does not have a corresponding object.
    #
    # @note When making an API call, you may pass ResourceDetails
    #   data as a hash:
    #
    #       {
    #         aws_auto_scaling_auto_scaling_group: {
    #           launch_configuration_name: "NonEmptyString",
    #           load_balancer_names: ["NonEmptyString"],
    #           health_check_type: "NonEmptyString",
    #           health_check_grace_period: 1,
    #           created_time: "NonEmptyString",
    #         },
    #         aws_code_build_project: {
    #           encryption_key: "NonEmptyString",
    #           environment: {
    #             certificate: "NonEmptyString",
    #             image_pull_credentials_type: "NonEmptyString",
    #             registry_credential: {
    #               credential: "NonEmptyString",
    #               credential_provider: "NonEmptyString",
    #             },
    #             type: "NonEmptyString",
    #           },
    #           name: "NonEmptyString",
    #           source: {
    #             type: "NonEmptyString",
    #             location: "NonEmptyString",
    #             git_clone_depth: 1,
    #             insecure_ssl: false,
    #           },
    #           service_role: "NonEmptyString",
    #           vpc_config: {
    #             vpc_id: "NonEmptyString",
    #             subnets: ["NonEmptyString"],
    #             security_group_ids: ["NonEmptyString"],
    #           },
    #         },
    #         aws_cloud_front_distribution: {
    #           cache_behaviors: {
    #             items: [
    #               {
    #                 viewer_protocol_policy: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           default_cache_behavior: {
    #             viewer_protocol_policy: "NonEmptyString",
    #           },
    #           default_root_object: "NonEmptyString",
    #           domain_name: "NonEmptyString",
    #           etag: "NonEmptyString",
    #           last_modified_time: "NonEmptyString",
    #           logging: {
    #             bucket: "NonEmptyString",
    #             enabled: false,
    #             include_cookies: false,
    #             prefix: "NonEmptyString",
    #           },
    #           origins: {
    #             items: [
    #               {
    #                 domain_name: "NonEmptyString",
    #                 id: "NonEmptyString",
    #                 origin_path: "NonEmptyString",
    #                 s3_origin_config: {
    #                   origin_access_identity: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #           },
    #           origin_groups: {
    #             items: [
    #               {
    #                 failover_criteria: {
    #                   status_codes: {
    #                     items: [1],
    #                     quantity: 1,
    #                   },
    #                 },
    #               },
    #             ],
    #           },
    #           status: "NonEmptyString",
    #           web_acl_id: "NonEmptyString",
    #         },
    #         aws_ec2_instance: {
    #           type: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           ip_v4_addresses: ["NonEmptyString"],
    #           ip_v6_addresses: ["NonEmptyString"],
    #           key_name: "NonEmptyString",
    #           iam_instance_profile_arn: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           subnet_id: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         aws_ec2_network_interface: {
    #           attachment: {
    #             attach_time: "NonEmptyString",
    #             attachment_id: "NonEmptyString",
    #             delete_on_termination: false,
    #             device_index: 1,
    #             instance_id: "NonEmptyString",
    #             instance_owner_id: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #           network_interface_id: "NonEmptyString",
    #           security_groups: [
    #             {
    #               group_name: "NonEmptyString",
    #               group_id: "NonEmptyString",
    #             },
    #           ],
    #           source_dest_check: false,
    #         },
    #         aws_ec2_security_group: {
    #           group_name: "NonEmptyString",
    #           group_id: "NonEmptyString",
    #           owner_id: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           ip_permissions: [
    #             {
    #               ip_protocol: "NonEmptyString",
    #               from_port: 1,
    #               to_port: 1,
    #               user_id_group_pairs: [
    #                 {
    #                   group_id: "NonEmptyString",
    #                   group_name: "NonEmptyString",
    #                   peering_status: "NonEmptyString",
    #                   user_id: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   vpc_peering_connection_id: "NonEmptyString",
    #                 },
    #               ],
    #               ip_ranges: [
    #                 {
    #                   cidr_ip: "NonEmptyString",
    #                 },
    #               ],
    #               ipv_6_ranges: [
    #                 {
    #                   cidr_ipv_6: "NonEmptyString",
    #                 },
    #               ],
    #               prefix_list_ids: [
    #                 {
    #                   prefix_list_id: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #           ],
    #           ip_permissions_egress: [
    #             {
    #               ip_protocol: "NonEmptyString",
    #               from_port: 1,
    #               to_port: 1,
    #               user_id_group_pairs: [
    #                 {
    #                   group_id: "NonEmptyString",
    #                   group_name: "NonEmptyString",
    #                   peering_status: "NonEmptyString",
    #                   user_id: "NonEmptyString",
    #                   vpc_id: "NonEmptyString",
    #                   vpc_peering_connection_id: "NonEmptyString",
    #                 },
    #               ],
    #               ip_ranges: [
    #                 {
    #                   cidr_ip: "NonEmptyString",
    #                 },
    #               ],
    #               ipv_6_ranges: [
    #                 {
    #                   cidr_ipv_6: "NonEmptyString",
    #                 },
    #               ],
    #               prefix_list_ids: [
    #                 {
    #                   prefix_list_id: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #           ],
    #         },
    #         aws_ec2_volume: {
    #           create_time: "NonEmptyString",
    #           encrypted: false,
    #           size: 1,
    #           snapshot_id: "NonEmptyString",
    #           status: "NonEmptyString",
    #           kms_key_id: "NonEmptyString",
    #           attachments: [
    #             {
    #               attach_time: "NonEmptyString",
    #               delete_on_termination: false,
    #               instance_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         aws_ec2_vpc: {
    #           cidr_block_association_set: [
    #             {
    #               association_id: "NonEmptyString",
    #               cidr_block: "NonEmptyString",
    #               cidr_block_state: "NonEmptyString",
    #             },
    #           ],
    #           ipv_6_cidr_block_association_set: [
    #             {
    #               association_id: "NonEmptyString",
    #               ipv_6_cidr_block: "NonEmptyString",
    #               cidr_block_state: "NonEmptyString",
    #             },
    #           ],
    #           dhcp_options_id: "NonEmptyString",
    #           state: "NonEmptyString",
    #         },
    #         aws_ec2_eip: {
    #           instance_id: "NonEmptyString",
    #           public_ip: "NonEmptyString",
    #           allocation_id: "NonEmptyString",
    #           association_id: "NonEmptyString",
    #           domain: "NonEmptyString",
    #           public_ipv_4_pool: "NonEmptyString",
    #           network_border_group: "NonEmptyString",
    #           network_interface_id: "NonEmptyString",
    #           network_interface_owner_id: "NonEmptyString",
    #           private_ip_address: "NonEmptyString",
    #         },
    #         aws_elbv_2_load_balancer: {
    #           availability_zones: [
    #             {
    #               zone_name: "NonEmptyString",
    #               subnet_id: "NonEmptyString",
    #             },
    #           ],
    #           canonical_hosted_zone_id: "NonEmptyString",
    #           created_time: "NonEmptyString",
    #           dns_name: "NonEmptyString",
    #           ip_address_type: "NonEmptyString",
    #           scheme: "NonEmptyString",
    #           security_groups: ["NonEmptyString"],
    #           state: {
    #             code: "NonEmptyString",
    #             reason: "NonEmptyString",
    #           },
    #           type: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #         },
    #         aws_elasticsearch_domain: {
    #           access_policies: "NonEmptyString",
    #           domain_endpoint_options: {
    #             enforce_https: false,
    #             tls_security_policy: "NonEmptyString",
    #           },
    #           domain_id: "NonEmptyString",
    #           domain_name: "NonEmptyString",
    #           endpoint: "NonEmptyString",
    #           endpoints: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           elasticsearch_version: "NonEmptyString",
    #           encryption_at_rest_options: {
    #             enabled: false,
    #             kms_key_id: "NonEmptyString",
    #           },
    #           node_to_node_encryption_options: {
    #             enabled: false,
    #           },
    #           vpc_options: {
    #             availability_zones: ["NonEmptyString"],
    #             security_group_ids: ["NonEmptyString"],
    #             subnet_ids: ["NonEmptyString"],
    #             vpc_id: "NonEmptyString",
    #           },
    #         },
    #         aws_s3_bucket: {
    #           owner_id: "NonEmptyString",
    #           owner_name: "NonEmptyString",
    #           created_at: "NonEmptyString",
    #           server_side_encryption_configuration: {
    #             rules: [
    #               {
    #                 apply_server_side_encryption_by_default: {
    #                   sse_algorithm: "NonEmptyString",
    #                   kms_master_key_id: "NonEmptyString",
    #                 },
    #               },
    #             ],
    #           },
    #         },
    #         aws_s3_object: {
    #           last_modified: "NonEmptyString",
    #           etag: "NonEmptyString",
    #           version_id: "NonEmptyString",
    #           content_type: "NonEmptyString",
    #           server_side_encryption: "NonEmptyString",
    #           ssekms_key_id: "NonEmptyString",
    #         },
    #         aws_secrets_manager_secret: {
    #           rotation_rules: {
    #             automatically_after_days: 1,
    #           },
    #           rotation_occurred_within_frequency: false,
    #           kms_key_id: "NonEmptyString",
    #           rotation_enabled: false,
    #           rotation_lambda_arn: "NonEmptyString",
    #           deleted: false,
    #           name: "NonEmptyString",
    #           description: "NonEmptyString",
    #         },
    #         aws_iam_access_key: {
    #           user_name: "NonEmptyString",
    #           status: "Active", # accepts Active, Inactive
    #           created_at: "NonEmptyString",
    #           principal_id: "NonEmptyString",
    #           principal_type: "NonEmptyString",
    #           principal_name: "NonEmptyString",
    #           account_id: "NonEmptyString",
    #           access_key_id: "NonEmptyString",
    #           session_context: {
    #             attributes: {
    #               mfa_authenticated: false,
    #               creation_date: "NonEmptyString",
    #             },
    #             session_issuer: {
    #               type: "NonEmptyString",
    #               principal_id: "NonEmptyString",
    #               arn: "NonEmptyString",
    #               account_id: "NonEmptyString",
    #               user_name: "NonEmptyString",
    #             },
    #           },
    #         },
    #         aws_iam_user: {
    #           attached_managed_policies: [
    #             {
    #               policy_name: "NonEmptyString",
    #               policy_arn: "NonEmptyString",
    #             },
    #           ],
    #           create_date: "NonEmptyString",
    #           group_list: ["NonEmptyString"],
    #           path: "NonEmptyString",
    #           permissions_boundary: {
    #             permissions_boundary_arn: "NonEmptyString",
    #             permissions_boundary_type: "NonEmptyString",
    #           },
    #           user_id: "NonEmptyString",
    #           user_name: "NonEmptyString",
    #           user_policy_list: [
    #             {
    #               policy_name: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         aws_iam_policy: {
    #           attachment_count: 1,
    #           create_date: "NonEmptyString",
    #           default_version_id: "NonEmptyString",
    #           description: "NonEmptyString",
    #           is_attachable: false,
    #           path: "NonEmptyString",
    #           permissions_boundary_usage_count: 1,
    #           policy_id: "NonEmptyString",
    #           policy_name: "NonEmptyString",
    #           policy_version_list: [
    #             {
    #               version_id: "NonEmptyString",
    #               is_default_version: false,
    #               create_date: "NonEmptyString",
    #             },
    #           ],
    #           update_date: "NonEmptyString",
    #         },
    #         aws_api_gateway_v2_stage: {
    #           created_date: "NonEmptyString",
    #           description: "NonEmptyString",
    #           default_route_settings: {
    #             detailed_metrics_enabled: false,
    #             logging_level: "NonEmptyString",
    #             data_trace_enabled: false,
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #           },
    #           deployment_id: "NonEmptyString",
    #           last_updated_date: "NonEmptyString",
    #           route_settings: {
    #             detailed_metrics_enabled: false,
    #             logging_level: "NonEmptyString",
    #             data_trace_enabled: false,
    #             throttling_burst_limit: 1,
    #             throttling_rate_limit: 1.0,
    #           },
    #           stage_name: "NonEmptyString",
    #           stage_variables: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           access_log_settings: {
    #             format: "NonEmptyString",
    #             destination_arn: "NonEmptyString",
    #           },
    #           auto_deploy: false,
    #           last_deployment_status_message: "NonEmptyString",
    #           api_gateway_managed: false,
    #         },
    #         aws_api_gateway_v2_api: {
    #           api_endpoint: "NonEmptyString",
    #           api_id: "NonEmptyString",
    #           api_key_selection_expression: "NonEmptyString",
    #           created_date: "NonEmptyString",
    #           description: "NonEmptyString",
    #           version: "NonEmptyString",
    #           name: "NonEmptyString",
    #           protocol_type: "NonEmptyString",
    #           route_selection_expression: "NonEmptyString",
    #           cors_configuration: {
    #             allow_origins: ["NonEmptyString"],
    #             allow_credentials: false,
    #             expose_headers: ["NonEmptyString"],
    #             max_age: 1,
    #             allow_methods: ["NonEmptyString"],
    #             allow_headers: ["NonEmptyString"],
    #           },
    #         },
    #         aws_dynamo_db_table: {
    #           attribute_definitions: [
    #             {
    #               attribute_name: "NonEmptyString",
    #               attribute_type: "NonEmptyString",
    #             },
    #           ],
    #           billing_mode_summary: {
    #             billing_mode: "NonEmptyString",
    #             last_update_to_pay_per_request_date_time: "NonEmptyString",
    #           },
    #           creation_date_time: "NonEmptyString",
    #           global_secondary_indexes: [
    #             {
    #               backfilling: false,
    #               index_arn: "NonEmptyString",
    #               index_name: "NonEmptyString",
    #               index_size_bytes: 1,
    #               index_status: "NonEmptyString",
    #               item_count: 1,
    #               key_schema: [
    #                 {
    #                   attribute_name: "NonEmptyString",
    #                   key_type: "NonEmptyString",
    #                 },
    #               ],
    #               projection: {
    #                 non_key_attributes: ["NonEmptyString"],
    #                 projection_type: "NonEmptyString",
    #               },
    #               provisioned_throughput: {
    #                 last_decrease_date_time: "NonEmptyString",
    #                 last_increase_date_time: "NonEmptyString",
    #                 number_of_decreases_today: 1,
    #                 read_capacity_units: 1,
    #                 write_capacity_units: 1,
    #               },
    #             },
    #           ],
    #           global_table_version: "NonEmptyString",
    #           item_count: 1,
    #           key_schema: [
    #             {
    #               attribute_name: "NonEmptyString",
    #               key_type: "NonEmptyString",
    #             },
    #           ],
    #           latest_stream_arn: "NonEmptyString",
    #           latest_stream_label: "NonEmptyString",
    #           local_secondary_indexes: [
    #             {
    #               index_arn: "NonEmptyString",
    #               index_name: "NonEmptyString",
    #               key_schema: [
    #                 {
    #                   attribute_name: "NonEmptyString",
    #                   key_type: "NonEmptyString",
    #                 },
    #               ],
    #               projection: {
    #                 non_key_attributes: ["NonEmptyString"],
    #                 projection_type: "NonEmptyString",
    #               },
    #             },
    #           ],
    #           provisioned_throughput: {
    #             last_decrease_date_time: "NonEmptyString",
    #             last_increase_date_time: "NonEmptyString",
    #             number_of_decreases_today: 1,
    #             read_capacity_units: 1,
    #             write_capacity_units: 1,
    #           },
    #           replicas: [
    #             {
    #               global_secondary_indexes: [
    #                 {
    #                   index_name: "NonEmptyString",
    #                   provisioned_throughput_override: {
    #                     read_capacity_units: 1,
    #                   },
    #                 },
    #               ],
    #               kms_master_key_id: "NonEmptyString",
    #               provisioned_throughput_override: {
    #                 read_capacity_units: 1,
    #               },
    #               region_name: "NonEmptyString",
    #               replica_status: "NonEmptyString",
    #               replica_status_description: "NonEmptyString",
    #             },
    #           ],
    #           restore_summary: {
    #             source_backup_arn: "NonEmptyString",
    #             source_table_arn: "NonEmptyString",
    #             restore_date_time: "NonEmptyString",
    #             restore_in_progress: false,
    #           },
    #           sse_description: {
    #             inaccessible_encryption_date_time: "NonEmptyString",
    #             status: "NonEmptyString",
    #             sse_type: "NonEmptyString",
    #             kms_master_key_arn: "NonEmptyString",
    #           },
    #           stream_specification: {
    #             stream_enabled: false,
    #             stream_view_type: "NonEmptyString",
    #           },
    #           table_id: "NonEmptyString",
    #           table_name: "NonEmptyString",
    #           table_size_bytes: 1,
    #           table_status: "NonEmptyString",
    #         },
    #         aws_api_gateway_stage: {
    #           deployment_id: "NonEmptyString",
    #           client_certificate_id: "NonEmptyString",
    #           stage_name: "NonEmptyString",
    #           description: "NonEmptyString",
    #           cache_cluster_enabled: false,
    #           cache_cluster_size: "NonEmptyString",
    #           cache_cluster_status: "NonEmptyString",
    #           method_settings: [
    #             {
    #               metrics_enabled: false,
    #               logging_level: "NonEmptyString",
    #               data_trace_enabled: false,
    #               throttling_burst_limit: 1,
    #               throttling_rate_limit: 1.0,
    #               caching_enabled: false,
    #               cache_ttl_in_seconds: 1,
    #               cache_data_encrypted: false,
    #               require_authorization_for_cache_control: false,
    #               unauthorized_cache_control_header_strategy: "NonEmptyString",
    #               http_method: "NonEmptyString",
    #               resource_path: "NonEmptyString",
    #             },
    #           ],
    #           variables: {
    #             "NonEmptyString" => "NonEmptyString",
    #           },
    #           documentation_version: "NonEmptyString",
    #           access_log_settings: {
    #             format: "NonEmptyString",
    #             destination_arn: "NonEmptyString",
    #           },
    #           canary_settings: {
    #             percent_traffic: 1.0,
    #             deployment_id: "NonEmptyString",
    #             stage_variable_overrides: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             use_stage_cache: false,
    #           },
    #           tracing_enabled: false,
    #           created_date: "NonEmptyString",
    #           last_updated_date: "NonEmptyString",
    #           web_acl_arn: "NonEmptyString",
    #         },
    #         aws_api_gateway_rest_api: {
    #           id: "NonEmptyString",
    #           name: "NonEmptyString",
    #           description: "NonEmptyString",
    #           created_date: "NonEmptyString",
    #           version: "NonEmptyString",
    #           binary_media_types: ["NonEmptyString"],
    #           minimum_compression_size: 1,
    #           api_key_source: "NonEmptyString",
    #           endpoint_configuration: {
    #             types: ["NonEmptyString"],
    #           },
    #         },
    #         aws_cloud_trail_trail: {
    #           cloud_watch_logs_log_group_arn: "NonEmptyString",
    #           cloud_watch_logs_role_arn: "NonEmptyString",
    #           has_custom_event_selectors: false,
    #           home_region: "NonEmptyString",
    #           include_global_service_events: false,
    #           is_multi_region_trail: false,
    #           is_organization_trail: false,
    #           kms_key_id: "NonEmptyString",
    #           log_file_validation_enabled: false,
    #           name: "NonEmptyString",
    #           s3_bucket_name: "NonEmptyString",
    #           s3_key_prefix: "NonEmptyString",
    #           sns_topic_arn: "NonEmptyString",
    #           sns_topic_name: "NonEmptyString",
    #           trail_arn: "NonEmptyString",
    #         },
    #         aws_certificate_manager_certificate: {
    #           certificate_authority_arn: "NonEmptyString",
    #           created_at: "NonEmptyString",
    #           domain_name: "NonEmptyString",
    #           domain_validation_options: [
    #             {
    #               domain_name: "NonEmptyString",
    #               resource_record: {
    #                 name: "NonEmptyString",
    #                 type: "NonEmptyString",
    #                 value: "NonEmptyString",
    #               },
    #               validation_domain: "NonEmptyString",
    #               validation_emails: ["NonEmptyString"],
    #               validation_method: "NonEmptyString",
    #               validation_status: "NonEmptyString",
    #             },
    #           ],
    #           extended_key_usages: [
    #             {
    #               name: "NonEmptyString",
    #               o_id: "NonEmptyString",
    #             },
    #           ],
    #           failure_reason: "NonEmptyString",
    #           imported_at: "NonEmptyString",
    #           in_use_by: ["NonEmptyString"],
    #           issued_at: "NonEmptyString",
    #           issuer: "NonEmptyString",
    #           key_algorithm: "NonEmptyString",
    #           key_usages: [
    #             {
    #               name: "NonEmptyString",
    #             },
    #           ],
    #           not_after: "NonEmptyString",
    #           not_before: "NonEmptyString",
    #           options: {
    #             certificate_transparency_logging_preference: "NonEmptyString",
    #           },
    #           renewal_eligibility: "NonEmptyString",
    #           renewal_summary: {
    #             domain_validation_options: [
    #               {
    #                 domain_name: "NonEmptyString",
    #                 resource_record: {
    #                   name: "NonEmptyString",
    #                   type: "NonEmptyString",
    #                   value: "NonEmptyString",
    #                 },
    #                 validation_domain: "NonEmptyString",
    #                 validation_emails: ["NonEmptyString"],
    #                 validation_method: "NonEmptyString",
    #                 validation_status: "NonEmptyString",
    #               },
    #             ],
    #             renewal_status: "NonEmptyString",
    #             renewal_status_reason: "NonEmptyString",
    #             updated_at: "NonEmptyString",
    #           },
    #           serial: "NonEmptyString",
    #           signature_algorithm: "NonEmptyString",
    #           status: "NonEmptyString",
    #           subject: "NonEmptyString",
    #           subject_alternative_names: ["NonEmptyString"],
    #           type: "NonEmptyString",
    #         },
    #         aws_redshift_cluster: {
    #           allow_version_upgrade: false,
    #           automated_snapshot_retention_period: 1,
    #           availability_zone: "NonEmptyString",
    #           cluster_availability_status: "NonEmptyString",
    #           cluster_create_time: "NonEmptyString",
    #           cluster_identifier: "NonEmptyString",
    #           cluster_nodes: [
    #             {
    #               node_role: "NonEmptyString",
    #               private_ip_address: "NonEmptyString",
    #               public_ip_address: "NonEmptyString",
    #             },
    #           ],
    #           cluster_parameter_groups: [
    #             {
    #               cluster_parameter_status_list: [
    #                 {
    #                   parameter_name: "NonEmptyString",
    #                   parameter_apply_status: "NonEmptyString",
    #                   parameter_apply_error_description: "NonEmptyString",
    #                 },
    #               ],
    #               parameter_apply_status: "NonEmptyString",
    #               parameter_group_name: "NonEmptyString",
    #             },
    #           ],
    #           cluster_public_key: "NonEmptyString",
    #           cluster_revision_number: "NonEmptyString",
    #           cluster_security_groups: [
    #             {
    #               cluster_security_group_name: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           cluster_snapshot_copy_status: {
    #             destination_region: "NonEmptyString",
    #             manual_snapshot_retention_period: 1,
    #             retention_period: 1,
    #             snapshot_copy_grant_name: "NonEmptyString",
    #           },
    #           cluster_status: "NonEmptyString",
    #           cluster_subnet_group_name: "NonEmptyString",
    #           cluster_version: "NonEmptyString",
    #           db_name: "NonEmptyString",
    #           deferred_maintenance_windows: [
    #             {
    #               defer_maintenance_end_time: "NonEmptyString",
    #               defer_maintenance_identifier: "NonEmptyString",
    #               defer_maintenance_start_time: "NonEmptyString",
    #             },
    #           ],
    #           elastic_ip_status: {
    #             elastic_ip: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #           elastic_resize_number_of_node_options: "NonEmptyString",
    #           encrypted: false,
    #           endpoint: {
    #             address: "NonEmptyString",
    #             port: 1,
    #           },
    #           enhanced_vpc_routing: false,
    #           expected_next_snapshot_schedule_time: "NonEmptyString",
    #           expected_next_snapshot_schedule_time_status: "NonEmptyString",
    #           hsm_status: {
    #             hsm_client_certificate_identifier: "NonEmptyString",
    #             hsm_configuration_identifier: "NonEmptyString",
    #             status: "NonEmptyString",
    #           },
    #           iam_roles: [
    #             {
    #               apply_status: "NonEmptyString",
    #               iam_role_arn: "NonEmptyString",
    #             },
    #           ],
    #           kms_key_id: "NonEmptyString",
    #           maintenance_track_name: "NonEmptyString",
    #           manual_snapshot_retention_period: 1,
    #           master_username: "NonEmptyString",
    #           next_maintenance_window_start_time: "NonEmptyString",
    #           node_type: "NonEmptyString",
    #           number_of_nodes: 1,
    #           pending_actions: ["NonEmptyString"],
    #           pending_modified_values: {
    #             automated_snapshot_retention_period: 1,
    #             cluster_identifier: "NonEmptyString",
    #             cluster_type: "NonEmptyString",
    #             cluster_version: "NonEmptyString",
    #             encryption_type: "NonEmptyString",
    #             enhanced_vpc_routing: false,
    #             maintenance_track_name: "NonEmptyString",
    #             master_user_password: "NonEmptyString",
    #             node_type: "NonEmptyString",
    #             number_of_nodes: 1,
    #             publicly_accessible: false,
    #           },
    #           preferred_maintenance_window: "NonEmptyString",
    #           publicly_accessible: false,
    #           resize_info: {
    #             allow_cancel_resize: false,
    #             resize_type: "NonEmptyString",
    #           },
    #           restore_status: {
    #             current_restore_rate_in_mega_bytes_per_second: 1.0,
    #             elapsed_time_in_seconds: 1,
    #             estimated_time_to_completion_in_seconds: 1,
    #             progress_in_mega_bytes: 1,
    #             snapshot_size_in_mega_bytes: 1,
    #             status: "NonEmptyString",
    #           },
    #           snapshot_schedule_identifier: "NonEmptyString",
    #           snapshot_schedule_state: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           vpc_security_groups: [
    #             {
    #               status: "NonEmptyString",
    #               vpc_security_group_id: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         aws_elb_load_balancer: {
    #           availability_zones: ["NonEmptyString"],
    #           backend_server_descriptions: [
    #             {
    #               instance_port: 1,
    #               policy_names: ["NonEmptyString"],
    #             },
    #           ],
    #           canonical_hosted_zone_name: "NonEmptyString",
    #           canonical_hosted_zone_name_id: "NonEmptyString",
    #           created_time: "NonEmptyString",
    #           dns_name: "NonEmptyString",
    #           health_check: {
    #             healthy_threshold: 1,
    #             interval: 1,
    #             target: "NonEmptyString",
    #             timeout: 1,
    #             unhealthy_threshold: 1,
    #           },
    #           instances: [
    #             {
    #               instance_id: "NonEmptyString",
    #             },
    #           ],
    #           listener_descriptions: [
    #             {
    #               listener: {
    #                 instance_port: 1,
    #                 instance_protocol: "NonEmptyString",
    #                 load_balancer_port: 1,
    #                 protocol: "NonEmptyString",
    #                 ssl_certificate_id: "NonEmptyString",
    #               },
    #               policy_names: ["NonEmptyString"],
    #             },
    #           ],
    #           load_balancer_attributes: {
    #             access_log: {
    #               emit_interval: 1,
    #               enabled: false,
    #               s3_bucket_name: "NonEmptyString",
    #               s3_bucket_prefix: "NonEmptyString",
    #             },
    #             connection_draining: {
    #               enabled: false,
    #               timeout: 1,
    #             },
    #             connection_settings: {
    #               idle_timeout: 1,
    #             },
    #             cross_zone_load_balancing: {
    #               enabled: false,
    #             },
    #           },
    #           load_balancer_name: "NonEmptyString",
    #           policies: {
    #             app_cookie_stickiness_policies: [
    #               {
    #                 cookie_name: "NonEmptyString",
    #                 policy_name: "NonEmptyString",
    #               },
    #             ],
    #             lb_cookie_stickiness_policies: [
    #               {
    #                 cookie_expiration_period: 1,
    #                 policy_name: "NonEmptyString",
    #               },
    #             ],
    #             other_policies: ["NonEmptyString"],
    #           },
    #           scheme: "NonEmptyString",
    #           security_groups: ["NonEmptyString"],
    #           source_security_group: {
    #             group_name: "NonEmptyString",
    #             owner_alias: "NonEmptyString",
    #           },
    #           subnets: ["NonEmptyString"],
    #           vpc_id: "NonEmptyString",
    #         },
    #         aws_iam_group: {
    #           attached_managed_policies: [
    #             {
    #               policy_name: "NonEmptyString",
    #               policy_arn: "NonEmptyString",
    #             },
    #           ],
    #           create_date: "NonEmptyString",
    #           group_id: "NonEmptyString",
    #           group_name: "NonEmptyString",
    #           group_policy_list: [
    #             {
    #               policy_name: "NonEmptyString",
    #             },
    #           ],
    #           path: "NonEmptyString",
    #         },
    #         aws_iam_role: {
    #           assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #           attached_managed_policies: [
    #             {
    #               policy_name: "NonEmptyString",
    #               policy_arn: "NonEmptyString",
    #             },
    #           ],
    #           create_date: "NonEmptyString",
    #           instance_profile_list: [
    #             {
    #               arn: "NonEmptyString",
    #               create_date: "NonEmptyString",
    #               instance_profile_id: "NonEmptyString",
    #               instance_profile_name: "NonEmptyString",
    #               path: "NonEmptyString",
    #               roles: [
    #                 {
    #                   arn: "NonEmptyString",
    #                   assume_role_policy_document: "AwsIamRoleAssumeRolePolicyDocument",
    #                   create_date: "NonEmptyString",
    #                   path: "NonEmptyString",
    #                   role_id: "NonEmptyString",
    #                   role_name: "NonEmptyString",
    #                 },
    #               ],
    #             },
    #           ],
    #           permissions_boundary: {
    #             permissions_boundary_arn: "NonEmptyString",
    #             permissions_boundary_type: "NonEmptyString",
    #           },
    #           role_id: "NonEmptyString",
    #           role_name: "NonEmptyString",
    #           role_policy_list: [
    #             {
    #               policy_name: "NonEmptyString",
    #             },
    #           ],
    #           max_session_duration: 1,
    #           path: "NonEmptyString",
    #         },
    #         aws_kms_key: {
    #           aws_account_id: "NonEmptyString",
    #           creation_date: 1.0,
    #           key_id: "NonEmptyString",
    #           key_manager: "NonEmptyString",
    #           key_state: "NonEmptyString",
    #           origin: "NonEmptyString",
    #           description: "NonEmptyString",
    #         },
    #         aws_lambda_function: {
    #           code: {
    #             s3_bucket: "NonEmptyString",
    #             s3_key: "NonEmptyString",
    #             s3_object_version: "NonEmptyString",
    #             zip_file: "NonEmptyString",
    #           },
    #           code_sha_256: "NonEmptyString",
    #           dead_letter_config: {
    #             target_arn: "NonEmptyString",
    #           },
    #           environment: {
    #             variables: {
    #               "NonEmptyString" => "NonEmptyString",
    #             },
    #             error: {
    #               error_code: "NonEmptyString",
    #               message: "NonEmptyString",
    #             },
    #           },
    #           function_name: "NonEmptyString",
    #           handler: "NonEmptyString",
    #           kms_key_arn: "NonEmptyString",
    #           last_modified: "NonEmptyString",
    #           layers: [
    #             {
    #               arn: "NonEmptyString",
    #               code_size: 1,
    #             },
    #           ],
    #           master_arn: "NonEmptyString",
    #           memory_size: 1,
    #           revision_id: "NonEmptyString",
    #           role: "NonEmptyString",
    #           runtime: "NonEmptyString",
    #           timeout: 1,
    #           tracing_config: {
    #             mode: "NonEmptyString",
    #           },
    #           vpc_config: {
    #             security_group_ids: ["NonEmptyString"],
    #             subnet_ids: ["NonEmptyString"],
    #             vpc_id: "NonEmptyString",
    #           },
    #           version: "NonEmptyString",
    #         },
    #         aws_lambda_layer_version: {
    #           version: 1,
    #           compatible_runtimes: ["NonEmptyString"],
    #           created_date: "NonEmptyString",
    #         },
    #         aws_rds_db_instance: {
    #           associated_roles: [
    #             {
    #               role_arn: "NonEmptyString",
    #               feature_name: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           ca_certificate_identifier: "NonEmptyString",
    #           db_cluster_identifier: "NonEmptyString",
    #           db_instance_identifier: "NonEmptyString",
    #           db_instance_class: "NonEmptyString",
    #           db_instance_port: 1,
    #           dbi_resource_id: "NonEmptyString",
    #           db_name: "NonEmptyString",
    #           deletion_protection: false,
    #           endpoint: {
    #             address: "NonEmptyString",
    #             port: 1,
    #             hosted_zone_id: "NonEmptyString",
    #           },
    #           engine: "NonEmptyString",
    #           engine_version: "NonEmptyString",
    #           iam_database_authentication_enabled: false,
    #           instance_create_time: "NonEmptyString",
    #           kms_key_id: "NonEmptyString",
    #           publicly_accessible: false,
    #           storage_encrypted: false,
    #           tde_credential_arn: "NonEmptyString",
    #           vpc_security_groups: [
    #             {
    #               vpc_security_group_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           multi_az: false,
    #           enhanced_monitoring_resource_arn: "NonEmptyString",
    #           db_instance_status: "NonEmptyString",
    #           master_username: "NonEmptyString",
    #           allocated_storage: 1,
    #           preferred_backup_window: "NonEmptyString",
    #           backup_retention_period: 1,
    #           db_security_groups: ["NonEmptyString"],
    #           db_parameter_groups: [
    #             {
    #               db_parameter_group_name: "NonEmptyString",
    #               parameter_apply_status: "NonEmptyString",
    #             },
    #           ],
    #           availability_zone: "NonEmptyString",
    #           db_subnet_group: {
    #             db_subnet_group_name: "NonEmptyString",
    #             db_subnet_group_description: "NonEmptyString",
    #             vpc_id: "NonEmptyString",
    #             subnet_group_status: "NonEmptyString",
    #             subnets: [
    #               {
    #                 subnet_identifier: "NonEmptyString",
    #                 subnet_availability_zone: {
    #                   name: "NonEmptyString",
    #                 },
    #                 subnet_status: "NonEmptyString",
    #               },
    #             ],
    #             db_subnet_group_arn: "NonEmptyString",
    #           },
    #           preferred_maintenance_window: "NonEmptyString",
    #           pending_modified_values: {
    #             db_instance_class: "NonEmptyString",
    #             allocated_storage: 1,
    #             master_user_password: "NonEmptyString",
    #             port: 1,
    #             backup_retention_period: 1,
    #             multi_az: false,
    #             engine_version: "NonEmptyString",
    #             license_model: "NonEmptyString",
    #             iops: 1,
    #             db_instance_identifier: "NonEmptyString",
    #             storage_type: "NonEmptyString",
    #             ca_certificate_identifier: "NonEmptyString",
    #             db_subnet_group_name: "NonEmptyString",
    #             pending_cloud_watch_logs_exports: {
    #               log_types_to_enable: ["NonEmptyString"],
    #               log_types_to_disable: ["NonEmptyString"],
    #             },
    #             processor_features: [
    #               {
    #                 name: "NonEmptyString",
    #                 value: "NonEmptyString",
    #               },
    #             ],
    #           },
    #           latest_restorable_time: "NonEmptyString",
    #           auto_minor_version_upgrade: false,
    #           read_replica_source_db_instance_identifier: "NonEmptyString",
    #           read_replica_db_instance_identifiers: ["NonEmptyString"],
    #           read_replica_db_cluster_identifiers: ["NonEmptyString"],
    #           license_model: "NonEmptyString",
    #           iops: 1,
    #           option_group_memberships: [
    #             {
    #               option_group_name: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           character_set_name: "NonEmptyString",
    #           secondary_availability_zone: "NonEmptyString",
    #           status_infos: [
    #             {
    #               status_type: "NonEmptyString",
    #               normal: false,
    #               status: "NonEmptyString",
    #               message: "NonEmptyString",
    #             },
    #           ],
    #           storage_type: "NonEmptyString",
    #           domain_memberships: [
    #             {
    #               domain: "NonEmptyString",
    #               status: "NonEmptyString",
    #               fqdn: "NonEmptyString",
    #               iam_role_name: "NonEmptyString",
    #             },
    #           ],
    #           copy_tags_to_snapshot: false,
    #           monitoring_interval: 1,
    #           monitoring_role_arn: "NonEmptyString",
    #           promotion_tier: 1,
    #           timezone: "NonEmptyString",
    #           performance_insights_enabled: false,
    #           performance_insights_kms_key_id: "NonEmptyString",
    #           performance_insights_retention_period: 1,
    #           enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #           processor_features: [
    #             {
    #               name: "NonEmptyString",
    #               value: "NonEmptyString",
    #             },
    #           ],
    #           listener_endpoint: {
    #             address: "NonEmptyString",
    #             port: 1,
    #             hosted_zone_id: "NonEmptyString",
    #           },
    #           max_allocated_storage: 1,
    #         },
    #         aws_sns_topic: {
    #           kms_master_key_id: "NonEmptyString",
    #           subscription: [
    #             {
    #               endpoint: "NonEmptyString",
    #               protocol: "NonEmptyString",
    #             },
    #           ],
    #           topic_name: "NonEmptyString",
    #           owner: "NonEmptyString",
    #         },
    #         aws_sqs_queue: {
    #           kms_data_key_reuse_period_seconds: 1,
    #           kms_master_key_id: "NonEmptyString",
    #           queue_name: "NonEmptyString",
    #           dead_letter_target_arn: "NonEmptyString",
    #         },
    #         aws_waf_web_acl: {
    #           name: "NonEmptyString",
    #           default_action: "NonEmptyString",
    #           rules: [
    #             {
    #               action: {
    #                 type: "NonEmptyString",
    #               },
    #               excluded_rules: [
    #                 {
    #                   rule_id: "NonEmptyString",
    #                 },
    #               ],
    #               override_action: {
    #                 type: "NonEmptyString",
    #               },
    #               priority: 1,
    #               rule_id: "NonEmptyString",
    #               type: "NonEmptyString",
    #             },
    #           ],
    #           web_acl_id: "NonEmptyString",
    #         },
    #         aws_rds_db_snapshot: {
    #           db_snapshot_identifier: "NonEmptyString",
    #           db_instance_identifier: "NonEmptyString",
    #           snapshot_create_time: "NonEmptyString",
    #           engine: "NonEmptyString",
    #           allocated_storage: 1,
    #           status: "NonEmptyString",
    #           port: 1,
    #           availability_zone: "NonEmptyString",
    #           vpc_id: "NonEmptyString",
    #           instance_create_time: "NonEmptyString",
    #           master_username: "NonEmptyString",
    #           engine_version: "NonEmptyString",
    #           license_model: "NonEmptyString",
    #           snapshot_type: "NonEmptyString",
    #           iops: 1,
    #           option_group_name: "NonEmptyString",
    #           percent_progress: 1,
    #           source_region: "NonEmptyString",
    #           source_db_snapshot_identifier: "NonEmptyString",
    #           storage_type: "NonEmptyString",
    #           tde_credential_arn: "NonEmptyString",
    #           encrypted: false,
    #           kms_key_id: "NonEmptyString",
    #           timezone: "NonEmptyString",
    #           iam_database_authentication_enabled: false,
    #           processor_features: [
    #             {
    #               name: "NonEmptyString",
    #               value: "NonEmptyString",
    #             },
    #           ],
    #           dbi_resource_id: "NonEmptyString",
    #         },
    #         aws_rds_db_cluster_snapshot: {
    #           availability_zones: ["NonEmptyString"],
    #           snapshot_create_time: "NonEmptyString",
    #           engine: "NonEmptyString",
    #           allocated_storage: 1,
    #           status: "NonEmptyString",
    #           port: 1,
    #           vpc_id: "NonEmptyString",
    #           cluster_create_time: "NonEmptyString",
    #           master_username: "NonEmptyString",
    #           engine_version: "NonEmptyString",
    #           license_model: "NonEmptyString",
    #           snapshot_type: "NonEmptyString",
    #           percent_progress: 1,
    #           storage_encrypted: false,
    #           kms_key_id: "NonEmptyString",
    #           db_cluster_identifier: "NonEmptyString",
    #           db_cluster_snapshot_identifier: "NonEmptyString",
    #           iam_database_authentication_enabled: false,
    #         },
    #         aws_rds_db_cluster: {
    #           allocated_storage: 1,
    #           availability_zones: ["NonEmptyString"],
    #           backup_retention_period: 1,
    #           database_name: "NonEmptyString",
    #           status: "NonEmptyString",
    #           endpoint: "NonEmptyString",
    #           reader_endpoint: "NonEmptyString",
    #           custom_endpoints: ["NonEmptyString"],
    #           multi_az: false,
    #           engine: "NonEmptyString",
    #           engine_version: "NonEmptyString",
    #           port: 1,
    #           master_username: "NonEmptyString",
    #           preferred_backup_window: "NonEmptyString",
    #           preferred_maintenance_window: "NonEmptyString",
    #           read_replica_identifiers: ["NonEmptyString"],
    #           vpc_security_groups: [
    #             {
    #               vpc_security_group_id: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           hosted_zone_id: "NonEmptyString",
    #           storage_encrypted: false,
    #           kms_key_id: "NonEmptyString",
    #           db_cluster_resource_id: "NonEmptyString",
    #           associated_roles: [
    #             {
    #               role_arn: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           cluster_create_time: "NonEmptyString",
    #           enabled_cloud_watch_logs_exports: ["NonEmptyString"],
    #           engine_mode: "NonEmptyString",
    #           deletion_protection: false,
    #           http_endpoint_enabled: false,
    #           activity_stream_status: "NonEmptyString",
    #           copy_tags_to_snapshot: false,
    #           cross_account_clone: false,
    #           domain_memberships: [
    #             {
    #               domain: "NonEmptyString",
    #               status: "NonEmptyString",
    #               fqdn: "NonEmptyString",
    #               iam_role_name: "NonEmptyString",
    #             },
    #           ],
    #           db_cluster_parameter_group: "NonEmptyString",
    #           db_subnet_group: "NonEmptyString",
    #           db_cluster_option_group_memberships: [
    #             {
    #               db_cluster_option_group_name: "NonEmptyString",
    #               status: "NonEmptyString",
    #             },
    #           ],
    #           db_cluster_identifier: "NonEmptyString",
    #           db_cluster_members: [
    #             {
    #               is_cluster_writer: false,
    #               promotion_tier: 1,
    #               db_instance_identifier: "NonEmptyString",
    #               db_cluster_parameter_group_status: "NonEmptyString",
    #             },
    #           ],
    #           iam_database_authentication_enabled: false,
    #         },
    #         container: {
    #           name: "NonEmptyString",
    #           image_id: "NonEmptyString",
    #           image_name: "NonEmptyString",
    #           launched_at: "NonEmptyString",
    #         },
    #         other: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] aws_auto_scaling_auto_scaling_group
    #   Details for an autoscaling group.
    #   @return [Types::AwsAutoScalingAutoScalingGroupDetails]
    #
    # @!attribute [rw] aws_code_build_project
    #   Details for an AWS CodeBuild project.
    #   @return [Types::AwsCodeBuildProjectDetails]
    #
    # @!attribute [rw] aws_cloud_front_distribution
    #   Details about a CloudFront distribution.
    #   @return [Types::AwsCloudFrontDistributionDetails]
    #
    # @!attribute [rw] aws_ec2_instance
    #   Details about an Amazon EC2 instance related to a finding.
    #   @return [Types::AwsEc2InstanceDetails]
    #
    # @!attribute [rw] aws_ec2_network_interface
    #   Details for an Amazon EC2 network interface.
    #   @return [Types::AwsEc2NetworkInterfaceDetails]
    #
    # @!attribute [rw] aws_ec2_security_group
    #   Details for an EC2 security group.
    #   @return [Types::AwsEc2SecurityGroupDetails]
    #
    # @!attribute [rw] aws_ec2_volume
    #   Details for an EC2 volume.
    #   @return [Types::AwsEc2VolumeDetails]
    #
    # @!attribute [rw] aws_ec2_vpc
    #   Details for an EC2 VPC.
    #   @return [Types::AwsEc2VpcDetails]
    #
    # @!attribute [rw] aws_ec2_eip
    #   Details about an Elastic IP address.
    #   @return [Types::AwsEc2EipDetails]
    #
    # @!attribute [rw] aws_elbv_2_load_balancer
    #   Details about a load balancer.
    #   @return [Types::AwsElbv2LoadBalancerDetails]
    #
    # @!attribute [rw] aws_elasticsearch_domain
    #   Details for an Elasticsearch domain.
    #   @return [Types::AwsElasticsearchDomainDetails]
    #
    # @!attribute [rw] aws_s3_bucket
    #   Details about an Amazon S3 bucket related to a finding.
    #   @return [Types::AwsS3BucketDetails]
    #
    # @!attribute [rw] aws_s3_object
    #   Details about an Amazon S3 object related to a finding.
    #   @return [Types::AwsS3ObjectDetails]
    #
    # @!attribute [rw] aws_secrets_manager_secret
    #   Details about a Secrets Manager secret.
    #   @return [Types::AwsSecretsManagerSecretDetails]
    #
    # @!attribute [rw] aws_iam_access_key
    #   Details about an IAM access key related to a finding.
    #   @return [Types::AwsIamAccessKeyDetails]
    #
    # @!attribute [rw] aws_iam_user
    #   Details about an IAM user.
    #   @return [Types::AwsIamUserDetails]
    #
    # @!attribute [rw] aws_iam_policy
    #   Details about an IAM permissions policy.
    #   @return [Types::AwsIamPolicyDetails]
    #
    # @!attribute [rw] aws_api_gateway_v2_stage
    #   @return [Types::AwsApiGatewayV2StageDetails]
    #
    # @!attribute [rw] aws_api_gateway_v2_api
    #   @return [Types::AwsApiGatewayV2ApiDetails]
    #
    # @!attribute [rw] aws_dynamo_db_table
    #   Details about a DynamoDB table.
    #   @return [Types::AwsDynamoDbTableDetails]
    #
    # @!attribute [rw] aws_api_gateway_stage
    #   @return [Types::AwsApiGatewayStageDetails]
    #
    # @!attribute [rw] aws_api_gateway_rest_api
    #   @return [Types::AwsApiGatewayRestApiDetails]
    #
    # @!attribute [rw] aws_cloud_trail_trail
    #   @return [Types::AwsCloudTrailTrailDetails]
    #
    # @!attribute [rw] aws_certificate_manager_certificate
    #   @return [Types::AwsCertificateManagerCertificateDetails]
    #
    # @!attribute [rw] aws_redshift_cluster
    #   @return [Types::AwsRedshiftClusterDetails]
    #
    # @!attribute [rw] aws_elb_load_balancer
    #   @return [Types::AwsElbLoadBalancerDetails]
    #
    # @!attribute [rw] aws_iam_group
    #   @return [Types::AwsIamGroupDetails]
    #
    # @!attribute [rw] aws_iam_role
    #   Details about an IAM role.
    #   @return [Types::AwsIamRoleDetails]
    #
    # @!attribute [rw] aws_kms_key
    #   Details about a KMS key.
    #   @return [Types::AwsKmsKeyDetails]
    #
    # @!attribute [rw] aws_lambda_function
    #   Details about a Lambda function.
    #   @return [Types::AwsLambdaFunctionDetails]
    #
    # @!attribute [rw] aws_lambda_layer_version
    #   Details for a Lambda layer version.
    #   @return [Types::AwsLambdaLayerVersionDetails]
    #
    # @!attribute [rw] aws_rds_db_instance
    #   Details about an Amazon RDS database instance.
    #   @return [Types::AwsRdsDbInstanceDetails]
    #
    # @!attribute [rw] aws_sns_topic
    #   Details about an SNS topic.
    #   @return [Types::AwsSnsTopicDetails]
    #
    # @!attribute [rw] aws_sqs_queue
    #   Details about an SQS queue.
    #   @return [Types::AwsSqsQueueDetails]
    #
    # @!attribute [rw] aws_waf_web_acl
    #   Details for a WAF WebACL.
    #   @return [Types::AwsWafWebAclDetails]
    #
    # @!attribute [rw] aws_rds_db_snapshot
    #   Details about an Amazon RDS database snapshot.
    #   @return [Types::AwsRdsDbSnapshotDetails]
    #
    # @!attribute [rw] aws_rds_db_cluster_snapshot
    #   Details about an Amazon RDS database cluster snapshot.
    #   @return [Types::AwsRdsDbClusterSnapshotDetails]
    #
    # @!attribute [rw] aws_rds_db_cluster
    #   Details about an Amazon RDS database cluster.
    #   @return [Types::AwsRdsDbClusterDetails]
    #
    # @!attribute [rw] container
    #   Details about a container resource related to a finding.
    #   @return [Types::ContainerDetails]
    #
    # @!attribute [rw] other
    #   Details about a resource that are not available in a type-specific
    #   details object. Use the `Other` object in the following cases.
    #
    #   * The type-specific object does not contain all of the fields that
    #     you want to populate. In this case, first use the type-specific
    #     object to populate those fields. Use the `Other` object to
    #     populate the fields that are missing from the type-specific
    #     object.
    #
    #   * The resource type does not have a corresponding object. This
    #     includes resources for which the type is `Other`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceDetails AWS API Documentation
    #
    class ResourceDetails < Struct.new(
      :aws_auto_scaling_auto_scaling_group,
      :aws_code_build_project,
      :aws_cloud_front_distribution,
      :aws_ec2_instance,
      :aws_ec2_network_interface,
      :aws_ec2_security_group,
      :aws_ec2_volume,
      :aws_ec2_vpc,
      :aws_ec2_eip,
      :aws_elbv_2_load_balancer,
      :aws_elasticsearch_domain,
      :aws_s3_bucket,
      :aws_s3_object,
      :aws_secrets_manager_secret,
      :aws_iam_access_key,
      :aws_iam_user,
      :aws_iam_policy,
      :aws_api_gateway_v2_stage,
      :aws_api_gateway_v2_api,
      :aws_dynamo_db_table,
      :aws_api_gateway_stage,
      :aws_api_gateway_rest_api,
      :aws_cloud_trail_trail,
      :aws_certificate_manager_certificate,
      :aws_redshift_cluster,
      :aws_elb_load_balancer,
      :aws_iam_group,
      :aws_iam_role,
      :aws_kms_key,
      :aws_lambda_function,
      :aws_lambda_layer_version,
      :aws_rds_db_instance,
      :aws_sns_topic,
      :aws_sqs_queue,
      :aws_waf_web_acl,
      :aws_rds_db_snapshot,
      :aws_rds_db_cluster_snapshot,
      :aws_rds_db_cluster,
      :container,
      :other)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because we can't find the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the account that was not processed.
    #
    # @!attribute [rw] account_id
    #   An AWS account ID of the account that was not processed.
    #   @return [String]
    #
    # @!attribute [rw] processing_result
    #   The reason that the account was not processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Result AWS API Documentation
    #
    class Result < Struct.new(
      :account_id,
      :processing_result)
      SENSITIVE = []
      include Aws::Structure
    end

    # The severity of the finding.
    #
    # The finding provider can provide the initial severity, but cannot
    # update it after that. The severity can only be updated by a master
    # account. It cannot be updated by a member account.
    #
    # The finding must have either `Label` or `Normalized` populated. If
    # only one of these attributes is populated, then Security Hub
    # automatically populates the other one. If neither attribute is
    # populated, then the finding is invalid. `Label` is the preferred
    # attribute.
    #
    # @note When making an API call, you may pass Severity
    #   data as a hash:
    #
    #       {
    #         product: 1.0,
    #         label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #         normalized: 1,
    #         original: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] product
    #   Deprecated. This attribute is being deprecated. Instead of providing
    #   `Product`, provide `Original`.
    #
    #   The native severity as defined by the AWS service or integrated
    #   partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #
    #   If you provide `Normalized` and do not provide `Label`, then `Label`
    #   is set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [String]
    #
    # @!attribute [rw] normalized
    #   Deprecated. The normalized severity of a finding. This attribute is
    #   being deprecated. Instead of providing `Normalized`, provide
    #   `Label`.
    #
    #   If you provide `Label` and do not provide `Normalized`, then
    #   `Normalized` is set automatically as follows.
    #
    #   * `INFORMATIONAL` - 0
    #
    #   * `LOW` - 1
    #
    #   * `MEDIUM` - 40
    #
    #   * `HIGH` - 70
    #
    #   * `CRITICAL` - 90
    #   @return [Integer]
    #
    # @!attribute [rw] original
    #   The native severity from the finding product that generated the
    #   finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Severity AWS API Documentation
    #
    class Severity < Struct.new(
      :product,
      :label,
      :normalized,
      :original)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates to the severity information for a finding.
    #
    # @note When making an API call, you may pass SeverityUpdate
    #   data as a hash:
    #
    #       {
    #         normalized: 1,
    #         product: 1.0,
    #         label: "INFORMATIONAL", # accepts INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL
    #       }
    #
    # @!attribute [rw] normalized
    #   The normalized severity for the finding. This attribute is to be
    #   deprecated in favor of `Label`.
    #
    #   If you provide `Normalized` and do not provide `Label`, `Label` is
    #   set automatically as follows.
    #
    #   * 0 - `INFORMATIONAL`
    #
    #   * 1–39 - `LOW`
    #
    #   * 40–69 - `MEDIUM`
    #
    #   * 70–89 - `HIGH`
    #
    #   * 90–100 - `CRITICAL`
    #   @return [Integer]
    #
    # @!attribute [rw] product
    #   The native severity as defined by the AWS service or integrated
    #   partner product that generated the finding.
    #   @return [Float]
    #
    # @!attribute [rw] label
    #   The severity value of the finding. The allowed values are the
    #   following.
    #
    #   * `INFORMATIONAL` - No issue was found.
    #
    #   * `LOW` - The issue does not require action on its own.
    #
    #   * `MEDIUM` - The issue must be addressed but not urgently.
    #
    #   * `HIGH` - The issue must be addressed as a priority.
    #
    #   * `CRITICAL` - The issue must be remediated immediately to avoid it
    #     escalating.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SeverityUpdate AWS API Documentation
    #
    class SeverityUpdate < Struct.new(
      :normalized,
      :product,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a software package.
    #
    # @note When making an API call, you may pass SoftwarePackage
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString",
    #         version: "NonEmptyString",
    #         epoch: "NonEmptyString",
    #         release: "NonEmptyString",
    #         architecture: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the software package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the software package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the software package.
    #   @return [String]
    #
    # @!attribute [rw] release
    #   The release of the software package.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The architecture used for the software package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SoftwarePackage AWS API Documentation
    #
    class SoftwarePackage < Struct.new(
      :name,
      :version,
      :epoch,
      :release,
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of finding attributes used to sort findings.
    #
    # @note When making an API call, you may pass SortCriterion
    #   data as a hash:
    #
    #       {
    #         field: "NonEmptyString",
    #         sort_order: "asc", # accepts asc, desc
    #       }
    #
    # @!attribute [rw] field
    #   The finding attribute used to sort findings.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order used to sort findings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/SortCriterion AWS API Documentation
    #
    class SortCriterion < Struct.new(
      :field,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a specific standard.
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the standard.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the standard.
    #   @return [String]
    #
    # @!attribute [rw] enabled_by_default
    #   Whether the standard is enabled by default. When Security Hub is
    #   enabled from the console, if a standard is enabled by default, the
    #   check box for that standard is selected by default.
    #
    #   When Security Hub is enabled using the `EnableSecurityHub` API
    #   operation, the standard is enabled by default unless
    #   `EnableDefaultStandards` is set to `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Standard AWS API Documentation
    #
    class Standard < Struct.new(
      :standards_arn,
      :name,
      :description,
      :enabled_by_default)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an individual security standard control.
    #
    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The current status of the security standard control. Indicates
    #   whether the control is enabled or disabled. Security Hub does not
    #   check against disabled controls.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   The reason provided for the most recent change in status for the
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] control_status_updated_at
    #   The date and time that the status of the security standard control
    #   was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] control_id
    #   The identifier of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The longer description of the security standard control. Provides
    #   information about what the control is checking for.
    #   @return [String]
    #
    # @!attribute [rw] remediation_url
    #   A link to remediation information for the control in the Security
    #   Hub user documentation.
    #   @return [String]
    #
    # @!attribute [rw] severity_rating
    #   The severity of findings generated from this security standard
    #   control.
    #
    #   The finding severity is based on an assessment of how easy it would
    #   be to compromise AWS resources if the issue is detected.
    #   @return [String]
    #
    # @!attribute [rw] related_requirements
    #   The list of requirements that are related to this control.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsControl AWS API Documentation
    #
    class StandardsControl < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason,
      :control_status_updated_at,
      :control_id,
      :title,
      :description,
      :remediation_url,
      :severity_rating,
      :related_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource that represents your subscription to a supported standard.
    #
    # @!attribute [rw] standards_subscription_arn
    #   The ARN of a resource that represents your subscription to a
    #   supported standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_arn
    #   The ARN of a standard.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] standards_status
    #   The status of the standards subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscription AWS API Documentation
    #
    class StandardsSubscription < Struct.new(
      :standards_subscription_arn,
      :standards_arn,
      :standards_input,
      :standards_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The standard that you want to enable.
    #
    # @note When making an API call, you may pass StandardsSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         standards_arn: "NonEmptyString", # required
    #         standards_input: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] standards_arn
    #   The ARN of the standard that you want to enable. To view the list of
    #   available standards and their ARNs, use the ` DescribeStandards `
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] standards_input
    #   A key-value pair of input for the standard.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StandardsSubscriptionRequest AWS API Documentation
    #
    class StandardsSubscriptionRequest < Struct.new(
      :standards_arn,
      :standards_input)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides additional context for the value of `Compliance.Status`.
    #
    # @note When making an API call, you may pass StatusReason
    #   data as a hash:
    #
    #       {
    #         reason_code: "NonEmptyString", # required
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] reason_code
    #   A code that represents a reason for the control status. For the list
    #   of status reason codes and their meanings, see [Standards-related
    #   information in the ASFF][1] in the *AWS Security Hub User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The corresponding description for the status reason code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StatusReason AWS API Documentation
    #
    class StatusReason < Struct.new(
      :reason_code,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string filter for querying findings.
    #
    # @note When making an API call, you may pass StringFilter
    #   data as a hash:
    #
    #       {
    #         value: "NonEmptyString",
    #         comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #       }
    #
    # @!attribute [rw] value
    #   The string filter value. Filter values are case sensitive. For
    #   example, the product name for control-based findings is `Security
    #   Hub`. If you provide `security hub` as the filter text, then there
    #   is no match.
    #   @return [String]
    #
    # @!attribute [rw] comparison
    #   The condition to apply to a string value when querying for findings.
    #   To search for values that contain the filter criteria value, use one
    #   of the following comparison operators:
    #
    #   * To search for values that exactly match the filter value, use
    #     `EQUALS`.
    #
    #     For example, the filter `ResourceType EQUALS AwsEc2SecurityGroup`
    #     only matches findings that have a resource type of
    #     `AwsEc2SecurityGroup`.
    #
    #   * To search for values that start with the filter value, use
    #     `PREFIX`.
    #
    #     For example, the filter `ResourceType PREFIX AwsIam` matches
    #     findings that have a resource type that starts with `AwsIam`.
    #     Findings with a resource type of `AwsIamPolicy`, `AwsIamRole`, or
    #     `AwsIamUser` would all match.
    #
    #   `EQUALS` and `PREFIX` filters on the same field are joined by `OR`.
    #   A finding matches if it matches any one of those filters.
    #
    #   To search for values that do not contain the filter criteria value,
    #   use one of the following comparison operators:
    #
    #   * To search for values that do not exactly match the filter value,
    #     use `NOT_EQUALS`.
    #
    #     For example, the filter `ResourceType NOT_EQUALS AwsIamPolicy`
    #     matches findings that have a resource type other than
    #     `AwsIamPolicy`.
    #
    #   * To search for values that do not start with the filter value, use
    #     `PREFIX_NOT_EQUALS`.
    #
    #     For example, the filter `ResourceType PREFIX_NOT_EQUALS AwsIam`
    #     matches findings that have a resource type that does not start
    #     with `AwsIam`. Findings with a resource type of `AwsIamPolicy`,
    #     `AwsIamRole`, or `AwsIamUser` would all be excluded from the
    #     results.
    #
    #   `NOT_EQUALS` and `PREFIX_NOT_EQUALS` filters on the same field are
    #   joined by `AND`. A finding matches only if it matches all of those
    #   filters.
    #
    #   For filters on the same field, you cannot provide both an `EQUALS`
    #   filter and a `NOT_EQUALS` or `PREFIX_NOT_EQUALS` filter. Combining
    #   filters in this way always returns an error, even if the provided
    #   filter values would return valid results.
    #
    #   You can combine `PREFIX` filters with `NOT_EQUALS` or
    #   `PREFIX_NOT_EQUALS` filters for the same field. Security Hub first
    #   processes the `PREFIX` filters, then the `NOT_EQUALS` or
    #   `PREFIX_NOT_EQUALS` filters.
    #
    #   For example, for the following filter, Security Hub first identifies
    #   findings that have resource types that start with either `AwsIAM` or
    #   `AwsEc2`. It then excludes findings that have a resource type of
    #   `AwsIamPolicy` and findings that have a resource type of
    #   `AwsEc2NetworkInterface`.
    #
    #   * `ResourceType PREFIX AwsIam`
    #
    #   * `ResourceType PREFIX AwsEc2`
    #
    #   * `ResourceType NOT_EQUALS AwsIamPolicy`
    #
    #   * `ResourceType NOT_EQUALS AwsEc2NetworkInterface`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :value,
      :comparison)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to apply the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details about the threat intelligence related to a finding.
    #
    # @note When making an API call, you may pass ThreatIntelIndicator
    #   data as a hash:
    #
    #       {
    #         type: "DOMAIN", # accepts DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL
    #         value: "NonEmptyString",
    #         category: "BACKDOOR", # accepts BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER
    #         last_observed_at: "NonEmptyString",
    #         source: "NonEmptyString",
    #         source_url: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   The type of threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of a threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] last_observed_at
    #   Indicates when the most recent instance of a threat intelligence
    #   indicator was observed.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the threat intelligence indicator.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The URL to the page or site where you can get more information about
    #   the threat intelligence indicator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/ThreatIntelIndicator AWS API Documentation
    #
    class ThreatIntelIndicator < Struct.new(
      :type,
      :value,
      :category,
      :last_observed_at,
      :source,
      :source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys associated with the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateActionTargetRequest
    #   data as a hash:
    #
    #       {
    #         action_target_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         description: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] action_target_arn
    #   The ARN of the custom action target to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the custom action target.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the custom action target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetRequest AWS API Documentation
    #
    class UpdateActionTargetRequest < Struct.new(
      :action_target_arn,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateActionTargetResponse AWS API Documentation
    #
    class UpdateActionTargetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateFindingsRequest
    #   data as a hash:
    #
    #       {
    #         filters: { # required
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         note: {
    #           text: "NonEmptyString", # required
    #           updated_by: "NonEmptyString", # required
    #         },
    #         record_state: "ACTIVE", # accepts ACTIVE, ARCHIVED
    #       }
    #
    # @!attribute [rw] filters
    #   A collection of attributes that specify which findings you want to
    #   update.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] note
    #   The updated note for the finding.
    #   @return [Types::NoteUpdate]
    #
    # @!attribute [rw] record_state
    #   The updated record state for the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsRequest AWS API Documentation
    #
    class UpdateFindingsRequest < Struct.new(
      :filters,
      :note,
      :record_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateFindingsResponse AWS API Documentation
    #
    class UpdateFindingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateInsightRequest
    #   data as a hash:
    #
    #       {
    #         insight_arn: "NonEmptyString", # required
    #         name: "NonEmptyString",
    #         filters: {
    #           product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           aws_account_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           generator_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           first_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           severity_product: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_normalized: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           severity_label: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           confidence: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           criticality: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           title: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           description: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           recommendation_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           product_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           product_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           company_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           user_defined_fields: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           malware_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           malware_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_direction: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_protocol: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_source_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_source_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_source_mac: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           network_destination_ip_v4: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_ip_v6: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           network_destination_port: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           network_destination_domain: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_path: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           process_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_parent_pid: [
    #             {
    #               gte: 1.0,
    #               lte: 1.0,
    #               eq: 1.0,
    #             },
    #           ],
    #           process_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           process_terminated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_value: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_category: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_last_observed_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           threat_intel_indicator_source: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           threat_intel_indicator_source_url: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_partition: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_region: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_tags: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_type: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v4_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_ip_v6_addresses: [
    #             {
    #               cidr: "NonEmptyString",
    #             },
    #           ],
    #           resource_aws_ec2_instance_key_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_iam_instance_profile_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_vpc_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_subnet_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_ec2_instance_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_s3_bucket_owner_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_user_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_aws_iam_access_key_created_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_container_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_image_name: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           resource_container_launched_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           resource_details_other: [
    #             {
    #               key: "NonEmptyString",
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, NOT_EQUALS
    #             },
    #           ],
    #           compliance_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           verification_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           workflow_status: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           record_state: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_product_arn: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           related_findings_id: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_text: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           note_updated_at: [
    #             {
    #               start: "NonEmptyString",
    #               end: "NonEmptyString",
    #               date_range: {
    #                 value: 1,
    #                 unit: "DAYS", # accepts DAYS
    #               },
    #             },
    #           ],
    #           note_updated_by: [
    #             {
    #               value: "NonEmptyString",
    #               comparison: "EQUALS", # accepts EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS
    #             },
    #           ],
    #           keyword: [
    #             {
    #               value: "NonEmptyString",
    #             },
    #           ],
    #         },
    #         group_by_attribute: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] insight_arn
    #   The ARN of the insight that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the insight.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The updated filters that define this insight.
    #   @return [Types::AwsSecurityFindingFilters]
    #
    # @!attribute [rw] group_by_attribute
    #   The updated `GroupBy` attribute that defines this insight.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightRequest AWS API Documentation
    #
    class UpdateInsightRequest < Struct.new(
      :insight_arn,
      :name,
      :filters,
      :group_by_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateInsightResponse AWS API Documentation
    #
    class UpdateInsightResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateSecurityHubConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         auto_enable_controls: false,
    #       }
    #
    # @!attribute [rw] auto_enable_controls
    #   Whether to automatically enable new controls when they are added to
    #   standards that are enabled.
    #
    #   By default, this is set to `true`, and new controls are enabled
    #   automatically. To not automatically enable new controls, set this to
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfigurationRequest AWS API Documentation
    #
    class UpdateSecurityHubConfigurationRequest < Struct.new(
      :auto_enable_controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateSecurityHubConfigurationResponse AWS API Documentation
    #
    class UpdateSecurityHubConfigurationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateStandardsControlRequest
    #   data as a hash:
    #
    #       {
    #         standards_control_arn: "NonEmptyString", # required
    #         control_status: "ENABLED", # accepts ENABLED, DISABLED
    #         disabled_reason: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] standards_control_arn
    #   The ARN of the security standard control to enable or disable.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The updated status of the security standard control.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   A description of the reason why you are disabling a security
    #   standard control. If you are disabling a control, then this is
    #   required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlRequest AWS API Documentation
    #
    class UpdateStandardsControlRequest < Struct.new(
      :standards_control_arn,
      :control_status,
      :disabled_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/UpdateStandardsControlResponse AWS API Documentation
    #
    class UpdateStandardsControlResponse < Aws::EmptyStructure; end

    # A vulnerability associated with a finding.
    #
    # @note When making an API call, you may pass Vulnerability
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #         vulnerable_packages: [
    #           {
    #             name: "NonEmptyString",
    #             version: "NonEmptyString",
    #             epoch: "NonEmptyString",
    #             release: "NonEmptyString",
    #             architecture: "NonEmptyString",
    #           },
    #         ],
    #         cvss: [
    #           {
    #             version: "NonEmptyString",
    #             base_score: 1.0,
    #             base_vector: "NonEmptyString",
    #           },
    #         ],
    #         related_vulnerabilities: ["NonEmptyString"],
    #         vendor: {
    #           name: "NonEmptyString", # required
    #           url: "NonEmptyString",
    #           vendor_severity: "NonEmptyString",
    #           vendor_created_at: "NonEmptyString",
    #           vendor_updated_at: "NonEmptyString",
    #         },
    #         reference_urls: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   List of software packages that have the vulnerability.
    #   @return [Array<Types::SoftwarePackage>]
    #
    # @!attribute [rw] cvss
    #   CVSS scores from the advisory related to the vulnerability.
    #   @return [Array<Types::Cvss>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   List of vulnerabilities that are related to this vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vendor
    #   Information about the vendor that generates the vulnerability
    #   report.
    #   @return [Types::VulnerabilityVendor]
    #
    # @!attribute [rw] reference_urls
    #   A list of URLs that provide additional information about the
    #   vulnerability.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Vulnerability AWS API Documentation
    #
    class Vulnerability < Struct.new(
      :id,
      :vulnerable_packages,
      :cvss,
      :related_vulnerabilities,
      :vendor,
      :reference_urls)
      SENSITIVE = []
      include Aws::Structure
    end

    # A vendor that generates a vulnerability report.
    #
    # @note When making an API call, you may pass VulnerabilityVendor
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         url: "NonEmptyString",
    #         vendor_severity: "NonEmptyString",
    #         vendor_created_at: "NonEmptyString",
    #         vendor_updated_at: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the vendor.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the vulnerability advisory.
    #   @return [String]
    #
    # @!attribute [rw] vendor_severity
    #   The severity that the vendor assigned to the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   Indicates when the vulnerability advisory was created.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @!attribute [rw] vendor_updated_at
    #   Indicates when the vulnerability advisory was last updated.
    #
    #   Uses the `date-time` format specified in [RFC 3339 section 5.6,
    #   Internet Date/Time Format][1]. The value cannot contain spaces. For
    #   example, `2020-03-22T13:22:13.933Z`.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3339#section-5.6
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/VulnerabilityVendor AWS API Documentation
    #
    class VulnerabilityVendor < Struct.new(
      :name,
      :url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the action that CloudFront or AWS WAF takes when a web
    # request matches the conditions in the rule.
    #
    # @note When making an API call, you may pass WafAction
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   Specifies how you want AWS WAF to respond to requests that match the
    #   settings in a rule.
    #
    #   Valid settings include the following:
    #
    #   * `ALLOW` - AWS WAF allows requests
    #
    #   * `BLOCK` - AWS WAF blocks requests
    #
    #   * `COUNT` - AWS WAF increments a counter of the requests that match
    #     all of the conditions in the rule. AWS WAF then continues to
    #     inspect the web request based on the remaining rules in the web
    #     ACL. You can't specify `COUNT` for the default action for a
    #     WebACL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafAction AWS API Documentation
    #
    class WafAction < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a rule to exclude from a rule group.
    #
    # @note When making an API call, you may pass WafExcludedRule
    #   data as a hash:
    #
    #       {
    #         rule_id: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] rule_id
    #   The unique identifier for the rule to exclude from the rule group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafExcludedRule AWS API Documentation
    #
    class WafExcludedRule < Struct.new(
      :rule_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an override action for a rule.
    #
    # @note When making an API call, you may pass WafOverrideAction
    #   data as a hash:
    #
    #       {
    #         type: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] type
    #   `COUNT` overrides the action specified by the individual rule within
    #   a `RuleGroup` .
    #
    #   If set to `NONE`, the rule's action takes place.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WafOverrideAction AWS API Documentation
    #
    class WafOverrideAction < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the status of the investigation into a
    # finding.
    #
    # @note When making an API call, you may pass Workflow
    #   data as a hash:
    #
    #       {
    #         status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #       }
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The allowed values
    #   are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/Workflow AWS API Documentation
    #
    class Workflow < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to update information about the investigation into the finding.
    #
    # @note When making an API call, you may pass WorkflowUpdate
    #   data as a hash:
    #
    #       {
    #         status: "NEW", # accepts NEW, NOTIFIED, RESOLVED, SUPPRESSED
    #       }
    #
    # @!attribute [rw] status
    #   The status of the investigation into the finding. The allowed values
    #   are the following.
    #
    #   * `NEW` - The initial state of a finding, before it is reviewed.
    #
    #   * `NOTIFIED` - Indicates that you notified the resource owner about
    #     the security issue. Used when the initial reviewer is not the
    #     resource owner, and needs intervention from the resource owner.
    #
    #   * `RESOLVED` - The finding was reviewed and remediated and is now
    #     considered resolved.
    #
    #   * `SUPPRESSED` - The finding will not be reviewed again and will not
    #     be acted upon.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityhub-2018-10-26/WorkflowUpdate AWS API Documentation
    #
    class WorkflowUpdate < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
