# frozen_string_literal: true

# This is generated code!

module Aws::SagemakerEdge
  # This module contains the types returned by client operations.
  module Types

    # <p>Information about the checksum of a model deployed on a device.</p>
    # @!attribute type
    #   <p>The type of the checksum.</p>
    #   @return [String]
    # @!attribute sum
    #   <p>The checksum of the model.</p>
    #   @return [String]
    class Checksum < Struct.new(
      :type,
      :sum,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChecksumType
      Sha1 = 'SHA1'
    end

    # <p></p>
    # @!attribute model_handle
    #   <p>The unique model handle.</p>
    #   @return [String]
    # @!attribute s3_url
    #   <p>The absolute S3 location of the model.</p>
    #   @return [String]
    # @!attribute checksum
    #   <p>The checksum information of the model.</p>
    #   @return [Types::Checksum]
    # @!attribute state
    #   <p>The desired state of the model.</p>
    #   @return [String]
    class Definition < Struct.new(
      :model_handle,
      :s3_url,
      :checksum,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute model_handle
    #   <p>The unique handle of the model.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name of the model.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #   @return [String]
    # @!attribute desired_state
    #   <p>The desired state of the model.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Returns the current state of the model.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Returns the deployment status of the model.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Returns the error message for the deployment status result.</p>
    #   @return [String]
    # @!attribute rollback_failure_reason
    #   <p>Returns the error message if there is a rollback.</p>
    #   @return [String]
    class DeploymentModel < Struct.new(
      :model_handle,
      :model_name,
      :model_version,
      :desired_state,
      :state,
      :status,
      :status_reason,
      :rollback_failure_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the result of a deployment on an edge device that is registered with SageMaker Edge Manager.</p>
    # @!attribute deployment_name
    #   <p>The name and unique ID of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>Returns the bucket error code.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>Returns the detailed error message.</p>
    #   @return [String]
    # @!attribute deployment_start_time
    #   <p>The timestamp of when the deployment was started on the agent.</p>
    #   @return [Time]
    # @!attribute deployment_end_time
    #   <p>The timestamp of when the deployment was ended, and the agent got the deployment results.</p>
    #   @return [Time]
    # @!attribute deployment_models
    #   <p>Returns a list of models deployed on the agent.</p>
    #   @return [Array<Types::DeploymentModel>]
    class DeploymentResult < Struct.new(
      :deployment_name,
      :deployment_status,
      :deployment_status_message,
      :deployment_start_time,
      :deployment_end_time,
      :deployment_models,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DeploymentStatus
      Success = 'SUCCESS'
      Fail = 'FAIL'
    end

    module DeploymentType
      Model = 'Model'
    end

    # <p>Information about a deployment on an edge device that is registered with SageMaker Edge Manager.</p>
    # @!attribute deployment_name
    #   <p>The name and unique ID of the deployment.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the deployment.</p>
    #   @return [String]
    # @!attribute failure_handling_policy
    #   <p>Determines whether to rollback to previous configuration if deployment fails.</p>
    #   @return [String]
    # @!attribute definitions
    #   <p>Returns a list of Definition objects.</p>
    #   @return [Array<Types::Definition>]
    class EdgeDeployment < Struct.new(
      :deployment_name,
      :type,
      :failure_handling_policy,
      :definitions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information required for edge device metrics.</p>
    # @!attribute dimension
    #   <p>The dimension of metrics published.</p>
    #   @return [String]
    # @!attribute metric_name
    #   <p>Returns the name of the metric.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Returns the value of the metric.</p>
    #   @return [Float]
    # @!attribute timestamp
    #   <p>Timestamp of when the metric was requested.</p>
    #   @return [Time]
    class EdgeMetric < Struct.new(
      :dimension,
      :metric_name,
      :value,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FailureHandlingPolicy
      RollbackOnFailure = 'ROLLBACK_ON_FAILURE'
      DoNothing = 'DO_NOTHING'
    end

    # @!attribute device_name
    #   <p>The unique name of the device you want to get the configuration of active deployments from.</p>
    #   @return [String]
    # @!attribute device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #   @return [String]
    class GetDeploymentsRequest < Struct.new(
      :device_name,
      :device_fleet_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   <p>Returns a list of the configurations of the active deployments on the device.</p>
    #   @return [Array<Types::EdgeDeployment>]
    class GetDeploymentsResult < Struct.new(
      :deployments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute device_name
    #   <p>The unique name of the device you want to get the registration status from.</p>
    #   @return [String]
    # @!attribute device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #   @return [String]
    class GetDeviceRegistrationRequest < Struct.new(
      :device_name,
      :device_fleet_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute device_registration
    #   <p>Describes if the device is currently registered with SageMaker Edge Manager.</p>
    #   @return [String]
    # @!attribute cache_ttl
    #   <p>The amount of time, in seconds, that the registration status is stored on the device’s cache before it is refreshed.</p>
    #   @return [String]
    class GetDeviceRegistrationResult < Struct.new(
      :device_registration,
      :cache_ttl,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An internal failure occurred. Try your request again. If the problem 
    #       persists, contact Amazon Web Services customer support.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a model deployed on an edge device that is registered with SageMaker Edge Manager.</p>
    # @!attribute model_name
    #   <p>The name of the model.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model.</p>
    #   @return [String]
    # @!attribute latest_sample_time
    #   <p>The timestamp of the last data sample taken.</p>
    #   @return [Time]
    # @!attribute latest_inference
    #   <p>The timestamp of the last inference that was made.</p>
    #   @return [Time]
    # @!attribute model_metrics
    #   <p>Information required for model metrics.</p>
    #   @return [Array<Types::EdgeMetric>]
    class Model < Struct.new(
      :model_name,
      :model_version,
      :latest_sample_time,
      :latest_inference,
      :model_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelState
      Deploy = 'DEPLOY'
      Undeploy = 'UNDEPLOY'
    end

    # @!attribute agent_metrics
    #   <p>For internal use. Returns a list of SageMaker Edge Manager agent operating metrics.</p>
    #   @return [Array<Types::EdgeMetric>]
    # @!attribute models
    #   <p>Returns a list of models deployed on the the device.</p>
    #   @return [Array<Types::Model>]
    # @!attribute agent_version
    #   <p>Returns the version of the agent.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The unique name of the device.</p>
    #   @return [String]
    # @!attribute device_fleet_name
    #   <p>The name of the fleet that the device belongs to.</p>
    #   @return [String]
    # @!attribute deployment_result
    #   <p>Returns the result of a deployment on the device.</p>
    #   @return [Types::DeploymentResult]
    class SendHeartbeatRequest < Struct.new(
      :agent_metrics,
      :models,
      :agent_version,
      :device_name,
      :device_fleet_name,
      :deployment_result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
