# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Braket
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelQuantumTaskRequest
    #   data as a hash:
    #
    #       {
    #         client_token: "String64", # required
    #         quantum_task_arn: "QuantumTaskArn", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskRequest AWS API Documentation
    #
    class CancelQuantumTaskRequest < Struct.new(
      :client_token,
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cancellation_status
    #   The status of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CancelQuantumTaskResponse AWS API Documentation
    #
    class CancelQuantumTaskResponse < Struct.new(
      :cancellation_status,
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error occurred due to a conflict.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateQuantumTaskRequest
    #   data as a hash:
    #
    #       {
    #         action: "JsonValue", # required
    #         client_token: "String64", # required
    #         device_arn: "DeviceArn", # required
    #         device_parameters: "CreateQuantumTaskRequestdeviceParametersJsonValue",
    #         output_s3_bucket: "CreateQuantumTaskRequestoutputS3BucketString", # required
    #         output_s3_key_prefix: "CreateQuantumTaskRequestoutputS3KeyPrefixString", # required
    #         shots: 1, # required
    #       }
    #
    # @!attribute [rw] action
    #   The action associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token associated with the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to run the task on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device to run the task on.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket to store task result files in.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_key_prefix
    #   The key prefix for the location in the S3 bucket to store task
    #   results in.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots to use for the task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskRequest AWS API Documentation
    #
    class CreateQuantumTaskRequest < Struct.new(
      :action,
      :client_token,
      :device_arn,
      :device_parameters,
      :output_s3_bucket,
      :output_s3_key_prefix,
      :shots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task created by the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/CreateQuantumTaskResponse AWS API Documentation
    #
    class CreateQuantumTaskResponse < Struct.new(
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified device is currently offline.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceOfflineException AWS API Documentation
    #
    class DeviceOfflineException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes information about the device.
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The provider of the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/DeviceSummary AWS API Documentation
    #
    class DeviceSummary < Struct.new(
      :device_arn,
      :device_name,
      :device_status,
      :device_type,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_arn: "DeviceArn", # required
    #       }
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDeviceRequest AWS API Documentation
    #
    class GetDeviceRequest < Struct.new(
      :device_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_arn
    #   The ARN of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_capabilities
    #   Details about the capabilities of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_status
    #   The status of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The type of the device.
    #   @return [String]
    #
    # @!attribute [rw] provider_name
    #   The name of the partner company for the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetDeviceResponse AWS API Documentation
    #
    class GetDeviceResponse < Struct.new(
      :device_arn,
      :device_capabilities,
      :device_name,
      :device_status,
      :device_type,
      :provider_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetQuantumTaskRequest
    #   data as a hash:
    #
    #       {
    #         quantum_task_arn: "QuantumTaskArn", # required
    #       }
    #
    # @!attribute [rw] quantum_task_arn
    #   the ARN of the task to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskRequest AWS API Documentation
    #
    class GetQuantumTaskRequest < Struct.new(
      :quantum_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_at
    #   The time at which the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the task was run on.
    #   @return [String]
    #
    # @!attribute [rw] device_parameters
    #   The parameters for the device on which the task ran.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The time at which the task ended.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason that a task failed.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where task results are stored.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The number of shots used in the task.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/GetQuantumTaskResponse AWS API Documentation
    #
    class GetQuantumTaskResponse < Struct.new(
      :created_at,
      :device_arn,
      :device_parameters,
      :ended_at,
      :failure_reason,
      :output_s3_bucket,
      :output_s3_directory,
      :quantum_task_arn,
      :shots,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Includes information about a quantum task.
    #
    # @!attribute [rw] created_at
    #   The time at which the task was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_arn
    #   The ARN of the device the task ran on.
    #   @return [String]
    #
    # @!attribute [rw] ended_at
    #   The time at which the task finished.
    #   @return [Time]
    #
    # @!attribute [rw] output_s3_bucket
    #   The S3 bucket where the task result file is stored..
    #   @return [String]
    #
    # @!attribute [rw] output_s3_directory
    #   The folder in the S3 bucket where the task result file is stored.
    #   @return [String]
    #
    # @!attribute [rw] quantum_task_arn
    #   The ARN of the task.
    #   @return [String]
    #
    # @!attribute [rw] shots
    #   The shots used for the task.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/QuantumTaskSummary AWS API Documentation
    #
    class QuantumTaskSummary < Struct.new(
      :created_at,
      :device_arn,
      :ended_at,
      :output_s3_bucket,
      :output_s3_directory,
      :quantum_task_arn,
      :shots,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter to use for searching devices.
    #
    # @note When making an API call, you may pass SearchDevicesFilter
    #   data as a hash:
    #
    #       {
    #         name: "SearchDevicesFilternameString", # required
    #         values: ["String256"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name to use to filter results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use to filter results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesFilter AWS API Documentation
    #
    class SearchDevicesFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchDevicesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [ # required
    #           {
    #             name: "SearchDevicesFilternameString", # required
    #             values: ["String256"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   The filter values to use to search for a device.
    #   @return [Array<Types::SearchDevicesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request continue results where
    #   the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesRequest AWS API Documentation
    #
    class SearchDevicesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   An array of `DeviceSummary` objects for devices that match the
    #   specified filter values.
    #   @return [Array<Types::DeviceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results, or null if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue results where the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchDevicesResponse AWS API Documentation
    #
    class SearchDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter to use to search for tasks.
    #
    # @note When making an API call, you may pass SearchQuantumTasksFilter
    #   data as a hash:
    #
    #       {
    #         name: "String64", # required
    #         operator: "BETWEEN", # required, accepts BETWEEN, EQUAL, GT, GTE, LT, LTE
    #         values: ["String256"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the device used for the task.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   An operator to use in the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use for the filter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksFilter AWS API Documentation
    #
    class SearchQuantumTasksFilter < Struct.new(
      :name,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchQuantumTasksRequest
    #   data as a hash:
    #
    #       {
    #         filters: [ # required
    #           {
    #             name: "String64", # required
    #             operator: "BETWEEN", # required, accepts BETWEEN, EQUAL, GT, GTE, LT, LTE
    #             values: ["String256"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Array of `SearchQuantumTasksFilter` objects.
    #   @return [Array<Types::SearchQuantumTasksFilter>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used for pagination of results returned in the response. Use
    #   the token returned from the previous request continue results where
    #   the previous request ended.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksRequest AWS API Documentation
    #
    class SearchQuantumTasksRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token used for pagination of results, or null if there are no
    #   additional results. Use the token value in a subsequent request to
    #   continue results where the previous request ended.
    #   @return [String]
    #
    # @!attribute [rw] quantum_tasks
    #   An array of `QuantumTaskSummary` objects for tasks that match the
    #   specified filters.
    #   @return [Array<Types::QuantumTaskSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/SearchQuantumTasksResponse AWS API Documentation
    #
    class SearchQuantumTasksResponse < Struct.new(
      :next_token,
      :quantum_tasks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because a service quota is met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The throttling rate limit is met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/braket-2019-09-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
