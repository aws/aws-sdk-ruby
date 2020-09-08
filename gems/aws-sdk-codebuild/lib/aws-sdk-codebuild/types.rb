# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeBuild
  module Types

    # An AWS service limit was exceeded for the calling AWS account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/AccountLimitExceededException AWS API Documentation
    #
    class AccountLimitExceededException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetBuildBatchesInput
    #   data as a hash:
    #
    #       {
    #         ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] ids
    #   An array that contains the batch build identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildBatchesInput AWS API Documentation
    #
    class BatchGetBuildBatchesInput < Struct.new(
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_batches
    #   An array of `BuildBatch` objects that represent the retrieved batch
    #   builds.
    #   @return [Array<Types::BuildBatch>]
    #
    # @!attribute [rw] build_batches_not_found
    #   An array that contains the identifiers of any batch builds that are
    #   not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetBuildBatchesOutput AWS API Documentation
    #
    class BatchGetBuildBatchesOutput < Struct.new(
      :build_batches,
      :build_batches_not_found)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   The names or ARNs of the build projects. To get information about a
    #   project shared with your AWS account, its ARN must be specified. You
    #   cannot specify a shared project using its name.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetProjectsInput AWS API Documentation
    #
    class BatchGetProjectsInput < Struct.new(
      :names)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetReportGroupsInput
    #   data as a hash:
    #
    #       {
    #         report_group_arns: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] report_group_arns
    #   An array of report group ARNs that identify the report groups to
    #   return.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportGroupsInput AWS API Documentation
    #
    class BatchGetReportGroupsInput < Struct.new(
      :report_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_groups
    #   The array of report groups returned by `BatchGetReportGroups`.
    #   @return [Array<Types::ReportGroup>]
    #
    # @!attribute [rw] report_groups_not_found
    #   An array of ARNs passed to `BatchGetReportGroups` that are not
    #   associated with a `ReportGroup`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportGroupsOutput AWS API Documentation
    #
    class BatchGetReportGroupsOutput < Struct.new(
      :report_groups,
      :report_groups_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetReportsInput
    #   data as a hash:
    #
    #       {
    #         report_arns: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] report_arns
    #   An array of ARNs that identify the `Report` objects to return.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportsInput AWS API Documentation
    #
    class BatchGetReportsInput < Struct.new(
      :report_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] reports
    #   The array of `Report` objects returned by `BatchGetReports`.
    #   @return [Array<Types::Report>]
    #
    # @!attribute [rw] reports_not_found
    #   An array of ARNs passed to `BatchGetReportGroups` that are not
    #   associated with a `Report`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetReportsOutput AWS API Documentation
    #
    class BatchGetReportsOutput < Struct.new(
      :reports,
      :reports_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies restrictions for the batch build.
    #
    # @note When making an API call, you may pass BatchRestrictions
    #   data as a hash:
    #
    #       {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: ["NonEmptyString"],
    #       }
    #
    # @!attribute [rw] maximum_builds_allowed
    #   Specifies the maximum number of builds allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_types_allowed
    #   An array of strings that specify the compute types that are allowed
    #   for the batch build. See [Build environment compute types][1] in the
    #   *AWS CodeBuild User Guide* for these values.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchRestrictions AWS API Documentation
    #
    class BatchRestrictions < Struct.new(
      :maximum_builds_allowed,
      :compute_types_allowed)
      SENSITIVE = []
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
    # @!attribute [rw] build_number
    #   The number of the build. For each project, the `buildNumber` of its
    #   first build is `1`. The `buildNumber` of each subsequent build is
    #   incremented by `1`. If a build is deleted, the `buildNumber` of
    #   other builds does not change.
    #   @return [Integer]
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
    #   built. If `sourceVersion` is specified at the project level, then
    #   this `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
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
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] exported_environment_variables
    #   A list of exported environment variables for this build.
    #   @return [Array<Types::ExportedEnvironmentVariable>]
    #
    # @!attribute [rw] report_arns
    #   An array of the ARNs associated with this build's reports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild
    #   build project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type`
    #   of a file system created using Amazon Elastic File System.
    #   @return [Array<Types::ProjectFileSystemLocation>]
    #
    # @!attribute [rw] debug_session
    #   Contains information about the debug session for this build.
    #   @return [Types::DebugSession]
    #
    # @!attribute [rw] build_batch_arn
    #   The ARN of the batch build that this build is a member of, if
    #   applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Build AWS API Documentation
    #
    class Build < Struct.new(
      :id,
      :arn,
      :build_number,
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
      :encryption_key,
      :exported_environment_variables,
      :report_arns,
      :file_system_locations,
      :debug_session,
      :build_batch_arn)
      SENSITIVE = []
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
    #   If this flag is set, a name specified in the buildspec file
    #   overrides the artifact name. The name specified in a buildspec file
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a batch build.
    #
    # @!attribute [rw] id
    #   The identifier of the batch build.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the batch build.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The date and time that the batch build started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time that the batch build ended.
    #   @return [Time]
    #
    # @!attribute [rw] current_phase
    #   The current phase of the batch build.
    #   @return [String]
    #
    # @!attribute [rw] build_batch_status
    #   The status of the batch build.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The identifier of the version of the source code to be built.
    #   @return [String]
    #
    # @!attribute [rw] resolved_source_version
    #   The identifier of the resolved version of this batch build's source
    #   code.
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
    #   The name of the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] phases
    #   An array of `BuildBatchPhase` objects the specify the phases of the
    #   batch build.
    #   @return [Array<Types::BuildBatchPhase>]
    #
    # @!attribute [rw] source
    #   Information about the build input source code for the build project.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] secondary_sources
    #   An array of `ProjectSource` objects that define the sources for the
    #   batch build.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. Each
    #   `ProjectSourceVersion` must be one of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #   A `BuildArtifacts` object the defines the build artifacts for this
    #   batch build.
    #   @return [Types::BuildArtifacts]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `BuildArtifacts` objects the define the build artifacts
    #   for this batch build.
    #   @return [Array<Types::BuildArtifacts>]
    #
    # @!attribute [rw] cache
    #   Information about the cache for the build project.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] environment
    #   Information about the build environment of the build project.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The name of a service role used for builds in the batch.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   Information about logs for a build project. These can be logs in
    #   Amazon CloudWatch Logs, built in a specified S3 bucket, or both.
    #   @return [Types::LogsConfig]
    #
    # @!attribute [rw] build_timeout_in_minutes
    #   Specifies the maximum amount of time, in minutes, that the build in
    #   a batch must be completed in.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes
    #   Specifies the amount of time, in minutes, that the batch build is
    #   allowed to be queued before it times out.
    #   @return [Integer]
    #
    # @!attribute [rw] complete
    #   Indicates if the batch build is complete.
    #   @return [Boolean]
    #
    # @!attribute [rw] initiator
    #   The entity that started the batch build. Valid values include:
    #
    #   * If AWS CodePipeline started the build, the pipeline's name (for
    #     example, `codepipeline/my-demo-pipeline`).
    #
    #   * If an AWS Identity and Access Management (IAM) user started the
    #     build, the user's name.
    #
    #   * If the Jenkins plugin for AWS CodeBuild started the build, the
    #     string `CodeBuild-Jenkins-Plugin`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that AWS CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the batch build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] build_batch_number
    #   The number of the batch build. For each project, the
    #   `buildBatchNumber` of its first batch build is `1`. The
    #   `buildBatchNumber` of each subsequent batch build is incremented by
    #   `1`. If a batch build is deleted, the `buildBatchNumber` of other
    #   batch builds does not change.
    #   @return [Integer]
    #
    # @!attribute [rw] file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for the batch build
    #   project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type`
    #   of a file system created using Amazon Elastic File System.
    #   @return [Array<Types::ProjectFileSystemLocation>]
    #
    # @!attribute [rw] build_batch_config
    #   Contains configuration information about a batch build project.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @!attribute [rw] build_groups
    #   An array of `BuildGroup` objects that define the build groups for
    #   the batch build.
    #   @return [Array<Types::BuildGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildBatch AWS API Documentation
    #
    class BuildBatch < Struct.new(
      :id,
      :arn,
      :start_time,
      :end_time,
      :current_phase,
      :build_batch_status,
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
      :log_config,
      :build_timeout_in_minutes,
      :queued_timeout_in_minutes,
      :complete,
      :initiator,
      :vpc_config,
      :encryption_key,
      :build_batch_number,
      :file_system_locations,
      :build_batch_config,
      :build_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies filters when retrieving batch builds.
    #
    # @note When making an API call, you may pass BuildBatchFilter
    #   data as a hash:
    #
    #       {
    #         status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #       }
    #
    # @!attribute [rw] status
    #   The status of the batch builds to retrieve. Only batch builds that
    #   have this status will be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildBatchFilter AWS API Documentation
    #
    class BuildBatchFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a stage for a batch build.
    #
    # @!attribute [rw] phase_type
    #   The name of the batch build phase. Valid values include:
    #
    #   COMBINE\_ARTIFACTS
    #
    #   : Build output artifacts are being combined and uploaded to the
    #     output location.
    #
    #   DOWNLOAD\_BATCHSPEC
    #
    #   : The batch build specification is being downloaded.
    #
    #   FAILED
    #
    #   : One or more of the builds failed.
    #
    #   IN\_PROGRESS
    #
    #   : The batch build is in progress.
    #
    #   STOPPED
    #
    #   : The batch build was stopped.
    #
    #   SUBMITTED
    #
    #   : The btach build has been submitted.
    #
    #   SUCCEEDED
    #
    #   : The batch build succeeded.
    #   @return [String]
    #
    # @!attribute [rw] phase_status
    #   The current status of the batch build phase. Valid values include:
    #
    #   FAILED
    #
    #   : The build phase failed.
    #
    #   FAULT
    #
    #   : The build phase faulted.
    #
    #   IN\_PROGRESS
    #
    #   : The build phase is still in progress.
    #
    #   QUEUED
    #
    #   : The build has been submitted and is queued behind other submitted
    #     builds.
    #
    #   STOPPED
    #
    #   : The build phase stopped.
    #
    #   SUCCEEDED
    #
    #   : The build phase succeeded.
    #
    #   TIMED\_OUT
    #
    #   : The build phase timed out.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   When the batch build phase started, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   When the batch build phase ended, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] duration_in_seconds
    #   How long, in seconds, between the starting and ending times of the
    #   batch build's phase.
    #   @return [Integer]
    #
    # @!attribute [rw] contexts
    #   Additional information about the batch build phase. Especially to
    #   help troubleshoot a failed btach build.
    #   @return [Array<Types::PhaseContext>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildBatchPhase AWS API Documentation
    #
    class BuildBatchPhase < Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a batch build build group. Build groups are
    # used to combine builds that can run in parallel, while still being
    # able to set dependencies on other build groups.
    #
    # @!attribute [rw] identifier
    #   Contains the identifier of the build group.
    #   @return [String]
    #
    # @!attribute [rw] depends_on
    #   An array of strings that contain the identifiers of the build groups
    #   that this build group depends on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ignore_failure
    #   Specifies if failures in this build group can be ignored.
    #   @return [Boolean]
    #
    # @!attribute [rw] current_build_summary
    #   A `BuildSummary` object that contains a summary of the current build
    #   group.
    #   @return [Types::BuildSummary]
    #
    # @!attribute [rw] prior_build_summary_list
    #   An array of `BuildSummary` objects that contain summaries of
    #   previous build groups.
    #   @return [Array<Types::BuildSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildGroup AWS API Documentation
    #
    class BuildGroup < Struct.new(
      :identifier,
      :depends_on,
      :ignore_failure,
      :current_build_summary,
      :prior_build_summary_list)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   FAILED
    #
    #   : The build phase failed.
    #
    #   FAULT
    #
    #   : The build phase faulted.
    #
    #   IN\_PROGRESS
    #
    #   : The build phase is still in progress.
    #
    #   QUEUED
    #
    #   : The build has been submitted and is queued behind other submitted
    #     builds.
    #
    #   STOPPED
    #
    #   : The build phase stopped.
    #
    #   SUCCEEDED
    #
    #   : The build phase succeeded.
    #
    #   TIMED\_OUT
    #
    #   : The build phase timed out.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information that defines how the AWS CodeBuild build project
    # reports the build status to the source provider.
    #
    # @note When making an API call, you may pass BuildStatusConfig
    #   data as a hash:
    #
    #       {
    #         context: "String",
    #         target_url: "String",
    #       }
    #
    # @!attribute [rw] context
    #   Specifies the context of the build status CodeBuild sends to the
    #   source provider. The usage of this parameter depends on the source
    #   provider.
    #
    #   Bitbucket
    #
    #   : This parameter is used for the `name` parameter in the Bitbucket
    #     commit status. For more information, see [build][1] in the
    #     Bitbucket API documentation.
    #
    #   GitHub/GitHub Enterprise Server
    #
    #   : This parameter is used for the `context` parameter in the GitHub
    #     commit status. For more information, see [Create a commit
    #     status][2] in the GitHub developer guide.
    #
    #
    #
    #   [1]: https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build
    #   [2]: https://developer.github.com/v3/repos/statuses/#create-a-commit-status
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   Specifies the target url of the build status CodeBuild sends to the
    #   source provider. The usage of this parameter depends on the source
    #   provider.
    #
    #   Bitbucket
    #
    #   : This parameter is used for the `url` parameter in the Bitbucket
    #     commit status. For more information, see [build][1] in the
    #     Bitbucket API documentation.
    #
    #   GitHub/GitHub Enterprise Server
    #
    #   : This parameter is used for the `target_url` parameter in the
    #     GitHub commit status. For more information, see [Create a commit
    #     status][2] in the GitHub developer guide.
    #
    #
    #
    #   [1]: https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build
    #   [2]: https://developer.github.com/v3/repos/statuses/#create-a-commit-status
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildStatusConfig AWS API Documentation
    #
    class BuildStatusConfig < Struct.new(
      :context,
      :target_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a batch build group.
    #
    # @!attribute [rw] arn
    #   The batch build ARN.
    #   @return [String]
    #
    # @!attribute [rw] requested_on
    #   When the build was started, expressed in Unix time format.
    #   @return [Time]
    #
    # @!attribute [rw] build_status
    #   The status of the build group.
    #
    #   FAILED
    #
    #   : The build group failed.
    #
    #   FAULT
    #
    #   : The build group faulted.
    #
    #   IN\_PROGRESS
    #
    #   : The build group is still in progress.
    #
    #   STOPPED
    #
    #   : The build group stopped.
    #
    #   SUCCEEDED
    #
    #   : The build group succeeded.
    #
    #   TIMED\_OUT
    #
    #   : The build group timed out.
    #   @return [String]
    #
    # @!attribute [rw] primary_artifact
    #   A `ResolvedArtifact` object that represents the primary build
    #   artifacts for the build group.
    #   @return [Types::ResolvedArtifact]
    #
    # @!attribute [rw] secondary_artifacts
    #   An array of `ResolvedArtifact` objects that represents the secondary
    #   build artifacts for the build group.
    #   @return [Array<Types::ResolvedArtifact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildSummary AWS API Documentation
    #
    class BuildSummary < Struct.new(
      :arn,
      :requested_on,
      :build_status,
      :primary_artifact,
      :secondary_artifacts)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains code coverage report information.
    #
    # Line coverage measures how many statements your tests cover. A
    # statement is a single instruction, not including comments,
    # conditionals, etc.
    #
    # Branch coverage determines if your tests cover every possible branch
    # of a control structure, such as an `if` or `case` statement.
    #
    # @!attribute [rw] id
    #   The identifier of the code coverage report.
    #   @return [String]
    #
    # @!attribute [rw] report_arn
    #   The ARN of the report.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The path of the test report file.
    #   @return [String]
    #
    # @!attribute [rw] line_coverage_percentage
    #   The percentage of lines that are covered by your tests.
    #   @return [Float]
    #
    # @!attribute [rw] lines_covered
    #   The number of lines that are covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] lines_missed
    #   The number of lines that are not covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] branch_coverage_percentage
    #   The percentage of branches that are covered by your tests.
    #   @return [Float]
    #
    # @!attribute [rw] branches_covered
    #   The number of conditional branches that are covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] branches_missed
    #   The number of conditional branches that are not covered by your
    #   tests.
    #   @return [Integer]
    #
    # @!attribute [rw] expired
    #   The date and time that the tests were run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CodeCoverage AWS API Documentation
    #
    class CodeCoverage < Struct.new(
      :id,
      :report_arn,
      :file_path,
      :line_coverage_percentage,
      :lines_covered,
      :lines_missed,
      :branch_coverage_percentage,
      :branches_covered,
      :branches_missed,
      :expired)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of a code coverage report.
    #
    # Line coverage measures how many statements your tests cover. A
    # statement is a single instruction, not including comments,
    # conditionals, etc.
    #
    # Branch coverage determines if your tests cover every possible branch
    # of a control structure, such as an `if` or `case` statement.
    #
    # @!attribute [rw] line_coverage_percentage
    #   The percentage of lines that are covered by your tests.
    #   @return [Float]
    #
    # @!attribute [rw] lines_covered
    #   The number of lines that are covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] lines_missed
    #   The number of lines that are not covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] branch_coverage_percentage
    #   The percentage of branches that are covered by your tests.
    #   @return [Float]
    #
    # @!attribute [rw] branches_covered
    #   The number of conditional branches that are covered by your tests.
    #   @return [Integer]
    #
    # @!attribute [rw] branches_missed
    #   The number of conditional branches that are not covered by your
    #   tests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CodeCoverageReportSummary AWS API Documentation
    #
    class CodeCoverageReportSummary < Struct.new(
      :line_coverage_percentage,
      :lines_covered,
      :lines_missed,
      :branch_coverage_percentage,
      :branches_covered,
      :branches_missed)
      SENSITIVE = []
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
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String",
    #           },
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
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String",
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String",
    #           },
    #         ],
    #         source_version: "String",
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
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
    #           type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
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
    #         file_system_locations: [
    #           {
    #             type: "EFS", # accepts EFS
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String",
    #           },
    #         ],
    #         build_batch_config: {
    #           service_role: "NonEmptyString",
    #           combine_artifacts: false,
    #           restrictions: {
    #             maximum_builds_allowed: 1,
    #             compute_types_allowed: ["NonEmptyString"],
    #           },
    #           timeout_in_mins: 1,
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
    # @!attribute [rw] source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @!attribute [rw] secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take precedence over these `secondarySourceVersions` (at the project
    #   level).
    #   @return [Array<Types::ProjectSourceVersion>]
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
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this build
    #   project.
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
    # @!attribute [rw] file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild
    #   build project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type`
    #   of a file system created using Amazon Elastic File System.
    #   @return [Array<Types::ProjectFileSystemLocation>]
    #
    # @!attribute [rw] build_batch_config
    #   A ProjectBuildBatchConfig object that defines the batch build
    #   options for the project.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProjectInput AWS API Documentation
    #
    class CreateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
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
      :logs_config,
      :file_system_locations,
      :build_batch_config)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReportGroupInput
    #   data as a hash:
    #
    #       {
    #         name: "ReportGroupName", # required
    #         type: "TEST", # required, accepts TEST, CODE_COVERAGE
    #         export_config: { # required
    #           export_config_type: "S3", # accepts S3, NO_EXPORT
    #           s3_destination: {
    #             bucket: "NonEmptyString",
    #             path: "String",
    #             packaging: "ZIP", # accepts ZIP, NONE
    #             encryption_key: "NonEmptyString",
    #             encryption_disabled: false,
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the report group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of report group.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   A `ReportExportConfig` object that contains information about where
    #   the report group test results are exported.
    #   @return [Types::ReportExportConfig]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this report group.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild report group tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateReportGroupInput AWS API Documentation
    #
    class CreateReportGroupInput < Struct.new(
      :name,
      :type,
      :export_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_group
    #   Information about the report group that was created.
    #   @return [Types::ReportGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateReportGroupOutput AWS API Documentation
    #
    class CreateReportGroupOutput < Struct.new(
      :report_group)
      SENSITIVE = []
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
    #               type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE
    #               pattern: "String", # required
    #               exclude_matched_pattern: false,
    #             },
    #           ],
    #         ],
    #         build_type: "BUILD", # accepts BUILD, BUILD_BATCH
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
    # @!attribute [rw] build_type
    #   Specifies the type of build this webhook will trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhookInput AWS API Documentation
    #
    class CreateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :filter_groups,
      :build_type)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the debug session for a build. For more
    # information, see [Viewing a running build in Session Manager][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #
    # @!attribute [rw] session_enabled
    #   Specifies if session debugging is enabled for this build.
    #   @return [Boolean]
    #
    # @!attribute [rw] session_target
    #   Contains the identifier of the Session Manager session used for the
    #   build. To work with the paused build, you open this session to
    #   examine, control, and resume the build.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DebugSession AWS API Documentation
    #
    class DebugSession < Struct.new(
      :session_enabled,
      :session_target)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBuildBatchInput
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the batch build to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteBuildBatchInput AWS API Documentation
    #
    class DeleteBuildBatchInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status_code
    #   The status code.
    #   @return [String]
    #
    # @!attribute [rw] builds_deleted
    #   An array of strings that contain the identifiers of the builds that
    #   were deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] builds_not_deleted
    #   An array of `BuildNotDeleted` objects that specify the builds that
    #   could not be deleted.
    #   @return [Array<Types::BuildNotDeleted>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteBuildBatchOutput AWS API Documentation
    #
    class DeleteBuildBatchOutput < Struct.new(
      :status_code,
      :builds_deleted,
      :builds_not_deleted)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteProjectOutput AWS API Documentation
    #
    class DeleteProjectOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReportGroupInput
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString", # required
    #         delete_reports: false,
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the report group to delete.
    #   @return [String]
    #
    # @!attribute [rw] delete_reports
    #   If `true`, deletes any reports that belong to a report group before
    #   deleting the report group.
    #
    #   If `false`, you must delete any reports in the report group. Use
    #   [ListReportsForReportGroup][1] to get the reports in a report group.
    #   Use [DeleteReport][2] to delete the reports. If you call
    #   `DeleteReportGroup` for a report group that contains one or more
    #   reports, an exception is thrown.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportGroupInput AWS API Documentation
    #
    class DeleteReportGroupInput < Struct.new(
      :arn,
      :delete_reports)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportGroupOutput AWS API Documentation
    #
    class DeleteReportGroupOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReportInput
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the report to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportInput AWS API Documentation
    #
    class DeleteReportInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteReportOutput AWS API Documentation
    #
    class DeleteReportOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteResourcePolicyInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteResourcePolicyInput AWS API Documentation
    #
    class DeleteResourcePolicyInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteResourcePolicyOutput AWS API Documentation
    #
    class DeleteResourcePolicyOutput < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteWebhookOutput AWS API Documentation
    #
    class DeleteWebhookOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeCodeCoveragesInput
    #   data as a hash:
    #
    #       {
    #         report_arn: "NonEmptyString", # required
    #         next_token: "String",
    #         max_results: 1,
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         sort_by: "LINE_COVERAGE_PERCENTAGE", # accepts LINE_COVERAGE_PERCENTAGE, FILE_PATH
    #         min_line_coverage_percentage: 1.0,
    #         max_line_coverage_percentage: 1.0,
    #       }
    #
    # @!attribute [rw] report_arn
    #   The ARN of the report for which test cases are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous call to
    #   `DescribeCodeCoverages`. This specifies the next item to return. To
    #   return the beginning of the list, exclude this parameter.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   Specifies if the results are sorted in ascending or descending
    #   order.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies how the results are sorted. Possible values are:
    #
    #   FILE\_PATH
    #
    #   : The results are sorted by file path.
    #
    #   LINE\_COVERAGE\_PERCENTAGE
    #
    #   : The results are sorted by the percentage of lines that are
    #     covered.
    #   @return [String]
    #
    # @!attribute [rw] min_line_coverage_percentage
    #   The minimum line coverage percentage to report.
    #   @return [Float]
    #
    # @!attribute [rw] max_line_coverage_percentage
    #   The maximum line coverage percentage to report.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeCodeCoveragesInput AWS API Documentation
    #
    class DescribeCodeCoveragesInput < Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      :min_line_coverage_percentage,
      :max_line_coverage_percentage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to `DescribeCodeCoverages` to retrieve
    #   the next set of items.
    #   @return [String]
    #
    # @!attribute [rw] code_coverages
    #   An array of `CodeCoverage` objects that contain the results.
    #   @return [Array<Types::CodeCoverage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeCodeCoveragesOutput AWS API Documentation
    #
    class DescribeCodeCoveragesOutput < Struct.new(
      :next_token,
      :code_coverages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTestCasesInput
    #   data as a hash:
    #
    #       {
    #         report_arn: "String", # required
    #         next_token: "String",
    #         max_results: 1,
    #         filter: {
    #           status: "String",
    #           keyword: "String",
    #         },
    #       }
    #
    # @!attribute [rw] report_arn
    #   The ARN of the report for which test cases are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated test cases returned per response.
    #   Use `nextToken` to iterate pages in the list of returned `TestCase`
    #   objects. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A `TestCaseFilter` object used to filter the returned reports.
    #   @return [Types::TestCaseFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeTestCasesInput AWS API Documentation
    #
    class DescribeTestCasesInput < Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] test_cases
    #   The returned list of test cases.
    #   @return [Array<Types::TestCase>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DescribeTestCasesOutput AWS API Documentation
    #
    class DescribeTestCasesOutput < Struct.new(
      :next_token,
      :test_cases)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
    #       }
    #
    # @!attribute [rw] name
    #   The name or key of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #
    #   We strongly discourage the use of `PLAINTEXT` environment variables
    #   to store sensitive values, especially AWS secret key IDs and secret
    #   access keys. `PLAINTEXT` environment variables can be displayed in
    #   plain text using the AWS CodeBuild console and the AWS Command Line
    #   Interface (AWS CLI). For sensitive values, we recommend you use an
    #   environment variable of type `PARAMETER_STORE` or `SECRETS_MANAGER`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment variable. Valid values include:
    #
    #   * `PARAMETER_STORE`\: An environment variable stored in Amazon EC2
    #     Systems Manager Parameter Store. To learn how to specify a
    #     parameter store environment variable, see [env/parameter-store][1]
    #     in the *AWS CodeBuild User Guide*.
    #
    #   * `PLAINTEXT`\: An environment variable in plain text format. This
    #     is the default value.
    #
    #   * `SECRETS_MANAGER`\: An environment variable stored in AWS Secrets
    #     Manager. To learn how to specify a secrets manager environment
    #     variable, see [env/secrets-manager][2] in the *AWS CodeBuild User
    #     Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentVariable AWS API Documentation
    #
    class EnvironmentVariable < Struct.new(
      :name,
      :value,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an exported environment variable.
    #
    # @!attribute [rw] name
    #   The name of this exported environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to this exported environment variable.
    #
    #   <note markdown="1"> During a build, the value of a variable is available starting with
    #   the `install` phase. It can be updated between the start of the
    #   `install` phase and the end of the `post_build` phase. After the
    #   `post_build` phase ends, the value of exported variables cannot
    #   change.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ExportedEnvironmentVariable AWS API Documentation
    #
    class ExportedEnvironmentVariable < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcePolicyInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource that is associated with the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetResourcePolicyInput AWS API Documentation
    #
    class GetResourcePolicyInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy for the resource identified by the input ARN
    #   parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetResourcePolicyOutput AWS API Documentation
    #
    class GetResourcePolicyOutput < Struct.new(
      :policy)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #         should_overwrite: false,
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
    # @!attribute [rw] should_overwrite
    #   Set to `false` to prevent overwriting the repository source
    #   credentials. Set to `true` to overwrite the repository source
    #   credentials. The default value is `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ImportSourceCredentialsInput AWS API Documentation
    #
    class ImportSourceCredentialsInput < Struct.new(
      :username,
      :token,
      :server_type,
      :auth_type,
      :should_overwrite)
      SENSITIVE = [:token]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The input value that was provided is not valid.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Aws::EmptyStructure; end

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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/InvalidateProjectCacheOutput AWS API Documentation
    #
    class InvalidateProjectCacheOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass ListBuildBatchesForProjectInput
    #   data as a hash:
    #
    #       {
    #         project_name: "NonEmptyString",
    #         filter: {
    #           status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #         },
    #         max_results: 1,
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A `BuildBatchFilter` object that specifies the filters for the
    #   search.
    #   @return [Types::BuildBatchFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order of the returned items. Valid values
    #   include:
    #
    #   * `ASCENDING`\: List the batch build identifiers in ascending order
    #     by identifier.
    #
    #   * `DESCENDING`\: List the batch build identifiers in descending
    #     order by identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatchesForProject`. This specifies the next item to
    #   return. To return the beginning of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesForProjectInput AWS API Documentation
    #
    class ListBuildBatchesForProjectInput < Struct.new(
      :project_name,
      :filter,
      :max_results,
      :sort_order,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   An array of strings that contains the batch build identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to `ListBuildBatchesForProject` to
    #   retrieve the next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesForProjectOutput AWS API Documentation
    #
    class ListBuildBatchesForProjectOutput < Struct.new(
      :ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBuildBatchesInput
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           status: "SUCCEEDED", # accepts SUCCEEDED, FAILED, FAULT, TIMED_OUT, IN_PROGRESS, STOPPED
    #         },
    #         max_results: 1,
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "String",
    #       }
    #
    # @!attribute [rw] filter
    #   A `BuildBatchFilter` object that specifies the filters for the
    #   search.
    #   @return [Types::BuildBatchFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order of the returned items. Valid values
    #   include:
    #
    #   * `ASCENDING`\: List the batch build identifiers in ascending order
    #     by identifier.
    #
    #   * `DESCENDING`\: List the batch build identifiers in descending
    #     order by identifier.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `nextToken` value returned from a previous call to
    #   `ListBuildBatches`. This specifies the next item to return. To
    #   return the beginning of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesInput AWS API Documentation
    #
    class ListBuildBatchesInput < Struct.new(
      :filter,
      :max_results,
      :sort_order,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   An array of strings that contains the batch build identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to `ListBuildBatches` to retrieve the
    #   next set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildBatchesOutput AWS API Documentation
    #
    class ListBuildBatchesOutput < Struct.new(
      :ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   string called a *nextToken*. To get the next batch of items in the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of build IDs for the specified build project, with each build
    #   ID representing a single build.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *nextToken*.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsForProjectOutput AWS API Documentation
    #
    class ListBuildsForProjectOutput < Struct.new(
      :ids,
      :next_token)
      SENSITIVE = []
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
    #   string called a *nextToken*. To get the next batch of items in the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ids
    #   A list of build IDs, with each build ID representing a single build.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *nextToken*.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListBuildsOutput AWS API Documentation
    #
    class ListBuildsOutput < Struct.new(
      :ids,
      :next_token)
      SENSITIVE = []
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
      SENSITIVE = []
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
    #   string called a *nextToken*. To get the next batch of items in the
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *nextToken*.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReportGroupsInput
    #   data as a hash:
    #
    #       {
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         sort_by: "NAME", # accepts NAME, CREATED_TIME, LAST_MODIFIED_TIME
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sort_order
    #   Used to specify the order to sort the list of returned report
    #   groups. Valid values are `ASCENDING` and `DESCENDING`.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list build report groups. Valid values
    #   include:
    #
    #   * `CREATED_TIME`\: List based on when each report group was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List based on when each report group was
    #     last changed.
    #
    #   * `NAME`\: List based on each report group's name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated report groups returned per response.
    #   Use `nextToken` to iterate pages in the list of returned
    #   `ReportGroup` objects. The default value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportGroupsInput AWS API Documentation
    #
    class ListReportGroupsInput < Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] report_groups
    #   The list of ARNs for the report groups in the current AWS account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportGroupsOutput AWS API Documentation
    #
    class ListReportGroupsOutput < Struct.new(
      :next_token,
      :report_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReportsForReportGroupInput
    #   data as a hash:
    #
    #       {
    #         report_group_arn: "String", # required
    #         next_token: "String",
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         max_results: 1,
    #         filter: {
    #           status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #         },
    #       }
    #
    # @!attribute [rw] report_group_arn
    #   The ARN of the report group for which you want to return report
    #   ARNs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Use to specify whether the results are returned in ascending or
    #   descending order.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated reports in this report group
    #   returned per response. Use `nextToken` to iterate pages in the list
    #   of returned `Report` objects. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A `ReportFilter` object used to filter the returned reports.
    #   @return [Types::ReportFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsForReportGroupInput AWS API Documentation
    #
    class ListReportsForReportGroupInput < Struct.new(
      :report_group_arn,
      :next_token,
      :sort_order,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] reports
    #   The list of report ARNs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsForReportGroupOutput AWS API Documentation
    #
    class ListReportsForReportGroupOutput < Struct.new(
      :next_token,
      :reports)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReportsInput
    #   data as a hash:
    #
    #       {
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         next_token: "String",
    #         max_results: 1,
    #         filter: {
    #           status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #         },
    #       }
    #
    # @!attribute [rw] sort_order
    #   Specifies the sort order for the list of returned reports. Valid
    #   values are:
    #
    #   * `ASCENDING`\: return reports in chronological order based on their
    #     creation date.
    #
    #   * `DESCENDING`\: return reports in the reverse chronological order
    #     based on their creation date.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated reports returned per response. Use
    #   `nextToken` to iterate pages in the list of returned `Report`
    #   objects. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] filter
    #   A `ReportFilter` object used to filter the returned reports.
    #   @return [Types::ReportFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsInput AWS API Documentation
    #
    class ListReportsInput < Struct.new(
      :sort_order,
      :next_token,
      :max_results,
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] reports
    #   The list of returned ARNs for the reports in the current AWS
    #   account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListReportsOutput AWS API Documentation
    #
    class ListReportsOutput < Struct.new(
      :next_token,
      :reports)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSharedProjectsInput
    #   data as a hash:
    #
    #       {
    #         sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list build projects shared with the
    #   current AWS account or user. Valid values include:
    #
    #   * `ARN`\: List based on the ARN.
    #
    #   * `MODIFIED_TIME`\: List based on when information about the shared
    #     project was last changed.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list shared build projects. Valid values
    #   include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated shared build projects returned per
    #   response. Use `nextToken` to iterate pages in the list of returned
    #   `Project` objects. The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedProjectsInput AWS API Documentation
    #
    class ListSharedProjectsInput < Struct.new(
      :sort_by,
      :sort_order,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] projects
    #   The list of ARNs for the build projects shared with the current AWS
    #   account or user.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedProjectsOutput AWS API Documentation
    #
    class ListSharedProjectsOutput < Struct.new(
      :next_token,
      :projects)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSharedReportGroupsInput
    #   data as a hash:
    #
    #       {
    #         sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #         sort_by: "ARN", # accepts ARN, MODIFIED_TIME
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] sort_order
    #   The order in which to list shared report groups. Valid values
    #   include:
    #
    #   * `ASCENDING`\: List in ascending order.
    #
    #   * `DESCENDING`\: List in descending order.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list report groups shared with the
    #   current AWS account or user. Valid values include:
    #
    #   * `ARN`\: List based on the ARN.
    #
    #   * `MODIFIED_TIME`\: List based on when information about the shared
    #     report group was last changed.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of paginated shared report groups per response.
    #   Use `nextToken` to iterate pages in the list of returned
    #   `ReportGroup` objects. The default value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedReportGroupsInput AWS API Documentation
    #
    class ListSharedReportGroupsInput < Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   During a previous call, the maximum number of items that can be
    #   returned is the value specified in `maxResults`. If there more items
    #   in the list, then a unique string called a *nextToken* is returned.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call. To get all of the items in
    #   the list, keep calling this operation with each subsequent next
    #   token that is returned, until no more next tokens are returned.
    #   @return [String]
    #
    # @!attribute [rw] report_groups
    #   The list of ARNs for the report groups shared with the current AWS
    #   account or user.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListSharedReportGroupsOutput AWS API Documentation
    #
    class ListSharedReportGroupsOutput < Struct.new(
      :next_token,
      :report_groups)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] cloud_watch_logs_arn
    #   The ARN of Amazon CloudWatch Logs for a build project. Its format is
    #   `arn:$\{Partition\}:logs:$\{Region\}:$\{Account\}:log-group:$\{LogGroupName\}:log-stream:$\{LogStreamName\}`.
    #   For more information, see [Resources Defined by Amazon CloudWatch
    #   Logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] s3_logs_arn
    #   The ARN of S3 logs for a build project. Its format is
    #   `arn:$\{Partition\}:s3:::$\{BucketName\}/$\{ObjectName\}`. For more
    #   information, see [Resources Defined by Amazon S3][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies
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
      :cloud_watch_logs_arn,
      :s3_logs_arn,
      :cloud_watch_logs,
      :s3_logs)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a problem with the underlying OAuth provider.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/OAuthProviderException AWS API Documentation
    #
    class OAuthProviderException < Aws::EmptyStructure; end

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
      SENSITIVE = []
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
    # @!attribute [rw] source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @!attribute [rw] secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take over these `secondarySourceVersions` (at the project level).
    #   @return [Array<Types::ProjectSourceVersion>]
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
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this build
    #   project.
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
    # @!attribute [rw] file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild
    #   build project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type`
    #   of a file system created using Amazon Elastic File System.
    #   @return [Array<Types::ProjectFileSystemLocation>]
    #
    # @!attribute [rw] build_batch_config
    #   A ProjectBuildBatchConfig object that defines the batch build
    #   options for the project.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Project AWS API Documentation
    #
    class Project < Struct.new(
      :name,
      :arn,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
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
      :logs_config,
      :file_system_locations,
      :build_batch_config)
      SENSITIVE = []
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
    #     <note markdown="1"> The `CODEPIPELINE` type is not supported for `secondaryArtifacts`.
    #
    #      </note>
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
    #   artifact is stored in `MyArtifacts/<build-ID>/MyArtifact.zip`.
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
    #     artifact is stored in `MyArtifacts/<build-ID>/MyArtifact.zip`.
    #
    #   * If `path` is empty, `namespaceType` is set to `NONE`, and `name`
    #     is set to "`/`", the output artifact is stored in the root of
    #     the output bucket.
    #
    #   * If `path` is set to `MyArtifacts`, `namespaceType` is set to
    #     `BUILD_ID`, and `name` is set to "`/`", the output artifact is
    #     stored in `MyArtifacts/<build-ID>`.
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
    #   If this flag is set, a name specified in the buildspec file
    #   overrides the artifact name. The name specified in a buildspec file
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about a batch build project.
    #
    # @note When making an API call, you may pass ProjectBuildBatchConfig
    #   data as a hash:
    #
    #       {
    #         service_role: "NonEmptyString",
    #         combine_artifacts: false,
    #         restrictions: {
    #           maximum_builds_allowed: 1,
    #           compute_types_allowed: ["NonEmptyString"],
    #         },
    #         timeout_in_mins: 1,
    #       }
    #
    # @!attribute [rw] service_role
    #   Specifies the service role ARN for the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] combine_artifacts
    #   Specifies if the build artifacts for the batch build should be
    #   combined into a single artifact location.
    #   @return [Boolean]
    #
    # @!attribute [rw] restrictions
    #   A `BatchRestrictions` object that specifies the restrictions for the
    #   batch build.
    #   @return [Types::BatchRestrictions]
    #
    # @!attribute [rw] timeout_in_mins
    #   Specifies the maximum amount of time, in minutes, that the batch
    #   build must be completed in.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectBuildBatchConfig AWS API Documentation
    #
    class ProjectBuildBatchConfig < Struct.new(
      :service_role,
      :combine_artifacts,
      :restrictions,
      :timeout_in_mins)
      SENSITIVE = []
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
    #     <note markdown="1"> * You can use a Docker layer cache in the Linux environment only.
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
    #       its project sources. Cached items are overridden if a source
    #       item has the same name. Directories are specified using cache
    #       paths in the buildspec file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectCache AWS API Documentation
    #
    class ProjectCache < Struct.new(
      :type,
      :location,
      :modes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build environment of the build project.
    #
    # @note When making an API call, you may pass ProjectEnvironment
    #   data as a hash:
    #
    #       {
    #         type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
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
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia
    #     Pacific (Sydney), and EU (Frankfurt).
    #
    #   * The environment type `LINUX_CONTAINER` with compute type
    #     `build.general1.2xlarge` is available only in regions US East (N.
    #     Virginia), US East (Ohio), US West (Oregon), Canada (Central), EU
    #     (Ireland), EU (London), EU (Frankfurt), Asia Pacific (Tokyo), Asia
    #     Pacific (Seoul), Asia Pacific (Singapore), Asia Pacific (Sydney),
    #     China (Beijing), and China (Ningxia).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia
    #     Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore),
    #     Asia Pacific (Sydney) , China (Beijing), and China (Ningxia).
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image tag or image digest that identifies the Docker image to
    #   use for this build project. Use the following formats:
    #
    #   * For an image tag: `<registry>/<repository>:<tag>`. For example, in
    #     the Docker repository that CodeBuild uses to manage its Docker
    #     images, this would be `aws/codebuild/standard:4.0`. To specify the
    #     latest version of this image, this would be
    #     `aws/codebuild/standard:latest`.
    #
    #   * For an image digest: `<registry>/<repository>@<digest>`. For
    #     example, to specify an image with the digest
    #     "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,"
    #     use
    #     `<registry>/<repository>@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf`.
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
    #   * `BUILD_GENERAL1_LARGE`\: Use up to 16 GB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`\: Use up to 145 GB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports
    #     Docker images up to 100 GB uncompressed.
    #
    #   If you use `BUILD_GENERAL1_LARGE`\:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 15 GB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [Build Environment Compute Types][1] in
    #   the *AWS CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   A set of environment variables to make available to builds for this
    #   build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] privileged_mode
    #   Enables running the Docker daemon inside a Docker container. Set to
    #   true only if the build project is used to build Docker images.
    #   Otherwise, a build that attempts to interact with the Docker daemon
    #   fails. The default setting is `false`.
    #
    #   You can initialize the Docker daemon during the install phase of
    #   your build by adding one of the following sets of commands to the
    #   install phase of your buildspec file:
    #
    #   If the operating system's base image is Ubuntu Linux:
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay&`
    #
    #   `- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"`
    #
    #   If the operating system's base image is Alpine Linux and the
    #   previous command does not work, add the `-t` argument to `timeout`\:
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay&`
    #
    #   `- timeout -t 15 sh -c "until docker info; do echo .; sleep 1;
    #   done"`
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a file system created by Amazon Elastic File System
    # (EFS). For more information, see [What Is Amazon Elastic File
    # System?][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html
    #
    # @note When making an API call, you may pass ProjectFileSystemLocation
    #   data as a hash:
    #
    #       {
    #         type: "EFS", # accepts EFS
    #         location: "String",
    #         mount_point: "String",
    #         identifier: "String",
    #         mount_options: "String",
    #       }
    #
    # @!attribute [rw] type
    #   The type of the file system. The one supported type is `EFS`.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A string that specifies the location of the file system created by
    #   Amazon EFS. Its format is `efs-dns-name:/directory-path`. You can
    #   find the DNS name of file system when you view it in the AWS EFS
    #   console. The directory path is a path to a directory in the file
    #   system that CodeBuild mounts. For example, if the DNS name of a file
    #   system is `fs-abcd1234.efs.us-west-2.amazonaws.com`, and its mount
    #   directory is `my-efs-mount-directory`, then the `location` is
    #   `fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory`.
    #
    #   The directory path in the format `efs-dns-name:/directory-path` is
    #   optional. If you do not specify a directory path, the location is
    #   only the DNS name and CodeBuild mounts the entire file system.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The location in the container where you mount the file system.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The name used to access a file system created by Amazon EFS.
    #   CodeBuild creates an environment variable by appending the
    #   `identifier` in all capital letters to `CODEBUILD_`. For example, if
    #   you specify `my-efs` for `identifier`, a new environment variable is
    #   create named `CODEBUILD_MY-EFS`.
    #
    #   The `identifier` is used to mount your file system.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   The mount options for a file system created by AWS EFS. The default
    #   mount options used by CodeBuild are
    #   `nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2`.
    #   For more information, see [Recommended NFS Mount Options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectFileSystemLocation AWS API Documentation
    #
    class ProjectFileSystemLocation < Struct.new(
      :type,
      :location,
      :mount_point,
      :identifier,
      :mount_options)
      SENSITIVE = []
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
    #         build_status_config: {
    #           context: "String",
    #           target_url: "String",
    #         },
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
    #   * `GITHUB`\: The source code is in a GitHub or GitHub Enterprise
    #     Cloud repository.
    #
    #   * `GITHUB_ENTERPRISE`\: The source code is in a GitHub Enterprise
    #     Server repository.
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
    #     URL to the repository that contains the source code and the
    #     buildspec file (for example,
    #     `https://git-codecommit.<region-ID>.amazonaws.com/v1/repos/<repo-name>`).
    #
    #   * For source code in an Amazon Simple Storage Service (Amazon S3)
    #     input bucket, one of the following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, `<bucket-name>/<path>/<object-name>.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, `<bucket-name>/<path-to-source-code>/<folder>/`).
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the buildspec file. You
    #     must connect your AWS account to your GitHub account. Use the AWS
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
    #     the repository that contains the source and the buildspec file.
    #     You must connect your AWS account to your Bitbucket account. Use
    #     the AWS CodeBuild console to start creating a build project. When
    #     you use the console to connect (or reconnect) with Bitbucket, on
    #     the Bitbucket **Confirm access to your account** page, choose
    #     **Grant access**. (After you have connected to your Bitbucket
    #     account, you do not need to finish creating the build project. You
    #     can leave the AWS CodeBuild console.) To instruct AWS CodeBuild to
    #     use this connection, in the `source` object, set the `auth`
    #     object's `type` value to `OAUTH`.
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
    #   The buildspec file declaration to use for the builds in this build
    #   project.
    #
    #   If this value is set, it can be either an inline buildspec
    #   definition, the path to an alternate buildspec file relative to the
    #   value of the built-in `CODEBUILD_SRC_DIR` environment variable, or
    #   the path to an S3 bucket. The bucket must be in the same AWS Region
    #   as the build project. Specify the buildspec file using its ARN (for
    #   example, `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this
    #   value is not provided or is set to an empty string, the source code
    #   must contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
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
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] build_status_config
    #   Contains information that defines how the build project reports the
    #   build status to the source provider. This option is only used when
    #   the source provider is `GITHUB`, `GITHUB_ENTERPRISE`, or
    #   `BITBUCKET`.
    #   @return [Types::BuildStatusConfig]
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
      :build_status_config,
      :insecure_ssl,
      :source_identifier)
      SENSITIVE = []
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
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectSourceVersion AWS API Documentation
    #
    class ProjectSourceVersion < Struct.new(
      :source_identifier,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutResourcePolicyInput
    #   data as a hash:
    #
    #       {
    #         policy: "NonEmptyString", # required
    #         resource_arn: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] policy
    #   A JSON-formatted resource policy. For more information, see [Sharing
    #   a Project][1] and [Sharing a Report Group][2] in the *AWS CodeBuild
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the `Project` or `ReportGroup` resource you want to
    #   associate with a resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/PutResourcePolicyInput AWS API Documentation
    #
    class PutResourcePolicyInput < Struct.new(
      :policy,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the `Project` or `ReportGroup` resource that is
    #   associated with a resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/PutResourcePolicyOutput AWS API Documentation
    #
    class PutResourcePolicyOutput < Struct.new(
      :resource_arn)
      SENSITIVE = []
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
    #   exist in your current AWS Region.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the results from running a series of test cases
    # during the run of a build project. The test cases are specified in the
    # buildspec for the build project using one or more paths to the test
    # case files. You can specify any type of tests you want, such as unit
    # tests, integration tests, and functional tests.
    #
    # @!attribute [rw] arn
    #   The ARN of the report run.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the report that was run.
    #
    #   CODE\_COVERAGE
    #
    #   : A code coverage report.
    #
    #   TEST
    #
    #   : A test report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the report that was run.
    #   @return [String]
    #
    # @!attribute [rw] report_group_arn
    #   The ARN of the report group associated with this report.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The ARN of the build run that generated this report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of this report.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The date and time this report run occurred.
    #   @return [Time]
    #
    # @!attribute [rw] expired
    #   The date and time a report expires. A report expires 30 days after
    #   it is created. An expired report is not available to view in
    #   CodeBuild.
    #   @return [Time]
    #
    # @!attribute [rw] export_config
    #   Information about where the raw data used to generate this report
    #   was exported.
    #   @return [Types::ReportExportConfig]
    #
    # @!attribute [rw] truncated
    #   A boolean that specifies if this report run is truncated. The list
    #   of test cases is truncated after the maximum number of test cases is
    #   reached.
    #   @return [Boolean]
    #
    # @!attribute [rw] test_summary
    #   A `TestReportSummary` object that contains information about this
    #   test report.
    #   @return [Types::TestReportSummary]
    #
    # @!attribute [rw] code_coverage_summary
    #   A `CodeCoverageReportSummary` object that contains a code coverage
    #   summary for this report.
    #   @return [Types::CodeCoverageReportSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Report AWS API Documentation
    #
    class Report < Struct.new(
      :arn,
      :type,
      :name,
      :report_group_arn,
      :execution_id,
      :status,
      :created,
      :expired,
      :export_config,
      :truncated,
      :test_summary,
      :code_coverage_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location where the run of a report is exported.
    #
    # @note When making an API call, you may pass ReportExportConfig
    #   data as a hash:
    #
    #       {
    #         export_config_type: "S3", # accepts S3, NO_EXPORT
    #         s3_destination: {
    #           bucket: "NonEmptyString",
    #           path: "String",
    #           packaging: "ZIP", # accepts ZIP, NONE
    #           encryption_key: "NonEmptyString",
    #           encryption_disabled: false,
    #         },
    #       }
    #
    # @!attribute [rw] export_config_type
    #   The export configuration type. Valid values are:
    #
    #   * `S3`\: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`\: The report results are not exported.
    #   @return [String]
    #
    # @!attribute [rw] s3_destination
    #   A `S3ReportExportConfig` object that contains information about the
    #   S3 bucket where the run of a report is exported.
    #   @return [Types::S3ReportExportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ReportExportConfig AWS API Documentation
    #
    class ReportExportConfig < Struct.new(
      :export_config_type,
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to return reports with the status specified by the input
    # `status` parameter.
    #
    # @note When making an API call, you may pass ReportFilter
    #   data as a hash:
    #
    #       {
    #         status: "GENERATING", # accepts GENERATING, SUCCEEDED, FAILED, INCOMPLETE, DELETING
    #       }
    #
    # @!attribute [rw] status
    #   The status used to filter reports. You can filter using one status
    #   only.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ReportFilter AWS API Documentation
    #
    class ReportFilter < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A series of reports. Each report contains information about the
    # results from running a series of test cases. You specify the test
    # cases for a report group in the buildspec for a build project using
    # one or more paths to the test case files.
    #
    # @!attribute [rw] arn
    #   The ARN of a `ReportGroup`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of a `ReportGroup`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `ReportGroup`. The one valid value is `TEST`.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   Information about the destination where the raw data of this
    #   `ReportGroup` is exported.
    #   @return [Types::ReportExportConfig]
    #
    # @!attribute [rw] created
    #   The date and time this `ReportGroup` was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The date and time this `ReportGroup` was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this report group.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild report group tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ReportGroup AWS API Documentation
    #
    class ReportGroup < Struct.new(
      :arn,
      :name,
      :type,
      :export_config,
      :created,
      :last_modified,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resolved build artifact. A resolve artifact is an
    # artifact that is built and deployed to the destination, such as Amazon
    # Simple Storage Service (Amazon S3).
    #
    # @!attribute [rw] type
    #   Specifies the type of artifact.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The identifier of the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ResolvedArtifact AWS API Documentation
    #
    class ResolvedArtifact < Struct.new(
      :type,
      :location,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified AWS resource cannot be created, because an AWS resource
    # with the same settings already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # The specified AWS resource cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RetryBuildBatchInput
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString",
    #         idempotency_token: "String",
    #         retry_type: "RETRY_ALL_BUILDS", # accepts RETRY_ALL_BUILDS, RETRY_FAILED_BUILDS
    #       }
    #
    # @!attribute [rw] id
    #   Specifies the identifier of the batch build to restart.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuildBatch` request. The token is included
    #   in the `RetryBuildBatch` request and is valid for five minutes. If
    #   you repeat the `RetryBuildBatch` request with the same token, but
    #   change a parameter, AWS CodeBuild returns a parameter mismatch
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] retry_type
    #   Specifies the type of retry to perform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildBatchInput AWS API Documentation
    #
    class RetryBuildBatchInput < Struct.new(
      :id,
      :idempotency_token,
      :retry_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_batch
    #   Contains information about a batch build.
    #   @return [Types::BuildBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildBatchOutput AWS API Documentation
    #
    class RetryBuildBatchOutput < Struct.new(
      :build_batch)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RetryBuildInput
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString",
    #         idempotency_token: "String",
    #       }
    #
    # @!attribute [rw] id
    #   Specifies the identifier of the build to restart.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuild` request. The token is included in
    #   the `RetryBuild` request and is valid for five minutes. If you
    #   repeat the `RetryBuild` request with the same token, but change a
    #   parameter, AWS CodeBuild returns a parameter mismatch error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildInput AWS API Documentation
    #
    class RetryBuildInput < Struct.new(
      :id,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Information about a build.
    #   @return [Types::Build]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/RetryBuildOutput AWS API Documentation
    #
    class RetryBuildOutput < Struct.new(
      :build)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the S3 bucket where the raw data of a report are
    # exported.
    #
    # @note When making an API call, you may pass S3ReportExportConfig
    #   data as a hash:
    #
    #       {
    #         bucket: "NonEmptyString",
    #         path: "String",
    #         packaging: "ZIP", # accepts ZIP, NONE
    #         encryption_key: "NonEmptyString",
    #         encryption_disabled: false,
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket where the raw data of a report are
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the exported report's raw data results.
    #   @return [String]
    #
    # @!attribute [rw] packaging
    #   The type of build output artifact to create. Valid values include:
    #
    #   * `NONE`\: AWS CodeBuild creates the raw data in the output bucket.
    #     This is the default if packaging is not specified.
    #
    #   * `ZIP`\: AWS CodeBuild creates a ZIP file with the raw data in the
    #     output bucket.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the report's encrypted raw data.
    #   @return [String]
    #
    # @!attribute [rw] encryption_disabled
    #   A boolean value that specifies if the results of a report are
    #   encrypted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/S3ReportExportConfig AWS API Documentation
    #
    class S3ReportExportConfig < Struct.new(
      :bucket,
      :path,
      :packaging,
      :encryption_key,
      :encryption_disabled)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBuildBatchInput
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
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String",
    #             },
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
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
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
    #         report_build_batch_status_override: false,
    #         environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #         image_override: "NonEmptyString",
    #         compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #         certificate_override: "String",
    #         cache_override: {
    #           type: "NO_CACHE", # required, accepts NO_CACHE, S3, LOCAL
    #           location: "String",
    #           modes: ["LOCAL_DOCKER_LAYER_CACHE"], # accepts LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
    #         },
    #         service_role_override: "NonEmptyString",
    #         privileged_mode_override: false,
    #         build_timeout_in_minutes_override: 1,
    #         queued_timeout_in_minutes_override: 1,
    #         encryption_key_override: "NonEmptyString",
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
    #         build_batch_config_override: {
    #           service_role: "NonEmptyString",
    #           combine_artifacts: false,
    #           restrictions: {
    #             maximum_builds_allowed: 1,
    #             compute_types_allowed: ["NonEmptyString"],
    #           },
    #           timeout_in_mins: 1,
    #         },
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] secondary_sources_override
    #   An array of `ProjectSource` objects that override the secondary
    #   sources defined in the batch build project.
    #   @return [Array<Types::ProjectSource>]
    #
    # @!attribute [rw] secondary_sources_version_override
    #   An array of `ProjectSourceVersion` objects that override the
    #   secondary source versions in the batch build project.
    #   @return [Array<Types::ProjectSourceVersion>]
    #
    # @!attribute [rw] source_version
    #   The version of the batch build input to be built, for this build
    #   only. If not specified, the latest version is used. If specified,
    #   the contents depends on the source provider:
    #
    #   AWS CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon Simple Storage Service (Amazon S3)
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @!attribute [rw] artifacts_override
    #   An array of `ProjectArtifacts` objects that contains information
    #   about the build output artifact overrides for the build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] secondary_artifacts_override
    #   An array of `ProjectArtifacts` objects that override the secondary
    #   artifacts defined in the batch build project.
    #   @return [Array<Types::ProjectArtifacts>]
    #
    # @!attribute [rw] environment_variables_override
    #   An array of `EnvironmentVariable` objects that override, or add to,
    #   the environment variables defined in the batch build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] source_type_override
    #   The source input type that overrides the source input defined in the
    #   batch build project.
    #   @return [String]
    #
    # @!attribute [rw] source_location_override
    #   A location that overrides, for this batch build, the source location
    #   defined in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] source_auth_override
    #   A `SourceAuth` object that overrides the one defined in the batch
    #   build project. This override applies only if the build project's
    #   source is BitBucket or GitHub.
    #   @return [Types::SourceAuth]
    #
    # @!attribute [rw] git_clone_depth_override
    #   The user-defined depth of history, with a minimum value of 0, that
    #   overrides, for this batch build only, any previous depth of history
    #   defined in the batch build project.
    #   @return [Integer]
    #
    # @!attribute [rw] git_submodules_config_override
    #   A `GitSubmodulesConfig` object that overrides the Git submodules
    #   configuration for this batch build.
    #   @return [Types::GitSubmodulesConfig]
    #
    # @!attribute [rw] buildspec_override
    #   A buildspec file declaration that overrides, for this build only,
    #   the latest one already defined in the build project.
    #
    #   If this value is set, it can be either an inline buildspec
    #   definition, the path to an alternate buildspec file relative to the
    #   value of the built-in `CODEBUILD_SRC_DIR` environment variable, or
    #   the path to an S3 bucket. The bucket must be in the same AWS Region
    #   as the build project. Specify the buildspec file using its ARN (for
    #   example, `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this
    #   value is not provided or is set to an empty string, the source code
    #   must contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #   @return [String]
    #
    # @!attribute [rw] insecure_ssl_override
    #   Enable this flag to override the insecure SSL setting that is
    #   specified in the batch build project. The insecure SSL setting
    #   determines whether to ignore SSL warnings while connecting to the
    #   project source code. This override applies only if the build's
    #   source is GitHub Enterprise.
    #   @return [Boolean]
    #
    # @!attribute [rw] report_build_batch_status_override
    #   Set to `true` to report to your source provider the status of a
    #   batch build's start and completion. If you use this option with a
    #   source provider other than GitHub, GitHub Enterprise, or Bitbucket,
    #   an `invalidInputException` is thrown.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_type_override
    #   A container type for this batch build that overrides the one
    #   specified in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] image_override
    #   The name of an image for this batch build that overrides the one
    #   specified in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] compute_type_override
    #   The name of a compute type for this batch build that overrides the
    #   one specified in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] certificate_override
    #   The name of a certificate for this batch build that overrides the
    #   one specified in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] cache_override
    #   A `ProjectCache` object that specifies cache overrides.
    #   @return [Types::ProjectCache]
    #
    # @!attribute [rw] service_role_override
    #   The name of a service role for this batch build that overrides the
    #   one specified in the batch build project.
    #   @return [String]
    #
    # @!attribute [rw] privileged_mode_override
    #   Enable this flag to override privileged mode in the batch build
    #   project.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_timeout_in_minutes_override
    #   Overrides the build timeout specified in the batch build project.
    #   @return [Integer]
    #
    # @!attribute [rw] queued_timeout_in_minutes_override
    #   The number of minutes a batch build is allowed to be queued before
    #   it times out.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key_override
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   that overrides the one specified in the batch build project. The CMK
    #   key encrypts the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `StartBuildBatch` request. The token is included
    #   in the `StartBuildBatch` request and is valid for five minutes. If
    #   you repeat the `StartBuildBatch` request with the same token, but
    #   change a parameter, AWS CodeBuild returns a parameter mismatch
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] logs_config_override
    #   A `LogsConfig` object that override the log settings defined in the
    #   batch build project.
    #   @return [Types::LogsConfig]
    #
    # @!attribute [rw] registry_credential_override
    #   A `RegistryCredential` object that overrides credentials for access
    #   to a private registry.
    #   @return [Types::RegistryCredential]
    #
    # @!attribute [rw] image_pull_credentials_type_override
    #   The type of credentials AWS CodeBuild uses to pull images in your
    #   batch build. There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that AWS CodeBuild uses its own credentials. This
    #     requires that you modify your ECR repository policy to trust AWS
    #     CodeBuild's service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that AWS CodeBuild uses your build project's service
    #     role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an AWS CodeBuild curated
    #   image, you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] build_batch_config_override
    #   A `BuildBatchConfigOverride` object that contains batch build
    #   configuration overrides.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildBatchInput AWS API Documentation
    #
    class StartBuildBatchInput < Struct.new(
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
      :report_build_batch_status_override,
      :environment_type_override,
      :image_override,
      :compute_type_override,
      :certificate_override,
      :cache_override,
      :service_role_override,
      :privileged_mode_override,
      :build_timeout_in_minutes_override,
      :queued_timeout_in_minutes_override,
      :encryption_key_override,
      :idempotency_token,
      :logs_config_override,
      :registry_credential_override,
      :image_pull_credentials_type_override,
      :build_batch_config_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_batch
    #   A `BuildBatch` object that contains information about the batch
    #   build.
    #   @return [Types::BuildBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildBatchOutput AWS API Documentation
    #
    class StartBuildBatchOutput < Struct.new(
      :build_batch)
      SENSITIVE = []
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
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String",
    #             },
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
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
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
    #         build_status_config_override: {
    #           context: "String",
    #           target_url: "String",
    #         },
    #         environment_type_override: "WINDOWS_CONTAINER", # accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #         image_override: "NonEmptyString",
    #         compute_type_override: "BUILD_GENERAL1_SMALL", # accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
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
    #         encryption_key_override: "NonEmptyString",
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
    #         debug_session_enabled: false,
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
    #   The version of the build input to be built, for this build only. If
    #   not specified, the latest version is used. If specified, the
    #   contents depends on the source provider:
    #
    #   AWS CodeCommit
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   GitHub
    #
    #   : The commit ID, pull request ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a pull request ID is specified, it must use the format
    #     `pr/pull-request-ID` (for example `pr/25`). If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon Simple Storage Service (Amazon S3)
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
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
    #   A buildspec file declaration that overrides, for this build only,
    #   the latest one already defined in the build project.
    #
    #   If this value is set, it can be either an inline buildspec
    #   definition, the path to an alternate buildspec file relative to the
    #   value of the built-in `CODEBUILD_SRC_DIR` environment variable, or
    #   the path to an S3 bucket. The bucket must be in the same AWS Region
    #   as the build project. Specify the buildspec file using its ARN (for
    #   example, `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this
    #   value is not provided or is set to an empty string, the source code
    #   must contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
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
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] build_status_config_override
    #   Contains information that defines how the build project reports the
    #   build status to the source provider. This option is only used when
    #   the source provider is `GITHUB`, `GITHUB_ENTERPRISE`, or
    #   `BITBUCKET`.
    #   @return [Types::BuildStatusConfig]
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
    # @!attribute [rw] encryption_key_override
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   that overrides the one specified in the build project. The CMK key
    #   encrypts the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the StartBuild request. The token is included in the
    #   StartBuild request and is valid for 5 minutes. If you repeat the
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
    #   CODEBUILD
    #
    #   : Specifies that AWS CodeBuild uses its own credentials. This
    #     requires that you modify your ECR repository policy to trust AWS
    #     CodeBuild's service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that AWS CodeBuild uses your build project's service
    #     role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an AWS CodeBuild curated
    #   image, you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] debug_session_enabled
    #   Specifies if session debugging is enabled for this build. For more
    #   information, see [Viewing a running build in Session Manager][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #   @return [Boolean]
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
      :build_status_config_override,
      :environment_type_override,
      :image_override,
      :compute_type_override,
      :certificate_override,
      :cache_override,
      :service_role_override,
      :privileged_mode_override,
      :timeout_in_minutes_override,
      :queued_timeout_in_minutes_override,
      :encryption_key_override,
      :idempotency_token,
      :logs_config_override,
      :registry_credential_override,
      :image_pull_credentials_type_override,
      :debug_session_enabled)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopBuildBatchInput
    #   data as a hash:
    #
    #       {
    #         id: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] id
    #   The identifier of the batch build to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildBatchInput AWS API Documentation
    #
    class StopBuildBatchInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] build_batch
    #   Contains information about a batch build.
    #   @return [Types::BuildBatch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StopBuildBatchOutput AWS API Documentation
    #
    class StopBuildBatchOutput < Struct.new(
      :build_batch)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a test case created using a framework such as NUnit
    # or Cucumber. A test case might be a unit test or a configuration test.
    #
    # @!attribute [rw] report_arn
    #   The ARN of the report to which the test case belongs.
    #   @return [String]
    #
    # @!attribute [rw] test_raw_data_path
    #   The path to the raw data file that contains the test result.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A string that is applied to a series of related test cases.
    #   CodeBuild generates the prefix. The prefix depends on the framework
    #   used to generate the tests.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test case.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status returned by the test case after it was run. Valid
    #   statuses are `SUCCEEDED`, `FAILED`, `ERROR`, `SKIPPED`, and
    #   `UNKNOWN`.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_nano_seconds
    #   The number of nanoseconds it took to run this test case.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   A message associated with a test case. For example, an error message
    #   or stack trace.
    #   @return [String]
    #
    # @!attribute [rw] expired
    #   The date and time a test case expires. A test case expires 30 days
    #   after it is created. An expired test case is not available to view
    #   in CodeBuild.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/TestCase AWS API Documentation
    #
    class TestCase < Struct.new(
      :report_arn,
      :test_raw_data_path,
      :prefix,
      :name,
      :status,
      :duration_in_nano_seconds,
      :message,
      :expired)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to return specific types of test cases. In order to pass
    # the filter, the report must meet all of the filter properties.
    #
    # @note When making an API call, you may pass TestCaseFilter
    #   data as a hash:
    #
    #       {
    #         status: "String",
    #         keyword: "String",
    #       }
    #
    # @!attribute [rw] status
    #   The status used to filter test cases. A `TestCaseFilter` can have
    #   one status. Valid values are:
    #
    #   * `SUCCEEDED`
    #
    #   * `FAILED`
    #
    #   * `ERROR`
    #
    #   * `SKIPPED`
    #
    #   * `UNKNOWN`
    #   @return [String]
    #
    # @!attribute [rw] keyword
    #   A keyword that is used to filter on the `name` or the `prefix` of
    #   the test cases. Only test cases where the keyword is a substring of
    #   the `name` or the `prefix` will be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/TestCaseFilter AWS API Documentation
    #
    class TestCaseFilter < Struct.new(
      :status,
      :keyword)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a test report.
    #
    # @!attribute [rw] total
    #   The number of test cases in this `TestReportSummary`. The total
    #   includes truncated test cases.
    #   @return [Integer]
    #
    # @!attribute [rw] status_counts
    #   A map that contains the number of each type of status returned by
    #   the test results in this `TestReportSummary`.
    #   @return [Hash<String,Integer>]
    #
    # @!attribute [rw] duration_in_nano_seconds
    #   The number of nanoseconds it took to run all of the test cases in
    #   this report.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/TestReportSummary AWS API Documentation
    #
    class TestReportSummary < Struct.new(
      :total,
      :status_counts,
      :duration_in_nano_seconds)
      SENSITIVE = []
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
    #           build_status_config: {
    #             context: "String",
    #             target_url: "String",
    #           },
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
    #             build_status_config: {
    #               context: "String",
    #               target_url: "String",
    #             },
    #             insecure_ssl: false,
    #             source_identifier: "String",
    #           },
    #         ],
    #         source_version: "String",
    #         secondary_source_versions: [
    #           {
    #             source_identifier: "String", # required
    #             source_version: "String", # required
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
    #           type: "WINDOWS_CONTAINER", # required, accepts WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER
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
    #         file_system_locations: [
    #           {
    #             type: "EFS", # accepts EFS
    #             location: "String",
    #             mount_point: "String",
    #             identifier: "String",
    #             mount_options: "String",
    #           },
    #         ],
    #         build_batch_config: {
    #           service_role: "NonEmptyString",
    #           combine_artifacts: false,
    #           restrictions: {
    #             maximum_builds_allowed: 1,
    #             compute_types_allowed: ["NonEmptyString"],
    #           },
    #           timeout_in_mins: 1,
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
    # @!attribute [rw] source_version
    #   A version of the build input to be built for this project. If not
    #   specified, the latest version is used. If specified, it must be one
    #   of:
    #
    #   * For AWS CodeCommit: the commit ID, branch, or Git tag to use.
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
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *AWS CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @!attribute [rw] secondary_source_versions
    #   An array of `ProjectSourceVersion` objects. If
    #   `secondarySourceVersions` is specified at the build level, then they
    #   take over these `secondarySourceVersions` (at the project level).
    #   @return [Array<Types::ProjectSourceVersion>]
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
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An updated list of tag key and value pairs associated with this
    #   build project.
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
    # @!attribute [rw] file_system_locations
    #   An array of `ProjectFileSystemLocation` objects for a CodeBuild
    #   build project. A `ProjectFileSystemLocation` object specifies the
    #   `identifier`, `location`, `mountOptions`, `mountPoint`, and `type`
    #   of a file system created using Amazon Elastic File System.
    #   @return [Array<Types::ProjectFileSystemLocation>]
    #
    # @!attribute [rw] build_batch_config
    #   Contains configuration information about a batch build project.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectInput AWS API Documentation
    #
    class UpdateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
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
      :logs_config,
      :file_system_locations,
      :build_batch_config)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateReportGroupInput
    #   data as a hash:
    #
    #       {
    #         arn: "NonEmptyString", # required
    #         export_config: {
    #           export_config_type: "S3", # accepts S3, NO_EXPORT
    #           s3_destination: {
    #             bucket: "NonEmptyString",
    #             path: "String",
    #             packaging: "ZIP", # accepts ZIP, NONE
    #             encryption_key: "NonEmptyString",
    #             encryption_disabled: false,
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] arn
    #   The ARN of the report group to update.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   Used to specify an updated export type. Valid values are:
    #
    #   * `S3`\: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`\: The report results are not exported.
    #   @return [Types::ReportExportConfig]
    #
    # @!attribute [rw] tags
    #   An updated list of tag key and value pairs associated with this
    #   report group.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild report group tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateReportGroupInput AWS API Documentation
    #
    class UpdateReportGroupInput < Struct.new(
      :arn,
      :export_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_group
    #   Information about the updated report group.
    #   @return [Types::ReportGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateReportGroupOutput AWS API Documentation
    #
    class UpdateReportGroupOutput < Struct.new(
      :report_group)
      SENSITIVE = []
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
    #               type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE
    #               pattern: "String", # required
    #               exclude_matched_pattern: false,
    #             },
    #           ],
    #         ],
    #         build_type: "BUILD", # accepts BUILD, BUILD_BATCH
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
    #   webhook event can trigger a build. A filter group must contain at
    #   least one `EVENT` `WebhookFilter`.
    #   @return [Array<Array<Types::WebhookFilter>>]
    #
    # @!attribute [rw] build_type
    #   Specifies the type of build this webhook will trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhookInput AWS API Documentation
    #
    class UpdateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :rotate_secret,
      :filter_groups,
      :build_type)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] build_type
    #   Specifies the type of build this webhook will trigger.
    #   @return [String]
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
      :build_type,
      :last_modified_secret)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to determine which webhooks trigger a build.
    #
    # @note When making an API call, you may pass WebhookFilter
    #   data as a hash:
    #
    #       {
    #         type: "EVENT", # required, accepts EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH, COMMIT_MESSAGE
    #         pattern: "String", # required
    #         exclude_matched_pattern: false,
    #       }
    #
    # @!attribute [rw] type
    #   The type of webhook filter. There are six webhook filter types:
    #   `EVENT`, `ACTOR_ACCOUNT_ID`, `HEAD_REF`, `BASE_REF`, `FILE_PATH`,
    #   and `COMMIT_MESSAGE`.
    #
    #   EVENT
    #
    #   : A webhook event triggers a build when the provided `pattern`
    #     matches one of five event types: `PUSH`, `PULL_REQUEST_CREATED`,
    #     `PULL_REQUEST_UPDATED`, `PULL_REQUEST_REOPENED`, and
    #     `PULL_REQUEST_MERGED`. The `EVENT` patterns are specified as a
    #     comma-separated string. For example, `PUSH, PULL_REQUEST_CREATED,
    #     PULL_REQUEST_UPDATED` filters all push, pull request created, and
    #     pull request updated events.
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
    #     <note markdown="1"> Works with GitHub and Bitbucket events push and pull requests
    #     events. Also works with GitHub Enterprise push events, but does
    #     not work with GitHub Enterprise pull request events.
    #
    #      </note>
    #
    #   COMMIT\_MESSAGE
    #
    #   : A webhook triggers a build when the head commit message matches
    #     the regular expression `pattern`.
    #
    #     <note markdown="1"> Works with GitHub and Bitbucket events push and pull requests
    #     events. Also works with GitHub Enterprise push events, but does
    #     not work with GitHub Enterprise pull request events.
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
