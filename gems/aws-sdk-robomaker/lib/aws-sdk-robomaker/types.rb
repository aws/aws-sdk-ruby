# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RoboMaker
  module Types

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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CancelSimulationJobResponse AWS API Documentation
    #
    class CancelSimulationJobResponse < Aws::EmptyStructure; end

    # The failure percentage threshold percentage was met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ConcurrentDeploymentException AWS API Documentation
    #
    class ConcurrentDeploymentException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDeploymentJobRequest
    #   data as a hash:
    #
    #       {
    #         deployment_config: {
    #           concurrent_deployment_percentage: 1,
    #           failure_threshold_percentage: 1,
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
    #           name: "ROS", # accepts ROS
    #           version: "Kinetic", # accepts Kinetic
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
    #   The robot software suite used by the robot application.
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
    #   The robot software suite used by the robot application.
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
    #   The robot software suite used by the robot application.
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
    #           name: "Gazebo", # accepts Gazebo
    #           version: "SimulationSoftwareSuiteVersionType",
    #         },
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS
    #           version: "Kinetic", # accepts Kinetic
    #         },
    #         rendering_engine: { # required
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
    #   The robot software suite of the simulation application.
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
    #   Information about the robot software suite.
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
    #   Information about the robot software suite.
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
    #             },
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         vpc_config: {
    #           subnets: ["GenericString"], # required
    #           security_groups: ["GenericString"],
    #           assign_public_ip: false,
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationJobRequest AWS API Documentation
    #
    class CreateSimulationJobRequest < Struct.new(
      :client_request_token,
      :output_location,
      :max_job_duration_in_seconds,
      :iam_role,
      :failure_behavior,
      :robot_applications,
      :simulation_applications,
      :tags,
      :vpc_config)
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
    # @!attribute [rw] tags
    #   The list of all tags added to the simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   Information about the vpc configuration.
    #   @return [Types::VPCConfigResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/CreateSimulationJobResponse AWS API Documentation
    #
    class CreateSimulationJobResponse < Struct.new(
      :arn,
      :status,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :client_request_token,
      :output_location,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :tags,
      :vpc_config)
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeleteSimulationApplicationResponse AWS API Documentation
    #
    class DeleteSimulationApplicationResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DeploymentConfig AWS API Documentation
    #
    class DeploymentConfig < Struct.new(
      :concurrent_deployment_percentage,
      :failure_threshold_percentage)
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
    #   The robot software suite used by the robot application.
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
    #   Information about the robot software suite.
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
    # @!attribute [rw] tags
    #   The list of all tags added to the specified simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration.
    #   @return [Types::VPCConfigResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/DescribeSimulationJobResponse AWS API Documentation
    #
    class DescribeSimulationJobResponse < Struct.new(
      :arn,
      :name,
      :status,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :tags,
      :vpc_config)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/LaunchConfig AWS API Documentation
    #
    class LaunchConfig < Struct.new(
      :package_name,
      :launch_file,
      :environment_variables)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListDeploymentJobs` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListDeploymentJobs` in paginated output. When this parameter is
    #   used, `ListDeploymentJobs` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListDeploymentJobs` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListDeploymentJobs` returns up to 100 results and a
    #   `nextToken` value if applicable.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListDeploymentJobsRequest AWS API Documentation
    #
    class ListDeploymentJobsRequest < Struct.new(
      :filters,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] deployment_jobs
    #   A list of deployment jobs that meet the criteria of the request.
    #   @return [Array<Types::DeploymentJob>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListDeploymentJobs`
    #   request. When the results of a `ListDeploymentJobs` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListDeploymentJobsResponse AWS API Documentation
    #
    class ListDeploymentJobsResponse < Struct.new(
      :deployment_jobs,
      :next_token)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListFleets` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListFleets` in paginated output. When this parameter is used,
    #   `ListFleets` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another `ListFleets`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If this parameter is not used, then `ListFleets`
    #   returns up to 100 results and a `nextToken` value if applicable.
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
      include Aws::Structure
    end

    # @!attribute [rw] fleet_details
    #   A list of fleet details meeting the request criteria.
    #   @return [Array<Types::Fleet>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListDeploymentJobs`
    #   request. When the results of a `ListFleets` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListFleetsResponse AWS API Documentation
    #
    class ListFleetsResponse < Struct.new(
      :fleet_details,
      :next_token)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListRobotApplications` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListRobotApplications` in paginated output. When this parameter is
    #   used, `ListRobotApplications` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListRobotApplications` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListRobotApplications` returns up to 100 results and a
    #   `nextToken` value if applicable.
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
      include Aws::Structure
    end

    # @!attribute [rw] robot_application_summaries
    #   A list of robot application summaries that meet the criteria of the
    #   request.
    #   @return [Array<Types::RobotApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRobotApplications`
    #   request. When the results of a `ListRobotApplications` request
    #   exceed `maxResults`, this value can be used to retrieve the next
    #   page of results. This value is `null` when there are no more results
    #   to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotApplicationsResponse AWS API Documentation
    #
    class ListRobotApplicationsResponse < Struct.new(
      :robot_application_summaries,
      :next_token)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListRobots` request where `maxResults` was used and the results
    #   exceeded the value of that parameter. Pagination continues from the
    #   end of the previous results that returned the `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListRobots` in paginated output. When this parameter is used,
    #   `ListRobots` only returns `maxResults` results in a single page
    #   along with a `nextToken` response element. The remaining results of
    #   the initial request can be seen by sending another `ListRobots`
    #   request with the returned `nextToken` value. This value can be
    #   between 1 and 100. If this parameter is not used, then `ListRobots`
    #   returns up to 100 results and a `nextToken` value if applicable.
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
      include Aws::Structure
    end

    # @!attribute [rw] robots
    #   A list of robots that meet the criteria of the request.
    #   @return [Array<Types::Robot>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListRobots` request.
    #   When the results of a `ListRobot` request exceed `maxResults`, this
    #   value can be used to retrieve the next page of results. This value
    #   is `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListRobotsResponse AWS API Documentation
    #
    class ListRobotsResponse < Struct.new(
      :robots,
      :next_token)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListSimulationApplications` request where `maxResults` was used and
    #   the results exceeded the value of that parameter. Pagination
    #   continues from the end of the previous results that returned the
    #   `nextToken` value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListSimulationApplications` in paginated output. When this
    #   parameter is used, `ListSimulationApplications` only returns
    #   `maxResults` results in a single page along with a `nextToken`
    #   response element. The remaining results of the initial request can
    #   be seen by sending another `ListSimulationApplications` request with
    #   the returned `nextToken` value. This value can be between 1 and 100.
    #   If this parameter is not used, then `ListSimulationApplications`
    #   returns up to 100 results and a `nextToken` value if applicable.
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
      include Aws::Structure
    end

    # @!attribute [rw] simulation_application_summaries
    #   A list of simulation application summaries that meet the criteria of
    #   the request.
    #   @return [Array<Types::SimulationApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future
    #   `ListSimulationApplications` request. When the results of a
    #   `ListRobot` request exceed `maxResults`, this value can be used to
    #   retrieve the next page of results. This value is `null` when there
    #   are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationApplicationsResponse AWS API Documentation
    #
    class ListSimulationApplicationsResponse < Struct.new(
      :simulation_application_summaries,
      :next_token)
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
    #   The `nextToken` value returned from a previous paginated
    #   `ListSimulationJobs` request where `maxResults` was used and the
    #   results exceeded the value of that parameter. Pagination continues
    #   from the end of the previous results that returned the `nextToken`
    #   value.
    #
    #   <note markdown="1"> This token should be treated as an opaque identifier that is only
    #   used to retrieve the next items in a list and not for other
    #   programmatic purposes.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of deployment job results returned by
    #   `ListSimulationJobs` in paginated output. When this parameter is
    #   used, `ListSimulationJobs` only returns `maxResults` results in a
    #   single page along with a `nextToken` response element. The remaining
    #   results of the initial request can be seen by sending another
    #   `ListSimulationJobs` request with the returned `nextToken` value.
    #   This value can be between 1 and 100. If this parameter is not used,
    #   then `ListSimulationJobs` returns up to 100 results and a
    #   `nextToken` value if applicable.
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
      include Aws::Structure
    end

    # @!attribute [rw] simulation_job_summaries
    #   A list of simulation job summaries that meet the criteria of the
    #   request.
    #   @return [Array<Types::SimulationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value to include in a future `ListSimulationJobs`
    #   request. When the results of a `ListRobot` request exceed
    #   `maxResults`, this value can be used to retrieve the next page of
    #   results. This value is `null` when there are no more results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/ListSimulationJobsResponse AWS API Documentation
    #
    class ListSimulationJobsResponse < Struct.new(
      :simulation_job_summaries,
      :next_token)
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
    #   Downloading/Extracting
    #
    #   : Downloading and extracting the bundle on the robot.
    #
    #   Executing pre-launch script(s)
    #
    #   : Executing pre-launch script(s) if provided.
    #
    #   Launching
    #
    #   : Launching the robot application.
    #
    #   Executing post-launch script(s)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotApplicationSummary AWS API Documentation
    #
    class RobotApplicationSummary < Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at)
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
      include Aws::Structure
    end

    # Information about a robot software suite.
    #
    # @note When making an API call, you may pass RobotSoftwareSuite
    #   data as a hash:
    #
    #       {
    #         name: "ROS", # accepts ROS
    #         version: "Kinetic", # accepts Kinetic
    #       }
    #
    # @!attribute [rw] name
    #   The name of the robot software suite.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the robot software suite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/RobotSoftwareSuite AWS API Documentation
    #
    class RobotSoftwareSuite < Struct.new(
      :name,
      :version)
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
    #         },
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationApplicationConfig AWS API Documentation
    #
    class SimulationApplicationConfig < Struct.new(
      :application,
      :application_version,
      :launch_config)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationApplicationSummary AWS API Documentation
    #
    class SimulationApplicationSummary < Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at)
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
    #   This is how credentials are passed in to your simulation job. See
    #   how to [specify AWS security credentials for your application][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/toolkit-for-visual-studio/latest/user-guide/deployment-ecs-specify-credentials
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
    # @!attribute [rw] tags
    #   A map that contains tag keys and tag values that are attached to the
    #   simulation job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration information.
    #   @return [Types::VPCConfigResponse]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJob AWS API Documentation
    #
    class SimulationJob < Struct.new(
      :arn,
      :name,
      :status,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :tags,
      :vpc_config)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/SimulationJobSummary AWS API Documentation
    #
    class SimulationJobSummary < Struct.new(
      :arn,
      :last_updated_at,
      :name,
      :status,
      :simulation_application_names,
      :robot_application_names)
      include Aws::Structure
    end

    # Information about a simulation software suite.
    #
    # @note When making an API call, you may pass SimulationSoftwareSuite
    #   data as a hash:
    #
    #       {
    #         name: "Gazebo", # accepts Gazebo
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/robomaker-2018-06-29/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

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
    #           name: "ROS", # accepts ROS
    #           version: "Kinetic", # accepts Kinetic
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
    #   The robot software suite used by the robot application.
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
    #   The robot software suite used by the robot application.
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
    #           name: "Gazebo", # accepts Gazebo
    #           version: "SimulationSoftwareSuiteVersionType",
    #         },
    #         robot_software_suite: { # required
    #           name: "ROS", # accepts ROS
    #           version: "Kinetic", # accepts Kinetic
    #         },
    #         rendering_engine: { # required
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
    #   Information about the robot software suite.
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
    #   Information about the robot software suite.
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
    #         subnets: ["GenericString"], # required
    #         security_groups: ["GenericString"],
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
      include Aws::Structure
    end

  end
end
