# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppStream
  module Types

    # Describes an interface VPC endpoint (interface endpoint) that lets you
    # create a private connection between the virtual private cloud (VPC)
    # that you specify and AppStream 2.0. When you specify an interface
    # endpoint for a stack, users of the stack can connect to AppStream 2.0
    # only through that endpoint. When you specify an interface endpoint for
    # an image builder, administrators can connect to the image builder only
    # through that endpoint.
    #
    # @note When making an API call, you may pass AccessEndpoint
    #   data as a hash:
    #
    #       {
    #         endpoint_type: "STREAMING", # required, accepts STREAMING
    #         vpce_id: "String",
    #       }
    #
    # @!attribute [rw] endpoint_type
    #   The type of interface endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpce_id
    #   The identifier (ID) of the VPC in which the interface endpoint is
    #   used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AccessEndpoint AWS API Documentation
    #
    class AccessEndpoint < Struct.new(
      :endpoint_type,
      :vpce_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an application in the application catalog.
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The application name to display.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/AssociateFleetResult AWS API Documentation
    #
    class AssociateFleetResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass BatchAssociateUserStackRequest
    #   data as a hash:
    #
    #       {
    #         user_stack_associations: [ # required
    #           {
    #             stack_name: "String", # required
    #             user_name: "Username", # required
    #             authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #             send_email_notification: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] user_stack_associations
    #   The list of UserStackAssociation objects.
    #   @return [Array<Types::UserStackAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchAssociateUserStackRequest AWS API Documentation
    #
    class BatchAssociateUserStackRequest < Struct.new(
      :user_stack_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The list of UserStackAssociationError objects.
    #   @return [Array<Types::UserStackAssociationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchAssociateUserStackResult AWS API Documentation
    #
    class BatchAssociateUserStackResult < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisassociateUserStackRequest
    #   data as a hash:
    #
    #       {
    #         user_stack_associations: [ # required
    #           {
    #             stack_name: "String", # required
    #             user_name: "Username", # required
    #             authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #             send_email_notification: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] user_stack_associations
    #   The list of UserStackAssociation objects.
    #   @return [Array<Types::UserStackAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchDisassociateUserStackRequest AWS API Documentation
    #
    class BatchDisassociateUserStackRequest < Struct.new(
      :user_stack_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   The list of UserStackAssociationError objects.
    #   @return [Array<Types::UserStackAssociationError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/BatchDisassociateUserStackResult AWS API Documentation
    #
    class BatchDisassociateUserStackResult < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # An API error occurred. Wait a few minutes and try again.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDirectoryConfigRequest
    #   data as a hash:
    #
    #       {
    #         directory_name: "DirectoryName", # required
    #         organizational_unit_distinguished_names: ["OrganizationalUnitDistinguishedName"], # required
    #         service_account_credentials: {
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
    #   The credentials for the service account used by the fleet or image
    #   builder to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfigRequest AWS API Documentation
    #
    class CreateDirectoryConfigRequest < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         idle_disconnect_timeout_in_seconds: 1,
    #         iam_role_arn: "Arn",
    #         stream_view: "APP", # accepts APP, DESKTOP
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
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
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
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
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
    #   The maximum amount of time that a streaming session can remain
    #   active, in seconds. If users are still connected to a streaming
    #   instance five minutes before this limit is reached, they are
    #   prompted to save any open documents before being disconnected. After
    #   this time elapses, the instance is terminated and replaced by a new
    #   instance.
    #
    #   Specify a value between 600 and 360000.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The amount of time that a streaming session remains active after
    #   users disconnect. If users try to reconnect to the streaming session
    #   after a disconnection or network interruption within this time
    #   interval, they are connected to their previous session. Otherwise,
    #   they are connected to a new session with a new streaming instance.
    #
    #   Specify a value between 60 and 360000.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name to display.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The name of the directory and organizational unit (OU) to use to
    #   join the fleet to a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the fleet. A tag is a key-value pair, and
    #   the value is optional. For example, Environment=Test. If you do not
    #   specify a value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   For more information, see [Tagging Your Resources][1] in the *Amazon
    #   AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_seconds
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the
    #   `DisconnectTimeoutInSeconds` time interval begins. Users are
    #   notified before they are disconnected due to inactivity. If they try
    #   to reconnect to the streaming session before the time interval
    #   specified in `DisconnectTimeoutInSeconds` elapses, they are
    #   connected to their previous session. Users are considered idle when
    #   they stop providing keyboard or mouse input during their streaming
    #   session. File uploads and downloads, audio in, audio out, and pixels
    #   changing do not qualify as user activity. If users continue to be
    #   idle after the time interval in `IdleDisconnectTimeoutInSeconds`
    #   elapses, they are disconnected.
    #
    #   To prevent users from being disconnected due to inactivity, specify
    #   a value of 0. Otherwise, specify a value between 60 and 3600. The
    #   default value is 0.
    #
    #   <note markdown="1"> If you enable this feature, we recommend that you specify a value
    #   that corresponds exactly to a whole number of minutes (for example,
    #   60, 120, and 180). If you don't do this, the value is rounded to
    #   the nearest minute. For example, if you specify a value of 70, users
    #   are disconnected after 1 minute of inactivity. If you specify a
    #   value that is at the midpoint between two different minutes, the
    #   value is rounded up. For example, if you specify a value of 90,
    #   users are disconnected after 2 minutes of inactivity.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the
    #   fleet. To assume a role, a fleet instance calls the AWS Security
    #   Token Service (STS) `AssumeRole` API operation and passes the ARN of
    #   the role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #   @return [String]
    #
    # @!attribute [rw] stream_view
    #   The AppStream 2.0 view that is displayed to your users when they
    #   stream from the fleet. When `APP` is specified, only the windows of
    #   applications opened by users display. When `DESKTOP` is specified,
    #   the standard desktop that is provided by the operating system
    #   displays.
    #
    #   The default value is `APP`.
    #   @return [String]
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
      :domain_join_info,
      :tags,
      :idle_disconnect_timeout_in_seconds,
      :iam_role_arn,
      :stream_view)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         iam_role_arn: "Arn",
    #         enable_default_internet_access: false,
    #         domain_join_info: {
    #           directory_name: "DirectoryName",
    #           organizational_unit_distinguished_name: "OrganizationalUnitDistinguishedName",
    #         },
    #         appstream_agent_version: "AppstreamAgentVersion",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING", # required, accepts STREAMING
    #             vpce_id: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   A unique name for the image builder.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The name of the image used to create the image builder.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The ARN of the public, private, or shared image to use.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type to use when launching the image builder. The
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
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
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
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The image builder name to display.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the image builder. You can specify only
    #   one subnet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the image
    #   builder. To assume a role, the image builder calls the AWS Security
    #   Token Service (STS) `AssumeRole` API operation and passes the ARN of
    #   the role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the image builder.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The name of the directory and organizational unit (OU) to use to
    #   join the image builder to a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent to use for this image
    #   builder. To use the latest version of the AppStream 2.0 agent,
    #   specify \[LATEST\].
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the image builder. A tag is a key-value
    #   pair, and the value is optional. For example, Environment=Test. If
    #   you do not specify a value, Environment=.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   For more information about tags, see [Tagging Your Resources][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Administrators can connect to the image builder only through the
    #   specified endpoints.
    #   @return [Array<Types::AccessEndpoint>]
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
      :iam_role_arn,
      :enable_default_internet_access,
      :domain_join_info,
      :appstream_agent_version,
      :tags,
      :access_endpoints)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING", # required, accepts STREAMING
    #             vpce_id: "String",
    #           },
    #         ],
    #         embed_host_domains: ["EmbedHostDomain"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The stack name to display.
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
    # @!attribute [rw] tags
    #   The tags to associate with the stack. A tag is a key-value pair, and
    #   the value is optional. For example, Environment=Test. If you do not
    #   specify a value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #
    #   For more information about tags, see [Tagging Your Resources][1] in
    #   the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Users of the stack can connect to AppStream 2.0 only through the
    #   specified endpoints.
    #   @return [Array<Types::AccessEndpoint>]
    #
    # @!attribute [rw] embed_host_domains
    #   The domains where AppStream 2.0 streaming sessions can be embedded
    #   in an iframe. You must approve the domains that you want to host
    #   embedded AppStream 2.0 streaming sessions.
    #   @return [Array<String>]
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
      :application_settings,
      :tags,
      :access_endpoints,
      :embed_host_domains)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The identifier of the user.
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
    #   in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUsageReportSubscriptionRequest AWS API Documentation
    #
    class CreateUsageReportSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket where generated reports are stored.
    #
    #   If you enabled on-instance session scripts and Amazon S3 logging for
    #   your session script configuration, AppStream 2.0 created an S3
    #   bucket to store the script output. The bucket is unique to your
    #   account and Region. When you enable usage reporting in this case,
    #   AppStream 2.0 uses the same bucket to store your usage reports. If
    #   you haven't already enabled on-instance session scripts, when you
    #   enable usage reports, AppStream 2.0 creates a new S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for generating usage reports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUsageReportSubscriptionResult AWS API Documentation
    #
    class CreateUsageReportSubscriptionResult < Struct.new(
      :s3_bucket_name,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "Username", # required
    #         message_action: "SUPPRESS", # accepts SUPPRESS, RESEND
    #         first_name: "UserAttributeValue",
    #         last_name: "UserAttributeValue",
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #       }
    #
    # @!attribute [rw] user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive. During login, if they
    #   specify an email address that doesn't use the same capitalization
    #   as the email address specified when their user pool account was
    #   created, a "user does not exist" error message displays.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] message_action
    #   The action to take for the welcome email that is sent to a user
    #   after the user is created in the user pool. If you specify SUPPRESS,
    #   no email is sent. If you specify RESEND, do not specify the first
    #   name or last name of the user. If the value is null, the email is
    #   sent.
    #
    #   <note markdown="1"> The temporary password in the welcome email is valid for only 7
    #   days. If users don’t set their passwords within 7 days, you must
    #   send them a new welcome email.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name, or given name, of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name, or surname, of the user.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :user_name,
      :message_action,
      :first_name,
      :last_name,
      :authentication_type)
      SENSITIVE = [:user_name, :first_name, :last_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateUserResult AWS API Documentation
    #
    class CreateUserResult < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The 12-digit identifier of the AWS account for which to delete image
    #   permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteImagePermissionsRequest AWS API Documentation
    #
    class DeleteImagePermissionsRequest < Struct.new(
      :name,
      :shared_account_id)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteStackResult AWS API Documentation
    #
    class DeleteStackResult < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUsageReportSubscriptionRequest AWS API Documentation
    #
    class DeleteUsageReportSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUsageReportSubscriptionResult AWS API Documentation
    #
    class DeleteUsageReportSubscriptionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #       }
    #
    # @!attribute [rw] user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name,
      :authentication_type)
      SENSITIVE = [:user_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DeleteUserResult AWS API Documentation
    #
    class DeleteUserResult < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The maximum size of each page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] shared_aws_account_ids
    #   The 12-digit identifier of one or more AWS accounts with which the
    #   image is shared.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissionsRequest AWS API Documentation
    #
    class DescribeImagePermissionsRequest < Struct.new(
      :name,
      :max_results,
      :shared_aws_account_ids,
      :next_token)
      SENSITIVE = []
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
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagePermissionsResult AWS API Documentation
    #
    class DescribeImagePermissionsResult < Struct.new(
      :name,
      :shared_image_permissions_list,
      :next_token)
      SENSITIVE = []
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
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   Information about the images.
    #   @return [Array<Types::Image>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagesResult AWS API Documentation
    #
    class DescribeImagesResult < Struct.new(
      :images,
      :next_token)
      SENSITIVE = []
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
    #   The user identifier (ID). If you specify a user ID, you must also
    #   specify the authentication type.
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUsageReportSubscriptionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsageReportSubscriptionsRequest AWS API Documentation
    #
    class DescribeUsageReportSubscriptionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] usage_report_subscriptions
    #   Information about the usage report subscription.
    #   @return [Array<Types::UsageReportSubscription>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsageReportSubscriptionsResult AWS API Documentation
    #
    class DescribeUsageReportSubscriptionsResult < Struct.new(
      :usage_report_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUserStackAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         stack_name: "String",
    #         user_name: "Username",
    #         authentication_type: "API", # accepts API, SAML, USERPOOL
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name of the stack that is associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The email address of the user who is associated with the stack.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user who is associated with the
    #   stack. You must specify USERPOOL.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUserStackAssociationsRequest AWS API Documentation
    #
    class DescribeUserStackAssociationsRequest < Struct.new(
      :stack_name,
      :user_name,
      :authentication_type,
      :max_results,
      :next_token)
      SENSITIVE = [:user_name]
      include Aws::Structure
    end

    # @!attribute [rw] user_stack_associations
    #   The UserStackAssociation objects.
    #   @return [Array<Types::UserStackAssociation>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUserStackAssociationsResult AWS API Documentation
    #
    class DescribeUserStackAssociationsResult < Struct.new(
      :user_stack_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeUsersRequest
    #   data as a hash:
    #
    #       {
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the users in the user pool to describe.
    #   You must specify USERPOOL.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsersRequest AWS API Documentation
    #
    class DescribeUsersRequest < Struct.new(
      :authentication_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   Information about users in the user pool.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If there are no more pages, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeUsersResult AWS API Documentation
    #
    class DescribeUsersResult < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration information required to join fleets and
    # image builders to Microsoft Active Directory domains.
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
    #   The credentials for the service account used by the fleet or image
    #   builder to connect to the directory.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #       }
    #
    # @!attribute [rw] user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisableUserRequest AWS API Documentation
    #
    class DisableUserRequest < Struct.new(
      :user_name,
      :authentication_type)
      SENSITIVE = [:user_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisableUserResult AWS API Documentation
    #
    class DisableUserResult < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DisassociateFleetResult AWS API Documentation
    #
    class DisassociateFleetResult < Aws::EmptyStructure; end

    # Describes the configuration information required to join fleets and
    # image builders to Microsoft Active Directory domains.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #       }
    #
    # @!attribute [rw] user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive. During login, if they
    #   specify an email address that doesn't use the same capitalization
    #   as the email address specified when their user pool account was
    #   created, a "user does not exist" error message displays.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user. You must specify USERPOOL.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/EnableUserRequest AWS API Documentation
    #
    class EnableUserRequest < Struct.new(
      :user_name,
      :authentication_type)
      SENSITIVE = [:user_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/EnableUserResult AWS API Documentation
    #
    class EnableUserResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ExpireSessionRequest
    #   data as a hash:
    #
    #       {
    #         session_id: "String", # required
    #       }
    #
    # @!attribute [rw] session_id
    #   The identifier of the streaming session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSessionRequest AWS API Documentation
    #
    class ExpireSessionRequest < Struct.new(
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ExpireSessionResult AWS API Documentation
    #
    class ExpireSessionResult < Aws::EmptyStructure; end

    # Describes a fleet.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name to display.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to display.
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
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
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
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
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
    # @!attribute [rw] compute_capacity_status
    #   The capacity status for the fleet.
    #   @return [Types::ComputeCapacityStatus]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum amount of time that a streaming session can remain
    #   active, in seconds. If users are still connected to a streaming
    #   instance five minutes before this limit is reached, they are
    #   prompted to save any open documents before being disconnected. After
    #   this time elapses, the instance is terminated and replaced by a new
    #   instance.
    #
    #   Specify a value between 600 and 360000.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The amount of time that a streaming session remains active after
    #   users disconnect. If they try to reconnect to the streaming session
    #   after a disconnection or network interruption within this time
    #   interval, they are connected to their previous session. Otherwise,
    #   they are connected to a new session with a new streaming instance.
    #
    #   Specify a value between 60 and 360000.
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
    #   The name of the directory and organizational unit (OU) to use to
    #   join the fleet to a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_seconds
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the
    #   `DisconnectTimeoutInSeconds` time interval begins. Users are
    #   notified before they are disconnected due to inactivity. If users
    #   try to reconnect to the streaming session before the time interval
    #   specified in `DisconnectTimeoutInSeconds` elapses, they are
    #   connected to their previous session. Users are considered idle when
    #   they stop providing keyboard or mouse input during their streaming
    #   session. File uploads and downloads, audio in, audio out, and pixels
    #   changing do not qualify as user activity. If users continue to be
    #   idle after the time interval in `IdleDisconnectTimeoutInSeconds`
    #   elapses, they are disconnected.
    #
    #   To prevent users from being disconnected due to inactivity, specify
    #   a value of 0. Otherwise, specify a value between 60 and 3600. The
    #   default value is 0.
    #
    #   <note markdown="1"> If you enable this feature, we recommend that you specify a value
    #   that corresponds exactly to a whole number of minutes (for example,
    #   60, 120, and 180). If you don't do this, the value is rounded to
    #   the nearest minute. For example, if you specify a value of 70, users
    #   are disconnected after 1 minute of inactivity. If you specify a
    #   value that is at the midpoint between two different minutes, the
    #   value is rounded up. For example, if you specify a value of 90,
    #   users are disconnected after 2 minutes of inactivity.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that is applied to the fleet. To assume a
    #   role, the fleet instance calls the AWS Security Token Service (STS)
    #   `AssumeRole` API operation and passes the ARN of the role to use.
    #   The operation creates a new session with temporary credentials.
    #   AppStream 2.0 retrieves the temporary credentials and creates the
    #   **appstream\_machine\_role** credential profile on the instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #   @return [String]
    #
    # @!attribute [rw] stream_view
    #   The AppStream 2.0 view that is displayed to your users when they
    #   stream from the fleet. When `APP` is specified, only the windows of
    #   applications opened by users display. When `DESKTOP` is specified,
    #   the standard desktop that is provided by the operating system
    #   displays.
    #
    #   The default value is `APP`.
    #   @return [String]
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
      :domain_join_info,
      :idle_disconnect_timeout_in_seconds,
      :iam_role_arn,
      :stream_view)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The image name to display.
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
    # @!attribute [rw] image_builder_name
    #   The name of the image builder that was used to create the private
    #   image. If the image is shared, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to display.
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
      :image_builder_name,
      :platform,
      :description,
      :state_change_reason,
      :applications,
      :created_time,
      :public_base_image_released_date,
      :appstream_agent_version,
      :image_permissions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a virtual machine that is used to create an image.
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
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The image builder name to display.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration of the image builder.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the image builder. The following instance
    #   types are available:
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
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
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
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
    #
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the image builder.
    #   @return [String]
    #
    # @!attribute [rw] iam_role_arn
    #   The ARN of the IAM role that is applied to the image builder. To
    #   assume a role, the image builder calls the AWS Security Token
    #   Service (STS) `AssumeRole` API operation and passes the ARN of the
    #   role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
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
    #   The name of the directory and organizational unit (OU) to use to
    #   join the image builder to a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] network_access_configuration
    #   Describes the network details of the fleet or image builder
    #   instance.
    #   @return [Types::NetworkAccessConfiguration]
    #
    # @!attribute [rw] image_builder_errors
    #   The image builder errors.
    #   @return [Array<Types::ResourceError>]
    #
    # @!attribute [rw] appstream_agent_version
    #   The version of the AppStream 2.0 agent that is currently being used
    #   by the image builder.
    #   @return [String]
    #
    # @!attribute [rw] access_endpoints
    #   The list of virtual private cloud (VPC) interface endpoint objects.
    #   Administrators can connect to the image builder only through the
    #   specified endpoints.
    #   @return [Array<Types::AccessEndpoint>]
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
      :iam_role_arn,
      :state,
      :state_change_reason,
      :created_time,
      :enable_default_internet_access,
      :domain_join_info,
      :network_access_configuration,
      :image_builder_errors,
      :appstream_agent_version,
      :access_endpoints)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The image does not support storage connectors.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/IncompatibleImageException AWS API Documentation
    #
    class IncompatibleImageException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource cannot be created because your AWS account is suspended.
    # For assistance, contact AWS Support.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/InvalidAccountStatusException AWS API Documentation
    #
    class InvalidAccountStatusException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates an incorrect combination of parameters, or a missing
    # parameter.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified role is invalid.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/InvalidRoleException AWS API Documentation
    #
    class InvalidRoleException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the error that is returned when a usage report can't be
    # generated.
    #
    # @!attribute [rw] error_code
    #   The error code for the error that is returned when a usage report
    #   can't be generated.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for the error that is returned when a usage report
    #   can't be generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/LastReportGenerationExecutionError AWS API Documentation
    #
    class LastReportGenerationExecutionError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested limit exceeds the permitted limit for an account.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the network details of the fleet or image builder instance.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The attempted operation is not permitted.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/OperationNotPermittedException AWS API Documentation
    #
    class OperationNotPermittedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AppStream 2.0 can’t process the request right now because the Describe
    # calls from your AWS account are being throttled by Amazon EC2. Try
    # again later.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/RequestLimitExceededException AWS API Documentation
    #
    class RequestLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource exists and is not in use, but isn't available.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ResourceNotAvailableException AWS API Documentation
    #
    class ResourceNotAvailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   The error message in the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the credentials for the service account used by the fleet or
    # image builder to connect to the directory.
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
      SENSITIVE = [:account_name, :account_password]
      include Aws::Structure
    end

    # Describes a streaming session.
    #
    # @!attribute [rw] id
    #   The identifier of the streaming session.
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
    # @!attribute [rw] connection_state
    #   Specifies whether a user is connected to the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time when a streaming instance is dedicated for the user.
    #   @return [Time]
    #
    # @!attribute [rw] max_expiration_time
    #   The time when the streaming session is set to expire. This time is
    #   based on the `MaxUserDurationinSeconds` value, which determines the
    #   maximum length of time that a streaming session can run. A streaming
    #   session might end earlier than the time specified in
    #   `SessionMaxExpirationTime`, when the `DisconnectTimeOutInSeconds`
    #   elapses or the user chooses to end his or her session. If the
    #   `DisconnectTimeOutInSeconds` elapses, or the user chooses to end his
    #   or her session, the streaming instance is terminated and the
    #   streaming session ends.
    #   @return [Time]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method. The user is authenticated using a
    #   streaming URL (`API`) or SAML 2.0 federation (`SAML`).
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
      :connection_state,
      :start_time,
      :max_expiration_time,
      :authentication_type,
      :network_access_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the permissions that are available to the specified AWS
    # account for a shared image.
    #
    # @!attribute [rw] shared_account_id
    #   The 12-digit identifier of the AWS account with which the image is
    #   shared.
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
      SENSITIVE = []
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
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The stack name to display.
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
    # @!attribute [rw] access_endpoints
    #   The list of virtual private cloud (VPC) interface endpoint objects.
    #   Users of the stack can connect to AppStream 2.0 only through the
    #   specified endpoints.
    #   @return [Array<Types::AccessEndpoint>]
    #
    # @!attribute [rw] embed_host_domains
    #   The domains where AppStream 2.0 streaming sessions can be embedded
    #   in an iframe. You must approve the domains that you want to host
    #   embedded AppStream 2.0 streaming sessions.
    #   @return [Array<String>]
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
      :application_settings,
      :access_endpoints,
      :embed_host_domains)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a connector that enables persistent storage for users.
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
    #   The names of the domains for the account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StorageConnector AWS API Documentation
    #
    class StorageConnector < Struct.new(
      :connector_type,
      :resource_identifier,
      :domains)
      SENSITIVE = []
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
    #   The tags to associate. A tag is a key-value pair, and the value is
    #   optional. For example, Environment=Test. If you do not specify a
    #   value, Environment=.
    #
    #   If you do not specify a value, the value is set to an empty string.
    #
    #   Generally allowed characters are: letters, numbers, and spaces
    #   representable in UTF-8, and the following special characters:
    #
    #   \_ . : / = + \\ - @
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The credentials for the service account used by the fleet or image
    #   builder to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateDirectoryConfigRequest AWS API Documentation
    #
    class UpdateDirectoryConfigRequest < Struct.new(
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         idle_disconnect_timeout_in_seconds: 1,
    #         attributes_to_delete: ["VPC_CONFIGURATION"], # accepts VPC_CONFIGURATION, VPC_CONFIGURATION_SECURITY_GROUP_IDS, DOMAIN_JOIN_INFO, IAM_ROLE_ARN
    #         iam_role_arn: "Arn",
    #         stream_view: "APP", # accepts APP, DESKTOP
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
    #   * stream.memory.z1d.large
    #
    #   * stream.memory.z1d.xlarge
    #
    #   * stream.memory.z1d.2xlarge
    #
    #   * stream.memory.z1d.3xlarge
    #
    #   * stream.memory.z1d.6xlarge
    #
    #   * stream.memory.z1d.12xlarge
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
    #   * stream.graphics.g4dn.xlarge
    #
    #   * stream.graphics.g4dn.2xlarge
    #
    #   * stream.graphics.g4dn.4xlarge
    #
    #   * stream.graphics.g4dn.8xlarge
    #
    #   * stream.graphics.g4dn.12xlarge
    #
    #   * stream.graphics.g4dn.16xlarge
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
    #   The maximum amount of time that a streaming session can remain
    #   active, in seconds. If users are still connected to a streaming
    #   instance five minutes before this limit is reached, they are
    #   prompted to save any open documents before being disconnected. After
    #   this time elapses, the instance is terminated and replaced by a new
    #   instance.
    #
    #   Specify a value between 600 and 360000.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The amount of time that a streaming session remains active after
    #   users disconnect. If users try to reconnect to the streaming session
    #   after a disconnection or network interruption within this time
    #   interval, they are connected to their previous session. Otherwise,
    #   they are connected to a new session with a new streaming instance.
    #
    #   Specify a value between 60 and 360000.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_vpc_config
    #   Deletes the VPC association for the specified fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description to display.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The fleet name to display.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The name of the directory and organizational unit (OU) to use to
    #   join the fleet to a Microsoft Active Directory domain.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] idle_disconnect_timeout_in_seconds
    #   The amount of time that users can be idle (inactive) before they are
    #   disconnected from their streaming session and the
    #   `DisconnectTimeoutInSeconds` time interval begins. Users are
    #   notified before they are disconnected due to inactivity. If users
    #   try to reconnect to the streaming session before the time interval
    #   specified in `DisconnectTimeoutInSeconds` elapses, they are
    #   connected to their previous session. Users are considered idle when
    #   they stop providing keyboard or mouse input during their streaming
    #   session. File uploads and downloads, audio in, audio out, and pixels
    #   changing do not qualify as user activity. If users continue to be
    #   idle after the time interval in `IdleDisconnectTimeoutInSeconds`
    #   elapses, they are disconnected.
    #
    #   To prevent users from being disconnected due to inactivity, specify
    #   a value of 0. Otherwise, specify a value between 60 and 3600. The
    #   default value is 0.
    #
    #   <note markdown="1"> If you enable this feature, we recommend that you specify a value
    #   that corresponds exactly to a whole number of minutes (for example,
    #   60, 120, and 180). If you don't do this, the value is rounded to
    #   the nearest minute. For example, if you specify a value of 70, users
    #   are disconnected after 1 minute of inactivity. If you specify a
    #   value that is at the midpoint between two different minutes, the
    #   value is rounded up. For example, if you specify a value of 90,
    #   users are disconnected after 2 minutes of inactivity.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] attributes_to_delete
    #   The fleet attributes to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to apply to the
    #   fleet. To assume a role, a fleet instance calls the AWS Security
    #   Token Service (STS) `AssumeRole` API operation and passes the ARN of
    #   the role to use. The operation creates a new session with temporary
    #   credentials. AppStream 2.0 retrieves the temporary credentials and
    #   creates the **appstream\_machine\_role** credential profile on the
    #   instance.
    #
    #   For more information, see [Using an IAM Role to Grant Permissions to
    #   Applications and Scripts Running on AppStream 2.0 Streaming
    #   Instances][1] in the *Amazon AppStream 2.0 Administration Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html
    #   @return [String]
    #
    # @!attribute [rw] stream_view
    #   The AppStream 2.0 view that is displayed to your users when they
    #   stream from the fleet. When `APP` is specified, only the windows of
    #   applications opened by users display. When `DESKTOP` is specified,
    #   the standard desktop that is provided by the operating system
    #   displays.
    #
    #   The default value is `APP`.
    #   @return [String]
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
      :idle_disconnect_timeout_in_seconds,
      :attributes_to_delete,
      :iam_role_arn,
      :stream_view)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The 12-digit identifier of the AWS account for which you want add or
    #   update image permissions.
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
      SENSITIVE = []
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
    #         attributes_to_delete: ["STORAGE_CONNECTORS"], # accepts STORAGE_CONNECTORS, STORAGE_CONNECTOR_HOMEFOLDERS, STORAGE_CONNECTOR_GOOGLE_DRIVE, STORAGE_CONNECTOR_ONE_DRIVE, REDIRECT_URL, FEEDBACK_URL, THEME_NAME, USER_SETTINGS, EMBED_HOST_DOMAINS, IAM_ROLE_ARN, ACCESS_ENDPOINTS
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
    #         access_endpoints: [
    #           {
    #             endpoint_type: "STREAMING", # required, accepts STREAMING
    #             vpce_id: "String",
    #           },
    #         ],
    #         embed_host_domains: ["EmbedHostDomain"],
    #       }
    #
    # @!attribute [rw] display_name
    #   The stack name to display.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to display.
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
    #   The URL that users are redirected to after they choose the Send
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
    # @!attribute [rw] access_endpoints
    #   The list of interface VPC endpoint (interface endpoint) objects.
    #   Users of the stack can connect to AppStream 2.0 only through the
    #   specified endpoints.
    #   @return [Array<Types::AccessEndpoint>]
    #
    # @!attribute [rw] embed_host_domains
    #   The domains where AppStream 2.0 streaming sessions can be embedded
    #   in an iframe. You must approve the domains that you want to host
    #   embedded AppStream 2.0 streaming sessions.
    #   @return [Array<String>]
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
      :application_settings,
      :access_endpoints,
      :embed_host_domains)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about the usage report subscription.
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket where generated reports are stored.
    #
    #   If you enabled on-instance session scripts and Amazon S3 logging for
    #   your session script configuration, AppStream 2.0 created an S3
    #   bucket to store the script output. The bucket is unique to your
    #   account and Region. When you enable usage reporting in this case,
    #   AppStream 2.0 uses the same bucket to store your usage reports. If
    #   you haven't already enabled on-instance session scripts, when you
    #   enable usage reports, AppStream 2.0 creates a new S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The schedule for generating usage reports.
    #   @return [String]
    #
    # @!attribute [rw] last_generated_report_date
    #   The time when the last usage report was generated.
    #   @return [Time]
    #
    # @!attribute [rw] subscription_errors
    #   The errors that were returned if usage reports couldn't be
    #   generated.
    #   @return [Array<Types::LastReportGenerationExecutionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UsageReportSubscription AWS API Documentation
    #
    class UsageReportSubscription < Struct.new(
      :s3_bucket_name,
      :schedule,
      :last_generated_report_date,
      :subscription_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a user in the user pool.
    #
    # @!attribute [rw] arn
    #   The ARN of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The email address of the user.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Specifies whether the user in the user pool is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the user in the user pool. The status can be one of
    #   the following:
    #
    #   * UNCONFIRMED – The user is created but not confirmed.
    #
    #   * CONFIRMED – The user is confirmed.
    #
    #   * ARCHIVED – The user is no longer active.
    #
    #   * COMPROMISED – The user is disabled because of a potential security
    #     threat.
    #
    #   * UNKNOWN – The user status is not known.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name, or given name, of the user.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name, or surname, of the user.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time the user was created in the user pool.
    #   @return [Time]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/User AWS API Documentation
    #
    class User < Struct.new(
      :arn,
      :user_name,
      :enabled,
      :status,
      :first_name,
      :last_name,
      :created_time,
      :authentication_type)
      SENSITIVE = [:user_name, :first_name, :last_name]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a user in the user pool and the associated stack.
    #
    # @note When making an API call, you may pass UserStackAssociation
    #   data as a hash:
    #
    #       {
    #         stack_name: "String", # required
    #         user_name: "Username", # required
    #         authentication_type: "API", # required, accepts API, SAML, USERPOOL
    #         send_email_notification: false,
    #       }
    #
    # @!attribute [rw] stack_name
    #   The name of the stack that is associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The email address of the user who is associated with the stack.
    #
    #   <note markdown="1"> Users' email addresses are case-sensitive.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication type for the user.
    #   @return [String]
    #
    # @!attribute [rw] send_email_notification
    #   Specifies whether a welcome email is sent to a user after the user
    #   is created in the user pool.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UserStackAssociation AWS API Documentation
    #
    class UserStackAssociation < Struct.new(
      :stack_name,
      :user_name,
      :authentication_type,
      :send_email_notification)
      SENSITIVE = [:user_name]
      include Aws::Structure
    end

    # Describes the error that is returned when a user can’t be associated
    # with or disassociated from a stack.
    #
    # @!attribute [rw] user_stack_association
    #   Information about the user and associated stack.
    #   @return [Types::UserStackAssociation]
    #
    # @!attribute [rw] error_code
    #   The error code for the error that is returned when a user can’t be
    #   associated with or disassociated from a stack.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for the error that is returned when a user can’t
    #   be associated with or disassociated from a stack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UserStackAssociationError AWS API Documentation
    #
    class UserStackAssociationError < Struct.new(
      :user_stack_association,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes VPC configuration information for fleets and image builders.
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
    #   The identifiers of the subnets to which a network interface is
    #   attached from the fleet instance or image builder instance. Fleet
    #   instances use one or more subnets. Image builder instances use one
    #   subnet.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The identifiers of the security groups for the fleet or image
    #   builder.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
