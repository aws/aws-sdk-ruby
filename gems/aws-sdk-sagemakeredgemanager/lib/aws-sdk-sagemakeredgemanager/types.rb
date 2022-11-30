# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SagemakerEdgeManager
  module Types

    # Information about the checksum of a model deployed on a device.
    #
    # @!attribute [rw] type
    #   The type of the checksum.
    #   @return [String]
    #
    # @!attribute [rw] sum
    #   The checksum of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/Checksum AWS API Documentation
    #
    class Checksum < Struct.new(
      :type,
      :sum)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_handle
    #   The unique model handle.
    #   @return [String]
    #
    # @!attribute [rw] s3_url
    #   The absolute S3 location of the model.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   The checksum information of the model.
    #   @return [Types::Checksum]
    #
    # @!attribute [rw] state
    #   The desired state of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/Definition AWS API Documentation
    #
    class Definition < Struct.new(
      :model_handle,
      :s3_url,
      :checksum,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_handle
    #   The unique handle of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of the model.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model.
    #   @return [String]
    #
    # @!attribute [rw] desired_state
    #   The desired state of the model.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Returns the current state of the model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Returns the deployment status of the model.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Returns the error message for the deployment status result.
    #   @return [String]
    #
    # @!attribute [rw] rollback_failure_reason
    #   Returns the error message if there is a rollback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/DeploymentModel AWS API Documentation
    #
    class DeploymentModel < Struct.new(
      :model_handle,
      :model_name,
      :model_version,
      :desired_state,
      :state,
      :status,
      :status_reason,
      :rollback_failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the result of a deployment on an edge device that is
    # registered with SageMaker Edge Manager.
    #
    # @!attribute [rw] deployment_name
    #   The name and unique ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   Returns the bucket error code.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   Returns the detailed error message.
    #   @return [String]
    #
    # @!attribute [rw] deployment_start_time
    #   The timestamp of when the deployment was started on the agent.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_end_time
    #   The timestamp of when the deployment was ended, and the agent got
    #   the deployment results.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_models
    #   Returns a list of models deployed on the agent.
    #   @return [Array<Types::DeploymentModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/DeploymentResult AWS API Documentation
    #
    class DeploymentResult < Struct.new(
      :deployment_name,
      :deployment_status,
      :deployment_status_message,
      :deployment_start_time,
      :deployment_end_time,
      :deployment_models)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a deployment on an edge device that is registered
    # with SageMaker Edge Manager.
    #
    # @!attribute [rw] deployment_name
    #   The name and unique ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] failure_handling_policy
    #   Determines whether to rollback to previous configuration if
    #   deployment fails.
    #   @return [String]
    #
    # @!attribute [rw] definitions
    #   Returns a list of Definition objects.
    #   @return [Array<Types::Definition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/EdgeDeployment AWS API Documentation
    #
    class EdgeDeployment < Struct.new(
      :deployment_name,
      :type,
      :failure_handling_policy,
      :definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information required for edge device metrics.
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

    # @!attribute [rw] device_name
    #   The unique name of the device you want to get the configuration of
    #   active deployments from.
    #   @return [String]
    #
    # @!attribute [rw] device_fleet_name
    #   The name of the fleet that the device belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/GetDeploymentsRequest AWS API Documentation
    #
    class GetDeploymentsRequest < Struct.new(
      :device_name,
      :device_fleet_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   Returns a list of the configurations of the active deployments on
    #   the device.
    #   @return [Array<Types::EdgeDeployment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/GetDeploymentsResult AWS API Documentation
    #
    class GetDeploymentsResult < Struct.new(
      :deployments)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # persists, contact Amazon Web Services customer support.
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
    # @!attribute [rw] deployment_result
    #   Returns the result of a deployment on the device.
    #   @return [Types::DeploymentResult]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-edge-2020-09-23/SendHeartbeatRequest AWS API Documentation
    #
    class SendHeartbeatRequest < Struct.new(
      :agent_metrics,
      :models,
      :agent_version,
      :device_name,
      :device_fleet_name,
      :deployment_result)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
