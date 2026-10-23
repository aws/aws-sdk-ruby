# frozen_string_literal: true

# This is generated code!

module Aws::AppStream
  # This module contains the types returned by client operations.
  module Types

    # <p>Describes an interface VPC endpoint (interface endpoint) that lets you create a private connection between the virtual private cloud (VPC) that you specify and AppStream 2.0. When you specify an interface endpoint for a stack, users of the stack can connect to AppStream 2.0 only through that endpoint. When you specify an interface endpoint for an image builder, administrators can connect to the image builder only through that endpoint.</p>
    # @!attribute endpoint_type
    #   <p>The type of interface endpoint.</p>
    #   @return [String]
    # @!attribute vpce_id
    #   <p>The identifier (ID) of the VPC in which the interface endpoint is used.</p>
    #   @return [String]
    class AccessEndpoint < Struct.new(
      nil,
      :endpoint_type,
      :vpce_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an app block.</p>
    #          <p>App blocks are an Amazon AppStream 2.0 resource that stores the details about the
    #            virtual hard disk in an S3 bucket. It also stores the setup script with details about
    #            how to mount the virtual hard disk. The virtual hard disk includes the application
    #            binaries and other files necessary to launch your applications. Multiple applications
    #            can be assigned to a single app block.</p>
    #          <p>This is only supported for Elastic fleets.</p>
    # @!attribute name
    #   <p>The name of the app block.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app block.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the app block.</p>
    #   @return [String]
    # @!attribute source_s3_location
    #   <p>The source S3 location of the app block.</p>
    #   @return [Types::S3Location]
    # @!attribute setup_script_details
    #   <p>The setup script details of the app block.</p>
    #            <p>This only applies to app blocks with PackagingType <code>CUSTOM</code>.</p>
    #   @return [Types::ScriptDetails]
    # @!attribute created_time
    #   <p>The created time of the app block.</p>
    #   @return [Time]
    # @!attribute post_setup_script_details
    #   <p>The post setup script details of the app block.</p>
    #            <p>This only applies to app blocks with PackagingType <code>APPSTREAM2</code>.</p>
    #   @return [Types::ScriptDetails]
    # @!attribute packaging_type
    #   <p>The packaging type of the app block.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the app block.</p>
    #            <p>An app block with AppStream 2.0 packaging will be in the <code>INACTIVE</code> state
    #               if no application package (VHD) is assigned to it. After an application package (VHD) is
    #               created by an app block builder for an app block, it becomes <code>ACTIVE</code>. </p>
    #            <p>Custom app blocks are always in the <code>ACTIVE</code> state and no action is required to use them.</p>
    #   @return [String]
    # @!attribute app_block_errors
    #   <p>The errors of the app block.</p>
    #   @return [Array<Types::ErrorDetails>]
    class AppBlock < Struct.new(
      nil,
      :name,
      :arn,
      :description,
      :display_name,
      :source_s3_location,
      :setup_script_details,
      :created_time,
      :post_setup_script_details,
      :packaging_type,
      :state,
      :app_block_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an app block builder.</p>
    # @!attribute arn
    #   <p>The ARN of the app block builder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the app block builder.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app block builder.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the app block builder.</p>
    #            <p>
    #               <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the app block builder.</p>
    #   @return [String]
    # @!attribute enable_default_internet_access
    #   <p>Indicates whether default internet access is enabled for the app block builder.</p>
    #   @return [Boolean]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that is applied to the app block builder.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the app block builder.</p>
    #   @return [Types::VpcConfig]
    # @!attribute state
    #   <p>The state of the app block builder.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The creation time of the app block builder.</p>
    #   @return [Time]
    # @!attribute app_block_builder_errors
    #   <p>The app block builder errors.</p>
    #   @return [Array<Types::ResourceError>]
    # @!attribute state_change_reason
    #   <p>The state change reason.</p>
    #   @return [Types::AppBlockBuilderStateChangeReason]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    class AppBlockBuilder < Struct.new(
      nil,
      :arn,
      :name,
      :display_name,
      :description,
      :platform,
      :instance_type,
      :enable_default_internet_access,
      :iam_role_arn,
      :vpc_config,
      :state,
      :created_time,
      :app_block_builder_errors,
      :state_change_reason,
      :access_endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an association between an app block builder and app block.</p>
    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute app_block_builder_name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class AppBlockBuilderAppBlockAssociation < Struct.new(
      nil,
      :app_block_arn,
      :app_block_builder_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reason why the last app block builder state change occurred.</p>
    # @!attribute code
    #   <p>The state change reason code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The state change reason message.</p>
    #   @return [String]
    class AppBlockBuilderStateChangeReason < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an application in the application catalog.</p>
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The application name to display.</p>
    #   @return [String]
    # @!attribute icon_url
    #   <p>The URL for the application icon. This URL might be time-limited.</p>
    #   @return [String]
    # @!attribute launch_path
    #   <p>The path to the application executable in the instance.</p>
    #   @return [String]
    # @!attribute launch_parameters
    #   <p>The arguments that are passed to the application at launch.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>If there is a problem, the application can be disabled after image creation.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>Additional attributes that describe the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory for the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    # @!attribute app_block_arn
    #   <p>The app block ARN of the application.</p>
    #   @return [String]
    # @!attribute icon_s3_location
    #   <p>The S3 location of the application icon.</p>
    #   @return [Types::S3Location]
    # @!attribute platforms
    #   <p>The platforms on which the application can run.</p>
    #   @return [Array<String>]
    # @!attribute instance_families
    #   <p>The instance families for the application.</p>
    #   @return [Array<String>]
    # @!attribute created_time
    #   <p>The time at which the application was created within the app block.</p>
    #   @return [Time]
    class Application < Struct.new(
      nil,
      :name,
      :display_name,
      :icon_url,
      :launch_path,
      :launch_parameters,
      :enabled,
      :metadata,
      :working_directory,
      :description,
      :arn,
      :app_block_arn,
      :icon_s3_location,
      :platforms,
      :instance_families,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the application fleet association.</p>
    # @!attribute fleet_name
    #   <p>The name of the fleet associated with the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the application associated with the fleet.</p>
    #   @return [String]
    class ApplicationFleetAssociation < Struct.new(
      nil,
      :fleet_name,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The persistent application settings for users of a stack.</p>
    # @!attribute enabled
    #   <p>Enables or disables persistent application settings for users during their streaming sessions. </p>
    #   @return [Boolean]
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack. </p>
    #   @return [String]
    class ApplicationSettings < Struct.new(
      nil,
      :enabled,
      :settings_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the persistent application settings for users of a stack.</p>
    # @!attribute enabled
    #   <p>Specifies whether persistent application settings are enabled for users during their streaming sessions.</p>
    #   @return [Boolean]
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region. 
    #           </p>
    #   @return [String]
    class ApplicationSettingsResponse < Struct.new(
      nil,
      :enabled,
      :settings_group,
      :s3_bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute app_block_builder_name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class AssociateAppBlockBuilderAppBlockRequest < Struct.new(
      nil,
      :app_block_arn,
      :app_block_builder_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder_app_block_association
    #   <p>The list of app block builders associated with app blocks.</p>
    #   @return [Types::AppBlockBuilderAppBlockAssociation]
    class AssociateAppBlockBuilderAppBlockResult < Struct.new(
      nil,
      :app_block_builder_app_block_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    class AssociateApplicationFleetRequest < Struct.new(
      nil,
      :fleet_name,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_fleet_association
    #   <p>If fleet name is specified, this returns the list of applications that are associated
    #               to it. If application ARN is specified, this returns the list of fleets to which it is
    #               associated.</p>
    #   @return [Types::ApplicationFleetAssociation]
    class AssociateApplicationFleetResult < Struct.new(
      nil,
      :application_fleet_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The identifier of the application.</p>
    #   @return [String]
    class AssociateApplicationToEntitlementRequest < Struct.new(
      nil,
      :stack_name,
      :entitlement_name,
      :application_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateApplicationToEntitlementResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet. </p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #   @return [String]
    class AssociateFleetRequest < Struct.new(
      nil,
      :fleet_name,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #   @return [Array<Types::UserStackAssociation>]
    class BatchAssociateUserStackRequest < Struct.new(
      nil,
      :user_stack_associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The list of UserStackAssociationError objects.</p>
    #   @return [Array<Types::UserStackAssociationError>]
    class BatchAssociateUserStackResult < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_stack_associations
    #   <p>The list of UserStackAssociation objects.</p>
    #   @return [Array<Types::UserStackAssociation>]
    class BatchDisassociateUserStackRequest < Struct.new(
      nil,
      :user_stack_associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>The list of UserStackAssociationError objects.</p>
    #   @return [Array<Types::UserStackAssociationError>]
    class BatchDisassociateUserStackResult < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #             Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #             Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #             domain password if certificate-based authentication is unsuccessful, or to unlock a
    #             desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #             authentication, but does not allow users to log in using their AD domain password. Users
    #             will be disconnected to re-authenticate using certificates.</p>
    # @!attribute status
    #   <p>The status of the certificate-based authentication properties.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The ARN of the AWS Certificate Manager Private CA resource.</p>
    #   @return [String]
    class CertificateBasedAuthProperties < Struct.new(
      nil,
      :status,
      :certificate_authority_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the capacity for a fleet.</p>
    # @!attribute desired_instances
    #   <p>The desired number of streaming instances.</p>
    #   @return [Integer]
    # @!attribute desired_sessions
    #   <p>The desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.</p>
    #            <p>When you create a fleet, you must set either the DesiredSessions or DesiredInstances attribute, based on the type of fleet you create. You can’t define both attributes or leave both attributes blank.</p>
    #   @return [Integer]
    class ComputeCapacity < Struct.new(
      nil,
      :desired_instances,
      :desired_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the capacity status for a fleet.</p>
    # @!attribute desired
    #   <p>The desired number of streaming instances.</p>
    #   @return [Integer]
    # @!attribute running
    #   <p>The total number of simultaneous streaming instances that are running.</p>
    #   @return [Integer]
    # @!attribute in_use
    #   <p>The number of instances in use for streaming.</p>
    #   @return [Integer]
    # @!attribute available
    #   <p>The number of currently available instances that can be used to stream
    #               sessions.</p>
    #   @return [Integer]
    # @!attribute desired_user_sessions
    #   <p>The total number of sessions slots that are either running or pending. This represents the total number of concurrent streaming sessions your fleet can support in a steady state.</p>
    #            <p>DesiredUserSessionCapacity = ActualUserSessionCapacity + PendingUserSessionCapacity</p>
    #            <p>This only applies to multi-session fleets.</p>
    #   @return [Integer]
    # @!attribute available_user_sessions
    #   <p>The number of idle session slots currently available for user sessions.</p>
    #            <p>AvailableUserSessionCapacity = ActualUserSessionCapacity - ActiveUserSessions</p>
    #            <p>This only applies to multi-session fleets.</p>
    #   @return [Integer]
    # @!attribute active_user_sessions
    #   <p>The number of user sessions currently being used for streaming sessions. This only applies to multi-session fleets.</p>
    #   @return [Integer]
    # @!attribute actual_user_sessions
    #   <p>The total number of session slots that are available for streaming or are currently streaming.</p>
    #            <p>ActualUserSessionCapacity = AvailableUserSessionCapacity + ActiveUserSessions</p>
    #            <p>This only applies to multi-session fleets.</p>
    #   @return [Integer]
    class ComputeCapacityStatus < Struct.new(
      nil,
      :desired,
      :running,
      :in_use,
      :available,
      :desired_user_sessions,
      :available_user_sessions,
      :active_user_sessions,
      :actual_user_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An API error occurred. Wait a few minutes and try again.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_image_name
    #   <p>The name of the image to copy.</p>
    #   @return [String]
    # @!attribute destination_image_name
    #   <p>The name that the image will have when it is copied to the destination.</p>
    #   @return [String]
    # @!attribute destination_region
    #   <p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>
    #   @return [String]
    # @!attribute destination_image_description
    #   <p>The description that the image will have when it is copied to the destination.</p>
    #   @return [String]
    class CopyImageRequest < Struct.new(
      nil,
      :source_image_name,
      :destination_image_name,
      :destination_region,
      :destination_image_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_image_name
    #   <p>The name of the destination image.</p>
    #   @return [String]
    class CopyImageResponse < Struct.new(
      nil,
      :destination_image_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name for the app block builder.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app block builder.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the app block builder.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the app block builder. A tag is a key-value pair, and the
    #               value is optional. For example, Environment=Test. If you do not specify a value,
    #               Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute platform
    #   <p>The platform of the app block builder.</p>
    #            <p>
    #               <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching the app block builder. The following instance
    #               types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the app block builder.</p>
    #            <p>App block builders require that you specify at least two subnets in different availability
    #               zones.</p>
    #   @return [Types::VpcConfig]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the app block builder.</p>
    #   @return [Boolean]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To
    #               assume a role, the app block builder calls the AWS Security Token Service (STS)
    #                   <code>AssumeRole</code> API operation and passes the ARN of the role to use. The
    #               operation creates a new session with temporary credentials. AppStream 2.0 retrieves the
    #               temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    class CreateAppBlockBuilderRequest < Struct.new(
      nil,
      :name,
      :description,
      :display_name,
      :tags,
      :platform,
      :instance_type,
      :vpc_config,
      :enable_default_internet_access,
      :iam_role_arn,
      :access_endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder
    #   <p>Describes an app block builder.</p>
    #   @return [Types::AppBlockBuilder]
    class CreateAppBlockBuilderResult < Struct.new(
      nil,
      :app_block_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder_name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    # @!attribute validity
    #   <p>The time that the streaming URL will be valid, in seconds. 
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    #   @return [Integer]
    class CreateAppBlockBuilderStreamingURLRequest < Struct.new(
      nil,
      :app_block_builder_name,
      :validity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_url
    #   <p>The URL to start the streaming session.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
    #   @return [Time]
    class CreateAppBlockBuilderStreamingURLResult < Struct.new(
      nil,
      :streaming_url,
      :expires,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app block.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app block.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the app block. This is not displayed to the user.</p>
    #   @return [String]
    # @!attribute source_s3_location
    #   <p>The source S3 location of the app block.</p>
    #   @return [Types::S3Location]
    # @!attribute setup_script_details
    #   <p>The setup script details of the app block. This must be provided for the
    #                   <code>CUSTOM</code> PackagingType.</p>
    #   @return [Types::ScriptDetails]
    # @!attribute tags
    #   <p>The tags assigned to the app block.</p>
    #   @return [Hash<String, String>]
    # @!attribute post_setup_script_details
    #   <p>The post setup script details of the app block. This can only be provided for the
    #                   <code>APPSTREAM2</code> PackagingType.</p>
    #   @return [Types::ScriptDetails]
    # @!attribute packaging_type
    #   <p>The packaging type of the app block.</p>
    #   @return [String]
    class CreateAppBlockRequest < Struct.new(
      nil,
      :name,
      :description,
      :display_name,
      :source_s3_location,
      :setup_script_details,
      :tags,
      :post_setup_script_details,
      :packaging_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block
    #   <p>The app block.</p>
    #   @return [Types::AppBlock]
    class CreateAppBlockResult < Struct.new(
      nil,
      :app_block,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute icon_s3_location
    #   <p>The location in S3 of the application icon.</p>
    #   @return [Types::S3Location]
    # @!attribute launch_path
    #   <p>The launch path of the application.</p>
    #   @return [String]
    # @!attribute working_directory
    #   <p>The working directory of the application.</p>
    #   @return [String]
    # @!attribute launch_parameters
    #   <p>The launch parameters of the application.</p>
    #   @return [String]
    # @!attribute platforms
    #   <p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>
    #   @return [Array<String>]
    # @!attribute instance_families
    #   <p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>
    #   @return [Array<String>]
    # @!attribute app_block_arn
    #   <p>The app block ARN to which the application should be associated</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :name,
      :display_name,
      :description,
      :icon_s3_location,
      :launch_path,
      :working_directory,
      :launch_parameters,
      :platforms,
      :instance_families,
      :app_block_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Describes an application in the application catalog.</p>
    #   @return [Types::Application]
    class CreateApplicationResult < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #   @return [Array<String>]
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #   @return [Types::ServiceAccountCredentials]
    # @!attribute certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #               Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #               Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #               domain password if certificate-based authentication is unsuccessful, or to unlock a
    #               desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #               authentication, but does not allow users to log in using their AD domain password. Users
    #               will be disconnected to re-authenticate using certificates.</p>
    #   @return [Types::CertificateBasedAuthProperties]
    class CreateDirectoryConfigRequest < Struct.new(
      nil,
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      :certificate_based_auth_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_config
    #   <p>Information about the directory configuration.</p>
    #   @return [Types::DirectoryConfig]
    class CreateDirectoryConfigResult < Struct.new(
      nil,
      :directory_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #   @return [String]
    # @!attribute app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #   @return [Array<Types::EntitlementAttribute>]
    class CreateEntitlementRequest < Struct.new(
      nil,
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement
    #   <p>The entitlement.</p>
    #   @return [Types::Entitlement]
    class CreateEntitlementResult < Struct.new(
      nil,
      :entitlement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique name for the fleet.</p>
    #   @return [String]
    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #            <p>The following instance types are available for Elastic fleets:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fleet_type
    #   <p>The fleet type.</p>
    #            <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                  <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #               </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                  <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>
    #   @return [Types::ComputeCapacity]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>
    #   @return [Types::VpcConfig]
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #            <p>Specify a value between 600 and 432000.</p>
    #   @return [Integer]
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #            <p>Specify a value between 60 and 36000.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #   @return [String]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #   @return [Boolean]
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>
    #   @return [Types::DomainJoinInfo]
    # @!attribute tags
    #   <p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               they try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #            <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>
    #            <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #            <p>The default value is <code>APP</code>.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic
    #               fleets. </p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic
    #               fleets, and not allowed for other fleet types.</p>
    #   @return [Integer]
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #   @return [Array<String>]
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    #   @return [Types::S3Location]
    # @!attribute max_sessions_per_instance
    #   <p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>
    #   @return [Integer]
    class CreateFleetRequest < Struct.new(
      nil,
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
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      :max_sessions_per_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet
    #   <p>Information about the fleet.</p>
    #   @return [Types::Fleet]
    class CreateFleetResult < Struct.new(
      nil,
      :fleet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A unique name for the image builder.</p>
    #   @return [String]
    # @!attribute image_name
    #   <p>The name of the image used to create the image builder.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching the image builder. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The image builder name to display.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the image builder. You can specify only one subnet.</p>
    #   @return [Types::VpcConfig]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    #   @return [Boolean]
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    #   @return [Types::DomainJoinInfo]
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    class CreateImageBuilderRequest < Struct.new(
      nil,
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
      :access_endpoints,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #   @return [Types::ImageBuilder]
    class CreateImageBuilderResult < Struct.new(
      nil,
      :image_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #   @return [String]
    # @!attribute validity
    #   <p>The time that the streaming URL will be valid, in seconds. 
    #               Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>
    #   @return [Integer]
    class CreateImageBuilderStreamingURLRequest < Struct.new(
      nil,
      :name,
      :validity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_url
    #   <p>The URL to start the AppStream 2.0 streaming session.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
    #   @return [Time]
    class CreateImageBuilderStreamingURLResult < Struct.new(
      nil,
      :streaming_url,
      :expires,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #   @return [String]
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #   @return [Array<Types::StorageConnector>]
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #   @return [String]
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #   @return [String]
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>
    #   @return [Array<Types::UserSetting>]
    # @!attribute application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #   @return [Types::ApplicationSettings]
    # @!attribute tags
    #   <p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #   @return [Array<String>]
    # @!attribute streaming_experience_settings
    #   <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    #   @return [Types::StreamingExperienceSettings]
    class CreateStackRequest < Struct.new(
      nil,
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
      :embed_host_domains,
      :streaming_experience_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack
    #   <p>Information about the stack.</p>
    #   @return [Types::Stack]
    class CreateStackResult < Struct.new(
      nil,
      :stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The name of the application to launch after the session starts. This is the name that you specified
    #               as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>
    #   @return [String]
    # @!attribute validity
    #   <p>The time that the streaming URL will be valid, in seconds.
    #               Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>
    #   @return [Integer]
    # @!attribute session_context
    #   <p>The session context. For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    class CreateStreamingURLRequest < Struct.new(
      nil,
      :stack_name,
      :fleet_name,
      :user_id,
      :application_id,
      :validity,
      :session_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute streaming_url
    #   <p>The URL to start the AppStream 2.0 streaming session.</p>
    #   @return [String]
    # @!attribute expires
    #   <p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>
    #   @return [Time]
    class CreateStreamingURLResult < Struct.new(
      nil,
      :streaming_url,
      :expires,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for the theme.</p>
    #   @return [String]
    # @!attribute footer_links
    #   <p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>
    #   @return [Array<Types::ThemeFooterLink>]
    # @!attribute title_text
    #   <p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>
    #   @return [String]
    # @!attribute theme_styling
    #   <p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>
    #   @return [String]
    # @!attribute organization_logo_s3_location
    #   <p>The organization logo that appears on the streaming application catalog page.</p>
    #   @return [Types::S3Location]
    # @!attribute favicon_s3_location
    #   <p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>
    #   @return [Types::S3Location]
    class CreateThemeForStackRequest < Struct.new(
      nil,
      :stack_name,
      :footer_links,
      :title_text,
      :theme_styling,
      :organization_logo_s3_location,
      :favicon_s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute theme
    #   <p> The theme object that contains the metadata of the custom branding.</p>
    #   @return [Types::Theme]
    class CreateThemeForStackResult < Struct.new(
      nil,
      :theme,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute existing_image_name
    #   <p>The name of the image to update.</p>
    #   @return [String]
    # @!attribute new_image_name
    #   <p>The name of the new image. The name must be unique within the AWS account and Region.</p>
    #   @return [String]
    # @!attribute new_image_description
    #   <p>The description to display for the new image.</p>
    #   @return [String]
    # @!attribute new_image_display_name
    #   <p>The name to display for the new image.</p>
    #   @return [String]
    # @!attribute new_image_tags
    #   <p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>For more information about tags, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute dry_run
    #   <p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>
    #   @return [Boolean]
    class CreateUpdatedImageRequest < Struct.new(
      nil,
      :existing_image_name,
      :new_image_name,
      :new_image_description,
      :new_image_display_name,
      :new_image_tags,
      :dry_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image
    #   <p>Describes an image.</p>
    #   @return [Types::Image]
    # @!attribute can_update_image
    #   <p>Indicates whether a new image can be created.</p>
    #   @return [Boolean]
    class CreateUpdatedImageResult < Struct.new(
      nil,
      :image,
      :can_update_image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateUsageReportSubscriptionRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket where generated reports are stored.</p>
    #            <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
    #               configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
    #               unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
    #               uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, 
    #               when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for generating usage reports.</p>
    #   @return [String]
    class CreateUsageReportSubscriptionResult < Struct.new(
      nil,
      :s3_bucket_name,
      :schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays.</p>
    #            </note>
    #   @return [String]
    # @!attribute message_action
    #   <p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>
    #            <note>
    #               <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>
    #            </note>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name, or given name, of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name, or surname, of the user.</p>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL. </p>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      nil,
      :user_name,
      :message_action,
      :first_name,
      :last_name,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateUserResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class DeleteAppBlockBuilderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAppBlockBuilderResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app block.</p>
    #   @return [String]
    class DeleteAppBlockRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteAppBlockResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_name
    #   <p>The name of the directory configuration.</p>
    #   @return [String]
    class DeleteDirectoryConfigRequest < Struct.new(
      nil,
      :directory_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDirectoryConfigResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    class DeleteEntitlementRequest < Struct.new(
      nil,
      :name,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEntitlementResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    class DeleteFleetRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #   @return [String]
    class DeleteImageBuilderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #   @return [Types::ImageBuilder]
    class DeleteImageBuilderResult < Struct.new(
      nil,
      :image_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #   @return [String]
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>
    #   @return [String]
    class DeleteImagePermissionsRequest < Struct.new(
      nil,
      :name,
      :shared_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteImagePermissionsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    class DeleteImageRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image
    #   <p>Information about the image.</p>
    #   @return [Types::Image]
    class DeleteImageResult < Struct.new(
      nil,
      :image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the stack.</p>
    #   @return [String]
    class DeleteStackRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteStackResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for the theme.</p>
    #   @return [String]
    class DeleteThemeForStackRequest < Struct.new(
      nil,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteThemeForStackResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUsageReportSubscriptionRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUsageReportSubscriptionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      nil,
      :user_name,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUserResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute app_block_builder_name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeAppBlockBuilderAppBlockAssociationsRequest < Struct.new(
      nil,
      :app_block_arn,
      :app_block_builder_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder_app_block_associations
    #   <p>This list of app block builders associated with app blocks.</p>
    #   @return [Array<Types::AppBlockBuilderAppBlockAssociation>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeAppBlockBuilderAppBlockAssociationsResult < Struct.new(
      nil,
      :app_block_builder_app_block_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the app block builders.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results. The maximum value is 25.</p>
    #   @return [Integer]
    class DescribeAppBlockBuildersRequest < Struct.new(
      nil,
      :names,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builders
    #   <p>The list that describes one or more app block builders.</p>
    #   @return [Array<Types::AppBlockBuilder>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeAppBlockBuildersResult < Struct.new(
      nil,
      :app_block_builders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The ARNs of the app blocks.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    class DescribeAppBlocksRequest < Struct.new(
      nil,
      :arns,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_blocks
    #   <p>The app blocks in the list.</p>
    #   @return [Array<Types::AppBlock>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeAppBlocksResult < Struct.new(
      nil,
      :app_blocks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeApplicationFleetAssociationsRequest < Struct.new(
      nil,
      :fleet_name,
      :application_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_fleet_associations
    #   <p>The application fleet associations in the list.</p>
    #   @return [Array<Types::ApplicationFleetAssociation>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeApplicationFleetAssociationsResult < Struct.new(
      nil,
      :application_fleet_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The ARNs for the applications.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    class DescribeApplicationsRequest < Struct.new(
      nil,
      :arns,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>The applications in the list.</p>
    #   @return [Array<Types::Application>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeApplicationsResult < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_names
    #   <p>The directory names.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeDirectoryConfigsRequest < Struct.new(
      nil,
      :directory_names,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_configs
    #   <p>Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response. </p>
    #   @return [Array<Types::DirectoryConfig>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeDirectoryConfigsResult < Struct.new(
      nil,
      :directory_configs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    class DescribeEntitlementsRequest < Struct.new(
      nil,
      :name,
      :stack_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p>The entitlements.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this
    #               operation.</p>
    #   @return [String]
    class DescribeEntitlementsResult < Struct.new(
      nil,
      :entitlements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the fleets to describe.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeFleetsRequest < Struct.new(
      nil,
      :names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleets
    #   <p>Information about the fleets.</p>
    #   @return [Array<Types::Fleet>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeFleetsResult < Struct.new(
      nil,
      :fleets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the image builders to describe.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeImageBuildersRequest < Struct.new(
      nil,
      :names,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_builders
    #   <p>Information about the image builders.</p>
    #   @return [Array<Types::ImageBuilder>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeImageBuildersResult < Struct.new(
      nil,
      :image_builders,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private image for which to describe permissions. The image must be one that you own. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute shared_aws_account_ids
    #   <p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeImagePermissionsRequest < Struct.new(
      nil,
      :name,
      :max_results,
      :shared_aws_account_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #   @return [String]
    # @!attribute shared_image_permissions_list
    #   <p>The permissions for a private image that you own. </p>
    #   @return [Array<Types::SharedImagePermissions>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeImagePermissionsResult < Struct.new(
      nil,
      :name,
      :shared_image_permissions_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the public or private images to describe.</p>
    #   @return [Array<String>]
    # @!attribute arns
    #   <p>The ARNs of the public, private, and shared images to describe.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of image (public, private, or shared) to describe. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    class DescribeImagesRequest < Struct.new(
      nil,
      :names,
      :arns,
      :type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute images
    #   <p>Information about the images.</p>
    #   @return [Array<Types::Image>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeImagesResult < Struct.new(
      nil,
      :images,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack. This value is case-sensitive.</p>
    #   @return [String]
    # @!attribute fleet_name
    #   <p>The name of the fleet. This value is case-sensitive.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>
    #   @return [Integer]
    # @!attribute authentication_type
    #   <p>The authentication method. Specify <code>API</code> for a user
    #               authenticated using a streaming URL or <code>SAML</code> for a SAML federated user. 
    #               The default is to authenticate users using a streaming URL.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier for the instance hosting the session.</p>
    #   @return [String]
    class DescribeSessionsRequest < Struct.new(
      nil,
      :stack_name,
      :fleet_name,
      :user_id,
      :next_token,
      :limit,
      :authentication_type,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   <p>Information about the streaming sessions.</p>
    #   @return [Array<Types::Session>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeSessionsResult < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names of the stacks to describe.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeStacksRequest < Struct.new(
      nil,
      :names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stacks
    #   <p>Information about the stacks.</p>
    #   @return [Array<Types::Stack>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeStacksResult < Struct.new(
      nil,
      :stacks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for the theme.</p>
    #   @return [String]
    class DescribeThemeForStackRequest < Struct.new(
      nil,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute theme
    #   <p> The theme object that contains the metadata of the custom branding.</p>
    #   @return [Types::Theme]
    class DescribeThemeForStackResult < Struct.new(
      nil,
      :theme,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeUsageReportSubscriptionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute usage_report_subscriptions
    #   <p>Information about the usage report subscription.</p>
    #   @return [Array<Types::UsageReportSubscription>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeUsageReportSubscriptionsResult < Struct.new(
      nil,
      :usage_report_subscriptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeUserStackAssociationsRequest < Struct.new(
      nil,
      :stack_name,
      :user_name,
      :authentication_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_stack_associations
    #   <p>The UserStackAssociation objects.</p>
    #   @return [Array<Types::UserStackAssociation>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeUserStackAssociationsResult < Struct.new(
      nil,
      :user_stack_associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_type
    #   <p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class DescribeUsersRequest < Struct.new(
      nil,
      :authentication_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>Information about users in the user pool.</p>
    #   @return [Array<Types::User>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class DescribeUsersResult < Struct.new(
      nil,
      :users,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #   @return [Array<String>]
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #   @return [Types::ServiceAccountCredentials]
    # @!attribute created_time
    #   <p>The time the directory configuration was created.</p>
    #   @return [Time]
    # @!attribute certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #               Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #               Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #               domain password if certificate-based authentication is unsuccessful, or to unlock a
    #               desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #               authentication, but does not allow users to log in using their AD domain password. Users
    #               will be disconnected to re-authenticate using certificates.</p>
    #   @return [Types::CertificateBasedAuthProperties]
    class DirectoryConfig < Struct.new(
      nil,
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      :created_time,
      :certificate_based_auth_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #   @return [String]
    class DisableUserRequest < Struct.new(
      nil,
      :user_name,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisableUserResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute app_block_builder_name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class DisassociateAppBlockBuilderAppBlockRequest < Struct.new(
      nil,
      :app_block_arn,
      :app_block_builder_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateAppBlockBuilderAppBlockResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    class DisassociateApplicationFleetRequest < Struct.new(
      nil,
      :fleet_name,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateApplicationFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute application_identifier
    #   <p>The identifier of the application to remove from the entitlement.</p>
    #   @return [String]
    class DisassociateApplicationFromEntitlementRequest < Struct.new(
      nil,
      :stack_name,
      :entitlement_name,
      :application_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateApplicationFromEntitlementResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #   @return [String]
    class DisassociateFleetRequest < Struct.new(
      nil,
      :fleet_name,
      :stack_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration information required to join fleets and image builders to Microsoft Active Directory domains.</p>
    # @!attribute directory_name
    #   <p>The fully qualified name of the directory (for example, corp.example.com).</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_name
    #   <p>The distinguished name of the organizational unit for computer accounts.</p>
    #   @return [String]
    class DomainJoinInfo < Struct.new(
      nil,
      :directory_name,
      :organizational_unit_distinguished_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a "user does not exist" error message displays. </p>
    #            </note>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user. You must specify USERPOOL.</p>
    #   @return [String]
    class EnableUserRequest < Struct.new(
      nil,
      :user_name,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class EnableUserResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The application associated to an entitlement. Access is controlled based on user attributes.</p>
    # @!attribute application_identifier
    #   <p>The identifier of the application.</p>
    #   @return [String]
    class EntitledApplication < Struct.new(
      nil,
      :application_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an entitlement. Entitlements control access to specific applications within
    #             a stack, based on user attributes. Entitlements apply to SAML 2.0 federated user
    #             identities. Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
    #             applications in a stack. Entitlements don't apply to the desktop stream view
    #             application, or to applications managed by a dynamic app provider using the Dynamic
    #             Application Framework.</p>
    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #   @return [String]
    # @!attribute app_visibility
    #   <p>Specifies whether all or selected apps are entitled.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #   @return [Array<Types::EntitlementAttribute>]
    # @!attribute created_time
    #   <p>The time when the entitlement was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time when the entitlement was last modified.</p>
    #   @return [Time]
    class Entitlement < Struct.new(
      nil,
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      :created_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entitlement already exists.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class EntitlementAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attribute associated with an entitlement. Application entitlements work by matching
    #             a supported SAML 2.0 attribute name to a value when a user identity federates to an
    #             Amazon AppStream 2.0 SAML application.</p>
    # @!attribute name
    #   <p>A supported AWS IAM SAML <code>PrincipalTag</code> attribute that is matched to the
    #               associated value when a user identity federates into an Amazon AppStream 2.0 SAML
    #               application.</p>
    #            <p>The following are valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>roles</p>
    #               </li>
    #               <li>
    #                  <p>department </p>
    #               </li>
    #               <li>
    #                  <p>organization </p>
    #               </li>
    #               <li>
    #                  <p>groups </p>
    #               </li>
    #               <li>
    #                  <p>title </p>
    #               </li>
    #               <li>
    #                  <p>costCenter </p>
    #               </li>
    #               <li>
    #                  <p>userType</p>
    #               </li>
    #            </ul>
    #            <p> </p>
    #   @return [String]
    # @!attribute value
    #   <p>A value that is matched to a supported SAML attribute name when a user identity
    #               federates into an Amazon AppStream 2.0 SAML application. </p>
    #   @return [String]
    class EntitlementAttribute < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The entitlement can't be found.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class EntitlementNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error details.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the streaming session.</p>
    #   @return [String]
    class ExpireSessionRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ExpireSessionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a fleet.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the fleet.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN for the public, private, or shared image.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute fleet_type
    #   <p>The fleet type.</p>
    #            <dl>
    #               <dt>ALWAYS_ON</dt>
    #               <dd>
    #                  <p>Provides users with instant-on access to their apps.
    #                           You are charged for all running instances in your fleet, even if no users are streaming apps.</p>
    #               </dd>
    #               <dt>ON_DEMAND</dt>
    #               <dd>
    #                  <p>Provide users with access to applications after they connect, which takes one to two minutes.
    #                           You are charged for instance streaming when users are connected and a
    #                           small hourly fee for instances that are not streaming apps.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute compute_capacity_status
    #   <p>The capacity status for the fleet.</p>
    #   @return [Types::ComputeCapacityStatus]
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. </p>
    #            <p>Specify a value between 600 and 360000.</p>
    #   @return [Integer]
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.</p>
    #            <p>Specify a value between 60 and 36000.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The current state for the fleet.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet.</p>
    #   @return [Types::VpcConfig]
    # @!attribute created_time
    #   <p>The time the fleet was created.</p>
    #   @return [Time]
    # @!attribute fleet_errors
    #   <p>The fleet errors.</p>
    #   @return [Array<Types::FleetError>]
    # @!attribute enable_default_internet_access
    #   <p>Indicates whether default internet access is enabled for the fleet.</p>
    #   @return [Boolean]
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    #   @return [Types::DomainJoinInfo]
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected.</p>
    #            <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>
    #            <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #            <p>The default value is <code>APP</code>.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the fleet.</p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for the fleet.</p>
    #   @return [Integer]
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings associated with the fleet.</p>
    #   @return [Array<String>]
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>
    #   @return [Types::S3Location]
    # @!attribute max_sessions_per_instance
    #   <p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>
    #   @return [Integer]
    class Fleet < Struct.new(
      nil,
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
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      :max_sessions_per_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a fleet error.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class FleetError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an image.</p>
    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the image.</p>
    #   @return [String]
    # @!attribute base_image_arn
    #   <p>The ARN of the image from which this image was created.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The image name to display.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The image starts in the <code>PENDING</code> state. If image creation succeeds, the
    #               state is <code>AVAILABLE</code>. If image creation fails, the state is <code>FAILED</code>.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>Indicates whether the image is public or private.</p>
    #   @return [String]
    # @!attribute image_builder_supported
    #   <p>Indicates whether an image builder can be launched from this image.</p>
    #   @return [Boolean]
    # @!attribute image_builder_name
    #   <p>The name of the image builder that was used to create the private image. If the image is shared, copied, or updated by using Managed Image Updates, this value is null.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute state_change_reason
    #   <p>The reason why the last state change occurred.</p>
    #   @return [Types::ImageStateChangeReason]
    # @!attribute applications
    #   <p>The applications associated with the image.</p>
    #   @return [Array<Types::Application>]
    # @!attribute created_time
    #   <p>The time the image was created.</p>
    #   @return [Time]
    # @!attribute public_base_image_released_date
    #   <p>The release date of the public base image. 
    #               For private images, this date is the release date of the base image from which the image was created.</p>
    #   @return [Time]
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for instances that are launched from this image. </p>
    #   @return [String]
    # @!attribute image_permissions
    #   <p>The permissions to provide to the destination AWS account for the specified image.</p>
    #   @return [Types::ImagePermissions]
    # @!attribute image_errors
    #   <p>Describes the errors that are returned when a new image can't be created.</p>
    #   @return [Array<Types::ResourceError>]
    # @!attribute latest_appstream_agent_version
    #   <p>Indicates whether the image is using the latest AppStream 2.0 agent version or not.</p>
    #   @return [String]
    # @!attribute supported_instance_families
    #   <p>The supported instances families that determine which image a customer can use when the customer launches a fleet or image builder. The following instances families are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>General Purpose</p>
    #               </li>
    #               <li>
    #                  <p>Compute Optimized</p>
    #               </li>
    #               <li>
    #                  <p>Memory Optimized</p>
    #               </li>
    #               <li>
    #                  <p>Graphics</p>
    #               </li>
    #               <li>
    #                  <p>Graphics Design</p>
    #               </li>
    #               <li>
    #                  <p>Graphics Pro</p>
    #               </li>
    #               <li>
    #                  <p>Graphics G4</p>
    #               </li>
    #               <li>
    #                  <p>Graphics G5</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute dynamic_app_providers_enabled
    #   <p>Indicates whether dynamic app providers are enabled within an AppStream 2.0 image or not.</p>
    #   @return [String]
    # @!attribute image_shared_with_others
    #   <p>Indicates whether the image is shared with another account ID.</p>
    #   @return [String]
    class Image < Struct.new(
      nil,
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
      :image_permissions,
      :image_errors,
      :latest_appstream_agent_version,
      :supported_instance_families,
      :dynamic_app_providers_enabled,
      :image_shared_with_others,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a virtual machine that is used to create an image. </p>
    # @!attribute name
    #   <p>The name of the image builder.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN for the image builder.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the image from which this builder was created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The image builder name to display.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration of the image builder.</p>
    #   @return [Types::VpcConfig]
    # @!attribute instance_type
    #   <p>The instance type for the image builder. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the image builder.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the image builder.</p>
    #   @return [String]
    # @!attribute state_change_reason
    #   <p>The reason why the last state change occurred.</p>
    #   @return [Types::ImageBuilderStateChangeReason]
    # @!attribute created_time
    #   <p>The time stamp when the image builder was created.</p>
    #   @return [Time]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the image builder.</p>
    #   @return [Boolean]
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>
    #   @return [Types::DomainJoinInfo]
    # @!attribute network_access_configuration
    #   <p>Describes the network details of the fleet or image builder instance.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute image_builder_errors
    #   <p>The image builder errors.</p>
    #   @return [Array<Types::ResourceError>]
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent that is currently being used by the image builder. </p>
    #   @return [String]
    # @!attribute access_endpoints
    #   <p>The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute latest_appstream_agent_version
    #   <p>Indicates whether the image builder is using the latest AppStream 2.0 agent version or not.</p>
    #   @return [String]
    class ImageBuilder < Struct.new(
      nil,
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
      :access_endpoints,
      :latest_appstream_agent_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reason why the last image builder state change occurred.</p>
    # @!attribute code
    #   <p>The state change reason code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The state change reason message.</p>
    #   @return [String]
    class ImageBuilderStateChangeReason < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the permissions for an image. </p>
    # @!attribute allow_fleet
    #   <p>Indicates whether the image can be used for a fleet.</p>
    #   @return [Boolean]
    # @!attribute allow_image_builder
    #   <p>Indicates whether the image can be used for an image builder.</p>
    #   @return [Boolean]
    class ImagePermissions < Struct.new(
      nil,
      :allow_fleet,
      :allow_image_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the reason why the last image state change occurred.</p>
    # @!attribute code
    #   <p>The state change reason code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The state change reason message.</p>
    #   @return [String]
    class ImageStateChangeReason < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The image can't be updated because it's not compatible for updates.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class IncompatibleImageException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource cannot be created because your AWS account is suspended. For assistance, contact AWS Support. </p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class InvalidAccountStatusException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates an incorrect combination of parameters, or a missing parameter.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified role is invalid.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class InvalidRoleException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the error that is returned when a usage report can't be generated.</p>
    # @!attribute error_code
    #   <p>The error code for the error that is returned when a usage report can't be generated.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the error that is returned when a usage report can't be generated.</p>
    #   @return [String]
    class LastReportGenerationExecutionError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested limit exceeds the permitted limit for an account.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListAssociatedFleetsRequest < Struct.new(
      nil,
      :stack_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The name of the fleet.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListAssociatedFleetsResult < Struct.new(
      nil,
      :names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet_name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>
    #   @return [String]
    class ListAssociatedStacksRequest < Struct.new(
      nil,
      :fleet_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The name of the stack.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>
    #   @return [String]
    class ListAssociatedStacksResult < Struct.new(
      nil,
      :names,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute entitlement_name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum size of each page of results.</p>
    #   @return [Integer]
    class ListEntitledApplicationsRequest < Struct.new(
      nil,
      :stack_name,
      :entitlement_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitled_applications
    #   <p>The entitled applications.</p>
    #   @return [Array<Types::EntitledApplication>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #   @return [String]
    class ListEntitledApplicationsResult < Struct.new(
      nil,
      :entitled_applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The information about the tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the network details of the fleet or image builder instance.</p>
    # @!attribute eni_private_ip_address
    #   <p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>
    #   @return [String]
    # @!attribute eni_id
    #   <p>The resource identifier of the elastic network interface that is attached to instances in your VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>
    #   @return [String]
    class NetworkAccessConfiguration < Struct.new(
      nil,
      :eni_private_ip_address,
      :eni_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attempted operation is not permitted.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AppStream 2.0 can’t process the request right now because the Describe calls from your AWS account are being throttled by Amazon EC2. Try again later.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class RequestLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource already exists.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resource error.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    # @!attribute error_timestamp
    #   <p>The time the error occurred.</p>
    #   @return [Time]
    class ResourceError < Struct.new(
      nil,
      :error_code,
      :error_message,
      :error_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource exists and is not in use, but isn't available.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class ResourceNotAvailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   <p>The error message in the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the S3 location.</p>
    # @!attribute s3_bucket
    #   <p>The S3 bucket of the S3 object.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The S3 key of the S3 object.</p>
    #            <p>This is required when used for the following:</p>
    #            <ul>
    #               <li>
    #                  <p>IconS3Location (Actions: CreateApplication and UpdateApplication)</p>
    #               </li>
    #               <li>
    #                  <p>SessionScriptS3Location (Actions: CreateFleet and UpdateFleet)</p>
    #               </li>
    #               <li>
    #                  <p>ScriptDetails (Actions: CreateAppBlock)</p>
    #               </li>
    #               <li>
    #                  <p>SourceS3Location when creating an app block with <code>CUSTOM</code> PackagingType (Actions:
    #                       CreateAppBlock)</p>
    #               </li>
    #               <li>
    #                  <p>SourceS3Location when creating an app block with <code>APPSTREAM2</code> PackagingType, and
    #                       using an existing application package (VHD file). In this case,
    #                           <code>S3Key</code> refers to the VHD file. If a new application package is
    #                       required, then <code>S3Key</code> is not required. (Actions:
    #                       CreateAppBlock)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the details of the script.</p>
    # @!attribute script_s3_location
    #   <p>The S3 object location for the script.</p>
    #   @return [Types::S3Location]
    # @!attribute executable_path
    #   <p>The run path for the script.</p>
    #   @return [String]
    # @!attribute executable_parameters
    #   <p>The runtime parameters passed to the run path for the script.</p>
    #   @return [String]
    # @!attribute timeout_in_seconds
    #   <p>The run timeout, in seconds, for the script.</p>
    #   @return [Integer]
    class ScriptDetails < Struct.new(
      nil,
      :script_s3_location,
      :executable_path,
      :executable_parameters,
      :timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    # @!attribute account_name
    #   <p>The user name of the account. This account must have the following privileges: create computer objects, 
    #               join computers to the domain, and change/reset the password on descendant computer objects for the 
    #               organizational units specified.</p>
    #   @return [String]
    # @!attribute account_password
    #   <p>The password for the account.</p>
    #   @return [String]
    class ServiceAccountCredentials < Struct.new(
      nil,
      :account_name,
      :account_password,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a streaming session.</p>
    # @!attribute id
    #   <p>The identifier of the streaming session.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user for whom the session was created.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack for the streaming session.</p>
    #   @return [String]
    # @!attribute fleet_name
    #   <p>The name of the fleet for the streaming session.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the streaming session.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>Specifies whether a user is connected to the streaming session.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The time when a streaming instance is dedicated for the user.</p>
    #   @return [Time]
    # @!attribute max_expiration_time
    #   <p>The time when the streaming session is set to expire. This time is based on the <code>MaxUserDurationinSeconds</code> value, which determines the maximum length of time that a streaming session can run. A streaming session might end earlier than the time specified in <code>SessionMaxExpirationTime</code>, when the <code>DisconnectTimeOutInSeconds</code> elapses or the user chooses to end his or her session. If the <code>DisconnectTimeOutInSeconds</code> elapses, or the user chooses to end his or her session, the streaming instance is terminated and the streaming session ends.</p>
    #   @return [Time]
    # @!attribute authentication_type
    #   <p>The authentication method. The user is authenticated using a streaming URL
    #               (<code>API</code>) or SAML 2.0 federation (<code>SAML</code>).</p>
    #   @return [String]
    # @!attribute network_access_configuration
    #   <p>The network details for the streaming session.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute instance_id
    #   <p>The identifier for the instance hosting the session.</p>
    #   @return [String]
    class Session < Struct.new(
      nil,
      :id,
      :user_id,
      :stack_name,
      :fleet_name,
      :state,
      :connection_state,
      :start_time,
      :max_expiration_time,
      :authentication_type,
      :network_access_configuration,
      :instance_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the permissions that are available to the specified AWS account for a shared image.</p>
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account with which the image is shared.</p>
    #   @return [String]
    # @!attribute image_permissions
    #   <p>Describes the permissions for a shared image.</p>
    #   @return [Types::ImagePermissions]
    class SharedImagePermissions < Struct.new(
      nil,
      :shared_account_id,
      :image_permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a stack.</p>
    # @!attribute arn
    #   <p>The ARN of the stack.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time the stack was created.</p>
    #   @return [Time]
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #   @return [Array<Types::StorageConnector>]
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #   @return [String]
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #   @return [String]
    # @!attribute stack_errors
    #   <p>The errors for the stack.</p>
    #   @return [Array<Types::StackError>]
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.</p>
    #   @return [Array<Types::UserSetting>]
    # @!attribute application_settings
    #   <p>The persistent application settings for users of the stack.</p>
    #   @return [Types::ApplicationSettingsResponse]
    # @!attribute access_endpoints
    #   <p>The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints. </p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.</p>
    #   @return [Array<String>]
    # @!attribute streaming_experience_settings
    #   <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    #   @return [Types::StreamingExperienceSettings]
    class Stack < Struct.new(
      nil,
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
      :embed_host_domains,
      :streaming_experience_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a stack error.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class StackError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class StartAppBlockBuilderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder
    #   <p>Describes an app block builder.</p>
    #   @return [Types::AppBlockBuilder]
    class StartAppBlockBuilderResult < Struct.new(
      nil,
      :app_block_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    class StartFleetRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #   @return [String]
    # @!attribute appstream_agent_version
    #   <p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>
    #   @return [String]
    class StartImageBuilderRequest < Struct.new(
      nil,
      :name,
      :appstream_agent_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #   @return [Types::ImageBuilder]
    class StartImageBuilderResult < Struct.new(
      nil,
      :image_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the app block builder.</p>
    #   @return [String]
    class StopAppBlockBuilderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder
    #   <p>Describes an app block builder.</p>
    #   @return [Types::AppBlockBuilder]
    class StopAppBlockBuilderResult < Struct.new(
      nil,
      :app_block_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the fleet.</p>
    #   @return [String]
    class StopFleetRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopFleetResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image builder.</p>
    #   @return [String]
    class StopImageBuilderRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_builder
    #   <p>Information about the image builder.</p>
    #   @return [Types::ImageBuilder]
    class StopImageBuilderResult < Struct.new(
      nil,
      :image_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a connector that enables persistent storage for users.</p>
    # @!attribute connector_type
    #   <p>The type of storage connector.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The ARN of the storage connector.</p>
    #   @return [String]
    # @!attribute domains
    #   <p>The names of the domains for the account.</p>
    #   @return [Array<String>]
    # @!attribute domains_require_admin_consent
    #   <p>The OneDrive for Business domains where you require admin consent when users try to link their OneDrive account to AppStream 2.0. The attribute can only be specified when ConnectorType=ONE_DRIVE.</p>
    #   @return [Array<String>]
    class StorageConnector < Struct.new(
      nil,
      :connector_type,
      :resource_identifier,
      :domains,
      :domains_require_admin_consent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    # @!attribute preferred_protocol
    #   <p>The preferred protocol that you want to use while streaming your application.</p>
    #   @return [String]
    class StreamingExperienceSettings < Struct.new(
      nil,
      :preferred_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>
    #            <p>If you do not specify a value, the value is set to an empty string.</p>
    #            <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>
    #            <p>_ . : / = + \ - @</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The custom branding theme, which might include a custom logo, website links, and other branding to display to users.</p>
    # @!attribute stack_name
    #   <p>The stack that has the custom branding theme.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the theme.</p>
    #   @return [String]
    # @!attribute theme_title_text
    #   <p>The browser tab page title.</p>
    #   @return [String]
    # @!attribute theme_styling
    #   <p>The color that is used for the website links, text, buttons, and catalog page background.</p>
    #   @return [String]
    # @!attribute theme_footer_links
    #   <p>The website links that display in the catalog page footer.</p>
    #   @return [Array<Types::ThemeFooterLink>]
    # @!attribute theme_organization_logo_url
    #   <p>The URL of the logo that displays in the catalog page header.</p>
    #   @return [String]
    # @!attribute theme_favicon_url
    #   <p>The URL of the icon that displays at the top of a user's browser tab during streaming sessions.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time the theme was created.</p>
    #   @return [Time]
    class Theme < Struct.new(
      nil,
      :stack_name,
      :state,
      :theme_title_text,
      :theme_styling,
      :theme_footer_links,
      :theme_organization_logo_url,
      :theme_favicon_url,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The website links that display in the catalog page footer.</p>
    # @!attribute display_name
    #   <p>The name of the websites that display in the catalog page footer.</p>
    #   @return [String]
    # @!attribute footer_link_url
    #   <p>The URL of the websites that display in the catalog page footer.</p>
    #   @return [String]
    class ThemeFooterLink < Struct.new(
      nil,
      :display_name,
      :footer_link_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys for the tags to disassociate.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique name for the app block builder.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the app block builder.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the app block builder.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the app block builder.</p>
    #            <p>
    #               <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching the app block builder. The following instance
    #                   types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the app block builder.</p>
    #            <p>App block builders require that you specify at least two subnets in different availability
    #               zones.</p>
    #   @return [Types::VpcConfig]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the app block builder.</p>
    #   @return [Boolean]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To
    #               assume a role, the app block builder calls the AWS Security Token Service (STS)
    #               <code>AssumeRole</code> API operation and passes the ARN of the role to use. The
    #               operation creates a new session with temporary credentials. AppStream 2.0 retrieves the
    #               temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute attributes_to_delete
    #   <p>The attributes to delete from the app block builder.</p>
    #   @return [Array<String>]
    class UpdateAppBlockBuilderRequest < Struct.new(
      nil,
      :name,
      :description,
      :display_name,
      :platform,
      :instance_type,
      :vpc_config,
      :enable_default_internet_access,
      :iam_role_arn,
      :access_endpoints,
      :attributes_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute app_block_builder
    #   <p>Describes an app block builder.</p>
    #   @return [Types::AppBlockBuilder]
    class UpdateAppBlockBuilderResult < Struct.new(
      nil,
      :app_block_builder,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application. This name is visible to users when display name is not specified.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the application. This name is visible to users in the application catalog.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute icon_s3_location
    #   <p>The icon S3 location of the application.</p>
    #   @return [Types::S3Location]
    # @!attribute launch_path
    #   <p>The launch path of the application.</p>
    #   @return [String]
    # @!attribute working_directory
    #   <p>The working directory of the application.</p>
    #   @return [String]
    # @!attribute launch_parameters
    #   <p>The launch parameters of the application.</p>
    #   @return [String]
    # @!attribute app_block_arn
    #   <p>The ARN of the app block.</p>
    #   @return [String]
    # @!attribute attributes_to_delete
    #   <p>The attributes to delete for an application.</p>
    #   @return [Array<String>]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :name,
      :display_name,
      :description,
      :icon_s3_location,
      :launch_path,
      :working_directory,
      :launch_parameters,
      :app_block_arn,
      :attributes_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Describes an application in the application catalog.</p>
    #   @return [Types::Application]
    class UpdateApplicationResult < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_name
    #   <p>The name of the Directory Config object.</p>
    #   @return [String]
    # @!attribute organizational_unit_distinguished_names
    #   <p>The distinguished names of the organizational units for computer accounts.</p>
    #   @return [Array<String>]
    # @!attribute service_account_credentials
    #   <p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>
    #   @return [Types::ServiceAccountCredentials]
    # @!attribute certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity
    #               Provider (IdP) user identities to Active Directory domain-joined streaming instances.
    #               Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD
    #               domain password if certificate-based authentication is unsuccessful, or to unlock a
    #               desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based
    #               authentication, but does not allow users to log in using their AD domain password. Users
    #               will be disconnected to re-authenticate using certificates.</p>
    #   @return [Types::CertificateBasedAuthProperties]
    class UpdateDirectoryConfigRequest < Struct.new(
      nil,
      :directory_name,
      :organizational_unit_distinguished_names,
      :service_account_credentials,
      :certificate_based_auth_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_config
    #   <p>Information about the Directory Config object.</p>
    #   @return [Types::DirectoryConfig]
    class UpdateDirectoryConfigResult < Struct.new(
      nil,
      :directory_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the entitlement.</p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The name of the stack with which the entitlement is associated.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the entitlement.</p>
    #   @return [String]
    # @!attribute app_visibility
    #   <p>Specifies whether all or only selected apps are entitled.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>The attributes of the entitlement.</p>
    #   @return [Array<Types::EntitlementAttribute>]
    class UpdateEntitlementRequest < Struct.new(
      nil,
      :name,
      :stack_name,
      :description,
      :app_visibility,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement
    #   <p>The entitlement.</p>
    #   @return [Types::Entitlement]
    class UpdateEntitlementResult < Struct.new(
      nil,
      :entitlement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_name
    #   <p>The name of the image used to create the fleet.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The ARN of the public, private, or shared image to use.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A unique name for the fleet.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type to use when launching fleet instances. The following instance types are available:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.compute.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.3xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.6xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.memory.z1d.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-design.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-desktop.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g4dn.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics-pro.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g5.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.16xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.12xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6.24xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6.8xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.2xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.g6f.4xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.graphics.gr6f.4xlarge</p>
    #               </li>
    #            </ul>
    #            <p>The following instance types are available for Elastic fleets:</p>
    #            <ul>
    #               <li>
    #                  <p>stream.standard.small</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.medium</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.large</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.xlarge</p>
    #               </li>
    #               <li>
    #                  <p>stream.standard.2xlarge</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute compute_capacity
    #   <p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>
    #   @return [Types::ComputeCapacity]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>
    #   @return [Types::VpcConfig]
    # @!attribute max_user_duration_in_seconds
    #   <p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>
    #            <p>Specify a value between 600 and 432000.</p>
    #   @return [Integer]
    # @!attribute disconnect_timeout_in_seconds
    #   <p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>
    #            <p>Specify a value between 60 and 36000.</p>
    #   @return [Integer]
    # @!attribute delete_vpc_config
    #   <p>Deletes the VPC association for the specified fleet.</p>
    #   @deprecated
    #   @return [Boolean]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The fleet name to display.</p>
    #   @return [String]
    # @!attribute enable_default_internet_access
    #   <p>Enables or disables default internet access for the fleet.</p>
    #   @return [Boolean]
    # @!attribute domain_join_info
    #   <p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>
    #   @return [Types::DomainJoinInfo]
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected
    #               from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time
    #               interval begins. Users are notified before they are disconnected due to inactivity. If
    #               users try to reconnect to the streaming session before the time interval specified in
    #               <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their
    #               previous session. Users are considered idle when they stop providing keyboard or mouse
    #               input during their streaming session. File uploads and downloads, audio in, audio out,
    #               and pixels changing do not qualify as user activity. If users continue to be idle after
    #               the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are
    #               disconnected. </p>
    #            <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>
    #            <note>
    #               <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>
    #            </note>
    #   @return [Integer]
    # @!attribute attributes_to_delete
    #   <p>The fleet attributes to delete.</p>
    #   @return [Array<String>]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>
    #   @return [String]
    # @!attribute stream_view
    #   <p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>
    #            <p>The default value is <code>APP</code>.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>
    #   @return [String]
    # @!attribute max_concurrent_sessions
    #   <p>The maximum number of concurrent sessions for a fleet.</p>
    #   @return [Integer]
    # @!attribute usb_device_filter_strings
    #   <p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>
    #   @return [Array<String>]
    # @!attribute session_script_s3_location
    #   <p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets. </p>
    #   @return [Types::S3Location]
    # @!attribute max_sessions_per_instance
    #   <p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>
    #   @return [Integer]
    class UpdateFleetRequest < Struct.new(
      nil,
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
      :stream_view,
      :platform,
      :max_concurrent_sessions,
      :usb_device_filter_strings,
      :session_script_s3_location,
      :max_sessions_per_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fleet
    #   <p>Information about the fleet.</p>
    #   @return [Types::Fleet]
    class UpdateFleetResult < Struct.new(
      nil,
      :fleet,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private image.</p>
    #   @return [String]
    # @!attribute shared_account_id
    #   <p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>
    #   @return [String]
    # @!attribute image_permissions
    #   <p>The permissions for the image.</p>
    #   @return [Types::ImagePermissions]
    class UpdateImagePermissionsRequest < Struct.new(
      nil,
      :name,
      :shared_account_id,
      :image_permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateImagePermissionsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The stack name to display.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to display.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the stack.</p>
    #   @return [String]
    # @!attribute storage_connectors
    #   <p>The storage connectors to enable.</p>
    #   @return [Array<Types::StorageConnector>]
    # @!attribute delete_storage_connectors
    #   <p>Deletes the storage connectors currently enabled for the stack.</p>
    #   @deprecated
    #   @return [Boolean]
    # @!attribute redirect_url
    #   <p>The URL that users are redirected to after their streaming session ends.</p>
    #   @return [String]
    # @!attribute feedback_url
    #   <p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>
    #   @return [String]
    # @!attribute attributes_to_delete
    #   <p>The stack attributes to delete.</p>
    #   @return [Array<String>]
    # @!attribute user_settings
    #   <p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>
    #   @return [Array<Types::UserSetting>]
    # @!attribute application_settings
    #   <p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>
    #   @return [Types::ApplicationSettings]
    # @!attribute access_endpoints
    #   <p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute embed_host_domains
    #   <p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>
    #   @return [Array<String>]
    # @!attribute streaming_experience_settings
    #   <p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>
    #   @return [Types::StreamingExperienceSettings]
    class UpdateStackRequest < Struct.new(
      nil,
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
      :embed_host_domains,
      :streaming_experience_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack
    #   <p>Information about the stack.</p>
    #   @return [Types::Stack]
    class UpdateStackResult < Struct.new(
      nil,
      :stack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for the theme.</p>
    #   @return [String]
    # @!attribute footer_links
    #   <p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>
    #   @return [Array<Types::ThemeFooterLink>]
    # @!attribute title_text
    #   <p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>
    #   @return [String]
    # @!attribute theme_styling
    #   <p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>
    #   @return [String]
    # @!attribute organization_logo_s3_location
    #   <p>The organization logo that appears on the streaming application catalog page.</p>
    #   @return [Types::S3Location]
    # @!attribute favicon_s3_location
    #   <p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>
    #   @return [Types::S3Location]
    # @!attribute state
    #   <p>Specifies whether custom branding should be applied to catalog page or not.</p>
    #   @return [String]
    # @!attribute attributes_to_delete
    #   <p>The attributes to delete.</p>
    #   @return [Array<String>]
    class UpdateThemeForStackRequest < Struct.new(
      nil,
      :stack_name,
      :footer_links,
      :title_text,
      :theme_styling,
      :organization_logo_s3_location,
      :favicon_s3_location,
      :state,
      :attributes_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute theme
    #   <p> The theme object that contains the metadata of the custom branding.</p>
    #   @return [Types::Theme]
    class UpdateThemeForStackResult < Struct.new(
      nil,
      :theme,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes information about the usage report subscription.</p>
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket where generated reports are stored.</p>
    #            <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script
    #               configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is
    #               unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0
    #               uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, 
    #               when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>
    #   @return [String]
    # @!attribute schedule
    #   <p>The schedule for generating usage reports.</p>
    #   @return [String]
    # @!attribute last_generated_report_date
    #   <p>The time when the last usage report was generated.</p>
    #   @return [Time]
    # @!attribute subscription_errors
    #   <p>The errors that were returned if usage reports couldn't be generated.</p>
    #   @return [Array<Types::LastReportGenerationExecutionError>]
    class UsageReportSubscription < Struct.new(
      nil,
      :s3_bucket_name,
      :schedule,
      :last_generated_report_date,
      :subscription_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a user in the user pool.</p>
    # @!attribute arn
    #   <p>The ARN of the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The email address of the user.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #   @return [String]
    # @!attribute enabled
    #   <p>Specifies whether the user in the user pool is enabled.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the user in the user pool. The status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>UNCONFIRMED – The user is created but not confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>CONFIRMED – The user is confirmed.</p>
    #               </li>
    #               <li>
    #                  <p>ARCHIVED – The user is no longer active.</p>
    #               </li>
    #               <li>
    #                  <p>COMPROMISED – The user is disabled because of a potential security threat.</p>
    #               </li>
    #               <li>
    #                  <p>UNKNOWN – The user status is not known.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name, or given name, of the user.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name, or surname, of the user.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time the user was created in the user pool.</p>
    #   @return [Time]
    # @!attribute authentication_type
    #   <p>The authentication type for the user.</p>
    #   @return [String]
    class User < Struct.new(
      nil,
      :arn,
      :user_name,
      :enabled,
      :status,
      :first_name,
      :last_name,
      :created_time,
      :authentication_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an action and whether the action is enabled or disabled for users during their streaming sessions.</p>
    # @!attribute action
    #   <p>The action that is enabled or disabled.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>Indicates whether the action is enabled or disabled.</p>
    #   @return [String]
    # @!attribute maximum_length
    #   <p>Specifies the number of characters that can be copied by end users from the local device to the remote session, and to the local device from the remote session.</p>
    #            <p>This can be specified only for the <code>CLIPBOARD_COPY_FROM_LOCAL_DEVICE</code> and <code>CLIPBOARD_COPY_TO_LOCAL_DEVICE</code> actions.</p>
    #            <p>This defaults to 20,971,520 (20 MB) when unspecified and the permission is <code>ENABLED</code>. This can't be specified when the permission is <code>DISABLED</code>. </p>
    #            <p>The value can be between 1 and 20,971,520 (20 MB).</p>
    #   @return [Integer]
    class UserSetting < Struct.new(
      nil,
      :action,
      :permission,
      :maximum_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a user in the user pool and the associated stack.</p>
    # @!attribute stack_name
    #   <p>The name of the stack that is associated with the user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The email address of the user who is associated with the stack.</p>
    #            <note>
    #               <p>Users' email addresses are case-sensitive.</p>
    #            </note>
    #   @return [String]
    # @!attribute authentication_type
    #   <p>The authentication type for the user.</p>
    #   @return [String]
    # @!attribute send_email_notification
    #   <p>Specifies whether a welcome email is sent to a user after the user is created in the user pool.</p>
    #   @return [Boolean]
    class UserStackAssociation < Struct.new(
      nil,
      :stack_name,
      :user_name,
      :authentication_type,
      :send_email_notification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the error that is returned when a user can’t be associated with or disassociated from a stack. </p>
    # @!attribute user_stack_association
    #   <p>Information about the user and associated stack.</p>
    #   @return [Types::UserStackAssociation]
    # @!attribute error_code
    #   <p>The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>
    #   @return [String]
    class UserStackAssociationError < Struct.new(
      nil,
      :user_stack_association,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes VPC configuration information for fleets and image builders.</p>
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance. Fleet instances use one or more subnets. Image builder instances use one subnet.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The identifiers of the security groups for the fleet or image builder.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
