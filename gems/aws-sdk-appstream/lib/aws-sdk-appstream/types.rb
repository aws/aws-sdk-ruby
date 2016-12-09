# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module AppStream
    module Types

      # An entry for a single application in the application catalog.
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
      #   An application can be disabled after image creation if there is a
      #   problem.
      #   @return [Boolean]
      #
      # @!attribute [rw] metadata
      #   Additional attributes that describes the application.
      #   @return [Hash<String,String>]
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

      # @note When making an API call, pass AssociateFleetRequest
      #   data as a hash:
      #
      #       {
      #         fleet_name: "String", # required
      #         stack_name: "String", # required
      #       }
      # @!attribute [rw] fleet_name
      #   The name of the fleet to associate.
      #   @return [String]
      #
      # @!attribute [rw] stack_name
      #   The name of the stack to which the fleet is associated.
      #   @return [String]
      class AssociateFleetRequest < Struct.new(
        :fleet_name,
        :stack_name)
        include Aws::Structure
      end

      class AssociateFleetResult < Aws::EmptyStructure; end

      # The capacity configuration for the fleet.
      # @note When making an API call, pass ComputeCapacity
      #   data as a hash:
      #
      #       {
      #         desired_instances: 1, # required
      #       }
      # @!attribute [rw] desired_instances
      #   The desired number of streaming instances.
      #   @return [Integer]
      class ComputeCapacity < Struct.new(
        :desired_instances)
        include Aws::Structure
      end

      # The capacity information for the fleet.
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
      class ComputeCapacityStatus < Struct.new(
        :desired,
        :running,
        :in_use,
        :available)
        include Aws::Structure
      end

      # Contains the parameters for the new fleet to create.
      # @note When making an API call, pass CreateFleetRequest
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
      #           subnet_ids: ["String"], # required
      #         },
      #         max_user_duration_in_seconds: 1,
      #         disconnect_timeout_in_seconds: 1,
      #         description: "Description",
      #         display_name: "DisplayName",
      #       }
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
      #   instances are launched from this instance type.
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
      #   The maximum time up to which a streaming session can run.
      #   @return [Integer]
      #
      # @!attribute [rw] disconnect_timeout_in_seconds
      #   The time after disconnection when a session is considered to have
      #   ended. If a user who got disconnected reconnects within this timeout
      #   interval, the user is connected back to his/her previous session.
      #   @return [Integer]
      #
      # @!attribute [rw] description
      #   The description of the fleet.
      #   @return [String]
      #
      # @!attribute [rw] display_name
      #   The display name of the fleet.
      #   @return [String]
      class CreateFleetRequest < Struct.new(
        :name,
        :image_name,
        :instance_type,
        :compute_capacity,
        :vpc_config,
        :max_user_duration_in_seconds,
        :disconnect_timeout_in_seconds,
        :description,
        :display_name)
        include Aws::Structure
      end

      # @!attribute [rw] fleet
      #   The details for the created fleet.
      #   @return [Types::Fleet]
      class CreateFleetResult < Struct.new(
        :fleet)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateStackRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #         description: "Description",
      #         display_name: "DisplayName",
      #       }
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
      class CreateStackRequest < Struct.new(
        :name,
        :description,
        :display_name)
        include Aws::Structure
      end

      # @!attribute [rw] stack
      #   The details for the created stack.
      #   @return [Types::Stack]
      class CreateStackResult < Struct.new(
        :stack)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateStreamingURLRequest
      #   data as a hash:
      #
      #       {
      #         stack_name: "String", # required
      #         fleet_name: "String", # required
      #         user_id: "UserId", # required
      #         application_id: "String",
      #         validity: 1,
      #         session_context: "String",
      #       }
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
      #   The validity duration of the URL in seconds. After this duration,
      #   the URL returned by this operation becomes invalid.
      #   @return [Integer]
      #
      # @!attribute [rw] session_context
      #   The sessionContext of the streaming URL.
      #   @return [String]
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
      #   Elapsed seconds after the Unix epoch, at which time this URL
      #   expires.
      #   @return [Time]
      class CreateStreamingURLResult < Struct.new(
        :streaming_url,
        :expires)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteFleetRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      # @!attribute [rw] name
      #   The name of the fleet to be deleted.
      #   @return [String]
      class DeleteFleetRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      class DeleteFleetResult < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteStackRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      # @!attribute [rw] name
      #   The name of the stack to delete.
      #   @return [String]
      class DeleteStackRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      class DeleteStackResult < Aws::EmptyStructure; end

      # @note When making an API call, pass DescribeFleetsRequest
      #   data as a hash:
      #
      #       {
      #         names: ["String"],
      #         next_token: "String",
      #       }
      # @!attribute [rw] names
      #   The fleet names to describe. Use null to describe all the fleets for
      #   the AWS account.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If this value is null, it retrieves the first page.
      #   @return [String]
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
      class DescribeFleetsResult < Struct.new(
        :fleets,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeImagesRequest
      #   data as a hash:
      #
      #       {
      #         names: ["String"],
      #       }
      # @!attribute [rw] names
      #   A specific list of images to describe.
      #   @return [Array<String>]
      class DescribeImagesRequest < Struct.new(
        :names)
        include Aws::Structure
      end

      # @!attribute [rw] images
      #   The list of images.
      #   @return [Array<Types::Image>]
      class DescribeImagesResult < Struct.new(
        :images)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeSessionsRequest
      #   data as a hash:
      #
      #       {
      #         stack_name: "String", # required
      #         fleet_name: "String", # required
      #         user_id: "UserId",
      #         next_token: "String",
      #         limit: 1,
      #       }
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
      class DescribeSessionsRequest < Struct.new(
        :stack_name,
        :fleet_name,
        :user_id,
        :next_token,
        :limit)
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
      class DescribeSessionsResult < Struct.new(
        :sessions,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DescribeStacksRequest
      #   data as a hash:
      #
      #       {
      #         names: ["String"],
      #         next_token: "String",
      #       }
      # @!attribute [rw] names
      #   The stack names to describe. Use null to describe all the stacks for
      #   the AWS account.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If this value is null, it retrieves the first page.
      #   @return [String]
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
      class DescribeStacksResult < Struct.new(
        :stacks,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass DisassociateFleetRequest
      #   data as a hash:
      #
      #       {
      #         fleet_name: "String", # required
      #         stack_name: "String", # required
      #       }
      # @!attribute [rw] fleet_name
      #   The name of the fleet to disassociate.
      #   @return [String]
      #
      # @!attribute [rw] stack_name
      #   The name of the stack with which the fleet is associated.
      #   @return [String]
      class DisassociateFleetRequest < Struct.new(
        :fleet_name,
        :stack_name)
        include Aws::Structure
      end

      class DisassociateFleetResult < Aws::EmptyStructure; end

      # @note When making an API call, pass ExpireSessionRequest
      #   data as a hash:
      #
      #       {
      #         session_id: "String", # required
      #       }
      # @!attribute [rw] session_id
      #   The unique identifier of the streaming session to be stopped.
      #   @return [String]
      class ExpireSessionRequest < Struct.new(
        :session_id)
        include Aws::Structure
      end

      class ExpireSessionResult < Aws::EmptyStructure; end

      # Contains the parameters for a fleet.
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
      #   The maximum time during which a streaming session can run.
      #   @return [Integer]
      #
      # @!attribute [rw] disconnect_timeout_in_seconds
      #   The time after disconnection when a session is considered to have
      #   ended. When a user reconnects after a disconnection, the user is
      #   connected to the same session and instance within this time
      #   interval.
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
        :fleet_errors)
        include Aws::Structure
      end

      # The details of the fleet error.
      # @!attribute [rw] error_code
      #   The error code for the fleet error.
      #   @return [String]
      #
      # @!attribute [rw] error_message
      #   The error message generated when the fleet has errors.
      #   @return [String]
      class FleetError < Struct.new(
        :error_code,
        :error_message)
        include Aws::Structure
      end

      # New streaming instances are booted from images. The image stores the
      # application catalog and is connected to fleets.
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
      #   The image starts in the **PENDING** state, and then moves to
      #   **AVAILABLE** if image creation succeeds and **FAILED** if image
      #   creation has failed.
      #   @return [String]
      #
      # @!attribute [rw] visibility
      #   The visibility of an image to the user; images can be public or
      #   private.
      #   @return [String]
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
      #   The timestamp when the image was created.
      #   @return [Time]
      class Image < Struct.new(
        :name,
        :arn,
        :base_image_arn,
        :display_name,
        :state,
        :visibility,
        :platform,
        :description,
        :state_change_reason,
        :applications,
        :created_time)
        include Aws::Structure
      end

      # The reason why the last state change occurred.
      # @!attribute [rw] code
      #   The state change reason code of the image.
      #   @return [String]
      #
      # @!attribute [rw] message
      #   The state change reason message to the end user.
      #   @return [String]
      class ImageStateChangeReason < Struct.new(
        :code,
        :message)
        include Aws::Structure
      end

      # @note When making an API call, pass ListAssociatedFleetsRequest
      #   data as a hash:
      #
      #       {
      #         stack_name: "String", # required
      #         next_token: "String",
      #       }
      # @!attribute [rw] stack_name
      #   The name of the stack whose associated fleets are listed.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If this value is null, it retrieves the first page.
      #   @return [String]
      class ListAssociatedFleetsRequest < Struct.new(
        :stack_name,
        :next_token)
        include Aws::Structure
      end

      # The response from a successful operation.
      # @!attribute [rw] names
      #   The names of associated fleets.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If there are no more pages, this value is null.
      #   @return [String]
      class ListAssociatedFleetsResult < Struct.new(
        :names,
        :next_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListAssociatedStacksRequest
      #   data as a hash:
      #
      #       {
      #         fleet_name: "String", # required
      #         next_token: "String",
      #       }
      # @!attribute [rw] fleet_name
      #   The name of the fleet whose associated stacks are listed.
      #   @return [String]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If this value is null, it retrieves the first page.
      #   @return [String]
      class ListAssociatedStacksRequest < Struct.new(
        :fleet_name,
        :next_token)
        include Aws::Structure
      end

      # The response from a successful operation.
      # @!attribute [rw] names
      #   The names of associated stacks.
      #   @return [Array<String>]
      #
      # @!attribute [rw] next_token
      #   The pagination token to use to retrieve the next page of results for
      #   this operation. If there are no more pages, this value is null.
      #   @return [String]
      class ListAssociatedStacksResult < Struct.new(
        :names,
        :next_token)
        include Aws::Structure
      end

      # Contains the parameters for a streaming session.
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
      class Session < Struct.new(
        :id,
        :user_id,
        :stack_name,
        :fleet_name,
        :state)
        include Aws::Structure
      end

      # Details about a stack.
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
      #   The timestamp when the stack was created.
      #   @return [Time]
      class Stack < Struct.new(
        :arn,
        :name,
        :description,
        :display_name,
        :created_time)
        include Aws::Structure
      end

      # @note When making an API call, pass StartFleetRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      # @!attribute [rw] name
      #   The name of the fleet to start.
      #   @return [String]
      class StartFleetRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      class StartFleetResult < Aws::EmptyStructure; end

      # @note When making an API call, pass StopFleetRequest
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #       }
      # @!attribute [rw] name
      #   The name of the fleet to stop.
      #   @return [String]
      class StopFleetRequest < Struct.new(
        :name)
        include Aws::Structure
      end

      class StopFleetResult < Aws::EmptyStructure; end

      # @note When making an API call, pass UpdateFleetRequest
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
      #           subnet_ids: ["String"], # required
      #         },
      #         max_user_duration_in_seconds: 1,
      #         disconnect_timeout_in_seconds: 1,
      #         delete_vpc_config: false,
      #         description: "Description",
      #         display_name: "DisplayName",
      #       }
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
      #   instances are launched from this instance type.
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
      #   The maximum time during which a streaming session can run.
      #   @return [Integer]
      #
      # @!attribute [rw] disconnect_timeout_in_seconds
      #   The time after disconnection when a session is considered to have
      #   ended. When the user reconnects after a disconnection, the user is
      #   connected to the same instance within this time interval.
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
        :display_name)
        include Aws::Structure
      end

      # @!attribute [rw] fleet
      #   A list of fleet details.
      #   @return [Types::Fleet]
      class UpdateFleetResult < Struct.new(
        :fleet)
        include Aws::Structure
      end

      # @note When making an API call, pass UpdateStackRequest
      #   data as a hash:
      #
      #       {
      #         display_name: "DisplayName",
      #         description: "Description",
      #         name: "String", # required
      #       }
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
      class UpdateStackRequest < Struct.new(
        :display_name,
        :description,
        :name)
        include Aws::Structure
      end

      # @!attribute [rw] stack
      #   A list of stack details.
      #   @return [Types::Stack]
      class UpdateStackResult < Struct.new(
        :stack)
        include Aws::Structure
      end

      # The VPC in which the fleet is launched.
      # @note When making an API call, pass VpcConfig
      #   data as a hash:
      #
      #       {
      #         subnet_ids: ["String"], # required
      #       }
      # @!attribute [rw] subnet_ids
      #   The list of subnets to which a network interface is established from
      #   the fleet instance.
      #   @return [Array<String>]
      class VpcConfig < Struct.new(
        :subnet_ids)
        include Aws::Structure
      end

    end
  end
end
