# frozen_string_literal: true

# This is generated code!

module Aws::LambdaWeb
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permission to perform this operation. Check the IAM policies for your identity and any resource-based policy on the web function.</p>
    # @!attribute message
    #   <p>A message describing the access denied error.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The quotas that apply to web functions in your account in the current AWS Region.</p>
    # @!attribute max_total_arm_v_cpus
    #   <p>The maximum total number of Arm vCPUs that you can allocate across all of your web functions in the current AWS Region.</p>
    #   @return [Integer]
    # @!attribute max_total_rate_limit
    #   <p>The maximum number of requests per second allowed across all of your web function endpoints in your account in the current AWS Region.</p>
    #   @return [Integer]
    # @!attribute max_revisions_per_function
    #   <p>The maximum number of revisions that a single web function can have.</p>
    #   @return [Integer]
    # @!attribute max_endpoints_per_function
    #   <p>The maximum number of endpoints that a single web function can have.</p>
    #   @return [Integer]
    class AccountQuotas < Struct.new(
      nil,
      :max_total_arm_v_cpus,
      :max_total_rate_limit,
      :max_revisions_per_function,
      :max_endpoints_per_function,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains your current web function usage for the current AWS Region.</p>
    # @!attribute function_count
    #   <p>The number of web functions in your account in the current AWS Region. This count includes web functions in all states, not only functions in the <code>Active</code> state.</p>
    #   @return [Integer]
    class AccountUsage < Struct.new(
      nil,
      :function_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The build configuration for a web function revision, including code location and runtime settings.</p>
    # @!attribute code_config
    #   <p>The code configuration specifying where the deployment artifact is stored.</p>
    #   @return [Types::CodeConfig]
    # @!attribute runtime_config
    #   <p>The runtime configuration for the revision.</p>
    #   @return [Types::RuntimeConfig]
    class BuildConfig < Struct.new(
      nil,
      :code_config,
      :runtime_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code configuration specifying the location of the deployment artifact.</p>
    # @!attribute s3_object
    #   <p>The Amazon S3 location of the deployment artifact.</p>
    #   @return [Types::S3Object]
    class CodeConfig < Struct.new(
      nil,
      :s3_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. For example, the resource is being modified by another request, you tried to delete a revision that is serving traffic on an endpoint, or the policy revision ID that you specified doesn't match the current policy. Resolve the conflict and try again.</p>
    # @!attribute message
    #   <p>A message describing the conflict.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource in conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource in conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a web function endpoint.</p>
    # @!attribute function_name
    #   <p>The web function to create the endpoint for.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint to create. The name can contain letters, numbers, hyphens (-), and underscores (_), and can't begin or end with a hyphen or an underscore. The name is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint to create. Determines how traffic is served and routed across Regions.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for the endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint. Controls whether the endpoint automatically serves the newest revision. If you don't specify a value, the default is <code>Disabled</code>, and this default is returned in the response.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>A list of revision weights that determine how traffic is distributed across revisions. You can specify up to two revisions for canary or blue-green deployments.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute regions
    #   <p>The list of Regions for the endpoint. Required when the endpoint type is <code>MultiRegion</code> or <code>PerRegion</code>: specify at least one Region other than the Region where you create the endpoint (the home Region). The home Region is added automatically if you don't include it; specifying only the home Region isn't allowed. When the endpoint type is <code>HomeRegion</code>, omit this field or specify only the home Region.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for the endpoint. There is no default value. If you don't specify a scaling configuration, it is absent from the response.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for the endpoint. There is no default value. If you don't specify a throttling configuration, it is absent from the response.</p>
    #   @return [Types::ThrottleConfig]
    class CreateWebFunctionEndpointRequest < Struct.new(
      nil,
      :function_name,
      :endpoint_name,
      :description,
      :endpoint_type,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :regions,
      :scaling_config,
      :throttle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the created endpoint.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name assigned to the endpoint.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>The traffic distribution across revisions for the endpoint. Each entry maps a revision to a weight from 1 to 100.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute regions
    #   <p>The Regions configured for the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for a web function endpoint.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for a web function endpoint.</p>
    #   @return [Types::ThrottleConfig]
    # @!attribute state
    #   <p>The current state of the endpoint.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the endpoint.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the most recent update to an endpoint. Possible values:</p> <ul> <li> <p> <code>InProgress</code> – The update is in progress.</p> </li> <li> <p> <code>Successful</code> – The update completed successfully.</p> </li> <li> <p> <code>Failed</code> – The update failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute update_status_reason
    #   <p>The reason for the endpoint's most recent update status.</p>
    #   @return [String]
    # @!attribute regional_endpoints
    #   <p>The list of regional endpoint configurations.</p>
    #   @return [Hash<String, Types::RegionalEndpoint>]
    # @!attribute created_at
    #   <p>The date and time the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the endpoint was last updated.</p>
    #   @return [Time]
    class CreateWebFunctionEndpointResponse < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a web function.</p>
    # @!attribute function_name
    #   <p>The name of the web function. The name can contain letters, numbers, hyphens (-), and underscores (_), and can't begin or end with a hyphen or an underscore. The name is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute revision_config
    #   <p>The configuration for the initial revision of the web function, including code and service settings.</p>
    #   @return [Types::RevisionConfig]
    # @!attribute endpoint_config
    #   <p>The configuration for the initial endpoint of the web function.</p>
    #   @return [Types::EndpointConfig]
    # @!attribute tags
    #   <p>A map of tag keys and values to apply to the web function.</p>
    #   @return [Hash<String, String>]
    class CreateWebFunctionRequest < Struct.new(
      nil,
      :function_name,
      :revision_config,
      :endpoint_config,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the created web function.</p>
    # @!attribute function_name
    #   <p>The name of the web function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the web function.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the web function.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the web function was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the web function was last updated.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>A summary of the initial revision created with the web function.</p>
    #   @return [Types::FunctionRevisionSummary]
    # @!attribute endpoint
    #   <p>A summary of the initial endpoint created with the web function.</p>
    #   @return [Types::FunctionEndpointSummary]
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the web function.</p>
    #   @return [Hash<String, String>]
    class CreateWebFunctionResponse < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at,
      :revision,
      :endpoint,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a web function revision.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the revision.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key used to encrypt the revision's code and environment variables.</p>
    #   @return [String]
    # @!attribute build_config
    #   <p>The build configuration for the revision, including code location and runtime settings.</p>
    #   @return [Types::BuildConfig]
    # @!attribute service_config
    #   <p>The service configuration for the revision, including execution role, timeout, and concurrency settings.</p>
    #   @return [Types::ServiceConfig]
    class CreateWebFunctionRevisionRequest < Struct.new(
      nil,
      :function_name,
      :description,
      :kms_key_arn,
      :build_config,
      :service_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the created revision.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute revision_arn
    #   <p>The Amazon Resource Name (ARN) of the revision.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the revision.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the revision.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt the revision's code and environment variables.</p>
    #   @return [String]
    # @!attribute build_config
    #   <p>The build configuration for a web function revision, including code location and runtime settings.</p>
    #   @return [Types::BuildConfig]
    # @!attribute service_config
    #   <p>The service configuration for a web function revision, including execution role, timeout, VPC network access, concurrency, and telemetry settings.</p>
    #   @return [Types::ServiceConfig]
    # @!attribute state
    #   <p>The current state of the revision.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the revision.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of errors encountered during revision creation. This field is absent when the revision has no errors.</p>
    #   @return [Array<Types::RevisionError>]
    # @!attribute created_at
    #   <p>The date and time the revision was created.</p>
    #   @return [Time]
    class CreateWebFunctionRevisionResponse < Struct.new(
      nil,
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
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to delete a resource-based policy.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy. Use this to prevent deleting a policy that has been updated since you last retrieved it. If you don't specify a value, the policy is deleted regardless of its current revision.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to delete a web function endpoint.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The endpoint to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteWebFunctionEndpointRequest < Struct.new(
      nil,
      :function_name,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to delete a web function.</p>
    # @!attribute function_name
    #   <p>The web function to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class DeleteWebFunctionRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to delete a web function revision.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision to delete.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The revision identifier.</p> </li> <li> <p>The revision ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN.</p>
    #   @return [String]
    class DeleteWebFunctionRevisionRequest < Struct.new(
      nil,
      :function_name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a web function endpoint.</p>
    # @!attribute endpoint_name
    #   <p>The name of the endpoint. The name can contain letters, numbers, hyphens (-), and underscores (_), and can't begin or end with a hyphen or an underscore. The name is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint. Determines how traffic is served and routed across Regions.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for the endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint. If you don't specify a value, the default is <code>Disabled</code>, and this default is returned in the response.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute regions
    #   <p>The list of Regions for the endpoint. Required when the endpoint type is <code>MultiRegion</code> or <code>PerRegion</code>: specify at least one Region other than the Region where you create the endpoint (the home Region). The home Region is added automatically if you don't include it; specifying only the home Region isn't allowed. When the endpoint type is <code>HomeRegion</code>, omit this field or specify only the home Region.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for the endpoint.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for the endpoint.</p>
    #   @return [Types::ThrottleConfig]
    class EndpointConfig < Struct.new(
      nil,
      :endpoint_name,
      :description,
      :endpoint_type,
      :auth_type,
      :auto_deployment_mode,
      :regions,
      :scaling_config,
      :throttle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter to apply when listing resources.</p>
    # @!attribute name
    #   <p>The name of the filter field.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match for the filter.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a web function endpoint.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of the endpoint.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the endpoint.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for the endpoint.</p>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint.</p>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>The revision weights for the endpoint.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute regions
    #   <p>The list of Regions for the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for the endpoint. This field is absent if the endpoint has no scaling configuration.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for the endpoint. This field is absent if the endpoint has no throttling configuration.</p>
    #   @return [Types::ThrottleConfig]
    # @!attribute state
    #   <p>The current state of the endpoint.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the endpoint.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the most recent update to the endpoint.</p>
    #   @return [String]
    # @!attribute update_status_reason
    #   <p>The reason for the current update status of the endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the endpoint was last updated.</p>
    #   @return [Time]
    class FunctionEndpointSummary < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a web function revision.</p>
    # @!attribute revision_arn
    #   <p>The Amazon Resource Name (ARN) of the revision.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the revision.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the revision.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the revision.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the revision.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the revision was created.</p>
    #   @return [Time]
    class FunctionRevisionSummary < Struct.new(
      nil,
      :revision_arn,
      :revision_id,
      :description,
      :state,
      :state_reason,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a web function.</p>
    # @!attribute function_name
    #   <p>The name of the web function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the web function.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the web function.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the web function was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the web function was last updated.</p>
    #   @return [Time]
    class FunctionSummary < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve a resource-based policy.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the resource-based policy and its revision ID.</p>
    # @!attribute policy
    #   <p>The JSON-formatted resource-based policy attached to the web function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetWebAccountSettingsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains your AWS Lambda Web Functions account quotas and usage for the current AWS Region.</p>
    # @!attribute account_quotas
    #   <p>The quotas that apply to web functions in your account in the current AWS Region.</p>
    #   @return [Types::AccountQuotas]
    # @!attribute account_usage
    #   <p>The current web function usage for your account in the current AWS Region.</p>
    #   @return [Types::AccountUsage]
    class GetWebAccountSettingsResponse < Struct.new(
      nil,
      :account_quotas,
      :account_usage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve a web function endpoint.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The endpoint to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetWebFunctionEndpointRequest < Struct.new(
      nil,
      :function_name,
      :endpoint_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the web function endpoint.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name assigned to the endpoint.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>The traffic distribution across revisions for the endpoint. Each entry maps a revision to a weight from 1 to 100.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute regions
    #   <p>The Regions configured for the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for a web function endpoint.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for a web function endpoint.</p>
    #   @return [Types::ThrottleConfig]
    # @!attribute state
    #   <p>The current state of the endpoint.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the endpoint.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the most recent update to an endpoint. Possible values:</p> <ul> <li> <p> <code>InProgress</code> – The update is in progress.</p> </li> <li> <p> <code>Successful</code> – The update completed successfully.</p> </li> <li> <p> <code>Failed</code> – The update failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute update_status_reason
    #   <p>The reason for the endpoint's most recent update status.</p>
    #   @return [String]
    # @!attribute regional_endpoints
    #   <p>The list of regional endpoint configurations.</p>
    #   @return [Hash<String, Types::RegionalEndpoint>]
    # @!attribute created_at
    #   <p>The date and time the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the endpoint was last updated.</p>
    #   @return [Time]
    class GetWebFunctionEndpointResponse < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve a web function.</p>
    # @!attribute function_name
    #   <p>The web function to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    class GetWebFunctionRequest < Struct.new(
      nil,
      :function_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the web function.</p>
    # @!attribute function_name
    #   <p>The name of the web function.</p>
    #   @return [String]
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the web function.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the web function.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the web function was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the web function was last updated.</p>
    #   @return [Time]
    class GetWebFunctionResponse < Struct.new(
      nil,
      :function_name,
      :function_arn,
      :state,
      :state_reason,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve a web function revision.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision to retrieve.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The revision identifier.</p> </li> <li> <p>The revision ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN.</p>
    #   @return [String]
    class GetWebFunctionRevisionRequest < Struct.new(
      nil,
      :function_name,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the web function revision.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute revision_arn
    #   <p>The Amazon Resource Name (ARN) of the revision.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The identifier of the revision.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the revision.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS KMS key used to encrypt the revision's code and environment variables.</p>
    #   @return [String]
    # @!attribute build_config
    #   <p>The build configuration for a web function revision, including code location and runtime settings.</p>
    #   @return [Types::BuildConfig]
    # @!attribute service_config
    #   <p>The service configuration for a web function revision, including execution role, timeout, VPC network access, concurrency, and telemetry settings.</p>
    #   @return [Types::ServiceConfig]
    # @!attribute state
    #   <p>The current state of the revision.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the revision.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A list of errors encountered during revision creation. This field is absent when the revision has no errors.</p>
    #   @return [Array<Types::RevisionError>]
    # @!attribute created_at
    #   <p>The date and time the revision was created.</p>
    #   @return [Time]
    class GetWebFunctionRevisionResponse < Struct.new(
      nil,
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
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of an internal error in the service. Retry the request. If the error persists, open a support case.</p>
    # @!attribute message
    #   <p>A message describing the internal error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list tags for a resource.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      nil,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of tags.</p>
    # @!attribute tags
    #   <p>A map of tag keys and values associated with the web function.</p>
    #   @return [Hash<String, String>]
    class ListTagsResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list web function endpoints.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of filters to apply to the results. Supported filter names: <code>authType</code>, <code>autoDeploymentMode</code>, <code>endpointType</code>, <code>state</code>, and <code>updateStatus</code>. If you don't specify a filter, the operation returns all endpoints for the web function.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionEndpointsRequest < Struct.new(
      nil,
      :function_name,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of web function endpoints.</p>
    # @!attribute endpoints
    #   <p>A list of endpoint summaries for the web function.</p>
    #   @return [Array<Types::FunctionEndpointSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available. Use this value as the <code>nextToken</code> request parameter in a subsequent call to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionEndpointsResponse < Struct.new(
      nil,
      :endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list web function revisions.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of filters to apply to the results. The only supported filter name is <code>state</code>. If you don't specify a filter, the operation returns all revisions for the web function.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionRevisionsRequest < Struct.new(
      nil,
      :function_name,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of web function revisions.</p>
    # @!attribute revisions
    #   <p>A list of revision summaries for the web function.</p>
    #   @return [Array<Types::FunctionRevisionSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available. Use this value as the <code>nextToken</code> request parameter in a subsequent call to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionRevisionsResponse < Struct.new(
      nil,
      :revisions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list web functions.</p>
    # @!attribute filters
    #   <p>A list of filters to apply to the results. The only supported filter name is <code>state</code>. If you don't specify a filter, the operation returns all web functions.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Minimum value of 1, maximum value of 50. Default is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionsRequest < Struct.new(
      nil,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the list of web functions.</p>
    # @!attribute functions
    #   <p>A list of web function summaries.</p>
    #   @return [Array<Types::FunctionSummary>]
    # @!attribute next_token
    #   <p>The pagination token that's included if more results are available. Use this value as the <code>nextToken</code> request parameter in a subsequent call to retrieve the next page of results.</p>
    #   @return [String]
    class ListWebFunctionsResponse < Struct.new(
      nil,
      :functions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration for a web function revision.</p>
    # @!attribute log_group
    #   <p>The name of the Amazon CloudWatch Logs log group the web function sends logs to. If you don't specify a value, the default is <code>/aws/lambda/web/{functionName}</code>, and this default is returned in the response.</p>
    #   @return [String]
    # @!attribute application_log_level
    #   <p>The log level for application logs emitted by the web function. If you don't specify a value, the default is <code>INFO</code>, and this default is returned in the response.</p>
    #   @return [String]
    # @!attribute system_log_level
    #   <p>The log level for system logs emitted by the Lambda runtime. If you don't specify a value, the default is <code>INFO</code>, and this default is returned in the response.</p>
    #   @return [String]
    class LoggingConfig < Struct.new(
      nil,
      :log_group,
      :application_log_level,
      :system_log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to add or update a resource-based policy.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON-formatted resource-based policy to attach to the web function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the existing policy. Use this to prevent conflicts when updating a policy concurrently. If you don't specify a value, the update proceeds without checking the current revision.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      nil,
      :resource_arn,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the resource-based policy and its revision ID.</p>
    # @!attribute policy
    #   <p>The JSON-formatted resource-based policy attached to the web function.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision ID of the policy. Use this value in subsequent <code>PutResourcePolicy</code> or <code>DeleteResourcePolicy</code> requests to prevent conflicts.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      nil,
      :policy,
      :revision_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the endpoint configuration and state in a specific Region.</p>
    # @!attribute domain_name
    #   <p>The domain name of the regional endpoint.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for the regional endpoint.</p>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>The revision weights for the regional endpoint.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for the regional endpoint. This field is absent if the endpoint has no scaling configuration.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for the regional endpoint. This field is absent if the endpoint has no throttling configuration.</p>
    #   @return [Types::ThrottleConfig]
    # @!attribute state
    #   <p>The current state of the regional endpoint.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the regional endpoint.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the most recent update to the regional endpoint.</p>
    #   @return [String]
    # @!attribute update_status_reason
    #   <p>The reason for the current update status of the regional endpoint.</p>
    #   @return [String]
    class RegionalEndpoint < Struct.new(
      nil,
      :domain_name,
      :auth_type,
      :revision_weights,
      :scaling_config,
      :throttle_config,
      :state,
      :state_reason,
      :update_status,
      :update_status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified web function, revision, endpoint, or resource-based policy doesn't exist. Verify the resource identifier and try again.</p>
    # @!attribute message
    #   <p>A message describing the resource not found error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a web function revision, including code build settings and service configuration.</p>
    # @!attribute description
    #   <p>A description of the revision.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Key Management Service (AWS KMS) key used to encrypt the revision's code and environment variables.</p>
    #   @return [String]
    # @!attribute build_config
    #   <p>The build configuration for the revision.</p>
    #   @return [Types::BuildConfig]
    # @!attribute service_config
    #   <p>The service configuration for the revision.</p>
    #   @return [Types::ServiceConfig]
    class RevisionConfig < Struct.new(
      nil,
      :description,
      :kms_key_arn,
      :build_config,
      :service_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A single error encountered while creating or reading a web function revision. The error describes the affected attribute, an error code, and a human-readable message. This structure is present only when the revision has errors.</p>
    # @!attribute attribute
    #   <p>The name of the revision attribute that the error applies to.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>A short, machine-readable code that identifies the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable message describing the error.</p>
    #   @return [String]
    class RevisionError < Struct.new(
      nil,
      :attribute,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a revision and its traffic weight for an endpoint. You can assign weights to up to two revisions to split traffic for canary or blue-green deployments.</p>
    # @!attribute revision_id
    #   <p>The identifier of the revision.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The percentage of traffic to route to this revision. Minimum value of 1, maximum value of 100.</p>
    #   @return [Integer]
    class RevisionWeight < Struct.new(
      nil,
      :revision_id,
      :weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The runtime configuration for a web function revision.</p>
    # @!attribute runtime
    #   <p>The runtime identifier for the web function (for example, a Node.js runtime identifier).</p>
    #   @return [String]
    class RuntimeConfig < Struct.new(
      nil,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location of a deployment artifact.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The Amazon S3 object key.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the Amazon S3 object.</p>
    #   @return [String]
    class S3Object < Struct.new(
      nil,
      :bucket,
      :key,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scaling configuration for a web function endpoint.</p>
    # @!attribute max_environments
    #   <p>The maximum number of concurrent execution environments for the endpoint. Minimum value of 2, maximum value of 10000. There is no default value. If you don't specify a value, the scaling configuration is absent from the response. On an update, omit <code>scalingConfig</code> to keep the current value, or specify an empty object to clear a previously set value.</p>
    #   @return [Integer]
    class ScalingConfig < Struct.new(
      nil,
      :max_environments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service configuration for a web function revision, including execution role, timeout, VPC network access, concurrency, and telemetry settings.</p>
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role that the web function assumes when it runs. This role provides permissions to access AWS services and resources.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>The amount of time (in seconds) that Lambda allows the web function to run before stopping it. Minimum value of 3, maximum value of 900. If you don't specify a value, the default is 30, and this default is returned in the response.</p>
    #   @return [Integer]
    # @!attribute egress_network_connector_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda network connector that gives the web function access to resources in your VPC. You must specify the fully qualified ARN, including the connector version, which pins the revision to that version. If the network connector is deleted, invocations of revisions that reference it fail. Revisions that specify a network connector support only <code>HomeRegion</code> endpoints, not <code>MultiRegion</code> or <code>PerRegion</code>.</p>
    #   @return [String]
    # @!attribute max_concurrency_per_environment
    #   <p>The maximum number of concurrent requests handled per execution environment. Minimum value of 1, maximum value of 128. If you don't specify a value, the default is 64, and this default is returned in the response.</p>
    #   @return [Integer]
    # @!attribute environment_variables
    #   <p>A map of environment variable key-value pairs available to the web function at runtime. Environment variable values are sensitive.</p>
    #   @return [Hash<String, String>]
    # @!attribute telemetry_config
    #   <p>The telemetry configuration for the web function, including logging settings.</p>
    #   @return [Types::TelemetryConfig]
    class ServiceConfig < Struct.new(
      nil,
      :execution_role_arn,
      :timeout_seconds,
      :egress_network_connector_arn,
      :max_concurrency_per_environment,
      :environment_variables,
      :telemetry_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_seconds] = 30 unless options.key?(:timeout_seconds)
        options[:max_concurrency_per_environment] = 64 unless options.key?(:max_concurrency_per_environment)
        super
      end
    end

    # <p>The request would exceed a service quota, such as the maximum number of web functions in your account or the maximum number of revisions or endpoints per web function. Request a quota increase or reduce usage and try again.</p>
    # @!attribute message
    #   <p>A message describing the quota that was exceeded.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the service that owns the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the exceeded quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to add tags to a resource.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to add to the web function.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The telemetry configuration for a web function revision.</p>
    # @!attribute logging_config
    #   <p>The logging configuration for the web function.</p>
    #   @return [Types::LoggingConfig]
    class TelemetryConfig < Struct.new(
      nil,
      :logging_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The throttling configuration for a web function endpoint.</p>
    # @!attribute rate_limit
    #   <p>The maximum request rate per second for the endpoint. The value must be one of the following supported values: <code>0</code>, <code>100</code>, <code>200</code>, <code>300</code>, <code>400</code>, <code>500</code>, <code>600</code>, <code>700</code>, <code>800</code>, <code>900</code>, <code>1000</code>, <code>2000</code>, <code>3000</code>, <code>4000</code>, <code>5000</code>, <code>6000</code>, <code>7000</code>, <code>8000</code>, <code>9000</code>, or <code>10000</code>. The maximum effective value is also bounded by your account-level maximum total rate limit. There is no default value. If you don't specify a value, the throttling configuration is absent from the response. On an update, omit <code>throttleConfig</code> to keep the current value, or specify an empty object to clear a previously set value.</p>
    #   @return [Integer]
    class ThrottleConfig < Struct.new(
      nil,
      :rate_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because it exceeded the request rate that Lambda allows for your account. Reduce the frequency of requests and retry with exponential backoff.</p>
    # @!attribute message
    #   <p>A message describing the throttling error.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    # @!attribute service_code
    #   <p>The service code of the throttled service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code that was exceeded, if applicable.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to remove tags from a resource.</p>
    # @!attribute resource
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the web function.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to update a web function endpoint.</p>
    # @!attribute function_name
    #   <p>The web function.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The function name, for example <code>my-function</code>.</p> </li> <li> <p>The function ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The endpoint to update.</p> <p>You can specify either of the following:</p> <ul> <li> <p>The endpoint name, for example <code>my-endpoint</code>.</p> </li> <li> <p>The endpoint ARN.</p> </li> </ul> <p>The length constraint applies only to the full ARN. If you specify only the endpoint name, it is limited to 64 characters in length.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the endpoint. Omit this field to keep the current description.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for the endpoint. Omit this field to keep the current authorization type.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for the endpoint. Omit this field to keep the current auto-deployment mode.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>A list of revision weights that determine how traffic is distributed across revisions.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for the endpoint. Omit this field to keep the current scaling configuration. To clear a previously set <code>maxEnvironments</code> value, specify an empty object.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for the endpoint. Omit this field to keep the current throttling configuration. To clear a previously set <code>rateLimit</code> value, specify an empty object.</p>
    #   @return [Types::ThrottleConfig]
    class UpdateWebFunctionEndpointRequest < Struct.new(
      nil,
      :function_name,
      :endpoint_name,
      :description,
      :auth_type,
      :auto_deployment_mode,
      :revision_weights,
      :scaling_config,
      :throttle_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the updated endpoint.</p>
    # @!attribute function_arn
    #   <p>The Amazon Resource Name (ARN) of the web function.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>HomeRegion</code> – Serves traffic from the Region where you created the web function.</p> </li> <li> <p> <code>MultiRegion</code> – Replicates across the Regions that you choose and routes each request to the nearest one.</p> </li> <li> <p> <code>PerRegion</code> – Creates a separate endpoint in each Region that you choose.</p> </li> </ul>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name assigned to the endpoint.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authorization type for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>ApplicationManaged</code> – Your application handles authorization.</p> </li> <li> <p> <code>IamAuth</code> – Lambda uses IAM to authorize requests, which must be signed with Signature Version 4 (SigV4).</p> </li> </ul>
    #   @return [String]
    # @!attribute auto_deployment_mode
    #   <p>The auto-deployment mode for a web function endpoint.</p> <p>Valid values:</p> <ul> <li> <p> <code>LatestRevision</code> – The endpoint automatically serves the newest revision.</p> </li> <li> <p> <code>Disabled</code> – Revision routing stays fixed until you change it.</p> </li> </ul>
    #   @return [String]
    # @!attribute revision_weights
    #   <p>The traffic distribution across revisions for the endpoint. Each entry maps a revision to a weight from 1 to 100.</p>
    #   @return [Array<Types::RevisionWeight>]
    # @!attribute regions
    #   <p>The Regions configured for the endpoint.</p>
    #   @return [Array<String>]
    # @!attribute scaling_config
    #   <p>The scaling configuration for a web function endpoint.</p>
    #   @return [Types::ScalingConfig]
    # @!attribute throttle_config
    #   <p>The throttling configuration for a web function endpoint.</p>
    #   @return [Types::ThrottleConfig]
    # @!attribute state
    #   <p>The current state of the endpoint.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the current state of the endpoint.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the most recent update to an endpoint. Possible values:</p> <ul> <li> <p> <code>InProgress</code> – The update is in progress.</p> </li> <li> <p> <code>Successful</code> – The update completed successfully.</p> </li> <li> <p> <code>Failed</code> – The update failed.</p> </li> </ul>
    #   @return [String]
    # @!attribute update_status_reason
    #   <p>The reason for the endpoint's most recent update status.</p>
    #   @return [String]
    # @!attribute regional_endpoints
    #   <p>The list of regional endpoint configurations.</p>
    #   @return [Hash<String, Types::RegionalEndpoint>]
    # @!attribute created_at
    #   <p>The date and time the endpoint was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the endpoint was last updated.</p>
    #   @return [Time]
    class UpdateWebFunctionEndpointResponse < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed validation because a parameter was missing, malformed, or outside the allowed range. Check the request parameters and try again.</p>
    # @!attribute message
    #   <p>A message describing the validation error.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
