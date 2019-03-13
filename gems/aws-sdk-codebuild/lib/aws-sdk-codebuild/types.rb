# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeBuild
  module Types

    # @note When making an API call, you may pass BatchDeleteBuildsInput
    #   data as a hash:
    #
    #       {
    #         ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] ids
    #   The IDs of the builds to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchDeleteBuildsInput AWS API Documentation
    #
    class BatchDeleteBuildsInput < Struct.new(
      :ids)
      include Aws::Structure
    end

    # @!attribute [rw] builds_deleted
    #   The IDs of the builds that were successfully deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] builds_not_deleted
    #   Information about any builds that could not be successfully deleted.
    #   @return [Array<Types::BuildNotDeleted>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchDeleteBuildsOutput AWS API Documentation
    #
    class BatchDeleteBuildsOutput < Struct.new(
      :builds_deleted,
      :builds_not_deleted)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetBuildsInput
    #   data as a hash:
    #
    #       {
    #         ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] ids
    #   The IDs of the builds.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildsInput AWS API Documentation
    #
    class BatchGetBuildsInput < Struct.new(
      :ids)
      include Aws::Structure
    end

    # @!attribute [rw] builds
    #   Information about the requested builds.
    #   @return [Array<Types::Build>]
    #
    # @!attribute [rw] builds_not_found
    #   The IDs of builds for which information could not be found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildsOutput AWS API Documentation
    #
    class BatchGetBuildsOutput < Struct.new(
      :builds,
      :builds_not_found)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetProjectsInput
    #   data as a hash:
    #
    #       {
    #         names: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] names
    #   The names of the build projects.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjectsInput AWS API Documentation
    #
    class BatchGetProjectsInput < Struct.new(
      :names)
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   Information about the requested build projects.
    #   @return [Array<Types::Project>]
    #
    # @!attribute [rw] projects_not_found
    #   The names of build projects for which information could not be
    #   found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjectsOutput AWS API Documentation
    #
    class BatchGetProjectsOutput < Struct.new(
      :projects,
      :projects_not_found)
      include Aws::Structure
    end

    # Information about a build.
    #
    # @!attribute [rw] id
    #   The unique ID for the build.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the build.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   When the build process started, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the build process ended, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] current_phase
    #   The current build phase.
    #   @return [String]
    #
    # @!attribute [rw] build_status
    #   The current status of the build. Valid values include:
    #
    #   * `FAILED`\: The build failed.
    #
    #   * `FAULT`\: The build faulted.
    #
    #   * `IN_PROGRESS`\: The build is still in progress.
    #
    #   * `STOPPED`\: The build stopped.
    #
    #   * `SUCCEEDED`\: The build succeeded.
    #
    #   * `TIMED_OUT`\: The build timed out.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Any version identifier for the version of the source code to be
    #   built.
    #   @return [String]
    #
    # @!attribute [rw] resolved_source_version
    #   An identifier for the version of this build's source code.
    #
    #   * For AWS CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the
    #     commit ID.
    #
    #   * For AWS CodePipeline, the source revision provided by AWS
    #     CodePipeline.
    #
    #   * For Amazon Simple Storage Service (Amazon S3), this does not
    #     apply.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild project.
    #   @return [String]
    #
    # @!attribute [rw] phases
    #   Information about all previous build phases that are complete and
    #   information about any current build phase that is not yet complete.
    #   @return [Array<Types::BuildPhase>]
    #
    # @!attribute [rw] source
    #   Information about the source code to be built.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] secondary_sources
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. Each
    #   `ProjectSourceVersion` must be one of:
    #
    #   * For AWS CodeCommit: the commit ID to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example, `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of
    #     the object that represents the build input ZIP file to use.
    #   @return [Array<Types::ProjectSourceVersion>]
    #
    # @!attribute [rw] artifacts
    #   Information about the output artifacts for the build.
    #   @return [Types::BuildArtifacts]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `ProjectArtifacts` objects.
    #   @return [Array<Types::BuildArtifacts>]
    #
    # @!attribute [rw] cache
    #   Information about the cache for the build.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The name of a service role used for this build.
    #   @return [String]
    #
    # @!attribute [rw] logs
    #   Information about the build's logs in Amazon CloudWatch Logs.
    #   @return [Types::LogsLocation]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, for AWS CodeBuild to wait before timing out
    #   this build if it does not get marked as completed.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it
    #   times out.
    #   @return [Integer]
    #
    # @!attribute [rw] build_complete
    #   Whether the build is complete. True if complete; otherwise, false.
    #   @return [Boolean]
    #
    # @!attribute [rw] initiator
    #   The entity that started the build. Valid values include:
    #
    #   * If AWS CodePipeline started the build, the pipeline's name (for
    #     example, `codepipeline/my-demo-pipeline`).
    #
    #   * If an AWS Identity and Access Management (IAM) user started the
    #     build, the user's name (for example, `MyUserName`).
    #
    #   * If the Jenkins plugin for AWS CodeBuild started the build, the
    #     string `CodeBuild-Jenkins-Plugin`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   If your AWS CodeBuild project accesses resources in an Amazon VPC,
    #   you provide this parameter that identifies the VPC ID and the list
    #   of security group IDs and subnet IDs. The security groups and
    #   subnets must belong to the same VPC. You must provide at least one
    #   security group and one subnet ID.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_interface
    #   Describes a network interface.
    #   @return [Types::NetworkInterface]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format `alias/alias-name
    #   `).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Build AWS API Documentation
    #
    class Build < Struct.new(
      :id,
      :arn,
      :start_time,
      :end_time,
      :current_phase,
      :build_status,
      :source_version,
      :resolved_source_version,
      :project_name,
      :phases,
      :source,
      :secondary_sources,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :logs,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :build_complete,
      :initiator,
      :vpc_config,
      :network_interface,
      :encryption_key)
      include Aws::Structure
    end

    # Information about build output artifacts.
    #
    # @!attribute [rw] location
    #   Information about the location of the build artifacts.
    #   @return [String]
    #
    # @!attribute [rw] sha256sum
    #   The SHA-256 hash of the build artifact.
    #
    #   You can use this hash along with a checksum tool to confirm file
    #   integrity and authenticity.
    #
    #   <note markdown="1"> This value is available only if the build project's `packaging`
    #   value is set to `ZIP`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] md5sum
    #   The MD5 hash of the build artifact.
    #
    #   You can use this hash along with a checksum tool to confirm file
    #   integrity and authenticity.
    #
    #   <note markdown="1"> This value is available only if the build project's `packaging`
    #   value is set to `ZIP`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] override_artifact_name
    #   If this flag is set, a name specified in the build spec file
    #   overrides the artifact name. The name specified in a build spec file
    #   is calculated at build time and uses the Shell Command Language. For
    #   example, you can append a date and time to your artifact name so
    #   that it is always unique.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_disabled
    #   Information that tells you if encryption for build artifacts is
    #   disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] artifact_identifier
    #   An identifier for this artifact definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildArtifacts AWS API Documentation
    #
    class BuildArtifacts < Struct.new(
      :location,
      :sha256sum,
      :md5sum,
      :override_artifact_name,
      :encryption_disabled,
      :artifact_identifier)
      include Aws::Structure
    end

    # Information about a build that could not be successfully deleted.
    #
    # @!attribute [rw] id
    #   The ID of the build that could not be successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   Additional information about the build that could not be
    #   successfully deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildNotDeleted AWS API Documentation
    #
    class BuildNotDeleted < Struct.new(
      :id,
      :status_code)
      include Aws::Structure
    end

    # Information about a stage for a build.
    #
    # @!attribute [rw] phase_type
    #   The name of the build phase. Valid values include:
    #
    #   * `BUILD`\: Core build activities typically occur in this build
    #     phase.
    #
    #   * `COMPLETED`\: The build has been completed.
    #
    #   * `DOWNLOAD_SOURCE`\: Source code is being downloaded in this build
    #     phase.
    #
    #   * `FINALIZING`\: The build process is completing in this build
    #     phase.
    #
    #   * `INSTALL`\: Installation activities typically occur in this build
    #     phase.
    #
    #   * `POST_BUILD`\: Post-build activities typically occur in this build
    #     phase.
    #
    #   * `PRE_BUILD`\: Pre-build activities typically occur in this build
    #     phase.
    #
    #   * `PROVISIONING`\: The build environment is being set up.
    #
    #   * `QUEUED`\: The build has been submitted and is queued behind other
    #     submitted builds.
    #
    #   * `SUBMITTED`\: The build has been submitted.
    #
    #   * `UPLOAD_ARTIFACTS`\: Build output artifacts are being uploaded to
    #     the output location.
    #   @return [String]
    #
    # @!attribute [rw] phase_status
    #   The current status of the build phase. Valid values include:
    #
    #   * `FAILED`\: The build phase failed.
    #
    #   * `FAULT`\: The build phase faulted.
    #
    #   * `IN_PROGRESS`\: The build phase is still in progress.
    #
    #   * `QUEUED`\: The build has been submitted and is queued behind other
    #     submitted builds.
    #
    #   * `STOPPED`\: The build phase stopped.
    #
    #   * `SUCCEEDED`\: The build phase succeeded.
    #
    #   * `TIMED_OUT`\: The build phase timed out.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   When the build phase started, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the build phase ended, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   How long, in seconds, between the starting and ending times of the
    #   build's phase.
    #   @return [Integer]
    #
    # @!attribute [rw] contexts
    #   Additional information about a build phase, especially to help
    #   troubleshoot a failed build.
    #   @return [Array<Types::PhaseContext>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildPhase AWS API Documentation
    #
    class BuildPhase < Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts)
      include Aws::Structure
    end

    # Information about Amazon CloudWatch Logs for a build project.
    #
    # @note When making an API call, you may pass CloudWatchLogsConfig
    #   data as a hash:
    #
    #       {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         group_name: "String",
    #         stream_name: "String",
    #       }
    #
    # @!attribute [rw] status
    #   The current status of the logs in Amazon CloudWatch Logs for a build
    #   project. Valid values are:
    #
    #   * `ENABLED`\: Amazon CloudWatch Logs are enabled for this build
    #     project.
    #
    #   * `DISABLED`\: Amazon CloudWatch Logs are not enabled for this build
    #     project.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The group name of the logs in Amazon CloudWatch Logs. For more
    #   information, see [Working with Log Groups and Log Streams][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The prefix of the stream name of the Amazon CloudWatch Logs. For
    #   more information, see [Working with Log Groups and Log Streams][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CloudWatchLogsConfig AWS API Documentation
    #
    class CloudWatchLogsConfig < Struct.new(
      :status,
      :group_name,
      :stream_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProjectInput
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         description: "ProjectDescription",
    #         source: { # required
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH", # required, accepts OAUTH
    #             resource: "String",
    #           },
    #           report_build_status: false,
    #           insecure_ssl: false,
    #           source_identifier: "String",
    #         },
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH", # required, accepts OAUTH
    #               resource: "String",
    #             },
    #             report_build_status: false,
    #             insecure_ssl: false,
    #             source_identifier: "String",
    #           },
    #         ],
    #         artifacts: { # required
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #         },
    #         secondary_artifacts: [
    #           {
    #             type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #             location: "String",
    #             path: "String",
    #             namespace_type: "NONE", # accepts NONE, BUILD_ID
    #             name: "String",
    #             packaging: "NONE", # accepts NONE, ZIP
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #           },
    #         ],
    #         cache: {
    #           type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #         },
    #         environment: { # required
    #           type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #             },
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #           },
    #           image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #         },
    #         service_role: "NonEmptyString", # required
    #         timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         encryption_key: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #         },
    #         badge_enabled: false,
    #         logs_config: {
    #           cloud_watch_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             group_name: "String",
    #             stream_name: "String",
    #           },
    #           s3_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             location: "String",
    #             encryption_disabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description that makes the build project easy to identify.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for the build project.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] secondary_sources
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] artifacts
    #   Information about the build output artifacts for the build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `ProjectArtifacts` objects.
    #   @return [Array<Types::ProjectArtifacts>]
    #
    # @!attribute [rw] cache
    #   Stores recently used information so that it can be quickly accessed
    #   at a later time.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for the build project.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   enables AWS CodeBuild to interact with dependent AWS services on
    #   behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait before it times out any build that has not been marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it
    #   times out.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format `alias/alias-name
    #   `).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon
    #   VPC.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #   @return [Boolean]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. These can be logs in
    #   Amazon CloudWatch Logs, logs uploaded to a specified S3 bucket, or
    #   both.
    #   @return [Types::LogsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProjectInput AWS API Documentation
    #
    class CreateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :vpc_config,
      :badge_enabled,
      :logs_config)
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   Information about the build project that was created.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProjectOutput AWS API Documentation
    #
    class CreateProjectOutput < Struct.new(
      :project)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWebhookInput
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         branch_filter: "String",
    #         filter_groups: [
    #           [
    #             {
    #               type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH
    #               pattern: "String", # required
    #               exclude_matched_pattern: false,
    #             },
    #           ],
    #         ],
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild project.
    #   @return [String]
    #
    # @!attribute [rw] branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches
    #   the regular expression, then it is built. If `branchFilter` is
    #   empty, then all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine
    #   which webhooks are triggered. At least one `WebhookFilter` in the
    #   array must specify `EVENT` as its `type`.
    #
    #   For a build to be triggered, at least one filter group in the
    #   `filterGroups` array must pass. For a filter group to pass, each of
    #   its filters must pass.
    #   @return [Array<Array<Types::WebhookFilter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhookInput AWS API Documentation
    #
    class CreateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :filter_groups)
      include Aws::Structure
    end

    # @!attribute [rw] webhook
    #   Information about a webhook that connects repository events to a
    #   build project in AWS CodeBuild.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhookOutput AWS API Documentation
    #
    class CreateWebhookOutput < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProjectInput
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProjectInput AWS API Documentation
    #
    class DeleteProjectInput < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProjectOutput AWS API Documentation
    #
    class DeleteProjectOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSourceCredentialsInput
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteSourceCredentialsInput AWS API Documentation
    #
    class DeleteSourceCredentialsInput < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteSourceCredentialsOutput AWS API Documentation
    #
    class DeleteSourceCredentialsOutput < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteWebhookInput
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhookInput AWS API Documentation
    #
    class DeleteWebhookInput < Struct.new(
      :project_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhookOutput AWS API Documentation
    #
    class DeleteWebhookOutput < Aws::EmptyStructure; end

    # Information about a Docker image that is managed by AWS CodeBuild.
    #
    # @!attribute [rw] name
    #   The name of the Docker image.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Docker image.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   A list of environment image versions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentImage AWS API Documentation
    #
    class EnvironmentImage < Struct.new(
      :name,
      :description,
      :versions)
      include Aws::Structure
    end

    # A set of Docker images that are related by programming language and
    # are managed by AWS CodeBuild.
    #
    # @!attribute [rw] language
    #   The programming language for the Docker images.
    #   @return [String]
    #
    # @!attribute [rw] images
    #   The list of Docker images that are related by the specified
    #   programming language.
    #   @return [Array<Types::EnvironmentImage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentLanguage AWS API Documentation
    #
    class EnvironmentLanguage < Struct.new(
      :language,
      :images)
      include Aws::Structure
    end

    # A set of Docker images that are related by platform and are managed by
    # AWS CodeBuild.
    #
    # @!attribute [rw] platform
    #   The platform's name.
    #   @return [String]
    #
    # @!attribute [rw] languages
    #   The list of programming languages that are available for the
    #   specified platform.
    #   @return [Array<Types::EnvironmentLanguage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentPlatform AWS API Documentation
    #
    class EnvironmentPlatform < Struct.new(
      :platform,
      :languages)
      include Aws::Structure
    end

    # Information about an environment variable for a build project or a
    # build.
    #
    # @note When making an API call, you may pass EnvironmentVariable
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         value: "String", # required
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #       }
    #
    # @!attribute [rw] name
    #   The name or key of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #
    #   We strongly discourage the use of environment variables to store
    #   sensitive values, especially AWS secret key IDs and secret access
    #   keys. Environment variables can be displayed in plain text using the
    #   AWS CodeBuild console and the AWS Command Line Interface (AWS CLI).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment variable. Valid values include:
    #
    #   * `PARAMETER_STORE`\: An environment variable stored in Amazon EC2
    #     Systems Manager Parameter Store.
    #
    #   * `PLAINTEXT`\: An environment variable in plaintext format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentVariable AWS API Documentation
    #
    class EnvironmentVariable < Struct.new(
      :name,
      :value,
      :type)
      include Aws::Structure
    end

    # Information about the Git submodules configuration for an AWS
    # CodeBuild build project.
    #
    # @note When making an API call, you may pass GitSubmodulesConfig
    #   data as a hash:
    #
    #       {
    #         fetch_submodules: false, # required
    #       }
    #
    # @!attribute [rw] fetch_submodules
    #   Set to true to fetch Git submodules for your AWS CodeBuild build
    #   project.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GitSubmodulesConfig AWS API Documentation
    #
    class GitSubmodulesConfig < Struct.new(
      :fetch_submodules)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportSourceCredentialsInput
    #   data as a hash:
    #
    #       {
    #         username: "NonEmptyString",
    #         token: "SensitiveNonEmptyString", # required
    #         server_type: "GITHUB", # required, accepts GITHUB, BITBUCKET, GITHUB_ENTERPRISE
    #         auth_type: "OAUTH", # required, accepts OAUTH, BASIC_AUTH, PERSONAL_ACCESS_TOKEN
    #       }
    #
    # @!attribute [rw] username
    #   The Bitbucket username when the `authType` is BASIC\_AUTH. This
    #   parameter is not valid for other types of source providers or
    #   connections.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   For GitHub or GitHub Enterprise, this is the personal access token.
    #   For Bitbucket, this is the app password.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The source provider used for this project.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication used to connect to a GitHub, GitHub
    #   Enterprise, or Bitbucket repository. An OAUTH connection is not
    #   supported by the API and must be created using the AWS CodeBuild
    #   console.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ImportSourceCredentialsInput AWS API Documentation
    #
    class ImportSourceCredentialsInput < Struct.new(
      :username,
      :token,
      :server_type,
      :auth_type)
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ImportSourceCredentialsOutput AWS API Documentation
    #
    class ImportSourceCredentialsOutput < Struct.new(
      :arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass InvalidateProjectCacheInput
    #   data as a hash:
    #
    #       {
    #         project_name: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild build project that the cache is reset
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCacheInput AWS API Documentation
    #
    class InvalidateProjectCacheInput < Struct.new(
      :project_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCacheOutput AWS API Documentation
    #
    class InvalidateProjectCacheOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListBuildsForProjectInput
    #   data as a hash:
    #
    #       {
    #         project_name: "NonEmptyString", # required
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild project.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, if there are more than 100 items in the
    #   list, only the first 100 items are returned, along with a unique
    #   string called a *next token*. To get the next batch of items in the
    #   list, call this operation again, adding the next token to the call.
    #   To get all of the items in the list, keep calling this operation
    #   with each subsequent next token that is returned, until no more next
    #   tokens are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProjectInput AWS API Documentation
    #
    class ListBuildsForProjectInput < Struct.new(
      :project_name,
      :sort_order,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of build IDs for the specified build project, with each build
    #   ID representing a single build.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *next
    #   token*. To get the next batch of items in the list, call this
    #   operation again, adding the next token to the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProjectOutput AWS API Documentation
    #
    class ListBuildsForProjectOutput < Struct.new(
      :ids,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBuildsInput
    #   data as a hash:
    #
    #       {
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`\: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`\: List the build IDs in descending order by build ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, if there are more than 100 items in the
    #   list, only the first 100 items are returned, along with a unique
    #   string called a *next token*. To get the next batch of items in the
    #   list, call this operation again, adding the next token to the call.
    #   To get all of the items in the list, keep calling this operation
    #   with each subsequent next token that is returned, until no more next
    #   tokens are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsInput AWS API Documentation
    #
    class ListBuildsInput < Struct.new(
      :sort_order,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of build IDs, with each build ID representing a single build.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *next
    #   token*. To get the next batch of items in the list, call this
    #   operation again, adding the next token to the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsOutput AWS API Documentation
    #
    class ListBuildsOutput < Struct.new(
      :ids,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImagesInput AWS API Documentation
    #
    class ListCuratedEnvironmentImagesInput < Aws::EmptyStructure; end

    # @!attribute [rw] platforms
    #   Information about supported platforms for Docker images that are
    #   managed by AWS CodeBuild.
    #   @return [Array<Types::EnvironmentPlatform>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImagesOutput AWS API Documentation
    #
    class ListCuratedEnvironmentImagesOutput < Struct.new(
      :platforms)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProjectsInput
    #   data as a hash:
    #
    #       {
    #         sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list build project names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`\: List based on when each build project was
    #     created.
    #
    #   * `LAST_MODIFIED_TIME`\: List based on when information about each
    #     build project was last changed.
    #
    #   * `NAME`\: List based on each build project's name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list build
    #   project names.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, if there are more than 100 items in the
    #   list, only the first 100 items are returned, along with a unique
    #   string called a *next token*. To get the next batch of items in the
    #   list, call this operation again, adding the next token to the call.
    #   To get all of the items in the list, keep calling this operation
    #   with each subsequent next token that is returned, until no more next
    #   tokens are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjectsInput AWS API Documentation
    #
    class ListProjectsInput < Struct.new(
      :sort_by,
      :sort_order,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *next
    #   token*. To get the next batch of items in the list, call this
    #   operation again, adding the next token to the call.
    #   @return [String]
    #
    # @!attribute [rw] projects
    #   The list of build project names, with each build project name
    #   representing a single build project.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListProjectsOutput AWS API Documentation
    #
    class ListProjectsOutput < Struct.new(
      :next_token,
      :projects)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSourceCredentialsInput AWS API Documentation
    #
    class ListSourceCredentialsInput < Aws::EmptyStructure; end

    # @!attribute [rw] source_credentials_infos
    #   A list of `SourceCredentialsInfo` objects. Each
    #   `SourceCredentialsInfo` object includes the authentication type,
    #   token ARN, and type of source provider for one set of credentials.
    #   @return [Array<Types::SourceCredentialsInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSourceCredentialsOutput AWS API Documentation
    #
    class ListSourceCredentialsOutput < Struct.new(
      :source_credentials_infos)
      include Aws::Structure
    end

    # Information about logs for a build project. These can be logs in
    # Amazon CloudWatch Logs, built in a specified S3 bucket, or both.
    #
    # @note When making an API call, you may pass LogsConfig
    #   data as a hash:
    #
    #       {
    #         cloud_watch_logs: {
    #           status: "ENABLED", # required, accepts ENABLED, DISABLED
    #           group_name: "String",
    #           stream_name: "String",
    #         },
    #         s3_logs: {
    #           status: "ENABLED", # required, accepts ENABLED, DISABLED
    #           location: "String",
    #           encryption_disabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch_logs
    #   Information about Amazon CloudWatch Logs for a build project. Amazon
    #   CloudWatch Logs are enabled by default.
    #   @return [Types::CloudWatchLogsConfig]
    #
    # @!attribute [rw] s3_logs
    #   Information about logs built to an S3 bucket for a build project. S3
    #   logs are not enabled by default.
    #   @return [Types::S3LogsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/LogsConfig AWS API Documentation
    #
    class LogsConfig < Struct.new(
      :cloud_watch_logs,
      :s3_logs)
      include Aws::Structure
    end

    # Information about build logs in Amazon CloudWatch Logs.
    #
    # @!attribute [rw] group_name
    #   The name of the Amazon CloudWatch Logs group for the build logs.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon CloudWatch Logs stream for the build logs.
    #   @return [String]
    #
    # @!attribute [rw] deep_link
    #   The URL to an individual build log in Amazon CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] s3_deep_link
    #   The URL to a build log in an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs
    #   Information about Amazon CloudWatch Logs for a build project.
    #   @return [Types::CloudWatchLogsConfig]
    #
    # @!attribute [rw] s3_logs
    #   Information about S3 logs for a build project.
    #   @return [Types::S3LogsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/LogsLocation AWS API Documentation
    #
    class LogsLocation < Struct.new(
      :group_name,
      :stream_name,
      :deep_link,
      :s3_deep_link,
      :cloud_watch_logs,
      :s3_logs)
      include Aws::Structure
    end

    # Describes a network interface.
    #
    # @!attribute [rw] subnet_id
    #   The ID of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] network_interface_id
    #   The ID of the network interface.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/NetworkInterface AWS API Documentation
    #
    class NetworkInterface < Struct.new(
      :subnet_id,
      :network_interface_id)
      include Aws::Structure
    end

    # Additional information about a build phase that has an error. You can
    # use this information for troubleshooting.
    #
    # @!attribute [rw] status_code
    #   The status code for the context of the build phase.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of the build phase's context. This might include a
    #   command ID and an exit code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/PhaseContext AWS API Documentation
    #
    class PhaseContext < Struct.new(
      :status_code,
      :message)
      include Aws::Structure
    end

    # Information about a build project.
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the build project.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description that makes the build project easy to identify.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for this build
    #   project.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] secondary_sources
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] artifacts
    #   Information about the build output artifacts for the build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `ProjectArtifacts` objects.
    #   @return [Array<Types::ProjectArtifacts>]
    #
    # @!attribute [rw] cache
    #   Information about the cache for the build project.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build project.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The ARN of the AWS Identity and Access Management (IAM) role that
    #   enables AWS CodeBuild to interact with dependent AWS services on
    #   behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait before timing out any related build that did not get marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it
    #   times out.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format `alias/alias-name
    #   `).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] created
    #   When the build project was created, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   When the build project's settings were last modified, expressed in
    #   Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] webhook
    #   Information about a webhook that connects repository events to a
    #   build project in AWS CodeBuild.
    #   @return [Types::Webhook]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that AWS CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge
    #   Information about the build badge for the build project.
    #   @return [Types::ProjectBadge]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. A project can create
    #   logs in Amazon CloudWatch Logs, an S3 bucket, or both.
    #   @return [Types::LogsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Project AWS API Documentation
    #
    class Project < Struct.new(
      :name,
      :arn,
      :description,
      :source,
      :secondary_sources,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :created,
      :last_modified,
      :webhook,
      :vpc_config,
      :badge,
      :logs_config)
      include Aws::Structure
    end

    # Information about the build output artifacts for the build project.
    #
    # @note When making an API call, you may pass ProjectArtifacts
    #   data as a hash:
    #
    #       {
    #         type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #         location: "String",
    #         path: "String",
    #         namespace_type: "NONE", # accepts NONE, BUILD_ID
    #         name: "String",
    #         packaging: "NONE", # accepts NONE, ZIP
    #         override_artifact_name: false,
    #         encryption_disabled: false,
    #         artifact_identifier: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of build output artifact. Valid values include:
    #
    #   * `CODEPIPELINE`\: The build project has build output generated
    #     through AWS CodePipeline.
    #
    #   * `NO_ARTIFACTS`\: The build project does not produce any build
    #     output.
    #
    #   * `S3`\: The build project stores build output in Amazon Simple
    #     Storage Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the build output artifact location:
    #
    #   * If `type` is set to `CODEPIPELINE`, AWS CodePipeline ignores this
    #     value if specified. This is because AWS CodePipeline manages its
    #     build output locations instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, this is the name of the output bucket.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Along with `namespaceType` and `name`, the pattern that AWS
    #   CodeBuild uses to name and store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, AWS CodePipeline ignores this
    #     value if specified. This is because AWS CodePipeline manages its
    #     build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, this is the path to the output artifact.
    #     If `path` is not specified, `path` is not used.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `NONE`, and `name` is set to `MyArtifact.zip`, the output
    #   artifact is stored in the output bucket at
    #   `MyArtifacts/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] namespace_type
    #   Along with `path` and `name`, the pattern that AWS CodeBuild uses to
    #   determine the name and location to store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, AWS CodePipeline ignores this
    #     value if specified. This is because AWS CodePipeline manages its
    #     build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, valid values include:
    #
    #     * `BUILD_ID`\: Include the build ID in the location of the build
    #       output artifact.
    #
    #     * `NONE`\: Do not include the build ID. This is the default if
    #       `namespaceType` is not specified.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `BUILD_ID`, and `name` is set to `MyArtifact.zip`, the output
    #   artifact is stored in `MyArtifacts/build-ID/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Along with `path` and `namespaceType`, the pattern that AWS
    #   CodeBuild uses to name and store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, AWS CodePipeline ignores this
    #     value if specified. This is because AWS CodePipeline manages its
    #     build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, this is the name of the output artifact
    #     object. If you set the name to be a forward slash ("/"), the
    #     artifact is stored in the root of the output bucket.
    #
    #   For example:
    #
    #   * If `path` is set to `MyArtifacts`, `namespaceType` is set to
    #     `BUILD_ID`, and `name` is set to `MyArtifact.zip`, then the output
    #     artifact is stored in `MyArtifacts/build-ID/MyArtifact.zip`.
    #
    #   * If `path` is empty, `namespaceType` is set to `NONE`, and `name`
    #     is set to "`/`", the output artifact is stored in the root of
    #     the output bucket.
    #
    #   * If `path` is set to `MyArtifacts`, `namespaceType` is set to
    #     `BUILD_ID`, and `name` is set to "`/`", the output artifact is
    #     stored in `MyArtifacts/build-ID `.
    #   @return [String]
    #
    # @!attribute [rw] packaging
    #   The type of build output artifact to create:
    #
    #   * If `type` is set to `CODEPIPELINE`, AWS CodePipeline ignores this
    #     value if specified. This is because AWS CodePipeline manages its
    #     build output artifacts instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, valid values include:
    #
    #     * `NONE`\: AWS CodeBuild creates in the output bucket a folder
    #       that contains the build output. This is the default if
    #       `packaging` is not specified.
    #
    #     * `ZIP`\: AWS CodeBuild creates in the output bucket a ZIP file
    #       that contains the build output.
    #   @return [String]
    #
    # @!attribute [rw] override_artifact_name
    #   If this flag is set, a name specified in the build spec file
    #   overrides the artifact name. The name specified in a build spec file
    #   is calculated at build time and uses the Shell Command Language. For
    #   example, you can append a date and time to your artifact name so
    #   that it is always unique.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_disabled
    #   Set to true if you do not want your output artifacts encrypted. This
    #   option is valid only if your artifacts type is Amazon Simple Storage
    #   Service (Amazon S3). If this is set with another artifacts type, an
    #   invalidInputException is thrown.
    #   @return [Boolean]
    #
    # @!attribute [rw] artifact_identifier
    #   An identifier for this artifact definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectArtifacts AWS API Documentation
    #
    class ProjectArtifacts < Struct.new(
      :type,
      :location,
      :path,
      :namespace_type,
      :name,
      :packaging,
      :override_artifact_name,
      :encryption_disabled,
      :artifact_identifier)
      include Aws::Structure
    end

    # Information about the build badge for the build project.
    #
    # @!attribute [rw] badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #   @return [Boolean]
    #
    # @!attribute [rw] badge_request_url
    #   The publicly-accessible URL through which you can access the build
    #   badge for your project.
    #
    #   The publicly accessible URL through which you can access the build
    #   badge for your project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectBadge AWS API Documentation
    #
    class ProjectBadge < Struct.new(
      :badge_enabled,
      :badge_request_url)
      include Aws::Structure
    end

    # Information about the cache for the build project.
    #
    # @note When making an API call, you may pass ProjectCache
    #   data as a hash:
    #
    #       {
    #         type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #         location: "String",
    #         modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #       }
    #
    # @!attribute [rw] type
    #   The type of cache used by the build project. Valid values include:
    #
    #   * `NO_CACHE`\: The build project does not use any cache.
    #
    #   * `S3`\: The build project reads and writes from and to S3.
    #
    #   * `LOCAL`\: The build project stores a cache locally on a build host
    #     that is only available to that build host.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the cache location:
    #
    #   * `NO_CACHE` or `LOCAL`\: This value is ignored.
    #
    #   * `S3`\: This is the S3 bucket name/prefix.
    #   @return [String]
    #
    # @!attribute [rw] modes
    #   If you use a `LOCAL` cache, the local cache mode. You can use one or
    #   more local cache modes at the same time.
    #
    #   * `LOCAL_SOURCE_CACHE` mode caches Git metadata for primary and
    #     secondary sources. After the cache is created, subsequent builds
    #     pull only the change between commits. This mode is a good choice
    #     for projects with a clean working directory and a source that is a
    #     large Git repository. If you choose this option and your project
    #     does not use a Git repository (GitHub, GitHub Enterprise, or
    #     Bitbucket), the option is ignored.
    #
    #   * `LOCAL_DOCKER_LAYER_CACHE` mode caches existing Docker layers.
    #     This mode is a good choice for projects that build or pull large
    #     Docker images. It can prevent the performance issues caused by
    #     pulling large Docker images down from the network.
    #
    #     <note markdown="1"> * You can use a Docker layer cache in the Linux enviornment only.
    #
    #     * The `privileged` flag must be set so that your project has the
    #       required Docker permissions.
    #
    #     * You should consider the security implications before you use a
    #       Docker layer cache.
    #
    #      </note>
    #   ^
    #
    #   * `LOCAL_CUSTOM_CACHE` mode caches directories you specify in the
    #     buildspec file. This mode is a good choice if your build scenario
    #     is not suited to one of the other three local cache modes. If you
    #     use a custom cache:
    #
    #     * Only directories can be specified for caching. You cannot
    #       specify individual files.
    #
    #     * Symlinks are used to reference cached directories.
    #
    #     * Cached directories are linked to your build before it downloads
    #       its project sources. Cached items are overriden if a source item
    #       has the same name. Directories are specified using cache paths
    #       in the buildspec file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectCache AWS API Documentation
    #
    class ProjectCache < Struct.new(
      :type,
      :location,
      :modes)
      include Aws::Structure
    end

    # Information about the build environment of the build project.
    #
    # @note When making an API call, you may pass ProjectEnvironment
    #   data as a hash:
    #
    #       {
    #         type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #           },
    #         ],
    #         privileged_mode: false,
    #         certificate: "String",
    #         registry_credential: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #         },
    #         image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #       }
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image tag or image digest that identifies the Docker image to
    #   use for this build project. Use the following formats:
    #
    #   * For an image tag: `registry/repository:tag`. For example, to
    #     specify an image with the tag "latest," use
    #     `registry/repository:latest`.
    #
    #   * For an image digest: `registry/repository@digest`. For example, to
    #     specify an image with the digest
    #     "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,"
    #     use
    #     `registry/repository@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf`.
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the build project uses.
    #   Available values include:
    #
    #   * `BUILD_GENERAL1_SMALL`\: Use up to 3 GB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`\: Use up to 7 GB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`\: Use up to 15 GB memory and 8 vCPUs for
    #     builds.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   A set of environment variables to make available to builds for this
    #   build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] privileged_mode
    #   Enables running the Docker daemon inside a Docker container. Set to
    #   true only if the build project is be used to build Docker images,
    #   and the specified build environment image is not provided by AWS
    #   CodeBuild with Docker support. Otherwise, all associated builds that
    #   attempt to interact with the Docker daemon fail. You must also start
    #   the Docker daemon so that builds can interact with it. One way to do
    #   this is to initialize the Docker daemon during the install phase of
    #   your build spec by running the following build commands. (Do not run
    #   these commands if the specified build environment image is provided
    #   by AWS CodeBuild with Docker support.)
    #
    #   If the operating system's base image is Ubuntu Linux:
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout 15 sh
    #   -c "until docker info; do echo .; sleep 1; done"`
    #
    #   If the operating system's base image is Alpine Linux, add the `-t`
    #   argument to `timeout`\:
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout 15 -t
    #   sh -c "until docker info; do echo .; sleep 1; done"`
    #   @return [Boolean]
    #
    # @!attribute [rw] certificate
    #   The certificate to use with this build project.
    #   @return [String]
    #
    # @!attribute [rw] registry_credential
    #   The credentials for access to a private registry.
    #   @return [Types::RegistryCredential]
    #
    # @!attribute [rw] image_pull_credentials_type
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   build. There are two valid values:
    #
    #   * `CODEBUILD` specifies that AWS CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     AWS CodeBuild's service principal.
    #
    #   * `SERVICE_ROLE` specifies that AWS CodeBuild uses your build
    #     project's service role.
    #
    #   When you use a cross-account or private registry image, you must use
    #   SERVICE\_ROLE credentials. When you use an AWS CodeBuild curated
    #   image, you must use CODEBUILD credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectEnvironment AWS API Documentation
    #
    class ProjectEnvironment < Struct.new(
      :type,
      :image,
      :compute_type,
      :environment_variables,
      :privileged_mode,
      :certificate,
      :registry_credential,
      :image_pull_credentials_type)
      include Aws::Structure
    end

    # Information about the build input source code for the build project.
    #
    # @note When making an API call, you may pass ProjectSource
    #   data as a hash:
    #
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         location: "String",
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         report_build_status: false,
    #         insecure_ssl: false,
    #         source_identifier: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values include:
    #
    #   * `BITBUCKET`\: The source code is in a Bitbucket repository.
    #
    #   * `CODECOMMIT`\: The source code is in an AWS CodeCommit repository.
    #
    #   * `CODEPIPELINE`\: The source code settings are specified in the
    #     source action of a pipeline in AWS CodePipeline.
    #
    #   * `GITHUB`\: The source code is in a GitHub repository.
    #
    #   * `NO_SOURCE`\: The project does not have input source code.
    #
    #   * `S3`\: The source code is in an Amazon Simple Storage Service
    #     (Amazon S3) input bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of the source code to be built. Valid
    #   values include:
    #
    #   * For source code settings that are specified in the source action
    #     of a pipeline in AWS CodePipeline, `location` should not be
    #     specified. If it is specified, AWS CodePipeline ignores it. This
    #     is because AWS CodePipeline uses the settings in a pipeline's
    #     source action instead of this value.
    #
    #   * For source code in an AWS CodeCommit repository, the HTTPS clone
    #     URL to the repository that contains the source code and the build
    #     spec (for example,
    #     `https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name
    #     `).
    #
    #   * For source code in an Amazon Simple Storage Service (Amazon S3)
    #     input bucket, one of the following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, ` bucket-name/path/to/object-name.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, ` bucket-name/path/to/source-code/folder/`).
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the build spec. You must
    #     connect your AWS account to your GitHub account. Use the AWS
    #     CodeBuild console to start creating a build project. When you use
    #     the console to connect (or reconnect) with GitHub, on the GitHub
    #     **Authorize application** page, for **Organization access**,
    #     choose **Request access** next to each repository you want to
    #     allow AWS CodeBuild to have access to, and then choose **Authorize
    #     application**. (After you have connected to your GitHub account,
    #     you do not need to finish creating the build project. You can
    #     leave the AWS CodeBuild console.) To instruct AWS CodeBuild to use
    #     this connection, in the `source` object, set the `auth` object's
    #     `type` value to `OAUTH`.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the build spec. You
    #     must connect your AWS account to your Bitbucket account. Use the
    #     AWS CodeBuild console to start creating a build project. When you
    #     use the console to connect (or reconnect) with Bitbucket, on the
    #     Bitbucket **Confirm access to your account** page, choose **Grant
    #     access**. (After you have connected to your Bitbucket account, you
    #     do not need to finish creating the build project. You can leave
    #     the AWS CodeBuild console.) To instruct AWS CodeBuild to use this
    #     connection, in the `source` object, set the `auth` object's
    #     `type` value to `OAUTH`.
    #   @return [String]
    #
    # @!attribute [rw] git_clone_depth
    #   Information about the Git clone depth for the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] git_submodules_config
    #   Information about the Git submodules configuration for the build
    #   project.
    #   @return [Types::GitSubmodulesConfig]
    #
    # @!attribute [rw] buildspec
    #   The build spec declaration to use for the builds in this build
    #   project.
    #
    #   If this value is not specified, a build spec must be included along
    #   with the source code to be built.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   Information about the authorization settings for AWS CodeBuild to
    #   access the source code to be built.
    #
    #   This information is for the AWS CodeBuild console's use only. Your
    #   code should not get or set this information directly.
    #   @return [Types::SourceAuth]
    #
    # @!attribute [rw] report_build_status
    #   Set to true to report the status of a build's start and finish to
    #   your source provider. This option is valid only when your source
    #   provider is GitHub, GitHub Enterprise, or Bitbucket. If this is set
    #   and you use a different source provider, an invalidInputException is
    #   thrown.
    #   @return [Boolean]
    #
    # @!attribute [rw] insecure_ssl
    #   Enable this flag to ignore SSL warnings while connecting to the
    #   project source code.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_identifier
    #   An identifier for this project source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectSource AWS API Documentation
    #
    class ProjectSource < Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :git_submodules_config,
      :buildspec,
      :auth,
      :report_build_status,
      :insecure_ssl,
      :source_identifier)
      include Aws::Structure
    end

    # A source identifier and its corresponding version.
    #
    # @note When making an API call, you may pass ProjectSourceVersion
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String", # required
    #         source_version: "String", # required
    #       }
    #
    # @!attribute [rw] source_identifier
    #   An identifier for a source in the build project.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The source version for the corresponding source identifier. If
    #   specified, must be one of:
    #
    #   * For AWS CodeCommit: the commit ID to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example, `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of
    #     the object that represents the build input ZIP file to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectSourceVersion AWS API Documentation
    #
    class ProjectSourceVersion < Struct.new(
      :source_identifier,
      :source_version)
      include Aws::Structure
    end

    # Information about credentials that provide access to a private Docker
    # registry. When this is set:
    #
    # * `imagePullCredentialsType` must be set to `SERVICE_ROLE`.
    #
    # * images cannot be curated or an Amazon ECR image.
    #
    # For more information, see [Private Registry with AWS Secrets Manager
    # Sample for AWS CodeBuild][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html
    #
    # @note When making an API call, you may pass RegistryCredential
    #   data as a hash:
    #
    #       {
    #         credential: "NonEmptyString", # required
    #         credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #       }
    #
    # @!attribute [rw] credential
    #   The Amazon Resource Name (ARN) or name of credentials created using
    #   AWS Secrets Manager.
    #
    #   <note markdown="1"> The `credential` can use the name of the credentials only if they
    #   exist in your current region.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The service that created the credentials to access a private Docker
    #   registry. The valid value, SECRETS\_MANAGER, is for AWS Secrets
    #   Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RegistryCredential AWS API Documentation
    #
    class RegistryCredential < Struct.new(
      :credential,
      :credential_provider)
      include Aws::Structure
    end

    # Information about S3 logs for a build project.
    #
    # @note When making an API call, you may pass S3LogsConfig
    #   data as a hash:
    #
    #       {
    #         status: "ENABLED", # required, accepts ENABLED, DISABLED
    #         location: "String",
    #         encryption_disabled: false,
    #       }
    #
    # @!attribute [rw] status
    #   The current status of the S3 build logs. Valid values are:
    #
    #   * `ENABLED`\: S3 build logs are enabled for this build project.
    #
    #   * `DISABLED`\: S3 build logs are not enabled for this build project.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The ARN of an S3 bucket and the path prefix for S3 logs. If your
    #   Amazon S3 bucket name is `my-bucket`, and your path prefix is
    #   `build-log`, then acceptable formats are `my-bucket/build-log` or
    #   `arn:aws:s3:::my-bucket/build-log`.
    #   @return [String]
    #
    # @!attribute [rw] encryption_disabled
    #   Set to true if you do not want your S3 build log output encrypted.
    #   By default S3 build logs are encrypted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/S3LogsConfig AWS API Documentation
    #
    class S3LogsConfig < Struct.new(
      :status,
      :location,
      :encryption_disabled)
      include Aws::Structure
    end

    # Information about the authorization settings for AWS CodeBuild to
    # access the source code to be built.
    #
    # This information is for the AWS CodeBuild console's use only. Your
    # code should not get or set this information directly.
    #
    # @note When making an API call, you may pass SourceAuth
    #   data as a hash:
    #
    #       {
    #         type: "OAUTH", # required, accepts OAUTH
    #         resource: "String",
    #       }
    #
    # @!attribute [rw] type
    #   <note markdown="1"> This data type is deprecated and is no longer accurate or used.
    #
    #    </note>
    #
    #   The authorization type to use. The only valid value is `OAUTH`,
    #   which represents the OAuth authorization type.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource value that applies to the specified authorization type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/SourceAuth AWS API Documentation
    #
    class SourceAuth < Struct.new(
      :type,
      :resource)
      include Aws::Structure
    end

    # Information about the credentials for a GitHub, GitHub Enterprise, or
    # Bitbucket repository.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of source provider. The valid options are GITHUB,
    #   GITHUB\_ENTERPRISE, or BITBUCKET.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication used by the credentials. Valid options
    #   are OAUTH, BASIC\_AUTH, or PERSONAL\_ACCESS\_TOKEN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/SourceCredentialsInfo AWS API Documentation
    #
    class SourceCredentialsInfo < Struct.new(
      :arn,
      :server_type,
      :auth_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBuildInput
    #   data as a hash:
    #
    #       {
    #         project_name: "NonEmptyString", # required
    #         secondary_sources_override: [
    #           {
    #             type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH", # required, accepts OAUTH
    #               resource: "String",
    #             },
    #             report_build_status: false,
    #             insecure_ssl: false,
    #             source_identifier: "String",
    #           },
    #         ],
    #         secondary_sources_version_override: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
    #           },
    #         ],
    #         source_version: "String",
    #         artifacts_override: {
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #         },
    #         secondary_artifacts_override: [
    #           {
    #             type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #             location: "String",
    #             path: "String",
    #             namespace_type: "NONE", # accepts NONE, BUILD_ID
    #             name: "String",
    #             packaging: "NONE", # accepts NONE, ZIP
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #           },
    #         ],
    #         environment_variables_override: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #           },
    #         ],
    #         source_type_override: "CODECOMMIT", # accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #         source_location_override: "String",
    #         source_auth_override: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #         git_clone_depth_override: 1,
    #         git_submodules_config_override: {
    #           fetch_submodules: false, # required
    #         },
    #         buildspec_override: "String",
    #         insecure_ssl_override: false,
    #         report_build_status_override: false,
    #         environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #         image_override: "NonEmptyString",
    #         compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #         certificate_override: "String",
    #         cache_override: {
    #           type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #         },
    #         service_role_override: "NonEmptyString",
    #         privileged_mode_override: false,
    #         timeout_in_minutes_override: 1,
    #         queued_timeout_in_minutes_override: 1,
    #         idempotency_token: "String",
    #         logs_config_override: {
    #           cloud_watch_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             group_name: "String",
    #             stream_name: "String",
    #           },
    #           s3_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             location: "String",
    #             encryption_disabled: false,
    #           },
    #         },
    #         registry_credential_override: {
    #           credential: "NonEmptyString", # required
    #           credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #         },
    #         image_pull_credentials_type_override: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild build project to start running a
    #   build.
    #   @return [String]
    #
    # @!attribute [rw] secondary_sources_override
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that specify one or more
    #   versions of the project's secondary sources to be used for this
    #   build only.
    #   @return [Array<Types::ProjectSourceVersion>]
    #
    # @!attribute [rw] source_version
    #   A version of the build input to be built, for this build only. If
    #   not specified, the latest version is used. If specified, must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of
    #     the object that represents the build input ZIP file to use.
    #   @return [String]
    #
    # @!attribute [rw] artifacts_override
    #   Build output artifact settings that override, for this build only,
    #   the latest ones already defined in the build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects.
    #   @return [Array<Types::ProjectArtifacts>]
    #
    # @!attribute [rw] environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] source_type_override
    #   A source input type, for this build, that overrides the source input
    #   defined in the build project.
    #   @return [String]
    #
    # @!attribute [rw] source_location_override
    #   A location that overrides, for this build, the source location for
    #   the one defined in the build project.
    #   @return [String]
    #
    # @!attribute [rw] source_auth_override
    #   An authorization type for this build that overrides the one defined
    #   in the build project. This override applies only if the build
    #   project's source is BitBucket or GitHub.
    #   @return [Types::SourceAuth]
    #
    # @!attribute [rw] git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this build only, any previous depth of history
    #   defined in the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] git_submodules_config_override
    #   Information about the Git submodules configuration for this build of
    #   an AWS CodeBuild build project.
    #   @return [Types::GitSubmodulesConfig]
    #
    # @!attribute [rw] buildspec_override
    #   A build spec declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #   @return [String]
    #
    # @!attribute [rw] insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the build project. The insecure SSL setting determines
    #   whether to ignore SSL warnings while connecting to the project
    #   source code. This override applies only if the build's source is
    #   GitHub Enterprise.
    #   @return [Boolean]
    #
    # @!attribute [rw] report_build_status_override
    #   Set to true to report to your source provider the status of a
    #   build's start and completion. If you use this option with a source
    #   provider other than GitHub, GitHub Enterprise, or Bitbucket, an
    #   invalidInputException is thrown.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_type_override
    #   A container type for this build that overrides the one specified in
    #   the build project.
    #   @return [String]
    #
    # @!attribute [rw] image_override
    #   The name of an image for this build that overrides the one specified
    #   in the build project.
    #   @return [String]
    #
    # @!attribute [rw] compute_type_override
    #   The name of a compute type for this build that overrides the one
    #   specified in the build project.
    #   @return [String]
    #
    # @!attribute [rw] certificate_override
    #   The name of a certificate for this build that overrides the one
    #   specified in the build project.
    #   @return [String]
    #
    # @!attribute [rw] cache_override
    #   A ProjectCache object specified for this build that overrides the
    #   one defined in the build project.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] service_role_override
    #   The name of a service role for this build that overrides the one
    #   specified in the build project.
    #   @return [String]
    #
    # @!attribute [rw] privileged_mode_override
    #   Enable this flag to override privileged mode in the build project.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 480 (8 hours), that
    #   overrides, for this build only, the latest setting already defined
    #   in the build project.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes_override
    #   The number of minutes a build is allowed to be queued before it
    #   times out.
    #   @return [Integer]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the StartBuild request. The token is included in the
    #   StartBuild request and is valid for 12 hours. If you repeat the
    #   StartBuild request with the same token, but change a parameter, AWS
    #   CodeBuild returns a parameter mismatch error.
    #   @return [String]
    #
    # @!attribute [rw] logs_config_override
    #   Log settings for this build that override the log settings defined
    #   in the build project.
    #   @return [Types::LogsConfig]
    #
    # @!attribute [rw] registry_credential_override
    #   The credentials for access to a private registry.
    #   @return [Types::RegistryCredential]
    #
    # @!attribute [rw] image_pull_credentials_type_override
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   build. There are two valid values:
    #
    #   * `CODEBUILD` specifies that AWS CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     AWS CodeBuild's service principal.
    #
    #   * `SERVICE_ROLE` specifies that AWS CodeBuild uses your build
    #     project's service role.
    #
    #   When using a cross-account or private registry image, you must use
    #   SERVICE\_ROLE credentials. When using an AWS CodeBuild curated
    #   image, you must use CODEBUILD credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildInput AWS API Documentation
    #
    class StartBuildInput < Struct.new(
      :project_name,
      :secondary_sources_override,
      :secondary_sources_version_override,
      :source_version,
      :artifacts_override,
      :secondary_artifacts_override,
      :environment_variables_override,
      :source_type_override,
      :source_location_override,
      :source_auth_override,
      :git_clone_depth_override,
      :git_submodules_config_override,
      :buildspec_override,
      :insecure_ssl_override,
      :report_build_status_override,
      :environment_type_override,
      :image_override,
      :compute_type_override,
      :certificate_override,
      :cache_override,
      :service_role_override,
      :privileged_mode_override,
      :timeout_in_minutes_override,
      :queued_timeout_in_minutes_override,
      :idempotency_token,
      :logs_config_override,
      :registry_credential_override,
      :image_pull_credentials_type_override)
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Information about the build to be run.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildOutput AWS API Documentation
    #
    class StartBuildOutput < Struct.new(
      :build)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopBuildInput
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the build.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildInput AWS API Documentation
    #
    class StopBuildInput < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Information about the build.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildOutput AWS API Documentation
    #
    class StopBuildOutput < Struct.new(
      :build)
      include Aws::Structure
    end

    # A tag, consisting of a key and a value.
    #
    # This tag is available for use by AWS services that support tags in AWS
    # CodeBuild.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "KeyInput",
    #         value: "ValueInput",
    #       }
    #
    # @!attribute [rw] key
    #   The tag's key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateProjectInput
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         description: "ProjectDescription",
    #         source: {
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #           location: "String",
    #           git_clone_depth: 1,
    #           git_submodules_config: {
    #             fetch_submodules: false, # required
    #           },
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH", # required, accepts OAUTH
    #             resource: "String",
    #           },
    #           report_build_status: false,
    #           insecure_ssl: false,
    #           source_identifier: "String",
    #         },
    #         secondary_sources: [
    #           {
    #             type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
    #             location: "String",
    #             git_clone_depth: 1,
    #             git_submodules_config: {
    #               fetch_submodules: false, # required
    #             },
    #             buildspec: "String",
    #             auth: {
    #               type: "OAUTH", # required, accepts OAUTH
    #               resource: "String",
    #             },
    #             report_build_status: false,
    #             insecure_ssl: false,
    #             source_identifier: "String",
    #           },
    #         ],
    #         artifacts: {
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #           override_artifact_name: false,
    #           encryption_disabled: false,
    #           artifact_identifier: "String",
    #         },
    #         secondary_artifacts: [
    #           {
    #             type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #             location: "String",
    #             path: "String",
    #             namespace_type: "NONE", # accepts NONE, BUILD_ID
    #             name: "String",
    #             packaging: "NONE", # accepts NONE, ZIP
    #             override_artifact_name: false,
    #             encryption_disabled: false,
    #             artifact_identifier: "String",
    #           },
    #         ],
    #         cache: {
    #           type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #         },
    #         environment: {
    #           type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #             },
    #           ],
    #           privileged_mode: false,
    #           certificate: "String",
    #           registry_credential: {
    #             credential: "NonEmptyString", # required
    #             credential_provider: "SECRETS_MANAGER", # required, accepts SECRETS_MANAGER
    #           },
    #           image_pull_credentials_type: "CODEBUILD", # accepts CODEBUILD, SERVICE_ROLE
    #         },
    #         service_role: "NonEmptyString",
    #         timeout_in_minutes: 1,
    #         queued_timeout_in_minutes: 1,
    #         encryption_key: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #         vpc_config: {
    #           vpc_id: "NonEmptyString",
    #           subnets: ["NonEmptyString"],
    #           security_group_ids: ["NonEmptyString"],
    #         },
    #         badge_enabled: false,
    #         logs_config: {
    #           cloud_watch_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             group_name: "String",
    #             stream_name: "String",
    #           },
    #           s3_logs: {
    #             status: "ENABLED", # required, accepts ENABLED, DISABLED
    #             location: "String",
    #             encryption_disabled: false,
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the build project.
    #
    #   <note markdown="1"> You cannot change a build project's name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new or replacement description of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information to be changed about the build input source code for the
    #   build project.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] secondary_sources
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] artifacts
    #   Information to be changed about the build output artifacts for the
    #   build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `ProjectSource` objects.
    #   @return [Array<Types::ProjectArtifacts>]
    #
    # @!attribute [rw] cache
    #   Stores recently used information so that it can be quickly accessed
    #   at a later time.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] environment
    #   Information to be changed about the build environment for the build
    #   project.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The replacement ARN of the AWS Identity and Access Management (IAM)
    #   role that enables AWS CodeBuild to interact with dependent AWS
    #   services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The replacement value in minutes, from 5 to 480 (8 hours), for AWS
    #   CodeBuild to wait before timing out any related build that did not
    #   get marked as completed.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes
    #   The number of minutes a build is allowed to be queued before it
    #   times out.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format `alias/alias-name
    #   `).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The replacement set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   VpcConfig enables AWS CodeBuild to access resources in an Amazon
    #   VPC.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #   @return [Boolean]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. A project can create
    #   logs in Amazon CloudWatch Logs, logs in an S3 bucket, or both.
    #   @return [Types::LogsConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectInput AWS API Documentation
    #
    class UpdateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :vpc_config,
      :badge_enabled,
      :logs_config)
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   Information about the build project that was changed.
    #   @return [Types::Project]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectOutput AWS API Documentation
    #
    class UpdateProjectOutput < Struct.new(
      :project)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateWebhookInput
    #   data as a hash:
    #
    #       {
    #         project_name: "ProjectName", # required
    #         branch_filter: "String",
    #         rotate_secret: false,
    #         filter_groups: [
    #           [
    #             {
    #               type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH
    #               pattern: "String", # required
    #               exclude_matched_pattern: false,
    #             },
    #           ],
    #         ],
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the AWS CodeBuild project.
    #   @return [String]
    #
    # @!attribute [rw] branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches
    #   the regular expression, then it is built. If `branchFilter` is
    #   empty, then all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] rotate_secret
    #   A boolean value that specifies whether the associated GitHub
    #   repository's secret token should be updated. If you use Bitbucket
    #   for your repository, `rotateSecret` is ignored.
    #   @return [Boolean]
    #
    # @!attribute [rw] filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine if a
    #   webhook event can trigger a build. A filter group must pcontain at
    #   least one `EVENT` `WebhookFilter`.
    #   @return [Array<Array<Types::WebhookFilter>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhookInput AWS API Documentation
    #
    class UpdateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :rotate_secret,
      :filter_groups)
      include Aws::Structure
    end

    # @!attribute [rw] webhook
    #   Information about a repository's webhook that is associated with a
    #   project in AWS CodeBuild.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhookOutput AWS API Documentation
    #
    class UpdateWebhookOutput < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # Information about the VPC configuration that AWS CodeBuild accesses.
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         vpc_id: "NonEmptyString",
    #         subnets: ["NonEmptyString"],
    #         security_group_ids: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] vpc_id
    #   The ID of the Amazon VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of one or more subnet IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of one or more security groups IDs in your Amazon VPC.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids)
      include Aws::Structure
    end

    # Information about a webhook that connects repository events to a build
    # project in AWS CodeBuild.
    #
    # @!attribute [rw] url
    #   The URL to the webhook.
    #   @return [String]
    #
    # @!attribute [rw] payload_url
    #   The AWS CodeBuild endpoint where webhook events are sent.
    #   @return [String]
    #
    # @!attribute [rw] secret
    #   The secret token of the associated repository.
    #
    #   <note markdown="1"> A Bitbucket webhook does not support `secret`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] branch_filter
    #   A regular expression used to determine which repository branches are
    #   built when a webhook is triggered. If the name of a branch matches
    #   the regular expression, then it is built. If `branchFilter` is
    #   empty, then all branches are built.
    #
    #   <note markdown="1"> It is recommended that you use `filterGroups` instead of
    #   `branchFilter`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] filter_groups
    #   An array of arrays of `WebhookFilter` objects used to determine
    #   which webhooks are triggered. At least one `WebhookFilter` in the
    #   array must specify `EVENT` as its `type`.
    #
    #   For a build to be triggered, at least one filter group in the
    #   `filterGroups` array must pass. For a filter group to pass, each of
    #   its filters must pass.
    #   @return [Array<Array<Types::WebhookFilter>>]
    #
    # @!attribute [rw] last_modified_secret
    #   A timestamp that indicates the last time a repository's secret
    #   token was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Webhook AWS API Documentation
    #
    class Webhook < Struct.new(
      :url,
      :payload_url,
      :secret,
      :branch_filter,
      :filter_groups,
      :last_modified_secret)
      include Aws::Structure
    end

    # A filter used to determine which webhooks trigger a build.
    #
    # @note When making an API call, you may pass WebhookFilter
    #   data as a hash:
    #
    #       {
    #         type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH
    #         pattern: "String", # required
    #         exclude_matched_pattern: false,
    #       }
    #
    # @!attribute [rw] type
    #   The type of webhook filter. There are five webhook filter types:
    #   `EVENT`, `ACTOR_ACCOUNT_ID`, `HEAD_REF`, `BASE_REF`, and
    #   `FILE_PATH`.
    #
    #   EVENT
    #
    #   : A webhook event triggers a build when the provided `pattern`
    #     matches one of four event types: `PUSH`, `PULL_REQUEST_CREATED`,
    #     `PULL_REQUEST_UPDATED`, and `PULL_REQUEST_REOPENED`. The `EVENT`
    #     patterns are specified as a comma-separated string. For example,
    #     `PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED` filters all
    #     push, pull request created, and pull request updated events.
    #
    #     <note markdown="1"> The `PULL_REQUEST_REOPENED` works with GitHub and GitHub
    #     Enterprise only.
    #
    #      </note>
    #
    #   ACTOR\_ACCOUNT\_ID
    #
    #   : A webhook event triggers a build when a GitHub, GitHub Enterprise,
    #     or Bitbucket account ID matches the regular expression `pattern`.
    #
    #   HEAD\_REF
    #
    #   : A webhook event triggers a build when the head reference matches
    #     the regular expression `pattern`. For example,
    #     `refs/heads/branch-name` and `refs/tags/tag-name`.
    #
    #     Works with GitHub and GitHub Enterprise push, GitHub and GitHub
    #     Enterprise pull request, Bitbucket push, and Bitbucket pull
    #     request events.
    #
    #   BASE\_REF
    #
    #   : A webhook event triggers a build when the base reference matches
    #     the regular expression `pattern`. For example,
    #     `refs/heads/branch-name`.
    #
    #     <note markdown="1"> Works with pull request events only.
    #
    #      </note>
    #
    #   FILE\_PATH
    #
    #   : A webhook triggers a build when the path of a changed file matches
    #     the regular expression `pattern`.
    #
    #     <note markdown="1"> Works with GitHub and GitHub Enterprise push events only.
    #
    #      </note>
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   For a `WebHookFilter` that uses `EVENT` type, a comma-separated
    #   string that specifies one or more events. For example, the webhook
    #   filter `PUSH, PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED` allows all
    #   push, pull request created, and pull request updated events to
    #   trigger a build.
    #
    #   For a `WebHookFilter` that uses any of the other filter types, a
    #   regular expression pattern. For example, a `WebHookFilter` that uses
    #   `HEAD_REF` for its `type` and the pattern `^refs/heads/` triggers a
    #   build when the head reference is a branch with a reference name
    #   `refs/heads/branch-name`.
    #   @return [String]
    #
    # @!attribute [rw] exclude_matched_pattern
    #   Used to indicate that the `pattern` determines which webhook events
    #   do not trigger a build. If true, then a webhook event that does not
    #   match the `pattern` triggers a build. If false, then a webhook event
    #   that matches the `pattern` triggers a build.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/WebhookFilter AWS API Documentation
    #
    class WebhookFilter < Struct.new(
      :type,
      :pattern,
      :exclude_matched_pattern)
      include Aws::Structure
    end

  end
end
