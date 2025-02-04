# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeBuild
  module Types

    # An Amazon Web Services service limit was exceeded for the calling
    # Amazon Web Services account.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/AccountLimitExceededException AWS API Documentation
    #
    class AccountLimitExceededException < Aws::EmptyStructure; end

    # Information about the auto-retry configuration for the build.
    #
    # @!attribute [rw] auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_retry_number
    #   The number of times that the build has been retried. The initial
    #   build will have an auto-retry number of 0.
    #   @return [Integer]
    #
    # @!attribute [rw] next_auto_retry
    #   The build ARN of the auto-retried build triggered by the current
    #   build. The next auto-retry will be `null` for builds that don't
    #   trigger an auto-retry.
    #   @return [String]
    #
    # @!attribute [rw] previous_auto_retry
    #   The build ARN of the build that triggered the current auto-retry
    #   build. The previous auto-retry will be `null` for the initial build.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/AutoRetryConfig AWS API Documentation
    #
    class AutoRetryConfig < Struct.new(
      :auto_retry_limit,
      :auto_retry_number,
      :next_auto_retry,
      :previous_auto_retry)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] names
    #   The names or ARNs of the compute fleets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetFleetsInput AWS API Documentation
    #
    class BatchGetFleetsInput < Struct.new(
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleets
    #   Information about the requested compute fleets.
    #   @return [Array<Types::Fleet>]
    #
    # @!attribute [rw] fleets_not_found
    #   The names of compute fleets for which information could not be
    #   found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchGetFleetsOutput AWS API Documentation
    #
    class BatchGetFleetsOutput < Struct.new(
      :fleets,
      :fleets_not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] names
    #   The names or ARNs of the build projects. To get information about a
    #   project shared with your Amazon Web Services account, its ARN must
    #   be specified. You cannot specify a shared project using its name.
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
    # @!attribute [rw] maximum_builds_allowed
    #   Specifies the maximum number of builds allowed.
    #   @return [Integer]
    #
    # @!attribute [rw] compute_types_allowed
    #   An array of strings that specify the compute types that are allowed
    #   for the batch build. See [Build environment compute types][1] in the
    #   *CodeBuild User Guide* for these values.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] fleets_allowed
    #   An array of strings that specify the fleets that are allowed for the
    #   batch build. See [Run builds on reserved capacity fleets][1] in the
    #   *CodeBuild User Guide* for more information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/fleets.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BatchRestrictions AWS API Documentation
    #
    class BatchRestrictions < Struct.new(
      :maximum_builds_allowed,
      :compute_types_allowed,
      :fleets_allowed)
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
    #   * `FAILED`: The build failed.
    #
    #   * `FAULT`: The build faulted.
    #
    #   * `IN_PROGRESS`: The build is still in progress.
    #
    #   * `STOPPED`: The build stopped.
    #
    #   * `SUCCEEDED`: The build succeeded.
    #
    #   * `TIMED_OUT`: The build timed out.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Any version identifier for the version of the source code to be
    #   built. If `sourceVersion` is specified at the project level, then
    #   this `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html
    #   @return [String]
    #
    # @!attribute [rw] resolved_source_version
    #   An identifier for the version of this build's source code.
    #
    #   * For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the
    #     commit ID.
    #
    #   * For CodePipeline, the source revision provided by CodePipeline.
    #
    #   * For Amazon S3, this does not apply.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the CodeBuild project.
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
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
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
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
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
    #   Information about the build's logs in CloudWatch Logs.
    #   @return [Types::LogsLocation]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to
    #   wait before timing out this build if it does not get marked as
    #   completed.
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
    #   * If CodePipeline started the build, the pipeline's name (for
    #     example, `codepipeline/my-demo-pipeline`).
    #
    #   * If a user started the build, the user's name (for example,
    #     `MyUserName`).
    #
    #   * If the Jenkins plugin for CodeBuild started the build, the string
    #     `CodeBuild-Jenkins-Plugin`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   If your CodeBuild project accesses resources in an Amazon VPC, you
    #   provide this parameter that identifies the VPC ID and the list of
    #   security group IDs and subnet IDs. The security groups and subnets
    #   must belong to the same VPC. You must provide at least one security
    #   group and one subnet ID.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_interface
    #   Describes a network interface.
    #   @return [Types::NetworkInterface]
    #
    # @!attribute [rw] encryption_key
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
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
    #
    #   Exported environment variables are used in conjunction with
    #   CodePipeline to export environment variables from the current build
    #   stage to subsequent stages in the pipeline. For more information,
    #   see [Working with variables][1] in the *CodePipeline User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html
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
    # @!attribute [rw] auto_retry_config
    #   Information about the auto-retry configuration for the build.
    #   @return [Types::AutoRetryConfig]
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
      :build_batch_arn,
      :auto_retry_config)
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
    # @!attribute [rw] bucket_owner_access
    #   Specifies the bucket owner's access for objects that another
    #   account uploads to their Amazon S3 bucket. By default, only the
    #   account that uploads the objects to the bucket has access to these
    #   objects. This property allows you to give the bucket owner access to
    #   these objects.
    #
    #   <note markdown="1"> To use this property, your CodeBuild service role must have the
    #   `s3:PutBucketAcl` permission. This permission allows CodeBuild to
    #   modify the access control list for the bucket.
    #
    #    </note>
    #
    #   This property can be one of the following values:
    #
    #   NONE
    #
    #   : The bucket owner does not have access to the objects. This is the
    #     default.
    #
    #   READ\_ONLY
    #
    #   : The bucket owner has read-only access to the objects. The
    #     uploading account retains ownership of the objects.
    #
    #   FULL
    #
    #   : The bucket owner has full access to the objects. Object ownership
    #     is determined by the following criteria:
    #
    #     * If the bucket is configured with the **Bucket owner preferred**
    #       setting, the bucket owner owns the objects. The uploading
    #       account will have object access as specified by the bucket's
    #       policy.
    #
    #     * Otherwise, the uploading account retains ownership of the
    #       objects.
    #
    #     For more information about Amazon S3 object ownership, see
    #     [Controlling ownership of uploaded objects using S3 Object
    #     Ownership][1] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
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
      :artifact_identifier,
      :bucket_owner_access)
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
    #   * For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the
    #     commit ID.
    #
    #   * For CodePipeline, the source revision provided by CodePipeline.
    #
    #   * For Amazon S3, this does not apply.
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
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
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
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
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
    #   CloudWatch Logs, built in a specified S3 bucket, or both.
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
    #   * If CodePipeline started the build, the pipeline's name (for
    #     example, `codepipeline/my-demo-pipeline`).
    #
    #   * If a user started the build, the user's name.
    #
    #   * If the Jenkins plugin for CodeBuild started the build, the string
    #     `CodeBuild-Jenkins-Plugin`.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] encryption_key
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the batch build output artifacts.
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
    # @!attribute [rw] debug_session_enabled
    #   Specifies if session debugging is enabled for this batch build. For
    #   more information, see [Viewing a running build in Session
    #   Manager][1]. Batch session debugging is not supported for matrix
    #   batch builds.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #   @return [Boolean]
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
      :build_groups,
      :debug_session_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies filters when retrieving batch builds.
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
    #   help troubleshoot a failed batch build.
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
    #   BUILD
    #
    #   : Core build activities typically occur in this build phase.
    #
    #   COMPLETED
    #
    #   : The build has been completed.
    #
    #   DOWNLOAD\_SOURCE
    #
    #   : Source code is being downloaded in this build phase.
    #
    #   FINALIZING
    #
    #   : The build process is completing in this build phase.
    #
    #   INSTALL
    #
    #   : Installation activities typically occur in this build phase.
    #
    #   POST\_BUILD
    #
    #   : Post-build activities typically occur in this build phase.
    #
    #   PRE\_BUILD
    #
    #   : Pre-build activities typically occur in this build phase.
    #
    #   PROVISIONING
    #
    #   : The build environment is being set up.
    #
    #   QUEUED
    #
    #   : The build has been submitted and is queued behind other submitted
    #     builds.
    #
    #   SUBMITTED
    #
    #   : The build has been submitted.
    #
    #   UPLOAD\_ARTIFACTS
    #
    #   : Build output artifacts are being uploaded to the output location.
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

    # Contains information that defines how the CodeBuild build project
    # reports the build status to the source provider.
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

    # Information about CloudWatch Logs for a build project.
    #
    # @!attribute [rw] status
    #   The current status of the logs in CloudWatch Logs for a build
    #   project. Valid values are:
    #
    #   * `ENABLED`: CloudWatch Logs are enabled for this build project.
    #
    #   * `DISABLED`: CloudWatch Logs are not enabled for this build
    #     project.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The group name of the logs in CloudWatch Logs. For more information,
    #   see [Working with Log Groups and Log Streams][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The prefix of the stream name of the CloudWatch Logs. For more
    #   information, see [Working with Log Groups and Log Streams][1].
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

    # Contains compute attributes. These attributes only need be specified
    # when your project's or fleet's `computeType` is set to
    # `ATTRIBUTE_BASED_COMPUTE`.
    #
    # @!attribute [rw] v_cpu
    #   The number of vCPUs of the instance type included in your fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] memory
    #   The amount of memory of the instance type included in your fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] disk
    #   The amount of disk space of the instance type included in your
    #   fleet.
    #   @return [Integer]
    #
    # @!attribute [rw] machine_type
    #   The machine type of the instance type included in your fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ComputeConfiguration AWS API Documentation
    #
    class ComputeConfiguration < Struct.new(
      :v_cpu,
      :memory,
      :disk,
      :machine_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] base_capacity
    #   The initial number of machines allocated to the ﬂeet, which deﬁnes
    #   the number of builds that can run in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_type
    #   The environment type of the compute fleet.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia
    #     Pacific (Singapore), Asia Pacific (Sydney), EU (Frankfurt), and
    #     South America (São Paulo).
    #
    #   * The environment type `ARM_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia
    #     Pacific (Sydney).
    #
    #   * The environment type `MAC_ARM` is available for Medium fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), and EU (Frankfurt)
    #
    #   * The environment type `MAC_ARM` is available for Large fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), and Asia Pacific (Sydney).
    #
    #   * The environment type `WINDOWS_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `WINDOWS_SERVER_2019_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia
    #     Pacific (Mumbai) and EU (Ireland).
    #
    #   * The environment type `WINDOWS_SERVER_2022_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), EU (Ireland), EU (Frankfurt), Asia Pacific (Sydney),
    #     Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São
    #     Paulo) and Asia Pacific (Mumbai).
    #
    #   For more information, see [Build environment compute types][1] in
    #   the *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the compute fleet uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory,
    #     disk space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes.
    #     For more information, see [Reserved capacity environment types][1]
    #     in the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports
    #     Docker images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16
    #     GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][2] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #   @return [String]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration of the compute fleet. This is only
    #   required if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
    #   @return [Types::ComputeConfiguration]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling configuration of the compute fleet.
    #   @return [Types::ScalingConfigurationInput]
    #
    # @!attribute [rw] overflow_behavior
    #   The compute fleet overflow behavior.
    #
    #   * For overflow behavior `QUEUE`, your overflow builds need to wait
    #     on the existing fleet instance to become available.
    #
    #   * For overflow behavior `ON_DEMAND`, your overflow builds run on
    #     CodeBuild on-demand.
    #
    #     <note markdown="1"> If you choose to set your overflow behavior to on-demand while
    #     creating a VPC-connected fleet, make sure that you add the
    #     required VPC permissions to your project service role. For more
    #     information, see [Example policy statement to allow CodeBuild
    #     access to Amazon Web Services services required to create a VPC
    #     network interface][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] proxy_configuration
    #   The proxy configuration of the compute fleet.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_service_role
    #   The service role associated with the compute fleet. For more
    #   information, see [ Allow a user to add a permission policy for a
    #   fleet service role][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this compute
    #   fleet.
    #
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateFleetInput AWS API Documentation
    #
    class CreateFleetInput < Struct.new(
      :name,
      :base_capacity,
      :environment_type,
      :compute_type,
      :compute_configuration,
      :scaling_configuration,
      :overflow_behavior,
      :vpc_config,
      :proxy_configuration,
      :image_id,
      :fleet_service_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   Information about the compute fleet
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateFleetOutput AWS API Documentation
    #
    class CreateFleetOutput < Struct.new(
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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
    #   The ARN of the IAM role that enables CodeBuild to interact with
    #   dependent Amazon Web Services services on behalf of the Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to
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
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
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
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   VpcConfig enables CodeBuild to access resources in an Amazon VPC.
    #
    #   <note markdown="1"> If you're using compute fleets during project creation, do not
    #   provide vpcConfig.
    #
    #    </note>
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #   @return [Boolean]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. These can be logs in
    #   CloudWatch Logs, logs uploaded to a specified S3 bucket, or both.
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
    # @!attribute [rw] concurrent_build_limit
    #   The maximum number of concurrent builds that are allowed for this
    #   project.
    #
    #   New builds are only started if the current number of builds is less
    #   than or equal to this limit. If the current build count meets this
    #   limit, new builds are throttled and are not run.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #   @return [Integer]
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
      :build_batch_config,
      :concurrent_build_limit,
      :auto_retry_limit)
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
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild report group tags.
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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild project.
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
    # @!attribute [rw] manual_creation
    #   If manualCreation is true, CodeBuild doesn't create a webhook in
    #   GitHub and instead returns `payloadUrl` and `secret` values for the
    #   webhook. The `payloadUrl` and `secret` values in the output can be
    #   used to manually create a webhook within GitHub.
    #
    #   <note markdown="1"> `manualCreation` is only available for GitHub webhooks.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] scope_configuration
    #   The scope configuration for global or organization webhooks.
    #
    #   <note markdown="1"> Global or organization webhooks are only available for GitHub and
    #   Github Enterprise webhooks.
    #
    #    </note>
    #   @return [Types::ScopeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateWebhookInput AWS API Documentation
    #
    class CreateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :filter_groups,
      :build_type,
      :manual_creation,
      :scope_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] webhook
    #   Information about a webhook that connects repository events to a
    #   build project in CodeBuild.
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

    # @!attribute [rw] arn
    #   The ARN of the compute fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteFleetInput AWS API Documentation
    #
    class DeleteFleetInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/DeleteFleetOutput AWS API Documentation
    #
    class DeleteFleetOutput < Aws::EmptyStructure; end

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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild project.
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

    # Information about a Docker image that is managed by CodeBuild.
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
    # are managed by CodeBuild.
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
    # CodeBuild.
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
    # @!attribute [rw] name
    #   The name or key of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #
    #   We strongly discourage the use of `PLAINTEXT` environment variables
    #   to store sensitive values, especially Amazon Web Services secret key
    #   IDs. `PLAINTEXT` environment variables can be displayed in plain
    #   text using the CodeBuild console and the CLI. For sensitive values,
    #   we recommend you use an environment variable of type
    #   `PARAMETER_STORE` or `SECRETS_MANAGER`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of environment variable. Valid values include:
    #
    #   * `PARAMETER_STORE`: An environment variable stored in Systems
    #     Manager Parameter Store. For environment variables of this type,
    #     specify the name of the parameter as the `value` of the
    #     EnvironmentVariable. The parameter value will be substituted for
    #     the name at runtime. You can also define Parameter Store
    #     environment variables in the buildspec. To learn how to do so, see
    #     [env/parameter-store][1] in the *CodeBuild User Guide*.
    #
    #   * `PLAINTEXT`: An environment variable in plain text format. This is
    #     the default value.
    #
    #   * `SECRETS_MANAGER`: An environment variable stored in Secrets
    #     Manager. For environment variables of this type, specify the name
    #     of the secret as the `value` of the EnvironmentVariable. The
    #     secret value will be substituted for the name at runtime. You can
    #     also define Secrets Manager environment variables in the
    #     buildspec. To learn how to do so, see [env/secrets-manager][2] in
    #     the *CodeBuild User Guide*.
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

    # Contains information about an exported environment variable.
    #
    # Exported environment variables are used in conjunction with
    # CodePipeline to export environment variables from the current build
    # stage to subsequent stages in the pipeline. For more information, see
    # [Working with variables][1] in the *CodePipeline User Guide*.
    #
    # <note markdown="1"> During a build, the value of a variable is available starting with the
    # `install` phase. It can be updated between the start of the `install`
    # phase and the end of the `post_build` phase. After the `post_build`
    # phase ends, the value of exported variables cannot change.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html
    #
    # @!attribute [rw] name
    #   The name of the exported environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to the exported environment variable.
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

    # A set of dedicated instances for your build environment.
    #
    # @!attribute [rw] arn
    #   The ARN of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] created
    #   The time at which the compute fleet was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified
    #   The time at which the compute fleet was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the compute fleet.
    #   @return [Types::FleetStatus]
    #
    # @!attribute [rw] base_capacity
    #   The initial number of machines allocated to the compute ﬂeet, which
    #   deﬁnes the number of builds that can run in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_type
    #   The environment type of the compute fleet.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia
    #     Pacific (Singapore), Asia Pacific (Sydney), EU (Frankfurt), and
    #     South America (São Paulo).
    #
    #   * The environment type `ARM_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia
    #     Pacific (Sydney).
    #
    #   * The environment type `MAC_ARM` is available for Medium fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), and EU (Frankfurt)
    #
    #   * The environment type `MAC_ARM` is available for Large fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), and Asia Pacific (Sydney).
    #
    #   * The environment type `WINDOWS_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `WINDOWS_SERVER_2019_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia
    #     Pacific (Mumbai) and EU (Ireland).
    #
    #   * The environment type `WINDOWS_SERVER_2022_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), EU (Ireland), EU (Frankfurt), Asia Pacific (Sydney),
    #     Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São
    #     Paulo) and Asia Pacific (Mumbai).
    #
    #   For more information, see [Build environment compute types][1] in
    #   the *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the compute fleet uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory,
    #     disk space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes.
    #     For more information, see [Reserved capacity environment types][1]
    #     in the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports
    #     Docker images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16
    #     GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][2] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #   @return [String]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration of the compute fleet. This is only
    #   required if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
    #   @return [Types::ComputeConfiguration]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling configuration of the compute fleet.
    #   @return [Types::ScalingConfigurationOutput]
    #
    # @!attribute [rw] overflow_behavior
    #   The compute fleet overflow behavior.
    #
    #   * For overflow behavior `QUEUE`, your overflow builds need to wait
    #     on the existing fleet instance to become available.
    #
    #   * For overflow behavior `ON_DEMAND`, your overflow builds run on
    #     CodeBuild on-demand.
    #
    #     <note markdown="1"> If you choose to set your overflow behavior to on-demand while
    #     creating a VPC-connected fleet, make sure that you add the
    #     required VPC permissions to your project service role. For more
    #     information, see [Example policy statement to allow CodeBuild
    #     access to Amazon Web Services services required to create a VPC
    #     network interface][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] proxy_configuration
    #   The proxy configuration of the compute fleet.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_service_role
    #   The service role associated with the compute fleet. For more
    #   information, see [ Allow a user to add a permission policy for a
    #   fleet service role][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this compute
    #   fleet.
    #
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Fleet AWS API Documentation
    #
    class Fleet < Struct.new(
      :arn,
      :name,
      :id,
      :created,
      :last_modified,
      :status,
      :base_capacity,
      :environment_type,
      :compute_type,
      :compute_configuration,
      :scaling_configuration,
      :overflow_behavior,
      :vpc_config,
      :proxy_configuration,
      :image_id,
      :fleet_service_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the proxy rule for your reserved capacity instances.
    #
    # @!attribute [rw] type
    #   The type of proxy rule.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   The behavior of the proxy rule.
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   The destination of the proxy rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/FleetProxyRule AWS API Documentation
    #
    class FleetProxyRule < Struct.new(
      :type,
      :effect,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the compute fleet.
    #
    # @!attribute [rw] status_code
    #   The status code of the compute fleet. Valid values include:
    #
    #   * `CREATING`: The compute fleet is being created.
    #
    #   * `UPDATING`: The compute fleet is being updated.
    #
    #   * `ROTATING`: The compute fleet is being rotated.
    #
    #   * `PENDING_DELETION`: The compute fleet is pending deletion.
    #
    #   * `DELETING`: The compute fleet is being deleted.
    #
    #   * `CREATE_FAILED`: The compute fleet has failed to create.
    #
    #   * `UPDATE_ROLLBACK_FAILED`: The compute fleet has failed to update
    #     and could not rollback to previous state.
    #
    #   * `ACTIVE`: The compute fleet has succeeded and is active.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Additional information about a compute fleet. Valid values include:
    #
    #   * `CREATE_FAILED`: The compute fleet has failed to create.
    #
    #   * `UPDATE_FAILED`: The compute fleet has failed to update.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message associated with the status of a compute fleet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/FleetStatus AWS API Documentation
    #
    class FleetStatus < Struct.new(
      :status_code,
      :context,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] report_group_arn
    #   The ARN of the report group that contains the reports to analyze.
    #   @return [String]
    #
    # @!attribute [rw] num_of_reports
    #   The number of reports to analyze. This operation always retrieves
    #   the most recent reports.
    #
    #   If this parameter is omitted, the most recent 100 reports are
    #   analyzed.
    #   @return [Integer]
    #
    # @!attribute [rw] trend_field
    #   The test report value to accumulate. This must be one of the
    #   following values:
    #
    #   Test reports:
    #   : DURATION
    #
    #     : Accumulate the test run times for the specified reports.
    #
    #     PASS\_RATE
    #
    #     : Accumulate the percentage of tests that passed for the specified
    #       test reports.
    #
    #     TOTAL
    #
    #     : Accumulate the total number of tests for the specified test
    #       reports.
    #   ^
    #
    #   Code coverage reports:
    #   : BRANCH\_COVERAGE
    #
    #     : Accumulate the branch coverage percentages for the specified
    #       test reports.
    #
    #     BRANCHES\_COVERED
    #
    #     : Accumulate the branches covered values for the specified test
    #       reports.
    #
    #     BRANCHES\_MISSED
    #
    #     : Accumulate the branches missed values for the specified test
    #       reports.
    #
    #     LINE\_COVERAGE
    #
    #     : Accumulate the line coverage percentages for the specified test
    #       reports.
    #
    #     LINES\_COVERED
    #
    #     : Accumulate the lines covered values for the specified test
    #       reports.
    #
    #     LINES\_MISSED
    #
    #     : Accumulate the lines not covered values for the specified test
    #       reports.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetReportGroupTrendInput AWS API Documentation
    #
    class GetReportGroupTrendInput < Struct.new(
      :report_group_arn,
      :num_of_reports,
      :trend_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stats
    #   Contains the accumulated trend data.
    #   @return [Types::ReportGroupTrendStats]
    #
    # @!attribute [rw] raw_data
    #   An array that contains the raw data for each report.
    #   @return [Array<Types::ReportWithRawData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/GetReportGroupTrendOutput AWS API Documentation
    #
    class GetReportGroupTrendOutput < Struct.new(
      :stats,
      :raw_data)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Information about the Git submodules configuration for an CodeBuild
    # build project.
    #
    # @!attribute [rw] fetch_submodules
    #   Set to true to fetch Git submodules for your CodeBuild build
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

    # @!attribute [rw] username
    #   The Bitbucket username when the `authType` is BASIC\_AUTH. This
    #   parameter is not valid for other types of source providers or
    #   connections.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   For GitHub or GitHub Enterprise, this is the personal access token.
    #   For Bitbucket, this is either the access token or the app password.
    #   For the `authType` CODECONNECTIONS, this is the `connectionArn`. For
    #   the `authType` SECRETS\_MANAGER, this is the `secretArn`.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The source provider used for this project.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication used to connect to a GitHub, GitHub
    #   Enterprise, GitLab, GitLab Self Managed, or Bitbucket repository. An
    #   OAUTH connection is not supported by the API and must be created
    #   using the CodeBuild console.
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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild build project that the cache is reset for.
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
    #   * `ASCENDING`: List the batch build identifiers in ascending order
    #     by identifier.
    #
    #   * `DESCENDING`: List the batch build identifiers in descending order
    #     by identifier.
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
    #   * `ASCENDING`: List the batch build identifiers in ascending order
    #     by identifier.
    #
    #   * `DESCENDING`: List the batch build identifiers in descending order
    #     by identifier.
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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild project.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order to sort the results in. The results are sorted by build
    #   number, not the build identifier. If this is not specified, the
    #   results are sorted in descending order.
    #
    #   Valid values include:
    #
    #   * `ASCENDING`: List the build identifiers in ascending order, by
    #     build number.
    #
    #   * `DESCENDING`: List the build identifiers in descending order, by
    #     build number.
    #
    #   If the project has more than 100 builds, setting the sort order will
    #   result in an error.
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
    #   A list of build identifiers for the specified build project, with
    #   each build ID representing a single build.
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

    # @!attribute [rw] sort_order
    #   The order to list build IDs. Valid values include:
    #
    #   * `ASCENDING`: List the build IDs in ascending order by build ID.
    #
    #   * `DESCENDING`: List the build IDs in descending order by build ID.
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
    #   managed by CodeBuild.
    #   @return [Array<Types::EnvironmentPlatform>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListCuratedEnvironmentImagesOutput AWS API Documentation
    #
    class ListCuratedEnvironmentImagesOutput < Struct.new(
      :platforms)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] max_results
    #   The maximum number of paginated compute fleets returned per
    #   response. Use `nextToken` to iterate pages in the list of returned
    #   compute fleets.
    #   @return [Integer]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list compute fleets. Valid values include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #
    #   Use `sortBy` to specify the criterion to be used to list compute
    #   fleet names.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list compute fleet names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each compute fleet was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when information about each
    #     compute fleet was last changed.
    #
    #   * `NAME`: List based on each compute fleet's name.
    #
    #   Use `sortOrder` to specify in what order to list the compute fleet
    #   names based on the preceding criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListFleetsInput AWS API Documentation
    #
    class ListFleetsInput < Struct.new(
      :next_token,
      :max_results,
      :sort_order,
      :sort_by)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more than 100 items in the list, only the first 100
    #   items are returned, along with a unique string called a *nextToken*.
    #   To get the next batch of items in the list, call this operation
    #   again, adding the next token to the call.
    #   @return [String]
    #
    # @!attribute [rw] fleets
    #   The list of compute fleet names.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ListFleetsOutput AWS API Documentation
    #
    class ListFleetsOutput < Struct.new(
      :next_token,
      :fleets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sort_by
    #   The criterion to be used to list build project names. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each build project was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when information about each
    #     build project was last changed.
    #
    #   * `NAME`: List based on each build project's name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
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

    # @!attribute [rw] sort_order
    #   Used to specify the order to sort the list of returned report
    #   groups. Valid values are `ASCENDING` and `DESCENDING`.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list build report groups. Valid values
    #   include:
    #
    #   * `CREATED_TIME`: List based on when each report group was created.
    #
    #   * `LAST_MODIFIED_TIME`: List based on when each report group was
    #     last changed.
    #
    #   * `NAME`: List based on each report group's name.
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
    #   The list of ARNs for the report groups in the current Amazon Web
    #   Services account.
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

    # @!attribute [rw] sort_order
    #   Specifies the sort order for the list of returned reports. Valid
    #   values are:
    #
    #   * `ASCENDING`: return reports in chronological order based on their
    #     creation date.
    #
    #   * `DESCENDING`: return reports in the reverse chronological order
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
    #   The list of returned ARNs for the reports in the current Amazon Web
    #   Services account.
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

    # @!attribute [rw] sort_by
    #   The criterion to be used to list build projects shared with the
    #   current Amazon Web Services account or user. Valid values include:
    #
    #   * `ARN`: List based on the ARN.
    #
    #   * `MODIFIED_TIME`: List based on when information about the shared
    #     project was last changed.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list shared build projects. Valid values
    #   include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
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
    #   The list of ARNs for the build projects shared with the current
    #   Amazon Web Services account or user.
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

    # @!attribute [rw] sort_order
    #   The order in which to list shared report groups. Valid values
    #   include:
    #
    #   * `ASCENDING`: List in ascending order.
    #
    #   * `DESCENDING`: List in descending order.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The criterion to be used to list report groups shared with the
    #   current Amazon Web Services account or user. Valid values include:
    #
    #   * `ARN`: List based on the ARN.
    #
    #   * `MODIFIED_TIME`: List based on when information about the shared
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
    #   The list of ARNs for the report groups shared with the current
    #   Amazon Web Services account or user.
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
    # CloudWatch Logs, built in a specified S3 bucket, or both.
    #
    # @!attribute [rw] cloud_watch_logs
    #   Information about CloudWatch Logs for a build project. CloudWatch
    #   Logs are enabled by default.
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

    # Information about build logs in CloudWatch Logs.
    #
    # @!attribute [rw] group_name
    #   The name of the CloudWatch Logs group for the build logs.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the CloudWatch Logs stream for the build logs.
    #   @return [String]
    #
    # @!attribute [rw] deep_link
    #   The URL to an individual build log in CloudWatch Logs. The log
    #   stream is created during the PROVISIONING phase of a build and the
    #   `deeplink` will not be valid until it is created.
    #   @return [String]
    #
    # @!attribute [rw] s3_deep_link
    #   The URL to a build log in an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs_arn
    #   The ARN of the CloudWatch Logs stream for a build execution. Its
    #   format is
    #   `arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}`.
    #   The CloudWatch Logs stream is created during the PROVISIONING phase
    #   of a build and the ARN will not be valid until it is created. For
    #   more information, see [Resources Defined by CloudWatch Logs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] s3_logs_arn
    #   The ARN of S3 logs for a build project. Its format is
    #   `arn:${Partition}:s3:::${BucketName}/${ObjectName}`. For more
    #   information, see [Resources Defined by Amazon S3][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_logs
    #   Information about CloudWatch Logs for a build project.
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
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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
    #   The ARN of the IAM role that enables CodeBuild to interact with
    #   dependent Amazon Web Services services on behalf of the Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to
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
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
    #
    #   <note markdown="1"> You can use a cross-account KMS key to encrypt the build output
    #   artifacts if your service role has permission to that key.
    #
    #    </note>
    #
    #   You can specify either the Amazon Resource Name (ARN) of the CMK or,
    #   if available, the CMK's alias (using the format
    #   `alias/<alias-name>`). If you don't specify a value, CodeBuild uses
    #   the managed CMK for Amazon Simple Storage Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this build
    #   project.
    #
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
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
    #   build project in CodeBuild.
    #   @return [Types::Webhook]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge
    #   Information about the build badge for the build project.
    #   @return [Types::ProjectBadge]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. A project can create
    #   logs in CloudWatch Logs, an S3 bucket, or both.
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
    # @!attribute [rw] concurrent_build_limit
    #   The maximum number of concurrent builds that are allowed for this
    #   project.
    #
    #   New builds are only started if the current number of builds is less
    #   than or equal to this limit. If the current build count meets this
    #   limit, new builds are throttled and are not run.
    #   @return [Integer]
    #
    # @!attribute [rw] project_visibility
    #   Specifies the visibility of the project's builds. Possible values
    #   are:
    #
    #   PUBLIC\_READ
    #
    #   : The project builds are visible to the public.
    #
    #   PRIVATE
    #
    #   : The project builds are not visible to the public.
    #   @return [String]
    #
    # @!attribute [rw] public_project_alias
    #   Contains the project identifier used with the public build APIs.
    #   @return [String]
    #
    # @!attribute [rw] resource_access_role
    #   The ARN of the IAM role that enables CodeBuild to access the
    #   CloudWatch Logs and Amazon S3 artifacts for the project's builds.
    #   @return [String]
    #
    # @!attribute [rw] auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #   @return [Integer]
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
      :build_batch_config,
      :concurrent_build_limit,
      :project_visibility,
      :public_project_alias,
      :resource_access_role,
      :auto_retry_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build output artifacts for the build project.
    #
    # @!attribute [rw] type
    #   The type of build output artifact. Valid values include:
    #
    #   * `CODEPIPELINE`: The build project has build output generated
    #     through CodePipeline.
    #
    #     <note markdown="1"> The `CODEPIPELINE` type is not supported for `secondaryArtifacts`.
    #
    #      </note>
    #
    #   * `NO_ARTIFACTS`: The build project does not produce any build
    #     output.
    #
    #   * `S3`: The build project stores build output in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the build output artifact location:
    #
    #   * If `type` is set to `CODEPIPELINE`, CodePipeline ignores this
    #     value if specified. This is because CodePipeline manages its build
    #     output locations instead of CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, this is the name of the output bucket.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Along with `namespaceType` and `name`, the pattern that CodeBuild
    #   uses to name and store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, CodePipeline ignores this
    #     value if specified. This is because CodePipeline manages its build
    #     output names instead of CodeBuild.
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
    #   Along with `path` and `name`, the pattern that CodeBuild uses to
    #   determine the name and location to store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, CodePipeline ignores this
    #     value if specified. This is because CodePipeline manages its build
    #     output names instead of CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, valid values include:
    #
    #     * `BUILD_ID`: Include the build ID in the location of the build
    #       output artifact.
    #
    #     * `NONE`: Do not include the build ID. This is the default if
    #       `namespaceType` is not specified.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `BUILD_ID`, and `name` is set to `MyArtifact.zip`, the output
    #   artifact is stored in `MyArtifacts/<build-ID>/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Along with `path` and `namespaceType`, the pattern that CodeBuild
    #   uses to name and store the output artifact:
    #
    #   * If `type` is set to `CODEPIPELINE`, CodePipeline ignores this
    #     value if specified. This is because CodePipeline manages its build
    #     output names instead of CodeBuild.
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
    #   * If `type` is set to `CODEPIPELINE`, CodePipeline ignores this
    #     value if specified. This is because CodePipeline manages its build
    #     output artifacts instead of CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, this value is ignored if
    #     specified, because no build output is produced.
    #
    #   * If `type` is set to `S3`, valid values include:
    #
    #     * `NONE`: CodeBuild creates in the output bucket a folder that
    #       contains the build output. This is the default if `packaging` is
    #       not specified.
    #
    #     * `ZIP`: CodeBuild creates in the output bucket a ZIP file that
    #       contains the build output.
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
    #   option is valid only if your artifacts type is Amazon S3. If this is
    #   set with another artifacts type, an invalidInputException is thrown.
    #   @return [Boolean]
    #
    # @!attribute [rw] artifact_identifier
    #   An identifier for this artifact definition.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner_access
    #   Specifies the bucket owner's access for objects that another
    #   account uploads to their Amazon S3 bucket. By default, only the
    #   account that uploads the objects to the bucket has access to these
    #   objects. This property allows you to give the bucket owner access to
    #   these objects.
    #
    #   <note markdown="1"> To use this property, your CodeBuild service role must have the
    #   `s3:PutBucketAcl` permission. This permission allows CodeBuild to
    #   modify the access control list for the bucket.
    #
    #    </note>
    #
    #   This property can be one of the following values:
    #
    #   NONE
    #
    #   : The bucket owner does not have access to the objects. This is the
    #     default.
    #
    #   READ\_ONLY
    #
    #   : The bucket owner has read-only access to the objects. The
    #     uploading account retains ownership of the objects.
    #
    #   FULL
    #
    #   : The bucket owner has full access to the objects. Object ownership
    #     is determined by the following criteria:
    #
    #     * If the bucket is configured with the **Bucket owner preferred**
    #       setting, the bucket owner owns the objects. The uploading
    #       account will have object access as specified by the bucket's
    #       policy.
    #
    #     * Otherwise, the uploading account retains ownership of the
    #       objects.
    #
    #     For more information about Amazon S3 object ownership, see
    #     [Controlling ownership of uploaded objects using S3 Object
    #     Ownership][1] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
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
      :artifact_identifier,
      :bucket_owner_access)
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
    # @!attribute [rw] batch_report_mode
    #   Specifies how build status reports are sent to the source provider
    #   for the batch build. This property is only used when the source
    #   provider for your project is Bitbucket, GitHub, or GitHub
    #   Enterprise, and your project is configured to report build statuses
    #   to the source provider.
    #
    #   REPORT\_AGGREGATED\_BATCH
    #
    #   : (Default) Aggregate all of the build statuses into a single status
    #     report.
    #
    #   REPORT\_INDIVIDUAL\_BUILDS
    #
    #   : Send a separate status report for each individual build.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectBuildBatchConfig AWS API Documentation
    #
    class ProjectBuildBatchConfig < Struct.new(
      :service_role,
      :combine_artifacts,
      :restrictions,
      :timeout_in_mins,
      :batch_report_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the cache for the build project.
    #
    # @!attribute [rw] type
    #   The type of cache used by the build project. Valid values include:
    #
    #   * `NO_CACHE`: The build project does not use any cache.
    #
    #   * `S3`: The build project reads and writes from and to S3.
    #
    #   * `LOCAL`: The build project stores a cache locally on a build host
    #     that is only available to that build host.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the cache location:
    #
    #   * `NO_CACHE` or `LOCAL`: This value is ignored.
    #
    #   * `S3`: This is the S3 bucket name/prefix.
    #   @return [String]
    #
    # @!attribute [rw] modes
    #   An array of strings that specify the local cache modes. You can use
    #   one or more local cache modes at the same time. This is only used
    #   for `LOCAL` cache types.
    #
    #   Possible values are:
    #
    #   LOCAL\_SOURCE\_CACHE
    #
    #   : Caches Git metadata for primary and secondary sources. After the
    #     cache is created, subsequent builds pull only the change between
    #     commits. This mode is a good choice for projects with a clean
    #     working directory and a source that is a large Git repository. If
    #     you choose this option and your project does not use a Git
    #     repository (GitHub, GitHub Enterprise, or Bitbucket), the option
    #     is ignored.
    #
    #   LOCAL\_DOCKER\_LAYER\_CACHE
    #
    #   : Caches existing Docker layers. This mode is a good choice for
    #     projects that build or pull large Docker images. It can prevent
    #     the performance issues caused by pulling large Docker images down
    #     from the network.
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
    #
    #   LOCAL\_CUSTOM\_CACHE
    #
    #   : Caches directories you specify in the buildspec file. This mode is
    #     a good choice if your build scenario is not suited to one of the
    #     other three local cache modes. If you use a custom cache:
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
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia
    #     Pacific (Sydney), and EU (Frankfurt).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia
    #     Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore),
    #     Asia Pacific (Sydney), China (Beijing), and China (Ningxia).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     Canada (Central), EU (Ireland), EU (London), EU (Frankfurt), Asia
    #     Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore),
    #     Asia Pacific (Sydney) , China (Beijing), and China (Ningxia).
    #   ^
    #
    #   * The environment types `ARM_LAMBDA_CONTAINER` and
    #     `LINUX_LAMBDA_CONTAINER` are available only in regions US East (N.
    #     Virginia), US East (Ohio), US West (Oregon), Asia Pacific
    #     (Mumbai), Asia Pacific (Singapore), Asia Pacific (Sydney), Asia
    #     Pacific (Tokyo), EU (Frankfurt), EU (Ireland), and South America
    #     (São Paulo).
    #
    #   ^
    #   ^
    #
    #   * The environment types `WINDOWS_CONTAINER` and
    #     `WINDOWS_SERVER_2019_CONTAINER` are available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), and EU
    #     (Ireland).
    #
    #   ^
    #
    #   <note markdown="1"> If you're using compute fleets during project creation, `type` will
    #   be ignored.
    #
    #    </note>
    #
    #   For more information, see [Build environment compute types][1] in
    #   the *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image tag or image digest that identifies the Docker image to
    #   use for this build project. Use the following formats:
    #
    #   * For an image tag: `<registry>/<repository>:<tag>`. For example, in
    #     the Docker repository that CodeBuild uses to manage its Docker
    #     images, this would be `aws/codebuild/standard:4.0`.
    #
    #   * For an image digest: `<registry>/<repository>@<digest>`. For
    #     example, to specify an image with the digest
    #     "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf,"
    #     use
    #     `<registry>/<repository>@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf`.
    #
    #   For more information, see [Docker images provided by CodeBuild][1]
    #   in the *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the build project uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory,
    #     disk space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes.
    #     For more information, see [Reserved capacity environment types][1]
    #     in the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports
    #     Docker images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16
    #     GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][2] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #   @return [String]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration of the build project. This is only
    #   required if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
    #   @return [Types::ComputeConfiguration]
    #
    # @!attribute [rw] fleet
    #   A ProjectFleet object to use for this build project.
    #   @return [Types::ProjectFleet]
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
    #   previous command does not work, add the `-t` argument to `timeout`:
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay&`
    #
    #   `- timeout -t 15 sh -c "until docker info; do echo .; sleep 1;
    #   done"`
    #   @return [Boolean]
    #
    # @!attribute [rw] certificate
    #   The ARN of the Amazon S3 bucket, path prefix, and object key that
    #   contains the PEM-encoded certificate for the build project. For more
    #   information, see [certificate][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/create-project-cli.html#cli.environment.certificate
    #   @return [String]
    #
    # @!attribute [rw] registry_credential
    #   The credentials for access to a private registry.
    #   @return [Types::RegistryCredential]
    #
    # @!attribute [rw] image_pull_credentials_type
    #   The type of credentials CodeBuild uses to pull images in your build.
    #   There are two valid values:
    #
    #   * `CODEBUILD` specifies that CodeBuild uses its own credentials.
    #     This requires that you modify your ECR repository policy to trust
    #     CodeBuild service principal.
    #
    #   * `SERVICE_ROLE` specifies that CodeBuild uses your build project's
    #     service role.
    #
    #   When you use a cross-account or private registry image, you must use
    #   SERVICE\_ROLE credentials. When you use an CodeBuild curated image,
    #   you must use CODEBUILD credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectEnvironment AWS API Documentation
    #
    class ProjectEnvironment < Struct.new(
      :type,
      :image,
      :compute_type,
      :compute_configuration,
      :fleet,
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
    # @!attribute [rw] type
    #   The type of the file system. The one supported type is `EFS`.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   A string that specifies the location of the file system created by
    #   Amazon EFS. Its format is `efs-dns-name:/directory-path`. You can
    #   find the DNS name of file system when you view it in the Amazon EFS
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
    #   you specify `my_efs` for `identifier`, a new environment variable is
    #   create named `CODEBUILD_MY_EFS`.
    #
    #   The `identifier` is used to mount your file system.
    #   @return [String]
    #
    # @!attribute [rw] mount_options
    #   The mount options for a file system created by Amazon EFS. The
    #   default mount options used by CodeBuild are
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

    # Information about the compute fleet of the build project. For more
    # information, see [Working with reserved capacity in CodeBuild][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/fleets.html
    #
    # @!attribute [rw] fleet_arn
    #   Specifies the compute fleet ARN for the build project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectFleet AWS API Documentation
    #
    class ProjectFleet < Struct.new(
      :fleet_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the build input source code for the build project.
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values include:
    #
    #   * `BITBUCKET`: The source code is in a Bitbucket repository.
    #
    #   * `CODECOMMIT`: The source code is in an CodeCommit repository.
    #
    #   * `CODEPIPELINE`: The source code settings are specified in the
    #     source action of a pipeline in CodePipeline.
    #
    #   * `GITHUB`: The source code is in a GitHub repository.
    #
    #   * `GITHUB_ENTERPRISE`: The source code is in a GitHub Enterprise
    #     Server repository.
    #
    #   * `GITLAB`: The source code is in a GitLab repository.
    #
    #   * `GITLAB_SELF_MANAGED`: The source code is in a self-managed GitLab
    #     repository.
    #
    #   * `NO_SOURCE`: The project does not have input source code.
    #
    #   * `S3`: The source code is in an Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the location of the source code to be built. Valid
    #   values include:
    #
    #   * For source code settings that are specified in the source action
    #     of a pipeline in CodePipeline, `location` should not be specified.
    #     If it is specified, CodePipeline ignores it. This is because
    #     CodePipeline uses the settings in a pipeline's source action
    #     instead of this value.
    #
    #   * For source code in an CodeCommit repository, the HTTPS clone URL
    #     to the repository that contains the source code and the buildspec
    #     file (for example,
    #     `https://git-codecommit.<region-ID>.amazonaws.com/v1/repos/<repo-name>`).
    #
    #   * For source code in an Amazon S3 input bucket, one of the
    #     following.
    #
    #     * The path to the ZIP file that contains the source code (for
    #       example, `<bucket-name>/<path>/<object-name>.zip`).
    #
    #     * The path to the folder that contains the source code (for
    #       example, `<bucket-name>/<path-to-source-code>/<folder>/`).
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the buildspec file. You
    #     must connect your Amazon Web Services account to your GitHub
    #     account. Use the CodeBuild console to start creating a build
    #     project. When you use the console to connect (or reconnect) with
    #     GitHub, on the GitHub **Authorize application** page, for
    #     **Organization access**, choose **Request access** next to each
    #     repository you want to allow CodeBuild to have access to, and then
    #     choose **Authorize application**. (After you have connected to
    #     your GitHub account, you do not need to finish creating the build
    #     project. You can leave the CodeBuild console.) To instruct
    #     CodeBuild to use this connection, in the `source` object, set the
    #     `auth` object's `type` value to `OAUTH`.
    #
    #   * For source code in an GitLab or self-managed GitLab repository,
    #     the HTTPS clone URL to the repository that contains the source and
    #     the buildspec file. You must connect your Amazon Web Services
    #     account to your GitLab account. Use the CodeBuild console to start
    #     creating a build project. When you use the console to connect (or
    #     reconnect) with GitLab, on the Connections **Authorize
    #     application** page, choose **Authorize**. Then on the
    #     CodeConnections **Create GitLab connection** page, choose
    #     **Connect to GitLab**. (After you have connected to your GitLab
    #     account, you do not need to finish creating the build project. You
    #     can leave the CodeBuild console.) To instruct CodeBuild to
    #     override the default connection and use this connection instead,
    #     set the `auth` object's `type` value to `CODECONNECTIONS` in the
    #     `source` object.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the buildspec file.
    #     You must connect your Amazon Web Services account to your
    #     Bitbucket account. Use the CodeBuild console to start creating a
    #     build project. When you use the console to connect (or reconnect)
    #     with Bitbucket, on the Bitbucket **Confirm access to your
    #     account** page, choose **Grant access**. (After you have connected
    #     to your Bitbucket account, you do not need to finish creating the
    #     build project. You can leave the CodeBuild console.) To instruct
    #     CodeBuild to use this connection, in the `source` object, set the
    #     `auth` object's `type` value to `OAUTH`.
    #
    #   If you specify `CODEPIPELINE` for the `Type` property, don't
    #   specify this property. For all of the other types, you must specify
    #   `Location`.
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
    #   the path to an S3 bucket. The bucket must be in the same Amazon Web
    #   Services Region as the build project. Specify the buildspec file
    #   using its ARN (for example,
    #   `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this value is
    #   not provided or is set to an empty string, the source code must
    #   contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   Information about the authorization settings for CodeBuild to access
    #   the source code to be built.
    #   @return [Types::SourceAuth]
    #
    # @!attribute [rw] report_build_status
    #   Set to true to report the status of a build's start and finish to
    #   your source provider. This option is valid only when your source
    #   provider is GitHub, GitHub Enterprise, GitLab, GitLab Self Managed,
    #   GitLab, GitLab Self Managed, or Bitbucket. If this is set and you
    #   use a different source provider, an `invalidInputException` is
    #   thrown.
    #
    #   To be able to report the build status to the source provider, the
    #   user associated with the source provider must have write access to
    #   the repo. If the user does not have write access, the build status
    #   cannot be updated. For more information, see [Source provider
    #   access][1] in the *CodeBuild User Guide*.
    #
    #   The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #   If your project's builds are triggered by a webhook, you must push
    #   a new commit to the repo for a change to this property to take
    #   effect.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html
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
    #   An identifier for this project source. The identifier can only
    #   contain alphanumeric characters and underscores, and must be less
    #   than 128 characters in length.
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
    # @!attribute [rw] source_identifier
    #   An identifier for a source in the build project. The identifier can
    #   only contain alphanumeric characters and underscores, and must be
    #   less than 128 characters in length.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The source version for the corresponding source identifier. If
    #   specified, must be one of:
    #
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example, `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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

    # Information about the proxy configurations that apply network access
    # control to your reserved capacity instances.
    #
    # @!attribute [rw] default_behavior
    #   The default behavior of outgoing traffic.
    #   @return [String]
    #
    # @!attribute [rw] ordered_proxy_rules
    #   An array of `FleetProxyRule` objects that represent the specified
    #   destination domains or IPs to allow or deny network access control
    #   to.
    #   @return [Array<Types::FleetProxyRule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProxyConfiguration AWS API Documentation
    #
    class ProxyConfiguration < Struct.new(
      :default_behavior,
      :ordered_proxy_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   A JSON-formatted resource policy. For more information, see [Sharing
    #   a Project][1] and [Sharing a Report Group][2] in the *CodeBuild User
    #   Guide*.
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
    # For more information, see [Private Registry with Secrets Manager
    # Sample for CodeBuild][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html
    #
    # @!attribute [rw] credential
    #   The Amazon Resource Name (ARN) or name of credentials created using
    #   Secrets Manager.
    #
    #   <note markdown="1"> The `credential` can use the name of the credentials only if they
    #   exist in your current Amazon Web Services Region.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] credential_provider
    #   The service that created the credentials to access a private Docker
    #   registry. The valid value, SECRETS\_MANAGER, is for Secrets Manager.
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
    # @!attribute [rw] export_config_type
    #   The export configuration type. Valid values are:
    #
    #   * `S3`: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`: The report results are not exported.
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
    #   The ARN of the `ReportGroup`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the `ReportGroup`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the `ReportGroup`. This can be one of the following
    #   values:
    #
    #   CODE\_COVERAGE
    #
    #   : The report group contains code coverage reports.
    #
    #   TEST
    #
    #   : The report group contains test reports.
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
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild report group tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] status
    #   The status of the report group. This property is read-only.
    #
    #   This can be one of the following values:
    #
    #   ACTIVE
    #
    #   : The report group is active.
    #
    #   DELETING
    #
    #   : The report group is in the process of being deleted.
    #   @return [String]
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
      :tags,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains trend statistics for a set of reports. The actual values
    # depend on the type of trend being collected. For more information, see
    # .
    #
    # @!attribute [rw] average
    #   Contains the average of all values analyzed.
    #   @return [String]
    #
    # @!attribute [rw] max
    #   Contains the maximum value analyzed.
    #   @return [String]
    #
    # @!attribute [rw] min
    #   Contains the minimum value analyzed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ReportGroupTrendStats AWS API Documentation
    #
    class ReportGroupTrendStats < Struct.new(
      :average,
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the unmodified data for the report. For more information, see
    # .
    #
    # @!attribute [rw] report_arn
    #   The ARN of the report.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The value of the requested data field from the report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ReportWithRawData AWS API Documentation
    #
    class ReportWithRawData < Struct.new(
      :report_arn,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a resolved build artifact. A resolved artifact is an
    # artifact that is built and deployed to the destination, such as Amazon
    # S3.
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

    # The specified Amazon Web Services resource cannot be created, because
    # an Amazon Web Services resource with the same settings already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # The specified Amazon Web Services resource cannot be found.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   Specifies the identifier of the batch build to restart.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuildBatch` request. The token is included
    #   in the `RetryBuildBatch` request and is valid for five minutes. If
    #   you repeat the `RetryBuildBatch` request with the same token, but
    #   change a parameter, CodeBuild returns a parameter mismatch error.
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

    # @!attribute [rw] id
    #   Specifies the identifier of the build to restart.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case sensitive identifier you provide to ensure the
    #   idempotency of the `RetryBuild` request. The token is included in
    #   the `RetryBuild` request and is valid for five minutes. If you
    #   repeat the `RetryBuild` request with the same token, but change a
    #   parameter, CodeBuild returns a parameter mismatch error.
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
    # @!attribute [rw] status
    #   The current status of the S3 build logs. Valid values are:
    #
    #   * `ENABLED`: S3 build logs are enabled for this build project.
    #
    #   * `DISABLED`: S3 build logs are not enabled for this build project.
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
    # @!attribute [rw] bucket_owner_access
    #   Specifies the bucket owner's access for objects that another
    #   account uploads to their Amazon S3 bucket. By default, only the
    #   account that uploads the objects to the bucket has access to these
    #   objects. This property allows you to give the bucket owner access to
    #   these objects.
    #
    #   <note markdown="1"> To use this property, your CodeBuild service role must have the
    #   `s3:PutBucketAcl` permission. This permission allows CodeBuild to
    #   modify the access control list for the bucket.
    #
    #    </note>
    #
    #   This property can be one of the following values:
    #
    #   NONE
    #
    #   : The bucket owner does not have access to the objects. This is the
    #     default.
    #
    #   READ\_ONLY
    #
    #   : The bucket owner has read-only access to the objects. The
    #     uploading account retains ownership of the objects.
    #
    #   FULL
    #
    #   : The bucket owner has full access to the objects. Object ownership
    #     is determined by the following criteria:
    #
    #     * If the bucket is configured with the **Bucket owner preferred**
    #       setting, the bucket owner owns the objects. The uploading
    #       account will have object access as specified by the bucket's
    #       policy.
    #
    #     * Otherwise, the uploading account retains ownership of the
    #       objects.
    #
    #     For more information about Amazon S3 object ownership, see
    #     [Controlling ownership of uploaded objects using S3 Object
    #     Ownership][1] in the *Amazon Simple Storage Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/S3LogsConfig AWS API Documentation
    #
    class S3LogsConfig < Struct.new(
      :status,
      :location,
      :encryption_disabled,
      :bucket_owner_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the S3 bucket where the raw data of a report are
    # exported.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket where the raw data of a report are
    #   exported.
    #   @return [String]
    #
    # @!attribute [rw] bucket_owner
    #   The Amazon Web Services account identifier of the owner of the
    #   Amazon S3 bucket. This allows report data to be exported to an
    #   Amazon S3 bucket that is owned by an account other than the account
    #   running the build.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the exported report's raw data results.
    #   @return [String]
    #
    # @!attribute [rw] packaging
    #   The type of build output artifact to create. Valid values include:
    #
    #   * `NONE`: CodeBuild creates the raw data in the output bucket. This
    #     is the default if packaging is not specified.
    #
    #   * `ZIP`: CodeBuild creates a ZIP file with the raw data in the
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
      :bucket_owner,
      :path,
      :packaging,
      :encryption_key,
      :encryption_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scaling configuration input of a compute fleet.
    #
    # @!attribute [rw] scaling_type
    #   The scaling type for a compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_scaling_configs
    #   A list of `TargetTrackingScalingConfiguration` objects.
    #   @return [Array<Types::TargetTrackingScalingConfiguration>]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of instances in the ﬂeet when auto-scaling.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ScalingConfigurationInput AWS API Documentation
    #
    class ScalingConfigurationInput < Struct.new(
      :scaling_type,
      :target_tracking_scaling_configs,
      :max_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scaling configuration output of a compute fleet.
    #
    # @!attribute [rw] scaling_type
    #   The scaling type for a compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] target_tracking_scaling_configs
    #   A list of `TargetTrackingScalingConfiguration` objects.
    #   @return [Array<Types::TargetTrackingScalingConfiguration>]
    #
    # @!attribute [rw] max_capacity
    #   The maximum number of instances in the ﬂeet when auto-scaling.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_capacity
    #   The desired number of instances in the ﬂeet when auto-scaling.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ScalingConfigurationOutput AWS API Documentation
    #
    class ScalingConfigurationOutput < Struct.new(
      :scaling_type,
      :target_tracking_scaling_configs,
      :max_capacity,
      :desired_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains configuration information about the scope for a webhook.
    #
    # @!attribute [rw] name
    #   The name of either the group, enterprise, or organization that will
    #   send webhook events to CodeBuild, depending on the type of webhook.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain of the GitHub Enterprise organization or the GitLab Self
    #   Managed group. Note that this parameter is only required if your
    #   project's source type is GITHUB\_ENTERPRISE or
    #   GITLAB\_SELF\_MANAGED.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The type of scope for a GitHub or GitLab webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ScopeConfiguration AWS API Documentation
    #
    class ScopeConfiguration < Struct.new(
      :name,
      :domain,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the authorization settings for CodeBuild to access
    # the source code to be built.
    #
    # @!attribute [rw] type
    #   The authorization type to use. Valid options are OAUTH,
    #   CODECONNECTIONS, or SECRETS\_MANAGER.
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

    # Information about the credentials for a GitHub, GitHub Enterprise,
    # GitLab, GitLab Self Managed, or Bitbucket repository.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the token.
    #   @return [String]
    #
    # @!attribute [rw] server_type
    #   The type of source provider. The valid options are GITHUB,
    #   GITHUB\_ENTERPRISE, GITLAB, GITLAB\_SELF\_MANAGED, or BITBUCKET.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication used by the credentials. Valid options
    #   are OAUTH, BASIC\_AUTH, PERSONAL\_ACCESS\_TOKEN, CODECONNECTIONS, or
    #   SECRETS\_MANAGER.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The connection ARN if your authType is CODECONNECTIONS or
    #   SECRETS\_MANAGER.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/SourceCredentialsInfo AWS API Documentation
    #
    class SourceCredentialsInfo < Struct.new(
      :arn,
      :server_type,
      :auth_type,
      :resource)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   CodeCommit
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
    #   Amazon S3
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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
    #   the path to an S3 bucket. The bucket must be in the same Amazon Web
    #   Services Region as the build project. Specify the buildspec file
    #   using its ARN (for example,
    #   `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this value is
    #   not provided or is set to an empty string, the source code must
    #   contain a buildspec file in its root directory. For more
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
    #   The Key Management Service customer master key (CMK) that overrides
    #   the one specified in the batch build project. The CMK key encrypts
    #   the build output artifacts.
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
    #   change a parameter, CodeBuild returns a parameter mismatch error.
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
    #   The type of credentials CodeBuild uses to pull images in your batch
    #   build. There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that CodeBuild uses your build project's service role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an CodeBuild curated image,
    #   you must use `CODEBUILD` credentials.
    #   @return [String]
    #
    # @!attribute [rw] build_batch_config_override
    #   A `BuildBatchConfigOverride` object that contains batch build
    #   configuration overrides.
    #   @return [Types::ProjectBuildBatchConfig]
    #
    # @!attribute [rw] debug_session_enabled
    #   Specifies if session debugging is enabled for this batch build. For
    #   more information, see [Viewing a running build in Session
    #   Manager][1]. Batch session debugging is not supported for matrix
    #   batch builds.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html
    #   @return [Boolean]
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
      :build_batch_config_override,
      :debug_session_enabled)
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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild build project to start running a build.
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
    #   CodeCommit
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
    #   GitLab
    #
    #   : The commit ID, branch, or Git tag to use.
    #
    #   Bitbucket
    #
    #   : The commit ID, branch name, or tag name that corresponds to the
    #     version of the source code you want to build. If a branch name is
    #     specified, the branch's HEAD commit ID is used. If not specified,
    #     the default branch's HEAD commit ID is used.
    #
    #   Amazon S3
    #
    #   : The version ID of the object that represents the build input ZIP
    #     file to use.
    #
    #   If `sourceVersion` is specified at the project level, then this
    #   `sourceVersion` (at the build level) takes precedence.
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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
    #   project's source is BitBucket, GitHub, GitLab, or GitLab Self
    #   Managed.
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
    #   an CodeBuild build project.
    #   @return [Types::GitSubmodulesConfig]
    #
    # @!attribute [rw] buildspec_override
    #   A buildspec file declaration that overrides the latest one defined
    #   in the build project, for this build only. The buildspec defined on
    #   the project is not changed.
    #
    #   If this value is set, it can be either an inline buildspec
    #   definition, the path to an alternate buildspec file relative to the
    #   value of the built-in `CODEBUILD_SRC_DIR` environment variable, or
    #   the path to an S3 bucket. The bucket must be in the same Amazon Web
    #   Services Region as the build project. Specify the buildspec file
    #   using its ARN (for example,
    #   `arn:aws:s3:::my-codebuild-sample2/buildspec.yml`). If this value is
    #   not provided or is set to an empty string, the source code must
    #   contain a buildspec file in its root directory. For more
    #   information, see [Buildspec File Name and Storage Location][1].
    #
    #   <note markdown="1"> Since this property allows you to change the build commands that
    #   will run in the container, you should note that an IAM principal
    #   with the ability to call this API and set this parameter can
    #   override the default settings. Moreover, we encourage that you use a
    #   trustworthy buildspec location like a file in your source repository
    #   or a Amazon S3 bucket.
    #
    #    </note>
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
    #   provider other than GitHub, GitHub Enterprise, GitLab, GitLab Self
    #   Managed, or Bitbucket, an `invalidInputException` is thrown.
    #
    #   To be able to report the build status to the source provider, the
    #   user associated with the source provider must have write access to
    #   the repo. If the user does not have write access, the build status
    #   cannot be updated. For more information, see [Source provider
    #   access][1] in the *CodeBuild User Guide*.
    #
    #   <note markdown="1"> The status of a build triggered by a webhook is always reported to
    #   your source provider.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html
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
    #   The number of build timeout minutes, from 5 to 2160 (36 hours), that
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
    #   The Key Management Service customer master key (CMK) that overrides
    #   the one specified in the build project. The CMK key encrypts the
    #   build output artifacts.
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
    #   StartBuild request with the same token, but change a parameter,
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
    #   The type of credentials CodeBuild uses to pull images in your build.
    #   There are two valid values:
    #
    #   CODEBUILD
    #
    #   : Specifies that CodeBuild uses its own credentials. This requires
    #     that you modify your ECR repository policy to trust CodeBuild's
    #     service principal.
    #
    #   SERVICE\_ROLE
    #
    #   : Specifies that CodeBuild uses your build project's service role.
    #
    #   When using a cross-account or private registry image, you must use
    #   `SERVICE_ROLE` credentials. When using an CodeBuild curated image,
    #   you must use `CODEBUILD` credentials.
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
    # @!attribute [rw] fleet_override
    #   A ProjectFleet object specified for this build that overrides the
    #   one defined in the build project.
    #   @return [Types::ProjectFleet]
    #
    # @!attribute [rw] auto_retry_limit_override
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #   @return [Integer]
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
      :debug_session_enabled,
      :fleet_override,
      :auto_retry_limit_override)
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
    # This tag is available for use by Amazon Web Services services that
    # support tags in CodeBuild.
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

    # Defines when a new instance is auto-scaled into the compute fleet.
    #
    # @!attribute [rw] metric_type
    #   The metric type to determine auto-scaling.
    #   @return [String]
    #
    # @!attribute [rw] target_value
    #   The value of `metricType` when to start scaling.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/TargetTrackingScalingConfiguration AWS API Documentation
    #
    class TargetTrackingScalingConfiguration < Struct.new(
      :metric_type,
      :target_value)
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

    # @!attribute [rw] arn
    #   The ARN of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] base_capacity
    #   The initial number of machines allocated to the compute ﬂeet, which
    #   deﬁnes the number of builds that can run in parallel.
    #   @return [Integer]
    #
    # @!attribute [rw] environment_type
    #   The environment type of the compute fleet.
    #
    #   * The environment type `ARM_CONTAINER` is available only in regions
    #     US East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia
    #     Pacific (Singapore), Asia Pacific (Sydney), EU (Frankfurt), and
    #     South America (São Paulo).
    #
    #   * The environment type `ARM_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `LINUX_GPU_CONTAINER` is available only in
    #     regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #     EU (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia
    #     Pacific (Sydney).
    #
    #   * The environment type `MAC_ARM` is available for Medium fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), and EU (Frankfurt)
    #
    #   * The environment type `MAC_ARM` is available for Large fleets only
    #     in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), and Asia Pacific (Sydney).
    #
    #   * The environment type `WINDOWS_EC2` is available only in regions US
    #     East (N. Virginia), US East (Ohio), US West (Oregon), EU
    #     (Ireland), EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific
    #     (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #     Asia Pacific (Mumbai).
    #
    #   * The environment type `WINDOWS_SERVER_2019_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia
    #     Pacific (Mumbai) and EU (Ireland).
    #
    #   * The environment type `WINDOWS_SERVER_2022_CONTAINER` is available
    #     only in regions US East (N. Virginia), US East (Ohio), US West
    #     (Oregon), EU (Ireland), EU (Frankfurt), Asia Pacific (Sydney),
    #     Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São
    #     Paulo) and Asia Pacific (Mumbai).
    #
    #   For more information, see [Build environment compute types][1] in
    #   the *CodeBuild user guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the compute fleet uses.
    #   Available values include:
    #
    #   * `ATTRIBUTE_BASED_COMPUTE`: Specify the amount of vCPUs, memory,
    #     disk space, and the type of machine.
    #
    #     <note markdown="1"> If you use `ATTRIBUTE_BASED_COMPUTE`, you must define your
    #     attributes by using `computeConfiguration`. CodeBuild will select
    #     the cheapest instance that satisfies your specified attributes.
    #     For more information, see [Reserved capacity environment types][1]
    #     in the *CodeBuild User Guide*.
    #
    #      </note>
    #
    #   * `BUILD_GENERAL1_SMALL`: Use up to 4 GiB memory and 2 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_MEDIUM`: Use up to 8 GiB memory and 4 vCPUs for
    #     builds.
    #
    #   * `BUILD_GENERAL1_LARGE`: Use up to 16 GiB memory and 8 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_XLARGE`: Use up to 72 GiB memory and 36 vCPUs for
    #     builds, depending on your environment type.
    #
    #   * `BUILD_GENERAL1_2XLARGE`: Use up to 144 GiB memory, 72 vCPUs, and
    #     824 GB of SSD storage for builds. This compute type supports
    #     Docker images up to 100 GB uncompressed.
    #
    #   * `BUILD_LAMBDA_1GB`: Use up to 1 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_2GB`: Use up to 2 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_4GB`: Use up to 4 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_8GB`: Use up to 8 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   * `BUILD_LAMBDA_10GB`: Use up to 10 GiB memory for builds. Only
    #     available for environment type `LINUX_LAMBDA_CONTAINER` and
    #     `ARM_LAMBDA_CONTAINER`.
    #
    #   If you use `BUILD_GENERAL1_SMALL`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 16
    #     GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 4 GiB
    #     memory and 2 vCPUs on ARM-based processors for builds.
    #
    #   If you use `BUILD_GENERAL1_LARGE`:
    #
    #   * For environment type `LINUX_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs for builds.
    #
    #   * For environment type `LINUX_GPU_CONTAINER`, you can use up to 255
    #     GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.
    #
    #   * For environment type `ARM_CONTAINER`, you can use up to 16 GiB
    #     memory and 8 vCPUs on ARM-based processors for builds.
    #
    #   For more information, see [On-demand environment types][2] in the
    #   *CodeBuild User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types
    #   [2]: https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types
    #   @return [String]
    #
    # @!attribute [rw] compute_configuration
    #   The compute configuration of the compute fleet. This is only
    #   required if `computeType` is set to `ATTRIBUTE_BASED_COMPUTE`.
    #   @return [Types::ComputeConfiguration]
    #
    # @!attribute [rw] scaling_configuration
    #   The scaling configuration of the compute fleet.
    #   @return [Types::ScalingConfigurationInput]
    #
    # @!attribute [rw] overflow_behavior
    #   The compute fleet overflow behavior.
    #
    #   * For overflow behavior `QUEUE`, your overflow builds need to wait
    #     on the existing fleet instance to become available.
    #
    #   * For overflow behavior `ON_DEMAND`, your overflow builds run on
    #     CodeBuild on-demand.
    #
    #     <note markdown="1"> If you choose to set your overflow behavior to on-demand while
    #     creating a VPC-connected fleet, make sure that you add the
    #     required VPC permissions to your project service role. For more
    #     information, see [Example policy statement to allow CodeBuild
    #     access to Amazon Web Services services required to create a VPC
    #     network interface][1].
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Information about the VPC configuration that CodeBuild accesses.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] proxy_configuration
    #   The proxy configuration of the compute fleet.
    #   @return [Types::ProxyConfiguration]
    #
    # @!attribute [rw] image_id
    #   The Amazon Machine Image (AMI) of the compute fleet.
    #   @return [String]
    #
    # @!attribute [rw] fleet_service_role
    #   The service role associated with the compute fleet. For more
    #   information, see [ Allow a user to add a permission policy for a
    #   fleet service role][1] in the *CodeBuild User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with this compute
    #   fleet.
    #
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateFleetInput AWS API Documentation
    #
    class UpdateFleetInput < Struct.new(
      :arn,
      :base_capacity,
      :environment_type,
      :compute_type,
      :compute_configuration,
      :scaling_configuration,
      :overflow_behavior,
      :vpc_config,
      :proxy_configuration,
      :image_id,
      :fleet_service_role,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet
    #   A `Fleet` object.
    #   @return [Types::Fleet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateFleetOutput AWS API Documentation
    #
    class UpdateFleetOutput < Struct.new(
      :fleet)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   * For CodeCommit: the commit ID, branch, or Git tag to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID is used. If not
    #     specified, the default branch's HEAD commit ID is used.
    #
    #   * For GitLab: the commit ID, branch, or Git tag to use.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID is
    #     used. If not specified, the default branch's HEAD commit ID is
    #     used.
    #
    #   * For Amazon S3: the version ID of the object that represents the
    #     build input ZIP file to use.
    #
    #   If `sourceVersion` is specified at the build level, then that
    #   version takes precedence over this `sourceVersion` (at the project
    #   level).
    #
    #   For more information, see [Source Version Sample with CodeBuild][1]
    #   in the *CodeBuild User Guide*.
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
    #   An array of `ProjectArtifact` objects.
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
    #   The replacement ARN of the IAM role that enables CodeBuild to
    #   interact with dependent Amazon Web Services services on behalf of
    #   the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The replacement value in minutes, from 5 to 2160 (36 hours), for
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
    #   The Key Management Service customer master key (CMK) to be used for
    #   encrypting the build output artifacts.
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
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_config
    #   VpcConfig enables CodeBuild to access resources in an Amazon VPC.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] badge_enabled
    #   Set this to true to generate a publicly accessible URL for your
    #   project's build badge.
    #   @return [Boolean]
    #
    # @!attribute [rw] logs_config
    #   Information about logs for the build project. A project can create
    #   logs in CloudWatch Logs, logs in an S3 bucket, or both.
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
    # @!attribute [rw] concurrent_build_limit
    #   The maximum number of concurrent builds that are allowed for this
    #   project.
    #
    #   New builds are only started if the current number of builds is less
    #   than or equal to this limit. If the current build count meets this
    #   limit, new builds are throttled and are not run.
    #
    #   To remove this limit, set this value to -1.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_retry_limit
    #   The maximum number of additional automatic retries after a failed
    #   build. For example, if the auto-retry limit is set to 2, CodeBuild
    #   will call the `RetryBuild` API to automatically retry your build for
    #   up to 2 additional times.
    #   @return [Integer]
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
      :build_batch_config,
      :concurrent_build_limit,
      :auto_retry_limit)
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

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the build project.
    #   @return [String]
    #
    # @!attribute [rw] project_visibility
    #   Specifies the visibility of the project's builds. Possible values
    #   are:
    #
    #   PUBLIC\_READ
    #
    #   : The project builds are visible to the public.
    #
    #   PRIVATE
    #
    #   : The project builds are not visible to the public.
    #   @return [String]
    #
    # @!attribute [rw] resource_access_role
    #   The ARN of the IAM role that enables CodeBuild to access the
    #   CloudWatch Logs and Amazon S3 artifacts for the project's builds.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectVisibilityInput AWS API Documentation
    #
    class UpdateProjectVisibilityInput < Struct.new(
      :project_arn,
      :project_visibility,
      :resource_access_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the build project.
    #   @return [String]
    #
    # @!attribute [rw] public_project_alias
    #   Contains the project identifier used with the public build APIs.
    #   @return [String]
    #
    # @!attribute [rw] project_visibility
    #   Specifies the visibility of the project's builds. Possible values
    #   are:
    #
    #   PUBLIC\_READ
    #
    #   : The project builds are visible to the public.
    #
    #   PRIVATE
    #
    #   : The project builds are not visible to the public.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectVisibilityOutput AWS API Documentation
    #
    class UpdateProjectVisibilityOutput < Struct.new(
      :project_arn,
      :public_project_alias,
      :project_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the report group to update.
    #   @return [String]
    #
    # @!attribute [rw] export_config
    #   Used to specify an updated export type. Valid values are:
    #
    #   * `S3`: The report results are exported to an S3 bucket.
    #
    #   * `NO_EXPORT`: The report results are not exported.
    #   @return [Types::ReportExportConfig]
    #
    # @!attribute [rw] tags
    #   An updated list of tag key and value pairs associated with this
    #   report group.
    #
    #   These tags are available for use by Amazon Web Services services
    #   that support CodeBuild report group tags.
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

    # @!attribute [rw] project_name
    #   The name of the CodeBuild project.
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
    #   project in CodeBuild.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateWebhookOutput AWS API Documentation
    #
    class UpdateWebhookOutput < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the VPC configuration that CodeBuild accesses.
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
    # project in CodeBuild.
    #
    # @!attribute [rw] url
    #   The URL to the webhook.
    #   @return [String]
    #
    # @!attribute [rw] payload_url
    #   The CodeBuild endpoint where webhook events are sent.
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
    # @!attribute [rw] manual_creation
    #   If manualCreation is true, CodeBuild doesn't create a webhook in
    #   GitHub and instead returns `payloadUrl` and `secret` values for the
    #   webhook. The `payloadUrl` and `secret` values in the output can be
    #   used to manually create a webhook within GitHub.
    #
    #   <note markdown="1"> manualCreation is only available for GitHub webhooks.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] last_modified_secret
    #   A timestamp that indicates the last time a repository's secret
    #   token was modified.
    #   @return [Time]
    #
    # @!attribute [rw] scope_configuration
    #   The scope configuration for global or organization webhooks.
    #
    #   <note markdown="1"> Global or organization webhooks are only available for GitHub and
    #   Github Enterprise webhooks.
    #
    #    </note>
    #   @return [Types::ScopeConfiguration]
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
      :manual_creation,
      :last_modified_secret,
      :scope_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to determine which webhooks trigger a build.
    #
    # @!attribute [rw] type
    #   The type of webhook filter. There are nine webhook filter types:
    #   `EVENT`, `ACTOR_ACCOUNT_ID`, `HEAD_REF`, `BASE_REF`, `FILE_PATH`,
    #   `COMMIT_MESSAGE`, `TAG_NAME`, `RELEASE_NAME`, and `WORKFLOW_NAME`.
    #
    #   * EVENT
    #
    #     * A webhook event triggers a build when the provided `pattern`
    #       matches one of nine event types: `PUSH`, `PULL_REQUEST_CREATED`,
    #       `PULL_REQUEST_UPDATED`, `PULL_REQUEST_CLOSED`,
    #       `PULL_REQUEST_REOPENED`, `PULL_REQUEST_MERGED`, `RELEASED`,
    #       `PRERELEASED`, and `WORKFLOW_JOB_QUEUED`. The `EVENT` patterns
    #       are specified as a comma-separated string. For example, `PUSH,
    #       PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED` filters all push,
    #       pull request created, and pull request updated events.
    #
    #       <note markdown="1"> Types `PULL_REQUEST_REOPENED` and `WORKFLOW_JOB_QUEUED` work
    #       with GitHub and GitHub Enterprise only. Types `RELEASED` and
    #       `PRERELEASED` work with GitHub only.
    #
    #        </note>
    #   * ACTOR\_ACCOUNT\_ID
    #
    #     * A webhook event triggers a build when a GitHub, GitHub
    #       Enterprise, or Bitbucket account ID matches the regular
    #       expression `pattern`.
    #
    #     ^
    #   * HEAD\_REF
    #
    #     * A webhook event triggers a build when the head reference matches
    #       the regular expression `pattern`. For example,
    #       `refs/heads/branch-name` and `refs/tags/tag-name`.
    #
    #       <note markdown="1"> Works with GitHub and GitHub Enterprise push, GitHub and GitHub
    #       Enterprise pull request, Bitbucket push, and Bitbucket pull
    #       request events.
    #
    #        </note>
    #   * BASE\_REF
    #
    #     * A webhook event triggers a build when the base reference matches
    #       the regular expression `pattern`. For example,
    #       `refs/heads/branch-name`.
    #
    #       <note markdown="1"> Works with pull request events only.
    #
    #        </note>
    #   * FILE\_PATH
    #
    #     * A webhook triggers a build when the path of a changed file
    #       matches the regular expression `pattern`.
    #
    #       <note markdown="1"> Works with GitHub and Bitbucket events push and pull requests
    #       events. Also works with GitHub Enterprise push events, but does
    #       not work with GitHub Enterprise pull request events.
    #
    #        </note>
    #   * COMMIT\_MESSAGE
    #
    #     * A webhook triggers a build when the head commit message matches
    #       the regular expression `pattern`.
    #
    #       <note markdown="1"> Works with GitHub and Bitbucket events push and pull requests
    #       events. Also works with GitHub Enterprise push events, but does
    #       not work with GitHub Enterprise pull request events.
    #
    #        </note>
    #   * TAG\_NAME
    #
    #     * A webhook triggers a build when the tag name of the release
    #       matches the regular expression `pattern`.
    #
    #       <note markdown="1"> Works with `RELEASED` and `PRERELEASED` events only.
    #
    #        </note>
    #   * RELEASE\_NAME
    #
    #     * A webhook triggers a build when the release name matches the
    #       regular expression `pattern`.
    #
    #       <note markdown="1"> Works with `RELEASED` and `PRERELEASED` events only.
    #
    #        </note>
    #   * REPOSITORY\_NAME
    #
    #     * A webhook triggers a build when the repository name matches the
    #       regular expression pattern.
    #
    #       <note markdown="1"> Works with GitHub global or organization webhooks only.
    #
    #        </note>
    #   * WORKFLOW\_NAME
    #
    #     * A webhook triggers a build when the workflow name matches the
    #       regular expression `pattern`.
    #
    #       <note markdown="1"> Works with `WORKFLOW_JOB_QUEUED` events only.
    #
    #        </note>
    #
    #       <note markdown="1"> For CodeBuild-hosted Buildkite runner builds, WORKFLOW\_NAME
    #       filters will filter by pipeline name.
    #
    #        </note>
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

