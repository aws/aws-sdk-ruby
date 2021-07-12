# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SagemakerEdgeManager
  module Types

    # Information required for edge device metrics.
    #
    # @note When making an API call, you may pass EdgeMetric
    #   data as a hash:
    #
    #       {
    #         dimension: "Dimension",
    #         metric_name: "Metric",
    #         value: 1.0,
    #         timestamp: Time.now,
    #       }
    #
    # @!attribute [rw] dimension
    #   The dimension of metrics published.
    #   @return [String]
    #
    # @!attribute [rw] metric_name
    #   Returns the name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Returns the value of the metric.
    #   @return [Float]
    #
    # @!attribute [rw] timestamp
    #   Timestamp of when the metric was requested.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/EdgeMetric AWS API Documentation
    #
    class EdgeMetric < Struct.new(
      :dimension,
      :metric_name,
      :value,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDeviceRegistrationRequest
    #   data as a hash:
    #
    #       {
    #         device_name: "DeviceName", # required
    #         device_fleet_name: "DeviceFleetName", # required
    #       }
    #
    # @!attribute [rw] device_name
    #   The unique name of the device you want to get the registration
    #   status from.
    #   @return [String]
    #
    # @!attribute [rw] device_fleet_name
    #   The name of the fleet that the device belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/GetDeviceRegistrationRequest AWS API Documentation
    #
    class GetDeviceRegistrationRequest < Struct.new(
      :device_name,
      :device_fleet_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_registration
    #   Describes if the device is currently registered with SageMaker Edge
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] cache_ttl
    #   The amount of time, in seconds, that the registration status is
    #   stored on the device’s cache before it is refreshed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/GetDeviceRegistrationResult AWS API Documentation
    #
    class GetDeviceRegistrationResult < Struct.new(
      :device_registration,
      :cache_ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal failure occurred. Try your request again. If the problem
    # persists, contact AWS customer support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a model deployed on an edge device that is
    # registered with SageMaker Edge Manager.
    #
    # @note When making an API call, you may pass Model
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName",
    #         model_version: "Version",
    #         latest_sample_time: Time.now,
    #         latest_inference: Time.now,
    #         model_metrics: [
    #           {
    #             dimension: "Dimension",
    #             metric_name: "Metric",
    #             value: 1.0,
    #             timestamp: Time.now,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model.
    #   @return [String]
    #
    # @!attribute [rw] latest_sample_time
    #   The timestamp of the last data sample taken.
    #   @return [Time]
    #
    # @!attribute [rw] latest_inference
    #   The timestamp of the last inference that was made.
    #   @return [Time]
    #
    # @!attribute [rw] model_metrics
    #   Information required for model metrics.
    #   @return [Array<Types::EdgeMetric>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/Model AWS API Documentation
    #
    class Model < Struct.new(
      :model_name,
      :model_version,
      :latest_sample_time,
      :latest_inference,
      :model_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendHeartbeatRequest
    #   data as a hash:
    #
    #       {
    #         agent_metrics: [
    #           {
    #             dimension: "Dimension",
    #             metric_name: "Metric",
    #             value: 1.0,
    #             timestamp: Time.now,
    #           },
    #         ],
    #         models: [
    #           {
    #             model_name: "ModelName",
    #             model_version: "Version",
    #             latest_sample_time: Time.now,
    #             latest_inference: Time.now,
    #             model_metrics: [
    #               {
    #                 dimension: "Dimension",
    #                 metric_name: "Metric",
    #                 value: 1.0,
    #                 timestamp: Time.now,
    #               },
    #             ],
    #           },
    #         ],
    #         agent_version: "Version", # required
    #         device_name: "DeviceName", # required
    #         device_fleet_name: "DeviceFleetName", # required
    #       }
    #
    # @!attribute [rw] agent_metrics
    #   For internal use. Returns a list of SageMaker Edge Manager agent
    #   operating metrics.
    #   @return [Array<Types::EdgeMetric>]
    #
    # @!attribute [rw] models
    #   Returns a list of models deployed on the the device.
    #   @return [Array<Types::Model>]
    #
    # @!attribute [rw] agent_version
    #   Returns the version of the agent.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The unique name of the device.
    #   @return [String]
    #
    # @!attribute [rw] device_fleet_name
    #   The name of the fleet that the device belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/SendHeartbeatRequest AWS API Documentation
    #
    class SendHeartbeatRequest < Struct.new(
      :agent_metrics,
      :models,
      :agent_version,
      :device_name,
      :device_fleet_name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
