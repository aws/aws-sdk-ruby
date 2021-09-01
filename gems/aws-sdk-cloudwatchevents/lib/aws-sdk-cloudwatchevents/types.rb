# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchEvents
  module Types

    # @note When making an API call, you may pass ActivateEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to activate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ActivateEventSourceRequest AWS API Documentation
    #
    class ActivateEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about an API destination.
    #
    # @!attribute [rw] api_destination_arn
    #   The ARN of the API destination.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API destination.
    #   @return [String]
    #
    # @!attribute [rw] api_destination_state
    #   The state of the API destination.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection specified for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] invocation_endpoint
    #   The URL to the endpoint for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method to use to connect to the HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] invocation_rate_limit_per_second
    #   The maximum number of invocations per second to send to the HTTP
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the API destination was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the API destination was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ApiDestination AWS API Documentation
    #
    class ApiDestination < Struct.new(
      :api_destination_arn,
      :name,
      :api_destination_state,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An `Archive` object that contains details about an archive.
    #
    # @!attribute [rw] archive_name
    #   The name of the archive.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the event bus associated with the archive. Only events
    #   from this event bus are sent to the archive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the archive.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A description for the reason that the archive is in the current
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] retention_days
    #   The number of days to retain events in the archive before they are
    #   deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] size_bytes
    #   The size of the archive, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] event_count
    #   The number of events in the archive.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time stamp for the time that the archive was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Archive AWS API Documentation
    #
    class Archive < Struct.new(
      :archive_name,
      :event_source_arn,
      :state,
      :state_reason,
      :retention_days,
      :size_bytes,
      :event_count,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure specifies the VPC subnets and security groups for the
    # task, and whether a public IP address is to be used. This structure is
    # relevant only for ECS tasks that use the `awsvpc` network mode.
    #
    # @note When making an API call, you may pass AwsVpcConfiguration
    #   data as a hash:
    #
    #       {
    #         subnets: ["String"], # required
    #         security_groups: ["String"],
    #         assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] subnets
    #   Specifies the subnets associated with the task. These subnets must
    #   all be in the same VPC. You can specify as many as 16 subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   Specifies the security groups associated with the task. These
    #   security groups must all be in the same VPC. You can specify as many
    #   as five security groups. If you do not specify a security group, the
    #   default security group for the VPC is used.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   Specifies whether the task's elastic network interface receives a
    #   public IP address. You can specify `ENABLED` only when `LaunchType`
    #   in `EcsParameters` is set to `FARGATE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/AwsVpcConfiguration AWS API Documentation
    #
    class AwsVpcConfiguration < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # The array properties for the submitted job, such as the size of the
    # array. The array size can be between 2 and 10,000. If you specify
    # array properties for a job, it becomes an array job. This parameter is
    # used only if the target is an Batch job.
    #
    # @note When making an API call, you may pass BatchArrayProperties
    #   data as a hash:
    #
    #       {
    #         size: 1,
    #       }
    #
    # @!attribute [rw] size
    #   The size of the array, if this is an array batch job. Valid values
    #   are integers between 2 and 10,000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchArrayProperties AWS API Documentation
    #
    class BatchArrayProperties < Struct.new(
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an Batch job.
    #
    # @note When making an API call, you may pass BatchParameters
    #   data as a hash:
    #
    #       {
    #         job_definition: "String", # required
    #         job_name: "String", # required
    #         array_properties: {
    #           size: 1,
    #         },
    #         retry_strategy: {
    #           attempts: 1,
    #         },
    #       }
    #
    # @!attribute [rw] job_definition
    #   The ARN or name of the job definition to use if the event target is
    #   an Batch job. This job definition must already exist.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name to use for this execution of the job, if the target is an
    #   Batch job.
    #   @return [String]
    #
    # @!attribute [rw] array_properties
    #   The array properties for the submitted job, such as the size of the
    #   array. The array size can be between 2 and 10,000. If you specify
    #   array properties for a job, it becomes an array job. This parameter
    #   is used only if the target is an Batch job.
    #   @return [Types::BatchArrayProperties]
    #
    # @!attribute [rw] retry_strategy
    #   The retry strategy to use for failed jobs, if the target is an Batch
    #   job. The retry strategy is the number of times to retry the failed
    #   job execution. Valid values are 1–10. When you specify a retry
    #   strategy here, it overrides the retry strategy defined in the job
    #   definition.
    #   @return [Types::BatchRetryStrategy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchParameters AWS API Documentation
    #
    class BatchParameters < Struct.new(
      :job_definition,
      :job_name,
      :array_properties,
      :retry_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry strategy to use for failed jobs, if the target is an Batch
    # job. If you specify a retry strategy here, it overrides the retry
    # strategy defined in the job definition.
    #
    # @note When making an API call, you may pass BatchRetryStrategy
    #   data as a hash:
    #
    #       {
    #         attempts: 1,
    #       }
    #
    # @!attribute [rw] attempts
    #   The number of times to attempt to retry, if the job fails. Valid
    #   values are 1–10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/BatchRetryStrategy AWS API Documentation
    #
    class BatchRetryStrategy < Struct.new(
      :attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelReplayRequest
    #   data as a hash:
    #
    #       {
    #         replay_name: "ReplayName", # required
    #       }
    #
    # @!attribute [rw] replay_name
    #   The name of the replay to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CancelReplayRequest AWS API Documentation
    #
    class CancelReplayRequest < Struct.new(
      :replay_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replay_arn
    #   The ARN of the replay to cancel.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the replay is in the current state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CancelReplayResponse AWS API Documentation
    #
    class CancelReplayResponse < Struct.new(
      :replay_arn,
      :state,
      :state_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a capacity provider strategy. To learn more, see
    # [CapacityProviderStrategyItem][1] in the Amazon ECS API Reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CapacityProviderStrategyItem.html
    #
    # @note When making an API call, you may pass CapacityProviderStrategyItem
    #   data as a hash:
    #
    #       {
    #         capacity_provider: "CapacityProvider", # required
    #         weight: 1,
    #         base: 1,
    #       }
    #
    # @!attribute [rw] capacity_provider
    #   The short name of the capacity provider.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight value designates the relative percentage of the total
    #   number of tasks launched that should use the specified capacity
    #   provider. The weight value is taken into consideration after the
    #   base value, if defined, is satisfied.
    #   @return [Integer]
    #
    # @!attribute [rw] base
    #   The base value designates how many tasks, at a minimum, to run on
    #   the specified capacity provider. Only one capacity provider in a
    #   capacity provider strategy can have a base defined. If no value is
    #   specified, the default value of 0 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CapacityProviderStrategyItem AWS API Documentation
    #
    class CapacityProviderStrategyItem < Struct.new(
      :capacity_provider,
      :weight,
      :base)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is concurrent modification on a rule, target, archive, or
    # replay.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Aws::EmptyStructure; end

    # A JSON string which you can use to limit the event bus permissions you
    # are granting to only accounts that fulfill the condition. Currently,
    # the only supported condition is membership in a certain Amazon Web
    # Services organization. The string must contain `Type`, `Key`, and
    # `Value` fields. The `Value` field specifies the ID of the Amazon Web
    # Services organization. Following is an example value for `Condition`\:
    #
    # `'\{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value":
    # "o-1234567890"\}'`
    #
    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         type: "String", # required
    #         key: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] type
    #   Specifies the type of condition. Currently the only supported value
    #   is `StringEquals`.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   Specifies the key for the condition. Currently the only supported
    #   key is `aws:PrincipalOrgID`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the value for the key. Currently, this must be the ID of
    #   the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :type,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a connection.
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the connection is in the connection state.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The authorization type specified for the connection.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_authorized_time
    #   A time stamp for the time that the connection was last authorized.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :connection_arn,
      :name,
      :connection_state,
      :state_reason,
      :authorization_type,
      :creation_time,
      :last_modified_time,
      :last_authorized_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the authorization parameters for the connection if API Key is
    # specified as the authorization type.
    #
    # @!attribute [rw] api_key_name
    #   The name of the header to use for the `APIKeyValue` used for
    #   authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionApiKeyAuthResponseParameters AWS API Documentation
    #
    class ConnectionApiKeyAuthResponseParameters < Struct.new(
      :api_key_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the authorization parameters to use for the connection.
    #
    # @!attribute [rw] basic_auth_parameters
    #   The authorization parameters for Basic authorization.
    #   @return [Types::ConnectionBasicAuthResponseParameters]
    #
    # @!attribute [rw] o_auth_parameters
    #   The OAuth parameters to use for authorization.
    #   @return [Types::ConnectionOAuthResponseParameters]
    #
    # @!attribute [rw] api_key_auth_parameters
    #   The API Key parameters to use for authorization.
    #   @return [Types::ConnectionApiKeyAuthResponseParameters]
    #
    # @!attribute [rw] invocation_http_parameters
    #   Additional parameters for the connection that are passed through
    #   with every invocation to the HTTP endpoint.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionAuthResponseParameters AWS API Documentation
    #
    class ConnectionAuthResponseParameters < Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the authorization parameters for the connection if Basic is
    # specified as the authorization type.
    #
    # @!attribute [rw] username
    #   The user name to use for Basic authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionBasicAuthResponseParameters AWS API Documentation
    #
    class ConnectionBasicAuthResponseParameters < Struct.new(
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional parameter included in the body. You can include up to 100
    # additional body parameters per request. An event payload cannot exceed
    # 64 KB.
    #
    # @note When making an API call, you may pass ConnectionBodyParameter
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #         is_value_secret: false,
    #       }
    #
    # @!attribute [rw] key
    #   The key for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the key.
    #   @return [String]
    #
    # @!attribute [rw] is_value_secret
    #   Specified whether the value is secret.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionBodyParameter AWS API Documentation
    #
    class ConnectionBodyParameter < Struct.new(
      :key,
      :value,
      :is_value_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional parameter included in the header. You can include up to 100
    # additional header parameters per request. An event payload cannot
    # exceed 64 KB.
    #
    # @note When making an API call, you may pass ConnectionHeaderParameter
    #   data as a hash:
    #
    #       {
    #         key: "HeaderKey",
    #         value: "HeaderValue",
    #         is_value_secret: false,
    #       }
    #
    # @!attribute [rw] key
    #   The key for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the key.
    #   @return [String]
    #
    # @!attribute [rw] is_value_secret
    #   Specified whether the value is a secret.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionHeaderParameter AWS API Documentation
    #
    class ConnectionHeaderParameter < Struct.new(
      :key,
      :value,
      :is_value_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains additional parameters for the connection.
    #
    # @note When making an API call, you may pass ConnectionHttpParameters
    #   data as a hash:
    #
    #       {
    #         header_parameters: [
    #           {
    #             key: "HeaderKey",
    #             value: "HeaderValue",
    #             is_value_secret: false,
    #           },
    #         ],
    #         query_string_parameters: [
    #           {
    #             key: "QueryStringKey",
    #             value: "QueryStringValue",
    #             is_value_secret: false,
    #           },
    #         ],
    #         body_parameters: [
    #           {
    #             key: "String",
    #             value: "String",
    #             is_value_secret: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] header_parameters
    #   Contains additional header parameters for the connection.
    #   @return [Array<Types::ConnectionHeaderParameter>]
    #
    # @!attribute [rw] query_string_parameters
    #   Contains additional query string parameters for the connection.
    #   @return [Array<Types::ConnectionQueryStringParameter>]
    #
    # @!attribute [rw] body_parameters
    #   Contains additional body string parameters for the connection.
    #   @return [Array<Types::ConnectionBodyParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionHttpParameters AWS API Documentation
    #
    class ConnectionHttpParameters < Struct.new(
      :header_parameters,
      :query_string_parameters,
      :body_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the client response parameters for the connection when OAuth
    # is specified as the authorization type.
    #
    # @!attribute [rw] client_id
    #   The client ID associated with the response to the connection
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionOAuthClientResponseParameters AWS API Documentation
    #
    class ConnectionOAuthClientResponseParameters < Struct.new(
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the response parameters when OAuth is specified as the
    # authorization type.
    #
    # @!attribute [rw] client_parameters
    #   A `ConnectionOAuthClientResponseParameters` object that contains
    #   details about the client parameters returned when OAuth is specified
    #   as the authorization type.
    #   @return [Types::ConnectionOAuthClientResponseParameters]
    #
    # @!attribute [rw] authorization_endpoint
    #   The URL to the HTTP endpoint that authorized the request.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method used to connect to the HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_http_parameters
    #   The additional HTTP parameters used for the OAuth authorization
    #   request.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionOAuthResponseParameters AWS API Documentation
    #
    class ConnectionOAuthResponseParameters < Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional query string parameter for the connection. You can include
    # up to 100 additional query string parameters per request. Each
    # additional parameter counts towards the event payload size, which
    # cannot exceed 64 KB.
    #
    # @note When making an API call, you may pass ConnectionQueryStringParameter
    #   data as a hash:
    #
    #       {
    #         key: "QueryStringKey",
    #         value: "QueryStringValue",
    #         is_value_secret: false,
    #       }
    #
    # @!attribute [rw] key
    #   The key for a query string parameter.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the key for the query string parameter.
    #   @return [String]
    #
    # @!attribute [rw] is_value_secret
    #   Specifies whether the value is secret.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ConnectionQueryStringParameter AWS API Documentation
    #
    class ConnectionQueryStringParameter < Struct.new(
      :key,
      :value,
      :is_value_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateApiDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApiDestinationName", # required
    #         description: "ApiDestinationDescription",
    #         connection_arn: "ConnectionArn", # required
    #         invocation_endpoint: "HttpsEndpoint", # required
    #         http_method: "POST", # required, accepts POST, GET, HEAD, OPTIONS, PUT, PATCH, DELETE
    #         invocation_rate_limit_per_second: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name for the API destination to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the API destination to create.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection to use for the API destination. The
    #   destination endpoint must support the authorization type specified
    #   for the connection.
    #   @return [String]
    #
    # @!attribute [rw] invocation_endpoint
    #   The URL to the HTTP invocation endpoint for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method to use for the request to the HTTP invocation endpoint.
    #   @return [String]
    #
    # @!attribute [rw] invocation_rate_limit_per_second
    #   The maximum number of requests per second to send to the HTTP
    #   invocation endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateApiDestinationRequest AWS API Documentation
    #
    class CreateApiDestinationRequest < Struct.new(
      :name,
      :description,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_destination_arn
    #   The ARN of the API destination that was created by the request.
    #   @return [String]
    #
    # @!attribute [rw] api_destination_state
    #   The state of the API destination that was created by the request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp indicating the time that the API destination was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp indicating the time that the API destination was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateApiDestinationResponse AWS API Documentation
    #
    class CreateApiDestinationResponse < Struct.new(
      :api_destination_arn,
      :api_destination_state,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateArchiveRequest
    #   data as a hash:
    #
    #       {
    #         archive_name: "ArchiveName", # required
    #         event_source_arn: "Arn", # required
    #         description: "ArchiveDescription",
    #         event_pattern: "EventPattern",
    #         retention_days: 1,
    #       }
    #
    # @!attribute [rw] archive_name
    #   The name for the archive to create.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the event bus that sends events to the archive.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the archive.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   An event pattern to use to filter events sent to the archive.
    #   @return [String]
    #
    # @!attribute [rw] retention_days
    #   The number of days to retain events for. Default value is 0. If set
    #   to 0, events are retained indefinitely
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateArchiveRequest AWS API Documentation
    #
    class CreateArchiveRequest < Struct.new(
      :archive_name,
      :event_source_arn,
      :description,
      :event_pattern,
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] archive_arn
    #   The ARN of the archive that was created.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the archive that was created.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the archive is in the state.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the archive was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateArchiveResponse AWS API Documentation
    #
    class CreateArchiveResponse < Struct.new(
      :archive_arn,
      :state,
      :state_reason,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the API key authorization parameters for the connection.
    #
    # @note When making an API call, you may pass CreateConnectionApiKeyAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         api_key_name: "AuthHeaderParameters", # required
    #         api_key_value: "AuthHeaderParameters", # required
    #       }
    #
    # @!attribute [rw] api_key_name
    #   The name of the API key to use for authorization.
    #   @return [String]
    #
    # @!attribute [rw] api_key_value
    #   The value for the API key to use for authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionApiKeyAuthRequestParameters AWS API Documentation
    #
    class CreateConnectionApiKeyAuthRequestParameters < Struct.new(
      :api_key_name,
      :api_key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the authorization parameters for the connection.
    #
    # @note When making an API call, you may pass CreateConnectionAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         basic_auth_parameters: {
    #           username: "AuthHeaderParameters", # required
    #           password: "AuthHeaderParameters", # required
    #         },
    #         o_auth_parameters: {
    #           client_parameters: { # required
    #             client_id: "AuthHeaderParameters", # required
    #             client_secret: "AuthHeaderParameters", # required
    #           },
    #           authorization_endpoint: "HttpsEndpoint", # required
    #           http_method: "GET", # required, accepts GET, POST, PUT
    #           o_auth_http_parameters: {
    #             header_parameters: [
    #               {
    #                 key: "HeaderKey",
    #                 value: "HeaderValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             query_string_parameters: [
    #               {
    #                 key: "QueryStringKey",
    #                 value: "QueryStringValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             body_parameters: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #                 is_value_secret: false,
    #               },
    #             ],
    #           },
    #         },
    #         api_key_auth_parameters: {
    #           api_key_name: "AuthHeaderParameters", # required
    #           api_key_value: "AuthHeaderParameters", # required
    #         },
    #         invocation_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "String",
    #               is_value_secret: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] basic_auth_parameters
    #   A `CreateConnectionBasicAuthRequestParameters` object that contains
    #   the Basic authorization parameters to use for the connection.
    #   @return [Types::CreateConnectionBasicAuthRequestParameters]
    #
    # @!attribute [rw] o_auth_parameters
    #   A `CreateConnectionOAuthRequestParameters` object that contains the
    #   OAuth authorization parameters to use for the connection.
    #   @return [Types::CreateConnectionOAuthRequestParameters]
    #
    # @!attribute [rw] api_key_auth_parameters
    #   A `CreateConnectionApiKeyAuthRequestParameters` object that contains
    #   the API key authorization parameters to use for the connection.
    #   @return [Types::CreateConnectionApiKeyAuthRequestParameters]
    #
    # @!attribute [rw] invocation_http_parameters
    #   A `ConnectionHttpParameters` object that contains the API key
    #   authorization parameters to use for the connection. Note that if you
    #   include additional parameters for the target of a rule via
    #   `HttpParameters`, including query strings, the parameters added for
    #   the connection take precedence.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionAuthRequestParameters AWS API Documentation
    #
    class CreateConnectionAuthRequestParameters < Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Basic authorization parameters to use for the connection.
    #
    # @note When making an API call, you may pass CreateConnectionBasicAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         username: "AuthHeaderParameters", # required
    #         password: "AuthHeaderParameters", # required
    #       }
    #
    # @!attribute [rw] username
    #   The user name to use for Basic authorization.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password associated with the user name to use for Basic
    #   authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionBasicAuthRequestParameters AWS API Documentation
    #
    class CreateConnectionBasicAuthRequestParameters < Struct.new(
      :username,
      :password)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Basic authorization parameters to use for the connection.
    #
    # @note When making an API call, you may pass CreateConnectionOAuthClientRequestParameters
    #   data as a hash:
    #
    #       {
    #         client_id: "AuthHeaderParameters", # required
    #         client_secret: "AuthHeaderParameters", # required
    #       }
    #
    # @!attribute [rw] client_id
    #   The client ID to use for OAuth authorization for the connection.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret associated with the client ID to use for OAuth
    #   authorization for the connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionOAuthClientRequestParameters AWS API Documentation
    #
    class CreateConnectionOAuthClientRequestParameters < Struct.new(
      :client_id,
      :client_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the OAuth authorization parameters to use for the connection.
    #
    # @note When making an API call, you may pass CreateConnectionOAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         client_parameters: { # required
    #           client_id: "AuthHeaderParameters", # required
    #           client_secret: "AuthHeaderParameters", # required
    #         },
    #         authorization_endpoint: "HttpsEndpoint", # required
    #         http_method: "GET", # required, accepts GET, POST, PUT
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "String",
    #               is_value_secret: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] client_parameters
    #   A `CreateConnectionOAuthClientRequestParameters` object that
    #   contains the client parameters for OAuth authorization.
    #   @return [Types::CreateConnectionOAuthClientRequestParameters]
    #
    # @!attribute [rw] authorization_endpoint
    #   The URL to the authorization endpoint when OAuth is specified as the
    #   authorization type.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method to use for the authorization request.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_http_parameters
    #   A `ConnectionHttpParameters` object that contains details about the
    #   additional parameters to use for the connection.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionOAuthRequestParameters AWS API Documentation
    #
    class CreateConnectionOAuthRequestParameters < Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ConnectionName", # required
    #         description: "ConnectionDescription",
    #         authorization_type: "BASIC", # required, accepts BASIC, OAUTH_CLIENT_CREDENTIALS, API_KEY
    #         auth_parameters: { # required
    #           basic_auth_parameters: {
    #             username: "AuthHeaderParameters", # required
    #             password: "AuthHeaderParameters", # required
    #           },
    #           o_auth_parameters: {
    #             client_parameters: { # required
    #               client_id: "AuthHeaderParameters", # required
    #               client_secret: "AuthHeaderParameters", # required
    #             },
    #             authorization_endpoint: "HttpsEndpoint", # required
    #             http_method: "GET", # required, accepts GET, POST, PUT
    #             o_auth_http_parameters: {
    #               header_parameters: [
    #                 {
    #                   key: "HeaderKey",
    #                   value: "HeaderValue",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #               query_string_parameters: [
    #                 {
    #                   key: "QueryStringKey",
    #                   value: "QueryStringValue",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #               body_parameters: [
    #                 {
    #                   key: "String",
    #                   value: "String",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #             },
    #           },
    #           api_key_auth_parameters: {
    #             api_key_name: "AuthHeaderParameters", # required
    #             api_key_value: "AuthHeaderParameters", # required
    #           },
    #           invocation_http_parameters: {
    #             header_parameters: [
    #               {
    #                 key: "HeaderKey",
    #                 value: "HeaderValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             query_string_parameters: [
    #               {
    #                 key: "QueryStringKey",
    #                 value: "QueryStringValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             body_parameters: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #                 is_value_secret: false,
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name for the connection to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the connection to create.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The type of authorization to use for the connection.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   A `CreateConnectionAuthRequestParameters` object that contains the
    #   authorization parameters to use to authorize with the endpoint.
    #   @return [Types::CreateConnectionAuthRequestParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :name,
      :description,
      :authorization_type,
      :auth_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The ARN of the connection that was created by the request.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection that was created by the request.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusName", # required
    #         event_source_name: "EventSourceName",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the new event bus.
    #
    #   Event bus names cannot contain the / character. You can't use the
    #   name `default` for a custom event bus, as this name is already used
    #   for your account's default event bus.
    #
    #   If this is a partner event bus, the name must exactly match the name
    #   of the partner event source that this event bus is matched to.
    #   @return [String]
    #
    # @!attribute [rw] event_source_name
    #   If you are creating a partner event bus, this specifies the partner
    #   event source that the new event bus will be matched with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the event bus.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateEventBusRequest AWS API Documentation
    #
    class CreateEventBusRequest < Struct.new(
      :name,
      :event_source_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bus_arn
    #   The ARN of the new event bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreateEventBusResponse AWS API Documentation
    #
    class CreateEventBusResponse < Struct.new(
      :event_bus_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #         account: "AccountId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source. This name must be unique and
    #   must be in the format ` partner_name/event_namespace/event_name `.
    #   The Amazon Web Services account that wants to use this partner event
    #   source must create a partner event bus with a name that matches the
    #   name of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The Amazon Web Services account ID that is permitted to create a
    #   matching partner event bus for this partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreatePartnerEventSourceRequest AWS API Documentation
    #
    class CreatePartnerEventSourceRequest < Struct.new(
      :name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_source_arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/CreatePartnerEventSourceResponse AWS API Documentation
    #
    class CreatePartnerEventSourceResponse < Struct.new(
      :event_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeactivateEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to deactivate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeactivateEventSourceRequest AWS API Documentation
    #
    class DeactivateEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `DeadLetterConfig` object that contains information about a
    # dead-letter queue configuration.
    #
    # @note When making an API call, you may pass DeadLetterConfig
    #   data as a hash:
    #
    #       {
    #         arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the SQS queue specified as the target for the dead-letter
    #   queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeadLetterConfig AWS API Documentation
    #
    class DeadLetterConfig < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeauthorizeConnectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ConnectionName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection to remove authorization from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeauthorizeConnectionRequest AWS API Documentation
    #
    class DeauthorizeConnectionRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The ARN of the connection that authorization was removed from.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_authorized_time
    #   A time stamp for the time that the connection was last authorized.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeauthorizeConnectionResponse AWS API Documentation
    #
    class DeauthorizeConnectionResponse < Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteApiDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApiDestinationName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the destination to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteApiDestinationRequest AWS API Documentation
    #
    class DeleteApiDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteApiDestinationResponse AWS API Documentation
    #
    class DeleteApiDestinationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteArchiveRequest
    #   data as a hash:
    #
    #       {
    #         archive_name: "ArchiveName", # required
    #       }
    #
    # @!attribute [rw] archive_name
    #   The name of the archive to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteArchiveRequest AWS API Documentation
    #
    class DeleteArchiveRequest < Struct.new(
      :archive_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteArchiveResponse AWS API Documentation
    #
    class DeleteArchiveResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ConnectionName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The ARN of the connection that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection before it was deleted.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last modified
    #   before it was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] last_authorized_time
    #   A time stamp for the time that the connection was last authorized
    #   before it wa deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event bus to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteEventBusRequest AWS API Documentation
    #
    class DeleteEventBusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #         account: "AccountId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event source to delete.
    #   @return [String]
    #
    # @!attribute [rw] account
    #   The Amazon Web Services account ID of the Amazon Web Services
    #   customer that the event source was created for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeletePartnerEventSourceRequest AWS API Documentation
    #
    class DeletePartnerEventSourceRequest < Struct.new(
      :name,
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #         force: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] force
    #   If this is a managed rule, created by an Amazon Web Services service
    #   on your behalf, you must specify `Force` as `True` to delete the
    #   rule. This parameter is ignored for rules that are not managed
    #   rules. You can check whether a rule is a managed rule by using
    #   `DescribeRule` or `ListRules` and checking the `ManagedBy` field of
    #   the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :name,
      :event_bus_name,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeApiDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApiDestinationName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the API destination to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeApiDestinationRequest AWS API Documentation
    #
    class DescribeApiDestinationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_destination_arn
    #   The ARN of the API destination retrieved.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the API destination retrieved.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the API destination retrieved.
    #   @return [String]
    #
    # @!attribute [rw] api_destination_state
    #   The state of the API destination retrieved.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection specified for the API destination
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] invocation_endpoint
    #   The URL to use to connect to the HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method to use to connect to the HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] invocation_rate_limit_per_second
    #   The maximum number of invocations per second to specified for the
    #   API destination. Note that if you set the invocation rate maximum to
    #   a value lower the rate necessary to send all events received on to
    #   the destination HTTP endpoint, some events may not be delivered
    #   within the 24-hour retry window. If you plan to set the rate lower
    #   than the rate necessary to deliver all events, consider using a
    #   dead-letter queue to catch events that are not delivered within 24
    #   hours.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the API destination was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the API destination was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeApiDestinationResponse AWS API Documentation
    #
    class DescribeApiDestinationResponse < Struct.new(
      :api_destination_arn,
      :name,
      :description,
      :api_destination_state,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeArchiveRequest
    #   data as a hash:
    #
    #       {
    #         archive_name: "ArchiveName", # required
    #       }
    #
    # @!attribute [rw] archive_name
    #   The name of the archive to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeArchiveRequest AWS API Documentation
    #
    class DescribeArchiveRequest < Struct.new(
      :archive_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] archive_arn
    #   The ARN of the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_name
    #   The name of the archive.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the event source associated with the archive.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the archive.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern used to filter events sent to the archive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the archive.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the archive is in the state.
    #   @return [String]
    #
    # @!attribute [rw] retention_days
    #   The number of days to retain events for in the archive.
    #   @return [Integer]
    #
    # @!attribute [rw] size_bytes
    #   The size of the archive in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] event_count
    #   The number of events in the archive.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time at which the archive was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeArchiveResponse AWS API Documentation
    #
    class DescribeArchiveResponse < Struct.new(
      :archive_arn,
      :archive_name,
      :event_source_arn,
      :description,
      :event_pattern,
      :state,
      :state_reason,
      :retention_days,
      :size_bytes,
      :event_count,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ConnectionName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeConnectionRequest AWS API Documentation
    #
    class DescribeConnectionRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The ARN of the connection retrieved.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection retrieved.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the connection retrieved.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection retrieved.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the connection is in the current connection state.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The type of authorization specified for the connection.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret created from the authorization parameters
    #   specified for the connection.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The parameters to use for authorization for the connection.
    #   @return [Types::ConnectionAuthResponseParameters]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_authorized_time
    #   A time stamp for the time that the connection was last authorized.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeConnectionResponse AWS API Documentation
    #
    class DescribeConnectionResponse < Struct.new(
      :connection_arn,
      :name,
      :description,
      :connection_state,
      :state_reason,
      :authorization_type,
      :secret_arn,
      :auth_parameters,
      :creation_time,
      :last_modified_time,
      :last_authorized_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventBusRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventBusNameOrArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name or ARN of the event bus to show details for. If you omit
    #   this, the default event bus is displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBusRequest AWS API Documentation
    #
    class DescribeEventBusRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event bus. Currently, this is always `default`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the account permitted to write
    #   events to the current account.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy that enables the external account to send events to your
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventBusResponse AWS API Documentation
    #
    class DescribeEventBusResponse < Struct.new(
      :name,
      :arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the partner event source to display the details of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventSourceRequest AWS API Documentation
    #
    class DescribeEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The name of the SaaS partner that created the event source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire if you do not
    #   create a matching event bus.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeEventSourceResponse AWS API Documentation
    #
    class DescribeEventSourceResponse < Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePartnerEventSourceRequest
    #   data as a hash:
    #
    #       {
    #         name: "EventSourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the event source to display.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribePartnerEventSourceRequest AWS API Documentation
    #
    class DescribePartnerEventSourceRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the event source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribePartnerEventSourceResponse AWS API Documentation
    #
    class DescribePartnerEventSourceResponse < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplayRequest
    #   data as a hash:
    #
    #       {
    #         replay_name: "ReplayName", # required
    #       }
    #
    # @!attribute [rw] replay_name
    #   The name of the replay to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeReplayRequest AWS API Documentation
    #
    class DescribeReplayRequest < Struct.new(
      :replay_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replay_name
    #   The name of the replay.
    #   @return [String]
    #
    # @!attribute [rw] replay_arn
    #   The ARN of the replay.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the replay is in the current state.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the archive events were replayed from.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   A `ReplayDestination` object that contains details about the replay.
    #   @return [Types::ReplayDestination]
    #
    # @!attribute [rw] event_start_time
    #   The time stamp of the first event that was last replayed from the
    #   archive.
    #   @return [Time]
    #
    # @!attribute [rw] event_end_time
    #   The time stamp for the last event that was replayed from the
    #   archive.
    #   @return [Time]
    #
    # @!attribute [rw] event_last_replayed_time
    #   The time that the event was last replayed.
    #   @return [Time]
    #
    # @!attribute [rw] replay_start_time
    #   A time stamp for the time that the replay started.
    #   @return [Time]
    #
    # @!attribute [rw] replay_end_time
    #   A time stamp for the time that the replay stopped.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeReplayResponse AWS API Documentation
    #
    class DescribeReplayResponse < Struct.new(
      :replay_name,
      :replay_arn,
      :description,
      :state,
      :state_reason,
      :event_source_arn,
      :destination,
      :event_start_time,
      :event_end_time,
      :event_last_replayed_time,
      :replay_start_time,
      :replay_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleRequest AWS API Documentation
    #
    class DescribeRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   If this is a managed rule, created by an Amazon Web Services service
    #   on your behalf, this field displays the principal name of the Amazon
    #   Web Services service that created the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus associated with the rule.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The account ID of the user that created the rule. If you use
    #   `PutRule` to put a rule on an event bus in another account, the
    #   other account is the owner of the rule, and the rule ARN includes
    #   the account ID for that account. However, the value for `CreatedBy`
    #   is the account ID as the account that created the rule in the other
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DescribeRuleResponse AWS API Documentation
    #
    class DescribeRuleResponse < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :schedule_expression,
      :state,
      :description,
      :role_arn,
      :managed_by,
      :event_bus_name,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/DisableRuleRequest AWS API Documentation
    #
    class DisableRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The custom parameters to be used when the target is an Amazon ECS
    # task.
    #
    # @note When making an API call, you may pass EcsParameters
    #   data as a hash:
    #
    #       {
    #         task_definition_arn: "Arn", # required
    #         task_count: 1,
    #         launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #         network_configuration: {
    #           awsvpc_configuration: {
    #             subnets: ["String"], # required
    #             security_groups: ["String"],
    #             assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #           },
    #         },
    #         platform_version: "String",
    #         group: "String",
    #         capacity_provider_strategy: [
    #           {
    #             capacity_provider: "CapacityProvider", # required
    #             weight: 1,
    #             base: 1,
    #           },
    #         ],
    #         enable_ecs_managed_tags: false,
    #         enable_execute_command: false,
    #         placement_constraints: [
    #           {
    #             type: "distinctInstance", # accepts distinctInstance, memberOf
    #             expression: "PlacementConstraintExpression",
    #           },
    #         ],
    #         placement_strategy: [
    #           {
    #             type: "random", # accepts random, spread, binpack
    #             field: "PlacementStrategyField",
    #           },
    #         ],
    #         propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #         reference_id: "ReferenceId",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] task_definition_arn
    #   The ARN of the task definition to use if the event target is an
    #   Amazon ECS task.
    #   @return [String]
    #
    # @!attribute [rw] task_count
    #   The number of tasks to create based on `TaskDefinition`. The default
    #   is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_type
    #   Specifies the launch type on which your task is running. The launch
    #   type that you specify here must match one of the launch type
    #   (compatibilities) of the target task. The `FARGATE` value is
    #   supported only in the Regions where Fargate witt Amazon ECS is
    #   supported. For more information, see [Fargate on Amazon ECS][1] in
    #   the *Amazon Elastic Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Use this structure if the Amazon ECS task uses the `awsvpc` network
    #   mode. This structure specifies the VPC subnets and security groups
    #   associated with the task, and whether a public IP address is to be
    #   used. This structure is required if `LaunchType` is `FARGATE`
    #   because the `awsvpc` mode is required for Fargate tasks.
    #
    #   If you specify `NetworkConfiguration` when the target ECS task does
    #   not use the `awsvpc` network mode, the task fails.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] platform_version
    #   Specifies the platform version for the task. Specify only the
    #   numeric portion of the platform version, such as `1.1.0`.
    #
    #   This structure is used only if `LaunchType` is `FARGATE`. For more
    #   information about valid platform versions, see [Fargate Platform
    #   Versions][1] in the *Amazon Elastic Container Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html
    #   @return [String]
    #
    # @!attribute [rw] group
    #   Specifies an ECS task group for the task. The maximum length is 255
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] capacity_provider_strategy
    #   The capacity provider strategy to use for the task.
    #
    #   If a `capacityProviderStrategy` is specified, the `launchType`
    #   parameter must be omitted. If no `capacityProviderStrategy` or
    #   launchType is specified, the `defaultCapacityProviderStrategy` for
    #   the cluster is used.
    #   @return [Array<Types::CapacityProviderStrategyItem>]
    #
    # @!attribute [rw] enable_ecs_managed_tags
    #   Specifies whether to enable Amazon ECS managed tags for the task.
    #   For more information, see [Tagging Your Amazon ECS Resources][1] in
    #   the Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-using-tags.html
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_execute_command
    #   Whether or not to enable the execute command functionality for the
    #   containers in this task. If true, this enables execute command
    #   functionality on all containers in the task.
    #   @return [Boolean]
    #
    # @!attribute [rw] placement_constraints
    #   An array of placement constraint objects to use for the task. You
    #   can specify up to 10 constraints per task (including constraints in
    #   the task definition and those specified at runtime).
    #   @return [Array<Types::PlacementConstraint>]
    #
    # @!attribute [rw] placement_strategy
    #   The placement strategy objects to use for the task. You can specify
    #   a maximum of five strategy rules per task.
    #   @return [Array<Types::PlacementStrategy>]
    #
    # @!attribute [rw] propagate_tags
    #   Specifies whether to propagate the tags from the task definition to
    #   the task. If no value is specified, the tags are not propagated.
    #   Tags can only be propagated to the task during task creation. To add
    #   tags to a task after task creation, use the TagResource API action.
    #   @return [String]
    #
    # @!attribute [rw] reference_id
    #   The reference ID to use for the task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata that you apply to the task to help you categorize and
    #   organize them. Each tag consists of a key and an optional value,
    #   both of which you define. To learn more, see [RunTask][1] in the
    #   Amazon ECS API Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html#ECS-RunTask-request-tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EcsParameters AWS API Documentation
    #
    class EcsParameters < Struct.new(
      :task_definition_arn,
      :task_count,
      :launch_type,
      :network_configuration,
      :platform_version,
      :group,
      :capacity_provider_strategy,
      :enable_ecs_managed_tags,
      :enable_execute_command,
      :placement_constraints,
      :placement_strategy,
      :propagate_tags,
      :reference_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EnableRuleRequest AWS API Documentation
    #
    class EnableRuleRequest < Struct.new(
      :name,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An event bus receives events from a source and routes them to rules
    # associated with that event bus. Your account's default event bus
    # receives events from Amazon Web Services services. A custom event bus
    # can receive events from your custom applications and services. A
    # partner event bus receives events from an event source created by an
    # SaaS partner. These events come from the partners services or
    # applications.
    #
    # @!attribute [rw] name
    #   The name of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the event bus.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The permissions policy of the event bus, describing which other
    #   Amazon Web Services accounts can write events to this event bus.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EventBus AWS API Documentation
    #
    class EventBus < Struct.new(
      :name,
      :arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # A partner event source is created by an SaaS partner. If a customer
    # creates a partner event bus that matches this event source, that
    # Amazon Web Services account can receive events from the partner's
    # applications or services.
    #
    # @!attribute [rw] arn
    #   The ARN of the event source.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The name of the partner that created the event source.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire, if the Amazon
    #   Web Services account doesn't create a matching event bus for it.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the event source.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/EventSource AWS API Documentation
    #
    class EventSource < Struct.new(
      :arn,
      :created_by,
      :creation_time,
      :expiration_time,
      :name,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameter to be used when the target is an API
    # Gateway REST APIs or EventBridge ApiDestinations. In the latter case,
    # these are merged with any InvocationParameters specified on the
    # Connection, with any values from the Connection taking precedence.
    #
    # @note When making an API call, you may pass HttpParameters
    #   data as a hash:
    #
    #       {
    #         path_parameter_values: ["PathParameter"],
    #         header_parameters: {
    #           "HeaderKey" => "HeaderValue",
    #         },
    #         query_string_parameters: {
    #           "QueryStringKey" => "QueryStringValue",
    #         },
    #       }
    #
    # @!attribute [rw] path_parameter_values
    #   The path parameter values to be used to populate API Gateway REST
    #   API or EventBridge ApiDestination path wildcards ("*").
    #   @return [Array<String>]
    #
    # @!attribute [rw] header_parameters
    #   The headers that need to be sent as part of request invoking the API
    #   Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] query_string_parameters
    #   The query string keys/values that need to be sent as part of request
    #   invoking the API Gateway REST API or EventBridge ApiDestination.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/HttpParameters AWS API Documentation
    #
    class HttpParameters < Struct.new(
      :path_parameter_values,
      :header_parameters,
      :query_string_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred because a replay can be canceled only when the state
    # is Running or Starting.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/IllegalStatusException AWS API Documentation
    #
    class IllegalStatusException < Aws::EmptyStructure; end

    # Contains the parameters needed for you to provide custom input to a
    # target based on one or more pieces of data extracted from the event.
    #
    # @note When making an API call, you may pass InputTransformer
    #   data as a hash:
    #
    #       {
    #         input_paths_map: {
    #           "InputTransformerPathKey" => "TargetInputPath",
    #         },
    #         input_template: "TransformerInput", # required
    #       }
    #
    # @!attribute [rw] input_paths_map
    #   Map of JSON paths to be extracted from the event. You can then
    #   insert these in the template in `InputTemplate` to produce the
    #   output you want to be sent to the target.
    #
    #   `InputPathsMap` is an array key-value pairs, where each value is a
    #   valid JSON path. You can have as many as 100 key-value pairs. You
    #   must use JSON dot notation, not bracket notation.
    #
    #   The keys cannot start with "Amazon Web Services."
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] input_template
    #   Input template where you specify placeholders that will be filled
    #   with the values of the keys from `InputPathsMap` to customize the
    #   data sent to the target. Enclose each `InputPathsMaps` value in
    #   brackets: &lt;*value*&gt; The InputTemplate must be valid JSON.
    #
    #   If `InputTemplate` is a JSON object (surrounded by curly braces),
    #   the following restrictions apply:
    #
    #   * The placeholder cannot be used as an object key.
    #
    #   ^
    #
    #   The following example shows the syntax for using `InputPathsMap` and
    #   `InputTemplate`.
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state <status>"`
    #
    #   `\}`
    #
    #   To have the `InputTemplate` include quote marks within a JSON
    #   string, escape each quote marks with a slash, as in the following
    #   example:
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": "<instance> is in state "<status>""`
    #
    #   `\}`
    #
    #   The `InputTemplate` can also be valid JSON with varibles in quotes
    #   or out, as in the following example:
    #
    #   ` "InputTransformer":`
    #
    #   `\{`
    #
    #   `"InputPathsMap": \{"instance": "$.detail.instance","status":
    #   "$.detail.status"\},`
    #
    #   `"InputTemplate": '\{"myInstance": <instance>,"myStatus":
    #   "<instance> is in state "<status>""\}'`
    #
    #   `\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/InputTransformer AWS API Documentation
    #
    class InputTransformer < Struct.new(
      :input_paths_map,
      :input_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception occurs due to unexpected causes.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/InternalException AWS API Documentation
    #
    class InternalException < Aws::EmptyStructure; end

    # The event pattern is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/InvalidEventPatternException AWS API Documentation
    #
    class InvalidEventPatternException < Aws::EmptyStructure; end

    # The specified state is not a valid state for an event source.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/InvalidStateException AWS API Documentation
    #
    class InvalidStateException < Aws::EmptyStructure; end

    # This object enables you to specify a JSON path to extract from the
    # event and use as the partition key for the Amazon Kinesis data stream,
    # so that you can control the shard to which the event goes. If you do
    # not include this parameter, the default is to use the `eventId` as the
    # partition key.
    #
    # @note When making an API call, you may pass KinesisParameters
    #   data as a hash:
    #
    #       {
    #         partition_key_path: "TargetPartitionKeyPath", # required
    #       }
    #
    # @!attribute [rw] partition_key_path
    #   The JSON path to be extracted from the event and used as the
    #   partition key. For more information, see [Amazon Kinesis Streams Key
    #   Concepts][1] in the *Amazon Kinesis Streams Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/KinesisParameters AWS API Documentation
    #
    class KinesisParameters < Struct.new(
      :partition_key_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because it attempted to create resource beyond the
    # allowed service quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListApiDestinationsRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "ApiDestinationName",
    #         connection_arn: "ConnectionArn",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   A name prefix to filter results returned. Only API destinations with
    #   a name that starts with the prefix are returned.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection specified for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of API destinations to include in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListApiDestinationsRequest AWS API Documentation
    #
    class ListApiDestinationsRequest < Struct.new(
      :name_prefix,
      :connection_arn,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_destinations
    #   An array of `ApiDestination` objects that include information about
    #   an API destination.
    #   @return [Array<Types::ApiDestination>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent request to retrieve the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListApiDestinationsResponse AWS API Documentation
    #
    class ListApiDestinationsResponse < Struct.new(
      :api_destinations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListArchivesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "ArchiveName",
    #         event_source_arn: "Arn",
    #         state: "ENABLED", # accepts ENABLED, DISABLED, CREATING, UPDATING, CREATE_FAILED, UPDATE_FAILED
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   A name prefix to filter the archives returned. Only archives with
    #   name that match the prefix are returned.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the event source associated with the archive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the archive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListArchivesRequest AWS API Documentation
    #
    class ListArchivesRequest < Struct.new(
      :name_prefix,
      :event_source_arn,
      :state,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] archives
    #   An array of `Archive` objects that include details about an archive.
    #   @return [Array<Types::Archive>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListArchivesResponse AWS API Documentation
    #
    class ListArchivesResponse < Struct.new(
      :archives,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "ConnectionName",
    #         connection_state: "CREATING", # accepts CREATING, UPDATING, DELETING, AUTHORIZED, DEAUTHORIZED, AUTHORIZING, DEAUTHORIZING
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   A name prefix to filter results returned. Only connections with a
    #   name that starts with the prefix are returned.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of connections to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListConnectionsRequest AWS API Documentation
    #
    class ListConnectionsRequest < Struct.new(
      :name_prefix,
      :connection_state,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connections
    #   An array of connections objects that include details about the
    #   connections.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent request to retrieve the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListConnectionsResponse AWS API Documentation
    #
    class ListConnectionsResponse < Struct.new(
      :connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventBusesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "EventBusName",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   Specifying this limits the results to only those event buses with
    #   names that start with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventBusesRequest AWS API Documentation
    #
    class ListEventBusesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_buses
    #   This list of event buses.
    #   @return [Array<Types::EventBus>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventBusesResponse AWS API Documentation
    #
    class ListEventBusesResponse < Struct.new(
      :event_buses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEventSourcesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "EventSourceNamePrefix",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   Specifying this limits the results to only those partner event
    #   sources with names that start with the specified prefix.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventSourcesRequest AWS API Documentation
    #
    class ListEventSourcesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_sources
    #   The list of event sources.
    #   @return [Array<Types::EventSource>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListEventSourcesResponse AWS API Documentation
    #
    class ListEventSourcesResponse < Struct.new(
      :event_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPartnerEventSourceAccountsRequest
    #   data as a hash:
    #
    #       {
    #         event_source_name: "EventSourceName", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] event_source_name
    #   The name of the partner event source to display account information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   Specifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSourceAccountsRequest AWS API Documentation
    #
    class ListPartnerEventSourceAccountsRequest < Struct.new(
      :event_source_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_event_source_accounts
    #   The list of partner event sources returned by the operation.
    #   @return [Array<Types::PartnerEventSourceAccount>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSourceAccountsResponse AWS API Documentation
    #
    class ListPartnerEventSourceAccountsResponse < Struct.new(
      :partner_event_source_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPartnerEventSourcesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "PartnerEventSourceNamePrefix", # required
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   If you specify this, the results are limited to only those partner
    #   event sources that start with the string you specify.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to this operation. Specifying
    #   this retrieves the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   pecifying this limits the number of results returned by this
    #   operation. The operation also returns a NextToken which you can use
    #   in a subsequent operation to retrieve the next set of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSourcesRequest AWS API Documentation
    #
    class ListPartnerEventSourcesRequest < Struct.new(
      :name_prefix,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] partner_event_sources
    #   The list of partner event sources returned by the operation.
    #   @return [Array<Types::PartnerEventSource>]
    #
    # @!attribute [rw] next_token
    #   A token you can use in a subsequent operation to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListPartnerEventSourcesResponse AWS API Documentation
    #
    class ListPartnerEventSourcesResponse < Struct.new(
      :partner_event_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReplaysRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "ReplayName",
    #         state: "STARTING", # accepts STARTING, RUNNING, CANCELLING, COMPLETED, CANCELLED, FAILED
    #         event_source_arn: "Arn",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   A name prefix to filter the replays returned. Only replays with name
    #   that match the prefix are returned.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the replay.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the archive from which the events are replayed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of replays to retrieve.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListReplaysRequest AWS API Documentation
    #
    class ListReplaysRequest < Struct.new(
      :name_prefix,
      :state,
      :event_source_arn,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replays
    #   An array of `Replay` objects that contain information about the
    #   replay.
    #   @return [Array<Types::Replay>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListReplaysResponse AWS API Documentation
    #
    class ListReplaysResponse < Struct.new(
      :replays,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRuleNamesByTargetRequest
    #   data as a hash:
    #
    #       {
    #         target_arn: "TargetArn", # required
    #         event_bus_name: "EventBusNameOrArn",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] target_arn
    #   The Amazon Resource Name (ARN) of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus to list rules for. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetRequest AWS API Documentation
    #
    class ListRuleNamesByTargetRequest < Struct.new(
      :target_arn,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_names
    #   The names of the rules that can invoke the given target.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRuleNamesByTargetResponse AWS API Documentation
    #
    class ListRuleNamesByTargetResponse < Struct.new(
      :rule_names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRulesRequest
    #   data as a hash:
    #
    #       {
    #         name_prefix: "RuleName",
    #         event_bus_name: "EventBusNameOrArn",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] name_prefix
    #   The prefix matching the rule name.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus to list the rules for. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesRequest AWS API Documentation
    #
    class ListRulesRequest < Struct.new(
      :name_prefix,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rules
    #   The rules that match the specified criteria.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListRulesResponse AWS API Documentation
    #
    class ListRulesResponse < Struct.new(
      :rules,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTargetsByRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #         next_token: "NextToken",
    #         limit: 1,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleRequest AWS API Documentation
    #
    class ListTargetsByRuleRequest < Struct.new(
      :rule,
      :event_bus_name,
      :next_token,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targets
    #   The targets assigned to the rule.
    #   @return [Array<Types::Target>]
    #
    # @!attribute [rw] next_token
    #   Indicates whether there are additional results to retrieve. If there
    #   are no more results, the value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ListTargetsByRuleResponse AWS API Documentation
    #
    class ListTargetsByRuleResponse < Struct.new(
      :targets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # This rule was created by an Amazon Web Services service on behalf of
    # your account. It is managed by that service. If you see this error in
    # response to `DeleteRule` or `RemoveTargets`, you can use the `Force`
    # parameter in those calls to delete the rule or remove targets from the
    # rule. You cannot modify these managed rules by using `DisableRule`,
    # `EnableRule`, `PutTargets`, `PutRule`, `TagResource`, or
    # `UntagResource`.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ManagedRuleException AWS API Documentation
    #
    class ManagedRuleException < Aws::EmptyStructure; end

    # This structure specifies the network configuration for an ECS task.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         awsvpc_configuration: {
    #           subnets: ["String"], # required
    #           security_groups: ["String"],
    #           assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] awsvpc_configuration
    #   Use this structure to specify the VPC subnets and security groups
    #   for the task, and whether a public IP address is to be used. This
    #   structure is relevant only for ECS tasks that use the `awsvpc`
    #   network mode.
    #   @return [Types::AwsVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :awsvpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation you are attempting is not available in this region.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/OperationDisabledException AWS API Documentation
    #
    class OperationDisabledException < Aws::EmptyStructure; end

    # A partner event source is created by an SaaS partner. If a customer
    # creates a partner event bus that matches this event source, that
    # Amazon Web Services account can receive events from the partner's
    # applications or services.
    #
    # @!attribute [rw] arn
    #   The ARN of the partner event source.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the partner event source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PartnerEventSource AWS API Documentation
    #
    class PartnerEventSource < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Web Services account that a partner event source has been
    # offered to.
    #
    # @!attribute [rw] account
    #   The Amazon Web Services account ID that the partner event source was
    #   offered to.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the event source was created.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that the event source will expire, if the Amazon
    #   Web Services account doesn't create a matching event bus for it.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The state of the event source. If it is ACTIVE, you have already
    #   created a matching event bus for this event source, and that event
    #   bus is active. If it is PENDING, either you haven't yet created a
    #   matching event bus, or that event bus is deactivated. If it is
    #   DELETED, you have created a matching event bus, but the event source
    #   has since been deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PartnerEventSourceAccount AWS API Documentation
    #
    class PartnerEventSourceAccount < Struct.new(
      :account,
      :creation_time,
      :expiration_time,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a constraint on task placement. To learn more,
    # see [Task Placement Constraints][1] in the Amazon Elastic Container
    # Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-constraints.html
    #
    # @note When making an API call, you may pass PlacementConstraint
    #   data as a hash:
    #
    #       {
    #         type: "distinctInstance", # accepts distinctInstance, memberOf
    #         expression: "PlacementConstraintExpression",
    #       }
    #
    # @!attribute [rw] type
    #   The type of constraint. Use distinctInstance to ensure that each
    #   task in a particular group is running on a different container
    #   instance. Use memberOf to restrict the selection to a group of valid
    #   candidates.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A cluster query language expression to apply to the constraint. You
    #   cannot specify an expression if the constraint type is
    #   `distinctInstance`. To learn more, see [Cluster Query Language][1]
    #   in the Amazon Elastic Container Service Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-query-language.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PlacementConstraint AWS API Documentation
    #
    class PlacementConstraint < Struct.new(
      :type,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The task placement strategy for a task or service. To learn more, see
    # [Task Placement Strategies][1] in the Amazon Elastic Container Service
    # Service Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-placement-strategies.html
    #
    # @note When making an API call, you may pass PlacementStrategy
    #   data as a hash:
    #
    #       {
    #         type: "random", # accepts random, spread, binpack
    #         field: "PlacementStrategyField",
    #       }
    #
    # @!attribute [rw] type
    #   The type of placement strategy. The random placement strategy
    #   randomly places tasks on available candidates. The spread placement
    #   strategy spreads placement across available candidates evenly based
    #   on the field parameter. The binpack strategy places tasks on
    #   available candidates that have the least available amount of the
    #   resource that is specified with the field parameter. For example, if
    #   you binpack on memory, a task is placed on the instance with the
    #   least amount of remaining memory (but still enough to run the task).
    #   @return [String]
    #
    # @!attribute [rw] field
    #   The field to apply the placement strategy against. For the spread
    #   placement strategy, valid values are instanceId (or host, which has
    #   the same effect), or any platform or custom attribute that is
    #   applied to a container instance, such as
    #   attribute:ecs.availability-zone. For the binpack placement strategy,
    #   valid values are cpu and memory. For the random placement strategy,
    #   this field is not used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PlacementStrategy AWS API Documentation
    #
    class PlacementStrategy < Struct.new(
      :type,
      :field)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event bus policy is too long. For more information, see the
    # limits.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PolicyLengthExceededException AWS API Documentation
    #
    class PolicyLengthExceededException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "String",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #             event_bus_name: "NonPartnerEventBusNameOrArn",
    #             trace_header: "TraceHeader",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The entry that defines an event in your system. You can specify
    #   several parameters for the entry such as the source and type of the
    #   event, resources associated with the event, and so on.
    #   @return [Array<Types::PutEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event to be submitted.
    #
    # @note When making an API call, you may pass PutEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "String",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #         event_bus_name: "NonPartnerEventBusNameOrArn",
    #         trace_header: "TraceHeader",
    #       }
    #
    # @!attribute [rw] time
    #   The time stamp of the event, per [RFC3339][1]. If no time stamp is
    #   provided, the time stamp of the [PutEvents][2] call is used.
    #
    #
    #
    #   [1]: https://www.rfc-editor.org/rfc/rfc3339.txt
    #   [2]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEvents.html
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The source of the event.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Amazon Web Services resources, identified by Amazon Resource Name
    #   (ARN), which the event primarily concerns. Any number, including
    #   zero, may be present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   Free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A valid JSON string. There is no other schema imposed. The JSON
    #   string may contain fields and nested subobjects.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus to receive the event. Only the
    #   rules that are associated with this event bus are used to match the
    #   event. If you omit this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] trace_header
    #   An X-Ray trade header, which is an http header (X-Amzn-Trace-Id)
    #   that contains the trace-id associated with the event.
    #
    #   To learn more about X-Ray trace headers, see [Tracing header][1] in
    #   the X-Ray Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/xray/latest/devguide/xray-concepts.html#xray-concepts-tracingheader
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsRequestEntry AWS API Documentation
    #
    class PutEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail,
      :event_bus_name,
      :trace_header)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   The successfully and unsuccessfully ingested events results. If the
    #   ingestion was successful, the entry has the event ID in it.
    #   Otherwise, you can use the error code and error message to identify
    #   the problem with the entry.
    #   @return [Array<Types::PutEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResponse AWS API Documentation
    #
    class PutEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event that failed to be submitted.
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the event submission failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the event submission failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutEventsResultEntry AWS API Documentation
    #
    class PutEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPartnerEventsRequest
    #   data as a hash:
    #
    #       {
    #         entries: [ # required
    #           {
    #             time: Time.now,
    #             source: "EventSourceName",
    #             resources: ["EventResource"],
    #             detail_type: "String",
    #             detail: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] entries
    #   The list of events to write to the event bus.
    #   @return [Array<Types::PutPartnerEventsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPartnerEventsRequest AWS API Documentation
    #
    class PutPartnerEventsRequest < Struct.new(
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details about an event generated by an SaaS partner.
    #
    # @note When making an API call, you may pass PutPartnerEventsRequestEntry
    #   data as a hash:
    #
    #       {
    #         time: Time.now,
    #         source: "EventSourceName",
    #         resources: ["EventResource"],
    #         detail_type: "String",
    #         detail: "String",
    #       }
    #
    # @!attribute [rw] time
    #   The date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The event source that is generating the entry.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   Amazon Web Services resources, identified by Amazon Resource Name
    #   (ARN), which the event primarily concerns. Any number, including
    #   zero, may be present.
    #   @return [Array<String>]
    #
    # @!attribute [rw] detail_type
    #   A free-form string used to decide what fields to expect in the event
    #   detail.
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   A valid JSON string. There is no other schema imposed. The JSON
    #   string may contain fields and nested subobjects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPartnerEventsRequestEntry AWS API Documentation
    #
    class PutPartnerEventsRequestEntry < Struct.new(
      :time,
      :source,
      :resources,
      :detail_type,
      :detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of events from this operation that could not be written
    #   to the partner event bus.
    #   @return [Integer]
    #
    # @!attribute [rw] entries
    #   The list of events from this operation that were successfully
    #   written to the partner event bus.
    #   @return [Array<Types::PutPartnerEventsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPartnerEventsResponse AWS API Documentation
    #
    class PutPartnerEventsResponse < Struct.new(
      :failed_entry_count,
      :entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an event that a partner tried to generate, but failed.
    #
    # @!attribute [rw] event_id
    #   The ID of the event.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the event submission failed.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the event submission failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPartnerEventsResultEntry AWS API Documentation
    #
    class PutPartnerEventsResultEntry < Struct.new(
      :event_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPermissionRequest
    #   data as a hash:
    #
    #       {
    #         event_bus_name: "NonPartnerEventBusName",
    #         action: "Action",
    #         principal: "Principal",
    #         statement_id: "StatementId",
    #         condition: {
    #           type: "String", # required
    #           key: "String", # required
    #           value: "String", # required
    #         },
    #         policy: "String",
    #       }
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus associated with the rule. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that you are enabling the other account to perform.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The 12-digit Amazon Web Services account ID that you are permitting
    #   to put events to your default event bus. Specify "*" to permit
    #   any account to put events to your default event bus.
    #
    #   If you specify "*" without specifying `Condition`, avoid creating
    #   rules that may match undesirable events. To create more secure
    #   rules, make sure that the event pattern for each rule contains an
    #   `account` field with a specific account ID from which to receive
    #   events. Rules with an account field do not match any events sent
    #   from other accounts.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   An identifier string for the external account that you are granting
    #   permissions to. If you later want to revoke the permission for this
    #   external account, specify this `StatementId` when you run
    #   [RemovePermission][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_RemovePermission.html
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   This parameter enables you to limit the permission to accounts that
    #   fulfill a certain condition, such as being a member of a certain
    #   Amazon Web Services organization. For more information about Amazon
    #   Web Services Organizations, see [What Is Amazon Web Services
    #   Organizations][1] in the *Amazon Web Services Organizations User
    #   Guide*.
    #
    #   If you specify `Condition` with an Amazon Web Services organization
    #   ID, and specify "*" as the value for `Principal`, you grant
    #   permission to all the accounts in the named organization.
    #
    #   The `Condition` is a JSON string which must contain `Type`, `Key`,
    #   and `Value` fields.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html
    #   @return [Types::Condition]
    #
    # @!attribute [rw] policy
    #   A JSON string that describes the permission policy statement. You
    #   can include a `Policy` parameter in the request instead of using the
    #   `StatementId`, `Action`, `Principal`, or `Condition` parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutPermissionRequest AWS API Documentation
    #
    class PutPermissionRequest < Struct.new(
      :event_bus_name,
      :action,
      :principal,
      :statement_id,
      :condition,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRuleRequest
    #   data as a hash:
    #
    #       {
    #         name: "RuleName", # required
    #         schedule_expression: "ScheduleExpression",
    #         event_pattern: "EventPattern",
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #         description: "RuleDescription",
    #         role_arn: "RoleArn",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         event_bus_name: "EventBusNameOrArn",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rule that you are creating or updating.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)" or
    #   "rate(5 minutes)".
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Indicates whether the rule is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   rule.
    #
    #   If you're setting an event bus in another account as the target and
    #   that account granted permission to your account through an
    #   organization instead of directly by the account ID, you must specify
    #   a `RoleArn` with proper permissions in the `Target` structure,
    #   instead of here in this parameter.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the rule.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus to associate with this rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleRequest AWS API Documentation
    #
    class PutRuleRequest < Struct.new(
      :name,
      :schedule_expression,
      :event_pattern,
      :state,
      :description,
      :role_arn,
      :tags,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutRuleResponse AWS API Documentation
    #
    class PutRuleResponse < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #         targets: [ # required
    #           {
    #             id: "TargetId", # required
    #             arn: "TargetArn", # required
    #             role_arn: "RoleArn",
    #             input: "TargetInput",
    #             input_path: "TargetInputPath",
    #             input_transformer: {
    #               input_paths_map: {
    #                 "InputTransformerPathKey" => "TargetInputPath",
    #               },
    #               input_template: "TransformerInput", # required
    #             },
    #             kinesis_parameters: {
    #               partition_key_path: "TargetPartitionKeyPath", # required
    #             },
    #             run_command_parameters: {
    #               run_command_targets: [ # required
    #                 {
    #                   key: "RunCommandTargetKey", # required
    #                   values: ["RunCommandTargetValue"], # required
    #                 },
    #               ],
    #             },
    #             ecs_parameters: {
    #               task_definition_arn: "Arn", # required
    #               task_count: 1,
    #               launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #               network_configuration: {
    #                 awsvpc_configuration: {
    #                   subnets: ["String"], # required
    #                   security_groups: ["String"],
    #                   assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #                 },
    #               },
    #               platform_version: "String",
    #               group: "String",
    #               capacity_provider_strategy: [
    #                 {
    #                   capacity_provider: "CapacityProvider", # required
    #                   weight: 1,
    #                   base: 1,
    #                 },
    #               ],
    #               enable_ecs_managed_tags: false,
    #               enable_execute_command: false,
    #               placement_constraints: [
    #                 {
    #                   type: "distinctInstance", # accepts distinctInstance, memberOf
    #                   expression: "PlacementConstraintExpression",
    #                 },
    #               ],
    #               placement_strategy: [
    #                 {
    #                   type: "random", # accepts random, spread, binpack
    #                   field: "PlacementStrategyField",
    #                 },
    #               ],
    #               propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #               reference_id: "ReferenceId",
    #               tags: [
    #                 {
    #                   key: "TagKey", # required
    #                   value: "TagValue", # required
    #                 },
    #               ],
    #             },
    #             batch_parameters: {
    #               job_definition: "String", # required
    #               job_name: "String", # required
    #               array_properties: {
    #                 size: 1,
    #               },
    #               retry_strategy: {
    #                 attempts: 1,
    #               },
    #             },
    #             sqs_parameters: {
    #               message_group_id: "MessageGroupId",
    #             },
    #             http_parameters: {
    #               path_parameter_values: ["PathParameter"],
    #               header_parameters: {
    #                 "HeaderKey" => "HeaderValue",
    #               },
    #               query_string_parameters: {
    #                 "QueryStringKey" => "QueryStringValue",
    #               },
    #             },
    #             redshift_data_parameters: {
    #               secret_manager_arn: "RedshiftSecretManagerArn",
    #               database: "Database", # required
    #               db_user: "DbUser",
    #               sql: "Sql", # required
    #               statement_name: "StatementName",
    #               with_event: false,
    #             },
    #             sage_maker_pipeline_parameters: {
    #               pipeline_parameter_list: [
    #                 {
    #                   name: "SageMakerPipelineParameterName", # required
    #                   value: "SageMakerPipelineParameterValue", # required
    #                 },
    #               ],
    #             },
    #             dead_letter_config: {
    #               arn: "ResourceArn",
    #             },
    #             retry_policy: {
    #               maximum_retry_attempts: 1,
    #               maximum_event_age_in_seconds: 1,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   The targets to update or add to the rule.
    #   @return [Array<Types::Target>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsRequest AWS API Documentation
    #
    class PutTargetsRequest < Struct.new(
      :rule,
      :event_bus_name,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::PutTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResponse AWS API Documentation
    #
    class PutTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target that failed to be added to a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target addition failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target addition failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/PutTargetsResultEntry AWS API Documentation
    #
    class PutTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameters to be used when the target is a Amazon
    # Redshift cluster to invoke the Amazon Redshift Data API
    # ExecuteStatement based on EventBridge events.
    #
    # @note When making an API call, you may pass RedshiftDataParameters
    #   data as a hash:
    #
    #       {
    #         secret_manager_arn: "RedshiftSecretManagerArn",
    #         database: "Database", # required
    #         db_user: "DbUser",
    #         sql: "Sql", # required
    #         statement_name: "StatementName",
    #         with_event: false,
    #       }
    #
    # @!attribute [rw] secret_manager_arn
    #   The name or ARN of the secret that enables access to the database.
    #   Required when authenticating using Amazon Web Services Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] database
    #   The name of the database. Required when authenticating using
    #   temporary credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_user
    #   The database user name. Required when authenticating using temporary
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] sql
    #   The SQL statement text to run.
    #   @return [String]
    #
    # @!attribute [rw] statement_name
    #   The name of the SQL statement. You can name the SQL statement when
    #   you create it to identify the query.
    #   @return [String]
    #
    # @!attribute [rw] with_event
    #   Indicates whether to send an event back to EventBridge after the SQL
    #   statement runs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RedshiftDataParameters AWS API Documentation
    #
    class RedshiftDataParameters < Struct.new(
      :secret_manager_arn,
      :database,
      :db_user,
      :sql,
      :statement_name,
      :with_event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemovePermissionRequest
    #   data as a hash:
    #
    #       {
    #         statement_id: "StatementId",
    #         remove_all_permissions: false,
    #         event_bus_name: "NonPartnerEventBusName",
    #       }
    #
    # @!attribute [rw] statement_id
    #   The statement ID corresponding to the account that is no longer
    #   allowed to put events to the default event bus.
    #   @return [String]
    #
    # @!attribute [rw] remove_all_permissions
    #   Specifies whether to remove all permissions.
    #   @return [Boolean]
    #
    # @!attribute [rw] event_bus_name
    #   The name of the event bus to revoke permissions for. If you omit
    #   this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemovePermissionRequest AWS API Documentation
    #
    class RemovePermissionRequest < Struct.new(
      :statement_id,
      :remove_all_permissions,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTargetsRequest
    #   data as a hash:
    #
    #       {
    #         rule: "RuleName", # required
    #         event_bus_name: "EventBusNameOrArn",
    #         ids: ["TargetId"], # required
    #         force: false,
    #       }
    #
    # @!attribute [rw] rule
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   The IDs of the targets to remove from the rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] force
    #   If this is a managed rule, created by an Amazon Web Services service
    #   on your behalf, you must specify `Force` as `True` to remove
    #   targets. This parameter is ignored for rules that are not managed
    #   rules. You can check whether a rule is a managed rule by using
    #   `DescribeRule` or `ListRules` and checking the `ManagedBy` field of
    #   the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsRequest AWS API Documentation
    #
    class RemoveTargetsRequest < Struct.new(
      :rule,
      :event_bus_name,
      :ids,
      :force)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_entry_count
    #   The number of failed entries.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_entries
    #   The failed target entries.
    #   @return [Array<Types::RemoveTargetsResultEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResponse AWS API Documentation
    #
    class RemoveTargetsResponse < Struct.new(
      :failed_entry_count,
      :failed_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target that failed to be removed from a rule.
    #
    # @!attribute [rw] target_id
    #   The ID of the target.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code that indicates why the target removal failed. If the
    #   value is `ConcurrentModificationException`, too many requests were
    #   made at the same time.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that explains why the target removal failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RemoveTargetsResultEntry AWS API Documentation
    #
    class RemoveTargetsResultEntry < Struct.new(
      :target_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `Replay` object that contains details about a replay.
    #
    # @!attribute [rw] replay_name
    #   The name of the replay.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the archive to replay event from.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   A description of why the replay is in the current state.
    #   @return [String]
    #
    # @!attribute [rw] event_start_time
    #   A time stamp for the time to start replaying events. This is
    #   determined by the time in the event as described in [Time][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutEventsRequestEntry.html#eventbridge-Type-PutEventsRequestEntry-Time
    #   @return [Time]
    #
    # @!attribute [rw] event_end_time
    #   A time stamp for the time to start replaying events. Any event with
    #   a creation time prior to the `EventEndTime` specified is replayed.
    #   @return [Time]
    #
    # @!attribute [rw] event_last_replayed_time
    #   A time stamp for the time that the last event was replayed.
    #   @return [Time]
    #
    # @!attribute [rw] replay_start_time
    #   A time stamp for the time that the replay started.
    #   @return [Time]
    #
    # @!attribute [rw] replay_end_time
    #   A time stamp for the time that the replay completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Replay AWS API Documentation
    #
    class Replay < Struct.new(
      :replay_name,
      :event_source_arn,
      :state,
      :state_reason,
      :event_start_time,
      :event_end_time,
      :event_last_replayed_time,
      :replay_start_time,
      :replay_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `ReplayDestination` object that contains details about a replay.
    #
    # @note When making an API call, you may pass ReplayDestination
    #   data as a hash:
    #
    #       {
    #         arn: "Arn", # required
    #         filter_arns: ["Arn"],
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the event bus to replay event to. You can replay events
    #   only to the event bus specified to create the archive.
    #   @return [String]
    #
    # @!attribute [rw] filter_arns
    #   A list of ARNs for rules to replay events to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ReplayDestination AWS API Documentation
    #
    class ReplayDestination < Struct.new(
      :arn,
      :filter_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are trying to create already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # An entity that you specified does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # A `RetryPolicy` object that includes information about the retry
    # policy settings.
    #
    # @note When making an API call, you may pass RetryPolicy
    #   data as a hash:
    #
    #       {
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] maximum_retry_attempts
    #   The maximum number of retry attempts to make before the request
    #   fails. Retry attempts continue until either the maximum number of
    #   attempts is made or until the duration of the
    #   `MaximumEventAgeInSeconds` is met.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum_event_age_in_seconds
    #   The maximum amount of time, in seconds, to continue to make retry
    #   attempts.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RetryPolicy AWS API Documentation
    #
    class RetryPolicy < Struct.new(
      :maximum_retry_attempts,
      :maximum_event_age_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a rule in Amazon EventBridge.
    #
    # @!attribute [rw] name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern of the rule. For more information, see [Events and
    #   Event Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression. For example, "cron(0 20 * * ? *)",
    #   "rate(5 minutes)". For more information, see [Creating an Amazon
    #   EventBridge rule that runs on a schedule][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-create-rule-schedule.html
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role that is used for target
    #   invocation.
    #
    #   If you're setting an event bus in another account as the target and
    #   that account granted permission to your account through an
    #   organization instead of directly by the account ID, you must specify
    #   a `RoleArn` with proper permissions in the `Target` structure,
    #   instead of here in this parameter.
    #   @return [String]
    #
    # @!attribute [rw] managed_by
    #   If the rule was created on behalf of your account by an Amazon Web
    #   Services service, this field displays the principal name of the
    #   service that created the rule.
    #   @return [String]
    #
    # @!attribute [rw] event_bus_name
    #   The name or ARN of the event bus associated with the rule. If you
    #   omit this, the default event bus is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :name,
      :arn,
      :event_pattern,
      :state,
      :description,
      :schedule_expression,
      :role_arn,
      :managed_by,
      :event_bus_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # This parameter contains the criteria (either InstanceIds or a tag)
    # used to specify which EC2 instances are to be sent the command.
    #
    # @note When making an API call, you may pass RunCommandParameters
    #   data as a hash:
    #
    #       {
    #         run_command_targets: [ # required
    #           {
    #             key: "RunCommandTargetKey", # required
    #             values: ["RunCommandTargetValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] run_command_targets
    #   Currently, we support including only one RunCommandTarget block,
    #   which specifies either an array of InstanceIds or a tag.
    #   @return [Array<Types::RunCommandTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RunCommandParameters AWS API Documentation
    #
    class RunCommandParameters < Struct.new(
      :run_command_targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the EC2 instances that are to be sent the command,
    # specified as key-value pairs. Each `RunCommandTarget` block can
    # include only one key, but this key may specify multiple values.
    #
    # @note When making an API call, you may pass RunCommandTarget
    #   data as a hash:
    #
    #       {
    #         key: "RunCommandTargetKey", # required
    #         values: ["RunCommandTargetValue"], # required
    #       }
    #
    # @!attribute [rw] key
    #   Can be either `tag:` *tag-key* or `InstanceIds`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   If `Key` is `tag:` *tag-key*, `Values` is a list of tag values. If
    #   `Key` is `InstanceIds`, `Values` is a list of Amazon EC2 instance
    #   IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/RunCommandTarget AWS API Documentation
    #
    class RunCommandTarget < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Name/Value pair of a parameter to start execution of a SageMaker Model
    # Building Pipeline.
    #
    # @note When making an API call, you may pass SageMakerPipelineParameter
    #   data as a hash:
    #
    #       {
    #         name: "SageMakerPipelineParameterName", # required
    #         value: "SageMakerPipelineParameterValue", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of parameter to start execution of a SageMaker Model Building
    #   Pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/SageMakerPipelineParameter AWS API Documentation
    #
    class SageMakerPipelineParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # These are custom parameters to use when the target is a SageMaker
    # Model Building Pipeline that starts based on EventBridge events.
    #
    # @note When making an API call, you may pass SageMakerPipelineParameters
    #   data as a hash:
    #
    #       {
    #         pipeline_parameter_list: [
    #           {
    #             name: "SageMakerPipelineParameterName", # required
    #             value: "SageMakerPipelineParameterValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] pipeline_parameter_list
    #   List of Parameter names and values for SageMaker Model Building
    #   Pipeline execution.
    #   @return [Array<Types::SageMakerPipelineParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/SageMakerPipelineParameters AWS API Documentation
    #
    class SageMakerPipelineParameters < Struct.new(
      :pipeline_parameter_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure includes the custom parameter to be used when the
    # target is an SQS FIFO queue.
    #
    # @note When making an API call, you may pass SqsParameters
    #   data as a hash:
    #
    #       {
    #         message_group_id: "MessageGroupId",
    #       }
    #
    # @!attribute [rw] message_group_id
    #   The FIFO message group ID to use as the target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/SqsParameters AWS API Documentation
    #
    class SqsParameters < Struct.new(
      :message_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartReplayRequest
    #   data as a hash:
    #
    #       {
    #         replay_name: "ReplayName", # required
    #         description: "ReplayDescription",
    #         event_source_arn: "Arn", # required
    #         event_start_time: Time.now, # required
    #         event_end_time: Time.now, # required
    #         destination: { # required
    #           arn: "Arn", # required
    #           filter_arns: ["Arn"],
    #         },
    #       }
    #
    # @!attribute [rw] replay_name
    #   The name of the replay to start.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the replay to start.
    #   @return [String]
    #
    # @!attribute [rw] event_source_arn
    #   The ARN of the archive to replay events from.
    #   @return [String]
    #
    # @!attribute [rw] event_start_time
    #   A time stamp for the time to start replaying events. Only events
    #   that occurred between the `EventStartTime` and `EventEndTime` are
    #   replayed.
    #   @return [Time]
    #
    # @!attribute [rw] event_end_time
    #   A time stamp for the time to stop replaying events. Only events that
    #   occurred between the `EventStartTime` and `EventEndTime` are
    #   replayed.
    #   @return [Time]
    #
    # @!attribute [rw] destination
    #   A `ReplayDestination` object that includes details about the
    #   destination for the replay.
    #   @return [Types::ReplayDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/StartReplayRequest AWS API Documentation
    #
    class StartReplayRequest < Struct.new(
      :replay_name,
      :description,
      :event_source_arn,
      :event_start_time,
      :event_end_time,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replay_arn
    #   The ARN of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the replay.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the replay is in the state.
    #   @return [String]
    #
    # @!attribute [rw] replay_start_time
    #   The time at which the replay started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/StartReplayResponse AWS API Documentation
    #
    class StartReplayResponse < Struct.new(
      :replay_arn,
      :state,
      :state_reason,
      :replay_start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair associated with an Amazon Web Services resource. In
    # EventBridge, rules and event buses support tagging.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A string you can use to assign a value. The combination of tag keys
    #   and values can help you organize and categorize your resources.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the specified tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Targets are the resources to be invoked when a rule is triggered. For
    # a complete list of services and resources that can be set as a target,
    # see [PutTargets][1].
    #
    # If you are setting the event bus of another account as the target, and
    # that account granted permission to your account through an
    # organization instead of directly by the account ID, then you must
    # specify a `RoleArn` with proper permissions in the `Target` structure.
    # For more information, see [Sending and Receiving Events Between Amazon
    # Web Services Accounts][2] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/eventbridge/latest/APIReference/API_PutTargets.html
    # [2]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html
    #
    # @note When making an API call, you may pass Target
    #   data as a hash:
    #
    #       {
    #         id: "TargetId", # required
    #         arn: "TargetArn", # required
    #         role_arn: "RoleArn",
    #         input: "TargetInput",
    #         input_path: "TargetInputPath",
    #         input_transformer: {
    #           input_paths_map: {
    #             "InputTransformerPathKey" => "TargetInputPath",
    #           },
    #           input_template: "TransformerInput", # required
    #         },
    #         kinesis_parameters: {
    #           partition_key_path: "TargetPartitionKeyPath", # required
    #         },
    #         run_command_parameters: {
    #           run_command_targets: [ # required
    #             {
    #               key: "RunCommandTargetKey", # required
    #               values: ["RunCommandTargetValue"], # required
    #             },
    #           ],
    #         },
    #         ecs_parameters: {
    #           task_definition_arn: "Arn", # required
    #           task_count: 1,
    #           launch_type: "EC2", # accepts EC2, FARGATE, EXTERNAL
    #           network_configuration: {
    #             awsvpc_configuration: {
    #               subnets: ["String"], # required
    #               security_groups: ["String"],
    #               assign_public_ip: "ENABLED", # accepts ENABLED, DISABLED
    #             },
    #           },
    #           platform_version: "String",
    #           group: "String",
    #           capacity_provider_strategy: [
    #             {
    #               capacity_provider: "CapacityProvider", # required
    #               weight: 1,
    #               base: 1,
    #             },
    #           ],
    #           enable_ecs_managed_tags: false,
    #           enable_execute_command: false,
    #           placement_constraints: [
    #             {
    #               type: "distinctInstance", # accepts distinctInstance, memberOf
    #               expression: "PlacementConstraintExpression",
    #             },
    #           ],
    #           placement_strategy: [
    #             {
    #               type: "random", # accepts random, spread, binpack
    #               field: "PlacementStrategyField",
    #             },
    #           ],
    #           propagate_tags: "TASK_DEFINITION", # accepts TASK_DEFINITION
    #           reference_id: "ReferenceId",
    #           tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue", # required
    #             },
    #           ],
    #         },
    #         batch_parameters: {
    #           job_definition: "String", # required
    #           job_name: "String", # required
    #           array_properties: {
    #             size: 1,
    #           },
    #           retry_strategy: {
    #             attempts: 1,
    #           },
    #         },
    #         sqs_parameters: {
    #           message_group_id: "MessageGroupId",
    #         },
    #         http_parameters: {
    #           path_parameter_values: ["PathParameter"],
    #           header_parameters: {
    #             "HeaderKey" => "HeaderValue",
    #           },
    #           query_string_parameters: {
    #             "QueryStringKey" => "QueryStringValue",
    #           },
    #         },
    #         redshift_data_parameters: {
    #           secret_manager_arn: "RedshiftSecretManagerArn",
    #           database: "Database", # required
    #           db_user: "DbUser",
    #           sql: "Sql", # required
    #           statement_name: "StatementName",
    #           with_event: false,
    #         },
    #         sage_maker_pipeline_parameters: {
    #           pipeline_parameter_list: [
    #             {
    #               name: "SageMakerPipelineParameterName", # required
    #               value: "SageMakerPipelineParameterValue", # required
    #             },
    #           ],
    #         },
    #         dead_letter_config: {
    #           arn: "ResourceArn",
    #         },
    #         retry_policy: {
    #           maximum_retry_attempts: 1,
    #           maximum_event_age_in_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the target. We recommend using a memorable and unique
    #   string.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the target.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to be used for this
    #   target when the rule is triggered. If one rule triggers multiple
    #   targets, you can use a different IAM role for each target.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Valid JSON text passed to the target. In this case, nothing from the
    #   event itself is passed to the target. For more information, see [The
    #   JavaScript Object Notation (JSON) Data Interchange Format][1].
    #
    #
    #
    #   [1]: http://www.rfc-editor.org/rfc/rfc7159.txt
    #   @return [String]
    #
    # @!attribute [rw] input_path
    #   The value of the JSONPath that is used for extracting part of the
    #   matched event when passing it to the target. You must use JSON dot
    #   notation, not bracket notation. For more information about JSON
    #   paths, see [JSONPath][1].
    #
    #
    #
    #   [1]: http://goessner.net/articles/JsonPath/
    #   @return [String]
    #
    # @!attribute [rw] input_transformer
    #   Settings to enable you to provide custom input to a target based on
    #   certain event data. You can extract one or more key-value pairs from
    #   the event and then use that data to send customized input to the
    #   target.
    #   @return [Types::InputTransformer]
    #
    # @!attribute [rw] kinesis_parameters
    #   The custom parameter you can use to control the shard assignment,
    #   when the target is a Kinesis data stream. If you do not include this
    #   parameter, the default is to use the `eventId` as the partition key.
    #   @return [Types::KinesisParameters]
    #
    # @!attribute [rw] run_command_parameters
    #   Parameters used when you are using the rule to invoke Amazon EC2 Run
    #   Command.
    #   @return [Types::RunCommandParameters]
    #
    # @!attribute [rw] ecs_parameters
    #   Contains the Amazon ECS task definition and task count to be used,
    #   if the event target is an Amazon ECS task. For more information
    #   about Amazon ECS tasks, see [Task Definitions ][1] in the *Amazon
    #   EC2 Container Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html
    #   @return [Types::EcsParameters]
    #
    # @!attribute [rw] batch_parameters
    #   If the event target is an Batch job, this contains the job
    #   definition, job name, and other parameters. For more information,
    #   see [Jobs][1] in the *Batch User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/batch/latest/userguide/jobs.html
    #   @return [Types::BatchParameters]
    #
    # @!attribute [rw] sqs_parameters
    #   Contains the message group ID to use when the target is a FIFO
    #   queue.
    #
    #   If you specify an SQS FIFO queue as a target, the queue must have
    #   content-based deduplication enabled.
    #   @return [Types::SqsParameters]
    #
    # @!attribute [rw] http_parameters
    #   Contains the HTTP parameters to use when the target is a API Gateway
    #   REST endpoint or EventBridge ApiDestination.
    #
    #   If you specify an API Gateway REST API or EventBridge ApiDestination
    #   as a target, you can use this parameter to specify headers, path
    #   parameters, and query string keys/values as part of your target
    #   invoking request. If you're using ApiDestinations, the
    #   corresponding Connection can also have these values configured. In
    #   case of any conflicting keys, values from the Connection take
    #   precedence.
    #   @return [Types::HttpParameters]
    #
    # @!attribute [rw] redshift_data_parameters
    #   Contains the Amazon Redshift Data API parameters to use when the
    #   target is a Amazon Redshift cluster.
    #
    #   If you specify a Amazon Redshift Cluster as a Target, you can use
    #   this to specify parameters to invoke the Amazon Redshift Data API
    #   ExecuteStatement based on EventBridge events.
    #   @return [Types::RedshiftDataParameters]
    #
    # @!attribute [rw] sage_maker_pipeline_parameters
    #   Contains the SageMaker Model Building Pipeline parameters to start
    #   execution of a SageMaker Model Building Pipeline.
    #
    #   If you specify a SageMaker Model Building Pipeline as a target, you
    #   can use this to specify parameters to start a pipeline execution
    #   based on EventBridge events.
    #   @return [Types::SageMakerPipelineParameters]
    #
    # @!attribute [rw] dead_letter_config
    #   The `DeadLetterConfig` that defines the target queue to send
    #   dead-letter queue events to.
    #   @return [Types::DeadLetterConfig]
    #
    # @!attribute [rw] retry_policy
    #   The `RetryPolicy` object that contains the retry policy
    #   configuration to use for the dead-letter queue.
    #   @return [Types::RetryPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/Target AWS API Documentation
    #
    class Target < Struct.new(
      :id,
      :arn,
      :role_arn,
      :input,
      :input_path,
      :input_transformer,
      :kinesis_parameters,
      :run_command_parameters,
      :ecs_parameters,
      :batch_parameters,
      :sqs_parameters,
      :http_parameters,
      :redshift_data_parameters,
      :sage_maker_pipeline_parameters,
      :dead_letter_config,
      :retry_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestEventPatternRequest
    #   data as a hash:
    #
    #       {
    #         event_pattern: "EventPattern", # required
    #         event: "String", # required
    #       }
    #
    # @!attribute [rw] event_pattern
    #   The event pattern. For more information, see [Events and Event
    #   Patterns][1] in the *Amazon EventBridge User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-and-event-patterns.html
    #   @return [String]
    #
    # @!attribute [rw] event
    #   The event, in JSON format, to test against the event pattern. The
    #   JSON must follow the format specified in [Amazon Web Services
    #   Events][1], and the following fields are mandatory:
    #
    #   * `id`
    #
    #   * `account`
    #
    #   * `source`
    #
    #   * `time`
    #
    #   * `region`
    #
    #   * `resources`
    #
    #   * `detail-type`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/eventbridge/latest/userguide/aws-events.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternRequest AWS API Documentation
    #
    class TestEventPatternRequest < Struct.new(
      :event_pattern,
      :event)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   Indicates whether the event matches the event pattern.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/TestEventPatternResponse AWS API Documentation
    #
    class TestEventPatternResponse < Struct.new(
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the EventBridge resource from which you are removing
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateApiDestinationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApiDestinationName", # required
    #         description: "ApiDestinationDescription",
    #         connection_arn: "ConnectionArn",
    #         invocation_endpoint: "HttpsEndpoint",
    #         http_method: "POST", # accepts POST, GET, HEAD, OPTIONS, PUT, PATCH, DELETE
    #         invocation_rate_limit_per_second: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the API destination to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The name of the API destination to update.
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The ARN of the connection to use for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] invocation_endpoint
    #   The URL to the endpoint to use for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method to use for the API destination.
    #   @return [String]
    #
    # @!attribute [rw] invocation_rate_limit_per_second
    #   The maximum number of invocations per second to send to the API
    #   destination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateApiDestinationRequest AWS API Documentation
    #
    class UpdateApiDestinationRequest < Struct.new(
      :name,
      :description,
      :connection_arn,
      :invocation_endpoint,
      :http_method,
      :invocation_rate_limit_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] api_destination_arn
    #   The ARN of the API destination that was updated.
    #   @return [String]
    #
    # @!attribute [rw] api_destination_state
    #   The state of the API destination that was updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the API destination was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the API destination was last
    #   modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateApiDestinationResponse AWS API Documentation
    #
    class UpdateApiDestinationResponse < Struct.new(
      :api_destination_arn,
      :api_destination_state,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateArchiveRequest
    #   data as a hash:
    #
    #       {
    #         archive_name: "ArchiveName", # required
    #         description: "ArchiveDescription",
    #         event_pattern: "EventPattern",
    #         retention_days: 1,
    #       }
    #
    # @!attribute [rw] archive_name
    #   The name of the archive to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the archive.
    #   @return [String]
    #
    # @!attribute [rw] event_pattern
    #   The event pattern to use to filter events sent to the archive.
    #   @return [String]
    #
    # @!attribute [rw] retention_days
    #   The number of days to retain events in the archive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateArchiveRequest AWS API Documentation
    #
    class UpdateArchiveRequest < Struct.new(
      :archive_name,
      :description,
      :event_pattern,
      :retention_days)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] archive_arn
    #   The ARN of the archive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the archive.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason that the archive is in the current state.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the archive was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateArchiveResponse AWS API Documentation
    #
    class UpdateArchiveResponse < Struct.new(
      :archive_arn,
      :state,
      :state_reason,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the API key authorization parameters to use to update the
    # connection.
    #
    # @note When making an API call, you may pass UpdateConnectionApiKeyAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         api_key_name: "AuthHeaderParameters",
    #         api_key_value: "AuthHeaderParameters",
    #       }
    #
    # @!attribute [rw] api_key_name
    #   The name of the API key to use for authorization.
    #   @return [String]
    #
    # @!attribute [rw] api_key_value
    #   The value associated with teh API key to use for authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionApiKeyAuthRequestParameters AWS API Documentation
    #
    class UpdateConnectionApiKeyAuthRequestParameters < Struct.new(
      :api_key_name,
      :api_key_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the additional parameters to use for the connection.
    #
    # @note When making an API call, you may pass UpdateConnectionAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         basic_auth_parameters: {
    #           username: "AuthHeaderParameters",
    #           password: "AuthHeaderParameters",
    #         },
    #         o_auth_parameters: {
    #           client_parameters: {
    #             client_id: "AuthHeaderParameters",
    #             client_secret: "AuthHeaderParameters",
    #           },
    #           authorization_endpoint: "HttpsEndpoint",
    #           http_method: "GET", # accepts GET, POST, PUT
    #           o_auth_http_parameters: {
    #             header_parameters: [
    #               {
    #                 key: "HeaderKey",
    #                 value: "HeaderValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             query_string_parameters: [
    #               {
    #                 key: "QueryStringKey",
    #                 value: "QueryStringValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             body_parameters: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #                 is_value_secret: false,
    #               },
    #             ],
    #           },
    #         },
    #         api_key_auth_parameters: {
    #           api_key_name: "AuthHeaderParameters",
    #           api_key_value: "AuthHeaderParameters",
    #         },
    #         invocation_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "String",
    #               is_value_secret: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] basic_auth_parameters
    #   A `UpdateConnectionBasicAuthRequestParameters` object that contains
    #   the authorization parameters for Basic authorization.
    #   @return [Types::UpdateConnectionBasicAuthRequestParameters]
    #
    # @!attribute [rw] o_auth_parameters
    #   A `UpdateConnectionOAuthRequestParameters` object that contains the
    #   authorization parameters for OAuth authorization.
    #   @return [Types::UpdateConnectionOAuthRequestParameters]
    #
    # @!attribute [rw] api_key_auth_parameters
    #   A `UpdateConnectionApiKeyAuthRequestParameters` object that contains
    #   the authorization parameters for API key authorization.
    #   @return [Types::UpdateConnectionApiKeyAuthRequestParameters]
    #
    # @!attribute [rw] invocation_http_parameters
    #   A `ConnectionHttpParameters` object that contains the additional
    #   parameters to use for the connection.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionAuthRequestParameters AWS API Documentation
    #
    class UpdateConnectionAuthRequestParameters < Struct.new(
      :basic_auth_parameters,
      :o_auth_parameters,
      :api_key_auth_parameters,
      :invocation_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Basic authorization parameters for the connection.
    #
    # @note When making an API call, you may pass UpdateConnectionBasicAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         username: "AuthHeaderParameters",
    #         password: "AuthHeaderParameters",
    #       }
    #
    # @!attribute [rw] username
    #   The user name to use for Basic authorization.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password associated with the user name to use for Basic
    #   authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionBasicAuthRequestParameters AWS API Documentation
    #
    class UpdateConnectionBasicAuthRequestParameters < Struct.new(
      :username,
      :password)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the OAuth authorization parameters to use for the connection.
    #
    # @note When making an API call, you may pass UpdateConnectionOAuthClientRequestParameters
    #   data as a hash:
    #
    #       {
    #         client_id: "AuthHeaderParameters",
    #         client_secret: "AuthHeaderParameters",
    #       }
    #
    # @!attribute [rw] client_id
    #   The client ID to use for OAuth authorization.
    #   @return [String]
    #
    # @!attribute [rw] client_secret
    #   The client secret assciated with the client ID to use for OAuth
    #   authorization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionOAuthClientRequestParameters AWS API Documentation
    #
    class UpdateConnectionOAuthClientRequestParameters < Struct.new(
      :client_id,
      :client_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the OAuth request parameters to use for the connection.
    #
    # @note When making an API call, you may pass UpdateConnectionOAuthRequestParameters
    #   data as a hash:
    #
    #       {
    #         client_parameters: {
    #           client_id: "AuthHeaderParameters",
    #           client_secret: "AuthHeaderParameters",
    #         },
    #         authorization_endpoint: "HttpsEndpoint",
    #         http_method: "GET", # accepts GET, POST, PUT
    #         o_auth_http_parameters: {
    #           header_parameters: [
    #             {
    #               key: "HeaderKey",
    #               value: "HeaderValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           query_string_parameters: [
    #             {
    #               key: "QueryStringKey",
    #               value: "QueryStringValue",
    #               is_value_secret: false,
    #             },
    #           ],
    #           body_parameters: [
    #             {
    #               key: "String",
    #               value: "String",
    #               is_value_secret: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] client_parameters
    #   A `UpdateConnectionOAuthClientRequestParameters` object that
    #   contains the client parameters to use for the connection when OAuth
    #   is specified as the authorization type.
    #   @return [Types::UpdateConnectionOAuthClientRequestParameters]
    #
    # @!attribute [rw] authorization_endpoint
    #   The URL to the authorization endpoint when OAuth is specified as the
    #   authorization type.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The method used to connect to the HTTP endpoint.
    #   @return [String]
    #
    # @!attribute [rw] o_auth_http_parameters
    #   The additional HTTP parameters used for the OAuth authorization
    #   request.
    #   @return [Types::ConnectionHttpParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionOAuthRequestParameters AWS API Documentation
    #
    class UpdateConnectionOAuthRequestParameters < Struct.new(
      :client_parameters,
      :authorization_endpoint,
      :http_method,
      :o_auth_http_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ConnectionName", # required
    #         description: "ConnectionDescription",
    #         authorization_type: "BASIC", # accepts BASIC, OAUTH_CLIENT_CREDENTIALS, API_KEY
    #         auth_parameters: {
    #           basic_auth_parameters: {
    #             username: "AuthHeaderParameters",
    #             password: "AuthHeaderParameters",
    #           },
    #           o_auth_parameters: {
    #             client_parameters: {
    #               client_id: "AuthHeaderParameters",
    #               client_secret: "AuthHeaderParameters",
    #             },
    #             authorization_endpoint: "HttpsEndpoint",
    #             http_method: "GET", # accepts GET, POST, PUT
    #             o_auth_http_parameters: {
    #               header_parameters: [
    #                 {
    #                   key: "HeaderKey",
    #                   value: "HeaderValue",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #               query_string_parameters: [
    #                 {
    #                   key: "QueryStringKey",
    #                   value: "QueryStringValue",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #               body_parameters: [
    #                 {
    #                   key: "String",
    #                   value: "String",
    #                   is_value_secret: false,
    #                 },
    #               ],
    #             },
    #           },
    #           api_key_auth_parameters: {
    #             api_key_name: "AuthHeaderParameters",
    #             api_key_value: "AuthHeaderParameters",
    #           },
    #           invocation_http_parameters: {
    #             header_parameters: [
    #               {
    #                 key: "HeaderKey",
    #                 value: "HeaderValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             query_string_parameters: [
    #               {
    #                 key: "QueryStringKey",
    #                 value: "QueryStringValue",
    #                 is_value_secret: false,
    #               },
    #             ],
    #             body_parameters: [
    #               {
    #                 key: "String",
    #                 value: "String",
    #                 is_value_secret: false,
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the connection.
    #   @return [String]
    #
    # @!attribute [rw] authorization_type
    #   The type of authorization to use for the connection.
    #   @return [String]
    #
    # @!attribute [rw] auth_parameters
    #   The authorization parameters to use for the connection.
    #   @return [Types::UpdateConnectionAuthRequestParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :name,
      :description,
      :authorization_type,
      :auth_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection_arn
    #   The ARN of the connection that was updated.
    #   @return [String]
    #
    # @!attribute [rw] connection_state
    #   The state of the connection that was updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A time stamp for the time that the connection was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   A time stamp for the time that the connection was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] last_authorized_time
    #   A time stamp for the time that the connection was last authorized.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/events-2015-10-07/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Struct.new(
      :connection_arn,
      :connection_state,
      :creation_time,
      :last_modified_time,
      :last_authorized_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
