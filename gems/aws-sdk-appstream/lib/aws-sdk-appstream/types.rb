# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppStream
  module Types

    # Describes an application in the application catalog.
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The application name for display.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   The URL for the application icon. This URL might be time-limited.
    #   @return [String]
    #
    # @!attribute [rw] launch_path
    #   The path to the application executable in the instance.
    #   @return [String]
    #
    # @!attribute [rw] launch_parameters
    #   The arguments that are passed to the application at launch.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If there is a problem, the application can be disabled after image
    #   creation.
    #   @return [Boolean]
    #
    # @!attribute [rw] metadata
    #   Additional attributes that describe the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Application AWS API Documentation
    #
    class Application < Struct.new(
      :name,
      :display_name,
      :icon_url,
      :launch_path,
      :launch_parameters,
      :enabled,
      :metadata)
      include Aws::Structure
    end

    # The persistent application settings for users of a stack.
    #
    # @note When making an API call, you may pass ApplicationSettings
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         settings_group: "SettingsGroup",
    #       }
    #
    # @!attribute [rw] enabled
    #   Enables or disables persistent application settings for users during
    #   their streaming sessions.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings_group
    #   The path prefix for the S3 bucket where users’ persistent
    #   application settings are stored. You can allow the same persistent
    #   application settings to be used across multiple stacks by specifying
    #   the same settings group for each stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ApplicationSettings AWS API Documentation
    #
    class ApplicationSettings < Struct.new(
      :enabled,
      :settings_group)
      include Aws::Structure
    end

    # Describes the persistent application settings for users of a stack.
    #
    # @!attribute [rw] enabled
    #   Specifies whether persistent application settings are enabled for
    #   users during their streaming sessions.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings_group
    #   The path prefix for the S3 bucket where users’ persistent
    #   application settings are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The S3 bucket where users’ persistent application settings are
    #   stored. When persistent application settings are enabled for the
    #   first time for an account in an AWS Region, an S3 bucket is created.
    #   The bucket is unique to the AWS account and the Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ApplicationSettingsResponse AWS API Documentation
    #
    class ApplicationSettingsResponse < Struct.new(
      :enabled,
      :settings_group,
      :s3_bucket_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet_name: "String", # required
    #         stack_name: "String", # required
    #       }
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleetRequest AWS API Documentation
    #
    class AssociateFleetRequest < Struct.new(
      :fleet_name,
      :stack_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleetResult AWS API Documentation
    #
    class AssociateFleetResult < Aws::EmptyStructure; end

    # Describes the capacity for a fleet.
    #
    # @note When making an API call, you may pass ComputeCapacity
    #   data as a hash:
    #
    #       {
    #         desired_instances: 1, # required
    #       }
    #
    # @!attribute [rw] desired_instances
    #   The desired number of streaming instances.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ComputeCapacity AWS API Documentation
    #
    class ComputeCapacity < Struct.new(
      :desired_instances)
      include Aws::Structure
    end

    # Describes the capacity status for a fleet.
    #
    # @!attribute [rw] desired
    #   The desired number of streaming instances.
    #   @return [Integer]
    #
    # @!attribute [rw] running
    #   The total number of simultaneous streaming instances that are
    #   running.
    #   @return [Integer]
    #
    # @!attribute [rw] in_use
    #   The number of instances in use for streaming.
    #   @return [Integer]
    #
    # @!attribute [rw] available
    #   The number of currently available instances that can be used to
    #   stream sessions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ComputeCapacityStatus AWS API Documentation
    #
    class ComputeCapacityStatus < Struct.new(
      :desired,
      :running,
      :in_use,
      :available)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyImageRequest
    #   data as a hash:
    #
    #       {
    #         source_image_name: "Name", # required
    #         destination_image_name: "Name", # required
    #         destination_region: "RegionName", # required
    #         destination_image_description: "Description",
    #       }
    #
    # @!attribute [rw] source_image_name
    #   The name of the image to copy.
    #   @return [String]
    #
    # @!attribute [rw] destination_image_name
    #   The name that the image will have when it is copied to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The destination region to which the image will be copied. This
    #   parameter is required, even if you are copying an image within the
    #   same region.
    #   @return [String]
    #
    # @!attribute [rw] destination_image_description
    #   The description that the image will have when it is copied to the
    #   destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CopyImageRequest AWS API Documentation
    #
    class CopyImageRequest < Struct.new(
      :source_image_name,
      :destination_image_name,
      :destination_region,
      :destination_image_description)
      include Aws::Structure
    end

    # @!attribute [rw] destination_image_name
    #   The name of the destination image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CopyImageResponse AWS API Documentation
    #
    class CopyImageResponse < Struct.new(
      :destination_image_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectoryConfigRequest
    #   data as a hash:
    #
    #       {
    #         directory_name: "DirectoryName", # required
    #         organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"], # required
    #         service_account_credentials: { # required
    #           account_name: "AccountName", # required
    #           account_password: "AccountPassword", # required
    #         },
    #       }
    #
    # @!attribute [rw] directory_name
    #   The fully qualified name of the directory (for example,
    #   corp.example.com).
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The credentials for the service account used by the streaming
    #   instance to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfigRequest AWS API Documentation
    #
    class CreateDirectoryConfigRequest < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials)
      include Aws::Structure
    end

    # @!attribute [rw] directory_config
    #   Information about the directory configuration.
    #   @return [Types::DirectoryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfigResult AWS API Documentation
    #
    class CreateDirectoryConfigResult < Struct.new(
      :directory_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         image_name: "String",
    #         image_arn: "Arn",
    #         instance_type: "String", # required
    #         fleet_type: "ALWAYS_ON", # accepts ALWAYS_ON, ON_DEMAND
    #         compute_capacity: { # required
    #           desired_instances: 1, # required
    #         },
    #         vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         max_user_duration_in_seconds: 1,
    #         disconnect_timeout_in_seconds: 1,
    #         description: "Description",
    #         display_name: "DisplayName",
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A unique name for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image used to create the fleet.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the public, private, or shared image to use.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use when launching fleet instances. The
    #   following instance types are available:
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   The fleet type.
    #
    #   ALWAYS\_ON
    #
    #   : Provides users with instant-on access to their apps. You are
    #     charged for all running instances in your fleet, even if no users
    #     are streaming apps.
    #
    #   ON\_DEMAND
    #
    #   : Provide users with access to applications after they connect,
    #     which takes one to two minutes. You are charged for instance
    #     streaming when users are connected and a small hourly fee for
    #     instances that are not streaming apps.
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity
    #   The desired capacity for the fleet.
    #   @return [Types::ComputeCapacity]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the fleet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time that a streaming session can run, in seconds.
    #   Specify a value between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended, in seconds. If a user who was disconnected reconnects within
    #   this time interval, the user is connected to their previous session.
    #   Specify a value between 60 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name for display.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleetRequest AWS API Documentation
    #
    class CreateFleetRequest < Struct.new(
      :name,
      :image_name,
      :image_arn,
      :instance_type,
      :fleet_type,
      :compute_capacity,
      :vpc_config,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :description,
      :display_name,
      :enable_default_internet_access,
      :domain_join_info)
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   Information about the fleet.
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleetResult AWS API Documentation
    #
    class CreateFleetResult < Struct.new(
      :fleet)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageBuilderRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         image_name: "String",
    #         image_arn: "Arn",
    #         instance_type: "String", # required
    #         description: "Description",
    #         display_name: "DisplayName",
    #         vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         },
    #         appstream_agent_version: "AppstreamAgentVersion",
    #       }
    #
    # @!attribute [rw] name
    #   A unique name for the image builder.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image used to create the builder.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the public, private, or shared image to use.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use when launching the image builder.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The image builder name for display.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the image builder. You can specify only
    #   one subnet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the image builder.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image
    #   builder. To use the latest version of the AppStream 2.0 agent,
    #   specify \[LATEST\].
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderRequest AWS API Documentation
    #
    class CreateImageBuilderRequest < Struct.new(
      :name,
      :image_name,
      :image_arn,
      :instance_type,
      :description,
      :display_name,
      :vpc_config,
      :enable_default_internet_access,
      :domain_join_info,
      :appstream_agent_version)
      include Aws::Structure
    end

    # @!attribute [rw] image_builder
    #   Information about the image builder.
    #   @return [Types::ImageBuilder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderResult AWS API Documentation
    #
    class CreateImageBuilderResult < Struct.new(
      :image_builder)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageBuilderStreamingURLRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         validity: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 3600 seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderStreamingURLRequest AWS API Documentation
    #
    class CreateImageBuilderStreamingURLRequest < Struct.new(
      :name,
      :validity)
      include Aws::Structure
    end

    # @!attribute [rw] streaming_url
    #   The URL to start the AppStream 2.0 streaming session.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The elapsed time, in seconds after the Unix epoch, when this URL
    #   expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateImageBuilderStreamingURLResult AWS API Documentation
    #
    class CreateImageBuilderStreamingURLResult < Struct.new(
      :streaming_url,
      :expires)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStackRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         display_name: "DisplayName",
    #         storage_connectors: [
    #           {
    #             connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #             resource_identifier: "ResourceIdentifier",
    #             domains: ["Domain"],
    #           },
    #         ],
    #         redirect_url: "RedirectURL",
    #         feedback_url: "FeedbackURL",
    #         user_settings: [
    #           {
    #             action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
    #             permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         ],
    #         application_settings: {
    #           enabled: false, # required
    #           settings_group: "SettingsGroup",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The stack name for display.
    #   @return [String]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to enable.
    #   @return [Array<Types::StorageConnector>]
    #
    # @!attribute [rw] redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #   @return [String]
    #
    # @!attribute [rw] feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #   @return [Array<Types::UserSetting>]
    #
    # @!attribute [rw] application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #   @return [Types::ApplicationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStackRequest AWS API Documentation
    #
    class CreateStackRequest < Struct.new(
      :name,
      :description,
      :display_name,
      :storage_connectors,
      :redirect_url,
      :feedback_url,
      :user_settings,
      :application_settings)
      include Aws::Structure
    end

    # @!attribute [rw] stack
    #   Information about the stack.
    #   @return [Types::Stack]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStackResult AWS API Documentation
    #
    class CreateStackResult < Struct.new(
      :stack)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStreamingURLRequest
    #   data as a hash:
    #
    #       {
    #         stack_name: "String", # required
    #         fleet_name: "String", # required
    #         user_id: "StreamingUrlUserId", # required
    #         application_id: "String",
    #         validity: 1,
    #         session_context: "String",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The name of the application to launch after the session starts. This
    #   is the name that you specified as **Name** in the Image Assistant.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   The time that the streaming URL will be valid, in seconds. Specify a
    #   value between 1 and 604800 seconds. The default is 60 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] session_context
    #   The session context. For more information, see [Session Context][1]
    #   in the *Amazon AppStream 2.0 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStreamingURLRequest AWS API Documentation
    #
    class CreateStreamingURLRequest < Struct.new(
      :stack_name,
      :fleet_name,
      :user_id,
      :application_id,
      :validity,
      :session_context)
      include Aws::Structure
    end

    # @!attribute [rw] streaming_url
    #   The URL to start the AppStream 2.0 streaming session.
    #   @return [String]
    #
    # @!attribute [rw] expires
    #   The elapsed time, in seconds after the Unix epoch, when this URL
    #   expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStreamingURLResult AWS API Documentation
    #
    class CreateStreamingURLResult < Struct.new(
      :streaming_url,
      :expires)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDirectoryConfigRequest
    #   data as a hash:
    #
    #       {
    #         directory_name: "DirectoryName", # required
    #       }
    #
    # @!attribute [rw] directory_name
    #   The name of the directory configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteDirectoryConfigRequest AWS API Documentation
    #
    class DeleteDirectoryConfigRequest < Struct.new(
      :directory_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteDirectoryConfigResult AWS API Documentation
    #
    class DeleteDirectoryConfigResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteFleetRequest AWS API Documentation
    #
    class DeleteFleetRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteFleetResult AWS API Documentation
    #
    class DeleteFleetResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteImageBuilderRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image builder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageBuilderRequest AWS API Documentation
    #
    class DeleteImageBuilderRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] image_builder
    #   Information about the image builder.
    #   @return [Types::ImageBuilder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageBuilderResult AWS API Documentation
    #
    class DeleteImageBuilderResult < Struct.new(
      :image_builder)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImagePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         shared_account_id: "AwsAccountId", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the private image.
    #   @return [String]
    #
    # @!attribute [rw] shared_account_id
    #   The 12-digit ID of the AWS account for which to delete image
    #   permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissionsRequest AWS API Documentation
    #
    class DeleteImagePermissionsRequest < Struct.new(
      :name,
      :shared_account_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissionsResult AWS API Documentation
    #
    class DeleteImagePermissionsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteImageRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageRequest AWS API Documentation
    #
    class DeleteImageRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] image
    #   Information about the image.
    #   @return [Types::Image]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImageResult AWS API Documentation
    #
    class DeleteImageResult < Struct.new(
      :image)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteStackRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStackRequest AWS API Documentation
    #
    class DeleteStackRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStackResult AWS API Documentation
    #
    class DeleteStackResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeDirectoryConfigsRequest
    #   data as a hash:
    #
    #       {
    #         directory_names: ["DirectoryName"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] directory_names
    #   The directory names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum size of each page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeDirectoryConfigsRequest AWS API Documentation
    #
    class DescribeDirectoryConfigsRequest < Struct.new(
      :directory_names,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] directory_configs
    #   Information about the directory configurations. Note that although
    #   the response syntax in this topic includes the account password,
    #   this password is not returned in the actual response.
    #   @return [Array<Types::DirectoryConfig>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeDirectoryConfigsResult AWS API Documentation
    #
    class DescribeDirectoryConfigsResult < Struct.new(
      :directory_configs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFleetsRequest
    #   data as a hash:
    #
    #       {
    #         names: ["String"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] names
    #   The names of the fleets to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeFleetsRequest AWS API Documentation
    #
    class DescribeFleetsRequest < Struct.new(
      :names,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] fleets
    #   Information about the fleets.
    #   @return [Array<Types::Fleet>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeFleetsResult AWS API Documentation
    #
    class DescribeFleetsResult < Struct.new(
      :fleets,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImageBuildersRequest
    #   data as a hash:
    #
    #       {
    #         names: ["String"],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] names
    #   The names of the image builders to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum size of each page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImageBuildersRequest AWS API Documentation
    #
    class DescribeImageBuildersRequest < Struct.new(
      :names,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] image_builders
    #   Information about the image builders.
    #   @return [Array<Types::ImageBuilder>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImageBuildersResult AWS API Documentation
    #
    class DescribeImageBuildersResult < Struct.new(
      :image_builders,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImagePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         max_results: 1,
    #         shared_aws_account_ids: ["AwsAccountId"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the private image for which to describe permissions. The
    #   image must be one that you own.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of each results page.
    #   @return [Integer]
    #
    # @!attribute [rw] shared_aws_account_ids
    #   The 12-digit ID of one or more AWS accounts with which the image is
    #   shared.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   this value is empty, only the first page is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissionsRequest AWS API Documentation
    #
    class DescribeImagePermissionsRequest < Struct.new(
      :name,
      :max_results,
      :shared_aws_account_ids,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the private image.
    #   @return [String]
    #
    # @!attribute [rw] shared_image_permissions_list
    #   The permissions for a private image that you own.
    #   @return [Array<Types::SharedImagePermissions>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   this value is empty, only the first page is retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissionsResult AWS API Documentation
    #
    class DescribeImagePermissionsResult < Struct.new(
      :name,
      :shared_image_permissions_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImagesRequest
    #   data as a hash:
    #
    #       {
    #         names: ["String"],
    #         arns: ["Arn"],
    #         type: "PUBLIC", # accepts PUBLIC, PRIVATE, SHARED
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] names
    #   The names of the public or private images to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] arns
    #   The ARNs of the public, private, and shared images to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of image (public, private, or shared) to describe.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   this value is empty, only the first page is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of each page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagesRequest AWS API Documentation
    #
    class DescribeImagesRequest < Struct.new(
      :names,
      :arns,
      :type,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   Information about the images.
    #   @return [Array<Types::Image>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results. If
    #   there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagesResult AWS API Documentation
    #
    class DescribeImagesResult < Struct.new(
      :images,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSessionsRequest
    #   data as a hash:
    #
    #       {
    #         stack_name: "String", # required
    #         fleet_name: "String", # required
    #         user_id: "UserId",
    #         next_token: "String",
    #         limit: 1,
    #         authentication_type: "API", # accepts API, SAML, USERPOOL
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name of the stack. This value is case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet. This value is case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The size of each page of results. The default value is 20 and the
    #   maximum value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method. Specify `API` for a user authenticated
    #   using a streaming URL or `SAML` for a SAML federated user. The
    #   default is to authenticate users using a streaming URL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeSessionsRequest AWS API Documentation
    #
    class DescribeSessionsRequest < Struct.new(
      :stack_name,
      :fleet_name,
      :user_id,
      :next_token,
      :limit,
      :authentication_type)
      include Aws::Structure
    end

    # @!attribute [rw] sessions
    #   Information about the streaming sessions.
    #   @return [Array<Types::Session>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeSessionsResult AWS API Documentation
    #
    class DescribeSessionsResult < Struct.new(
      :sessions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeStacksRequest
    #   data as a hash:
    #
    #       {
    #         names: ["String"],
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] names
    #   The names of the stacks to describe.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeStacksRequest AWS API Documentation
    #
    class DescribeStacksRequest < Struct.new(
      :names,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] stacks
    #   Information about the stacks.
    #   @return [Array<Types::Stack>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeStacksResult AWS API Documentation
    #
    class DescribeStacksResult < Struct.new(
      :stacks,
      :next_token)
      include Aws::Structure
    end

    # Configuration information for the directory used to join domains.
    #
    # @!attribute [rw] directory_name
    #   The fully qualified name of the directory (for example,
    #   corp.example.com).
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The credentials for the service account used by the streaming
    #   instance to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @!attribute [rw] created_time
    #   The time the directory configuration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DirectoryConfig AWS API Documentation
    #
    class DirectoryConfig < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      :created_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisassociateFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet_name: "String", # required
    #         stack_name: "String", # required
    #       }
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleetRequest AWS API Documentation
    #
    class DisassociateFleetRequest < Struct.new(
      :fleet_name,
      :stack_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleetResult AWS API Documentation
    #
    class DisassociateFleetResult < Aws::EmptyStructure; end

    # Contains the information needed to join a Microsoft Active Directory
    # domain.
    #
    # @note When making an API call, you may pass DomainJoinInfo
    #   data as a hash:
    #
    #       {
    #         directory_name: "DirectoryName",
    #         organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #       }
    #
    # @!attribute [rw] directory_name
    #   The fully qualified name of the directory (for example,
    #   corp.example.com).
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The distinguished name of the organizational unit for computer
    #   accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DomainJoinInfo AWS API Documentation
    #
    class DomainJoinInfo < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ExpireSessionRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "String", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   The ID of the streaming session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSessionRequest AWS API Documentation
    #
    class ExpireSessionRequest < Struct.new(
      :session_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSessionResult AWS API Documentation
    #
    class ExpireSessionResult < Aws::EmptyStructure; end

    # Contains the parameters for a fleet.
    #
    # @!attribute [rw] arn
    #   The ARN for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name for display.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image used to create the fleet.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN for the public, private, or shared image.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use when launching fleet instances.
    #   @return [String]
    #
    # @!attribute [rw] fleet_type
    #   The fleet type.
    #
    #   ALWAYS\_ON
    #
    #   : Provides users with instant-on access to their apps. You are
    #     charged for all running instances in your fleet, even if no users
    #     are streaming apps.
    #
    #   ON\_DEMAND
    #
    #   : Provide users with access to applications after they connect,
    #     which takes one to two minutes. You are charged for instance
    #     streaming when users are connected and a small hourly fee for
    #     instances that are not streaming apps.
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity_status
    #   The capacity status for the fleet.
    #   @return [Types::ComputeCapacityStatus]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time that a streaming session can run, in seconds.
    #   Specify a value between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended, in seconds. If a user who was disconnected reconnects within
    #   this time interval, the user is connected to their previous session.
    #   Specify a value between 60 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The current state for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the fleet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] created_time
    #   The time the fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] fleet_errors
    #   The fleet errors.
    #   @return [Array<Types::FleetError>]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Indicates whether default internet access is enabled for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Fleet AWS API Documentation
    #
    class Fleet < Struct.new(
      :arn,
      :name,
      :display_name,
      :description,
      :image_name,
      :image_arn,
      :instance_type,
      :fleet_type,
      :compute_capacity_status,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :state,
      :vpc_config,
      :created_time,
      :fleet_errors,
      :enable_default_internet_access,
      :domain_join_info)
      include Aws::Structure
    end

    # Describes a fleet error.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/FleetError AWS API Documentation
    #
    class FleetError < Struct.new(
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # Describes an image.
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the image.
    #   @return [String]
    #
    # @!attribute [rw] base_image_arn
    #   The ARN of the image from which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The image name for display.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The image starts in the `PENDING` state. If image creation succeeds,
    #   the state is `AVAILABLE`. If image creation fails, the state is
    #   `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Indicates whether the image is public or private.
    #   @return [String]
    #
    # @!attribute [rw] image_builder_supported
    #   Indicates whether an image builder can be launched from this image.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason why the last state change occurred.
    #   @return [Types::ImageStateChangeReason]
    #
    # @!attribute [rw] applications
    #   The applications associated with the image.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] created_time
    #   The time the image was created.
    #   @return [Time]
    #
    # @!attribute [rw] public_base_image_released_date
    #   The release date of the public base image. For private images, this
    #   date is the release date of the base image from which the image was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for instances that are
    #   launched from this image.
    #   @return [String]
    #
    # @!attribute [rw] image_permissions
    #   The permissions to provide to the destination AWS account for the
    #   specified image.
    #   @return [Types::ImagePermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Image AWS API Documentation
    #
    class Image < Struct.new(
      :name,
      :arn,
      :base_image_arn,
      :display_name,
      :state,
      :visibility,
      :image_builder_supported,
      :platform,
      :description,
      :state_change_reason,
      :applications,
      :created_time,
      :public_base_image_released_date,
      :appstream_agent_version,
      :image_permissions)
      include Aws::Structure
    end

    # Describes a streaming instance used for editing an image. New images
    # are created from a snapshot through an image builder.
    #
    # @!attribute [rw] name
    #   The name of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the image builder.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the image from which this builder was created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The image builder name for display.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration of the image builder.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the image builder.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason why the last state change occurred.
    #   @return [Types::ImageBuilderStateChangeReason]
    #
    # @!attribute [rw] created_time
    #   The time stamp when the image builder was created.
    #   @return [Time]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the image builder.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] image_builder_errors
    #   The image builder errors.
    #   @return [Array<Types::ResourceError>]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent that is currently being used
    #   by this image builder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ImageBuilder AWS API Documentation
    #
    class ImageBuilder < Struct.new(
      :name,
      :arn,
      :image_arn,
      :description,
      :display_name,
      :vpc_config,
      :instance_type,
      :platform,
      :state,
      :state_change_reason,
      :created_time,
      :enable_default_internet_access,
      :domain_join_info,
      :image_builder_errors,
      :appstream_agent_version)
      include Aws::Structure
    end

    # Describes the reason why the last image builder state change occurred.
    #
    # @!attribute [rw] code
    #   The state change reason code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The state change reason message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ImageBuilderStateChangeReason AWS API Documentation
    #
    class ImageBuilderStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # Describes the permissions for an image.
    #
    # @note When making an API call, you may pass ImagePermissions
    #   data as a hash:
    #
    #       {
    #         allow_fleet: false,
    #         allow_image_builder: false,
    #       }
    #
    # @!attribute [rw] allow_fleet
    #   Indicates whether the image can be used for a fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_image_builder
    #   Indicates whether the image can be used for an image builder.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ImagePermissions AWS API Documentation
    #
    class ImagePermissions < Struct.new(
      :allow_fleet,
      :allow_image_builder)
      include Aws::Structure
    end

    # Describes the reason why the last image state change occurred.
    #
    # @!attribute [rw] code
    #   The state change reason code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The state change reason message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ImageStateChangeReason AWS API Documentation
    #
    class ImageStateChangeReason < Struct.new(
      :code,
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedFleetsRequest
    #   data as a hash:
    #
    #       {
    #         stack_name: "String", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedFleetsRequest AWS API Documentation
    #
    class ListAssociatedFleetsRequest < Struct.new(
      :stack_name,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   The name of the fleet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedFleetsResult AWS API Documentation
    #
    class ListAssociatedFleetsResult < Struct.new(
      :names,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssociatedStacksRequest
    #   data as a hash:
    #
    #       {
    #         fleet_name: "String", # required
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedStacksRequest AWS API Documentation
    #
    class ListAssociatedStacksRequest < Struct.new(
      :fleet_name,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   The name of the stack.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListAssociatedStacksResult AWS API Documentation
    #
    class ListAssociatedStacksResult < Struct.new(
      :names,
      :next_token)
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
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # The network details of the fleet instance for the streaming session.
    #
    # @!attribute [rw] eni_private_ip_address
    #   The private IP address of the elastic network interface that is
    #   attached to instances in your VPC.
    #   @return [String]
    #
    # @!attribute [rw] eni_id
    #   The resource identifier of the elastic network interface that is
    #   attached to instances in your VPC. All network interfaces have the
    #   eni-xxxxxxxx resource identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/NetworkAccessConfiguration AWS API Documentation
    #
    class NetworkAccessConfiguration < Struct.new(
      :eni_private_ip_address,
      :eni_id)
      include Aws::Structure
    end

    # Describes a resource error.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @!attribute [rw] error_timestamp
    #   The time the error occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ResourceError AWS API Documentation
    #
    class ResourceError < Struct.new(
      :error_code,
      :error_message,
      :error_timestamp)
      include Aws::Structure
    end

    # Describes the credentials for the service account used by the
    # streaming instance to connect to the directory.
    #
    # @note When making an API call, you may pass ServiceAccountCredentials
    #   data as a hash:
    #
    #       {
    #         account_name: "AccountName", # required
    #         account_password: "AccountPassword", # required
    #       }
    #
    # @!attribute [rw] account_name
    #   The user name of the account. This account must have the following
    #   privileges: create computer objects, join computers to the domain,
    #   and change/reset the password on descendant computer objects for the
    #   organizational units specified.
    #   @return [String]
    #
    # @!attribute [rw] account_password
    #   The password for the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ServiceAccountCredentials AWS API Documentation
    #
    class ServiceAccountCredentials < Struct.new(
      :account_name,
      :account_password)
      include Aws::Structure
    end

    # Describes a streaming session.
    #
    # @!attribute [rw] id
    #   The ID of the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user for whom the session was created.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack for the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet for the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method. The user is authenticated using a
    #   streaming URL (`API`) or SAML federation (`SAML`).
    #   @return [String]
    #
    # @!attribute [rw] network_access_configuration
    #   The network details for the streaming session.
    #   @return [Types::NetworkAccessConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Session AWS API Documentation
    #
    class Session < Struct.new(
      :id,
      :user_id,
      :stack_name,
      :fleet_name,
      :state,
      :authentication_type,
      :network_access_configuration)
      include Aws::Structure
    end

    # Describes the permissions that are available to the specified AWS
    # account for a shared image.
    #
    # @!attribute [rw] shared_account_id
    #   The 12-digit ID of the AWS account with which the image is shared.
    #   @return [String]
    #
    # @!attribute [rw] image_permissions
    #   Describes the permissions for a shared image.
    #   @return [Types::ImagePermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/SharedImagePermissions AWS API Documentation
    #
    class SharedImagePermissions < Struct.new(
      :shared_account_id,
      :image_permissions)
      include Aws::Structure
    end

    # Describes a stack.
    #
    # @!attribute [rw] arn
    #   The ARN of the stack.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The stack name for display.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time the stack was created.
    #   @return [Time]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to enable.
    #   @return [Array<Types::StorageConnector>]
    #
    # @!attribute [rw] redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #   @return [String]
    #
    # @!attribute [rw] feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] stack_errors
    #   The errors for the stack.
    #   @return [Array<Types::StackError>]
    #
    # @!attribute [rw] user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default these actions are enabled.
    #   @return [Array<Types::UserSetting>]
    #
    # @!attribute [rw] application_settings
    #   The persistent application settings for users of the stack.
    #   @return [Types::ApplicationSettingsResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Stack AWS API Documentation
    #
    class Stack < Struct.new(
      :arn,
      :name,
      :description,
      :display_name,
      :created_time,
      :storage_connectors,
      :redirect_url,
      :feedback_url,
      :stack_errors,
      :user_settings,
      :application_settings)
      include Aws::Structure
    end

    # Describes a stack error.
    #
    # @!attribute [rw] error_code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StackError AWS API Documentation
    #
    class StackError < Struct.new(
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleetRequest AWS API Documentation
    #
    class StartFleetRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartFleetResult AWS API Documentation
    #
    class StartFleetResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartImageBuilderRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         appstream_agent_version: "AppstreamAgentVersion",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image
    #   builder. To use the latest version of the AppStream 2.0 agent,
    #   specify \[LATEST\].
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartImageBuilderRequest AWS API Documentation
    #
    class StartImageBuilderRequest < Struct.new(
      :name,
      :appstream_agent_version)
      include Aws::Structure
    end

    # @!attribute [rw] image_builder
    #   Information about the image builder.
    #   @return [Types::ImageBuilder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StartImageBuilderResult AWS API Documentation
    #
    class StartImageBuilderResult < Struct.new(
      :image_builder)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopFleetRequest AWS API Documentation
    #
    class StopFleetRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopFleetResult AWS API Documentation
    #
    class StopFleetResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopImageBuilderRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image builder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopImageBuilderRequest AWS API Documentation
    #
    class StopImageBuilderRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] image_builder
    #   Information about the image builder.
    #   @return [Types::ImageBuilder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StopImageBuilderResult AWS API Documentation
    #
    class StopImageBuilderResult < Struct.new(
      :image_builder)
      include Aws::Structure
    end

    # Describes a connector to enable persistent storage for users.
    #
    # @note When making an API call, you may pass StorageConnector
    #   data as a hash:
    #
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #         resource_identifier: "ResourceIdentifier",
    #         domains: ["Domain"],
    #       }
    #
    # @!attribute [rw] connector_type
    #   The type of storage connector.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The ARN of the storage connector.
    #   @return [String]
    #
    # @!attribute [rw] domains
    #   The names of the domains for the G Suite account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StorageConnector AWS API Documentation
    #
    class StorageConnector < Struct.new(
      :connector_type,
      :resource_identifier,
      :domains)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate. A tag is a key-value pair (the value is
    #   optional). For example, `Environment=Test`, or, if you do not
    #   specify a value, `Environment=`.
    #
    #   If you do not specify a value, we set the value to an empty string.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys for the tags to disassociate.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDirectoryConfigRequest
    #   data as a hash:
    #
    #       {
    #         directory_name: "DirectoryName", # required
    #         organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"],
    #         service_account_credentials: {
    #           account_name: "AccountName", # required
    #           account_password: "AccountPassword", # required
    #         },
    #       }
    #
    # @!attribute [rw] directory_name
    #   The name of the Directory Config object.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The distinguished names of the organizational units for computer
    #   accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The credentials for the service account used by the streaming
    #   instance to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfigRequest AWS API Documentation
    #
    class UpdateDirectoryConfigRequest < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials)
      include Aws::Structure
    end

    # @!attribute [rw] directory_config
    #   Information about the Directory Config object.
    #   @return [Types::DirectoryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfigResult AWS API Documentation
    #
    class UpdateDirectoryConfigResult < Struct.new(
      :directory_config)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateFleetRequest
    #   data as a hash:
    #
    #       {
    #         image_name: "String",
    #         image_arn: "Arn",
    #         name: "String",
    #         instance_type: "String",
    #         compute_capacity: {
    #           desired_instances: 1, # required
    #         },
    #         vpc_config: {
    #           subnet_ids: ["String"],
    #           security_group_ids: ["String"],
    #         },
    #         max_user_duration_in_seconds: 1,
    #         disconnect_timeout_in_seconds: 1,
    #         delete_vpc_config: false,
    #         description: "Description",
    #         display_name: "DisplayName",
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         },
    #         attributes_to_delete: ["VPC_CONFIGURATION"], # accepts VPC_CONFIGURATION, VPC_CONFIGURATION_SECURITY_GROUP_IDS, DOMAIN_JOIN_INFO
    #       }
    #
    # @!attribute [rw] image_name
    #   The name of the image used to create the fleet.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the public, private, or shared image to use.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A unique name for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use when launching fleet instances. The
    #   following instance types are available:
    #
    #   * stream.standard.medium
    #
    #   * stream.standard.large
    #
    #   * stream.compute.large
    #
    #   * stream.compute.xlarge
    #
    #   * stream.compute.2xlarge
    #
    #   * stream.compute.4xlarge
    #
    #   * stream.compute.8xlarge
    #
    #   * stream.memory.large
    #
    #   * stream.memory.xlarge
    #
    #   * stream.memory.2xlarge
    #
    #   * stream.memory.4xlarge
    #
    #   * stream.memory.8xlarge
    #
    #   * stream.graphics-design.large
    #
    #   * stream.graphics-design.xlarge
    #
    #   * stream.graphics-design.2xlarge
    #
    #   * stream.graphics-design.4xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity
    #   The desired capacity for the fleet.
    #   @return [Types::ComputeCapacity]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the fleet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time that a streaming session can run, in seconds.
    #   Specify a value between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended, in seconds. If a user who was disconnected reconnects within
    #   this time interval, the user is connected to their previous session.
    #   Specify a value between 60 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_vpc_config
    #   Deletes the VPC association for the specified fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name for display.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The information needed to join a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] attributes_to_delete
    #   The fleet attributes to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleetRequest AWS API Documentation
    #
    class UpdateFleetRequest < Struct.new(
      :image_name,
      :image_arn,
      :name,
      :instance_type,
      :compute_capacity,
      :vpc_config,
      :max_user_duration_in_seconds,
      :disconnect_timeout_in_seconds,
      :delete_vpc_config,
      :description,
      :display_name,
      :enable_default_internet_access,
      :domain_join_info,
      :attributes_to_delete)
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   Information about the fleet.
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleetResult AWS API Documentation
    #
    class UpdateFleetResult < Struct.new(
      :fleet)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateImagePermissionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         shared_account_id: "AwsAccountId", # required
    #         image_permissions: { # required
    #           allow_fleet: false,
    #           allow_image_builder: false,
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the private image.
    #   @return [String]
    #
    # @!attribute [rw] shared_account_id
    #   The 12-digit ID of the AWS account for which you want add or update
    #   image permissions.
    #   @return [String]
    #
    # @!attribute [rw] image_permissions
    #   The permissions for the image.
    #   @return [Types::ImagePermissions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateImagePermissionsRequest AWS API Documentation
    #
    class UpdateImagePermissionsRequest < Struct.new(
      :name,
      :shared_account_id,
      :image_permissions)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateImagePermissionsResult AWS API Documentation
    #
    class UpdateImagePermissionsResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateStackRequest
    #   data as a hash:
    #
    #       {
    #         display_name: "DisplayName",
    #         description: "Description",
    #         name: "String", # required
    #         storage_connectors: [
    #           {
    #             connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS, GOOGLE_DRIVE, ONE_DRIVE
    #             resource_identifier: "ResourceIdentifier",
    #             domains: ["Domain"],
    #           },
    #         ],
    #         delete_storage_connectors: false,
    #         redirect_url: "RedirectURL",
    #         feedback_url: "FeedbackURL",
    #         attributes_to_delete: ["STORAGE_CONNECTORS"], # accepts STORAGE_CONNECTORS, STORAGE_CONNECTOR_HOMEFOLDERS, STORAGE_CONNECTOR_GOOGLE_DRIVE, STORAGE_CONNECTOR_ONE_DRIVE, REDIRECT_URL, FEEDBACK_URL, THEME_NAME, USER_SETTINGS
    #         user_settings: [
    #           {
    #             action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
    #             permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #           },
    #         ],
    #         application_settings: {
    #           enabled: false, # required
    #           settings_group: "SettingsGroup",
    #         },
    #       }
    #
    # @!attribute [rw] display_name
    #   The stack name for display.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for display.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to enable.
    #   @return [Array<Types::StorageConnector>]
    #
    # @!attribute [rw] delete_storage_connectors
    #   Deletes the storage connectors currently enabled for the stack.
    #   @return [Boolean]
    #
    # @!attribute [rw] redirect_url
    #   The URL that users are redirected to after their streaming session
    #   ends.
    #   @return [String]
    #
    # @!attribute [rw] feedback_url
    #   The URL that users are redirected to after they click the Send
    #   Feedback link. If no URL is specified, no Send Feedback link is
    #   displayed.
    #   @return [String]
    #
    # @!attribute [rw] attributes_to_delete
    #   The stack attributes to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_settings
    #   The actions that are enabled or disabled for users during their
    #   streaming sessions. By default, these actions are enabled.
    #   @return [Array<Types::UserSetting>]
    #
    # @!attribute [rw] application_settings
    #   The persistent application settings for users of a stack. When these
    #   settings are enabled, changes that users make to applications and
    #   Windows settings are automatically saved after each session and
    #   applied to the next session.
    #   @return [Types::ApplicationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStackRequest AWS API Documentation
    #
    class UpdateStackRequest < Struct.new(
      :display_name,
      :description,
      :name,
      :storage_connectors,
      :delete_storage_connectors,
      :redirect_url,
      :feedback_url,
      :attributes_to_delete,
      :user_settings,
      :application_settings)
      include Aws::Structure
    end

    # @!attribute [rw] stack
    #   Information about the stack.
    #   @return [Types::Stack]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStackResult AWS API Documentation
    #
    class UpdateStackResult < Struct.new(
      :stack)
      include Aws::Structure
    end

    # Describes an action and whether the action is enabled or disabled for
    # users during their streaming sessions.
    #
    # @note When making an API call, you may pass UserSetting
    #   data as a hash:
    #
    #       {
    #         action: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", # required, accepts CLIPBOARD_COPY_FROM_LOCAL_DEVICE, CLIPBOARD_COPY_TO_LOCAL_DEVICE, FILE_UPLOAD, FILE_DOWNLOAD, PRINTING_TO_LOCAL_DEVICE
    #         permission: "ENABLED", # required, accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] action
    #   The action that is enabled or disabled.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   Indicates whether the action is enabled or disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UserSetting AWS API Documentation
    #
    class UserSetting < Struct.new(
      :action,
      :permission)
      include Aws::Structure
    end

    # Describes VPC configuration information.
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["String"],
    #         security_group_ids: ["String"],
    #       }
    #
    # @!attribute [rw] subnet_ids
    #   The subnets to which a network interface is established from the
    #   fleet instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups for the fleet.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      include Aws::Structure
    end

  end
end
