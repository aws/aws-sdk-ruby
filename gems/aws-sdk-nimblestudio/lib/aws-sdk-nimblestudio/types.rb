# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NimbleStudio
  module Types

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] eula_ids
    #   The EULA ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulasRequest AWS API Documentation
    #
    class AcceptEulasRequest < Struct.new(
      :client_token,
      :eula_ids,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_acceptances
    #   A collection of EULA acceptances.
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulasResponse AWS API Documentation
    #
    class AcceptEulasResponse < Struct.new(
      :eula_acceptances)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform this operation. Check your IAM
    # policies, and ensure that you are using the correct access keys.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An LDAP attribute of an Active Directory computer account, in the form
    # of a name:value pair.
    #
    # @!attribute [rw] name
    #   The name for the LDAP attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the LDAP attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ActiveDirectoryComputerAttribute AWS API Documentation
    #
    class ActiveDirectoryComputerAttribute < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a Directory Service for Microsoft Active
    # Directory studio resource.
    #
    # @!attribute [rw] computer_attributes
    #   A collection of custom attributes for an Active Directory computer.
    #   @return [Array<Types::ActiveDirectoryComputerAttribute>]
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the Directory Service for Microsoft Active
    #   Directory to access using this studio component.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The distinguished name (DN) and organizational unit (OU) of an
    #   Active Directory computer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ActiveDirectoryConfiguration AWS API Documentation
    #
    class ActiveDirectoryConfiguration < Struct.new(
      :computer_attributes,
      :directory_id,
      :organizational_unit_distinguished_name)
      SENSITIVE = [:computer_attributes]
      include Aws::Structure
    end

    # The configuration for a render farm that is associated with a studio
    # resource.
    #
    # @!attribute [rw] active_directory_user
    #   The name of an Active Directory user that is used on ComputeFarm
    #   worker instances.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint of the ComputeFarm that is accessed by the studio
    #   component resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ComputeFarmConfiguration AWS API Documentation
    #
    class ComputeFarmConfiguration < Struct.new(
      :active_directory_user,
      :endpoint)
      SENSITIVE = [:endpoint]
      include Aws::Structure
    end

    # Another operation is in progress.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   Specifies the IDs of the EC2 subnets where streaming sessions will
    #   be accessible from. These subnets must support the specified
    #   instance types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name for the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   A configuration for a streaming session.
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   Unique identifiers for a collection of studio components that can be
    #   used with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfileRequest AWS API Documentation
    #
    class CreateLaunchProfileRequest < Struct.new(
      :client_token,
      :description,
      :ec2_subnet_ids,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids,
      :studio_id,
      :tags)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   The launch profile.
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfileResponse AWS API Documentation
    #
    class CreateLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] ec2_image_id
    #   The ID of an EC2 machine image with which to create this streaming
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImageRequest AWS API Documentation
    #
    class CreateStreamingImageRequest < Struct.new(
      :client_token,
      :description,
      :ec2_image_id,
      :name,
      :studio_id,
      :tags)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   The streaming image.
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImageResponse AWS API Documentation
    #
    class CreateStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_type
    #   The EC2 Instance type used for the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   The user ID of the user that owns the streaming session. The user
    #   that owns the session will be logging into the session and
    #   interacting with the virtual workstation.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   The ID of the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionRequest AWS API Documentation
    #
    class CreateStreamingSessionRequest < Struct.new(
      :client_token,
      :ec2_instance_type,
      :launch_profile_id,
      :owned_by,
      :streaming_image_id,
      :studio_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionResponse AWS API Documentation
    #
    class CreateStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] expiration_in_seconds
    #   The expiration time in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] session_id
    #   The streaming session ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStreamRequest AWS API Documentation
    #
    class CreateStreamingSessionStreamRequest < Struct.new(
      :client_token,
      :expiration_in_seconds,
      :session_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   The stream.
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStreamResponse AWS API Documentation
    #
    class CreateStreamingSessionStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   Initialization scripts for studio components.
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   The name for the studio component.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while
    #   the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   Parameters for the studio component scripts.
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   The specific subtype of a studio component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the studio component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioComponentRequest AWS API Documentation
    #
    class CreateStudioComponentRequest < Struct.new(
      :client_token,
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :runtime_role_arn,
      :script_parameters,
      :secure_initialization_role_arn,
      :studio_id,
      :subtype,
      :tags,
      :type)
      SENSITIVE = [:description, :name, :script_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   Information about the studio component.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioComponentResponse AWS API Documentation
    #
    class CreateStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_role_arn
    #   The IAM role that studio admins will assume when logging in to the
    #   Nimble Studio portal.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the studio.
    #   @return [String]
    #
    # @!attribute [rw] studio_encryption_configuration
    #   The studio encryption configuration.
    #   @return [Types::StudioEncryptionConfiguration]
    #
    # @!attribute [rw] studio_name
    #   The studio name that is used in the URL of the Nimble Studio portal
    #   when accessed by Nimble Studio users.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_role_arn
    #   The IAM role that studio users will assume when logging in to the
    #   Nimble Studio portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioRequest AWS API Documentation
    #
    class CreateStudioRequest < Struct.new(
      :admin_role_arn,
      :client_token,
      :display_name,
      :studio_encryption_configuration,
      :studio_name,
      :tags,
      :user_role_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   Information about a studio.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioResponse AWS API Documentation
    #
    class CreateStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileMemberRequest AWS API Documentation
    #
    class DeleteLaunchProfileMemberRequest < Struct.new(
      :client_token,
      :launch_profile_id,
      :principal_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileMemberResponse AWS API Documentation
    #
    class DeleteLaunchProfileMemberResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileRequest AWS API Documentation
    #
    class DeleteLaunchProfileRequest < Struct.new(
      :client_token,
      :launch_profile_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   The launch profile.
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileResponse AWS API Documentation
    #
    class DeleteLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   The streaming image ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingImageRequest AWS API Documentation
    #
    class DeleteStreamingImageRequest < Struct.new(
      :client_token,
      :streaming_image_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   The streaming image.
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingImageResponse AWS API Documentation
    #
    class DeleteStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The streaming session ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingSessionRequest AWS API Documentation
    #
    class DeleteStreamingSessionRequest < Struct.new(
      :client_token,
      :session_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingSessionResponse AWS API Documentation
    #
    class DeleteStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The studio component ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioComponentRequest AWS API Documentation
    #
    class DeleteStudioComponentRequest < Struct.new(
      :client_token,
      :studio_component_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   Information about the studio component.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioComponentResponse AWS API Documentation
    #
    class DeleteStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioMemberRequest AWS API Documentation
    #
    class DeleteStudioMemberRequest < Struct.new(
      :client_token,
      :principal_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioMemberResponse AWS API Documentation
    #
    class DeleteStudioMemberResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioRequest AWS API Documentation
    #
    class DeleteStudioRequest < Struct.new(
      :client_token,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   Information about a studio.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioResponse AWS API Documentation
    #
    class DeleteStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a EULA resource.
    #
    # @!attribute [rw] content
    #   The EULA content.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] eula_id
    #   The EULA ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the EULA.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/Eula AWS API Documentation
    #
    class Eula < Struct.new(
      :content,
      :created_at,
      :eula_id,
      :name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The acceptance of a EULA, required to use Amazon-provided streaming
    # images.
    #
    # @!attribute [rw] accepted_at
    #   The ISO timestamp in seconds for when the EULA was accepted.
    #   @return [Time]
    #
    # @!attribute [rw] accepted_by
    #   The ID of the person who accepted the EULA.
    #   @return [String]
    #
    # @!attribute [rw] acceptee_id
    #   The ID of the acceptee.
    #   @return [String]
    #
    # @!attribute [rw] eula_acceptance_id
    #   The EULA acceptance ID.
    #   @return [String]
    #
    # @!attribute [rw] eula_id
    #   The EULA ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/EulaAcceptance AWS API Documentation
    #
    class EulaAcceptance < Struct.new(
      :accepted_at,
      :accepted_by,
      :acceptee_id,
      :eula_acceptance_id,
      :eula_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_id
    #   The EULA ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetEulaRequest AWS API Documentation
    #
    class GetEulaRequest < Struct.new(
      :eula_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula
    #   The EULA.
    #   @return [Types::Eula]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetEulaResponse AWS API Documentation
    #
    class GetEulaResponse < Struct.new(
      :eula)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileDetailsRequest AWS API Documentation
    #
    class GetLaunchProfileDetailsRequest < Struct.new(
      :launch_profile_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   The launch profile.
    #   @return [Types::LaunchProfile]
    #
    # @!attribute [rw] streaming_images
    #   A collection of streaming images.
    #   @return [Array<Types::StreamingImage>]
    #
    # @!attribute [rw] studio_component_summaries
    #   A collection of studio component summaries.
    #   @return [Array<Types::StudioComponentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileDetailsResponse AWS API Documentation
    #
    class GetLaunchProfileDetailsResponse < Struct.new(
      :launch_profile,
      :streaming_images,
      :studio_component_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   The launch profile protocol versions supported by the client.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_purpose
    #   The launch purpose.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform where this Launch Profile will be used, either Windows
    #   or Linux.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileInitializationRequest AWS API Documentation
    #
    class GetLaunchProfileInitializationRequest < Struct.new(
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :launch_purpose,
      :platform,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_initialization
    #   The launch profile initialization.
    #   @return [Types::LaunchProfileInitialization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileInitializationResponse AWS API Documentation
    #
    class GetLaunchProfileInitializationResponse < Struct.new(
      :launch_profile_initialization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileMemberRequest AWS API Documentation
    #
    class GetLaunchProfileMemberRequest < Struct.new(
      :launch_profile_id,
      :principal_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   The member.
    #   @return [Types::LaunchProfileMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileMemberResponse AWS API Documentation
    #
    class GetLaunchProfileMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileRequest AWS API Documentation
    #
    class GetLaunchProfileRequest < Struct.new(
      :launch_profile_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   The launch profile.
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileResponse AWS API Documentation
    #
    class GetLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image_id
    #   The streaming image ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingImageRequest AWS API Documentation
    #
    class GetStreamingImageRequest < Struct.new(
      :streaming_image_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   The streaming image.
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingImageResponse AWS API Documentation
    #
    class GetStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] backup_id
    #   The ID of the backup.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionBackupRequest AWS API Documentation
    #
    class GetStreamingSessionBackupRequest < Struct.new(
      :backup_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_session_backup
    #   Information about the streaming session backup.
    #   @return [Types::StreamingSessionBackup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionBackupResponse AWS API Documentation
    #
    class GetStreamingSessionBackupResponse < Struct.new(
      :streaming_session_backup)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The streaming session ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionRequest AWS API Documentation
    #
    class GetStreamingSessionRequest < Struct.new(
      :session_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   The session.
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionResponse AWS API Documentation
    #
    class GetStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The streaming session ID.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The streaming session stream ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStreamRequest AWS API Documentation
    #
    class GetStreamingSessionStreamRequest < Struct.new(
      :session_id,
      :stream_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   The stream.
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStreamResponse AWS API Documentation
    #
    class GetStreamingSessionStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component_id
    #   The studio component ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioComponentRequest AWS API Documentation
    #
    class GetStudioComponentRequest < Struct.new(
      :studio_component_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   Information about the studio component.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioComponentResponse AWS API Documentation
    #
    class GetStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMemberRequest AWS API Documentation
    #
    class GetStudioMemberRequest < Struct.new(
      :principal_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   The member.
    #   @return [Types::StudioMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMemberResponse AWS API Documentation
    #
    class GetStudioMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioRequest AWS API Documentation
    #
    class GetStudioRequest < Struct.new(
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   Information about a studio.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioResponse AWS API Documentation
    #
    class GetStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error has occurred. Please retry your request.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A launch profile controls your artist workforce’s access to studio
    # components, like compute farms, shared file systems, managed file
    # systems, and license server configurations, as well as instance types
    # and Amazon Machine Images (AMIs).
    #
    # Studio administrators create launch profiles in the Nimble Studio
    # console. Artists can use their launch profiles to launch an instance
    # from the Nimble Studio portal. Each user’s launch profile defines how
    # they can launch a streaming session. By default, studio admins can use
    # all launch profiles.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user ID of the user that created the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   Unique identifiers for a collection of EC2 subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A friendly name for the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   A configuration for a streaming session.
    #   @return [Types::StreamConfiguration]
    #
    # @!attribute [rw] studio_component_ids
    #   Unique identifiers for a collection of studio components that can be
    #   used with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user ID of the user that most recently updated the resource.
    #   @return [String]
    #
    # @!attribute [rw] validation_results
    #   The list of the latest validation results.
    #   @return [Array<Types::ValidationResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfile AWS API Documentation
    #
    class LaunchProfile < Struct.new(
      :arn,
      :created_at,
      :created_by,
      :description,
      :ec2_subnet_ids,
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :name,
      :state,
      :status_code,
      :status_message,
      :stream_configuration,
      :studio_component_ids,
      :tags,
      :updated_at,
      :updated_by,
      :validation_results)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # A launch profile initialization contains information required for a
    # workstation or server to connect to a launch profile.
    #
    # This includes scripts, endpoints, security groups, subnets, and other
    # configuration.
    #
    # @!attribute [rw] active_directory
    #   A `LaunchProfileInitializationActiveDirectory` resource.
    #   @return [Types::LaunchProfileInitializationActiveDirectory]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_version
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [String]
    #
    # @!attribute [rw] launch_purpose
    #   The launch purpose.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the launch platform, either Windows or Linux.
    #   @return [String]
    #
    # @!attribute [rw] system_initialization_scripts
    #   The system initializtion scripts.
    #   @return [Array<Types::LaunchProfileInitializationScript>]
    #
    # @!attribute [rw] user_initialization_scripts
    #   The user initializtion scripts.
    #   @return [Array<Types::LaunchProfileInitializationScript>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileInitialization AWS API Documentation
    #
    class LaunchProfileInitialization < Struct.new(
      :active_directory,
      :ec2_security_group_ids,
      :launch_profile_id,
      :launch_profile_protocol_version,
      :launch_purpose,
      :name,
      :platform,
      :system_initialization_scripts,
      :user_initialization_scripts)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # The launch profile initialization Active Directory contains
    # information required for the launch profile to connect to the Active
    # Directory.
    #
    # @!attribute [rw] computer_attributes
    #   A collection of custom attributes for an Active Directory computer.
    #   @return [Array<Types::ActiveDirectoryComputerAttribute>]
    #
    # @!attribute [rw] directory_id
    #   The directory ID of the Directory Service for Microsoft Active
    #   Directory to access using this launch profile.
    #   @return [String]
    #
    # @!attribute [rw] directory_name
    #   The directory name.
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addresses
    #   The DNS IP address.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The name for the organizational unit distinguished name.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The unique identifier for a studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_name
    #   The name for the studio component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileInitializationActiveDirectory AWS API Documentation
    #
    class LaunchProfileInitializationActiveDirectory < Struct.new(
      :computer_attributes,
      :directory_id,
      :directory_name,
      :dns_ip_addresses,
      :organizational_unit_distinguished_name,
      :studio_component_id,
      :studio_component_name)
      SENSITIVE = [:computer_attributes, :studio_component_name]
      include Aws::Structure
    end

    # The launch profile initialization script is used when start streaming
    # session runs.
    #
    # @!attribute [rw] runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while
    #   the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] script
    #   The initialization script.
    #   @return [String]
    #
    # @!attribute [rw] secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The unique identifier for a studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_name
    #   The name for the studio component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileInitializationScript AWS API Documentation
    #
    class LaunchProfileInitializationScript < Struct.new(
      :runtime_role_arn,
      :script,
      :secure_initialization_role_arn,
      :studio_component_id,
      :studio_component_name)
      SENSITIVE = [:script, :studio_component_name]
      include Aws::Structure
    end

    # Studio admins can use launch profile membership to delegate launch
    # profile access to studio users in the Nimble Studio portal without
    # writing or maintaining complex IAM policies. A launch profile member
    # is a user association from your studio identity source who is granted
    # permissions to a launch profile.
    #
    # A launch profile member (type USER) provides the following permissions
    # to that launch profile:
    #
    # * GetLaunchProfile
    #
    # * GetLaunchProfileInitialization
    #
    # * GetLaunchProfileMembers
    #
    # * GetLaunchProfileMember
    #
    # * CreateStreamingSession
    #
    # * GetLaunchProfileDetails
    #
    # @!attribute [rw] identity_store_id
    #   The ID of the identity store.
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   The persona.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The Active Directory Security Identifier for this user, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileMembership AWS API Documentation
    #
    class LaunchProfileMembership < Struct.new(
      :identity_store_id,
      :persona,
      :principal_id,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a license service that is associated with a
    # studio resource.
    #
    # @!attribute [rw] endpoint
    #   The endpoint of the license service that is accessed by the studio
    #   component resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LicenseServiceConfiguration AWS API Documentation
    #
    class LicenseServiceConfiguration < Struct.new(
      :endpoint)
      SENSITIVE = [:endpoint]
      include Aws::Structure
    end

    # @!attribute [rw] eula_ids
    #   The list of EULA IDs that have been previously accepted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulaAcceptancesRequest AWS API Documentation
    #
    class ListEulaAcceptancesRequest < Struct.new(
      :eula_ids,
      :next_token,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_acceptances
    #   A collection of EULA acceptances.
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulaAcceptancesResponse AWS API Documentation
    #
    class ListEulaAcceptancesResponse < Struct.new(
      :eula_acceptances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_ids
    #   The list of EULA IDs that should be returned
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulasRequest AWS API Documentation
    #
    class ListEulasRequest < Struct.new(
      :eula_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eulas
    #   A collection of EULA resources.
    #   @return [Array<Types::Eula>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulasResponse AWS API Documentation
    #
    class ListEulasResponse < Struct.new(
      :eulas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfileMembersRequest AWS API Documentation
    #
    class ListLaunchProfileMembersRequest < Struct.new(
      :launch_profile_id,
      :max_results,
      :next_token,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of members.
    #   @return [Array<Types::LaunchProfileMembership>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfileMembersResponse AWS API Documentation
    #
    class ListLaunchProfileMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The max number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] states
    #   Filter this request to launch profiles in any of the given states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfilesRequest AWS API Documentation
    #
    class ListLaunchProfilesRequest < Struct.new(
      :max_results,
      :next_token,
      :principal_id,
      :states,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profiles
    #   A collection of launch profiles.
    #   @return [Array<Types::LaunchProfile>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfilesResponse AWS API Documentation
    #
    class ListLaunchProfilesResponse < Struct.new(
      :launch_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Filter this request to streaming images with the given owner
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingImagesRequest AWS API Documentation
    #
    class ListStreamingImagesRequest < Struct.new(
      :next_token,
      :owner,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] streaming_images
    #   A collection of streaming images.
    #   @return [Array<Types::StreamingImage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingImagesResponse AWS API Documentation
    #
    class ListStreamingImagesResponse < Struct.new(
      :next_token,
      :streaming_images)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   The user ID of the user that owns the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionBackupsRequest AWS API Documentation
    #
    class ListStreamingSessionBackupsRequest < Struct.new(
      :next_token,
      :owned_by,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] streaming_session_backups
    #   Information about the streaming session backups.
    #   @return [Array<Types::StreamingSessionBackup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionBackupsResponse AWS API Documentation
    #
    class ListStreamingSessionBackupsResponse < Struct.new(
      :next_token,
      :streaming_session_backups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_by
    #   Filters the request to streaming sessions created by the given user.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   Filters the request to streaming session owned by the given user
    #   @return [String]
    #
    # @!attribute [rw] session_ids
    #   Filters the request to only the provided session IDs.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionsRequest AWS API Documentation
    #
    class ListStreamingSessionsRequest < Struct.new(
      :created_by,
      :next_token,
      :owned_by,
      :session_ids,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] sessions
    #   A collection of streaming sessions.
    #   @return [Array<Types::StreamingSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionsResponse AWS API Documentation
    #
    class ListStreamingSessionsResponse < Struct.new(
      :next_token,
      :sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The max number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] states
    #   Filters the request to studio components that are in one of the
    #   given states.
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] types
    #   Filters the request to studio components that are of one of the
    #   given types.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioComponentsRequest AWS API Documentation
    #
    class ListStudioComponentsRequest < Struct.new(
      :max_results,
      :next_token,
      :states,
      :studio_id,
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] studio_components
    #   A collection of studio components.
    #   @return [Array<Types::StudioComponent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioComponentsResponse AWS API Documentation
    #
    class ListStudioComponentsResponse < Struct.new(
      :next_token,
      :studio_components)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The max number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioMembersRequest AWS API Documentation
    #
    class ListStudioMembersRequest < Struct.new(
      :max_results,
      :next_token,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   A list of admin members.
    #   @return [Array<Types::StudioMembership>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioMembersResponse AWS API Documentation
    #
    class ListStudioMembersResponse < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudiosRequest AWS API Documentation
    #
    class ListStudiosRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no more
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] studios
    #   A collection of studios.
    #   @return [Array<Types::Studio>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudiosResponse AWS API Documentation
    #
    class ListStudiosResponse < Struct.new(
      :next_token,
      :studios)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new member that is added to a launch profile.
    #
    # @!attribute [rw] persona
    #   The persona.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/NewLaunchProfileMember AWS API Documentation
    #
    class NewLaunchProfileMember < Struct.new(
      :persona,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A new studio user's membership.
    #
    # @!attribute [rw] persona
    #   The persona.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/NewStudioMember AWS API Documentation
    #
    class NewStudioMember < Struct.new(
      :persona,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The ID of the identity store.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   A list of members.
    #   @return [Array<Types::NewLaunchProfileMember>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutLaunchProfileMembersRequest AWS API Documentation
    #
    class PutLaunchProfileMembersRequest < Struct.new(
      :client_token,
      :identity_store_id,
      :launch_profile_id,
      :members,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutLaunchProfileMembersResponse AWS API Documentation
    #
    class PutLaunchProfileMembersResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   The ID of the identity store.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   A list of members.
    #   @return [Array<Types::NewStudioMember>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutStudioMembersRequest AWS API Documentation
    #
    class PutStudioMembersRequest < Struct.new(
      :client_token,
      :identity_store_id,
      :members,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutStudioMembersResponse AWS API Documentation
    #
    class PutStudioMembersResponse < Aws::EmptyStructure; end

    # The specified resource could not be found.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter for a studio component script, in the form of a key-value
    # pair.
    #
    # @!attribute [rw] key
    #   A script parameter key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A script parameter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ScriptParameterKeyValue AWS API Documentation
    #
    class ScriptParameterKeyValue < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your current quota does not allow you to perform the request action.
    # You can request increases for some quotas, and other quotas cannot be
    # increased.
    #
    # Please use Amazon Web Services Service Quotas to request an increase.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a shared file storage system that is associated
    # with a studio resource.
    #
    # @!attribute [rw] endpoint
    #   The endpoint of the shared file system that is accessed by the
    #   studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   The unique identifier for a file system.
    #   @return [String]
    #
    # @!attribute [rw] linux_mount_point
    #   The mount location for a shared file system on a Linux virtual
    #   workstation.
    #   @return [String]
    #
    # @!attribute [rw] share_name
    #   The name of the file share.
    #   @return [String]
    #
    # @!attribute [rw] windows_mount_drive
    #   The mount location for a shared file system on a Windows virtual
    #   workstation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/SharedFileSystemConfiguration AWS API Documentation
    #
    class SharedFileSystemConfiguration < Struct.new(
      :endpoint,
      :file_system_id,
      :linux_mount_point,
      :share_name,
      :windows_mount_drive)
      SENSITIVE = [:endpoint, :linux_mount_point, :share_name]
      include Aws::Structure
    end

    # @!attribute [rw] backup_id
    #   The ID of the backup.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The streaming session ID for the `StartStreamingSessionRequest`.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID for the StartStreamingSessionRequest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStreamingSessionRequest AWS API Documentation
    #
    class StartStreamingSessionRequest < Struct.new(
      :backup_id,
      :client_token,
      :session_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   A streaming session is a virtual workstation created using a
    #   particular launch profile.
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStreamingSessionResponse AWS API Documentation
    #
    class StartStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStudioSSOConfigurationRepairRequest AWS API Documentation
    #
    class StartStudioSSOConfigurationRepairRequest < Struct.new(
      :client_token,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   Information about a studio.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStudioSSOConfigurationRepairResponse AWS API Documentation
    #
    class StartStudioSSOConfigurationRepairResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The streaming session ID for the `StopStreamingSessionRequest`.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studioId for the StopStreamingSessionRequest.
    #   @return [String]
    #
    # @!attribute [rw] volume_retention_mode
    #   Adds additional instructions to a streaming session stop action to
    #   either retain the EBS volumes or delete the EBS volumes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StopStreamingSessionRequest AWS API Documentation
    #
    class StopStreamingSessionRequest < Struct.new(
      :client_token,
      :session_id,
      :studio_id,
      :volume_retention_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   A streaming session is a virtual workstation created using a
    #   particular launch profile.
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StopStreamingSessionResponse AWS API Documentation
    #
    class StopStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a streaming session.
    #
    # @!attribute [rw] automatic_termination_mode
    #   Indicates if a streaming session created from this launch profile
    #   should be terminated automatically or retained without termination
    #   after being in a `STOPPED` state.
    #
    #   * When `ACTIVATED`, the streaming session is scheduled for
    #     termination after being in the `STOPPED` state for the time
    #     specified in `maxStoppedSessionLengthInMinutes`.
    #
    #   * When `DEACTIVATED`, the streaming session can remain in the
    #     `STOPPED` state indefinitely.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`. When allowed, the default value for this parameter is
    #   `DEACTIVATED`.
    #   @return [String]
    #
    # @!attribute [rw] clipboard_mode
    #   Allows or deactivates the use of the system clipboard to copy and
    #   paste between the streaming session and streaming client.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_types
    #   The EC2 instance types that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_session_length_in_minutes
    #   The length of time, in minutes, that a streaming session can be
    #   active before it is stopped or terminated. After this point, Nimble
    #   Studio automatically terminates or stops the session. The default
    #   length of time is 690 minutes, and the maximum length of time is 30
    #   days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_stopped_session_length_in_minutes
    #   Integer that determines if you can start and stop your sessions and
    #   how long a session can stay in the `STOPPED` state. The default
    #   value is 0. The maximum value is 5760.
    #
    #   This field is allowed only when `sessionPersistenceMode` is
    #   `ACTIVATED` and `automaticTerminationMode` is `ACTIVATED`.
    #
    #   If the value is set to 0, your sessions can’t be `STOPPED`. If you
    #   then call `StopStreamingSession`, the session fails. If the time
    #   that a session stays in the `READY` state exceeds the
    #   `maxSessionLengthInMinutes` value, the session will automatically be
    #   terminated (instead of `STOPPED`).
    #
    #   If the value is set to a positive number, the session can be
    #   stopped. You can call `StopStreamingSession` to stop sessions in the
    #   `READY` state. If the time that a session stays in the `READY` state
    #   exceeds the `maxSessionLengthInMinutes` value, the session will
    #   automatically be stopped (instead of terminated).
    #   @return [Integer]
    #
    # @!attribute [rw] session_backup
    #   Information about the streaming session backup.
    #   @return [Types::StreamConfigurationSessionBackup]
    #
    # @!attribute [rw] session_persistence_mode
    #   Determine if a streaming session created from this launch profile
    #   can configure persistent storage. This means that
    #   `volumeConfiguration` and `automaticTerminationMode` are configured.
    #   @return [String]
    #
    # @!attribute [rw] session_storage
    #   The upload storage for a streaming session.
    #   @return [Types::StreamConfigurationSessionStorage]
    #
    # @!attribute [rw] streaming_image_ids
    #   The streaming images that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_configuration
    #   Custom volume configuration for the root volumes that are attached
    #   to streaming sessions.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`.
    #   @return [Types::VolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfiguration AWS API Documentation
    #
    class StreamConfiguration < Struct.new(
      :automatic_termination_mode,
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :max_stopped_session_length_in_minutes,
      :session_backup,
      :session_persistence_mode,
      :session_storage,
      :streaming_image_ids,
      :volume_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for streaming workstations created using this launch
    # profile.
    #
    # @!attribute [rw] automatic_termination_mode
    #   Indicates if a streaming session created from this launch profile
    #   should be terminated automatically or retained without termination
    #   after being in a `STOPPED` state.
    #
    #   * When `ACTIVATED`, the streaming session is scheduled for
    #     termination after being in the `STOPPED` state for the time
    #     specified in `maxStoppedSessionLengthInMinutes`.
    #
    #   * When `DEACTIVATED`, the streaming session can remain in the
    #     `STOPPED` state indefinitely.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`. When allowed, the default value for this parameter is
    #   `DEACTIVATED`.
    #   @return [String]
    #
    # @!attribute [rw] clipboard_mode
    #   Allows or deactivates the use of the system clipboard to copy and
    #   paste between the streaming session and streaming client.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_types
    #   The EC2 instance types that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_session_length_in_minutes
    #   The length of time, in minutes, that a streaming session can be
    #   active before it is stopped or terminated. After this point, Nimble
    #   Studio automatically terminates or stops the session. The default
    #   length of time is 690 minutes, and the maximum length of time is 30
    #   days.
    #   @return [Integer]
    #
    # @!attribute [rw] max_stopped_session_length_in_minutes
    #   Integer that determines if you can start and stop your sessions and
    #   how long a session can stay in the `STOPPED` state. The default
    #   value is 0. The maximum value is 5760.
    #
    #   This field is allowed only when `sessionPersistenceMode` is
    #   `ACTIVATED` and `automaticTerminationMode` is `ACTIVATED`.
    #
    #   If the value is set to 0, your sessions can’t be `STOPPED`. If you
    #   then call `StopStreamingSession`, the session fails. If the time
    #   that a session stays in the `READY` state exceeds the
    #   `maxSessionLengthInMinutes` value, the session will automatically be
    #   terminated (instead of `STOPPED`).
    #
    #   If the value is set to a positive number, the session can be
    #   stopped. You can call `StopStreamingSession` to stop sessions in the
    #   `READY` state. If the time that a session stays in the `READY` state
    #   exceeds the `maxSessionLengthInMinutes` value, the session will
    #   automatically be stopped (instead of terminated).
    #   @return [Integer]
    #
    # @!attribute [rw] session_backup
    #   Configures how streaming sessions are backed up when launched from
    #   this launch profile.
    #   @return [Types::StreamConfigurationSessionBackup]
    #
    # @!attribute [rw] session_persistence_mode
    #   Determine if a streaming session created from this launch profile
    #   can configure persistent storage. This means that
    #   `volumeConfiguration` and `automaticTerminationMode` are configured.
    #   @return [String]
    #
    # @!attribute [rw] session_storage
    #   The upload storage for a streaming workstation that is created using
    #   this launch profile.
    #   @return [Types::StreamConfigurationSessionStorage]
    #
    # @!attribute [rw] streaming_image_ids
    #   The streaming images that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_configuration
    #   Custom volume configuration for the root volumes that are attached
    #   to streaming sessions.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`.
    #   @return [Types::VolumeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfigurationCreate AWS API Documentation
    #
    class StreamConfigurationCreate < Struct.new(
      :automatic_termination_mode,
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :max_stopped_session_length_in_minutes,
      :session_backup,
      :session_persistence_mode,
      :session_storage,
      :streaming_image_ids,
      :volume_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures how streaming sessions are backed up when launched from
    # this launch profile.
    #
    # @!attribute [rw] max_backups_to_retain
    #   The maximum number of backups that each streaming session created
    #   from this launch profile can have.
    #   @return [Integer]
    #
    # @!attribute [rw] mode
    #   Specifies how artists sessions are backed up.
    #
    #   Configures backups for streaming sessions launched with this launch
    #   profile. The default value is `DEACTIVATED`, which means that
    #   backups are deactivated. To allow backups, set this value to
    #   `AUTOMATIC`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfigurationSessionBackup AWS API Documentation
    #
    class StreamConfigurationSessionBackup < Struct.new(
      :max_backups_to_retain,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a streaming session’s upload storage.
    #
    # @!attribute [rw] mode
    #   Allows artists to upload files to their workstations. The only valid
    #   option is `UPLOAD`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] root
    #   The configuration for the upload storage root of the streaming
    #   session.
    #   @return [Types::StreamingSessionStorageRoot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfigurationSessionStorage AWS API Documentation
    #
    class StreamConfigurationSessionStorage < Struct.new(
      :mode,
      :root)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a streaming image resource.
    #
    # Streaming images are used by studio users to select which operating
    # system and software they want to use in a Nimble Studio streaming
    # session.
    #
    # Amazon provides a number of streaming images that include popular
    # 3rd-party software.
    #
    # You can create your own streaming images using an Amazon EC2 machine
    # image that you create for this purpose. You can also include software
    # that your users require.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description of the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] ec2_image_id
    #   The ID of an EC2 machine image with which to create the streaming
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration.
    #   @return [Types::StreamingImageEncryptionConfiguration]
    #
    # @!attribute [rw] eula_ids
    #   The list of EULAs that must be accepted before a Streaming Session
    #   can be started using this streaming image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the streaming image, either the `studioId` that
    #   contains the streaming image, or `amazon` for images that are
    #   provided by Amazon Nimble Studio.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the streaming image, either Windows or Linux.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   The ID of the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingImage AWS API Documentation
    #
    class StreamingImage < Struct.new(
      :arn,
      :description,
      :ec2_image_id,
      :encryption_configuration,
      :eula_ids,
      :name,
      :owner,
      :platform,
      :state,
      :status_code,
      :status_message,
      :streaming_image_id,
      :tags)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Specifies how a streaming image is encrypted.
    #
    # @!attribute [rw] key_arn
    #   The ARN for a KMS key that is used to encrypt studio data.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of KMS key that is used to encrypt studio data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingImageEncryptionConfiguration AWS API Documentation
    #
    class StreamingImageEncryptionConfiguration < Struct.new(
      :key_arn,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A streaming session is a virtual workstation created using a
    # particular launch profile.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] automatic_termination_mode
    #   Indicates if a streaming session created from this launch profile
    #   should be terminated automatically or retained without termination
    #   after being in a `STOPPED` state.
    #
    #   * When `ACTIVATED`, the streaming session is scheduled for
    #     termination after being in the `STOPPED` state for the time
    #     specified in `maxStoppedSessionLengthInMinutes`.
    #
    #   * When `DEACTIVATED`, the streaming session can remain in the
    #     `STOPPED` state indefinitely.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`. When allowed, the default value for this parameter is
    #   `DEACTIVATED`.
    #   @return [String]
    #
    # @!attribute [rw] backup_mode
    #   Shows the current backup setting of the session.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user ID of the user that created the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_type
    #   The EC2 Instance type used for the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] max_backups_to_retain
    #   The maximum number of backups of a streaming session that you can
    #   have. When the maximum number of backups is reached, the oldest
    #   backup is deleted.
    #   @return [Integer]
    #
    # @!attribute [rw] owned_by
    #   The user ID of the user that owns the streaming session. The user
    #   that owns the session will be logging into the session and
    #   interacting with the virtual workstation.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID.
    #   @return [String]
    #
    # @!attribute [rw] session_persistence_mode
    #   Determine if a streaming session created from this launch profile
    #   can configure persistent storage. This means that
    #   `volumeConfiguration` and `automaticTerminationMode` are configured.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The time the session entered `START_IN_PROGRESS` state.
    #   @return [Time]
    #
    # @!attribute [rw] started_by
    #   The user ID of the user that started the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] started_from_backup_id
    #   The backup ID used to restore a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] stop_at
    #   The time the streaming session will automatically be stopped if the
    #   user doesn’t stop the session themselves.
    #   @return [Time]
    #
    # @!attribute [rw] stopped_at
    #   The time the session entered `STOP_IN_PROGRESS` state.
    #   @return [Time]
    #
    # @!attribute [rw] stopped_by
    #   The user ID of the user that stopped the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   The ID of the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] terminate_at
    #   The time the streaming session will automatically terminate if not
    #   terminated by the user.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user ID of the user that most recently updated the resource.
    #   @return [String]
    #
    # @!attribute [rw] volume_configuration
    #   Custom volume configuration for the root volumes that are attached
    #   to streaming sessions.
    #
    #   This parameter is only allowed when `sessionPersistenceMode` is
    #   `ACTIVATED`.
    #   @return [Types::VolumeConfiguration]
    #
    # @!attribute [rw] volume_retention_mode
    #   Determine if an EBS volume created from this streaming session will
    #   be backed up.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingSession AWS API Documentation
    #
    class StreamingSession < Struct.new(
      :arn,
      :automatic_termination_mode,
      :backup_mode,
      :created_at,
      :created_by,
      :ec2_instance_type,
      :launch_profile_id,
      :max_backups_to_retain,
      :owned_by,
      :session_id,
      :session_persistence_mode,
      :started_at,
      :started_by,
      :started_from_backup_id,
      :state,
      :status_code,
      :status_message,
      :stop_at,
      :stopped_at,
      :stopped_by,
      :streaming_image_id,
      :tags,
      :terminate_at,
      :updated_at,
      :updated_by,
      :volume_configuration,
      :volume_retention_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the streaming session backup.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] backup_id
    #   The ID of the backup.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile which allowed the backups for the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   The user ID of the user that owns the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The streaming session ID for the `StreamingSessionBackup`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The streaming session state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the streaming session backup.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingSessionBackup AWS API Documentation
    #
    class StreamingSessionBackup < Struct.new(
      :arn,
      :backup_id,
      :created_at,
      :launch_profile_id,
      :owned_by,
      :session_id,
      :state,
      :status_code,
      :status_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The upload storage root location (folder) on streaming workstations
    # where files are uploaded.
    #
    # @!attribute [rw] linux
    #   The folder path in Linux workstations where files are uploaded.
    #   @return [String]
    #
    # @!attribute [rw] windows
    #   The folder path in Windows workstations where files are uploaded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingSessionStorageRoot AWS API Documentation
    #
    class StreamingSessionStorageRoot < Struct.new(
      :linux,
      :windows)
      SENSITIVE = [:linux, :windows]
      include Aws::Structure
    end

    # A stream is an active connection to a streaming session, enabling a
    # studio user to control the streaming session using a compatible
    # client. Streaming session streams are compatible with the NICE DCV web
    # client, included in the Nimble Studio portal, or the NICE DCV desktop
    # client.
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user ID of the user that created the streaming session stream.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The ISO timestamp in seconds for when the resource expires.
    #   @return [Time]
    #
    # @!attribute [rw] owned_by
    #   The user ID of the user that owns the streaming session. The user
    #   that owns the session will be logging into the session and
    #   interacting with the virtual workstation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The streaming session stream status code.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The stream ID.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL to connect to this stream using the DCV client.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingSessionStream AWS API Documentation
    #
    class StreamingSessionStream < Struct.new(
      :created_at,
      :created_by,
      :expires_at,
      :owned_by,
      :state,
      :status_code,
      :stream_id,
      :url)
      SENSITIVE = [:url]
      include Aws::Structure
    end

    # Represents a studio resource.
    #
    # A studio is the core resource used with Nimble Studio. You must create
    # a studio first, before any other resource type can be created. All
    # other resources you create and manage in Nimble Studio are contained
    # within a studio.
    #
    # When creating a studio, you must provides two IAM roles for use with
    # the Nimble Studio portal. These roles are assumed by your users when
    # they log in to the Nimble Studio portal via IAM Identity Center and
    # your identity source.
    #
    # The user role must have the `AmazonNimbleStudio-StudioUser` managed
    # policy attached for the portal to function properly.
    #
    # The admin role must have the `AmazonNimbleStudio-StudioAdmin` managed
    # policy attached for the portal to function properly.
    #
    # Your studio roles must trust the `identity.nimble.amazonaws.com`
    # service principal to function properly.
    #
    # @!attribute [rw] admin_role_arn
    #   The IAM role that studio admins assume when logging in to the Nimble
    #   Studio portal.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the studio.
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   The Amazon Web Services Region where the studio resource is located.
    #   @return [String]
    #
    # @!attribute [rw] sso_client_id
    #   The IAM Identity Center application client ID used to integrate with
    #   IAM Identity Center. This ID allows IAM Identity Center users to log
    #   in to Nimble Studio portal.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the studio resource.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Status codes that provide additional detail on the studio state.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Additional detail on the studio state.
    #   @return [String]
    #
    # @!attribute [rw] studio_encryption_configuration
    #   Configuration of the encryption method that is used for the studio.
    #   @return [Types::StudioEncryptionConfiguration]
    #
    # @!attribute [rw] studio_id
    #   The unique identifier for a studio resource. In Nimble Studio, all
    #   other resources are contained in a studio resource.
    #   @return [String]
    #
    # @!attribute [rw] studio_name
    #   The name of the studio, as included in the URL when accessing it in
    #   the Nimble Studio portal.
    #   @return [String]
    #
    # @!attribute [rw] studio_url
    #   The address of the web page for the studio.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] user_role_arn
    #   The IAM role that studio users assume when logging in to the Nimble
    #   Studio portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/Studio AWS API Documentation
    #
    class Studio < Struct.new(
      :admin_role_arn,
      :arn,
      :created_at,
      :display_name,
      :home_region,
      :sso_client_id,
      :state,
      :status_code,
      :status_message,
      :studio_encryption_configuration,
      :studio_id,
      :studio_name,
      :studio_url,
      :tags,
      :updated_at,
      :user_role_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # A studio component represents a network resource to be used by a
    # studio's users and workflows. A typical studio contains studio
    # components for each of the following: render farm, Active Directory,
    # licensing, and file system.
    #
    # Access to a studio component is managed by specifying security groups
    # for the resource, as well as its endpoint.
    #
    # A studio component also has a set of initialization scripts that are
    # returned by `GetLaunchProfileInitialization`. These initialization
    # scripts run on streaming sessions when they start. They provide users
    # with flexibility in controlling how the studio resources are
    # configured on a streaming session.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that is assigned to a studio resource
    #   and uniquely identifies it. ARNs are unique across all Regions.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user ID of the user that created the studio component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A human-readable description for the studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   Initialization scripts for studio components.
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   A friendly name for the studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while
    #   the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   Parameters for the studio component scripts.
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the studio component.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The unique identifier for a studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   The specific subtype of a studio component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The type of the studio component.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user ID of the user that most recently updated the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioComponent AWS API Documentation
    #
    class StudioComponent < Struct.new(
      :arn,
      :configuration,
      :created_at,
      :created_by,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :runtime_role_arn,
      :script_parameters,
      :secure_initialization_role_arn,
      :state,
      :status_code,
      :status_message,
      :studio_component_id,
      :subtype,
      :tags,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :name, :script_parameters]
      include Aws::Structure
    end

    # The configuration of the studio component, based on component type.
    #
    # @note StudioComponentConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StudioComponentConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StudioComponentConfiguration corresponding to the set member.
    #
    # @!attribute [rw] active_directory_configuration
    #   The configuration for a Directory Service for Microsoft Active
    #   Directory studio resource.
    #   @return [Types::ActiveDirectoryConfiguration]
    #
    # @!attribute [rw] compute_farm_configuration
    #   The configuration for a render farm that is associated with a studio
    #   resource.
    #   @return [Types::ComputeFarmConfiguration]
    #
    # @!attribute [rw] license_service_configuration
    #   The configuration for a license service that is associated with a
    #   studio resource.
    #   @return [Types::LicenseServiceConfiguration]
    #
    # @!attribute [rw] shared_file_system_configuration
    #   The configuration for a shared file storage system that is
    #   associated with a studio resource.
    #   @return [Types::SharedFileSystemConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioComponentConfiguration AWS API Documentation
    #
    class StudioComponentConfiguration < Struct.new(
      :active_directory_configuration,
      :compute_farm_configuration,
      :license_service_configuration,
      :shared_file_system_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ActiveDirectoryConfiguration < StudioComponentConfiguration; end
      class ComputeFarmConfiguration < StudioComponentConfiguration; end
      class LicenseServiceConfiguration < StudioComponentConfiguration; end
      class SharedFileSystemConfiguration < StudioComponentConfiguration; end
      class Unknown < StudioComponentConfiguration; end
    end

    # Initialization scripts for studio components.
    #
    # @!attribute [rw] launch_profile_protocol_version
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the initialization script, either Windows or Linux.
    #   @return [String]
    #
    # @!attribute [rw] run_context
    #   The method to use when running the initialization script.
    #   @return [String]
    #
    # @!attribute [rw] script
    #   The initialization script.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioComponentInitializationScript AWS API Documentation
    #
    class StudioComponentInitializationScript < Struct.new(
      :launch_profile_protocol_version,
      :platform,
      :run_context,
      :script)
      SENSITIVE = [:script]
      include Aws::Structure
    end

    # The studio component's summary.
    #
    # @!attribute [rw] created_at
    #   The ISO timestamp in seconds for when the resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user ID of the user that created the studio component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the studio component.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The unique identifier for a studio component resource.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   The specific subtype of a studio component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the studio component.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The ISO timestamp in seconds for when the resource was updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user ID of the user that most recently updated the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioComponentSummary AWS API Documentation
    #
    class StudioComponentSummary < Struct.new(
      :created_at,
      :created_by,
      :description,
      :name,
      :studio_component_id,
      :subtype,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # Configuration of the encryption method that is used for the studio.
    #
    # @!attribute [rw] key_arn
    #   The ARN for a KMS key that is used to encrypt studio data.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of KMS key that is used to encrypt studio data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioEncryptionConfiguration AWS API Documentation
    #
    class StudioEncryptionConfiguration < Struct.new(
      :key_arn,
      :key_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A studio member is an association of a user from your studio identity
    # source to elevated permissions that they are granted in the studio.
    #
    # When you add a user to your studio using the Nimble Studio console,
    # they are given access to the studio's IAM Identity Center application
    # and are given access to log in to the Nimble Studio portal. These
    # users have the permissions provided by the studio's user IAM role and
    # do not appear in the studio membership collection. Only studio admins
    # appear in studio membership.
    #
    # When you add a user to studio membership with the ADMIN persona, upon
    # logging in to the Nimble Studio portal, they are granted permissions
    # specified by the Studio's Admin IAM role.
    #
    # @!attribute [rw] identity_store_id
    #   The ID of the identity store.
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   The persona.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID.
    #   @return [String]
    #
    # @!attribute [rw] sid
    #   The Active Directory Security Identifier for this user, if
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioMembership AWS API Documentation
    #
    class StudioMembership < Struct.new(
      :identity_store_id,
      :persona,
      :principal_id,
      :sid)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to add tags
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of labels, in the form of key-value pairs, that apply
    #   to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request throughput limit was exceeded.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Identifies the Amazon Resource Name(ARN) key from which you are
    #   removing tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   One or more tag keys. Specify only the tag keys, not the tag values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   The persona.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID. This currently supports a IAM Identity Center
    #   UserId.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileMemberRequest AWS API Documentation
    #
    class UpdateLaunchProfileMemberRequest < Struct.new(
      :client_token,
      :launch_profile_id,
      :persona,
      :principal_id,
      :studio_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   The updated member.
    #   @return [Types::LaunchProfileMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileMemberResponse AWS API Documentation
    #
    class UpdateLaunchProfileMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   The ID of the launch profile used to control access from the
    #   streaming session.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name for the launch profile.
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   A configuration for a streaming session.
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   Unique identifiers for a collection of studio components that can be
    #   used with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileRequest AWS API Documentation
    #
    class UpdateLaunchProfileRequest < Struct.new(
      :client_token,
      :description,
      :launch_profile_id,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids,
      :studio_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   The launch profile.
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileResponse AWS API Documentation
    #
    class UpdateLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the streaming image.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   The streaming image ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImageRequest AWS API Documentation
    #
    class UpdateStreamingImageRequest < Struct.new(
      :client_token,
      :description,
      :name,
      :streaming_image_id,
      :studio_id)
      SENSITIVE = [:description, :name]
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   Represents a streaming image resource.
    #
    #   Streaming images are used by studio users to select which operating
    #   system and software they want to use in a Nimble Studio streaming
    #   session.
    #
    #   Amazon provides a number of streaming images that include popular
    #   3rd-party software.
    #
    #   You can create your own streaming images using an Amazon EC2 machine
    #   image that you create for this purpose. You can also include
    #   software that your users require.
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImageResponse AWS API Documentation
    #
    class UpdateStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   The EC2 security groups that control access to the studio component.
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   Initialization scripts for studio components.
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   The name for the studio component.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   An IAM role attached to a Studio Component that gives the studio
    #   component access to Amazon Web Services resources at anytime while
    #   the instance is running.
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   Parameters for the studio component scripts.
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] secure_initialization_role_arn
    #   An IAM role attached to Studio Component when the system
    #   initialization script runs which give the studio component access to
    #   Amazon Web Services resources when the system initialization script
    #   runs.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   The studio component ID.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   The specific subtype of a studio component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the studio component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioComponentRequest AWS API Documentation
    #
    class UpdateStudioComponentRequest < Struct.new(
      :client_token,
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :runtime_role_arn,
      :script_parameters,
      :secure_initialization_role_arn,
      :studio_component_id,
      :studio_id,
      :subtype,
      :type)
      SENSITIVE = [:description, :name, :script_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   Information about the studio component.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioComponentResponse AWS API Documentation
    #
    class UpdateStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_role_arn
    #   The IAM role that Studio Admins will assume when logging in to the
    #   Nimble Studio portal.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If you don’t specify a client token, the
    #   Amazon Web Services SDK automatically generates a client token and
    #   uses it for the request to ensure idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the studio.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   The studio ID.
    #   @return [String]
    #
    # @!attribute [rw] user_role_arn
    #   The IAM role that Studio Users will assume when logging in to the
    #   Nimble Studio portal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioRequest AWS API Documentation
    #
    class UpdateStudioRequest < Struct.new(
      :admin_role_arn,
      :client_token,
      :display_name,
      :studio_id,
      :user_role_arn)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   Information about a studio.
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioResponse AWS API Documentation
    #
    class UpdateStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters in the request is invalid.
    #
    # @!attribute [rw] code
    #   A more specific error code.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The exception context.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   A human-readable description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The launch profile validation result.
    #
    # @!attribute [rw] state
    #   The current state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code. This will contain the failure reason if the state
    #   is `VALIDATION_FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for the validation result.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the validation result.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ValidationResult AWS API Documentation
    #
    class ValidationResult < Struct.new(
      :state,
      :status_code,
      :status_message,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom volume configuration for the root volumes that are attached to
    # streaming sessions.
    #
    # This parameter is only allowed when `sessionPersistenceMode` is
    # `ACTIVATED`.
    #
    # @!attribute [rw] iops
    #   The number of I/O operations per second for the root volume that is
    #   attached to streaming session.
    #   @return [Integer]
    #
    # @!attribute [rw] size
    #   The size of the root volume that is attached to the streaming
    #   session. The root volume size is measured in GiBs.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The throughput to provision for the root volume that is attached to
    #   the streaming session. The throughput is measured in MiB/s.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/VolumeConfiguration AWS API Documentation
    #
    class VolumeConfiguration < Struct.new(
      :iops,
      :size,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
