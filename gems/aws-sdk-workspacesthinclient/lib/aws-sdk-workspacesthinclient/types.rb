# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesThinClient
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource associated with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource associated with the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the environment.</p>
    #   @return [String]
    # @!attribute desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    #   @return [String]
    # @!attribute desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    #   @return [Types::MaintenanceWindow]
    # @!attribute software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service key to use to encrypt the environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute device_creation_tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>
    #   @return [Hash<String, String>]
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
      :device_creation_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>Describes an environment.</p>
    #   @return [Types::EnvironmentSummary]
    class CreateEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the device to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    class DeleteDeviceRequest < Struct.new(
      :id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    class DeleteEnvironmentRequest < Struct.new(
      :id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEnvironmentResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the device to deregister.</p>
    #   @return [String]
    # @!attribute target_device_status
    #   <p>The desired new status for the device.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This lets you safely retry the request without accidentally performing the same operation a second time. Passing the same value to a later call to an operation requires that you also pass the same value for all other parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of value</a>.</p> <p>If you don't provide this value, then Amazon Web Services generates a random one for you.</p> <p>If you retry the operation with the same <code>ClientToken</code>, but with different parameters, the retry fails with an <code>IdempotentParameterMismatch</code> error.</p>
    #   @return [String]
    class DeregisterDeviceRequest < Struct.new(
      :id,
      :target_device_status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterDeviceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a thin client device.</p>
    # @!attribute id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The hardware serial number of the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model number of the device.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment the device is associated with.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the device.</p>
    #   @return [String]
    # @!attribute current_software_set_id
    #   <p>The ID of the software set currently installed on the device.</p>
    #   @return [String]
    # @!attribute current_software_set_version
    #   <p>The version of the software set currently installed on the device.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set which the device has been set to.</p>
    #   @return [String]
    # @!attribute pending_software_set_id
    #   <p>The ID of the software set that is pending to be installed on the device.</p>
    #   @return [String]
    # @!attribute pending_software_set_version
    #   <p>The version of the software set that is pending to be installed on the device.</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute software_set_compliance_status
    #   <p>Describes if the software currently installed on the device is a supported version.</p>
    #   @return [String]
    # @!attribute software_set_update_status
    #   <p>Describes if the device has a supported version of software installed.</p>
    #   @return [String]
    # @!attribute last_connected_at
    #   <p>The timestamp of the most recent session on the device.</p>
    #   @return [Time]
    # @!attribute last_posture_at
    #   <p>The timestamp of the most recent check-in of the device.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp of when the device was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the device was updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service key used to encrypt the device.</p>
    #   @return [String]
    # @!attribute last_user_id
    #   <p>The user ID of the most recent session on the device.</p>
    #   @return [String]
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
      :last_user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a thin client device.</p>
    # @!attribute id
    #   <p>The ID of the device.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The hardware serial number of the device.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the device.</p>
    #   @return [String]
    # @!attribute model
    #   <p>The model number of the device.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The ID of the environment the device is associated with.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the device.</p>
    #   @return [String]
    # @!attribute current_software_set_id
    #   <p>The ID of the software set currently installed on the device.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set which the device has been set to.</p>
    #   @return [String]
    # @!attribute pending_software_set_id
    #   <p>The ID of the software set that is pending to be installed on the device.</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute last_connected_at
    #   <p>The timestamp of the most recent session on the device.</p>
    #   @return [Time]
    # @!attribute last_posture_at
    #   <p>The timestamp of the most recent check-in of the device.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp of when the device was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the device was updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the device.</p>
    #   @return [String]
    # @!attribute last_user_id
    #   <p>The user ID of the most recent session on the device.</p>
    #   @return [String]
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
      :last_user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an environment.</p>
    # @!attribute id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    #   @return [String]
    # @!attribute desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    #   @return [String]
    # @!attribute desktop_type
    #   <p>The type of streaming desktop for the environment.</p>
    #   @return [String]
    # @!attribute activation_code
    #   <p>The activation code to register a device to the environment.</p>
    #   @return [String]
    # @!attribute registered_devices_count
    #   <p>The number of devices registered to the environment.</p>
    #   @return [Integer]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    #   @return [Types::MaintenanceWindow]
    # @!attribute software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    #   @return [String]
    # @!attribute pending_software_set_id
    #   <p>The ID of the software set that is pending to be installed.</p>
    #   @return [String]
    # @!attribute pending_software_set_version
    #   <p>The version of the software set that is pending to be installed.</p>
    #   @return [String]
    # @!attribute software_set_compliance_status
    #   <p>Describes if the software currently installed on all devices in the environment is a supported version.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the device was updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the Key Management Service key used to encrypt the environment.</p>
    #   @return [String]
    # @!attribute device_creation_tags
    #   <p>The tag keys and optional values for the newly created devices for this environment.</p>
    #   @return [Hash<String, String>]
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
      :device_creation_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an environment.</p>
    # @!attribute id
    #   <p>The ID of the environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    #   @return [String]
    # @!attribute desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    #   @return [String]
    # @!attribute desktop_type
    #   <p>The type of streaming desktop for the environment.</p>
    #   @return [String]
    # @!attribute activation_code
    #   <p>The activation code to register a device to the environment.</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    #   @return [Types::MaintenanceWindow]
    # @!attribute software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    #   @return [String]
    # @!attribute pending_software_set_id
    #   <p>The ID of the software set that is pending to be installed.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the environment was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp of when the device was updated.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
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
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the device for which to return information.</p>
    #   @return [String]
    class GetDeviceRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device
    #   <p>Describes an device.</p>
    #   @return [Types::Device]
    class GetDeviceResponse < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment for which to return information.</p>
    #   @return [String]
    class GetEnvironmentRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>Describes an environment.</p>
    #   @return [Types::Environment]
    class GetEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the software set for which to return information.</p>
    #   @return [String]
    class GetSoftwareSetRequest < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute software_set
    #   <p>Describes a software set.</p>
    #   @return [Types::SoftwareSet]
    class GetSoftwareSetResponse < Struct.new(
      :software_set,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the next request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListDevicesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute devices
    #   <p>Describes devices.</p>
    #   @return [Array<Types::DeviceSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListDevicesResponse < Struct.new(
      :devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>Describes environments.</p>
    #   @return [Array<Types::EnvironmentSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
    #   @return [Integer]
    class ListSoftwareSetsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute software_sets
    #   <p>Describes software sets.</p>
    #   @return [Array<Types::SoftwareSetSummary>]
    # @!attribute next_token
    #   <p>If <code>nextToken</code> is returned, there are more results available. The value of <code>nextToken</code> is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. Each pagination token expires after 24 hours. Using an expired pagination token will return an <i>HTTP 400 InvalidToken error</i>.</p>
    #   @return [String]
    class ListSoftwareSetsResponse < Struct.new(
      :software_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to retrieve tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of the key-value pairs for the tag or tags assigned to the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the maintenance window for a thin client device.</p>
    # @!attribute type
    #   <p>An option to select the default or custom maintenance window.</p>
    #   @return [String]
    # @!attribute start_time_hour
    #   <p>The hour for the maintenance window start (<code>00</code>-<code>23</code>).</p>
    #   @return [Integer]
    # @!attribute start_time_minute
    #   <p>The minutes past the hour for the maintenance window start (<code>00</code>-<code>59</code>).</p>
    #   @return [Integer]
    # @!attribute end_time_hour
    #   <p>The hour for the maintenance window end (<code>00</code>-<code>23</code>).</p>
    #   @return [Integer]
    # @!attribute end_time_minute
    #   <p>The minutes for the maintenance window end (<code>00</code>-<code>59</code>).</p>
    #   @return [Integer]
    # @!attribute days_of_the_week
    #   <p>The days of the week during which the maintenance window is open.</p>
    #   @return [Array<String>]
    # @!attribute apply_time_of
    #   <p>The option to set the maintenance window during the device local time or Universal Coordinated Time (UTC).</p>
    #   @return [String]
    class MaintenanceWindow < Struct.new(
      :type,
      :start_time_hour,
      :start_time_minute,
      :end_time_hour,
      :end_time_minute,
      :days_of_the_week,
      :apply_time_of,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource specified in the request was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource associated with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource associated with the request.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes software.</p>
    # @!attribute name
    #   <p>The name of the software component.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the software component.</p>
    #   @return [String]
    class Software < Struct.new(
      :name,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a software set.</p>
    # @!attribute id
    #   <p>The ID of the software set.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the software set.</p>
    #   @return [String]
    # @!attribute released_at
    #   <p>The timestamp of when the software set was released.</p>
    #   @return [Time]
    # @!attribute supported_until
    #   <p>The timestamp of the end of support for the software set.</p>
    #   @return [Time]
    # @!attribute validation_status
    #   <p>An option to define if the software set has been validated.</p>
    #   @return [String]
    # @!attribute software
    #   <p>A list of the software components in the software set.</p>
    #   @return [Array<Types::Software>]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the software set.</p>
    #   @return [String]
    class SoftwareSet < Struct.new(
      :id,
      :version,
      :released_at,
      :supported_until,
      :validation_status,
      :software,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a software set.</p>
    # @!attribute id
    #   <p>The ID of the software set.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the software set.</p>
    #   @return [String]
    # @!attribute released_at
    #   <p>The timestamp of when the software set was released.</p>
    #   @return [Time]
    # @!attribute supported_until
    #   <p>The timestamp of the end of support for the software set.</p>
    #   @return [Time]
    # @!attribute validation_status
    #   <p>An option to define if the software set has been validated.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the software set.</p>
    #   @return [String]
    class SoftwareSetSummary < Struct.new(
      :id,
      :version,
      :released_at,
      :supported_until,
      :validation_status,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the next request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the key-value pairs for the tag or tags you want to remove from the specified resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the device to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the device to update.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    class UpdateDeviceRequest < Struct.new(
      :id,
      :name,
      :desired_software_set_id,
      :software_set_update_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device
    #   <p>Describes a device.</p>
    #   @return [Types::DeviceSummary]
    class UpdateDeviceResponse < Struct.new(
      :device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment to update.</p>
    #   @return [String]
    # @!attribute desktop_arn
    #   <p>The Amazon Resource Name (ARN) of the desktop to stream from Amazon WorkSpaces, WorkSpaces Secure Browser, or AppStream 2.0.</p>
    #   @return [String]
    # @!attribute desktop_endpoint
    #   <p>The URL for the identity provider login (only for environments that use AppStream 2.0).</p>
    #   @return [String]
    # @!attribute software_set_update_schedule
    #   <p>An option to define if software updates should be applied within a maintenance window.</p>
    #   @return [String]
    # @!attribute maintenance_window
    #   <p>A specification for a time window to apply software updates.</p>
    #   @return [Types::MaintenanceWindow]
    # @!attribute software_set_update_mode
    #   <p>An option to define which software updates to apply.</p>
    #   @return [String]
    # @!attribute desired_software_set_id
    #   <p>The ID of the software set to apply.</p>
    #   @return [String]
    # @!attribute device_creation_tags
    #   <p>A map of the key-value pairs of the tag or tags to assign to the newly created devices for this environment.</p>
    #   @return [Hash<String, String>]
    class UpdateEnvironmentRequest < Struct.new(
      :id,
      :name,
      :desktop_arn,
      :desktop_endpoint,
      :software_set_update_schedule,
      :maintenance_window,
      :software_set_update_mode,
      :desired_software_set_id,
      :device_creation_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>Describes an environment.</p>
    #   @return [Types::EnvironmentSummary]
    class UpdateEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the software set to update.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>An option to define if the software set has been validated.</p>
    #   @return [String]
    class UpdateSoftwareSetRequest < Struct.new(
      :id,
      :validation_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateSoftwareSetResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the specified constraints.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that didn't validate.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a validation exception.</p>
    # @!attribute name
    #   <p>The name of the exception.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that describes the reason for the exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
