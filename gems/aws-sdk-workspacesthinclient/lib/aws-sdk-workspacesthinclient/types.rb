# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkSpacesThinClient
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the environment.
    #   @return [String]
    #
    # @!attribute [rw] desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #   @return [String]
    #
    # @!attribute [rw] desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   A specification for a time window to apply software updates.
    #   @return [Types::MaintenanceWindow]
    #
    # @!attribute [rw] software_set_update_mode
    #   An option to define which software updates to apply.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set to apply.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service key to
    #   use to encrypt the environment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] device_creation_tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   newly created devices for this environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :name,
      :desktop_arn,
      :desktop_endpoint,
      :software_set_update_schedule,
      :maintenance_window,
      :software_set_update_mode,
      :desired_software_set_id,
      :kms_key_arn,
      :client_token,
      :tags,
      :device_creation_tags)
      SENSITIVE = [:name, :desktop_endpoint, :tags, :device_creation_tags]
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   Describes an environment.
    #   @return [Types::EnvironmentSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the device to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteDeviceRequest AWS API Documentation
    #
    class DeleteDeviceRequest < Struct.new(
      :id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the environment to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the device to deregister.
    #   @return [String]
    #
    # @!attribute [rw] target_device_status
    #   The desired new status for the device.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Specifies a unique, case-sensitive identifier that you provide to
    #   ensure the idempotency of the request. This lets you safely retry
    #   the request without accidentally performing the same operation a
    #   second time. Passing the same value to a later call to an operation
    #   requires that you also pass the same value for all other parameters.
    #   We recommend that you use a [UUID type of value][1].
    #
    #   If you don't provide this value, then Amazon Web Services generates
    #   a random one for you.
    #
    #   If you retry the operation with the same `ClientToken`, but with
    #   different parameters, the retry fails with an
    #   `IdempotentParameterMismatch` error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeregisterDeviceRequest AWS API Documentation
    #
    class DeregisterDeviceRequest < Struct.new(
      :id,
      :target_device_status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeregisterDeviceResponse AWS API Documentation
    #
    class DeregisterDeviceResponse < Aws::EmptyStructure; end

    # Describes a thin client device.
    #
    # @!attribute [rw] id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The hardware serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model number of the device.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment the device is associated with.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] current_software_set_id
    #   The ID of the software set currently installed on the device.
    #   @return [String]
    #
    # @!attribute [rw] current_software_set_version
    #   The version of the software set currently installed on the device.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set which the device has been set to.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_id
    #   The ID of the software set that is pending to be installed on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_version
    #   The version of the software set that is pending to be installed on
    #   the device.
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] software_set_compliance_status
    #   Describes if the software currently installed on the device is a
    #   supported version.
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_status
    #   Describes if the device has a supported version of software
    #   installed.
    #   @return [String]
    #
    # @!attribute [rw] last_connected_at
    #   The timestamp of the most recent session on the device.
    #   @return [Time]
    #
    # @!attribute [rw] last_posture_at
    #   The timestamp of the most recent check-in of the device.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service key
    #   used to encrypt the device.
    #   @return [String]
    #
    # @!attribute [rw] last_user_id
    #   The user ID of the most recent session on the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/Device AWS API Documentation
    #
    class Device < Struct.new(
      :id,
      :serial_number,
      :name,
      :model,
      :environment_id,
      :status,
      :current_software_set_id,
      :current_software_set_version,
      :desired_software_set_id,
      :pending_software_set_id,
      :pending_software_set_version,
      :software_set_update_schedule,
      :software_set_compliance_status,
      :software_set_update_status,
      :last_connected_at,
      :last_posture_at,
      :created_at,
      :updated_at,
      :arn,
      :kms_key_arn,
      :last_user_id)
      SENSITIVE = [:name, :last_user_id]
      include Aws::Structure
    end

    # Describes a thin client device.
    #
    # @!attribute [rw] id
    #   The ID of the device.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The hardware serial number of the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] model
    #   The model number of the device.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The ID of the environment the device is associated with.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] current_software_set_id
    #   The ID of the software set currently installed on the device.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set which the device has been set to.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_id
    #   The ID of the software set that is pending to be installed on the
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] last_connected_at
    #   The timestamp of the most recent session on the device.
    #   @return [Time]
    #
    # @!attribute [rw] last_posture_at
    #   The timestamp of the most recent check-in of the device.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the device.
    #   @return [String]
    #
    # @!attribute [rw] last_user_id
    #   The user ID of the most recent session on the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :id,
      :serial_number,
      :name,
      :model,
      :environment_id,
      :status,
      :current_software_set_id,
      :desired_software_set_id,
      :pending_software_set_id,
      :software_set_update_schedule,
      :last_connected_at,
      :last_posture_at,
      :created_at,
      :updated_at,
      :arn,
      :last_user_id)
      SENSITIVE = [:name, :last_user_id]
      include Aws::Structure
    end

    # Describes an environment.
    #
    # @!attribute [rw] id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #   @return [String]
    #
    # @!attribute [rw] desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #   @return [String]
    #
    # @!attribute [rw] desktop_type
    #   The type of streaming desktop for the environment.
    #   @return [String]
    #
    # @!attribute [rw] activation_code
    #   The activation code to register a device to the environment.
    #   @return [String]
    #
    # @!attribute [rw] registered_devices_count
    #   The number of devices registered to the environment.
    #   @return [Integer]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   A specification for a time window to apply software updates.
    #   @return [Types::MaintenanceWindow]
    #
    # @!attribute [rw] software_set_update_mode
    #   An option to define which software updates to apply.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set to apply.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_id
    #   The ID of the software set that is pending to be installed.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_version
    #   The version of the software set that is pending to be installed.
    #   @return [String]
    #
    # @!attribute [rw] software_set_compliance_status
    #   Describes if the software currently installed on all devices in the
    #   environment is a supported version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the Key Management Service key
    #   used to encrypt the environment.
    #   @return [String]
    #
    # @!attribute [rw] device_creation_tags
    #   The tag keys and optional values for the newly created devices for
    #   this environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :id,
      :name,
      :desktop_arn,
      :desktop_endpoint,
      :desktop_type,
      :activation_code,
      :registered_devices_count,
      :software_set_update_schedule,
      :maintenance_window,
      :software_set_update_mode,
      :desired_software_set_id,
      :pending_software_set_id,
      :pending_software_set_version,
      :software_set_compliance_status,
      :created_at,
      :updated_at,
      :arn,
      :kms_key_arn,
      :device_creation_tags)
      SENSITIVE = [:name, :desktop_endpoint, :activation_code, :device_creation_tags]
      include Aws::Structure
    end

    # Describes an environment.
    #
    # @!attribute [rw] id
    #   The ID of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #   @return [String]
    #
    # @!attribute [rw] desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #   @return [String]
    #
    # @!attribute [rw] desktop_type
    #   The type of streaming desktop for the environment.
    #   @return [String]
    #
    # @!attribute [rw] activation_code
    #   The activation code to register a device to the environment.
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   A specification for a time window to apply software updates.
    #   @return [Types::MaintenanceWindow]
    #
    # @!attribute [rw] software_set_update_mode
    #   An option to define which software updates to apply.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set to apply.
    #   @return [String]
    #
    # @!attribute [rw] pending_software_set_id
    #   The ID of the software set that is pending to be installed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp of when the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :id,
      :name,
      :desktop_arn,
      :desktop_endpoint,
      :desktop_type,
      :activation_code,
      :software_set_update_schedule,
      :maintenance_window,
      :software_set_update_mode,
      :desired_software_set_id,
      :pending_software_set_id,
      :created_at,
      :updated_at,
      :arn)
      SENSITIVE = [:name, :desktop_endpoint, :activation_code]
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the device for which to return information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Describes an device.
    #   @return [Types::Device]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the environment for which to return information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   Describes an environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the software set for which to return information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetSoftwareSetRequest AWS API Documentation
    #
    class GetSoftwareSetRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] software_set
    #   Describes a software set.
    #   @return [Types::SoftwareSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/GetSoftwareSetResponse AWS API Documentation
    #
    class GetSoftwareSetResponse < Struct.new(
      :software_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server encountered an internal error and is unable to complete the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the next request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   Describes devices.
    #   @return [Array<Types::DeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListDevicesResponse AWS API Documentation
    #
    class ListDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   Describes environments.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results that are returned per call. You can
    #   use `nextToken` to obtain further pages of results.
    #
    #   This is only an upper limit. The actual number of results returned
    #   per call might be fewer than the specified maximum.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListSoftwareSetsRequest AWS API Documentation
    #
    class ListSoftwareSetsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] software_sets
    #   Describes software sets.
    #   @return [Array<Types::SoftwareSetSummary>]
    #
    # @!attribute [rw] next_token
    #   If `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged. Each pagination token
    #   expires after 24 hours. Using an expired pagination token will
    #   return an *HTTP 400 InvalidToken error*.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListSoftwareSetsResponse AWS API Documentation
    #
    class ListSoftwareSetsResponse < Struct.new(
      :software_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which you want to
    #   retrieve tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of the key-value pairs for the tag or tags assigned to the
    #   specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # Describes the maintenance window for a thin client device.
    #
    # @!attribute [rw] type
    #   An option to select the default or custom maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] start_time_hour
    #   The hour for the maintenance window start (`00`-`23`).
    #   @return [Integer]
    #
    # @!attribute [rw] start_time_minute
    #   The minutes past the hour for the maintenance window start
    #   (`00`-`59`).
    #   @return [Integer]
    #
    # @!attribute [rw] end_time_hour
    #   The hour for the maintenance window end (`00`-`23`).
    #   @return [Integer]
    #
    # @!attribute [rw] end_time_minute
    #   The minutes for the maintenance window end (`00`-`59`).
    #   @return [Integer]
    #
    # @!attribute [rw] days_of_the_week
    #   The days of the week during which the maintenance window is open.
    #   @return [Array<String>]
    #
    # @!attribute [rw] apply_time_of
    #   The option to set the maintenance window during the device local
    #   time or Universal Coordinated Time (UTC).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/MaintenanceWindow AWS API Documentation
    #
    class MaintenanceWindow < Struct.new(
      :type,
      :start_time_hour,
      :start_time_minute,
      :end_time_hour,
      :end_time_minute,
      :days_of_the_week,
      :apply_time_of)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource associated with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource associated with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ServiceQuotaExceededException AWS API Documentation
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

    # Describes software.
    #
    # @!attribute [rw] name
    #   The name of the software component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the software component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/Software AWS API Documentation
    #
    class Software < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a software set.
    #
    # @!attribute [rw] id
    #   The ID of the software set.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the software set.
    #   @return [String]
    #
    # @!attribute [rw] released_at
    #   The timestamp of when the software set was released.
    #   @return [Time]
    #
    # @!attribute [rw] supported_until
    #   The timestamp of the end of support for the software set.
    #   @return [Time]
    #
    # @!attribute [rw] validation_status
    #   An option to define if the software set has been validated.
    #   @return [String]
    #
    # @!attribute [rw] software
    #   A list of the software components in the software set.
    #   @return [Array<Types::Software>]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the software set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/SoftwareSet AWS API Documentation
    #
    class SoftwareSet < Struct.new(
      :id,
      :version,
      :released_at,
      :supported_until,
      :validation_status,
      :software,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a software set.
    #
    # @!attribute [rw] id
    #   The ID of the software set.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the software set.
    #   @return [String]
    #
    # @!attribute [rw] released_at
    #   The timestamp of when the software set was released.
    #   @return [Time]
    #
    # @!attribute [rw] supported_until
    #   The timestamp of the end of support for the software set.
    #   @return [Time]
    #
    # @!attribute [rw] validation_status
    #   An option to define if the software set has been validated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the software set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/SoftwareSetSummary AWS API Documentation
    #
    class SoftwareSetSummary < Struct.new(
      :id,
      :version,
      :released_at,
      :supported_until,
      :validation_status,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the next request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to
    #   remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = [:tag_keys]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The ID of the device to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the device to update.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set to apply.
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateDeviceRequest AWS API Documentation
    #
    class UpdateDeviceRequest < Struct.new(
      :id,
      :name,
      :desired_software_set_id,
      :software_set_update_schedule)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] device
    #   Describes a device.
    #   @return [Types::DeviceSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateDeviceResponse AWS API Documentation
    #
    class UpdateDeviceResponse < Struct.new(
      :device)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the environment to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment to update.
    #   @return [String]
    #
    # @!attribute [rw] desktop_arn
    #   The Amazon Resource Name (ARN) of the desktop to stream from Amazon
    #   WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.
    #   @return [String]
    #
    # @!attribute [rw] desktop_endpoint
    #   The URL for the identity provider login (only for environments that
    #   use AppStream 2.0).
    #   @return [String]
    #
    # @!attribute [rw] software_set_update_schedule
    #   An option to define if software updates should be applied within a
    #   maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] maintenance_window
    #   A specification for a time window to apply software updates.
    #   @return [Types::MaintenanceWindow]
    #
    # @!attribute [rw] software_set_update_mode
    #   An option to define which software updates to apply.
    #   @return [String]
    #
    # @!attribute [rw] desired_software_set_id
    #   The ID of the software set to apply.
    #   @return [String]
    #
    # @!attribute [rw] device_creation_tags
    #   A map of the key-value pairs of the tag or tags to assign to the
    #   newly created devices for this environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :id,
      :name,
      :desktop_arn,
      :desktop_endpoint,
      :software_set_update_schedule,
      :maintenance_window,
      :software_set_update_mode,
      :desired_software_set_id,
      :device_creation_tags)
      SENSITIVE = [:name, :desktop_endpoint, :device_creation_tags]
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   Describes an environment.
    #   @return [Types::EnvironmentSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateEnvironmentResponse AWS API Documentation
    #
    class UpdateEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the software set to update.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   An option to define if the software set has been validated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateSoftwareSetRequest AWS API Documentation
    #
    class UpdateSoftwareSetRequest < Struct.new(
      :id,
      :validation_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/UpdateSoftwareSetResponse AWS API Documentation
    #
    class UpdateSoftwareSetResponse < Aws::EmptyStructure; end

    # The input fails to satisfy the specified constraints.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that didn't validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a validation exception.
    #
    # @!attribute [rw] name
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes the reason for the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workspaces-thin-client-2023-08-22/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

