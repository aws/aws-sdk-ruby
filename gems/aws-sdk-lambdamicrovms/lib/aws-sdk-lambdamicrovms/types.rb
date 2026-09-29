# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaMicrovms
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for Amazon CloudWatch Logs logging.
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch Logs log group to send logs to.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The name of the CloudWatch Logs log stream within the log group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CloudWatchLogging AWS API Documentation
    #
    class CloudWatchLogging < Struct.new(
      :log_group,
      :log_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the location of the code artifact for a MicroVM image.
    #
    # @note CodeArtifact is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CodeArtifact is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CodeArtifact corresponding to the set member.
    #
    # @!attribute [rw] uri
    #   The URI of the code artifact in Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CodeArtifact AWS API Documentation
    #
    class CodeArtifact < Struct.new(
      :uri,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Uri < CodeArtifact; end
      class Unknown < CodeArtifact; end
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that caused the conflict.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that caused the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for the CPU architecture of a MicroVM.
    #
    # @!attribute [rw] architecture
    #   The CPU architecture.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CpuConfiguration AWS API Documentation
    #
    class CpuConfiguration < Struct.new(
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to create an authentication token for.
    #   @return [String]
    #
    # @!attribute [rw] expiration_in_minutes
    #   The duration in minutes before the authentication token expires.
    #   Maximum: 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] allowed_ports
    #   The list of port specifications that the authentication token grants
    #   access to on the MicroVM.
    #   @return [Array<Types::PortSpecification>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmAuthTokenRequest AWS API Documentation
    #
    class CreateMicrovmAuthTokenRequest < Struct.new(
      :microvm_identifier,
      :expiration_in_minutes,
      :allowed_ports)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_token
    #   A map containing the authentication token. Use the value at key
    #   "X-aws-proxy-auth" as the header value when connecting to the
    #   MicroVM endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmAuthTokenResponse AWS API Documentation
    #
    class CreateMicrovmAuthTokenResponse < Struct.new(
      :auth_token)
      SENSITIVE = [:auth_token]
      include Aws::Structure
    end

    # @!attribute [rw] base_image_arn
    #   The ARN of the Lambda-managed base MicroVM image to build upon. Use
    #   ListManagedMicrovmImages to discover available base images.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image to use.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM role assumed during the image build process. This
    #   role must have permissions to access the code artifact and any
    #   required resources.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact containing the application code and metadata for
    #   the MicroVM image.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a
    #   custom CloudWatch log group, or \{"disabled": \{}} to turn off
    #   logging.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] name
    #   The name of the MicroVM image. Must be unique within the AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that you can attach to the resource. Use
    #   tags to categorize resources for cost allocation, access control
    #   (ABAC), and organization.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request. If you retry a request that completed
    #   successfully using the same client token, the operation returns the
    #   successful response without performing any further actions.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmImageRequest AWS API Documentation
    #
    class CreateMicrovmImageRequest < Struct.new(
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
      :client_token)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] image_arn
    #   The ARN of the created MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_active_image_version
    #   The latest active version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_failed_image_version
    #   The latest failed version of the MicroVM image, if any.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the MicroVM image was created.
    #   @return [Time]
    #
    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact containing the application code and metadata for
    #   the MicroVM image.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a
    #   custom CloudWatch log group, or \{"disabled": \{}} to turn off
    #   logging.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that you can attach to the resource. Use
    #   tags to categorize resources for cost allocation, access control
    #   (ABAC), and organization.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the MicroVM image was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmImageResponse AWS API Documentation
    #
    class CreateMicrovmImageResponse < Struct.new(
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
      :image_version)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to create a shell authentication token for.
    #   @return [String]
    #
    # @!attribute [rw] expiration_in_minutes
    #   The duration in minutes before the shell authentication token
    #   expires.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmShellAuthTokenRequest AWS API Documentation
    #
    class CreateMicrovmShellAuthTokenRequest < Struct.new(
      :microvm_identifier,
      :expiration_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auth_token
    #   The generated shell authentication token key-value pairs for
    #   accessing the MicroVM.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/CreateMicrovmShellAuthTokenResponse AWS API Documentation
    #
    class CreateMicrovmShellAuthTokenResponse < Struct.new(
      :auth_token)
      SENSITIVE = [:auth_token]
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImageInput AWS API Documentation
    #
    class DeleteMicrovmImageInput < Struct.new(
      :image_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The identifier of the deleted MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image after deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImageOutput AWS API Documentation
    #
    class DeleteMicrovmImageOutput < Struct.new(
      :image_identifier,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImageVersionInput AWS API Documentation
    #
    class DeleteMicrovmImageVersionInput < Struct.new(
      :image_identifier,
      :image_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The identifier of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image version after deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/DeleteMicrovmImageVersionOutput AWS API Documentation
    #
    class DeleteMicrovmImageVersionOutput < Struct.new(
      :image_identifier,
      :image_version,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   The unique identifier of the build to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageBuildInput AWS API Documentation
    #
    class GetMicrovmImageBuildInput < Struct.new(
      :image_identifier,
      :image_version,
      :build_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   The build request ID.
    #   @return [String]
    #
    # @!attribute [rw] build_state
    #   The current state of the build.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The target CPU architecture for the build. Supported value: ARM\_64.
    #   @return [String]
    #
    # @!attribute [rw] chipset
    #   The target chipset for the build.
    #   @return [String]
    #
    # @!attribute [rw] chipset_generation
    #   The target chipset generation for the build.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the build state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the build was created.
    #   @return [Time]
    #
    # @!attribute [rw] snapshot_build
    #   The snapshot build details, including memory and disk snapshot
    #   sizes.
    #   @return [Types::SnapshotBuild]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageBuildOutput AWS API Documentation
    #
    class GetMicrovmImageBuildOutput < Struct.new(
      :image_arn,
      :image_version,
      :build_id,
      :build_state,
      :architecture,
      :chipset,
      :chipset_generation,
      :state_reason,
      :created_at,
      :snapshot_build)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageInput AWS API Documentation
    #
    class GetMicrovmImageInput < Struct.new(
      :image_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_active_image_version
    #   The latest active version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_failed_image_version
    #   The latest failed version of the MicroVM image, if any.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the MicroVM image was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A set of key-value pairs that you can attach to the resource. Use
    #   tags to categorize resources for cost allocation, access control
    #   (ABAC), and organization.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the MicroVM image was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageOutput AWS API Documentation
    #
    class GetMicrovmImageOutput < Struct.new(
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at,
      :tags,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageVersionInput AWS API Documentation
    #
    class GetMicrovmImageVersionInput < Struct.new(
      :image_identifier,
      :image_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image used.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact for this version.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for this version.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The availability status of the version: ACTIVE (can be used by
    #   RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state. For example, one or more builds
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with the version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmImageVersionOutput AWS API Documentation
    #
    class GetMicrovmImageVersionOutput < Struct.new(
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
      :tags)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmRequest AWS API Documentation
    #
    class GetMicrovmRequest < Struct.new(
      :microvm_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] microvm_id
    #   The unique identifier of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current lifecycle state of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The HTTPS endpoint URL for communicating with the MicroVM. Include a
    #   valid authentication token in the X-aws-proxy-auth header when
    #   sending requests.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role assumed by the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] idle_policy
    #   The idle policy configuration of the MicroVM, controlling
    #   auto-suspend and auto-resume behavior.
    #   @return [Types::IdlePolicy]
    #
    # @!attribute [rw] maximum_duration_in_seconds
    #   The maximum duration in seconds that the MicroVM can exist before
    #   being terminated by the platform.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the MicroVM first started.
    #   @return [Time]
    #
    # @!attribute [rw] terminated_at
    #   The timestamp when the MicroVM terminated.
    #   @return [Time]
    #
    # @!attribute [rw] state_reason
    #   The reason for why the MicroVM is in the current state.
    #   @return [String]
    #
    # @!attribute [rw] ingress_network_connectors
    #   The list of ingress network connectors configured for the MicroVM.
    #   @return [Array<String>]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors configured for the MicroVM.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/GetMicrovmResponse AWS API Documentation
    #
    class GetMicrovmResponse < Struct.new(
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
      :egress_network_connectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Lifecycle hook configuration for MicroVMs and MicroVM images.
    #
    # @!attribute [rw] port
    #   The port number on which the hooks listener runs.
    #   @return [Integer]
    #
    # @!attribute [rw] microvm_hooks
    #   The lifecycle hooks for MicroVM events.
    #   @return [Types::MicrovmHooks]
    #
    # @!attribute [rw] microvm_image_hooks
    #   The hooks for MicroVM image build events.
    #   @return [Types::MicrovmImageHooks]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/Hooks AWS API Documentation
    #
    class Hooks < Struct.new(
      :port,
      :microvm_hooks,
      :microvm_image_hooks)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration that controls MicroVM auto-suspend and auto-resume
    # behavior. Idle time is measured by inbound traffic through the MicroVM
    # proxy endpoint — if no requests arrive within the configured duration,
    # the MicroVM is suspended.
    #
    # @!attribute [rw] max_idle_duration_seconds
    #   The maximum time in seconds that a MicroVM can remain idle before it
    #   is automatically suspended.
    #   @return [Integer]
    #
    # @!attribute [rw] suspended_duration_seconds
    #   The maximum time in seconds that a MicroVM can remain suspended
    #   before it is automatically terminated.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_resume_enabled
    #   Indicates whether the MicroVM automatically resumes when it receives
    #   a request while suspended.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/IdlePolicy AWS API Documentation
    #
    class IdlePolicy < Struct.new(
      :max_idle_duration_seconds,
      :suspended_duration_seconds,
      :auto_resume_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is insufficient capacity to fulfill the request. Retry the
    # request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/InsufficientCapacityException AWS API Documentation
    #
    class InsufficientCapacityException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry the request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is not valid.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the managed MicroVM image to
    #   list versions for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImageVersionsInput AWS API Documentation
    #
    class ListManagedMicrovmImageVersionsInput < Struct.new(
      :max_results,
      :next_token,
      :image_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of managed MicroVM image versions.
    #   @return [Array<Types::ManagedMicrovmImageVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImageVersionsOutput AWS API Documentation
    #
    class ListManagedMicrovmImageVersionsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImagesInput AWS API Documentation
    #
    class ListManagedMicrovmImagesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of managed MicroVM images.
    #   @return [Array<Types::ManagedMicrovmImageSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListManagedMicrovmImagesOutput AWS API Documentation
    #
    class ListManagedMicrovmImagesOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image to list builds for.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   Filters builds by target CPU architecture.
    #   @return [String]
    #
    # @!attribute [rw] chipset
    #   Filters builds by target chipset.
    #   @return [String]
    #
    # @!attribute [rw] chipset_generation
    #   Filters builds by target chipset generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageBuildsInput AWS API Documentation
    #
    class ListMicrovmImageBuildsInput < Struct.new(
      :max_results,
      :next_token,
      :image_identifier,
      :image_version,
      :architecture,
      :chipset,
      :chipset_generation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of MicroVM image builds.
    #   @return [Array<Types::MicrovmImageBuildSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageBuildsOutput AWS API Documentation
    #
    class ListMicrovmImageBuildsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to list
    #   versions for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageVersionsInput AWS API Documentation
    #
    class ListMicrovmImageVersionsInput < Struct.new(
      :max_results,
      :next_token,
      :image_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of MicroVM image versions.
    #   @return [Array<Types::MicrovmImageVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImageVersionsOutput AWS API Documentation
    #
    class ListMicrovmImageVersionsOutput < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] name_filter
    #   Filters images whose name contains the specified string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImagesRequest AWS API Documentation
    #
    class ListMicrovmImagesRequest < Struct.new(
      :max_results,
      :next_token,
      :name_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of MicroVM images.
    #   @return [Array<Types::MicrovmImageSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmImagesResponse AWS API Documentation
    #
    class ListMicrovmImagesResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous call. Use this token to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] image_identifier
    #   Optional filter to list only MicroVMs running the specified image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   Optional filter to list only MicroVMs running the specified image
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmsRequest AWS API Documentation
    #
    class ListMicrovmsRequest < Struct.new(
      :max_results,
      :next_token,
      :image_identifier,
      :image_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results. This value is null when there are no more
    #   results to return.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of MicroVMs.
    #   @return [Array<Types::MicrovmItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListMicrovmsResponse AWS API Documentation
    #
    class ListMicrovmsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource
    #   The ARN of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListTagsRequest AWS API Documentation
    #
    class ListTagsRequest < Struct.new(
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The key-value pairs of tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ListTagsResponse AWS API Documentation
    #
    class ListTagsResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for MicroVM logging output. Specify exactly one:
    # cloudWatch to enable CloudWatch logging, or disabled to turn off
    # logging.
    #
    # @note Logging is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Logging is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Logging corresponding to the set member.
    #
    # @!attribute [rw] disabled
    #   Specifies that logging is disabled.
    #   @return [Types::LoggingDisabled]
    #
    # @!attribute [rw] cloud_watch
    #   Configuration for sending logs to Amazon CloudWatch Logs.
    #   @return [Types::CloudWatchLogging]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :disabled,
      :cloud_watch,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Disabled < Logging; end
      class CloudWatch < Logging; end
      class Unknown < Logging; end
    end

    # Specifies that logging is disabled for the MicroVM.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/LoggingDisabled AWS API Documentation
    #
    class LoggingDisabled < Aws::EmptyStructure; end

    # Contains summary information about a managed MicroVM image.
    #
    # @!attribute [rw] image_arn
    #   The ARN of the managed MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the managed MicroVM image was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the managed MicroVM image was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ManagedMicrovmImageSummary AWS API Documentation
    #
    class ManagedMicrovmImageSummary < Struct.new(
      :image_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains version information for a managed MicroVM image.
    #
    # @!attribute [rw] image_arn
    #   The ARN of the managed MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the managed MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle status of the managed MicroVM image version. Valid
    #   values: AVAILABLE (the version is available for use) or DEPRECATED
    #   (the version is deprecated; do not use it for new MicroVM images).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the version was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ManagedMicrovmImageVersion AWS API Documentation
    #
    class ManagedMicrovmImageVersion < Struct.new(
      :image_arn,
      :image_version,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for lifecycle hooks invoked during MicroVM events such
    # as run, resume, suspend, and terminate.
    #
    # @!attribute [rw] run
    #   The path of the hook invoked when the MicroVM starts running.
    #   @return [String]
    #
    # @!attribute [rw] run_timeout_in_seconds
    #   The maximum time in seconds for the run hook to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] resume
    #   The path of the hook invoked when the MicroVM resumes from a
    #   suspended state.
    #   @return [String]
    #
    # @!attribute [rw] resume_timeout_in_seconds
    #   The maximum time in seconds for the resume hook to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] suspend
    #   The path of the hook invoked when the MicroVM is suspended.
    #   @return [String]
    #
    # @!attribute [rw] suspend_timeout_in_seconds
    #   The maximum time in seconds for the suspend hook to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] terminate
    #   The path of the hook invoked when the MicroVM is terminated.
    #   @return [String]
    #
    # @!attribute [rw] terminate_timeout_in_seconds
    #   The maximum time in seconds for the terminate hook to complete.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmHooks AWS API Documentation
    #
    class MicrovmHooks < Struct.new(
      :run,
      :run_timeout_in_seconds,
      :resume,
      :resume_timeout_in_seconds,
      :suspend,
      :suspend_timeout_in_seconds,
      :terminate,
      :terminate_timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a MicroVM image build.
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_id
    #   The build request ID.
    #   @return [String]
    #
    # @!attribute [rw] build_state
    #   The current state of the build.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The target CPU architecture for the build. Supported value: ARM\_64.
    #   @return [String]
    #
    # @!attribute [rw] chipset
    #   The target chipset for the build.
    #   @return [String]
    #
    # @!attribute [rw] chipset_generation
    #   The target chipset generation for the build.
    #   @return [String]
    #
    # @!attribute [rw] state_reason
    #   The reason for the build state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the build was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmImageBuildSummary AWS API Documentation
    #
    class MicrovmImageBuildSummary < Struct.new(
      :image_arn,
      :image_version,
      :build_id,
      :build_state,
      :architecture,
      :chipset,
      :chipset_generation,
      :state_reason,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for hooks invoked during MicroVM image build events such
    # as ready and validate.
    #
    # @!attribute [rw] ready
    #   The path of the hook invoked when the MicroVM image build is ready.
    #   @return [String]
    #
    # @!attribute [rw] ready_timeout_in_seconds
    #   The maximum time in seconds for the ready hook to complete.
    #   @return [Integer]
    #
    # @!attribute [rw] validate
    #   The path of the hook invoked to validate the MicroVM image build.
    #   @return [String]
    #
    # @!attribute [rw] validate_timeout_in_seconds
    #   The maximum time in seconds for the validate hook to complete.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmImageHooks AWS API Documentation
    #
    class MicrovmImageHooks < Struct.new(
      :ready,
      :ready_timeout_in_seconds,
      :validate,
      :validate_timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a MicroVM image.
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_active_image_version
    #   The latest active version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_failed_image_version
    #   The latest failed version of the MicroVM image, if any.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the MicroVM image was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmImageSummary AWS API Documentation
    #
    class MicrovmImageSummary < Struct.new(
      :image_arn,
      :name,
      :state,
      :latest_active_image_version,
      :latest_failed_image_version,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a version of a MicroVM image.
    #
    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image used.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact for this version.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for this version.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The availability status of the version: ACTIVE (can be used by
    #   RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state. For example, one or more builds
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with the version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmImageVersionSummary AWS API Documentation
    #
    class MicrovmImageVersionSummary < Struct.new(
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
      :tags)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # Contains summary information about a MicroVM instance.
    #
    # @!attribute [rw] microvm_id
    #   The unique identifier of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current lifecycle state of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the MicroVM started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/MicrovmItem AWS API Documentation
    #
    class MicrovmItem < Struct.new(
      :microvm_id,
      :state,
      :image_arn,
      :image_version,
      :started_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a range of ports.
    #
    # @!attribute [rw] start_port
    #   The starting port number of the range.
    #   @return [Integer]
    #
    # @!attribute [rw] end_port
    #   The ending port number of the range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :start_port,
      :end_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which ports are accessible on a MicroVM. Only one of the
    # port specification options can be set.
    #
    # @note PortSpecification is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] port
    #   A single port number.
    #   @return [Integer]
    #
    # @!attribute [rw] range
    #   A range of ports.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] all_ports
    #   Indicates that all ports are accessible.
    #   @return [Types::Unit]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/PortSpecification AWS API Documentation
    #
    class PortSpecification < Struct.new(
      :port,
      :range,
      :all_ports,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Port < PortSpecification; end
      class Range < PortSpecification; end
      class AllPorts < PortSpecification; end
      class Unknown < PortSpecification; end
    end

    # The resource already exists, or another operation is in progress.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ResourceConflictException AWS API Documentation
    #
    class ResourceConflictException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource requirements for a MicroVM.
    #
    # @!attribute [rw] minimum_memory_in_mi_b
    #   The minimum amount of memory in MiB to allocate to the MicroVM.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/Resources AWS API Documentation
    #
    class Resources < Struct.new(
      :minimum_memory_in_mi_b)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to resume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ResumeMicrovmRequest AWS API Documentation
    #
    class ResumeMicrovmRequest < Struct.new(
      :microvm_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ResumeMicrovmResponse AWS API Documentation
    #
    class ResumeMicrovmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ingress_network_connectors
    #   The list of ingress network connectors to configure for the MicroVM.
    #   @return [Array<String>]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors to configure for the MicroVM.
    #   @return [Array<String>]
    #
    # @!attribute [rw] image_identifier
    #   The identifier (ARN or ID) of the MicroVM image to run.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image to run.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM role to be assumed by the MicroVM during
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] idle_policy
    #   Configuration to control auto-suspend and auto-resume behavior.
    #   @return [Types::IdlePolicy]
    #
    # @!attribute [rw] logging
    #   The logging configuration for this MicroVM instance. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream application
    #   logs to a custom CloudWatch log group, or \{"disabled": \{}} to
    #   turn off logging.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] run_hook_payload
    #   Per-MicroVM initialization data delivered as the request body of the
    #   /run lifecycle hook. Use to pass tenant-specific configuration such
    #   as session IDs or secret references. Maximum: 16,384 bytes.
    #   @return [String]
    #
    # @!attribute [rw] maximum_duration_in_seconds
    #   The maximum duration in seconds that the MicroVM can exist before
    #   being terminated by the platform. Valid range: 1–28,800 (8 hours).
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/RunMicrovmRequest AWS API Documentation
    #
    class RunMicrovmRequest < Struct.new(
      :ingress_network_connectors,
      :egress_network_connectors,
      :image_identifier,
      :image_version,
      :execution_role_arn,
      :idle_policy,
      :logging,
      :run_hook_payload,
      :maximum_duration_in_seconds,
      :client_token)
      SENSITIVE = [:run_hook_payload]
      include Aws::Structure
    end

    # @!attribute [rw] microvm_id
    #   The unique identifier of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current lifecycle state of the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The HTTPS endpoint URL for communicating with the MicroVM. Include a
    #   valid authentication token in the X-aws-proxy-auth header when
    #   sending requests.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image used to run this MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the IAM execution role assumed by the MicroVM.
    #   @return [String]
    #
    # @!attribute [rw] idle_policy
    #   The idle policy configuration of the MicroVM.
    #   @return [Types::IdlePolicy]
    #
    # @!attribute [rw] maximum_duration_in_seconds
    #   The maximum duration in seconds that the MicroVM can exist.
    #   @return [Integer]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the MicroVM first started.
    #   @return [Time]
    #
    # @!attribute [rw] terminated_at
    #   The timestamp when the MicroVM terminated.
    #   @return [Time]
    #
    # @!attribute [rw] state_reason
    #   The reason for why the MicroVM is in the current state.
    #   @return [String]
    #
    # @!attribute [rw] ingress_network_connectors
    #   The list of ingress network connectors configured for the MicroVM.
    #   @return [Array<String>]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors configured for the MicroVM.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/RunMicrovmResponse AWS API Documentation
    #
    class RunMicrovmResponse < Struct.new(
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
      :egress_network_connectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS Lambda MicroVMs service encountered an internal error.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded a service quota for Lambda MicroVMs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded the quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the exceeded service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of the exceeded service quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ServiceQuotaExceededException AWS API Documentation
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

    # Contains size information about a MicroVM image snapshot build.
    #
    # @!attribute [rw] memory_snapshot_size_in_bytes
    #   The size of the memory snapshot in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] code_install_size_in_bytes
    #   The size of the installed code in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] disk_snapshot_size_in_bytes
    #   The size of the disk snapshot in bytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/SnapshotBuild AWS API Documentation
    #
    class SnapshotBuild < Struct.new(
      :memory_snapshot_size_in_bytes,
      :code_install_size_in_bytes,
      :disk_snapshot_size_in_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to suspend.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/SuspendMicrovmRequest AWS API Documentation
    #
    class SuspendMicrovmRequest < Struct.new(
      :microvm_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/SuspendMicrovmResponse AWS API Documentation
    #
    class SuspendMicrovmResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource
    #   The ARN of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value pairs of tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] microvm_identifier
    #   The ID of the MicroVM to terminate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TerminateMicrovmRequest AWS API Documentation
    #
    class TerminateMicrovmRequest < Struct.new(
      :microvm_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TerminateMicrovmResponse AWS API Documentation
    #
    class TerminateMicrovmResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling. Retry the request
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of the throttled service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of the throttled service quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throughput limit was exceeded. Retry the request later.
    #
    # @!attribute [rw] type
    #   The exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

    # @!attribute [rw] resource
    #   The ARN of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image to use.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact containing the application code and metadata for
    #   the MicroVM image.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a
    #   custom CloudWatch log group, or \{"disabled": \{}} to turn off
    #   logging.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImageRequest AWS API Documentation
    #
    class UpdateMicrovmImageRequest < Struct.new(
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
      :client_token)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_active_image_version
    #   The latest active version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] latest_failed_image_version
    #   The latest failed version of the MicroVM image, if any.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the MicroVM image was created.
    #   @return [Time]
    #
    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact containing the application code and metadata for
    #   the MicroVM image.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for build-time and runtime logs. Specify
    #   \{"cloudWatch": \{"logGroup": "..."}} to stream logs to a
    #   custom CloudWatch log group, or \{"disabled": \{}} to turn off
    #   logging.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the MicroVM image was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImageResponse AWS API Documentation
    #
    class UpdateMicrovmImageResponse < Struct.new(
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
      :image_version)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # @!attribute [rw] image_identifier
    #   The unique identifier (ARN or ID) of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status to set for the MicroVM image version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImageVersionRequest AWS API Documentation
    #
    class UpdateMicrovmImageVersionRequest < Struct.new(
      :image_identifier,
      :image_version,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] base_image_arn
    #   The ARN of the base MicroVM image used.
    #   @return [String]
    #
    # @!attribute [rw] base_image_version
    #   The specific version of the base MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] build_role_arn
    #   The ARN of the IAM build role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] code_artifact
    #   The code artifact for this version.
    #   @return [Types::CodeArtifact]
    #
    # @!attribute [rw] logging
    #   The logging configuration for this version.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] egress_network_connectors
    #   The list of egress network connectors available to the MicroVM at
    #   runtime.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cpu_configurations
    #   The list of supported CPU configurations for the MicroVM.
    #   @return [Array<Types::CpuConfiguration>]
    #
    # @!attribute [rw] resources
    #   The resource requirements for the MicroVM.
    #   @return [Array<Types::Resources>]
    #
    # @!attribute [rw] additional_os_capabilities
    #   Additional OS capabilities granted to the MicroVM runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] hooks
    #   Lifecycle hook configuration for MicroVMs and MicroVM images.
    #   @return [Types::Hooks]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables set in the MicroVM runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   The version of the MicroVM image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The availability status of the version: ACTIVE (can be used by
    #   RunMicrovm) or INACTIVE (blocked from launching new MicroVMs).
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the version was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the version was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] state_reason
    #   The reason for the current state. For example, one or more builds
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Key-value pairs associated with the version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/UpdateMicrovmImageVersionResponse AWS API Documentation
    #
    class UpdateMicrovmImageVersionResponse < Struct.new(
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
      :tags)
      SENSITIVE = [:environment_variables]
      include Aws::Structure
    end

    # The input does not satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-microvms-2025-09-09/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

