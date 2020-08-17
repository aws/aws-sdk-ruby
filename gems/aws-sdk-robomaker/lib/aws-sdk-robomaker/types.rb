# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RoboMaker
  module Types

    # @note When making an API call, you may pass BatchDeleteWorldsRequest
    #   data as a hash:
    #
    #       {
    #         worlds: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] worlds
    #   A list of Amazon Resource Names (arns) that correspond to worlds to
    #   delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDeleteWorldsRequest AWS API Documentation
    #
    class BatchDeleteWorldsRequest < Struct.new(
      :worlds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] unprocessed_worlds
    #   A list of unprocessed worlds associated with the call. These worlds
    #   were not deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDeleteWorldsResponse AWS API Documentation
    #
    class BatchDeleteWorldsResponse < Struct.new(
      :unprocessed_worlds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDescribeSimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         jobs: ["Arn"], # required
    #       }
    #
    # @!attribute [rw] jobs
    #   A list of Amazon Resource Names (ARNs) of simulation jobs to
    #   describe.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDescribeSimulationJobRequest AWS API Documentation
    #
    class BatchDescribeSimulationJobRequest < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of simulation jobs.
    #   @return [Array<Types::SimulationJob>]
    #
    # @!attribute [rw] unprocessed_jobs
    #   A list of unprocessed simulation job Amazon Resource Names (ARNs).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchDescribeSimulationJobResponse AWS API Documentation
    #
    class BatchDescribeSimulationJobResponse < Struct.new(
      :jobs,
      :unprocessed_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the batch policy.
    #
    # @note When making an API call, you may pass BatchPolicy
    #   data as a hash:
    #
    #       {
    #         timeout_in_seconds: 1,
    #         max_concurrency: 1,
    #       }
    #
    # @!attribute [rw] timeout_in_seconds
    #   The amount of time, in seconds, to wait for the batch to complete.
    #
    #   If a batch times out, and there are pending requests that were
    #   failing due to an internal failure (like `InternalServiceError`),
    #   they will be moved to the failed list and the batch status will be
    #   `Failed`. If the pending requests were failing for any other reason,
    #   the failed pending requests will be moved to the failed list and the
    #   batch status will be `TimedOut`.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrency
    #   The number of active simulation jobs create as part of the batch
    #   that can be in an active state at the same time.
    #
    #   Active states include: `Pending`,`Preparing`, `Running`,
    #   `Restarting`, `RunningFailed` and `Terminating`. All other states
    #   are terminal states.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/BatchPolicy AWS API Documentation
    #
    class BatchPolicy < Struct.new(
      :timeout_in_seconds,
      :max_concurrency)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelDeploymentJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The deployment job ARN to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelDeploymentJobRequest AWS API Documentation
    #
    class CancelDeploymentJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelDeploymentJobResponse AWS API Documentation
    #
    class CancelDeploymentJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelSimulationJobBatchRequest
    #   data as a hash:
    #
    #       {
    #         batch: "Arn", # required
    #       }
    #
    # @!attribute [rw] batch
    #   The id of the batch to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobBatchRequest AWS API Documentation
    #
    class CancelSimulationJobBatchRequest < Struct.new(
      :batch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobBatchResponse AWS API Documentation
    #
    class CancelSimulationJobBatchResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelSimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The simulation job ARN to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobRequest AWS API Documentation
    #
    class CancelSimulationJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobResponse AWS API Documentation
    #
    class CancelSimulationJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelWorldExportJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (arn) of the world export job to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldExportJobRequest AWS API Documentation
    #
    class CancelWorldExportJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldExportJobResponse AWS API Documentation
    #
    class CancelWorldExportJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CancelWorldGenerationJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (arn) of the world generator job to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldGenerationJobRequest AWS API Documentation
    #
    class CancelWorldGenerationJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelWorldGenerationJobResponse AWS API Documentation
    #
    class CancelWorldGenerationJobResponse < Aws::EmptyStructure; end

    # Compute information for the simulation job.
    #
    # @note When making an API call, you may pass Compute
    #   data as a hash:
    #
    #       {
    #         simulation_unit_limit: 1,
    #       }
    #
    # @!attribute [rw] simulation_unit_limit
    #   The simulation unit limit. Your simulation is allocated CPU and
    #   memory proportional to the supplied simulation unit limit. A
    #   simulation unit is 1 vcpu and 2GB of memory. You are only billed for
    #   the SU utilization you consume up to the maximim value provided. The
    #   default is 15.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/Compute AWS API Documentation
    #
    class Compute < Struct.new(
      :simulation_unit_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compute information for the simulation job
    #
    # @!attribute [rw] simulation_unit_limit
    #   The simulation unit limit. Your simulation is allocated CPU and
    #   memory proportional to the supplied simulation unit limit. A
    #   simulation unit is 1 vcpu and 2GB of memory. You are only billed for
    #   the SU utilization you consume up to the maximim value provided. The
    #   default is 15.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ComputeResponse AWS API Documentation
    #
    class ComputeResponse < Struct.new(
      :simulation_unit_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The failure percentage threshold percentage was met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ConcurrentDeploymentException AWS API Documentation
    #
    class ConcurrentDeploymentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeploymentJobRequest
    #   data as a hash:
    #
    #       {
    #         deployment_config: {
    #           concurrent_deployment_percentage: 1,
    #           failure_threshold_percentage: 1,
    #           robot_deployment_timeout_in_seconds: 1,
    #           download_condition_file: {
    #             bucket: "S3Bucket", # required
    #             key: "S3Key", # required
    #             etag: "S3Etag",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken", # required
    #         fleet: "Arn", # required
    #         deployment_application_configs: [ # required
    #           {
    #             application: "Arn", # required
    #             application_version: "DeploymentVersion", # required
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               pre_launch_file: "Path",
    #               launch_file: "Command", # required
    #               post_launch_file: "Path",
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] deployment_config
    #   The requested deployment configuration.
    #   @return [Types::DeploymentConfig]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet to deploy.
    #   @return [String]
    #
    # @!attribute [rw] deployment_application_configs
    #   The deployment application configuration.
    #   @return [Array<Types::DeploymentApplicationConfig>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   deployment job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateDeploymentJobRequest AWS API Documentation
    #
    class CreateDeploymentJobRequest < Struct.new(
      :deployment_config,
      :client_request_token,
      :fleet,
      :deployment_application_configs,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The target fleet for the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] deployment_application_configs
    #   The deployment application configuration.
    #   @return [Array<Types::DeploymentApplicationConfig>]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason of the deployment job if it failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the simulation job if it failed:
    #
    #   BadPermissionError
    #
    #   : AWS Greengrass requires a service-level role permission to access
    #     other services. The role must include the [
    #     `AWSGreengrassResourceAccessRolePolicy` managed policy][1].
    #
    #   ExtractingBundleFailure
    #
    #   : The robot application could not be extracted from the bundle.
    #
    #   FailureThresholdBreached
    #
    #   : The percentage of robots that could not be updated exceeded the
    #     percentage set for the deployment.
    #
    #   GreengrassDeploymentFailed
    #
    #   : The robot application could not be deployed to the robot.
    #
    #   GreengrassGroupVersionDoesNotExist
    #
    #   : The AWS Greengrass group or version associated with a robot is
    #     missing.
    #
    #   InternalServerError
    #
    #   : An internal error has occurred. Retry your request, but if the
    #     problem persists, contact us with details.
    #
    #   MissingRobotApplicationArchitecture
    #
    #   : The robot application does not have a source that matches the
    #     architecture of the robot.
    #
    #   MissingRobotDeploymentResource
    #
    #   : One or more of the resources specified for the robot application
    #     are missing. For example, does the robot application have the
    #     correct launch package and launch file?
    #
    #   PostLaunchFileFailure
    #
    #   : The post-launch script failed.
    #
    #   PreLaunchFileFailure
    #
    #   : The pre-launch script failed.
    #
    #   ResourceNotFound
    #
    #   : One or more deployment resources are missing. For example, do
    #     robot application source bundles still exist?
    #
    #   RobotDeploymentNoResponse
    #
    #   : There is no response from the robot. It might not be powered on or
    #     connected to the internet.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the fleet was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_config
    #   The deployment configuration.
    #   @return [Types::DeploymentConfig]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the deployment job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateDeploymentJobResponse AWS API Documentation
    #
    class CreateDeploymentJobResponse < Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at,
      :deployment_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateFleetRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   fleet.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateFleetRequest AWS API Documentation
    #
    class CreateFleetRequest < Struct.new(
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the fleet was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the fleet.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateFleetResponse AWS API Documentation
    #
    class CreateFleetResponse < Struct.new(
      :arn,
      :name,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRobotApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         sources: [ # required
    #           {
    #             s3_bucket: "S3Bucket",
    #             s3_key: "S3Key",
    #             architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #           },
    #         ],
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS, ROS2
    #           version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::SourceConfig>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribuition) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   robot application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplicationRequest AWS API Documentation
    #
    class CreateRobotApplicationRequest < Struct.new(
      :name,
      :sources,
      :robot_software_suite,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the robot
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the robot application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplicationResponse AWS API Documentation
    #
    class CreateRobotApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRobotApplicationVersionRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         current_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the robot application.
    #   @return [String]
    #
    # @!attribute [rw] current_revision_id
    #   The current revision id for the robot application. If you provide a
    #   value and it matches the latest revision ID, a new version will be
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplicationVersionRequest AWS API Documentation
    #
    class CreateRobotApplicationVersionRequest < Struct.new(
      :application,
      :current_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the robot
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the robot application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotApplicationVersionResponse AWS API Documentation
    #
    class CreateRobotApplicationVersionResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRobotRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         architecture: "X86_64", # required, accepts X86_64, ARM64, ARMHF
    #         greengrass_group_id: "Id", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name for the robot.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The target architecture of the robot.
    #   @return [String]
    #
    # @!attribute [rw] greengrass_group_id
    #   The Greengrass group id.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   robot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotRequest AWS API Documentation
    #
    class CreateRobotRequest < Struct.new(
      :name,
      :architecture,
      :greengrass_group_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the robot was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] greengrass_group_id
    #   The Amazon Resource Name (ARN) of the Greengrass group associated
    #   with the robot.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The target architecture of the robot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the robot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateRobotResponse AWS API Documentation
    #
    class CreateRobotResponse < Struct.new(
      :arn,
      :name,
      :created_at,
      :greengrass_group_id,
      :architecture,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSimulationApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         sources: [ # required
    #           {
    #             s3_bucket: "S3Bucket",
    #             s3_key: "S3Key",
    #             architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #           },
    #         ],
    #         simulation_software_suite: { # required
    #           name: "Gazebo", # accepts Gazebo, RosbagPlay
    #           version: "SimulationSoftwareSuiteVersionType",
    #         },
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS, ROS2
    #           version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #         },
    #         rendering_engine: {
    #           name: "OGRE", # accepts OGRE
    #           version: "RenderingEngineVersionType",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::SourceConfig>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the simulation
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplicationRequest AWS API Documentation
    #
    class CreateSimulationApplicationRequest < Struct.new(
      :name,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the simulation application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplicationResponse AWS API Documentation
    #
    class CreateSimulationApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSimulationApplicationVersionRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         current_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] current_revision_id
    #   The current revision id for the simulation application. If you
    #   provide a value and it matches the latest revision ID, a new version
    #   will be created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplicationVersionRequest AWS API Documentation
    #
    class CreateSimulationApplicationVersionRequest < Struct.new(
      :application,
      :current_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision ID of the simulation application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationApplicationVersionResponse AWS API Documentation
    #
    class CreateSimulationApplicationVersionResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key",
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false, # required
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole", # required
    #         failure_behavior: "Fail", # accepts Fail, Continue
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #           },
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #             world_configs: [
    #               {
    #                 world: "Arn",
    #               },
    #             ],
    #           },
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3Key"], # required
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false,
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   Location for output files generated by the simulation job.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] logging_config
    #   The logging configuration.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] max_job_duration_in_seconds
    #   The maximum simulation job duration in seconds (up to 14 days or
    #   1,209,600 seconds. When `maxJobDurationInSeconds` is reached, the
    #   simulation job will status will transition to `Completed`.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role
    #   The IAM role name that allows the simulation instance to call the
    #   AWS APIs that are specified in its associated policies on your
    #   behalf. This is how credentials are passed in to your simulation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] failure_behavior
    #   The failure behavior the simulation job.
    #
    #   Continue
    #
    #   : Restart the simulation job in the same host instance.
    #
    #   Fail
    #
    #   : Stop the simulation job and terminate the instance.
    #   @return [String]
    #
    # @!attribute [rw] robot_applications
    #   The robot application to use in the simulation job.
    #   @return [Array<Types::RobotApplicationConfig>]
    #
    # @!attribute [rw] simulation_applications
    #   The simulation application to use in the simulation job.
    #   @return [Array<Types::SimulationApplicationConfig>]
    #
    # @!attribute [rw] data_sources
    #   Specify data sources to mount read-only files from S3 into your
    #   simulation. These files are available under
    #   `/opt/robomaker/datasources/data_source_name`.
    #
    #   <note markdown="1"> There is a limit of 100 files and a combined size of 25GB for all
    #   `DataSourceConfig` objects.
    #
    #    </note>
    #   @return [Array<Types::DataSourceConfig>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   If your simulation job accesses resources in a VPC, you provide this
    #   parameter identifying the list of security group IDs and subnet IDs.
    #   These must belong to the same VPC. You must provide at least one
    #   security group and one subnet ID.
    #   @return [Types::VPCConfig]
    #
    # @!attribute [rw] compute
    #   Compute information for the simulation job.
    #   @return [Types::Compute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationJobRequest AWS API Documentation
    #
    class CreateSimulationJobRequest < Struct.new(
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :iam_role,
      :failure_behavior,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] last_started_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_behavior
    #   the failure behavior for the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the simulation job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   RobotApplicationCrash
    #
    #   : Robot application exited abnormally.
    #
    #   SimulationApplicationCrash
    #
    #   : Simulation application exited abnormally.
    #
    #   BadPermissionsRobotApplication
    #
    #   : Robot application bundle could not be downloaded.
    #
    #   BadPermissionsSimulationApplication
    #
    #   : Simulation application bundle could not be downloaded.
    #
    #   BadPermissionsS3Output
    #
    #   : Unable to publish outputs to customer-provided S3 bucket.
    #
    #   BadPermissionsCloudwatchLogs
    #
    #   : Unable to publish logs to customer-provided CloudWatch Logs
    #     resource.
    #
    #   SubnetIpLimitExceeded
    #
    #   : Subnet IP limit exceeded.
    #
    #   ENILimitExceeded
    #
    #   : ENI limit exceeded.
    #
    #   BadPermissionsUserCredentials
    #
    #   : Unable to use the Role provided.
    #
    #   InvalidBundleRobotApplication
    #
    #   : Robot bundle cannot be extracted (invalid format, bundling error,
    #     or other issue).
    #
    #   InvalidBundleSimulationApplication
    #
    #   : Simulation bundle cannot be extracted (invalid format, bundling
    #     error, or other issue).
    #
    #   RobotApplicationVersionMismatchedEtag
    #
    #   : Etag for RobotApplication does not match value during version
    #     creation.
    #
    #   SimulationApplicationVersionMismatchedEtag
    #
    #   : Etag for SimulationApplication does not match value during version
    #     creation.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   Simulation job output files location.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] logging_config
    #   The logging configuration.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] max_job_duration_in_seconds
    #   The maximum simulation job duration in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] simulation_time_millis
    #   The simulation job execution duration in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that allows the simulation job to call the AWS APIs
    #   that are specified in its associated policies on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] robot_applications
    #   The robot application used by the simulation job.
    #   @return [Array<Types::RobotApplicationConfig>]
    #
    # @!attribute [rw] simulation_applications
    #   The simulation application used by the simulation job.
    #   @return [Array<Types::SimulationApplicationConfig>]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the simulation job.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   Information about the vpc configuration.
    #   @return [Types::VPCConfigResponse]
    #
    # @!attribute [rw] compute
    #   Compute information for the simulation job.
    #   @return [Types::ComputeResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationJobResponse AWS API Documentation
    #
    class CreateSimulationJobResponse < Struct.new(
      :arn,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorldExportJobRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         worlds: ["Arn"], # required
    #         output_location: { # required
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key",
    #         },
    #         iam_role: "IamRole", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] worlds
    #   A list of Amazon Resource Names (arns) that correspond to worlds to
    #   export.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_location
    #   The output location.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that the world export process uses to access the Amazon
    #   S3 bucket and put the export.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world export job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldExportJobRequest AWS API Documentation
    #
    class CreateWorldExportJobRequest < Struct.new(
      :client_request_token,
      :worlds,
      :output_location,
      :iam_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the world export job.
    #
    #   Pending
    #
    #   : The world export job request is pending.
    #
    #   Running
    #
    #   : The world export job is running.
    #
    #   Completed
    #
    #   : The world export job completed.
    #
    #   Failed
    #
    #   : The world export job failed. See `failureCode` for more
    #     information.
    #
    #   Canceled
    #
    #   : The world export job was cancelled.
    #
    #   Canceling
    #
    #   : The world export job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world export job
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the world export job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   LimitExceeded
    #
    #   : The requested resource exceeds the maximum number allowed, or the
    #     number of concurrent stream requests exceeds the maximum number
    #     allowed.
    #
    #   ResourceNotFound
    #
    #   : The specified resource could not be found.
    #
    #   RequestThrottled
    #
    #   : The request was throttled.
    #
    #   InvalidInput
    #
    #   : An input parameter in the request is not valid.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The output location.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that the world export process uses to access the Amazon
    #   S3 bucket and put the export.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world export job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldExportJobResponse AWS API Documentation
    #
    class CreateWorldExportJobResponse < Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :client_request_token,
      :output_location,
      :iam_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorldGenerationJobRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         template: "Arn", # required
    #         world_count: { # required
    #           floorplan_count: 1,
    #           interior_count_per_floorplan: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template describing the
    #   worlds you want to create.
    #   @return [String]
    #
    # @!attribute [rw] world_count
    #   Information about the world count.
    #   @return [Types::WorldCount]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world generator job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldGenerationJobRequest AWS API Documentation
    #
    class CreateWorldGenerationJobRequest < Struct.new(
      :client_request_token,
      :template,
      :world_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world generator job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the world generator job.
    #
    #   Pending
    #
    #   : The world generator job request is pending.
    #
    #   Running
    #
    #   : The world generator job is running.
    #
    #   Completed
    #
    #   : The world generator job completed.
    #
    #   Failed
    #
    #   : The world generator job failed. See `failureCode` for more
    #     information.
    #
    #   PartialFailed
    #
    #   : Some worlds did not generate.
    #
    #   Canceled
    #
    #   : The world generator job was cancelled.
    #
    #   Canceling
    #
    #   : The world generator job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world generator
    #   job was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the world generator job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   LimitExceeded
    #
    #   : The requested resource exceeds the maximum number allowed, or the
    #     number of concurrent stream requests exceeds the maximum number
    #     allowed.
    #
    #   ResourceNotFound
    #
    #   : The specified resource could not be found.
    #
    #   RequestThrottled
    #
    #   : The request was throttled.
    #
    #   InvalidInput
    #
    #   : An input parameter in the request is not valid.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] world_count
    #   Information about the world count.
    #   @return [Types::WorldCount]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world generator job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldGenerationJobResponse AWS API Documentation
    #
    class CreateWorldGenerationJobResponse < Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :client_request_token,
      :template,
      :world_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWorldTemplateRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         name: "TemplateName",
    #         template_body: "Json",
    #         template_location: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key", # required
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the world template.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The world template body.
    #   @return [String]
    #
    # @!attribute [rw] template_location
    #   The location of the world template.
    #   @return [Types::TemplateLocation]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldTemplateRequest AWS API Documentation
    #
    class CreateWorldTemplateRequest < Struct.new(
      :client_request_token,
      :name,
      :template_body,
      :template_location,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world template
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the world template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateWorldTemplateResponse AWS API Documentation
    #
    class CreateWorldTemplateResponse < Struct.new(
      :arn,
      :client_request_token,
      :created_at,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a data source.
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where the data files are located.
    #   @return [String]
    #
    # @!attribute [rw] s3_keys
    #   The list of S3 keys identifying the data source files.
    #   @return [Array<Types::S3KeyOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :name,
      :s3_bucket,
      :s3_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a data source.
    #
    # @note When making an API call, you may pass DataSourceConfig
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         s3_bucket: "S3Bucket", # required
    #         s3_keys: ["S3Key"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the data source.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where the data files are located.
    #   @return [String]
    #
    # @!attribute [rw] s3_keys
    #   The list of S3 keys identifying the data source files.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DataSourceConfig AWS API Documentation
    #
    class DataSourceConfig < Struct.new(
      :name,
      :s3_bucket,
      :s3_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet: "Arn", # required
    #       }
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteFleetRequest AWS API Documentation
    #
    class DeleteFleetRequest < Struct.new(
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteFleetResponse AWS API Documentation
    #
    class DeleteFleetResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRobotApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #       }
    #
    # @!attribute [rw] application
    #   The Amazon Resource Name (ARN) of the the robot application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the robot application to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobotApplicationRequest AWS API Documentation
    #
    class DeleteRobotApplicationRequest < Struct.new(
      :application,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobotApplicationResponse AWS API Documentation
    #
    class DeleteRobotApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRobotRequest
    #   data as a hash:
    #
    #       {
    #         robot: "Arn", # required
    #       }
    #
    # @!attribute [rw] robot
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobotRequest AWS API Documentation
    #
    class DeleteRobotRequest < Struct.new(
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteRobotResponse AWS API Documentation
    #
    class DeleteRobotResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSimulationApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the simulation application to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the simulation application to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteSimulationApplicationRequest AWS API Documentation
    #
    class DeleteSimulationApplicationRequest < Struct.new(
      :application,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteSimulationApplicationResponse AWS API Documentation
    #
    class DeleteSimulationApplicationResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteWorldTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template: "Arn", # required
    #       }
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteWorldTemplateRequest AWS API Documentation
    #
    class DeleteWorldTemplateRequest < Struct.new(
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteWorldTemplateResponse AWS API Documentation
    #
    class DeleteWorldTemplateResponse < Aws::EmptyStructure; end

    # Information about a deployment application configuration.
    #
    # @note When making an API call, you may pass DeploymentApplicationConfig
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "DeploymentVersion", # required
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           pre_launch_file: "Path",
    #           launch_file: "Command", # required
    #           post_launch_file: "Path",
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] application
    #   The Amazon Resource Name (ARN) of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the application.
    #   @return [String]
    #
    # @!attribute [rw] launch_config
    #   The launch configuration.
    #   @return [Types::DeploymentLaunchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeploymentApplicationConfig AWS API Documentation
    #
    class DeploymentApplicationConfig < Struct.new(
      :application,
      :application_version,
      :launch_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a deployment configuration.
    #
    # @note When making an API call, you may pass DeploymentConfig
    #   data as a hash:
    #
    #       {
    #         concurrent_deployment_percentage: 1,
    #         failure_threshold_percentage: 1,
    #         robot_deployment_timeout_in_seconds: 1,
    #         download_condition_file: {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #           etag: "S3Etag",
    #         },
    #       }
    #
    # @!attribute [rw] concurrent_deployment_percentage
    #   The percentage of robots receiving the deployment at the same time.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_threshold_percentage
    #   The percentage of deployments that need to fail before stopping
    #   deployment.
    #   @return [Integer]
    #
    # @!attribute [rw] robot_deployment_timeout_in_seconds
    #   The amount of time, in seconds, to wait for deployment to a single
    #   robot to complete. Choose a time between 1 minute and 7 days. The
    #   default is 5 hours.
    #   @return [Integer]
    #
    # @!attribute [rw] download_condition_file
    #   The download condition file.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeploymentConfig AWS API Documentation
    #
    class DeploymentConfig < Struct.new(
      :concurrent_deployment_percentage,
      :failure_threshold_percentage,
      :robot_deployment_timeout_in_seconds,
      :download_condition_file)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a deployment job.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] deployment_application_configs
    #   The deployment application configuration.
    #   @return [Array<Types::DeploymentApplicationConfig>]
    #
    # @!attribute [rw] deployment_config
    #   The deployment configuration.
    #   @return [Types::DeploymentConfig]
    #
    # @!attribute [rw] failure_reason
    #   A short description of the reason why the deployment job failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The deployment job failure code.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the deployment job
    #   was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeploymentJob AWS API Documentation
    #
    class DeploymentJob < Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_application_configs,
      :deployment_config,
      :failure_reason,
      :failure_code,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a deployment launch.
    #
    # @note When making an API call, you may pass DeploymentLaunchConfig
    #   data as a hash:
    #
    #       {
    #         package_name: "Command", # required
    #         pre_launch_file: "Path",
    #         launch_file: "Command", # required
    #         post_launch_file: "Path",
    #         environment_variables: {
    #           "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #         },
    #       }
    #
    # @!attribute [rw] package_name
    #   The package name.
    #   @return [String]
    #
    # @!attribute [rw] pre_launch_file
    #   The deployment pre-launch file. This file will be executed prior to
    #   the launch file.
    #   @return [String]
    #
    # @!attribute [rw] launch_file
    #   The launch file name.
    #   @return [String]
    #
    # @!attribute [rw] post_launch_file
    #   The deployment post-launch file. This file will be executed after
    #   the launch file.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   An array of key/value pairs specifying environment variables for the
    #   robot application
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeploymentLaunchConfig AWS API Documentation
    #
    class DeploymentLaunchConfig < Struct.new(
      :package_name,
      :pre_launch_file,
      :launch_file,
      :post_launch_file,
      :environment_variables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterRobotRequest
    #   data as a hash:
    #
    #       {
    #         fleet: "Arn", # required
    #         robot: "Arn", # required
    #       }
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] robot
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeregisterRobotRequest AWS API Documentation
    #
    class DeregisterRobotRequest < Struct.new(
      :fleet,
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] robot
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeregisterRobotResponse AWS API Documentation
    #
    class DeregisterRobotResponse < Struct.new(
      :fleet,
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeploymentJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (ARN) of the deployment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeDeploymentJobRequest AWS API Documentation
    #
    class DescribeDeploymentJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config
    #   The deployment configuration.
    #   @return [Types::DeploymentConfig]
    #
    # @!attribute [rw] deployment_application_configs
    #   The deployment application configuration.
    #   @return [Array<Types::DeploymentApplicationConfig>]
    #
    # @!attribute [rw] failure_reason
    #   A short description of the reason why the deployment job failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The deployment job failure code.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the deployment job
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] robot_deployment_summary
    #   A list of robot deployment summaries.
    #   @return [Array<Types::RobotDeployment>]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified deployment job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeDeploymentJobResponse AWS API Documentation
    #
    class DescribeDeploymentJobResponse < Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_config,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at,
      :robot_deployment_summary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFleetRequest
    #   data as a hash:
    #
    #       {
    #         fleet: "Arn", # required
    #       }
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeFleetRequest AWS API Documentation
    #
    class DescribeFleetRequest < Struct.new(
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] robots
    #   A list of robots.
    #   @return [Array<Types::Robot>]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the fleet was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_status
    #   The status of the last deployment.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_job
    #   The Amazon Resource Name (ARN) of the last deployment job.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_time
    #   The time of the last deployment.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified fleet.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeFleetResponse AWS API Documentation
    #
    class DescribeFleetResponse < Struct.new(
      :name,
      :arn,
      :robots,
      :created_at,
      :last_deployment_status,
      :last_deployment_job,
      :last_deployment_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRobotApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #       }
    #
    # @!attribute [rw] application
    #   The Amazon Resource Name (ARN) of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the robot application to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobotApplicationRequest AWS API Documentation
    #
    class DescribeRobotApplicationRequest < Struct.new(
      :application,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the robot
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified robot application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobotApplicationResponse AWS API Documentation
    #
    class DescribeRobotApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :revision_id,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRobotRequest
    #   data as a hash:
    #
    #       {
    #         robot: "Arn", # required
    #       }
    #
    # @!attribute [rw] robot
    #   The Amazon Resource Name (ARN) of the robot to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobotRequest AWS API Documentation
    #
    class DescribeRobotRequest < Struct.new(
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] greengrass_group_id
    #   The Greengrass group id.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the robot was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] architecture
    #   The target architecture of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_job
    #   The Amazon Resource Name (ARN) of the last deployment job.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_time
    #   The time of the last deployment job.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified robot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeRobotResponse AWS API Documentation
    #
    class DescribeRobotResponse < Struct.new(
      :arn,
      :name,
      :fleet_arn,
      :status,
      :greengrass_group_id,
      :created_at,
      :architecture,
      :last_deployment_job,
      :last_deployment_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSimulationApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the simulation application to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationApplicationRequest AWS API Documentation
    #
    class DescribeSimulationApplicationRequest < Struct.new(
      :application,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot simulation application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified simulation application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationApplicationResponse AWS API Documentation
    #
    class DescribeSimulationApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :revision_id,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSimulationJobBatchRequest
    #   data as a hash:
    #
    #       {
    #         batch: "Arn", # required
    #       }
    #
    # @!attribute [rw] batch
    #   The id of the batch to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobBatchRequest AWS API Documentation
    #
    class DescribeSimulationJobBatchRequest < Struct.new(
      :batch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the batch.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the batch.
    #
    #   Pending
    #
    #   : The simulation job batch request is pending.
    #
    #   InProgress
    #
    #   : The simulation job batch is in progress.
    #
    #   Failed
    #
    #   : The simulation job batch failed. One or more simulation job
    #     requests could not be completed due to an internal failure (like
    #     `InternalServiceError`). See `failureCode` and `failureReason` for
    #     more information.
    #
    #   Completed
    #
    #   : The simulation batch job completed. A batch is complete when (1)
    #     there are no pending simulation job requests in the batch and none
    #     of the failed simulation job requests are due to
    #     `InternalServiceError` and (2) when all created simulation jobs
    #     have reached a terminal state (for example, `Completed` or
    #     `Failed`).
    #
    #   Canceled
    #
    #   : The simulation batch job was cancelled.
    #
    #   Canceling
    #
    #   : The simulation batch job is being cancelled.
    #
    #   Completing
    #
    #   : The simulation batch job is completing.
    #
    #   TimingOut
    #
    #   : The simulation job batch is timing out.
    #
    #     If a batch timing out, and there are pending requests that were
    #     failing due to an internal failure (like `InternalServiceError`),
    #     the batch status will be `Failed`. If there are no such failing
    #     request, the batch status will be `TimedOut`.
    #
    #   TimedOut
    #
    #   : The simulation batch job timed out.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch was created.
    #   @return [Time]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] batch_policy
    #   The batch policy.
    #   @return [Types::BatchPolicy]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the simulation job batch.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the simulation job batch failed.
    #   @return [String]
    #
    # @!attribute [rw] failed_requests
    #   A list of failed create simulation job requests. The request failed
    #   to be created into a simulation job. Failed requests do not have a
    #   simulation job ID.
    #   @return [Array<Types::FailedCreateSimulationJobRequest>]
    #
    # @!attribute [rw] pending_requests
    #   A list of pending simulation job requests. These requests have not
    #   yet been created into simulation jobs.
    #   @return [Array<Types::SimulationJobRequest>]
    #
    # @!attribute [rw] created_requests
    #   A list of created simulation job summaries.
    #   @return [Array<Types::SimulationJobSummary>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job batch.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobBatchResponse AWS API Documentation
    #
    class DescribeSimulationJobBatchResponse < Struct.new(
      :arn,
      :status,
      :last_updated_at,
      :created_at,
      :client_request_token,
      :batch_policy,
      :failure_code,
      :failure_reason,
      :failed_requests,
      :pending_requests,
      :created_requests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (ARN) of the simulation job to be
    #   described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobRequest AWS API Documentation
    #
    class DescribeSimulationJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] last_started_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_behavior
    #   The failure behavior for the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the simulation job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   RobotApplicationCrash
    #
    #   : Robot application exited abnormally.
    #
    #   SimulationApplicationCrash
    #
    #   : Simulation application exited abnormally.
    #
    #   BadPermissionsRobotApplication
    #
    #   : Robot application bundle could not be downloaded.
    #
    #   BadPermissionsSimulationApplication
    #
    #   : Simulation application bundle could not be downloaded.
    #
    #   BadPermissionsS3Output
    #
    #   : Unable to publish outputs to customer-provided S3 bucket.
    #
    #   BadPermissionsCloudwatchLogs
    #
    #   : Unable to publish logs to customer-provided CloudWatch Logs
    #     resource.
    #
    #   SubnetIpLimitExceeded
    #
    #   : Subnet IP limit exceeded.
    #
    #   ENILimitExceeded
    #
    #   : ENI limit exceeded.
    #
    #   BadPermissionsUserCredentials
    #
    #   : Unable to use the Role provided.
    #
    #   InvalidBundleRobotApplication
    #
    #   : Robot bundle cannot be extracted (invalid format, bundling error,
    #     or other issue).
    #
    #   InvalidBundleSimulationApplication
    #
    #   : Simulation bundle cannot be extracted (invalid format, bundling
    #     error, or other issue).
    #
    #   RobotApplicationVersionMismatchedEtag
    #
    #   : Etag for RobotApplication does not match value during version
    #     creation.
    #
    #   SimulationApplicationVersionMismatchedEtag
    #
    #   : Etag for SimulationApplication does not match value during version
    #     creation.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   Details about why the simulation job failed. For more information
    #   about troubleshooting, see [Troubleshooting][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   Location for output files generated by the simulation job.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] logging_config
    #   The logging configuration.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] max_job_duration_in_seconds
    #   The maximum job duration in seconds. The value must be 8 days
    #   (691,200 seconds) or less.
    #   @return [Integer]
    #
    # @!attribute [rw] simulation_time_millis
    #   The simulation job execution duration in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that allows the simulation instance to call the AWS
    #   APIs that are specified in its associated policies on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] robot_applications
    #   A list of robot applications.
    #   @return [Array<Types::RobotApplicationConfig>]
    #
    # @!attribute [rw] simulation_applications
    #   A list of simulation applications.
    #   @return [Array<Types::SimulationApplicationConfig>]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the simulation job.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] tags
    #   The list of all tags added to the specified simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration.
    #   @return [Types::VPCConfigResponse]
    #
    # @!attribute [rw] network_interface
    #   The network interface information for the simulation job.
    #   @return [Types::NetworkInterface]
    #
    # @!attribute [rw] compute
    #   Compute information for the simulation job.
    #   @return [Types::ComputeResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobResponse AWS API Documentation
    #
    class DescribeSimulationJobResponse < Struct.new(
      :arn,
      :name,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :network_interface,
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorldExportJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (arn) of the world export job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldExportJobRequest AWS API Documentation
    #
    class DescribeWorldExportJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the world export job.
    #
    #   Pending
    #
    #   : The world export job request is pending.
    #
    #   Running
    #
    #   : The world export job is running.
    #
    #   Completed
    #
    #   : The world export job completed.
    #
    #   Failed
    #
    #   : The world export job failed. See `failureCode` and `failureReason`
    #     for more information.
    #
    #   Canceled
    #
    #   : The world export job was cancelled.
    #
    #   Canceling
    #
    #   : The world export job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world export job
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the world export job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   LimitExceeded
    #
    #   : The requested resource exceeds the maximum number allowed, or the
    #     number of concurrent stream requests exceeds the maximum number
    #     allowed.
    #
    #   ResourceNotFound
    #
    #   : The specified resource could not be found.
    #
    #   RequestThrottled
    #
    #   : The request was throttled.
    #
    #   InvalidInput
    #
    #   : An input parameter in the request is not valid.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the world export job failed.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] worlds
    #   A list of Amazon Resource Names (arns) that correspond to worlds to
    #   be exported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_location
    #   The output location.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that the world export process uses to access the Amazon
    #   S3 bucket and put the export.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world export job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldExportJobResponse AWS API Documentation
    #
    class DescribeWorldExportJobResponse < Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :worlds,
      :output_location,
      :iam_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorldGenerationJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (arn) of the world generation job to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldGenerationJobRequest AWS API Documentation
    #
    class DescribeWorldGenerationJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world generation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the world generation job:
    #
    #   Pending
    #
    #   : The world generation job request is pending.
    #
    #   Running
    #
    #   : The world generation job is running.
    #
    #   Completed
    #
    #   : The world generation job completed.
    #
    #   Failed
    #
    #   : The world generation job failed. See `failureCode` for more
    #     information.
    #
    #   PartialFailed
    #
    #   : Some worlds did not generate.
    #
    #   Canceled
    #
    #   : The world generation job was cancelled.
    #
    #   Canceling
    #
    #   : The world generation job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world generation
    #   job was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the world generation job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   LimitExceeded
    #
    #   : The requested resource exceeds the maximum number allowed, or the
    #     number of concurrent stream requests exceeds the maximum number
    #     allowed.
    #
    #   ResourceNotFound
    #
    #   : The specified resource could not be found.
    #
    #   RequestThrottled
    #
    #   : The request was throttled.
    #
    #   InvalidInput
    #
    #   : An input parameter in the request is not valid.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the world generation job failed.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] world_count
    #   Information about the world count.
    #   @return [Types::WorldCount]
    #
    # @!attribute [rw] finished_worlds_summary
    #   Summary information about finished worlds.
    #   @return [Types::FinishedWorldsSummary]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world generation job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldGenerationJobResponse AWS API Documentation
    #
    class DescribeWorldGenerationJobResponse < Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :template,
      :world_count,
      :finished_worlds_summary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorldRequest
    #   data as a hash:
    #
    #       {
    #         world: "Arn", # required
    #       }
    #
    # @!attribute [rw] world
    #   The Amazon Resource Name (arn) of the world you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldRequest AWS API Documentation
    #
    class DescribeWorldRequest < Struct.new(
      :world)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (arn) of the world.
    #   @return [String]
    #
    # @!attribute [rw] generation_job
    #   The Amazon Resource Name (arn) of the world generation job that
    #   generated the world.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The world template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldResponse AWS API Documentation
    #
    class DescribeWorldResponse < Struct.new(
      :arn,
      :generation_job,
      :template,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeWorldTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template: "Arn", # required
    #       }
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template you want to
    #   describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldTemplateRequest AWS API Documentation
    #
    class DescribeWorldTemplateRequest < Struct.new(
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the world template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world template
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the world template
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   world template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeWorldTemplateResponse AWS API Documentation
    #
    class DescribeWorldTemplateResponse < Struct.new(
      :arn,
      :client_request_token,
      :name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a failed create simulation job request.
    #
    # @!attribute [rw] request
    #   The simulation job request.
    #   @return [Types::SimulationJobRequest]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason of the simulation job request.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code.
    #   @return [String]
    #
    # @!attribute [rw] failed_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/FailedCreateSimulationJobRequest AWS API Documentation
    #
    class FailedCreateSimulationJobRequest < Struct.new(
      :request,
      :failure_reason,
      :failure_code,
      :failed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about worlds that failed.
    #
    # @!attribute [rw] total_failure_count
    #   The total number of failures.
    #   @return [Integer]
    #
    # @!attribute [rw] failures
    #   The worlds that failed.
    #   @return [Array<Types::WorldFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/FailureSummary AWS API Documentation
    #
    class FailureSummary < Struct.new(
      :total_failure_count,
      :failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a filter.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "Name",
    #         values: ["Name"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about worlds that finished.
    #
    # @!attribute [rw] finished_count
    #   The total number of finished worlds.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_worlds
    #   A list of worlds that succeeded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failure_summary
    #   Information about worlds that failed.
    #   @return [Types::FailureSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/FinishedWorldsSummary AWS API Documentation
    #
    class FinishedWorldsSummary < Struct.new(
      :finished_count,
      :succeeded_worlds,
      :failure_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a fleet.
    #
    # @!attribute [rw] name
    #   The name of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the fleet was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_status
    #   The status of the last fleet deployment.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_job
    #   The Amazon Resource Name (ARN) of the last deployment job.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_time
    #   The time of the last deployment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/Fleet AWS API Documentation
    #
    class Fleet < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_status,
      :last_deployment_job,
      :last_deployment_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetWorldTemplateBodyRequest
    #   data as a hash:
    #
    #       {
    #         template: "Arn",
    #         generation_job: "Arn",
    #       }
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] generation_job
    #   The Amazon Resource Name (arn) of the world generator job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/GetWorldTemplateBodyRequest AWS API Documentation
    #
    class GetWorldTemplateBodyRequest < Struct.new(
      :template,
      :generation_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_body
    #   The world template body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/GetWorldTemplateBodyResponse AWS API Documentation
    #
    class GetWorldTemplateBodyResponse < Struct.new(
      :template_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request uses the same client token as a previous, but
    # non-identical request. Do not reuse a client token with different
    # requests, unless the requests are identical.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS RoboMaker experienced a service issue. Try your call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter specified in a request is not valid, is unsupported, or
    # cannot be used. The returned message provides an explanation of the
    # error value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a launch configuration.
    #
    # @note When making an API call, you may pass LaunchConfig
    #   data as a hash:
    #
    #       {
    #         package_name: "Command", # required
    #         launch_file: "Command", # required
    #         environment_variables: {
    #           "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #         },
    #         port_forwarding_config: {
    #           port_mappings: [
    #             {
    #               job_port: 1, # required
    #               application_port: 1, # required
    #               enable_on_public_ip: false,
    #             },
    #           ],
    #         },
    #         stream_ui: false,
    #       }
    #
    # @!attribute [rw] package_name
    #   The package name.
    #   @return [String]
    #
    # @!attribute [rw] launch_file
    #   The launch file name.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for the application launch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] port_forwarding_config
    #   The port forwarding configuration.
    #   @return [Types::PortForwardingConfig]
    #
    # @!attribute [rw] stream_ui
    #   Boolean indicating whether a streaming session will be configured
    #   for the application. If `True`, AWS RoboMaker will configure a
    #   connection so you can interact with your application as it is
    #   running in the simulation. You must configure and luanch the
    #   component. It must have a graphical user interface.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/LaunchConfig AWS API Documentation
    #
    class LaunchConfig < Struct.new(
      :package_name,
      :launch_file,
      :environment_variables,
      :port_forwarding_config,
      :stream_ui)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource exceeds the maximum number allowed, or the
    # number of concurrent stream requests exceeds the maximum number
    # allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDeploymentJobsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `fleetName` are supported. When
    #   filtering, you must use the complete value of the filtered item. You
    #   can use up to three filters, but they must be for the same named
    #   item. For example, if you are looking for items with the status
    #   `InProgress` or the status `Pending`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListDeploymentJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListDeploymentJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListDeploymentJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 200. If
    #   this parameter is not used, then `ListDeploymentJobs` returns up to
    #   200 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListDeploymentJobsRequest AWS API Documentation
    #
    class ListDeploymentJobsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_jobs
    #   A list of deployment jobs that meet the criteria of the request.
    #   @return [Array<Types::DeploymentJob>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListDeploymentJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListDeploymentJobsResponse AWS API Documentation
    #
    class ListDeploymentJobsResponse < Struct.new(
      :deployment_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFleetsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListFleets` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListFleets` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListFleets` request with the returned `nextToken` value.
    #   This value can be between 1 and 200. If this parameter is not used,
    #   then `ListFleets` returns up to 200 results and a `nextToken` value
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use
    #   the complete value of the filtered item. You can use up to three
    #   filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListFleetsRequest AWS API Documentation
    #
    class ListFleetsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_details
    #   A list of fleet details meeting the request criteria.
    #   @return [Array<Types::Fleet>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListFleets` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListFleetsResponse AWS API Documentation
    #
    class ListFleetsResponse < Struct.new(
      :fleet_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRobotApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         version_qualifier: "VersionQualifier",
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] version_qualifier
    #   The version qualifier of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListRobotApplications` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListRobotApplications` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListRobotApplications` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListRobotApplications` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use
    #   the complete value of the filtered item. You can use up to three
    #   filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotApplicationsRequest AWS API Documentation
    #
    class ListRobotApplicationsRequest < Struct.new(
      :version_qualifier,
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] robot_application_summaries
    #   A list of robot application summaries that meet the criteria of the
    #   request.
    #   @return [Array<Types::RobotApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListRobotApplications` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotApplicationsResponse AWS API Documentation
    #
    class ListRobotApplicationsResponse < Struct.new(
      :robot_application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRobotsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListRobots` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListRobots` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListRobots` request with the returned `nextToken` value.
    #   This value can be between 1 and 200. If this parameter is not used,
    #   then `ListRobots` returns up to 200 results and a `nextToken` value
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `fleetName` are supported. When
    #   filtering, you must use the complete value of the filtered item. You
    #   can use up to three filters, but they must be for the same named
    #   item. For example, if you are looking for items with the status
    #   `Registered` or the status `Available`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotsRequest AWS API Documentation
    #
    class ListRobotsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] robots
    #   A list of robots that meet the criteria of the request.
    #   @return [Array<Types::Robot>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListRobots` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotsResponse AWS API Documentation
    #
    class ListRobotsResponse < Struct.new(
      :robots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSimulationApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         version_qualifier: "VersionQualifier",
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] version_qualifier
    #   The version qualifier of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationApplications` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListSimulationApplications` only
    #   returns `maxResults` results in a single page along with a
    #   `nextToken` response element. The remaining results of the initial
    #   request can be seen by sending another `ListSimulationApplications`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If this parameter is not used, then
    #   `ListSimulationApplications` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional list of filters to limit results.
    #
    #   The filter name `name` is supported. When filtering, you must use
    #   the complete value of the filtered item. You can use up to three
    #   filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationApplicationsRequest AWS API Documentation
    #
    class ListSimulationApplicationsRequest < Struct.new(
      :version_qualifier,
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] simulation_application_summaries
    #   A list of simulation application summaries that meet the criteria of
    #   the request.
    #   @return [Array<Types::SimulationApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationApplications` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationApplicationsResponse AWS API Documentation
    #
    class ListSimulationApplicationsResponse < Struct.new(
      :simulation_application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSimulationJobBatchesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationJobBatches` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListSimulationJobBatches` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListSimulationJobBatches` request with
    #   the returned `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobBatchesRequest AWS API Documentation
    #
    class ListSimulationJobBatchesRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] simulation_job_batch_summaries
    #   A list of simulation job batch summaries.
    #   @return [Array<Types::SimulationJobBatchSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationJobBatches` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobBatchesResponse AWS API Documentation
    #
    class ListSimulationJobBatchesResponse < Struct.new(
      :simulation_job_batch_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSimulationJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListSimulationJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListSimulationJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 1000. If
    #   this parameter is not used, then `ListSimulationJobs` returns up to
    #   1000 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results.
    #
    #   The filter names `status` and `simulationApplicationName` and
    #   `robotApplicationName` are supported. When filtering, you must use
    #   the complete value of the filtered item. You can use up to three
    #   filters, but they must be for the same named item. For example, if
    #   you are looking for items with the status `Preparing` or the status
    #   `Running`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobsRequest AWS API Documentation
    #
    class ListSimulationJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] simulation_job_summaries
    #   A list of simulation job summaries that meet the criteria of the
    #   request.
    #   @return [Array<Types::SimulationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListSimulationJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobsResponse AWS API Documentation
    #
    class ListSimulationJobsResponse < Struct.new(
      :simulation_job_summaries,
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
    #   The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of all tags added to the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorldExportJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldExportJobs` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListWorldExportJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListWorldExportJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListWorldExportJobs` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results. You can use `generationJobId` and
    #   `templateId`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldExportJobsRequest AWS API Documentation
    #
    class ListWorldExportJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] world_export_job_summaries
    #   Summary information for world export jobs.
    #   @return [Array<Types::WorldExportJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldExportJobsRequest` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldExportJobsResponse AWS API Documentation
    #
    class ListWorldExportJobsResponse < Struct.new(
      :world_export_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorldGenerationJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldGenerationJobsRequest` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListWorldGeneratorJobs` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListWorldGeneratorJobs` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListWorldGeneratorJobs` returns up
    #   to 100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results. You can use `status` and
    #   `templateId`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldGenerationJobsRequest AWS API Documentation
    #
    class ListWorldGenerationJobsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] world_generation_job_summaries
    #   Summary information for world generator jobs.
    #   @return [Array<Types::WorldGenerationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldGeneratorJobsRequest` again and assign that token to the
    #   request object's `nextToken` parameter. If there are no remaining
    #   results, the previous response object's NextToken parameter is set
    #   to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldGenerationJobsResponse AWS API Documentation
    #
    class ListWorldGenerationJobsResponse < Struct.new(
      :world_generation_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorldTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldTemplates` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListWorldTemplates` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListWorldTemplates` request with the
    #   returned `nextToken` value. This value can be between 1 and 100. If
    #   this parameter is not used, then `ListWorldTemplates` returns up to
    #   100 results and a `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldTemplatesRequest AWS API Documentation
    #
    class ListWorldTemplatesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_summaries
    #   Summary information for templates.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorldTemplates` again and assign that token to the request
    #   object's `nextToken` parameter. If there are no remaining results,
    #   the previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldTemplatesResponse AWS API Documentation
    #
    class ListWorldTemplatesResponse < Struct.new(
      :template_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListWorldsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #         filters: [
    #           {
    #             name: "Name",
    #             values: ["Name"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorlds` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   When this parameter is used, `ListWorlds` only returns `maxResults`
    #   results in a single page along with a `nextToken` response element.
    #   The remaining results of the initial request can be seen by sending
    #   another `ListWorlds` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListWorlds` returns up to 100 results and a `nextToken` value
    #   if applicable.
    #   @return [Integer]
    #
    # @!attribute [rw] filters
    #   Optional filters to limit results. You can use `status`.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldsRequest AWS API Documentation
    #
    class ListWorldsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] world_summaries
    #   Summary information for worlds.
    #   @return [Array<Types::WorldSummary>]
    #
    # @!attribute [rw] next_token
    #   If the previous paginated request did not return all of the
    #   remaining results, the response object's `nextToken` parameter
    #   value is set to a token. To retrieve the next set of results, call
    #   `ListWorlds` again and assign that token to the request object's
    #   `nextToken` parameter. If there are no remaining results, the
    #   previous response object's NextToken parameter is set to null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListWorldsResponse AWS API Documentation
    #
    class ListWorldsResponse < Struct.new(
      :world_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration.
    #
    # @note When making an API call, you may pass LoggingConfig
    #   data as a hash:
    #
    #       {
    #         record_all_ros_topics: false, # required
    #       }
    #
    # @!attribute [rw] record_all_ros_topics
    #   A boolean indicating whether to record all ROS topics.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/LoggingConfig AWS API Documentation
    #
    class LoggingConfig < Struct.new(
      :record_all_ros_topics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a network interface.
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The IPv4 address of the network interface within the subnet.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The IPv4 public address of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :network_interface_id,
      :private_ip_address,
      :public_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output location.
    #
    # @note When making an API call, you may pass OutputLocation
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_prefix: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket for output.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The S3 folder in the `s3Bucket` where output files will be placed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/OutputLocation AWS API Documentation
    #
    class OutputLocation < Struct.new(
      :s3_bucket,
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for port forwarding.
    #
    # @note When making an API call, you may pass PortForwardingConfig
    #   data as a hash:
    #
    #       {
    #         port_mappings: [
    #           {
    #             job_port: 1, # required
    #             application_port: 1, # required
    #             enable_on_public_ip: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] port_mappings
    #   The port mappings for the configuration.
    #   @return [Array<Types::PortMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/PortForwardingConfig AWS API Documentation
    #
    class PortForwardingConfig < Struct.new(
      :port_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object representing a port mapping.
    #
    # @note When making an API call, you may pass PortMapping
    #   data as a hash:
    #
    #       {
    #         job_port: 1, # required
    #         application_port: 1, # required
    #         enable_on_public_ip: false,
    #       }
    #
    # @!attribute [rw] job_port
    #   The port number on the simulation job instance to use as a remote
    #   connection point.
    #   @return [Integer]
    #
    # @!attribute [rw] application_port
    #   The port number on the application.
    #   @return [Integer]
    #
    # @!attribute [rw] enable_on_public_ip
    #   A Boolean indicating whether to enable this port mapping on public
    #   IP.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :job_port,
      :application_port,
      :enable_on_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the progress of a deployment job.
    #
    # @!attribute [rw] current_progress
    #   The current progress status.
    #
    #   Validating
    #
    #   : Validating the deployment.
    #
    #   DownloadingExtracting
    #
    #   : Downloading and extracting the bundle on the robot.
    #
    #   ExecutingPreLaunch
    #
    #   : Executing pre-launch script(s) if provided.
    #
    #   Launching
    #
    #   : Launching the robot application.
    #
    #   ExecutingPostLaunch
    #
    #   : Executing post-launch script(s) if provided.
    #
    #   Finished
    #
    #   : Deployment is complete.
    #   @return [String]
    #
    # @!attribute [rw] percent_done
    #   Precentage of the step that is done. This currently only applies to
    #   the `Downloading/Extracting` step of the deployment. It is empty for
    #   other steps.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_time_remaining_seconds
    #   Estimated amount of time in seconds remaining in the step. This
    #   currently only applies to the `Downloading/Extracting` step of the
    #   deployment. It is empty for other steps.
    #   @return [Integer]
    #
    # @!attribute [rw] target_resource
    #   The Amazon Resource Name (ARN) of the deployment job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ProgressDetail AWS API Documentation
    #
    class ProgressDetail < Struct.new(
      :current_progress,
      :percent_done,
      :estimated_time_remaining_seconds,
      :target_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterRobotRequest
    #   data as a hash:
    #
    #       {
    #         fleet: "Arn", # required
    #         robot: "Arn", # required
    #       }
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] robot
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RegisterRobotRequest AWS API Documentation
    #
    class RegisterRobotRequest < Struct.new(
      :fleet,
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet that the robot will
    #   join.
    #   @return [String]
    #
    # @!attribute [rw] robot
    #   Information about the robot registration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RegisterRobotResponse AWS API Documentation
    #
    class RegisterRobotResponse < Struct.new(
      :fleet,
      :robot)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a rendering engine.
    #
    # @note When making an API call, you may pass RenderingEngine
    #   data as a hash:
    #
    #       {
    #         name: "OGRE", # accepts OGRE
    #         version: "RenderingEngineVersionType",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the rendering engine.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the rendering engine.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RenderingEngine AWS API Documentation
    #
    class RenderingEngine < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestartSimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         job: "Arn", # required
    #       }
    #
    # @!attribute [rw] job
    #   The Amazon Resource Name (ARN) of the simulation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RestartSimulationJobRequest AWS API Documentation
    #
    class RestartSimulationJobRequest < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RestartSimulationJobResponse AWS API Documentation
    #
    class RestartSimulationJobResponse < Aws::EmptyStructure; end

    # Information about a robot.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot.
    #   @return [String]
    #
    # @!attribute [rw] fleet_arn
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the robot.
    #   @return [String]
    #
    # @!attribute [rw] green_grass_group_id
    #   The Greengrass group associated with the robot.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the robot was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] architecture
    #   The architecture of the robot.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_job
    #   The Amazon Resource Name (ARN) of the last deployment job.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_time
    #   The time of the last deployment.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/Robot AWS API Documentation
    #
    class Robot < Struct.new(
      :arn,
      :name,
      :fleet_arn,
      :status,
      :green_grass_group_id,
      :created_at,
      :architecture,
      :last_deployment_job,
      :last_deployment_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application configuration information for a robot.
    #
    # @note When making an API call, you may pass RobotApplicationConfig
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           launch_file: "Command", # required
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false,
    #               },
    #             ],
    #           },
    #           stream_ui: false,
    #         },
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the robot application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] launch_config
    #   The launch configuration for the robot application.
    #   @return [Types::LaunchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotApplicationConfig AWS API Documentation
    #
    class RobotApplicationConfig < Struct.new(
      :application,
      :application_version,
      :launch_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a robot application.
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the robot.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the robot
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about a robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotApplicationSummary AWS API Documentation
    #
    class RobotApplicationSummary < Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at,
      :robot_software_suite)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a robot deployment.
    #
    # @!attribute [rw] arn
    #   The robot deployment Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] deployment_start_time
    #   The time, in milliseconds since the epoch, when the deployment was
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_finish_time
    #   The time, in milliseconds since the epoch, when the deployment
    #   finished.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the robot deployment.
    #   @return [String]
    #
    # @!attribute [rw] progress_detail
    #   Information about how the deployment is progressing.
    #   @return [Types::ProgressDetail]
    #
    # @!attribute [rw] failure_reason
    #   A short description of the reason why the robot deployment failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The robot deployment failure code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotDeployment AWS API Documentation
    #
    class RobotDeployment < Struct.new(
      :arn,
      :deployment_start_time,
      :deployment_finish_time,
      :status,
      :progress_detail,
      :failure_reason,
      :failure_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a robot software suite (ROS distribution).
    #
    # @note When making an API call, you may pass RobotSoftwareSuite
    #   data as a hash:
    #
    #       {
    #         name: "ROS", # accepts ROS, ROS2
    #         version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #       }
    #
    # @!attribute [rw] name
    #   The name of the robot software suite (ROS distribution).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot software suite (ROS distribution).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotSoftwareSuite AWS API Documentation
    #
    class RobotSoftwareSuite < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about S3 keys.
    #
    # @!attribute [rw] s3_key
    #   The S3 key.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The etag for the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/S3KeyOutput AWS API Documentation
    #
    class S3KeyOutput < Struct.new(
      :s3_key,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an S3 object.
    #
    # @note When making an API call, you may pass S3Object
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #         etag: "S3Etag",
    #       }
    #
    # @!attribute [rw] bucket
    #   The bucket containing the object.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key of the object.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   The etag of the object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket,
      :key,
      :etag)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has failed due to a temporary failure of the server.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a simulation application configuration.
    #
    # @note When making an API call, you may pass SimulationApplicationConfig
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         application_version: "Version",
    #         launch_config: { # required
    #           package_name: "Command", # required
    #           launch_file: "Command", # required
    #           environment_variables: {
    #             "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #           },
    #           port_forwarding_config: {
    #             port_mappings: [
    #               {
    #                 job_port: 1, # required
    #                 application_port: 1, # required
    #                 enable_on_public_ip: false,
    #               },
    #             ],
    #           },
    #           stream_ui: false,
    #         },
    #         world_configs: [
    #           {
    #             world: "Arn",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] launch_config
    #   The launch configuration for the simulation application.
    #   @return [Types::LaunchConfig]
    #
    # @!attribute [rw] world_configs
    #   A list of world configurations.
    #   @return [Array<Types::WorldConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationApplicationConfig AWS API Documentation
    #
    class SimulationApplicationConfig < Struct.new(
      :application,
      :application_version,
      :launch_config,
      :world_configs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a simulation application.
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about a robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] simulation_software_suite
    #   Information about a simulation software suite.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationApplicationSummary AWS API Documentation
    #
    class SimulationApplicationSummary < Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at,
      :robot_software_suite,
      :simulation_software_suite)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a simulation job.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] last_started_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] failure_behavior
    #   The failure behavior the simulation job.
    #
    #   Continue
    #
    #   : Restart the simulation job in the same host instance.
    #
    #   Fail
    #
    #   : Stop the simulation job and terminate the instance.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code of the simulation job if it failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the simulation job failed.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for this `SimulationJob` request.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   Location for output files generated by the simulation job.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] logging_config
    #   The logging configuration.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] max_job_duration_in_seconds
    #   The maximum simulation job duration in seconds. The value must be 8
    #   days (691,200 seconds) or less.
    #   @return [Integer]
    #
    # @!attribute [rw] simulation_time_millis
    #   The simulation job execution duration in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role
    #   The IAM role that allows the simulation instance to call the AWS
    #   APIs that are specified in its associated policies on your behalf.
    #   This is how credentials are passed in to your simulation job.
    #   @return [String]
    #
    # @!attribute [rw] robot_applications
    #   A list of robot applications.
    #   @return [Array<Types::RobotApplicationConfig>]
    #
    # @!attribute [rw] simulation_applications
    #   A list of simulation applications.
    #   @return [Array<Types::SimulationApplicationConfig>]
    #
    # @!attribute [rw] data_sources
    #   The data sources for the simulation job.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration information.
    #   @return [Types::VPCConfigResponse]
    #
    # @!attribute [rw] network_interface
    #   Information about a network interface.
    #   @return [Types::NetworkInterface]
    #
    # @!attribute [rw] compute
    #   Compute information for the simulation job
    #   @return [Types::ComputeResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJob AWS API Documentation
    #
    class SimulationJob < Struct.new(
      :arn,
      :name,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :network_interface,
      :compute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a simulation job batch.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the batch.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the simulation job batch.
    #
    #   Pending
    #
    #   : The simulation job batch request is pending.
    #
    #   InProgress
    #
    #   : The simulation job batch is in progress.
    #
    #   Failed
    #
    #   : The simulation job batch failed. One or more simulation job
    #     requests could not be completed due to an internal failure (like
    #     `InternalServiceError`). See `failureCode` and `failureReason` for
    #     more information.
    #
    #   Completed
    #
    #   : The simulation batch job completed. A batch is complete when (1)
    #     there are no pending simulation job requests in the batch and none
    #     of the failed simulation job requests are due to
    #     `InternalServiceError` and (2) when all created simulation jobs
    #     have reached a terminal state (for example, `Completed` or
    #     `Failed`).
    #
    #   Canceled
    #
    #   : The simulation batch job was cancelled.
    #
    #   Canceling
    #
    #   : The simulation batch job is being cancelled.
    #
    #   Completing
    #
    #   : The simulation batch job is completing.
    #
    #   TimingOut
    #
    #   : The simulation job batch is timing out.
    #
    #     If a batch timing out, and there are pending requests that were
    #     failing due to an internal failure (like `InternalServiceError`),
    #     the batch status will be `Failed`. If there are no such failing
    #     request, the batch status will be `TimedOut`.
    #
    #   TimedOut
    #
    #   : The simulation batch job timed out.
    #   @return [String]
    #
    # @!attribute [rw] failed_request_count
    #   The number of failed simulation job requests.
    #   @return [Integer]
    #
    # @!attribute [rw] pending_request_count
    #   The number of pending simulation job requests.
    #   @return [Integer]
    #
    # @!attribute [rw] created_request_count
    #   The number of created simulation job requests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJobBatchSummary AWS API Documentation
    #
    class SimulationJobBatchSummary < Struct.new(
      :arn,
      :last_updated_at,
      :created_at,
      :status,
      :failed_request_count,
      :pending_request_count,
      :created_request_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a simulation job request.
    #
    # @note When making an API call, you may pass SimulationJobRequest
    #   data as a hash:
    #
    #       {
    #         output_location: {
    #           s3_bucket: "S3Bucket",
    #           s3_prefix: "S3Key",
    #         },
    #         logging_config: {
    #           record_all_ros_topics: false, # required
    #         },
    #         max_job_duration_in_seconds: 1, # required
    #         iam_role: "IamRole",
    #         failure_behavior: "Fail", # accepts Fail, Continue
    #         use_default_applications: false,
    #         robot_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #           },
    #         ],
    #         simulation_applications: [
    #           {
    #             application: "Arn", # required
    #             application_version: "Version",
    #             launch_config: { # required
    #               package_name: "Command", # required
    #               launch_file: "Command", # required
    #               environment_variables: {
    #                 "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #               },
    #               port_forwarding_config: {
    #                 port_mappings: [
    #                   {
    #                     job_port: 1, # required
    #                     application_port: 1, # required
    #                     enable_on_public_ip: false,
    #                   },
    #                 ],
    #               },
    #               stream_ui: false,
    #             },
    #             world_configs: [
    #               {
    #                 world: "Arn",
    #               },
    #             ],
    #           },
    #         ],
    #         data_sources: [
    #           {
    #             name: "Name", # required
    #             s3_bucket: "S3Bucket", # required
    #             s3_keys: ["S3Key"], # required
    #           },
    #         ],
    #         vpc_config: {
    #           subnets: ["NonEmptyString"], # required
    #           security_groups: ["NonEmptyString"],
    #           assign_public_ip: false,
    #         },
    #         compute: {
    #           simulation_unit_limit: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] output_location
    #   The output location.
    #   @return [Types::OutputLocation]
    #
    # @!attribute [rw] logging_config
    #   The logging configuration.
    #   @return [Types::LoggingConfig]
    #
    # @!attribute [rw] max_job_duration_in_seconds
    #   The maximum simulation job duration in seconds. The value must be 8
    #   days (691,200 seconds) or less.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_role
    #   The IAM role name that allows the simulation instance to call the
    #   AWS APIs that are specified in its associated policies on your
    #   behalf. This is how credentials are passed in to your simulation
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] failure_behavior
    #   The failure behavior the simulation job.
    #
    #   Continue
    #
    #   : Restart the simulation job in the same host instance.
    #
    #   Fail
    #
    #   : Stop the simulation job and terminate the instance.
    #   @return [String]
    #
    # @!attribute [rw] use_default_applications
    #   Boolean indicating whether to use default simulation tool
    #   applications.
    #   @return [Boolean]
    #
    # @!attribute [rw] robot_applications
    #   The robot applications to use in the simulation job.
    #   @return [Array<Types::RobotApplicationConfig>]
    #
    # @!attribute [rw] simulation_applications
    #   The simulation applications to use in the simulation job.
    #   @return [Array<Types::SimulationApplicationConfig>]
    #
    # @!attribute [rw] data_sources
    #   Specify data sources to mount read-only files from S3 into your
    #   simulation. These files are available under
    #   `/opt/robomaker/datasources/data_source_name`.
    #
    #   <note markdown="1"> There is a limit of 100 files and a combined size of 25GB for all
    #   `DataSourceConfig` objects.
    #
    #    </note>
    #   @return [Array<Types::DataSourceConfig>]
    #
    # @!attribute [rw] vpc_config
    #   If your simulation job accesses resources in a VPC, you provide this
    #   parameter identifying the list of security group IDs and subnet IDs.
    #   These must belong to the same VPC. You must provide at least one
    #   security group and two subnet IDs.
    #   @return [Types::VPCConfig]
    #
    # @!attribute [rw] compute
    #   Compute information for the simulation job
    #   @return [Types::Compute]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job request.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJobRequest AWS API Documentation
    #
    class SimulationJobRequest < Struct.new(
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :iam_role,
      :failure_behavior,
      :use_default_applications,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :vpc_config,
      :compute,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a simulation job.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the simulation job.
    #   @return [String]
    #
    # @!attribute [rw] simulation_application_names
    #   A list of simulation job simulation application names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] robot_application_names
    #   A list of simulation job robot application names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_source_names
    #   The names of the data sources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJobSummary AWS API Documentation
    #
    class SimulationJobSummary < Struct.new(
      :arn,
      :last_updated_at,
      :name,
      :status,
      :simulation_application_names,
      :robot_application_names,
      :data_source_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a simulation software suite.
    #
    # @note When making an API call, you may pass SimulationSoftwareSuite
    #   data as a hash:
    #
    #       {
    #         name: "Gazebo", # accepts Gazebo, RosbagPlay
    #         version: "SimulationSoftwareSuiteVersionType",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the simulation software suite.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the simulation software suite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationSoftwareSuite AWS API Documentation
    #
    class SimulationSoftwareSuite < Struct.new(
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a source.
    #
    # @!attribute [rw] s3_bucket
    #   The s3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The s3 object key.
    #   @return [String]
    #
    # @!attribute [rw] etag
    #   A hash of the object specified by `s3Bucket` and `s3Key`.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The taget processor architecture for the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/Source AWS API Documentation
    #
    class Source < Struct.new(
      :s3_bucket,
      :s3_key,
      :etag,
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a source configuration.
    #
    # @note When making an API call, you may pass SourceConfig
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket",
    #         s3_key: "S3Key",
    #         architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The s3 object key.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The target processor architecture for the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SourceConfig AWS API Documentation
    #
    class SourceConfig < Struct.new(
      :s3_bucket,
      :s3_key,
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSimulationJobBatchRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken",
    #         batch_policy: {
    #           timeout_in_seconds: 1,
    #           max_concurrency: 1,
    #         },
    #         create_simulation_job_requests: [ # required
    #           {
    #             output_location: {
    #               s3_bucket: "S3Bucket",
    #               s3_prefix: "S3Key",
    #             },
    #             logging_config: {
    #               record_all_ros_topics: false, # required
    #             },
    #             max_job_duration_in_seconds: 1, # required
    #             iam_role: "IamRole",
    #             failure_behavior: "Fail", # accepts Fail, Continue
    #             use_default_applications: false,
    #             robot_applications: [
    #               {
    #                 application: "Arn", # required
    #                 application_version: "Version",
    #                 launch_config: { # required
    #                   package_name: "Command", # required
    #                   launch_file: "Command", # required
    #                   environment_variables: {
    #                     "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #                   },
    #                   port_forwarding_config: {
    #                     port_mappings: [
    #                       {
    #                         job_port: 1, # required
    #                         application_port: 1, # required
    #                         enable_on_public_ip: false,
    #                       },
    #                     ],
    #                   },
    #                   stream_ui: false,
    #                 },
    #               },
    #             ],
    #             simulation_applications: [
    #               {
    #                 application: "Arn", # required
    #                 application_version: "Version",
    #                 launch_config: { # required
    #                   package_name: "Command", # required
    #                   launch_file: "Command", # required
    #                   environment_variables: {
    #                     "EnvironmentVariableKey" => "EnvironmentVariableValue",
    #                   },
    #                   port_forwarding_config: {
    #                     port_mappings: [
    #                       {
    #                         job_port: 1, # required
    #                         application_port: 1, # required
    #                         enable_on_public_ip: false,
    #                       },
    #                     ],
    #                   },
    #                   stream_ui: false,
    #                 },
    #                 world_configs: [
    #                   {
    #                     world: "Arn",
    #                   },
    #                 ],
    #               },
    #             ],
    #             data_sources: [
    #               {
    #                 name: "Name", # required
    #                 s3_bucket: "S3Bucket", # required
    #                 s3_keys: ["S3Key"], # required
    #               },
    #             ],
    #             vpc_config: {
    #               subnets: ["NonEmptyString"], # required
    #               security_groups: ["NonEmptyString"],
    #               assign_public_ip: false,
    #             },
    #             compute: {
    #               simulation_unit_limit: 1,
    #             },
    #             tags: {
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] batch_policy
    #   The batch policy.
    #   @return [Types::BatchPolicy]
    #
    # @!attribute [rw] create_simulation_job_requests
    #   A list of simulation job requests to create in the batch.
    #   @return [Array<Types::SimulationJobRequest>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   deployment job batch.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/StartSimulationJobBatchRequest AWS API Documentation
    #
    class StartSimulationJobBatchRequest < Struct.new(
      :client_request_token,
      :batch_policy,
      :create_simulation_job_requests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (arn) of the batch.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the simulation job batch.
    #
    #   Pending
    #
    #   : The simulation job batch request is pending.
    #
    #   InProgress
    #
    #   : The simulation job batch is in progress.
    #
    #   Failed
    #
    #   : The simulation job batch failed. One or more simulation job
    #     requests could not be completed due to an internal failure (like
    #     `InternalServiceError`). See `failureCode` and `failureReason` for
    #     more information.
    #
    #   Completed
    #
    #   : The simulation batch job completed. A batch is complete when (1)
    #     there are no pending simulation job requests in the batch and none
    #     of the failed simulation job requests are due to
    #     `InternalServiceError` and (2) when all created simulation jobs
    #     have reached a terminal state (for example, `Completed` or
    #     `Failed`).
    #
    #   Canceled
    #
    #   : The simulation batch job was cancelled.
    #
    #   Canceling
    #
    #   : The simulation batch job is being cancelled.
    #
    #   Completing
    #
    #   : The simulation batch job is completing.
    #
    #   TimingOut
    #
    #   : The simulation job batch is timing out.
    #
    #     If a batch timing out, and there are pending requests that were
    #     failing due to an internal failure (like `InternalServiceError`),
    #     the batch status will be `Failed`. If there are no such failing
    #     request, the batch status will be `TimedOut`.
    #
    #   TimedOut
    #
    #   : The simulation batch job timed out.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the simulation job
    #   batch was created.
    #   @return [Time]
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    #
    # @!attribute [rw] batch_policy
    #   The batch policy.
    #   @return [Types::BatchPolicy]
    #
    # @!attribute [rw] failure_code
    #   The failure code if the simulation job batch failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason the simulation job batch failed.
    #   @return [String]
    #
    # @!attribute [rw] failed_requests
    #   A list of failed simulation job requests. The request failed to be
    #   created into a simulation job. Failed requests do not have a
    #   simulation job ID.
    #   @return [Array<Types::FailedCreateSimulationJobRequest>]
    #
    # @!attribute [rw] pending_requests
    #   A list of pending simulation job requests. These requests have not
    #   yet been created into simulation jobs.
    #   @return [Array<Types::SimulationJobRequest>]
    #
    # @!attribute [rw] created_requests
    #   A list of created simulation job request summaries.
    #   @return [Array<Types::SimulationJobSummary>]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   deployment job batch.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/StartSimulationJobBatchResponse AWS API Documentation
    #
    class StartSimulationJobBatchResponse < Struct.new(
      :arn,
      :status,
      :created_at,
      :client_request_token,
      :batch_policy,
      :failure_code,
      :failure_reason,
      :failed_requests,
      :pending_requests,
      :created_requests,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SyncDeploymentJobRequest
    #   data as a hash:
    #
    #       {
    #         client_request_token: "ClientRequestToken", # required
    #         fleet: "Arn", # required
    #       }
    #
    # @!attribute [rw] client_request_token
    #   Unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The target fleet for the synchronization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SyncDeploymentJobRequest AWS API Documentation
    #
    class SyncDeploymentJobRequest < Struct.new(
      :client_request_token,
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the synchronization request.
    #   @return [String]
    #
    # @!attribute [rw] fleet
    #   The Amazon Resource Name (ARN) of the fleet.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the synchronization job.
    #   @return [String]
    #
    # @!attribute [rw] deployment_config
    #   Information about the deployment configuration.
    #   @return [Types::DeploymentConfig]
    #
    # @!attribute [rw] deployment_application_configs
    #   Information about the deployment application configurations.
    #   @return [Array<Types::DeploymentApplicationConfig>]
    #
    # @!attribute [rw] failure_reason
    #   The failure reason if the job fails.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   The failure code if the job fails:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   RobotApplicationCrash
    #
    #   : Robot application exited abnormally.
    #
    #   SimulationApplicationCrash
    #
    #   : Simulation application exited abnormally.
    #
    #   BadPermissionsRobotApplication
    #
    #   : Robot application bundle could not be downloaded.
    #
    #   BadPermissionsSimulationApplication
    #
    #   : Simulation application bundle could not be downloaded.
    #
    #   BadPermissionsS3Output
    #
    #   : Unable to publish outputs to customer-provided S3 bucket.
    #
    #   BadPermissionsCloudwatchLogs
    #
    #   : Unable to publish logs to customer-provided CloudWatch Logs
    #     resource.
    #
    #   SubnetIpLimitExceeded
    #
    #   : Subnet IP limit exceeded.
    #
    #   ENILimitExceeded
    #
    #   : ENI limit exceeded.
    #
    #   BadPermissionsUserCredentials
    #
    #   : Unable to use the Role provided.
    #
    #   InvalidBundleRobotApplication
    #
    #   : Robot bundle cannot be extracted (invalid format, bundling error,
    #     or other issue).
    #
    #   InvalidBundleSimulationApplication
    #
    #   : Simulation bundle cannot be extracted (invalid format, bundling
    #     error, or other issue).
    #
    #   RobotApplicationVersionMismatchedEtag
    #
    #   : Etag for RobotApplication does not match value during version
    #     creation.
    #
    #   SimulationApplicationVersionMismatchedEtag
    #
    #   : Etag for SimulationApplication does not match value during version
    #     creation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the fleet was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SyncDeploymentJobResponse AWS API Documentation
    #
    class SyncDeploymentJobResponse < Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_config,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at)
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
    #   The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are
    #   tagging.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Information about a template location.
    #
    # @note When making an API call, you may pass TemplateLocation
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key", # required
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The list of S3 keys identifying the data source files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TemplateLocation AWS API Documentation
    #
    class TemplateLocation < Struct.new(
      :s3_bucket,
      :s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a template.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the template was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the template was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS RoboMaker is temporarily unable to process the request. Try your
    # call again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are
    #   removing tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A map that contains tag keys and tag values that will be unattached
    #   from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRobotApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         sources: [ # required
    #           {
    #             s3_bucket: "S3Bucket",
    #             s3_key: "S3Key",
    #             architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #           },
    #         ],
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS, ROS2
    #           version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #         },
    #         current_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::SourceConfig>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] current_revision_id
    #   The revision id for the robot application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateRobotApplicationRequest AWS API Documentation
    #
    class UpdateRobotApplicationRequest < Struct.new(
      :application,
      :sources,
      :robot_software_suite,
      :current_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated robot application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the robot application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] robot_software_suite
    #   The robot software suite (ROS distribution) used by the robot
    #   application.
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the robot
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the robot application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateRobotApplicationResponse AWS API Documentation
    #
    class UpdateRobotApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSimulationApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application: "Arn", # required
    #         sources: [ # required
    #           {
    #             s3_bucket: "S3Bucket",
    #             s3_key: "S3Key",
    #             architecture: "X86_64", # accepts X86_64, ARM64, ARMHF
    #           },
    #         ],
    #         simulation_software_suite: { # required
    #           name: "Gazebo", # accepts Gazebo, RosbagPlay
    #           version: "SimulationSoftwareSuiteVersionType",
    #         },
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS, ROS2
    #           version: "Kinetic", # accepts Kinetic, Melodic, Dashing
    #         },
    #         rendering_engine: {
    #           name: "OGRE", # accepts OGRE
    #           version: "RenderingEngineVersionType",
    #         },
    #         current_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] application
    #   The application information for the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::SourceConfig>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] current_revision_id
    #   The revision id for the robot application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateSimulationApplicationRequest AWS API Documentation
    #
    class UpdateSimulationApplicationRequest < Struct.new(
      :application,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :current_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated simulation
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the simulation application.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot application.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The sources of the simulation application.
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] simulation_software_suite
    #   The simulation software suite used by the simulation application.
    #   @return [Types::SimulationSoftwareSuite]
    #
    # @!attribute [rw] robot_software_suite
    #   Information about the robot software suite (ROS distribution).
    #   @return [Types::RobotSoftwareSuite]
    #
    # @!attribute [rw] rendering_engine
    #   The rendering engine for the simulation application.
    #   @return [Types::RenderingEngine]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the simulation
    #   application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   The revision id of the simulation application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateSimulationApplicationResponse AWS API Documentation
    #
    class UpdateSimulationApplicationResponse < Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWorldTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template: "Arn", # required
    #         name: "TemplateName",
    #         template_body: "Json",
    #         template_location: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key", # required
    #         },
    #       }
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_body
    #   The world template body.
    #   @return [String]
    #
    # @!attribute [rw] template_location
    #   The location of the world template.
    #   @return [Types::TemplateLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateWorldTemplateRequest AWS API Documentation
    #
    class UpdateWorldTemplateRequest < Struct.new(
      :template,
      :name,
      :template_body,
      :template_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the world template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world template
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time, in milliseconds since the epoch, when the world template
    #   was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/UpdateWorldTemplateResponse AWS API Documentation
    #
    class UpdateWorldTemplateResponse < Struct.new(
      :arn,
      :name,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # If your simulation job accesses resources in a VPC, you provide this
    # parameter identifying the list of security group IDs and subnet IDs.
    # These must belong to the same VPC. You must provide at least one
    # security group and two subnet IDs.
    #
    # @note When making an API call, you may pass VPCConfig
    #   data as a hash:
    #
    #       {
    #         subnets: ["NonEmptyString"], # required
    #         security_groups: ["NonEmptyString"],
    #         assign_public_ip: false,
    #       }
    #
    # @!attribute [rw] subnets
    #   A list of one or more subnet IDs in your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   A list of one or more security groups IDs in your VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assign_public_ip
    #   A boolean indicating whether to assign a public IP address.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/VPCConfig AWS API Documentation
    #
    class VPCConfig < Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # VPC configuration associated with your simulation job.
    #
    # @!attribute [rw] subnets
    #   A list of subnet IDs associated with the simulation job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_groups
    #   A list of security group IDs associated with the simulation job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID associated with your simulation job.
    #   @return [String]
    #
    # @!attribute [rw] assign_public_ip
    #   A boolean indicating if a public IP was assigned.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/VPCConfigResponse AWS API Documentation
    #
    class VPCConfigResponse < Struct.new(
      :subnets,
      :security_groups,
      :vpc_id,
      :assign_public_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for a world.
    #
    # @note When making an API call, you may pass WorldConfig
    #   data as a hash:
    #
    #       {
    #         world: "Arn",
    #       }
    #
    # @!attribute [rw] world
    #   The world generated by Simulation WorldForge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldConfig AWS API Documentation
    #
    class WorldConfig < Struct.new(
      :world)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of worlds that will be created. You can configure the
    # number of unique floorplans and the number of unique interiors for
    # each floor plan. For example, if you want 1 world with 20 unique
    # interiors, you set `floorplanCount = 1` and `interiorCountPerFloorplan
    # = 20`. This will result in 20 worlds (`floorplanCount` *
    # `interiorCountPerFloorplan)`.
    #
    # If you set `floorplanCount = 4` and `interiorCountPerFloorplan = 5`,
    # there will be 20 worlds with 5 unique floor plans.
    #
    # @note When making an API call, you may pass WorldCount
    #   data as a hash:
    #
    #       {
    #         floorplan_count: 1,
    #         interior_count_per_floorplan: 1,
    #       }
    #
    # @!attribute [rw] floorplan_count
    #   The number of unique floorplans.
    #   @return [Integer]
    #
    # @!attribute [rw] interior_count_per_floorplan
    #   The number of unique interiors per floorplan.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldCount AWS API Documentation
    #
    class WorldCount < Struct.new(
      :floorplan_count,
      :interior_count_per_floorplan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a world export job.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the world export job.
    #
    #   Pending
    #
    #   : The world export job request is pending.
    #
    #   Running
    #
    #   : The world export job is running.
    #
    #   Completed
    #
    #   : The world export job completed.
    #
    #   Failed
    #
    #   : The world export job failed. See `failureCode` for more
    #     information.
    #
    #   Canceled
    #
    #   : The world export job was cancelled.
    #
    #   Canceling
    #
    #   : The world export job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world export job
    #   was created.
    #   @return [Time]
    #
    # @!attribute [rw] worlds
    #   A list of worlds.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldExportJobSummary AWS API Documentation
    #
    class WorldExportJobSummary < Struct.new(
      :arn,
      :status,
      :created_at,
      :worlds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a failed world.
    #
    # @!attribute [rw] failure_code
    #   The failure code of the world export job if it failed:
    #
    #   InternalServiceError
    #
    #   : Internal service error.
    #
    #   LimitExceeded
    #
    #   : The requested resource exceeds the maximum number allowed, or the
    #     number of concurrent stream requests exceeds the maximum number
    #     allowed.
    #
    #   ResourceNotFound
    #
    #   : The specified resource could not be found.
    #
    #   RequestThrottled
    #
    #   : The request was throttled.
    #
    #   InvalidInput
    #
    #   : An input parameter in the request is not valid.
    #   @return [String]
    #
    # @!attribute [rw] sample_failure_reason
    #   The sample reason why the world failed. World errors are aggregated.
    #   A sample is used as the `sampleFailureReason`.
    #   @return [String]
    #
    # @!attribute [rw] failure_count
    #   The number of failed worlds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldFailure AWS API Documentation
    #
    class WorldFailure < Struct.new(
      :failure_code,
      :sample_failure_reason,
      :failure_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a world generator job.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world generator job.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world generator
    #   job was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the world generator job:
    #
    #   Pending
    #
    #   : The world generator job request is pending.
    #
    #   Running
    #
    #   : The world generator job is running.
    #
    #   Completed
    #
    #   : The world generator job completed.
    #
    #   Failed
    #
    #   : The world generator job failed. See `failureCode` for more
    #     information.
    #
    #   PartialFailed
    #
    #   : Some worlds did not generate.
    #
    #   Canceled
    #
    #   : The world generator job was cancelled.
    #
    #   Canceling
    #
    #   : The world generator job is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] world_count
    #   Information about the world count.
    #   @return [Types::WorldCount]
    #
    # @!attribute [rw] succeeded_world_count
    #   The number of worlds that were generated.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_world_count
    #   The number of worlds that failed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldGenerationJobSummary AWS API Documentation
    #
    class WorldGenerationJobSummary < Struct.new(
      :arn,
      :template,
      :created_at,
      :status,
      :world_count,
      :succeeded_world_count,
      :failed_world_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a world.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the world.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time, in milliseconds since the epoch, when the world was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] generation_job
    #   The Amazon Resource Name (arn) of the world generation job.
    #   @return [String]
    #
    # @!attribute [rw] template
    #   The Amazon Resource Name (arn) of the world template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/WorldSummary AWS API Documentation
    #
    class WorldSummary < Struct.new(
      :arn,
      :created_at,
      :generation_job,
      :template)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
