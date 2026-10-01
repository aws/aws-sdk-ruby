# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaWeb
  module Types

    # You do not have sufficient permissions to perform this operation.
    #
    # @!attribute [rw] message
    #   A message describing the access denied error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quotas that apply to web functions in your account in the current
    # AWS Region.
    #
    # @!attribute [rw] max_total_arm_v_cpus
    #   The maximum total number of Arm vCPUs that you can allocate across
    #   all of your web functions in the current AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_total_rate_limit
    #   The maximum number of requests per second allowed across all of your
    #   web function endpoints in your account in the current AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_revisions_per_function
    #   The maximum number of revisions that a single web function can have.
    #   @return [Integer]
    #
    # @!attribute [rw] max_endpoints_per_function
    #   The maximum number of endpoints that a single web function can have.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccountQuotas AWS API Documentation
    #
    class AccountQuotas < Struct.new(
      :max_total_arm_v_cpus,
      :max_total_rate_limit,
      :max_revisions_per_function,
      :max_endpoints_per_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains your current web function usage for the current AWS Region.
    #
    # @!attribute [rw] function_count
    #   The number of web functions in your account in the current AWS
    #   Region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccountUsage AWS API Documentation
    #
    class AccountUsage < Struct.new(
      :function_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The build configuration for a web function revision, including code
    # location and runtime settings.
    #
    # @!attribute [rw] code_config
    #   The code configuration specifying where the deployment artifact is
    #   stored.
    #   @return [Types::CodeConfig]
    #
    # @!attribute [rw] runtime_config
    #   The runtime configuration for the revision.
    #   @return [Types::RuntimeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/BuildConfig AWS API Documentation
    #
    class BuildConfig < Struct.new(
      :code_config,
      :runtime_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code configuration specifying the location of the deployment
    # artifact.
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 location of the deployment artifact.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CodeConfig AWS API Documentation
    #
    class CodeConfig < Struct.new(
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. Resolve
    # the conflict and try again.
    #
    # @!attribute [rw] message
    #   A message describing the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource in conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource in conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a web function endpoint.
    #
    # @!attribute [rw] function_name
    #   The name of the web function to create the endpoint for. You can
    #   specify the function name or the function ARN. The length constraint
    #   applies only to the full ARN. If you specify only the function name,
    #   it is limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to create. The name can contain letters,
    #   numbers, hyphens (-), and underscores (\_), and can't begin or end
    #   with a hyphen or an underscore. The length constraint applies only
    #   to the full ARN. If you specify only the endpoint name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint to create. Determines how traffic is served and
    #   routed across Regions.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for the endpoint. Controls whether the
    #   endpoint automatically serves the newest revision. If you don't
    #   specify a value, the default is `Disabled`, and this default is
    #   returned in the response.
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   A list of revision weights that determine how traffic is distributed
    #   across revisions. Up to two revisions can be specified for canary or
    #   blue-green deployments.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] regions
    #   The list of Regions for the endpoint. Required when the endpoint
    #   type is `MultiRegion` or `PerRegion`: specify at least one Region
    #   other than the Region where you create the endpoint (the home
    #   Region). The home Region is added automatically if you don't
    #   include it; specifying only the home Region isn't allowed. When the
    #   endpoint type is `HomeRegion`, omit this field or specify only the
    #   home Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for the endpoint. There is no default
    #   value. If you don't specify a scaling configuration, it is absent
    #   from the response.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for the endpoint. There is no default
    #   value. If you don't specify a throttling configuration, it is
    #   absent from the response.
    #   @return [Types::ThrottleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionEndpointRequest AWS API Documentation
    #
    class CreateWebFunctionEndpointRequest < Struct.new(
      :function_name,
      :endpoint_name,
      :description,
      :endpoint_type,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the created endpoint.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of a web function endpoint. Possible values: `HomeRegion`
    #   (serves from the Region where the function was created),
    #   `MultiRegion` (replicates across chosen Regions and routes to the
    #   nearest), `PerRegion` (separate endpoint per Region).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name assigned to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for a web function endpoint. Possible values:
    #   `ApplicationManaged` (the function handles authorization), `IamAuth`
    #   (Lambda authorizes requests with AWS SigV4 and IAM).
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for a web function endpoint. Possible
    #   values: `LatestRevision` (endpoint automatically serves the newest
    #   revision), `Disabled` (revision routing is fixed until explicitly
    #   changed).
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   The traffic distribution across revisions for the endpoint. Each
    #   entry maps a revision to a weight from 1 to 100.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] regions
    #   The Regions configured for the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for a web function endpoint.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for a web function endpoint.
    #   @return [Types::ThrottleConfig]
    #
    # @!attribute [rw] state
    #   The current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the most recent update to an endpoint. Possible
    #   values: `InProgress` (update is in progress), `Successful` (update
    #   completed successfully), `Failed` (update failed).
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The reason for the endpoint's most recent update status.
    #   @return [String]
    #
    # @!attribute [rw] regional_endpoints
    #   The list of regional endpoint configurations.
    #   @return [Hash<String,Types::RegionalEndpoint>]
    #
    # @!attribute [rw] created_at
    #   The date and time the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionEndpointResponse AWS API Documentation
    #
    class CreateWebFunctionEndpointResponse < Struct.new(
      :function_arn,
      :endpoint_arn,
      :endpoint_name,
      :description,
      :endpoint_type,
      :domain_name,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason,
      :regional_endpoints,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. The name can contain letters, numbers,
    #   hyphens (-), and underscores (\_), and can't begin or end with a
    #   hyphen or an underscore. The length constraint applies only to the
    #   full ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] revision_config
    #   The configuration for the initial revision of the web function,
    #   including code and service settings.
    #   @return [Types::RevisionConfig]
    #
    # @!attribute [rw] endpoint_config
    #   The configuration for the initial endpoint of the web function.
    #   @return [Types::EndpointConfig]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to apply to the web function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionRequest AWS API Documentation
    #
    class CreateWebFunctionRequest < Struct.new(
      :function_name,
      :revision_config,
      :endpoint_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the created web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the web function was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the web function was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   A summary of the initial revision created with the web function.
    #   @return [Types::FunctionRevisionSummary]
    #
    # @!attribute [rw] endpoint
    #   A summary of the initial endpoint created with the web function.
    #   @return [Types::FunctionEndpointSummary]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values associated with the web function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionResponse AWS API Documentation
    #
    class CreateWebFunctionResponse < Struct.new(
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at,
      :revision,
      :endpoint,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a web function revision.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the revision.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service
    #   (AWS KMS) key used to encrypt the revision's code and environment
    #   variables.
    #   @return [String]
    #
    # @!attribute [rw] build_config
    #   The build configuration for the revision, including code location
    #   and runtime settings.
    #   @return [Types::BuildConfig]
    #
    # @!attribute [rw] service_config
    #   The service configuration for the revision, including execution
    #   role, timeout, and concurrency settings.
    #   @return [Types::ServiceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionRevisionRequest AWS API Documentation
    #
    class CreateWebFunctionRevisionRequest < Struct.new(
      :function_name,
      :description,
      :kms_key_arn,
      :build_config,
      :service_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the created revision.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] revision_arn
    #   The Amazon Resource Name (ARN) of the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the revision.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt
    #   the revision's code and environment variables.
    #   @return [String]
    #
    # @!attribute [rw] build_config
    #   The build configuration for a web function revision, including code
    #   location and runtime settings.
    #   @return [Types::BuildConfig]
    #
    # @!attribute [rw] service_config
    #   The service configuration for a web function revision, including
    #   execution role, timeout, concurrency, and telemetry settings.
    #   @return [Types::ServiceConfig]
    #
    # @!attribute [rw] state
    #   The current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A list of errors encountered during revision creation. This field is
    #   absent when the revision has no errors.
    #   @return [Array<Types::RevisionError>]
    #
    # @!attribute [rw] created_at
    #   The date and time the revision was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/CreateWebFunctionRevisionResponse AWS API Documentation
    #
    class CreateWebFunctionRevisionResponse < Struct.new(
      :function_arn,
      :revision_arn,
      :revision_id,
      :description,
      :kms_key_arn,
      :build_config,
      :service_config,
      :state,
      :state_reason,
      :errors,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to delete a resource-based policy.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy. Use this to prevent deleting a policy
    #   that has been updated since you last retrieved it. If you don't
    #   specify a value, the policy is deleted regardless of its current
    #   revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to delete a web function endpoint.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to delete. You can specify the endpoint
    #   name or the endpoint ARN. The length constraint applies only to the
    #   full ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunctionEndpointRequest AWS API Documentation
    #
    class DeleteWebFunctionEndpointRequest < Struct.new(
      :function_name,
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to delete a web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function to delete. You can specify the function
    #   name or the function ARN. The length constraint applies only to the
    #   full ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunctionRequest AWS API Documentation
    #
    class DeleteWebFunctionRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to delete a web function revision.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision to delete. You can specify the
    #   revision identifier or the revision ARN. The length constraint
    #   applies only to the full ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/DeleteWebFunctionRevisionRequest AWS API Documentation
    #
    class DeleteWebFunctionRevisionRequest < Struct.new(
      :function_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a web function endpoint.
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint. The name can contain letters, numbers,
    #   hyphens (-), and underscores (\_), and can't begin or end with a
    #   hyphen or an underscore. The length constraint applies only to the
    #   full ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Determines how traffic is served and routed
    #   across Regions.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for the endpoint. If you don't specify a
    #   value, the default is `Disabled`, and this default is returned in
    #   the response.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of Regions for the endpoint. Required when the endpoint
    #   type is `MultiRegion` or `PerRegion`: specify at least one Region
    #   other than the Region where you create the endpoint (the home
    #   Region). The home Region is added automatically if you don't
    #   include it; specifying only the home Region isn't allowed. When the
    #   endpoint type is `HomeRegion`, omit this field or specify only the
    #   home Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for the endpoint.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for the endpoint.
    #   @return [Types::ThrottleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/EndpointConfig AWS API Documentation
    #
    class EndpointConfig < Struct.new(
      :endpoint_name,
      :description,
      :endpoint_type,
      :auth_type,
      :auto_deployment_mode,
      :regions,
      :scaling_config,
      :throttle_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to apply when listing resources.
    #
    # @!attribute [rw] name
    #   The name of the filter field.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a web function endpoint.
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   The revision weights for the endpoint.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] regions
    #   The list of Regions for the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for the endpoint. This field is absent if
    #   the endpoint has no scaling configuration.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for the endpoint. This field is absent
    #   if the endpoint has no throttling configuration.
    #   @return [Types::ThrottleConfig]
    #
    # @!attribute [rw] state
    #   The current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the most recent update to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The reason for the current update status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/FunctionEndpointSummary AWS API Documentation
    #
    class FunctionEndpointSummary < Struct.new(
      :endpoint_arn,
      :endpoint_name,
      :description,
      :endpoint_type,
      :domain_name,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a web function revision.
    #
    # @!attribute [rw] revision_arn
    #   The Amazon Resource Name (ARN) of the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the revision.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the revision was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/FunctionRevisionSummary AWS API Documentation
    #
    class FunctionRevisionSummary < Struct.new(
      :revision_arn,
      :revision_id,
      :description,
      :state,
      :state_reason,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the web function was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the web function was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/FunctionSummary AWS API Documentation
    #
    class FunctionSummary < Struct.new(
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve a resource-based policy.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetResourcePolicyRequest AWS API Documentation
    #
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the resource-based policy and its revision ID.
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy attached to the web
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetResourcePolicyResponse AWS API Documentation
    #
    class GetResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebAccountSettingsRequest AWS API Documentation
    #
    class GetWebAccountSettingsRequest < Aws::EmptyStructure; end

    # Contains your AWS Lambda Web Functions account quotas and usage for
    # the current AWS Region.
    #
    # @!attribute [rw] account_quotas
    #   The quotas that apply to web functions in your account in the
    #   current AWS Region.
    #   @return [Types::AccountQuotas]
    #
    # @!attribute [rw] account_usage
    #   The current web function usage for your account in the current AWS
    #   Region.
    #   @return [Types::AccountUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebAccountSettingsResponse AWS API Documentation
    #
    class GetWebAccountSettingsResponse < Struct.new(
      :account_quotas,
      :account_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve a web function endpoint.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to retrieve. You can specify the endpoint
    #   name or the endpoint ARN. The length constraint applies only to the
    #   full ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionEndpointRequest AWS API Documentation
    #
    class GetWebFunctionEndpointRequest < Struct.new(
      :function_name,
      :endpoint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the web function endpoint.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of a web function endpoint. Possible values: `HomeRegion`
    #   (serves from the Region where the function was created),
    #   `MultiRegion` (replicates across chosen Regions and routes to the
    #   nearest), `PerRegion` (separate endpoint per Region).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name assigned to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for a web function endpoint. Possible values:
    #   `ApplicationManaged` (the function handles authorization), `IamAuth`
    #   (Lambda authorizes requests with AWS SigV4 and IAM).
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for a web function endpoint. Possible
    #   values: `LatestRevision` (endpoint automatically serves the newest
    #   revision), `Disabled` (revision routing is fixed until explicitly
    #   changed).
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   The traffic distribution across revisions for the endpoint. Each
    #   entry maps a revision to a weight from 1 to 100.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] regions
    #   The Regions configured for the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for a web function endpoint.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for a web function endpoint.
    #   @return [Types::ThrottleConfig]
    #
    # @!attribute [rw] state
    #   The current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the most recent update to an endpoint. Possible
    #   values: `InProgress` (update is in progress), `Successful` (update
    #   completed successfully), `Failed` (update failed).
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The reason for the endpoint's most recent update status.
    #   @return [String]
    #
    # @!attribute [rw] regional_endpoints
    #   The list of regional endpoint configurations.
    #   @return [Hash<String,Types::RegionalEndpoint>]
    #
    # @!attribute [rw] created_at
    #   The date and time the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionEndpointResponse AWS API Documentation
    #
    class GetWebFunctionEndpointResponse < Struct.new(
      :function_arn,
      :endpoint_arn,
      :endpoint_name,
      :description,
      :endpoint_type,
      :domain_name,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason,
      :regional_endpoints,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve a web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function to retrieve. You can specify the
    #   function name or the function ARN. The length constraint applies
    #   only to the full ARN. If you specify only the function name, it is
    #   limited to 64 characters in length.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionRequest AWS API Documentation
    #
    class GetWebFunctionRequest < Struct.new(
      :function_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the web function.
    #
    # @!attribute [rw] function_name
    #   The name of the web function.
    #   @return [String]
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the web function.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the web function was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the web function was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionResponse AWS API Documentation
    #
    class GetWebFunctionResponse < Struct.new(
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve a web function revision.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision to retrieve. You can specify the
    #   revision identifier or the revision ARN. The length constraint
    #   applies only to the full ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionRevisionRequest AWS API Documentation
    #
    class GetWebFunctionRevisionRequest < Struct.new(
      :function_name,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the web function revision.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] revision_arn
    #   The Amazon Resource Name (ARN) of the revision.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the revision.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt
    #   the revision's code and environment variables.
    #   @return [String]
    #
    # @!attribute [rw] build_config
    #   The build configuration for a web function revision, including code
    #   location and runtime settings.
    #   @return [Types::BuildConfig]
    #
    # @!attribute [rw] service_config
    #   The service configuration for a web function revision, including
    #   execution role, timeout, concurrency, and telemetry settings.
    #   @return [Types::ServiceConfig]
    #
    # @!attribute [rw] state
    #   The current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the revision.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A list of errors encountered during revision creation. This field is
    #   absent when the revision has no errors.
    #   @return [Array<Types::RevisionError>]
    #
    # @!attribute [rw] created_at
    #   The date and time the revision was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebFunctionRevisionResponse AWS API Documentation
    #
    class GetWebFunctionRevisionResponse < Struct.new(
      :function_arn,
      :revision_arn,
      :revision_id,
      :description,
      :kms_key_arn,
      :build_config,
      :service_config,
      :state,
      :state_reason,
      :errors,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Try again later.
    #
    # @!attribute [rw] message
    #   A message describing the internal error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list tags for a resource.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of tags.
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values associated with the web function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list web function endpoints.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of filters to apply to the results. Supported filter names:
    #   `authType`, `autoDeploymentMode`, `endpointType`, `state`, and
    #   `updateStatus`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionEndpointsRequest AWS API Documentation
    #
    class ListWebFunctionEndpointsRequest < Struct.new(
      :function_name,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of web function endpoints.
    #
    # @!attribute [rw] endpoints
    #   A list of endpoint summaries for the web function.
    #   @return [Array<Types::FunctionEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionEndpointsResponse AWS API Documentation
    #
    class ListWebFunctionEndpointsResponse < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list web function revisions.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of filters to apply to the results. The only supported filter
    #   name is `state`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionRevisionsRequest AWS API Documentation
    #
    class ListWebFunctionRevisionsRequest < Struct.new(
      :function_name,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of web function revisions.
    #
    # @!attribute [rw] revisions
    #   A list of revision summaries for the web function.
    #   @return [Array<Types::FunctionRevisionSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionRevisionsResponse AWS API Documentation
    #
    class ListWebFunctionRevisionsResponse < Struct.new(
      :revisions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list web functions.
    #
    # @!attribute [rw] filters
    #   A list of filters to apply to the results. The only supported filter
    #   name is `state`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Minimum
    #   value of 1, maximum value of 50. Default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's returned by a previous request to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionsRequest AWS API Documentation
    #
    class ListWebFunctionsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of web functions.
    #
    # @!attribute [rw] functions
    #   A list of web function summaries.
    #   @return [Array<Types::FunctionSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ListWebFunctionsResponse AWS API Documentation
    #
    class ListWebFunctionsResponse < Struct.new(
      :functions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration for a web function revision.
    #
    # @!attribute [rw] log_group
    #   The name of the Amazon CloudWatch Logs log group the web function
    #   sends logs to. If you don't specify a value, the default is
    #   `/aws/lambda/web/{functionName}`, and this default is returned in
    #   the response.
    #   @return [String]
    #
    # @!attribute [rw] application_log_level
    #   The log level for application logs emitted by the web function. If
    #   you don't specify a value, the default is `INFO`, and this default
    #   is returned in the response.
    #   @return [String]
    #
    # @!attribute [rw] system_log_level
    #   The log level for system logs emitted by the Lambda runtime. If you
    #   don't specify a value, the default is `INFO`, and this default is
    #   returned in the response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :log_group,
      :application_log_level,
      :system_log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to add or update a resource-based policy.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy to attach to the web
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the existing policy. Use this to prevent
    #   conflicts when updating a policy concurrently. If you don't specify
    #   a value, the update proceeds without checking the current revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the resource-based policy and its revision ID.
    #
    # @!attribute [rw] policy
    #   The JSON-formatted resource-based policy attached to the web
    #   function.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the policy. Use this value in subsequent
    #   `PutResourcePolicy` or `DeleteResourcePolicy` requests to prevent
    #   conflicts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the endpoint configuration and state in a specific Region.
    #
    # @!attribute [rw] domain_name
    #   The domain name of the regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   The revision weights for the regional endpoint.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for the regional endpoint. This field is
    #   absent if the endpoint has no scaling configuration.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for the regional endpoint. This field
    #   is absent if the endpoint has no throttling configuration.
    #   @return [Types::ThrottleConfig]
    #
    # @!attribute [rw] state
    #   The current state of the regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the most recent update to the regional endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The reason for the current update status of the regional endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/RegionalEndpoint AWS API Documentation
    #
    class RegionalEndpoint < Struct.new(
      :domain_name,
      :auth_type,
      :revision_weights,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found. Verify the resource identifier
    # and try again.
    #
    # @!attribute [rw] message
    #   A message describing the resource not found error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a web function revision, including code build
    # settings and service configuration.
    #
    # @!attribute [rw] description
    #   A description of the revision.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service
    #   (AWS KMS) key used to encrypt the revision's code and environment
    #   variables.
    #   @return [String]
    #
    # @!attribute [rw] build_config
    #   The build configuration for the revision.
    #   @return [Types::BuildConfig]
    #
    # @!attribute [rw] service_config
    #   The service configuration for the revision.
    #   @return [Types::ServiceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/RevisionConfig AWS API Documentation
    #
    class RevisionConfig < Struct.new(
      :description,
      :kms_key_arn,
      :build_config,
      :service_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single error encountered while creating or reading a web function
    # revision. The error describes the affected attribute, an error code,
    # and a human-readable message. This structure is present only when the
    # revision has errors.
    #
    # @!attribute [rw] attribute
    #   The name of the revision attribute that the error applies to. Must
    #   be between 1 and 64 characters.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   A short, machine-readable code that identifies the error. Must be
    #   between 1 and 64 characters.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable message describing the error. Must be between 1 and
    #   2048 characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/RevisionError AWS API Documentation
    #
    class RevisionError < Struct.new(
      :attribute,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a revision and its traffic weight for an endpoint. Up to two
    # revisions can be assigned weights to split traffic for canary or
    # blue-green deployments.
    #
    # @!attribute [rw] revision_id
    #   The identifier of the revision.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The percentage of traffic to route to this revision. Minimum value
    #   of 1, maximum value of 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/RevisionWeight AWS API Documentation
    #
    class RevisionWeight < Struct.new(
      :revision_id,
      :weight)
      SENSITIVE = []
      include Aws::Structure
    end

    # The runtime configuration for a web function revision.
    #
    # @!attribute [rw] runtime
    #   The runtime identifier for the web function (for example, a Node.js
    #   runtime identifier).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/RuntimeConfig AWS API Documentation
    #
    class RuntimeConfig < Struct.new(
      :runtime)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location of a deployment artifact.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket. Must be between 3 and 63
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The Amazon S3 object key. Must be between 1 and 1024 characters.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the Amazon S3 object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket,
      :key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scaling configuration for a web function endpoint.
    #
    # @!attribute [rw] max_environments
    #   The maximum number of concurrent execution environments for the
    #   endpoint. Minimum value of 2, maximum value of 10000. There is no
    #   default value. If you don't specify a value, the scaling
    #   configuration is absent from the response. On an update, omit
    #   `scalingConfig` to keep the current value, or specify an empty
    #   object to clear a previously set value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ScalingConfig AWS API Documentation
    #
    class ScalingConfig < Struct.new(
      :max_environments)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service configuration for a web function revision, including
    # execution role, timeout, concurrency, and telemetry settings.
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role that the web function assumes when it runs.
    #   This role provides permissions to access AWS services and resources.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   The amount of time (in seconds) that Lambda allows the web function
    #   to run before stopping it. Minimum value of 3, maximum value of 900.
    #   If you don't specify a value, the default is 30, and this default
    #   is returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency_per_environment
    #   The maximum number of concurrent requests handled per execution
    #   environment. Minimum value of 1, maximum value of 128. If you don't
    #   specify a value, the default is 64, and this default is returned in
    #   the response.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_variables
    #   A map of environment variable key-value pairs available to the web
    #   function at runtime. Environment variable values are sensitive.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] telemetry_config
    #   The telemetry configuration for the web function, including logging
    #   settings.
    #   @return [Types::TelemetryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ServiceConfig AWS API Documentation
    #
    class ServiceConfig < Struct.new(
      :execution_role_arn,
      :timeout_seconds,
      :max_concurrency_per_environment,
      :environment_variables,
      :telemetry_config)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # A service quota was exceeded. Request a quota increase or reduce usage
    # and try again.
    #
    # @!attribute [rw] message
    #   A message describing the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the service that owns the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of the exceeded quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to add tags to a resource.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tag keys and values to add to the web function.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The telemetry configuration for a web function revision.
    #
    # @!attribute [rw] logging_config
    #   The logging configuration for the web function.
    #   @return [Types::LoggingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/TelemetryConfig AWS API Documentation
    #
    class TelemetryConfig < Struct.new(
      :logging_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The throttling configuration for a web function endpoint.
    #
    # @!attribute [rw] rate_limit
    #   The maximum request rate per second for the endpoint. The value must
    #   be one of the following supported values: `0`, `100`, `200`, `300`,
    #   `400`, `500`, `600`, `700`, `800`, `900`, `1000`, `2000`, `3000`,
    #   `4000`, `5000`, `6000`, `7000`, `8000`, `9000`, or `10000`. The
    #   maximum effective value is also bounded by your account-level
    #   maximum total rate limit. There is no default value. If you don't
    #   specify a value, the throttling configuration is absent from the
    #   response. On an update, omit `throttleConfig` to keep the current
    #   value, or specify an empty object to clear a previously set value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ThrottleConfig AWS API Documentation
    #
    class ThrottleConfig < Struct.new(
      :rate_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled. Reduce the frequency of requests and try
    # again.
    #
    # @!attribute [rw] message
    #   A message describing the throttling error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The service code of the throttled service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that was exceeded, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to remove tags from a resource.
    #
    # @!attribute [rw] resource
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the web function.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to update a web function endpoint.
    #
    # @!attribute [rw] function_name
    #   The name of the web function. You can specify the function name or
    #   the function ARN. The length constraint applies only to the full
    #   ARN. If you specify only the function name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint to update. You can specify the endpoint
    #   name or the endpoint ARN. The length constraint applies only to the
    #   full ARN. If you specify only the endpoint name, it is limited to 64
    #   characters in length.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   A list of revision weights that determine how traffic is distributed
    #   across revisions.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for the endpoint. Omit this field to keep
    #   the current scaling configuration. To clear a previously set
    #   `maxEnvironments` value, specify an empty object.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for the endpoint. Omit this field to
    #   keep the current throttling configuration. To clear a previously set
    #   `rateLimit` value, specify an empty object.
    #   @return [Types::ThrottleConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/UpdateWebFunctionEndpointRequest AWS API Documentation
    #
    class UpdateWebFunctionEndpointRequest < Struct.new(
      :function_name,
      :endpoint_name,
      :description,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :scaling_config,
      :throttle_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the updated endpoint.
    #
    # @!attribute [rw] function_arn
    #   The Amazon Resource Name (ARN) of the web function.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of a web function endpoint. Possible values: `HomeRegion`
    #   (serves from the Region where the function was created),
    #   `MultiRegion` (replicates across chosen Regions and routes to the
    #   nearest), `PerRegion` (separate endpoint per Region).
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name assigned to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authorization type for a web function endpoint. Possible values:
    #   `ApplicationManaged` (the function handles authorization), `IamAuth`
    #   (Lambda authorizes requests with AWS SigV4 and IAM).
    #   @return [String]
    #
    # @!attribute [rw] auto_deployment_mode
    #   The auto-deployment mode for a web function endpoint. Possible
    #   values: `LatestRevision` (endpoint automatically serves the newest
    #   revision), `Disabled` (revision routing is fixed until explicitly
    #   changed).
    #   @return [String]
    #
    # @!attribute [rw] revision_weights
    #   The traffic distribution across revisions for the endpoint. Each
    #   entry maps a revision to a weight from 1 to 100.
    #   @return [Array<Types::RevisionWeight>]
    #
    # @!attribute [rw] regions
    #   The Regions configured for the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scaling_config
    #   The scaling configuration for a web function endpoint.
    #   @return [Types::ScalingConfig]
    #
    # @!attribute [rw] throttle_config
    #   The throttling configuration for a web function endpoint.
    #   @return [Types::ThrottleConfig]
    #
    # @!attribute [rw] state
    #   The current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the most recent update to an endpoint. Possible
    #   values: `InProgress` (update is in progress), `Successful` (update
    #   completed successfully), `Failed` (update failed).
    #   @return [String]
    #
    # @!attribute [rw] update_status_reason
    #   The reason for the endpoint's most recent update status.
    #   @return [String]
    #
    # @!attribute [rw] regional_endpoints
    #   The list of regional endpoint configurations.
    #   @return [Hash<String,Types::RegionalEndpoint>]
    #
    # @!attribute [rw] created_at
    #   The date and time the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the endpoint was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/UpdateWebFunctionEndpointResponse AWS API Documentation
    #
    class UpdateWebFunctionEndpointResponse < Struct.new(
      :function_arn,
      :endpoint_arn,
      :endpoint_name,
      :description,
      :endpoint_type,
      :domain_name,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason,
      :regional_endpoints,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed validation. Check the request parameters and try
    # again.
    #
    # @!attribute [rw] message
    #   A message describing the validation error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

