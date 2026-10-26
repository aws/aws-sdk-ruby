# frozen_string_literal: true

# This is generated code!

module Aws::LambdaMicrovms
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for Amazon CloudWatch Logs logging.</p>
    # @!attribute log_group
    #   <p>The name of the CloudWatch Logs log group to send logs to.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The name of the CloudWatch Logs log stream within the log group.</p>
    #   @return [String]
    class CloudWatchLogging < Struct.new(
      nil,
      :log_group,
      :log_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the location of the code artifact for a MicroVM image.</p>
    # @!attribute uri
    #   <p>The URI of the code artifact in Amazon S3.</p>
    #   @return [String]
    class CodeArtifact < Struct.new(
      :uri,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Uri < CodeArtifact; end
      class Unknown < CodeArtifact; end
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that caused the conflict.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that caused the conflict.</p>
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

    # <p>Configuration for the CPU architecture of a MicroVM.</p>
    # @!attribute architecture
    #   <p>The CPU architecture.</p>
    #   @return [String]
    class CpuConfiguration < Struct.new(
      nil,
      :architecture,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to create an authentication token for.</p>
    #   @return [String]
    # @!attribute expiration_in_minutes
    #   <p>The duration in minutes before the authentication token expires. Maximum: 60 minutes.</p>
    #   @return [Integer]
    # @!attribute allowed_ports
    #   <p>The list of port specifications that the authentication token grants access to on the MicroVM.</p>
    #   @return [Array<Types::PortSpecification>]
    class CreateMicrovmAuthTokenRequest < Struct.new(
      nil,
      :microvm_identifier,
      :expiration_in_minutes,
      :allowed_ports,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auth_token
    #   <p>A map containing the authentication token. Use the value at key "X-aws-proxy-auth" as the header value when connecting to the MicroVM endpoint.</p>
    #   @return [Hash<String, String>]
    class CreateMicrovmAuthTokenResponse < Struct.new(
      nil,
      :auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute base_image_arn
    #   <p>The ARN of the Lambda-managed base MicroVM image to build upon. Use ListManagedMicrovmImages to discover available base images.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image to use.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM role assumed during the image build process. This role must have permissions to access the code artifact and any required resources.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the MicroVM image.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute name
    #   <p>The name of the MicroVM image. Must be unique within the AWS account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A set of key-value pairs that you can attach to the resource. Use tags to categorize resources for cost allocation, access control (ABAC), and organization.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token, the operation returns the successful response without performing any further actions.</p>
    #   @return [String]
    class CreateMicrovmImageRequest < Struct.new(
      nil,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The ARN of the created MicroVM image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_active_image_version
    #   <p>The latest active version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_failed_image_version
    #   <p>The latest failed version of the MicroVM image, if any.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the MicroVM image was created.</p>
    #   @return [Time]
    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the MicroVM image.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>A set of key-value pairs that you can attach to the resource. Use tags to categorize resources for cost allocation, access control (ABAC), and organization.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The timestamp when the MicroVM image was last updated.</p>
    #   @return [Time]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    class CreateMicrovmImageResponse < Struct.new(
      nil,
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :tags,
      :updated_at,
      :image_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to create a shell authentication token for.</p>
    #   @return [String]
    # @!attribute expiration_in_minutes
    #   <p>The duration in minutes before the shell authentication token expires.</p>
    #   @return [Integer]
    class CreateMicrovmShellAuthTokenRequest < Struct.new(
      nil,
      :microvm_identifier,
      :expiration_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auth_token
    #   <p>The generated shell authentication token key-value pairs for accessing the MicroVM.</p>
    #   @return [Hash<String, String>]
    class CreateMicrovmShellAuthTokenResponse < Struct.new(
      nil,
      :auth_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to delete.</p>
    #   @return [String]
    class DeleteMicrovmImageInput < Struct.new(
      nil,
      :image_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The identifier of the deleted MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image after deletion.</p>
    #   @return [String]
    class DeleteMicrovmImageOutput < Struct.new(
      nil,
      :image_identifier,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image to delete.</p>
    #   @return [String]
    class DeleteMicrovmImageVersionInput < Struct.new(
      nil,
      :image_identifier,
      :image_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The identifier of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version that was deleted.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image version after deletion.</p>
    #   @return [String]
    class DeleteMicrovmImageVersionOutput < Struct.new(
      nil,
      :image_identifier,
      :image_version,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute build_id
    #   <p>The unique identifier of the build to retrieve.</p>
    #   @return [String]
    class GetMicrovmImageBuildInput < Struct.new(
      nil,
      :image_identifier,
      :image_version,
      :build_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute build_id
    #   <p>The build request ID.</p>
    #   @return [String]
    # @!attribute build_state
    #   <p>The current state of the build.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The target CPU architecture for the build. Supported value: ARM_64.</p>
    #   @return [String]
    # @!attribute chipset
    #   <p>The target chipset for the build.</p>
    #   @return [String]
    # @!attribute chipset_generation
    #   <p>The target chipset generation for the build.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the build state, if applicable.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the build was created.</p>
    #   @return [Time]
    # @!attribute snapshot_build
    #   <p>The snapshot build details, including memory and disk snapshot sizes.</p>
    #   @return [Types::SnapshotBuild]
    class GetMicrovmImageBuildOutput < Struct.new(
      nil,
      :image_arn,
      :image_version,
      :build_id,
      :build_state,
      :architecture,
      :chipset,
      :chipset_generation,
      :state_reason,
      :created_at,
      :snapshot_build,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to retrieve.</p>
    #   @return [String]
    class GetMicrovmImageInput < Struct.new(
      nil,
      :image_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_active_image_version
    #   <p>The latest active version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_failed_image_version
    #   <p>The latest failed version of the MicroVM image, if any.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the MicroVM image was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A set of key-value pairs that you can attach to the resource. Use tags to categorize resources for cost allocation, access control (ABAC), and organization.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The timestamp when the MicroVM image was last updated.</p>
    #   @return [Time]
    class GetMicrovmImageOutput < Struct.new(
      nil,
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at,
      :tags,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image to retrieve.</p>
    #   @return [String]
    class GetMicrovmImageVersionInput < Struct.new(
      nil,
      :image_identifier,
      :image_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image used.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact for this version.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for this version.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The availability status of the version: ACTIVE (can be used by RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the version was last updated.</p>
    #   @return [Time]
    # @!attribute state_reason
    #   <p>The reason for the current state. For example, one or more builds failed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs associated with the version.</p>
    #   @return [Hash<String, String>]
    class GetMicrovmImageVersionOutput < Struct.new(
      nil,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :image_arn,
      :image_version,
      :state,
      :status,
      :created_at,
      :updated_at,
      :state_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to retrieve.</p>
    #   @return [String]
    class GetMicrovmRequest < Struct.new(
      nil,
      :microvm_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_id
    #   <p>The unique identifier of the MicroVM.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current lifecycle state of the MicroVM.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The HTTPS endpoint URL for communicating with the MicroVM. Include a valid authentication token in the X-aws-proxy-auth header when sending requests.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM execution role assumed by the MicroVM.</p>
    #   @return [String]
    # @!attribute idle_policy
    #   <p>The idle policy configuration of the MicroVM, controlling auto-suspend and auto-resume behavior.</p>
    #   @return [Types::IdlePolicy]
    # @!attribute maximum_duration_in_seconds
    #   <p>The maximum duration in seconds that the MicroVM can exist before being terminated by the platform.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The timestamp when the MicroVM first started.</p>
    #   @return [Time]
    # @!attribute terminated_at
    #   <p>The timestamp when the MicroVM terminated.</p>
    #   @return [Time]
    # @!attribute state_reason
    #   <p>The reason for why the MicroVM is in the current state.</p>
    #   @return [String]
    # @!attribute ingress_network_connectors
    #   <p>The list of ingress network connectors configured for the MicroVM.</p>
    #   @return [Array<String>]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors configured for the MicroVM.</p>
    #   @return [Array<String>]
    class GetMicrovmResponse < Struct.new(
      nil,
      :microvm_id,
      :state,
      :endpoint,
      :image_arn,
      :image_version,
      :execution_role_arn,
      :idle_policy,
      :maximum_duration_in_seconds,
      :started_at,
      :terminated_at,
      :state_reason,
      :ingress_network_connectors,
      :egress_network_connectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    # @!attribute port
    #   <p>The port number on which the hooks listener runs.</p>
    #   @return [Integer]
    # @!attribute microvm_hooks
    #   <p>The lifecycle hooks for MicroVM events.</p>
    #   @return [Types::MicrovmHooks]
    # @!attribute microvm_image_hooks
    #   <p>The hooks for MicroVM image build events.</p>
    #   @return [Types::MicrovmImageHooks]
    class Hooks < Struct.new(
      nil,
      :port,
      :microvm_hooks,
      :microvm_image_hooks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that controls MicroVM auto-suspend and auto-resume behavior. Idle time is measured by inbound traffic through the MicroVM proxy endpoint — if no requests arrive within the configured duration, the MicroVM is suspended.</p>
    # @!attribute max_idle_duration_seconds
    #   <p>The maximum time in seconds that a MicroVM can remain idle before it is automatically suspended.</p>
    #   @return [Integer]
    # @!attribute suspended_duration_seconds
    #   <p>The maximum time in seconds that a MicroVM can remain suspended before it is automatically terminated.</p>
    #   @return [Integer]
    # @!attribute auto_resume_enabled
    #   <p>Indicates whether the MicroVM automatically resumes when it receives a request while suspended.</p>
    #   @return [Boolean]
    class IdlePolicy < Struct.new(
      nil,
      :max_idle_duration_seconds,
      :suspended_duration_seconds,
      :auto_resume_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There is insufficient capacity to fulfill the request. Retry the request later.</p>
    # @!attribute message
    #   @return [String]
    class InsufficientCapacityException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. Retry the request later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One of the parameters in the request is not valid.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the managed MicroVM image to list versions for.</p>
    #   @return [String]
    class ListManagedMicrovmImageVersionsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :image_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of managed MicroVM image versions.</p>
    #   @return [Array<Types::ManagedMicrovmImageVersion>]
    class ListManagedMicrovmImageVersionsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    class ListManagedMicrovmImagesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of managed MicroVM images.</p>
    #   @return [Array<Types::ManagedMicrovmImageSummary>]
    class ListManagedMicrovmImagesOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image to list builds for.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>Filters builds by target CPU architecture.</p>
    #   @return [String]
    # @!attribute chipset
    #   <p>Filters builds by target chipset.</p>
    #   @return [String]
    # @!attribute chipset_generation
    #   <p>Filters builds by target chipset generation.</p>
    #   @return [String]
    class ListMicrovmImageBuildsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :image_identifier,
      :image_version,
      :architecture,
      :chipset,
      :chipset_generation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of MicroVM image builds.</p>
    #   @return [Array<Types::MicrovmImageBuildSummary>]
    class ListMicrovmImageBuildsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to list versions for.</p>
    #   @return [String]
    class ListMicrovmImageVersionsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :image_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of MicroVM image versions.</p>
    #   @return [Array<Types::MicrovmImageVersionSummary>]
    class ListMicrovmImageVersionsOutput < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute name_filter
    #   <p>Filters images whose name contains the specified string.</p>
    #   @return [String]
    class ListMicrovmImagesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :name_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of MicroVM images.</p>
    #   @return [Array<Types::MicrovmImageSummary>]
    class ListMicrovmImagesResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous call. Use this token to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute image_identifier
    #   <p>Optional filter to list only MicroVMs running the specified image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>Optional filter to list only MicroVMs running the specified image version.</p>
    #   @return [String]
    class ListMicrovmsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :image_identifier,
      :image_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of MicroVMs.</p>
    #   @return [Array<Types::MicrovmItem>]
    class ListMicrovmsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The ARN of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      nil,
      :resource,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pairs of tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for MicroVM logging output. Specify exactly one: cloudWatch to enable CloudWatch logging, or disabled to turn off logging.</p>
    # @!attribute disabled
    #   <p>Specifies that logging is disabled.</p>
    #   @return [Types::LoggingDisabled]
    # @!attribute cloud_watch
    #   <p>Configuration for sending logs to Amazon CloudWatch Logs.</p>
    #   @return [Types::CloudWatchLogging]
    class Logging < Struct.new(
      :disabled,
      :cloud_watch,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Disabled < Logging; end
      class CloudWatch < Logging; end
      class Unknown < Logging; end
    end

    # <p>Specifies that logging is disabled for the MicroVM.</p>
    class LoggingDisabled < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a managed MicroVM image.</p>
    # @!attribute image_arn
    #   <p>The ARN of the managed MicroVM image.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the managed MicroVM image was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the managed MicroVM image was last updated.</p>
    #   @return [Time]
    class ManagedMicrovmImageSummary < Struct.new(
      nil,
      :image_arn,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains version information for a managed MicroVM image.</p>
    # @!attribute image_arn
    #   <p>The ARN of the managed MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the managed MicroVM image.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle status of the managed MicroVM image version. Valid values: AVAILABLE (the version is available for use) or DEPRECATED (the version is deprecated; do not use it for new MicroVM images).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the version was last updated.</p>
    #   @return [Time]
    class ManagedMicrovmImageVersion < Struct.new(
      nil,
      :image_arn,
      :image_version,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for lifecycle hooks invoked during MicroVM events such as run, resume, suspend, and terminate.</p>
    # @!attribute run
    #   <p>The path of the hook invoked when the MicroVM starts running.</p>
    #   @return [String]
    # @!attribute run_timeout_in_seconds
    #   <p>The maximum time in seconds for the run hook to complete.</p>
    #   @return [Integer]
    # @!attribute resume
    #   <p>The path of the hook invoked when the MicroVM resumes from a suspended state.</p>
    #   @return [String]
    # @!attribute resume_timeout_in_seconds
    #   <p>The maximum time in seconds for the resume hook to complete.</p>
    #   @return [Integer]
    # @!attribute suspend
    #   <p>The path of the hook invoked when the MicroVM is suspended.</p>
    #   @return [String]
    # @!attribute suspend_timeout_in_seconds
    #   <p>The maximum time in seconds for the suspend hook to complete.</p>
    #   @return [Integer]
    # @!attribute terminate
    #   <p>The path of the hook invoked when the MicroVM is terminated.</p>
    #   @return [String]
    # @!attribute terminate_timeout_in_seconds
    #   <p>The maximum time in seconds for the terminate hook to complete.</p>
    #   @return [Integer]
    class MicrovmHooks < Struct.new(
      nil,
      :run,
      :run_timeout_in_seconds,
      :resume,
      :resume_timeout_in_seconds,
      :suspend,
      :suspend_timeout_in_seconds,
      :terminate,
      :terminate_timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:run] = 'DISABLED' unless options.key?(:run)
        options[:run_timeout_in_seconds] = 1 unless options.key?(:run_timeout_in_seconds)
        options[:resume] = 'DISABLED' unless options.key?(:resume)
        options[:resume_timeout_in_seconds] = 1 unless options.key?(:resume_timeout_in_seconds)
        options[:suspend] = 'DISABLED' unless options.key?(:suspend)
        options[:suspend_timeout_in_seconds] = 1 unless options.key?(:suspend_timeout_in_seconds)
        options[:terminate] = 'DISABLED' unless options.key?(:terminate)
        options[:terminate_timeout_in_seconds] = 1 unless options.key?(:terminate_timeout_in_seconds)
        super
      end
    end

    # <p>Contains summary information about a MicroVM image build.</p>
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute build_id
    #   <p>The build request ID.</p>
    #   @return [String]
    # @!attribute build_state
    #   <p>The current state of the build.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The target CPU architecture for the build. Supported value: ARM_64.</p>
    #   @return [String]
    # @!attribute chipset
    #   <p>The target chipset for the build.</p>
    #   @return [String]
    # @!attribute chipset_generation
    #   <p>The target chipset generation for the build.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason for the build state, if applicable.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the build was created.</p>
    #   @return [Time]
    class MicrovmImageBuildSummary < Struct.new(
      nil,
      :image_arn,
      :image_version,
      :build_id,
      :build_state,
      :architecture,
      :chipset,
      :chipset_generation,
      :state_reason,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for hooks invoked during MicroVM image build events such as ready and validate.</p>
    # @!attribute ready
    #   <p>The path of the hook invoked when the MicroVM image build is ready.</p>
    #   @return [String]
    # @!attribute ready_timeout_in_seconds
    #   <p>The maximum time in seconds for the ready hook to complete.</p>
    #   @return [Integer]
    # @!attribute validate
    #   <p>The path of the hook invoked to validate the MicroVM image build.</p>
    #   @return [String]
    # @!attribute validate_timeout_in_seconds
    #   <p>The maximum time in seconds for the validate hook to complete.</p>
    #   @return [Integer]
    class MicrovmImageHooks < Struct.new(
      nil,
      :ready,
      :ready_timeout_in_seconds,
      :validate,
      :validate_timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ready] = 'DISABLED' unless options.key?(:ready)
        options[:ready_timeout_in_seconds] = 30 unless options.key?(:ready_timeout_in_seconds)
        options[:validate] = 'DISABLED' unless options.key?(:validate)
        options[:validate_timeout_in_seconds] = 30 unless options.key?(:validate_timeout_in_seconds)
        super
      end
    end

    # <p>Contains summary information about a MicroVM image.</p>
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_active_image_version
    #   <p>The latest active version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_failed_image_version
    #   <p>The latest failed version of the MicroVM image, if any.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the MicroVM image was created.</p>
    #   @return [Time]
    class MicrovmImageSummary < Struct.new(
      nil,
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a version of a MicroVM image.</p>
    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image used.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact for this version.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for this version.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The availability status of the version: ACTIVE (can be used by RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the version was last updated.</p>
    #   @return [Time]
    # @!attribute state_reason
    #   <p>The reason for the current state. For example, one or more builds failed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs associated with the version.</p>
    #   @return [Hash<String, String>]
    class MicrovmImageVersionSummary < Struct.new(
      nil,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :image_arn,
      :image_version,
      :state,
      :status,
      :created_at,
      :updated_at,
      :state_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a MicroVM instance.</p>
    # @!attribute microvm_id
    #   <p>The unique identifier of the MicroVM.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current lifecycle state of the MicroVM.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the MicroVM started.</p>
    #   @return [Time]
    class MicrovmItem < Struct.new(
      nil,
      :microvm_id,
      :state,
      :image_arn,
      :image_version,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a range of ports.</p>
    # @!attribute start_port
    #   <p>The starting port number of the range.</p>
    #   @return [Integer]
    # @!attribute end_port
    #   <p>The ending port number of the range.</p>
    #   @return [Integer]
    class PortRange < Struct.new(
      nil,
      :start_port,
      :end_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies which ports are accessible on a MicroVM. Only one of the port specification options can be set.</p>
    # @!attribute port
    #   <p>A single port number.</p>
    #   @return [Integer]
    # @!attribute range
    #   <p>A range of ports.</p>
    #   @return [Types::PortRange]
    # @!attribute all_ports
    #   <p>Indicates that all ports are accessible.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    class PortSpecification < Struct.new(
      :port,
      :range,
      :all_ports,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Port < PortSpecification; end
      class Range < PortSpecification; end
      class AllPorts < PortSpecification; end
      class Unknown < PortSpecification; end
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceConflictException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_type,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource requirements for a MicroVM.</p>
    # @!attribute minimum_memory_in_mi_b
    #   <p>The minimum amount of memory in MiB to allocate to the MicroVM.</p>
    #   @return [Integer]
    class Resources < Struct.new(
      nil,
      :minimum_memory_in_mi_b,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to resume.</p>
    #   @return [String]
    class ResumeMicrovmRequest < Struct.new(
      nil,
      :microvm_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ResumeMicrovmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_network_connectors
    #   <p>The list of ingress network connectors to configure for the MicroVM.</p>
    #   @return [Array<String>]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors to configure for the MicroVM.</p>
    #   @return [Array<String>]
    # @!attribute image_identifier
    #   <p>The identifier (ARN or ID) of the MicroVM image to run.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image to run.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM role to be assumed by the MicroVM during execution.</p>
    #   @return [String]
    # @!attribute idle_policy
    #   <p>Configuration to control auto-suspend and auto-resume behavior.</p>
    #   @return [Types::IdlePolicy]
    # @!attribute logging
    #   <p>The logging configuration for this MicroVM instance. Specify {"cloudWatch": {"logGroup": "..."}} to stream application logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    #   @return [Types::Logging]
    # @!attribute run_hook_payload
    #   <p>Per-MicroVM initialization data delivered as the request body of the /run lifecycle hook. Use to pass tenant-specific configuration such as session IDs or secret references. Maximum: 16,384 bytes.</p>
    #   @return [String]
    # @!attribute maximum_duration_in_seconds
    #   <p>The maximum duration in seconds that the MicroVM can exist before being terminated by the platform. Valid range: 1–28,800 (8 hours).</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class RunMicrovmRequest < Struct.new(
      nil,
      :ingress_network_connectors,
      :egress_network_connectors,
      :image_identifier,
      :image_version,
      :execution_role_arn,
      :idle_policy,
      :logging,
      :run_hook_payload,
      :maximum_duration_in_seconds,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_id
    #   <p>The unique identifier of the MicroVM.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current lifecycle state of the MicroVM.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The HTTPS endpoint URL for communicating with the MicroVM. Include a valid authentication token in the X-aws-proxy-auth header when sending requests.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image used to run this MicroVM.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the IAM execution role assumed by the MicroVM.</p>
    #   @return [String]
    # @!attribute idle_policy
    #   <p>The idle policy configuration of the MicroVM.</p>
    #   @return [Types::IdlePolicy]
    # @!attribute maximum_duration_in_seconds
    #   <p>The maximum duration in seconds that the MicroVM can exist.</p>
    #   @return [Integer]
    # @!attribute started_at
    #   <p>The timestamp when the MicroVM first started.</p>
    #   @return [Time]
    # @!attribute terminated_at
    #   <p>The timestamp when the MicroVM terminated.</p>
    #   @return [Time]
    # @!attribute state_reason
    #   <p>The reason for why the MicroVM is in the current state.</p>
    #   @return [String]
    # @!attribute ingress_network_connectors
    #   <p>The list of ingress network connectors configured for the MicroVM.</p>
    #   @return [Array<String>]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors configured for the MicroVM.</p>
    #   @return [Array<String>]
    class RunMicrovmResponse < Struct.new(
      nil,
      :microvm_id,
      :state,
      :endpoint,
      :image_arn,
      :image_version,
      :execution_role_arn,
      :idle_policy,
      :maximum_duration_in_seconds,
      :started_at,
      :terminated_at,
      :state_reason,
      :ingress_network_connectors,
      :egress_network_connectors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The AWS Lambda MicroVMs service encountered an internal error.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded a service quota for Lambda MicroVMs.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeded the quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the exceeded service quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the exceeded service quota.</p>
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

    # <p>Contains size information about a MicroVM image snapshot build.</p>
    # @!attribute memory_snapshot_size_in_bytes
    #   <p>The size of the memory snapshot in bytes.</p>
    #   @return [Integer]
    # @!attribute code_install_size_in_bytes
    #   <p>The size of the installed code in bytes.</p>
    #   @return [Integer]
    # @!attribute disk_snapshot_size_in_bytes
    #   <p>The size of the disk snapshot in bytes.</p>
    #   @return [Integer]
    class SnapshotBuild < Struct.new(
      nil,
      :memory_snapshot_size_in_bytes,
      :code_install_size_in_bytes,
      :disk_snapshot_size_in_bytes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to suspend.</p>
    #   @return [String]
    class SuspendMicrovmRequest < Struct.new(
      nil,
      :microvm_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SuspendMicrovmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The ARN of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pairs of tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute microvm_identifier
    #   <p>The ID of the MicroVM to terminate.</p>
    #   @return [String]
    class TerminateMicrovmRequest < Struct.new(
      nil,
      :microvm_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TerminateMicrovmResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling. Retry the request later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of the throttled service quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of the throttled service quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request throughput limit was exceeded. Retry the request later.</p>
    # @!attribute type
    #   <p>The exception type.</p>
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource
    #   <p>The ARN of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image to use.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the MicroVM image.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure the idempotency of the request.</p>
    #   @return [String]
    class UpdateMicrovmImageRequest < Struct.new(
      nil,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :image_identifier,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_active_image_version
    #   <p>The latest active version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute latest_failed_image_version
    #   <p>The latest failed version of the MicroVM image, if any.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the MicroVM image was created.</p>
    #   @return [Time]
    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the MicroVM image.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact containing the application code and metadata for the MicroVM image.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for build-time and runtime logs. Specify {"cloudWatch": {"logGroup": "..."}} to stream logs to a custom CloudWatch log group, or {"disabled": {}} to turn off logging.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute updated_at
    #   <p>The timestamp when the MicroVM image was last updated.</p>
    #   @return [Time]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    class UpdateMicrovmImageResponse < Struct.new(
      nil,
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :updated_at,
      :image_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_identifier
    #   <p>The unique identifier (ARN or ID) of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status to set for the MicroVM image version.</p>
    #   @return [String]
    class UpdateMicrovmImageVersionRequest < Struct.new(
      nil,
      :image_identifier,
      :image_version,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute base_image_arn
    #   <p>The ARN of the base MicroVM image used.</p>
    #   @return [String]
    # @!attribute base_image_version
    #   <p>The specific version of the base MicroVM image.</p>
    #   @return [String]
    # @!attribute build_role_arn
    #   <p>The ARN of the IAM build role.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the version.</p>
    #   @return [String]
    # @!attribute code_artifact
    #   <p>The code artifact for this version.</p>
    #   @return [Types::CodeArtifact]
    # @!attribute logging
    #   <p>The logging configuration for this version.</p>
    #   @return [Types::Logging]
    # @!attribute egress_network_connectors
    #   <p>The list of egress network connectors available to the MicroVM at runtime.</p>
    #   @return [Array<String>]
    # @!attribute cpu_configurations
    #   <p>The list of supported CPU configurations for the MicroVM.</p>
    #   @return [Array<Types::CpuConfiguration>]
    # @!attribute resources
    #   <p>The resource requirements for the MicroVM.</p>
    #   @return [Array<Types::Resources>]
    # @!attribute additional_os_capabilities
    #   <p>Additional OS capabilities granted to the MicroVM runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute hooks
    #   <p>Lifecycle hook configuration for MicroVMs and MicroVM images.</p>
    #   @return [Types::Hooks]
    # @!attribute environment_variables
    #   <p>Environment variables set in the MicroVM runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_arn
    #   <p>The ARN of the MicroVM image.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>The version of the MicroVM image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The availability status of the version: ACTIVE (can be used by RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the version was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the version was last updated.</p>
    #   @return [Time]
    # @!attribute state_reason
    #   <p>The reason for the current state. For example, one or more builds failed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs associated with the version.</p>
    #   @return [Hash<String, String>]
    class UpdateMicrovmImageVersionResponse < Struct.new(
      nil,
      :base_image_arn,
      :base_image_version,
      :build_role_arn,
      :description,
      :code_artifact,
      :logging,
      :egress_network_connectors,
      :cpu_configurations,
      :resources,
      :additional_os_capabilities,
      :hooks,
      :environment_variables,
      :image_arn,
      :image_version,
      :state,
      :status,
      :created_at,
      :updated_at,
      :state_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input does not satisfy the constraints specified by the service.</p>
    # @!attribute message
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
