# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NimbleStudio
  module Types

    # @!attribute [rw] eula_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulasInput AWS API Documentation
    #
    class AcceptEulasInput < Struct.new(
      :eula_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_acceptances
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulasOutput AWS API Documentation
    #
    class AcceptEulasOutput < Struct.new(
      :eula_acceptances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AcceptEulasRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         eula_ids: ["__string"],
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] eula_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/AcceptEulasResponse AWS API Documentation
    #
    class AcceptEulasResponse < Struct.new(
      :eula_acceptances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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
    # @note When making an API call, you may pass ActiveDirectoryComputerAttribute
    #   data as a hash:
    #
    #       {
    #         name: "ActiveDirectoryComputerAttributeName",
    #         value: "ActiveDirectoryComputerAttributeValue",
    #       }
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

    # The configuration for a Microsoft Active Directory (Microsoft AD)
    # studio resource.
    #
    # @note When making an API call, you may pass ActiveDirectoryConfiguration
    #   data as a hash:
    #
    #       {
    #         computer_attributes: [
    #           {
    #             name: "ActiveDirectoryComputerAttributeName",
    #             value: "ActiveDirectoryComputerAttributeValue",
    #           },
    #         ],
    #         directory_id: "DirectoryId",
    #         organizational_unit_distinguished_name: "ActiveDirectoryOrganizationalUnitDistinguishedName",
    #       }
    #
    # @!attribute [rw] computer_attributes
    #   A collection of LDAP attributes to apply to Active Directory
    #   computer accounts that are created for streaming sessions.
    #   @return [Array<Types::ActiveDirectoryComputerAttribute>]
    #
    # @!attribute [rw] directory_id
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully-qualified distinguished name of the organizational unit to
    #   place the computer account in.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ActiveDirectoryConfiguration AWS API Documentation
    #
    class ActiveDirectoryConfiguration < Struct.new(
      :computer_attributes,
      :directory_id,
      :organizational_unit_distinguished_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a render farm that is associated with a studio
    # resource.
    #
    # @note When making an API call, you may pass ComputeFarmConfiguration
    #   data as a hash:
    #
    #       {
    #         active_directory_user: "__string",
    #         endpoint: "__string",
    #       }
    #
    # @!attribute [rw] active_directory_user
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ComputeFarmConfiguration AWS API Documentation
    #
    class ComputeFarmConfiguration < Struct.new(
      :active_directory_user,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfileInput AWS API Documentation
    #
    class CreateLaunchProfileInput < Struct.new(
      :description,
      :ec2_subnet_ids,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfileOutput AWS API Documentation
    #
    class CreateLaunchProfileOutput < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLaunchProfileRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         description: "LaunchProfileDescription",
    #         ec2_subnet_ids: ["EC2SubnetId"], # required
    #         launch_profile_protocol_versions: ["LaunchProfileProtocolVersion"], # required
    #         name: "LaunchProfileName", # required
    #         stream_configuration: { # required
    #           clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #           ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #           max_session_length_in_minutes: 1,
    #           streaming_image_ids: ["StreamingImageId"], # required
    #         },
    #         studio_component_ids: ["__string"], # required
    #         studio_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] tags
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateLaunchProfileResponse AWS API Documentation
    #
    class CreateLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_image_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImageInput AWS API Documentation
    #
    class CreateStreamingImageInput < Struct.new(
      :description,
      :ec2_image_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImageOutput AWS API Documentation
    #
    class CreateStreamingImageOutput < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamingImageRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         description: "StreamingImageDescription",
    #         ec2_image_id: "EC2ImageId", # required
    #         name: "StreamingImageName", # required
    #         studio_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_image_id
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] tags
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingImageResponse AWS API Documentation
    #
    class CreateStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ec2_instance_type
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionInput AWS API Documentation
    #
    class CreateStreamingSessionInput < Struct.new(
      :ec2_instance_type,
      :launch_profile_id,
      :owned_by,
      :streaming_image_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionOutput AWS API Documentation
    #
    class CreateStreamingSessionOutput < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamingSessionRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         ec2_instance_type: "g4dn.xlarge", # accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #         launch_profile_id: "__string",
    #         owned_by: "__string",
    #         streaming_image_id: "StreamingImageId",
    #         studio_id: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_type
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] tags
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
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionResponse AWS API Documentation
    #
    class CreateStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] expiration_in_seconds
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStreamInput AWS API Documentation
    #
    class CreateStreamingSessionStreamInput < Struct.new(
      :expiration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStreamOutput AWS API Documentation
    #
    class CreateStreamingSessionStreamOutput < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamingSessionStreamRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         expiration_in_seconds: 1,
    #         session_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] expiration_in_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStreamingSessionStreamResponse AWS API Documentation
    #
    class CreateStreamingSessionStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioComponentInput AWS API Documentation
    #
    class CreateStudioComponentInput < Struct.new(
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :script_parameters,
      :subtype,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioComponentOutput AWS API Documentation
    #
    class CreateStudioComponentOutput < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStudioComponentRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         configuration: {
    #           active_directory_configuration: {
    #             computer_attributes: [
    #               {
    #                 name: "ActiveDirectoryComputerAttributeName",
    #                 value: "ActiveDirectoryComputerAttributeValue",
    #               },
    #             ],
    #             directory_id: "DirectoryId",
    #             organizational_unit_distinguished_name: "ActiveDirectoryOrganizationalUnitDistinguishedName",
    #           },
    #           compute_farm_configuration: {
    #             active_directory_user: "__string",
    #             endpoint: "__string",
    #           },
    #           license_service_configuration: {
    #             endpoint: "__string",
    #           },
    #           shared_file_system_configuration: {
    #             endpoint: "__string",
    #             file_system_id: "__string",
    #             linux_mount_point: "LinuxMountPoint",
    #             share_name: "__string",
    #             windows_mount_drive: "WindowsMountDrive",
    #           },
    #         },
    #         description: "StudioComponentDescription",
    #         ec2_security_group_ids: ["SecurityGroupId"],
    #         initialization_scripts: [
    #           {
    #             launch_profile_protocol_version: "LaunchProfileProtocolVersion",
    #             platform: "LINUX", # accepts LINUX, WINDOWS
    #             run_context: "SYSTEM_INITIALIZATION", # accepts SYSTEM_INITIALIZATION, USER_INITIALIZATION
    #             script: "StudioComponentInitializationScriptContent",
    #           },
    #         ],
    #         name: "StudioComponentName", # required
    #         script_parameters: [
    #           {
    #             key: "ScriptParameterKey",
    #             value: "ScriptParameterValue",
    #           },
    #         ],
    #         studio_id: "__string", # required
    #         subtype: "AWS_MANAGED_MICROSOFT_AD", # accepts AWS_MANAGED_MICROSOFT_AD, AMAZON_FSX_FOR_WINDOWS, AMAZON_FSX_FOR_LUSTRE, CUSTOM
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         type: "ACTIVE_DIRECTORY", # required, accepts ACTIVE_DIRECTORY, SHARED_FILE_SYSTEM, COMPUTE_FARM, LICENSE_SERVICE, CUSTOM
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
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
      :script_parameters,
      :studio_id,
      :subtype,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
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
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] studio_encryption_configuration
    #   Configuration of the encryption method that is used for the studio.
    #   @return [Types::StudioEncryptionConfiguration]
    #
    # @!attribute [rw] studio_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioInput AWS API Documentation
    #
    class CreateStudioInput < Struct.new(
      :admin_role_arn,
      :display_name,
      :studio_encryption_configuration,
      :studio_name,
      :tags,
      :user_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioOutput AWS API Documentation
    #
    class CreateStudioOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStudioRequest
    #   data as a hash:
    #
    #       {
    #         admin_role_arn: "__string", # required
    #         client_token: "ClientToken",
    #         display_name: "StudioDisplayName", # required
    #         studio_encryption_configuration: {
    #           key_arn: "StudioEncryptionConfigurationKeyArn",
    #           key_type: "AWS_OWNED_KEY", # required, accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KEY
    #         },
    #         studio_name: "StudioName", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #         user_role_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] admin_role_arn
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] studio_encryption_configuration
    #   Configuration of the encryption method that is used for the studio.
    #   @return [Types::StudioEncryptionConfiguration]
    #
    # @!attribute [rw] studio_name
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] user_role_arn
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/CreateStudioResponse AWS API Documentation
    #
    class CreateStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileMemberOutput AWS API Documentation
    #
    class DeleteLaunchProfileMemberOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLaunchProfileMemberRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         launch_profile_id: "__string", # required
    #         principal_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileOutput AWS API Documentation
    #
    class DeleteLaunchProfileOutput < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLaunchProfileRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         launch_profile_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteLaunchProfileResponse AWS API Documentation
    #
    class DeleteLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingImageOutput AWS API Documentation
    #
    class DeleteStreamingImageOutput < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStreamingImageRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         streaming_image_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingImageResponse AWS API Documentation
    #
    class DeleteStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingSessionOutput AWS API Documentation
    #
    class DeleteStreamingSessionOutput < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStreamingSessionRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         session_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStreamingSessionResponse AWS API Documentation
    #
    class DeleteStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioComponentOutput AWS API Documentation
    #
    class DeleteStudioComponentOutput < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStudioComponentRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         studio_component_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioComponentResponse AWS API Documentation
    #
    class DeleteStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioMemberOutput AWS API Documentation
    #
    class DeleteStudioMemberOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteStudioMemberRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         principal_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioOutput AWS API Documentation
    #
    class DeleteStudioOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStudioRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/DeleteStudioResponse AWS API Documentation
    #
    class DeleteStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/Empty AWS API Documentation
    #
    class Empty < Aws::EmptyStructure; end

    # Represents a EULA resource.
    #
    # @!attribute [rw] content
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] eula_id
    #   Represents a EULA resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] updated_at
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

    # @!attribute [rw] accepted_at
    #   @return [Time]
    #
    # @!attribute [rw] accepted_by
    #   @return [String]
    #
    # @!attribute [rw] acceptee_id
    #   @return [String]
    #
    # @!attribute [rw] eula_acceptance_id
    #   The EULA acceptance ID.
    #   @return [String]
    #
    # @!attribute [rw] eula_id
    #   Represents a EULA resource.
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

    # @!attribute [rw] eula
    #   Represents a EULA resource.
    #   @return [Types::Eula]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetEulaOutput AWS API Documentation
    #
    class GetEulaOutput < Struct.new(
      :eula)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEulaRequest
    #   data as a hash:
    #
    #       {
    #         eula_id: "__string", # required
    #       }
    #
    # @!attribute [rw] eula_id
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
    #   Represents a EULA resource.
    #   @return [Types::Eula]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetEulaResponse AWS API Documentation
    #
    class GetEulaResponse < Struct.new(
      :eula)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @!attribute [rw] streaming_images
    #   @return [Array<Types::StreamingImage>]
    #
    # @!attribute [rw] studio_component_summaries
    #   @return [Array<Types::StudioComponentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileDetailsOutput AWS API Documentation
    #
    class GetLaunchProfileDetailsOutput < Struct.new(
      :launch_profile,
      :streaming_images,
      :studio_component_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchProfileDetailsRequest
    #   data as a hash:
    #
    #       {
    #         launch_profile_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfile]
    #
    # @!attribute [rw] streaming_images
    #   @return [Array<Types::StreamingImage>]
    #
    # @!attribute [rw] studio_component_summaries
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

    # @!attribute [rw] launch_profile_initialization
    #   @return [Types::LaunchProfileInitialization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileInitializationOutput AWS API Documentation
    #
    class GetLaunchProfileInitializationOutput < Struct.new(
      :launch_profile_initialization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchProfileInitializationRequest
    #   data as a hash:
    #
    #       {
    #         launch_profile_id: "__string", # required
    #         launch_profile_protocol_versions: ["__string"], # required
    #         launch_purpose: "__string", # required
    #         platform: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_purpose
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfileInitialization]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileInitializationResponse AWS API Documentation
    #
    class GetLaunchProfileInitializationResponse < Struct.new(
      :launch_profile_initialization)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   @return [Types::LaunchProfileMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileMemberOutput AWS API Documentation
    #
    class GetLaunchProfileMemberOutput < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchProfileMemberRequest
    #   data as a hash:
    #
    #       {
    #         launch_profile_id: "__string", # required
    #         principal_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfileMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileMemberResponse AWS API Documentation
    #
    class GetLaunchProfileMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileOutput AWS API Documentation
    #
    class GetLaunchProfileOutput < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLaunchProfileRequest
    #   data as a hash:
    #
    #       {
    #         launch_profile_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetLaunchProfileResponse AWS API Documentation
    #
    class GetLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingImageOutput AWS API Documentation
    #
    class GetStreamingImageOutput < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStreamingImageRequest
    #   data as a hash:
    #
    #       {
    #         streaming_image_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingImageResponse AWS API Documentation
    #
    class GetStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionOutput AWS API Documentation
    #
    class GetStreamingSessionOutput < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStreamingSessionRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingSession]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionResponse AWS API Documentation
    #
    class GetStreamingSessionResponse < Struct.new(
      :session)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stream
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStreamOutput AWS API Documentation
    #
    class GetStreamingSessionStreamOutput < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStreamingSessionStreamRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "__string", # required
    #         stream_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StreamingSessionStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStreamingSessionStreamResponse AWS API Documentation
    #
    class GetStreamingSessionStreamResponse < Struct.new(
      :stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioComponentOutput AWS API Documentation
    #
    class GetStudioComponentOutput < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStudioComponentRequest
    #   data as a hash:
    #
    #       {
    #         studio_component_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioComponentResponse AWS API Documentation
    #
    class GetStudioComponentResponse < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member
    #   @return [Types::StudioMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMemberOutput AWS API Documentation
    #
    class GetStudioMemberOutput < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStudioMemberRequest
    #   data as a hash:
    #
    #       {
    #         principal_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::StudioMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioMemberResponse AWS API Documentation
    #
    class GetStudioMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioOutput AWS API Documentation
    #
    class GetStudioOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetStudioRequest
    #   data as a hash:
    #
    #       {
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/GetStudioResponse AWS API Documentation
    #
    class GetStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_subnet_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   A configuration for a streaming session.
    #   @return [Types::StreamConfiguration]
    #
    # @!attribute [rw] studio_component_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   @return [String]
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
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] active_directory
    #   @return [Types::LaunchProfileInitializationActiveDirectory]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_profile_id
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
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   @return [String]
    #
    # @!attribute [rw] system_initialization_scripts
    #   @return [Array<Types::LaunchProfileInitializationScript>]
    #
    # @!attribute [rw] user_initialization_scripts
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] computer_attributes
    #   A collection of LDAP attributes to apply to Active Directory
    #   computer accounts that are created for streaming sessions.
    #   @return [Array<Types::ActiveDirectoryComputerAttribute>]
    #
    # @!attribute [rw] directory_id
    #   @return [String]
    #
    # @!attribute [rw] directory_name
    #   @return [String]
    #
    # @!attribute [rw] dns_ip_addresses
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The fully-qualified distinguished name of the organizational unit to
    #   place the computer account in.
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] studio_component_name
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] script
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] studio_component_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileInitializationScript AWS API Documentation
    #
    class LaunchProfileInitializationScript < Struct.new(
      :script,
      :studio_component_id,
      :studio_component_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LaunchProfileMembership AWS API Documentation
    #
    class LaunchProfileMembership < Struct.new(
      :identity_store_id,
      :persona,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a license service that is associated with a
    # studio resource.
    #
    # @note When making an API call, you may pass LicenseServiceConfiguration
    #   data as a hash:
    #
    #       {
    #         endpoint: "__string",
    #       }
    #
    # @!attribute [rw] endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/LicenseServiceConfiguration AWS API Documentation
    #
    class LicenseServiceConfiguration < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] eula_acceptances
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulaAcceptancesOutput AWS API Documentation
    #
    class ListEulaAcceptancesOutput < Struct.new(
      :eula_acceptances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEulaAcceptancesRequest
    #   data as a hash:
    #
    #       {
    #         eula_ids: ["__string"],
    #         next_token: "__string",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] eula_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Array<Types::EulaAcceptance>]
    #
    # @!attribute [rw] next_token
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

    # @!attribute [rw] eulas
    #   @return [Array<Types::Eula>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListEulasOutput AWS API Documentation
    #
    class ListEulasOutput < Struct.new(
      :eulas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEulasRequest
    #   data as a hash:
    #
    #       {
    #         eula_ids: ["__string"],
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] eula_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
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
    #   @return [Array<Types::Eula>]
    #
    # @!attribute [rw] next_token
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

    # @!attribute [rw] members
    #   @return [Array<Types::LaunchProfileMembership>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfileMembersOutput AWS API Documentation
    #
    class ListLaunchProfileMembersOutput < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLaunchProfileMembersRequest
    #   data as a hash:
    #
    #       {
    #         launch_profile_id: "__string", # required
    #         max_results: 1,
    #         next_token: "__string",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Array<Types::LaunchProfileMembership>]
    #
    # @!attribute [rw] next_token
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

    # @!attribute [rw] launch_profiles
    #   @return [Array<Types::LaunchProfile>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListLaunchProfilesOutput AWS API Documentation
    #
    class ListLaunchProfilesOutput < Struct.new(
      :launch_profiles,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLaunchProfilesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         principal_id: "__string",
    #         states: ["__string"],
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] states
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Array<Types::LaunchProfile>]
    #
    # @!attribute [rw] next_token
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
    #   @return [String]
    #
    # @!attribute [rw] streaming_images
    #   @return [Array<Types::StreamingImage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingImagesOutput AWS API Documentation
    #
    class ListStreamingImagesOutput < Struct.new(
      :next_token,
      :streaming_images)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamingImagesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #         owner: "__string",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [String]
    #
    # @!attribute [rw] streaming_images
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
    #   @return [String]
    #
    # @!attribute [rw] sessions
    #   @return [Array<Types::StreamingSession>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStreamingSessionsOutput AWS API Documentation
    #
    class ListStreamingSessionsOutput < Struct.new(
      :next_token,
      :sessions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStreamingSessionsRequest
    #   data as a hash:
    #
    #       {
    #         created_by: "__string",
    #         next_token: "__string",
    #         owned_by: "__string",
    #         session_ids: "__string",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   @return [String]
    #
    # @!attribute [rw] session_ids
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [String]
    #
    # @!attribute [rw] sessions
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

    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] studio_components
    #   @return [Array<Types::StudioComponent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioComponentsOutput AWS API Documentation
    #
    class ListStudioComponentsOutput < Struct.new(
      :next_token,
      :studio_components)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStudioComponentsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         states: ["__string"],
    #         studio_id: "__string", # required
    #         types: ["__string"],
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] states
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] types
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
    #   @return [String]
    #
    # @!attribute [rw] studio_components
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

    # @!attribute [rw] members
    #   @return [Array<Types::StudioMembership>]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudioMembersOutput AWS API Documentation
    #
    class ListStudioMembersOutput < Struct.new(
      :members,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStudioMembersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Array<Types::StudioMembership>]
    #
    # @!attribute [rw] next_token
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
    #   @return [String]
    #
    # @!attribute [rw] studios
    #   @return [Array<Types::Studio>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListStudiosOutput AWS API Documentation
    #
    class ListStudiosOutput < Struct.new(
      :next_token,
      :studios)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListStudiosRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] next_token
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
    #   @return [String]
    #
    # @!attribute [rw] studios
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
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
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/ListTagsOutput AWS API Documentation
    #
    class ListTagsOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass NewLaunchProfileMember
    #   data as a hash:
    #
    #       {
    #         persona: "USER", # required, accepts USER
    #         principal_id: "__string", # required
    #       }
    #
    # @!attribute [rw] persona
    #   @return [String]
    #
    # @!attribute [rw] principal_id
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

    # @note When making an API call, you may pass NewStudioMember
    #   data as a hash:
    #
    #       {
    #         persona: "ADMINISTRATOR", # required, accepts ADMINISTRATOR
    #         principal_id: "__string", # required
    #       }
    #
    # @!attribute [rw] persona
    #   @return [String]
    #
    # @!attribute [rw] principal_id
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

    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] members
    #   @return [Array<Types::NewLaunchProfileMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutLaunchProfileMembersInput AWS API Documentation
    #
    class PutLaunchProfileMembersInput < Struct.new(
      :identity_store_id,
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutLaunchProfileMembersRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         identity_store_id: "__string", # required
    #         launch_profile_id: "__string", # required
    #         members: [ # required
    #           {
    #             persona: "USER", # required, accepts USER
    #             principal_id: "__string", # required
    #           },
    #         ],
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] members
    #   @return [Array<Types::NewLaunchProfileMember>]
    #
    # @!attribute [rw] studio_id
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

    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] members
    #   @return [Array<Types::NewStudioMember>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutStudioMembersInput AWS API Documentation
    #
    class PutStudioMembersInput < Struct.new(
      :identity_store_id,
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/PutStudioMembersOutput AWS API Documentation
    #
    class PutStudioMembersOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutStudioMembersRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         identity_store_id: "__string", # required
    #         members: [ # required
    #           {
    #             persona: "ADMINISTRATOR", # required, accepts ADMINISTRATOR
    #             principal_id: "__string", # required
    #           },
    #         ],
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] members
    #   @return [Array<Types::NewStudioMember>]
    #
    # @!attribute [rw] studio_id
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

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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

    # A parameter for a studio component script, in the form of a key:value
    # pair.
    #
    # @note When making an API call, you may pass ScriptParameterKeyValue
    #   data as a hash:
    #
    #       {
    #         key: "ScriptParameterKey",
    #         value: "ScriptParameterValue",
    #       }
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

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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
    # @note When making an API call, you may pass SharedFileSystemConfiguration
    #   data as a hash:
    #
    #       {
    #         endpoint: "__string",
    #         file_system_id: "__string",
    #         linux_mount_point: "LinuxMountPoint",
    #         share_name: "__string",
    #         windows_mount_drive: "WindowsMountDrive",
    #       }
    #
    # @!attribute [rw] endpoint
    #   @return [String]
    #
    # @!attribute [rw] file_system_id
    #   @return [String]
    #
    # @!attribute [rw] linux_mount_point
    #   @return [String]
    #
    # @!attribute [rw] share_name
    #   @return [String]
    #
    # @!attribute [rw] windows_mount_drive
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStudioSSOConfigurationRepairOutput AWS API Documentation
    #
    class StartStudioSSOConfigurationRepairOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartStudioSSOConfigurationRepairRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StartStudioSSOConfigurationRepairResponse AWS API Documentation
    #
    class StartStudioSSOConfigurationRepairResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a streaming session.
    #
    # @!attribute [rw] clipboard_mode
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_types
    #   The EC2 instance types that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_session_length_in_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] streaming_image_ids
    #   A list of streaming image IDs that users can select from when
    #   launching a streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfiguration AWS API Documentation
    #
    class StreamConfiguration < Struct.new(
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :streaming_image_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StreamConfigurationCreate
    #   data as a hash:
    #
    #       {
    #         clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #         ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #         max_session_length_in_minutes: 1,
    #         streaming_image_ids: ["StreamingImageId"], # required
    #       }
    #
    # @!attribute [rw] clipboard_mode
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_types
    #   The EC2 instance types that users can select from when launching a
    #   streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_session_length_in_minutes
    #   @return [Integer]
    #
    # @!attribute [rw] streaming_image_ids
    #   A list of streaming image IDs that users can select from when
    #   launching a streaming session with this launch profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamConfigurationCreate AWS API Documentation
    #
    class StreamConfigurationCreate < Struct.new(
      :clipboard_mode,
      :ec2_instance_types,
      :max_session_length_in_minutes,
      :streaming_image_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] ec2_image_id
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   @return [Types::StreamingImageEncryptionConfiguration]
    #
    # @!attribute [rw] eula_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   StreamingImageOwner is the owner of a particular streaming image.
    #
    #   This string is either the studioId that contains the streaming
    #   image, or the word 'AMAZON' for images provided by Nimble Studio.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of this Streaming Image, either WINDOWS or LINUX.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] tags
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_arn
    #   @return [String]
    #
    # @!attribute [rw] key_type
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

    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] ec2_instance_type
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] owned_by
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The streaming session state.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] terminate_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StreamingSession AWS API Documentation
    #
    class StreamingSession < Struct.new(
      :arn,
      :created_at,
      :created_by,
      :ec2_instance_type,
      :launch_profile_id,
      :owned_by,
      :session_id,
      :state,
      :status_code,
      :status_message,
      :streaming_image_id,
      :tags,
      :terminate_at,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   @return [Time]
    #
    # @!attribute [rw] owned_by
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   @return [String]
    #
    # @!attribute [rw] url
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_role_arn
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] home_region
    #   @return [String]
    #
    # @!attribute [rw] sso_client_id
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] studio_encryption_configuration
    #   Configuration of the encryption method that is used for the studio.
    #   @return [Types::StudioEncryptionConfiguration]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] studio_name
    #   @return [String]
    #
    # @!attribute [rw] studio_url
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] user_role_arn
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A network that is used by a studio’s users and workflows, including
    # render farm, Active Directory, licensing, and file system.
    #
    # @!attribute [rw] arn
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] state
    #   The current state of the studio component resource.
    #
    #   While a studio component is being created, modified, or deleted, its
    #   state will equal "CREATE\_IN\_PROGRESS", "UPDATE\_IN\_PROGRESS",
    #   or "DELETE\_IN\_PROGRESS"
    #
    #   These are called 'transition states'.
    #
    #   No modifications may be made to the studio component while it is in
    #   a transition state.
    #
    #   If creation of the resource fails, the state will change to
    #   `CREATE\_FAILED`. The resource StatusCode and StatusMessage will
    #   provide more information of why creation failed. The resource in
    #   this state will automatically be deleted from your account after a
    #   period of time.
    #
    #   If updating the resource fails, the state will change to
    #   `UPDATE\_FAILED`. The resource StatusCode and StatusMessage will
    #   provide more information of why the update failed. The resource will
    #   be returned to the state it was in when the update request was
    #   invoked.
    #
    #   If deleting the resource fails, the state will change to
    #   `DELETE\_FAILED`. The resource StatusCode and StatusMessage will
    #   provide more information of why the update failed. The resource will
    #   be returned to the state it was in when the update request was
    #   invoked. After the resource is deleted successfully, it will change
    #   to the "DELETED" state. The resource will no longer count against
    #   service quotas and cannot be used or acted upon any futher. It will
    #   be removed from your account after a period of time.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The current status of the studio component resource.
    #
    #   When the resource is in the 'READY' state, the status code signals
    #   what the last mutation made to the resource was.
    #
    #   When the resource is in a
    #   CREATE\_FAILED/UPDATE\_FAILED/DELETE\_FAILED state, the status code
    #   signals what went wrong and why the mutation failed.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
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
      :script_parameters,
      :state,
      :status_code,
      :status_message,
      :studio_component_id,
      :subtype,
      :tags,
      :type,
      :updated_at,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the studio component, based on component type.
    #
    # @note StudioComponentConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StudioComponentConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StudioComponentConfiguration corresponding to the set member.
    #
    # @!attribute [rw] active_directory_configuration
    #   The configuration for a Microsoft Active Directory (Microsoft AD)
    #   studio resource.
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
    # @note When making an API call, you may pass StudioComponentInitializationScript
    #   data as a hash:
    #
    #       {
    #         launch_profile_protocol_version: "LaunchProfileProtocolVersion",
    #         platform: "LINUX", # accepts LINUX, WINDOWS
    #         run_context: "SYSTEM_INITIALIZATION", # accepts SYSTEM_INITIALIZATION, USER_INITIALIZATION
    #         script: "StudioComponentInitializationScriptContent",
    #       }
    #
    # @!attribute [rw] launch_profile_protocol_version
    #   The version number of the protocol that is used by the launch
    #   profile. The only valid version is "2021-03-31".
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   @return [String]
    #
    # @!attribute [rw] run_context
    #   @return [String]
    #
    # @!attribute [rw] script
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioComponentInitializationScript AWS API Documentation
    #
    class StudioComponentInitializationScript < Struct.new(
      :launch_profile_protocol_version,
      :platform,
      :run_context,
      :script)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration of the encryption method that is used for the studio.
    #
    # @note When making an API call, you may pass StudioEncryptionConfiguration
    #   data as a hash:
    #
    #       {
    #         key_arn: "StudioEncryptionConfigurationKeyArn",
    #         key_type: "AWS_OWNED_KEY", # required, accepts AWS_OWNED_KEY, CUSTOMER_MANAGED_KEY
    #       }
    #
    # @!attribute [rw] key_arn
    #   The Amazon Resource Name (ARN) for a KMS key that is used to encrypt
    #   studio data.
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

    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/StudioMembership AWS API Documentation
    #
    class StudioMembership < Struct.new(
      :identity_store_id,
      :persona,
      :principal_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: {
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
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

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
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

    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileInput AWS API Documentation
    #
    class UpdateLaunchProfileInput < Struct.new(
      :description,
      :launch_profile_protocol_versions,
      :name,
      :stream_configuration,
      :studio_component_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] persona
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileMemberInput AWS API Documentation
    #
    class UpdateLaunchProfileMemberInput < Struct.new(
      :persona)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLaunchProfileMemberRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         launch_profile_id: "__string", # required
    #         persona: "USER", # required, accepts USER
    #         principal_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] persona
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
    #   @return [Types::LaunchProfileMembership]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileMemberResponse AWS API Documentation
    #
    class UpdateLaunchProfileMemberResponse < Struct.new(
      :member)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileOutput AWS API Documentation
    #
    class UpdateLaunchProfileOutput < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLaunchProfileRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         description: "LaunchProfileDescription",
    #         launch_profile_id: "__string", # required
    #         launch_profile_protocol_versions: ["LaunchProfileProtocolVersion"],
    #         name: "LaunchProfileName",
    #         stream_configuration: {
    #           clipboard_mode: "ENABLED", # required, accepts ENABLED, DISABLED
    #           ec2_instance_types: ["g4dn.xlarge"], # required, accepts g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge
    #           max_session_length_in_minutes: 1,
    #           streaming_image_ids: ["StreamingImageId"], # required
    #         },
    #         studio_component_ids: ["__string"],
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_id
    #   @return [String]
    #
    # @!attribute [rw] launch_profile_protocol_versions
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] stream_configuration
    #   @return [Types::StreamConfigurationCreate]
    #
    # @!attribute [rw] studio_component_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] studio_id
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] launch_profile
    #   @return [Types::LaunchProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateLaunchProfileResponse AWS API Documentation
    #
    class UpdateLaunchProfileResponse < Struct.new(
      :launch_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImageInput AWS API Documentation
    #
    class UpdateStreamingImageInput < Struct.new(
      :description,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImageOutput AWS API Documentation
    #
    class UpdateStreamingImageOutput < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStreamingImageRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         description: "StreamingImageDescription",
    #         name: "StreamingImageName",
    #         streaming_image_id: "__string", # required
    #         studio_id: "__string", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A friendly name for a streaming image resource.
    #   @return [String]
    #
    # @!attribute [rw] streaming_image_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] streaming_image
    #   @return [Types::StreamingImage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStreamingImageResponse AWS API Documentation
    #
    class UpdateStreamingImageResponse < Struct.new(
      :streaming_image)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioComponentInput AWS API Documentation
    #
    class UpdateStudioComponentInput < Struct.new(
      :configuration,
      :description,
      :ec2_security_group_ids,
      :initialization_scripts,
      :name,
      :script_parameters,
      :subtype,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
    #   @return [Types::StudioComponent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioComponentOutput AWS API Documentation
    #
    class UpdateStudioComponentOutput < Struct.new(
      :studio_component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStudioComponentRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         configuration: {
    #           active_directory_configuration: {
    #             computer_attributes: [
    #               {
    #                 name: "ActiveDirectoryComputerAttributeName",
    #                 value: "ActiveDirectoryComputerAttributeValue",
    #               },
    #             ],
    #             directory_id: "DirectoryId",
    #             organizational_unit_distinguished_name: "ActiveDirectoryOrganizationalUnitDistinguishedName",
    #           },
    #           compute_farm_configuration: {
    #             active_directory_user: "__string",
    #             endpoint: "__string",
    #           },
    #           license_service_configuration: {
    #             endpoint: "__string",
    #           },
    #           shared_file_system_configuration: {
    #             endpoint: "__string",
    #             file_system_id: "__string",
    #             linux_mount_point: "LinuxMountPoint",
    #             share_name: "__string",
    #             windows_mount_drive: "WindowsMountDrive",
    #           },
    #         },
    #         description: "StudioComponentDescription",
    #         ec2_security_group_ids: ["SecurityGroupId"],
    #         initialization_scripts: [
    #           {
    #             launch_profile_protocol_version: "LaunchProfileProtocolVersion",
    #             platform: "LINUX", # accepts LINUX, WINDOWS
    #             run_context: "SYSTEM_INITIALIZATION", # accepts SYSTEM_INITIALIZATION, USER_INITIALIZATION
    #             script: "StudioComponentInitializationScriptContent",
    #           },
    #         ],
    #         name: "StudioComponentName",
    #         script_parameters: [
    #           {
    #             key: "ScriptParameterKey",
    #             value: "ScriptParameterValue",
    #           },
    #         ],
    #         studio_component_id: "__string", # required
    #         studio_id: "__string", # required
    #         subtype: "AWS_MANAGED_MICROSOFT_AD", # accepts AWS_MANAGED_MICROSOFT_AD, AMAZON_FSX_FOR_WINDOWS, AMAZON_FSX_FOR_LUSTRE, CUSTOM
    #         type: "ACTIVE_DIRECTORY", # accepts ACTIVE_DIRECTORY, SHARED_FILE_SYSTEM, COMPUTE_FARM, LICENSE_SERVICE, CUSTOM
    #       }
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The configuration of the studio component, based on component type.
    #   @return [Types::StudioComponentConfiguration]
    #
    # @!attribute [rw] description
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_ids
    #   @return [Array<String>]
    #
    # @!attribute [rw] initialization_scripts
    #   @return [Array<Types::StudioComponentInitializationScript>]
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @!attribute [rw] script_parameters
    #   @return [Array<Types::ScriptParameterKeyValue>]
    #
    # @!attribute [rw] studio_component_id
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] subtype
    #   @return [String]
    #
    # @!attribute [rw] type
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
      :script_parameters,
      :studio_component_id,
      :studio_id,
      :subtype,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio_component
    #   A network that is used by a studio’s users and workflows, including
    #   render farm, Active Directory, licensing, and file system.
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
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] user_role_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioInput AWS API Documentation
    #
    class UpdateStudioInput < Struct.new(
      :admin_role_arn,
      :display_name,
      :user_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioOutput AWS API Documentation
    #
    class UpdateStudioOutput < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStudioRequest
    #   data as a hash:
    #
    #       {
    #         admin_role_arn: "__string",
    #         client_token: "ClientToken",
    #         display_name: "StudioDisplayName",
    #         studio_id: "__string", # required
    #         user_role_arn: "__string",
    #       }
    #
    # @!attribute [rw] admin_role_arn
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   @return [String]
    #
    # @!attribute [rw] studio_id
    #   @return [String]
    #
    # @!attribute [rw] user_role_arn
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] studio
    #   @return [Types::Studio]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/nimble-2020-08-01/UpdateStudioResponse AWS API Documentation
    #
    class UpdateStudioResponse < Struct.new(
      :studio)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] context
    #   ExceptionContext is a set of key-value pairs that provide you with
    #   more information about the error that occurred. For example, when
    #   the service returns a 404 ResourceNotFound error, ExceptionContext
    #   will contain the key `resourceId` with the value of resource that
    #   was not found.
    #
    #   ExceptionContext enables scripts and other programmatic clients to
    #   provide for better error handling.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] message
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

  end
end
