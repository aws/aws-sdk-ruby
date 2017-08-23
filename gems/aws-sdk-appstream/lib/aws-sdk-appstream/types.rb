# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppStream
  module Types

    # An entry for a single application in the application catalog.
    #
    # @!attribute [rw] name
    #   The unique identifier for the application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the application shown to the end users.
    #   @return [String]
    #
    # @!attribute [rw] icon_url
    #   The URL for the application icon. This URL may be time-limited.
    #   @return [String]
    #
    # @!attribute [rw] launch_path
    #   The path to the application executable in the instance.
    #   @return [String]
    #
    # @!attribute [rw] launch_parameters
    #   A list of arguments that are passed to the application at launch.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   If there is a problem, an application can be disabled after image
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

    # @note When making an API call, you may pass AssociateFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet_name: "String", # required
    #         stack_name: "String", # required
    #       }
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet to associate.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack to which the fleet is associated.
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

    # The capacity configuration for the fleet.
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

    # The capacity information for the fleet.
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
    #   The number of instances that are being used for streaming.
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
    #   The fully qualified name of the directory, such as corp.example.com
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The list of the distinguished names of organizational units to place
    #   computer accounts in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The *AccountName* and *AccountPassword* values for the service
    #   account, which are used by the streaming instance to connect to the
    #   directory.
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
    #   Directory configuration details.
    #   @return [Types::DirectoryConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateDirectoryConfigResult AWS API Documentation
    #
    class CreateDirectoryConfigResult < Struct.new(
      :directory_config)
      include Aws::Structure
    end

    # Contains the parameters for the new fleet to create.
    #
    # @note When making an API call, you may pass CreateFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         image_name: "String", # required
    #         instance_type: "String", # required
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
    #   A unique identifier for the fleet.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   Unique name of the image used by the fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of compute resources for the fleet. Fleet
    #   instances are launched from this instance type. Available instance
    #   types are:
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
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity
    #   The parameters for the capacity allocated to the fleet.
    #   @return [Types::ComputeCapacity]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the fleet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time for which a streaming session can run. The input
    #   can be any numeric value in seconds between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended. If a user who got disconnected reconnects within this timeout
    #   interval, the user is connected back to their previous session. The
    #   input can be any numeric value in seconds between 60 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   The description of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The *DirectoryName* and *OrganizationalUnitDistinguishedName*
    #   values, which are used to join domains for the AppStream 2.0
    #   streaming instances.
    #   @return [Types::DomainJoinInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleetRequest AWS API Documentation
    #
    class CreateFleetRequest < Struct.new(
      :name,
      :image_name,
      :instance_type,
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
    #   The details for the created fleet.
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateFleetResult AWS API Documentation
    #
    class CreateFleetResult < Struct.new(
      :fleet)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateStackRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         description: "Description",
    #         display_name: "DisplayName",
    #         storage_connectors: [
    #           {
    #             connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS
    #             resource_identifier: "ResourceIdentifier",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The unique identifier for this stack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to be enabled for the stack.
    #   @return [Array<Types::StorageConnector>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/CreateStackRequest AWS API Documentation
    #
    class CreateStackRequest < Struct.new(
      :name,
      :description,
      :display_name,
      :storage_connectors)
      include Aws::Structure
    end

    # @!attribute [rw] stack
    #   The details for the created stack.
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
    #   The stack for which the URL is generated.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The fleet for which the URL is generated.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   A unique user ID for whom the URL is generated.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The ID of the application that must be launched after the session
    #   starts.
    #   @return [String]
    #
    # @!attribute [rw] validity
    #   The duration up to which the URL returned by this action is valid.
    #   The input can be any numeric value in seconds between 1 and 604800
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] session_context
    #   The sessionContext of the streaming URL.
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
    #   Elapsed seconds after the Unix epoch, when this URL expires.
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
    #   The name of the directory configuration to be deleted.
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
    #   The name of the fleet to be deleted.
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

    # @note When making an API call, you may pass DeleteStackRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the stack to delete.
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
    #   A specific list of directory names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The size of each page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The DescribeDirectoryConfigsResult.NextToken from a previous call to
    #   DescribeDirectoryConfigs. If this is the first call, pass null.
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
    #   The list of directory configurations.
    #   @return [Array<Types::DirectoryConfig>]
    #
    # @!attribute [rw] next_token
    #   If not null, more results are available. To retrieve the next set of
    #   items, pass this value for the NextToken parameter in a subsequent
    #   call to DescribeDirectoryConfigs.
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
    #   The fleet names to describe. Use null to describe all the fleets for
    #   the AWS account.
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
    #   The list of fleet details.
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

    # @note When making an API call, you may pass DescribeImagesRequest
    #   data as a hash:
    #
    #       {
    #         names: ["String"],
    #       }
    #
    # @!attribute [rw] names
    #   A specific list of images to describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagesRequest AWS API Documentation
    #
    class DescribeImagesRequest < Struct.new(
      :names)
      include Aws::Structure
    end

    # @!attribute [rw] images
    #   The list of images.
    #   @return [Array<Types::Image>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/DescribeImagesResult AWS API Documentation
    #
    class DescribeImagesResult < Struct.new(
      :images)
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
    #   The name of the stack for which to list sessions.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet for which to list sessions.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user for whom to list sessions. Use null to describe all the
    #   sessions for the stack and fleet.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results for
    #   this operation. If this value is null, it retrieves the first page.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The size of each page of results. The default value is 20 and the
    #   maximum supported value is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method of the user. It can be `API` for a user
    #   authenticated using a streaming URL, or `SAML` for a SAML federated
    #   user. If an authentication type is not provided, the operation
    #   defaults to users authenticated using a streaming URL.
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
    #   The list of streaming sessions.
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
    #   The stack names to describe. Use null to describe all the stacks for
    #   the AWS account.
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
    #   The list of stack details.
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

    # Full directory configuration details, which are used to join domains
    # for the AppStream 2.0 streaming instances.
    #
    # @!attribute [rw] directory_name
    #   The fully qualified name of the directory, such as corp.example.com
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The list of the distinguished names of organizational units in which
    #   to place computer accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The *AccountName* and *AccountPassword* of the service account, to
    #   be used by the streaming instance to connect to the directory.
    #   @return [Types::ServiceAccountCredentials]
    #
    # @!attribute [rw] created_time
    #   The time stamp when the directory configuration was created within
    #   AppStream 2.0.
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
    #   The name of the fleet to disassociate.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack with which the fleet is associated.
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

    # The *DirectoryName* and *OrganizationalUnitDistinguishedName* values,
    # which are used to join domains for the AppStream 2.0 streaming
    # instances.
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
    #   The fully qualified name of the directory, such as corp.example.com
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_name
    #   The distinguished name of the organizational unit to place the
    #   computer account in.
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
    #   The unique identifier of the streaming session to be stopped.
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
    #   The name displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] image_name
    #   The image used by the fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of compute resources for the fleet. The fleet
    #   instances are launched from this instance type.
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity_status
    #   The capacity information for the fleet.
    #   @return [Types::ComputeCapacityStatus]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time for which a streaming session can run. The value
    #   can be any numeric value in seconds between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended. If a user who got disconnected reconnects within this timeout
    #   interval, the user is connected back to their previous session. The
    #   input can be any numeric value in seconds between 60 and 57600.
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
    #   The time at which the fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] fleet_errors
    #   The list of fleet errors is appended to this list.
    #   @return [Array<Types::FleetError>]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Whether default internet access is enabled for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The *DirectoryName* and *OrganizationalUnitDistinguishedName*
    #   values, which are used to join domains for the AppStream 2.0
    #   streaming instances.
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
      :instance_type,
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

    # The details of the fleet error.
    #
    # @!attribute [rw] error_code
    #   The error code for the fleet error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message generated when the fleet has errors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/FleetError AWS API Documentation
    #
    class FleetError < Struct.new(
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # New streaming instances are booted from images. The image stores the
    # application catalog and is connected to fleets.
    #
    # @!attribute [rw] name
    #   The unique identifier for the image.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN for the image.
    #   @return [String]
    #
    # @!attribute [rw] base_image_arn
    #   The source image ARN from which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for the image.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The image starts in the **PENDING** state. If image creation
    #   succeeds, it moves to **AVAILABLE**. If image creation fails, it
    #   moves to **FAILED**.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of an image to the user; images can be public or
    #   private.
    #   @return [String]
    #
    # @!attribute [rw] image_builder_supported
    #   Whether an image builder can be launched from this image.
    #   @return [Boolean]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description for the image.
    #   @return [String]
    #
    # @!attribute [rw] state_change_reason
    #   The reason why the last state change occurred.
    #   @return [Types::ImageStateChangeReason]
    #
    # @!attribute [rw] applications
    #   The applications associated with an image.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] created_time
    #   The time stamp when the image was created.
    #   @return [Time]
    #
    # @!attribute [rw] public_base_image_released_date
    #   The AWS release date of the public base image. For private images,
    #   this date is the release date of the base image from which the image
    #   was created.
    #   @return [Time]
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
      :public_base_image_released_date)
      include Aws::Structure
    end

    # The reason why the last state change occurred.
    #
    # @!attribute [rw] code
    #   The state change reason code of the image.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The state change reason message to the end user.
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
    #   The name of the stack whose associated fleets are listed.
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

    # The response from a successful operation.
    #
    # @!attribute [rw] names
    #   The names of associated fleets.
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
    #   The name of the fleet whose associated stacks are listed.
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

    # The response from a successful operation.
    #
    # @!attribute [rw] names
    #   The names of associated stacks.
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

    # The *AccountName* and *AccountPassword* of the service account, to be
    # used by the streaming instance to connect to the directory.
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
    #   The user name of an account in the directory that is used by
    #   AppStream 2.0 streaming instances to connect to the directory. This
    #   account must have the following privileges: create computer objects,
    #   join computers to the domain, change/reset the password on
    #   descendant computer objects for the organizational units specified.
    #   @return [String]
    #
    # @!attribute [rw] account_password
    #   The password for the user account for directory actions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/ServiceAccountCredentials AWS API Documentation
    #
    class ServiceAccountCredentials < Struct.new(
      :account_name,
      :account_password)
      include Aws::Structure
    end

    # Contains the parameters for a streaming session.
    #
    # @!attribute [rw] id
    #   The unique ID for a streaming session.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user for whom the session was created.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The name of the stack for which the streaming session was created.
    #   @return [String]
    #
    # @!attribute [rw] fleet_name
    #   The name of the fleet for which the streaming session was created.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the streaming session.
    #   @return [String]
    #
    # @!attribute [rw] authentication_type
    #   The authentication method of the user for whom the session was
    #   created. It can be `API` for a user authenticated using a streaming
    #   URL or `SAML` for a SAML federated user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/Session AWS API Documentation
    #
    class Session < Struct.new(
      :id,
      :user_id,
      :stack_name,
      :fleet_name,
      :state,
      :authentication_type)
      include Aws::Structure
    end

    # Details about a stack.
    #
    # @!attribute [rw] arn
    #   The ARN of the stack.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique identifier of the stack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description for the stack.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A display name for the stack.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time stamp when the stack was created.
    #   @return [Time]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to be enabled for the stack.
    #   @return [Array<Types::StorageConnector>]
    #
    # @!attribute [rw] stack_errors
    #   The list of errors associated with the stack.
    #   @return [Array<Types::StackError>]
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
      :stack_errors)
      include Aws::Structure
    end

    # Contains the parameters for a stack error.
    #
    # @!attribute [rw] error_code
    #   The error code of a stack error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message of a stack error.
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
    #   The name of the fleet to start.
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

    # @note When making an API call, you may pass StopFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the fleet to stop.
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

    # Contains the parameters for a storage connector.
    #
    # @note When making an API call, you may pass StorageConnector
    #   data as a hash:
    #
    #       {
    #         connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS
    #         resource_identifier: "ResourceIdentifier",
    #       }
    #
    # @!attribute [rw] connector_type
    #   The type of storage connector. The possible values include:
    #   HOMEFOLDERS.
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The ARN associated with the storage connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/StorageConnector AWS API Documentation
    #
    class StorageConnector < Struct.new(
      :connector_type,
      :resource_identifier)
      include Aws::Structure
    end

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
    #   The name of the existing directory configuration to be updated.
    #   @return [String]
    #
    # @!attribute [rw] organizational_unit_distinguished_names
    #   The list of the distinguished names of organizational units to place
    #   computer accounts in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_account_credentials
    #   The *AccountName* and *AccountPassword* values for the service
    #   account, which are used by the streaming instance to connect to the
    #   directory
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
    #   The updated directory configuration details.
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
    #         name: "String", # required
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
    #   The image name from which a fleet is created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of compute resources for the fleet. Fleet
    #   instances are launched from this instance type. Available instance
    #   types are:
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
    #   * stream.graphics-pro.4xlarge
    #
    #   * stream.graphics-pro.8xlarge
    #
    #   * stream.graphics-pro.16xlarge
    #
    #   * stream.graphics-desktop.2xlarge
    #   @return [String]
    #
    # @!attribute [rw] compute_capacity
    #   The parameters for the capacity allocated to the fleet.
    #   @return [Types::ComputeCapacity]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the fleet.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] max_user_duration_in_seconds
    #   The maximum time for which a streaming session can run. The input
    #   can be any numeric value in seconds between 600 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] disconnect_timeout_in_seconds
    #   The time after disconnection when a session is considered to have
    #   ended. If a user who got disconnected reconnects within this timeout
    #   interval, the user is connected back to their previous session. The
    #   input can be any numeric value in seconds between 60 and 57600.
    #   @return [Integer]
    #
    # @!attribute [rw] delete_vpc_config
    #   Delete the VPC association for the specified fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] enable_default_internet_access
    #   Enables or disables default internet access for the fleet.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_join_info
    #   The *DirectoryName* and *OrganizationalUnitDistinguishedName*
    #   values, which are used to join domains for the AppStream 2.0
    #   streaming instances.
    #   @return [Types::DomainJoinInfo]
    #
    # @!attribute [rw] attributes_to_delete
    #   Fleet attributes to be deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleetRequest AWS API Documentation
    #
    class UpdateFleetRequest < Struct.new(
      :image_name,
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
    #   A list of fleet details.
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateFleetResult AWS API Documentation
    #
    class UpdateFleetResult < Struct.new(
      :fleet)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateStackRequest
    #   data as a hash:
    #
    #       {
    #         display_name: "DisplayName",
    #         description: "Description",
    #         name: "String", # required
    #         storage_connectors: [
    #           {
    #             connector_type: "HOMEFOLDERS", # required, accepts HOMEFOLDERS
    #             resource_identifier: "ResourceIdentifier",
    #           },
    #         ],
    #         delete_storage_connectors: false,
    #       }
    #
    # @!attribute [rw] display_name
    #   The name displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description displayed to end users on the AppStream 2.0 portal.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the stack to update.
    #   @return [String]
    #
    # @!attribute [rw] storage_connectors
    #   The storage connectors to be enabled for the stack.
    #   @return [Array<Types::StorageConnector>]
    #
    # @!attribute [rw] delete_storage_connectors
    #   Remove all the storage connectors currently enabled for the stack.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStackRequest AWS API Documentation
    #
    class UpdateStackRequest < Struct.new(
      :display_name,
      :description,
      :name,
      :storage_connectors,
      :delete_storage_connectors)
      include Aws::Structure
    end

    # @!attribute [rw] stack
    #   A list of stack details.
    #   @return [Types::Stack]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appstream-2016-12-01/UpdateStackResult AWS API Documentation
    #
    class UpdateStackResult < Struct.new(
      :stack)
      include Aws::Structure
    end

    # VPC configuration information.
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
    #   The list of subnets to which a network interface is established from
    #   the fleet instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   Security groups associated with the fleet.
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
