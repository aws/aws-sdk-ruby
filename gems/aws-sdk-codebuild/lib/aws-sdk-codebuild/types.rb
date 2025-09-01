# frozen_string_literal: true

# This is generated code!

module Aws::CodeBuild
  # This module contains the types returned by client operations.
  module Types

    # <p>An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class AccountLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The CodeBuild access has been suspended for the calling Amazon Web Services account.</p>
    # @!attribute message
    #   @return [String]
    class AccountSuspendedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ArtifactNamespace
      NONE = 'NONE'
      BUILD_ID = 'BUILD_ID'
    end

    module ArtifactPackaging
      NONE = 'NONE'
      ZIP = 'ZIP'
    end

    module ArtifactsType
      CODEPIPELINE = 'CODEPIPELINE'
      S3 = 'S3'
      NO_ARTIFACTS = 'NO_ARTIFACTS'
    end

    module AuthType
      OAUTH = 'OAUTH'
      BASIC_AUTH = 'BASIC_AUTH'
      PERSONAL_ACCESS_TOKEN = 'PERSONAL_ACCESS_TOKEN'
      CODECONNECTIONS = 'CODECONNECTIONS'
      SECRETS_MANAGER = 'SECRETS_MANAGER'
    end

    # <p>Information about the auto-retry configuration for the build.</p>
    # @!attribute auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #               auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #               retry your build for up to 2 additional times.</p>
    #   @return [Integer]
    # @!attribute auto_retry_number
    #   <p>The number of times that the build has been retried. The initial build will have an auto-retry number of 0.</p>
    #   @return [Integer]
    # @!attribute next_auto_retry
    #   <p>The build ARN of the auto-retried build triggered by the current build. The next auto-retry 
    #               will be <code>null</code> for builds that don't trigger an auto-retry.</p>
    #   @return [String]
    # @!attribute previous_auto_retry
    #   <p>The build ARN of the build that triggered the current auto-retry build. The previous auto-retry will be 
    #               <code>null</code> for the initial build.</p>
    #   @return [String]
    class AutoRetryConfig < Struct.new(
      :auto_retry_limit,
      :auto_retry_number,
      :next_auto_retry,
      :previous_auto_retry,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>The IDs of the builds to delete.</p>
    #   @return [Array<String>]
    class BatchDeleteBuildsInput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute builds_deleted
    #   <p>The IDs of the builds that were successfully deleted.</p>
    #   @return [Array<String>]
    # @!attribute builds_not_deleted
    #   <p>Information about any builds that could not be successfully deleted.</p>
    #   @return [Array<Types::BuildNotDeleted>]
    class BatchDeleteBuildsOutput < Struct.new(
      :builds_deleted,
      :builds_not_deleted,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>An array that contains the batch build identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetBuildBatchesInput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build_batches
    #   <p>An array of <code>BuildBatch</code> objects that represent the retrieved batch
    #               builds.</p>
    #   @return [Array<Types::BuildBatch>]
    # @!attribute build_batches_not_found
    #   <p>An array that contains the identifiers of any batch builds that are not found.</p>
    #   @return [Array<String>]
    class BatchGetBuildBatchesOutput < Struct.new(
      :build_batches,
      :build_batches_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>The IDs of the builds.</p>
    #   @return [Array<String>]
    class BatchGetBuildsInput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute builds
    #   <p>Information about the requested builds.</p>
    #   @return [Array<Types::Build>]
    # @!attribute builds_not_found
    #   <p>The IDs of builds for which information could not be found.</p>
    #   @return [Array<String>]
    class BatchGetBuildsOutput < Struct.new(
      :builds,
      :builds_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    #   @return [String]
    # @!attribute command_execution_ids
    #   <p>A comma separated list of <code>commandExecutionIds</code>.</p>
    #   @return [Array<String>]
    class BatchGetCommandExecutionsInput < Struct.new(
      :sandbox_id,
      :command_execution_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute command_executions
    #   <p>Information about the requested command executions.</p>
    #   @return [Array<Types::CommandExecution>]
    # @!attribute command_executions_not_found
    #   <p>The IDs of command executions for which information could not be found.</p>
    #   @return [Array<String>]
    class BatchGetCommandExecutionsOutput < Struct.new(
      :command_executions,
      :command_executions_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names or ARNs of the compute fleets.</p>
    #   @return [Array<String>]
    class BatchGetFleetsInput < Struct.new(
      :names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleets
    #   <p>Information about the requested compute fleets.</p>
    #   @return [Array<Types::Fleet>]
    # @!attribute fleets_not_found
    #   <p>The names of compute fleets for which information could not be found.</p>
    #   @return [Array<String>]
    class BatchGetFleetsOutput < Struct.new(
      :fleets,
      :fleets_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute names
    #   <p>The names or ARNs of the build projects. To get information about a project shared
    #               with your Amazon Web Services account, its ARN must be specified. You cannot specify a shared project
    #               using its name.</p>
    #   @return [Array<String>]
    class BatchGetProjectsInput < Struct.new(
      :names,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute projects
    #   <p>Information about the requested build projects.</p>
    #   @return [Array<Types::Project>]
    # @!attribute projects_not_found
    #   <p>The names of build projects for which information could not be found.</p>
    #   @return [Array<String>]
    class BatchGetProjectsOutput < Struct.new(
      :projects,
      :projects_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_group_arns
    #   <p>
    #         An array of report group ARNs that identify the report groups to return.
    #       </p>
    #   @return [Array<String>]
    class BatchGetReportGroupsInput < Struct.new(
      :report_group_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_groups
    #   <p>
    #         The array of report groups returned by <code>BatchGetReportGroups</code>.
    #       </p>
    #   @return [Array<Types::ReportGroup>]
    # @!attribute report_groups_not_found
    #   <p>
    #         An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>ReportGroup</code>.
    #       </p>
    #   @return [Array<String>]
    class BatchGetReportGroupsOutput < Struct.new(
      :report_groups,
      :report_groups_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_arns
    #   <p>
    #         An array of ARNs that identify the <code>Report</code> objects to return.
    #       </p>
    #   @return [Array<String>]
    class BatchGetReportsInput < Struct.new(
      :report_arns,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reports
    #   <p>
    #         The array of <code>Report</code> objects returned by <code>BatchGetReports</code>.
    #       </p>
    #   @return [Array<Types::Report>]
    # @!attribute reports_not_found
    #   <p>
    #         An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>Report</code>.
    #       </p>
    #   @return [Array<String>]
    class BatchGetReportsOutput < Struct.new(
      :reports,
      :reports_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A comma separated list of <code>sandboxIds</code> or <code>sandboxArns</code>.</p>
    #   @return [Array<String>]
    class BatchGetSandboxesInput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandboxes
    #   <p>Information about the requested sandboxes.</p>
    #   @return [Array<Types::Sandbox>]
    # @!attribute sandboxes_not_found
    #   <p>The IDs of sandboxes for which information could not be found.</p>
    #   @return [Array<String>]
    class BatchGetSandboxesOutput < Struct.new(
      :sandboxes,
      :sandboxes_not_found,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BatchReportModeType
      REPORT_INDIVIDUAL_BUILDS = 'REPORT_INDIVIDUAL_BUILDS'
      REPORT_AGGREGATED_BATCH = 'REPORT_AGGREGATED_BATCH'
    end

    # <p>Specifies restrictions for the batch build.</p>
    # @!attribute maximum_builds_allowed
    #   <p>Specifies the maximum number of builds allowed.</p>
    #   @return [Integer]
    # @!attribute compute_types_allowed
    #   <p>An array of strings that specify the compute types that are allowed for the batch
    #               build. See <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment
    #                   compute types</a> in the <i>CodeBuild User Guide</i> for these values.
    #           </p>
    #   @return [Array<String>]
    # @!attribute fleets_allowed
    #   <p>An array of strings that specify the fleets that are allowed
    #               for the batch build. See <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/fleets.html">Run builds on reserved capacity fleets</a> in the <i>CodeBuild User Guide</i> 
    #                   for more information. </p>
    #   @return [Array<String>]
    class BatchRestrictions < Struct.new(
      :maximum_builds_allowed,
      :compute_types_allowed,
      :fleets_allowed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the bucket owner's access for objects that another account uploads to their
    #             Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #             access to these objects. This property allows you to give the bucket owner access to
    #             these objects.</p>
    #          <note>
    #             <p>To use this property, your CodeBuild service role must have the
    #                     <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                 the access control list for the bucket.</p>
    #          </note>
    #          <p>This property can be one of the following values:</p>
    #          <dl>
    #             <dt>NONE</dt>
    #             <dd>
    #                <p>The bucket owner does not have access to the objects. This is the
    #                         default.</p>
    #             </dd>
    #             <dt>READ_ONLY</dt>
    #             <dd>
    #                <p>The bucket owner has read-only access to the objects. The uploading account
    #                         retains ownership of the objects.</p>
    #             </dd>
    #             <dt>FULL</dt>
    #             <dd>
    #                <p>The bucket owner has full access to the objects. Object ownership is determined
    #                         by the following criteria:</p>
    #                <ul>
    #                   <li>
    #                      <p>If the bucket is configured with the <b>Bucket
    #                                     owner preferred</b> setting, the bucket owner owns the
    #                                 objects. The uploading account will have object access as specified
    #                                 by the bucket's policy.</p>
    #                   </li>
    #                   <li>
    #                      <p>Otherwise, the uploading account retains ownership of the
    #                                 objects.</p>
    #                   </li>
    #                </ul>
    #                <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                             Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                         Guide</i>.</p>
    #             </dd>
    #          </dl>
    module BucketOwnerAccess
      NONE = 'NONE'
      READ_ONLY = 'READ_ONLY'
      FULL = 'FULL'
    end

    # <p>Information about a build.</p>
    # @!attribute id
    #   <p>The unique ID for the build.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the build.</p>
    #   @return [String]
    # @!attribute build_number
    #   <p>The number of the build. For each project, the <code>buildNumber</code> of its first
    #               build is <code>1</code>. The <code>buildNumber</code> of each subsequent build is
    #               incremented by <code>1</code>. If a build is deleted, the <code>buildNumber</code> of
    #               other builds does not change.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>When the build process started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the build process ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute current_phase
    #   <p>The current build phase.</p>
    #   @return [String]
    # @!attribute build_status
    #   <p>The current status of the build. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The build failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAULT</code>: The build faulted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The build is still in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The build stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The build succeeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMED_OUT</code>: The build timed out.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_version
    #   <p>Any version identifier for the version of the source code to be built. If
    #                   <code>sourceVersion</code> is specified at the project level, then this
    #                   <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #   @return [String]
    # @!attribute resolved_source_version
    #   <p> An identifier for the version of this build's source code. </p>
    #            <ul>
    #               <li>
    #                  <p> For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID. </p>
    #               </li>
    #               <li>
    #                  <p> For CodePipeline, the source revision provided by CodePipeline. </p>
    #               </li>
    #               <li>
    #                  <p> For Amazon S3, this does not apply. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #   @return [String]
    # @!attribute phases
    #   <p>Information about all previous build phases that are complete and information about
    #               any current build phase that is not yet complete.</p>
    #   @return [Array<Types::BuildPhase>]
    # @!attribute source
    #   <p>Information about the source code to be built.</p>
    #   @return [Types::ProjectSource]
    # @!attribute secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. Each
    #                   <code>ProjectSourceVersion</code> must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #                       corresponds to the version of the source code you want to build. If a pull
    #                       request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #                       (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #                       HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #                       used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #                       version of the source code you want to build. If a branch name is specified, the
    #                       branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                       commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #                       file to use.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute artifacts
    #   <p>Information about the output artifacts for the build.</p>
    #   @return [Types::BuildArtifacts]
    # @!attribute secondary_artifacts
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    #   @return [Array<Types::BuildArtifacts>]
    # @!attribute cache
    #   <p>Information about the cache for the build.</p>
    #   @return [Types::ProjectCache]
    # @!attribute environment
    #   <p>Information about the build environment for this build.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute service_role
    #   <p>The name of a service role used for this build.</p>
    #   @return [String]
    # @!attribute logs
    #   <p>Information about the build's logs in CloudWatch Logs.</p>
    #   @return [Types::LogsLocation]
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before timing out this build if it does not
    #               get marked as completed.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute build_complete
    #   <p>Whether the build is complete. True if complete; otherwise, false.</p>
    #   @return [Boolean]
    # @!attribute initiator
    #   <p>The entity that started the build. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>If CodePipeline started the build, the pipeline's name (for example,
    #                           <code>codepipeline/my-demo-pipeline</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If a user started the build, the user's name (for example,
    #                           <code>MyUserName</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If the Jenkins plugin for CodeBuild started the build, the string
    #                           <code>CodeBuild-Jenkins-Plugin</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>If your CodeBuild project accesses resources in an Amazon VPC, you provide this parameter
    #               that identifies the VPC ID and the list of security group IDs and subnet IDs. The
    #               security groups and subnets must belong to the same VPC. You must provide at least one
    #               security group and one subnet ID.</p>
    #   @return [Types::VpcConfig]
    # @!attribute network_interface
    #   <p>Describes a network interface.</p>
    #   @return [Types::NetworkInterface]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #               artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #   @return [String]
    # @!attribute exported_environment_variables
    #   <p>A list of exported environment variables for this build.</p>
    #            <p>Exported environment variables are used in conjunction with CodePipeline to export
    #     environment variables from the current build stage to subsequent stages in the pipeline.
    #     For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html">Working with variables</a> in the <i>CodePipeline User Guide</i>.</p>
    #   @return [Array<Types::ExportedEnvironmentVariable>]
    # @!attribute report_arns
    #   <p> An array of the ARNs associated with this build's reports. </p>
    #   @return [Array<String>]
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute debug_session
    #   <p>Contains information about the debug session for this build.</p>
    #   @return [Types::DebugSession]
    # @!attribute build_batch_arn
    #   <p>The ARN of the batch build that this build is a member of, if applicable.</p>
    #   @return [String]
    # @!attribute auto_retry_config
    #   <p>Information about the auto-retry configuration for the build.</p>
    #   @return [Types::AutoRetryConfig]
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
      :auto_retry_config,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:build_complete] = false unless options.key?(:build_complete)
        super
      end
    end

    # <p>Information about build output artifacts.</p>
    # @!attribute location
    #   <p>Information about the location of the build artifacts.</p>
    #   @return [String]
    # @!attribute sha256sum
    #   <p>The SHA-256 hash of the build artifact.</p>
    #            <p>You can use this hash along with a checksum tool to confirm file integrity and
    #               authenticity.</p>
    #            <note>
    #               <p>This value is available only if the build project's <code>packaging</code> value
    #                   is set to <code>ZIP</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute md5sum
    #   <p>The MD5 hash of the build artifact.</p>
    #            <p>You can use this hash along with a checksum tool to confirm file integrity and
    #               authenticity.</p>
    #            <note>
    #               <p>This value is available only if the build project's <code>packaging</code> value
    #                   is set to <code>ZIP</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute override_artifact_name
    #   <p> If this flag is set, a name specified in the buildspec file overrides the artifact
    #               name. The name specified in a buildspec file is calculated at build time and uses the
    #               Shell Command Language. For example, you can append a date and time to your artifact
    #               name so that it is always unique. </p>
    #   @return [Boolean]
    # @!attribute encryption_disabled
    #   <p> Information that tells you if encryption for build artifacts is disabled. </p>
    #   @return [Boolean]
    # @!attribute artifact_identifier
    #   <p> An identifier for this artifact definition. </p>
    #   @return [String]
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #            <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #            </note>
    #            <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                  <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                  <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                  <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                     </li>
    #                     <li>
    #                        <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class BuildArtifacts < Struct.new(
      :location,
      :sha256sum,
      :md5sum,
      :override_artifact_name,
      :encryption_disabled,
      :artifact_identifier,
      :bucket_owner_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a batch build.</p>
    # @!attribute id
    #   <p>The identifier of the batch build.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the batch build.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The date and time that the batch build started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The date and time that the batch build ended.</p>
    #   @return [Time]
    # @!attribute current_phase
    #   <p>The current phase of the batch build.</p>
    #   @return [String]
    # @!attribute build_batch_status
    #   <p>The status of the batch build.</p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The identifier of the version of the source code to be built.</p>
    #   @return [String]
    # @!attribute resolved_source_version
    #   <p>The identifier of the resolved version of this batch build's source code.</p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.</p>
    #               </li>
    #               <li>
    #                  <p>For CodePipeline, the source revision provided by CodePipeline.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3, this does not apply.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the batch build project.</p>
    #   @return [String]
    # @!attribute phases
    #   <p>An array of <code>BuildBatchPhase</code> objects the specify the phases of the
    #               batch build.</p>
    #   @return [Array<Types::BuildBatchPhase>]
    # @!attribute source
    #   <p>Information about the build input source code for the build project.</p>
    #   @return [Types::ProjectSource]
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects that define the sources for the batch
    #               build.</p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. Each
    #                   <code>ProjectSourceVersion</code> must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute artifacts
    #   <p>A <code>BuildArtifacts</code> object the defines the build artifacts for this batch build.</p>
    #   @return [Types::BuildArtifacts]
    # @!attribute secondary_artifacts
    #   <p>An array of <code>BuildArtifacts</code> objects the define the build artifacts
    #               for this batch build.</p>
    #   @return [Array<Types::BuildArtifacts>]
    # @!attribute cache
    #   <p>Information about the cache for the build project.</p>
    #   @return [Types::ProjectCache]
    # @!attribute environment
    #   <p>Information about the build environment of the build project.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute service_role
    #   <p>The name of a service role used for builds in the batch.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p> Information about logs for a build project. These can be logs in CloudWatch Logs, built in a
    #               specified S3 bucket, or both. </p>
    #   @return [Types::LogsConfig]
    # @!attribute build_timeout_in_minutes
    #   <p>Specifies the maximum amount of time, in minutes, that the build in a batch must be
    #               completed in.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p>Specifies the amount of time, in minutes, that the batch build is allowed to be queued
    #               before it times out.</p>
    #   @return [Integer]
    # @!attribute complete
    #   <p>Indicates if the batch build is complete.</p>
    #   @return [Boolean]
    # @!attribute initiator
    #   <p>The entity that started the batch build. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>If CodePipeline started the build, the pipeline's name (for example,
    #                           <code>codepipeline/my-demo-pipeline</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If a user started the build, the user's name.</p>
    #               </li>
    #               <li>
    #                  <p>If the Jenkins plugin for CodeBuild started the build, the string
    #                           <code>CodeBuild-Jenkins-Plugin</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the batch build output
    #               artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #   @return [String]
    # @!attribute build_batch_number
    #   <p>The number of the batch build. For each project, the <code>buildBatchNumber</code> of its
    #               first batch build is <code>1</code>. The <code>buildBatchNumber</code> of each subsequent
    #               batch build is incremented by <code>1</code>. If a batch build is deleted, the
    #                   <code>buildBatchNumber</code> of other batch builds does not change.</p>
    #   @return [Integer]
    # @!attribute file_system_locations
    #   <p>An array of <code>ProjectFileSystemLocation</code> objects for the batch build
    #               project. A <code>ProjectFileSystemLocation</code> object specifies the
    #                   <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #                   <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon
    #               Elastic File System. </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    #   @return [Types::ProjectBuildBatchConfig]
    # @!attribute build_groups
    #   <p>An array of <code>BuildGroup</code> objects that define the build groups for the
    #               batch build.</p>
    #   @return [Array<Types::BuildGroup>]
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    #   @return [Boolean]
    # @!attribute report_arns
    #   <p>An array that contains the ARNs of reports created by merging reports from builds associated with this batch build.</p>
    #   @return [Array<String>]
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
      :debug_session_enabled,
      :report_arns,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:complete] = false unless options.key?(:complete)
        super
      end
    end

    # <p>Specifies filters when retrieving batch builds.</p>
    # @!attribute status
    #   <p>The status of the batch builds to retrieve. Only batch builds that have this status will
    #               be retrieved.</p>
    #   @return [String]
    class BuildBatchFilter < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a stage for a batch build.</p>
    # @!attribute phase_type
    #   <p>The name of the batch build phase. Valid values include:</p>
    #            <dl>
    #               <dt>COMBINE_ARTIFACTS</dt>
    #               <dd>
    #                  <p>Build output artifacts are being combined and uploaded to the output
    #                           location.</p>
    #               </dd>
    #               <dt>DOWNLOAD_BATCHSPEC</dt>
    #               <dd>
    #                  <p>The batch build specification is being downloaded.</p>
    #               </dd>
    #               <dt>FAILED</dt>
    #               <dd>
    #                  <p>One or more of the builds failed.</p>
    #               </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>The batch build is in progress.</p>
    #               </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                  <p>The batch build was stopped.</p>
    #               </dd>
    #               <dt>SUBMITTED</dt>
    #               <dd>
    #                  <p>The btach build has been submitted.</p>
    #               </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                  <p>The batch build succeeded.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute phase_status
    #   <p>The current status of the batch build phase. Valid values include:</p>
    #            <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                  <p>The build phase failed.</p>
    #               </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                  <p>The build phase faulted.</p>
    #               </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>The build phase is still in progress.</p>
    #               </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                  <p>The build phase stopped.</p>
    #               </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                  <p>The build phase succeeded.</p>
    #               </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                  <p>The build phase timed out.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute start_time
    #   <p>When the batch build phase started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the batch build phase ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, between the starting and ending times of the batch build's
    #           phase.</p>
    #   @return [Integer]
    # @!attribute contexts
    #   <p>Additional information about the batch build phase. Especially to help troubleshoot a
    #               failed batch build.</p>
    #   @return [Array<Types::PhaseContext>]
    class BuildBatchPhase < Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BuildBatchPhaseType
      SUBMITTED = 'SUBMITTED'
      DOWNLOAD_BATCHSPEC = 'DOWNLOAD_BATCHSPEC'
      IN_PROGRESS = 'IN_PROGRESS'
      COMBINE_ARTIFACTS = 'COMBINE_ARTIFACTS'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
      STOPPED = 'STOPPED'
    end

    # <p>Contains information about a batch build build group. Build groups are used to combine
    #             builds that can run in parallel, while still being able to set dependencies on other
    #             build groups.</p>
    # @!attribute identifier
    #   <p>Contains the identifier of the build group.</p>
    #   @return [String]
    # @!attribute depends_on
    #   <p>An array of strings that contain the identifiers of the build groups that this build
    #               group depends on.</p>
    #   @return [Array<String>]
    # @!attribute ignore_failure
    #   <p>Specifies if failures in this build group can be ignored.</p>
    #   @return [Boolean]
    # @!attribute current_build_summary
    #   <p>A <code>BuildSummary</code> object that contains a summary of the current build
    #               group.</p>
    #   @return [Types::BuildSummary]
    # @!attribute prior_build_summary_list
    #   <p>An array of <code>BuildSummary</code> objects that contain summaries of previous
    #               build groups.</p>
    #   @return [Array<Types::BuildSummary>]
    class BuildGroup < Struct.new(
      :identifier,
      :depends_on,
      :ignore_failure,
      :current_build_summary,
      :prior_build_summary_list,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:ignore_failure] = false unless options.key?(:ignore_failure)
        super
      end
    end

    # <p>Information about a build that could not be successfully deleted.</p>
    # @!attribute id
    #   <p>The ID of the build that could not be successfully deleted.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>Additional information about the build that could not be successfully deleted.</p>
    #   @return [String]
    class BuildNotDeleted < Struct.new(
      :id,
      :status_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a stage for a build.</p>
    # @!attribute phase_type
    #   <p>The name of the build phase. Valid values include:</p>
    #            <dl>
    #               <dt>BUILD</dt>
    #               <dd>
    #                  <p>Core build activities typically occur in this build phase.</p>
    #               </dd>
    #               <dt>COMPLETED</dt>
    #               <dd>
    #                  <p>The build has been completed.</p>
    #               </dd>
    #               <dt>DOWNLOAD_SOURCE</dt>
    #               <dd>
    #                  <p>Source code is being downloaded in this build phase.</p>
    #               </dd>
    #               <dt>FINALIZING</dt>
    #               <dd>
    #                  <p>The build process is completing in this build phase.</p>
    #               </dd>
    #               <dt>INSTALL</dt>
    #               <dd>
    #                  <p>Installation activities typically occur in this build phase.</p>
    #               </dd>
    #               <dt>POST_BUILD</dt>
    #               <dd>
    #                  <p>Post-build activities typically occur in this build phase.</p>
    #               </dd>
    #               <dt>PRE_BUILD</dt>
    #               <dd>
    #                  <p>Pre-build activities typically occur in this build phase.</p>
    #               </dd>
    #               <dt>PROVISIONING</dt>
    #               <dd>
    #                  <p>The build environment is being set up.</p>
    #               </dd>
    #               <dt>QUEUED</dt>
    #               <dd>
    #                  <p>The build has been submitted and is queued behind other submitted
    #                           builds.</p>
    #               </dd>
    #               <dt>SUBMITTED</dt>
    #               <dd>
    #                  <p>The build has been submitted.</p>
    #               </dd>
    #               <dt>UPLOAD_ARTIFACTS</dt>
    #               <dd>
    #                  <p>Build output artifacts are being uploaded to the output location.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute phase_status
    #   <p>The current status of the build phase. Valid values include:</p>
    #            <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                  <p>The build phase failed.</p>
    #               </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                  <p>The build phase faulted.</p>
    #               </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>The build phase is still in progress.</p>
    #               </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                  <p>The build phase stopped.</p>
    #               </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                  <p>The build phase succeeded.</p>
    #               </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                  <p>The build phase timed out.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute start_time
    #   <p>When the build phase started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the build phase ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, between the starting and ending times of the build's
    #               phase.</p>
    #   @return [Integer]
    # @!attribute contexts
    #   <p>Additional information about a build phase, especially to help troubleshoot a failed
    #               build.</p>
    #   @return [Array<Types::PhaseContext>]
    class BuildPhase < Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BuildPhaseType
      SUBMITTED = 'SUBMITTED'
      QUEUED = 'QUEUED'
      PROVISIONING = 'PROVISIONING'
      DOWNLOAD_SOURCE = 'DOWNLOAD_SOURCE'
      INSTALL = 'INSTALL'
      PRE_BUILD = 'PRE_BUILD'
      BUILD = 'BUILD'
      POST_BUILD = 'POST_BUILD'
      UPLOAD_ARTIFACTS = 'UPLOAD_ARTIFACTS'
      FINALIZING = 'FINALIZING'
      COMPLETED = 'COMPLETED'
    end

    # <p>Contains information that defines how the CodeBuild build project reports the build status
    #             to the source provider. </p>
    # @!attribute context
    #   <p>Specifies the context of the build status CodeBuild sends to the source provider. The
    #               usage of this parameter depends on the source provider.</p>
    #            <dl>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>This parameter is used for the <code>name</code> parameter in the
    #                           Bitbucket commit status. For more information, see <a href="https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build">build</a> in the Bitbucket API documentation.</p>
    #               </dd>
    #               <dt>GitHub/GitHub Enterprise Server</dt>
    #               <dd>
    #                  <p>This parameter is used for the <code>context</code> parameter in the
    #                           GitHub commit status. For more information, see <a href="https://developer.github.com/v3/repos/statuses/#create-a-commit-status">Create a commit status</a> in the GitHub developer guide.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute target_url
    #   <p>Specifies the target url of the build status CodeBuild sends to the source provider. The
    #               usage of this parameter depends on the source provider.</p>
    #            <dl>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>This parameter is used for the <code>url</code> parameter in the Bitbucket
    #                           commit status. For more information, see <a href="https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build">build</a> in the Bitbucket API documentation.</p>
    #               </dd>
    #               <dt>GitHub/GitHub Enterprise Server</dt>
    #               <dd>
    #                  <p>This parameter is used for the <code>target_url</code> parameter in the
    #                           GitHub commit status. For more information, see <a href="https://developer.github.com/v3/repos/statuses/#create-a-commit-status">Create a commit status</a> in the GitHub developer guide.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class BuildStatusConfig < Struct.new(
      :context,
      :target_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains summary information about a batch build group.</p>
    # @!attribute arn
    #   <p>The batch build ARN.</p>
    #   @return [String]
    # @!attribute requested_on
    #   <p>When the build was started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute build_status
    #   <p>The status of the build group.</p>
    #            <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                  <p>The build group failed.</p>
    #               </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                  <p>The build group faulted.</p>
    #               </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>The build group is still in progress.</p>
    #               </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                  <p>The build group stopped.</p>
    #               </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                  <p>The build group succeeded.</p>
    #               </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                  <p>The build group timed out.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute primary_artifact
    #   <p>A <code>ResolvedArtifact</code> object that represents the primary build artifacts for the
    #               build group.</p>
    #   @return [Types::ResolvedArtifact]
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ResolvedArtifact</code> objects that represents the secondary build
    #               artifacts for the build group.</p>
    #   @return [Array<Types::ResolvedArtifact>]
    class BuildSummary < Struct.new(
      :arn,
      :requested_on,
      :build_status,
      :primary_artifact,
      :secondary_artifacts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CacheMode
      LOCAL_DOCKER_LAYER_CACHE = 'LOCAL_DOCKER_LAYER_CACHE'
      LOCAL_SOURCE_CACHE = 'LOCAL_SOURCE_CACHE'
      LOCAL_CUSTOM_CACHE = 'LOCAL_CUSTOM_CACHE'
    end

    module CacheType
      NO_CACHE = 'NO_CACHE'
      S3 = 'S3'
      LOCAL = 'LOCAL'
    end

    # <p> Information about CloudWatch Logs for a build project. </p>
    # @!attribute status
    #   <p>The current status of the logs in CloudWatch Logs for a build project. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: CloudWatch Logs are enabled for this build project.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: CloudWatch Logs are not enabled for this build project.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute group_name
    #   <p> The group name of the logs in CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working
    #                   with Log Groups and Log Streams</a>. </p>
    #   @return [String]
    # @!attribute stream_name
    #   <p> The prefix of the stream name of the CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working
    #                   with Log Groups and Log Streams</a>. </p>
    #   @return [String]
    class CloudWatchLogsConfig < Struct.new(
      :status,
      :group_name,
      :stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains code coverage report information.</p>
    #          <p>Line coverage measures how many statements your tests cover. A statement is a single
    #       instruction, not including comments, conditionals, etc.</p>
    #          <p>Branch coverage determines if your tests cover every possible branch of a control
    #     structure, such as an <code>if</code> or <code>case</code> statement.</p>
    # @!attribute id
    #   <p>The identifier of the code coverage report.</p>
    #   @return [String]
    # @!attribute report_arn
    #   <p>The ARN of the report.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The path of the test report file.</p>
    #   @return [String]
    # @!attribute line_coverage_percentage
    #   <p>The percentage of lines that are covered by your tests.</p>
    #   @return [Float]
    # @!attribute lines_covered
    #   <p>The number of lines that are covered by your tests.</p>
    #   @return [Integer]
    # @!attribute lines_missed
    #   <p>The number of lines that are not covered by your tests.</p>
    #   @return [Integer]
    # @!attribute branch_coverage_percentage
    #   <p>The percentage of branches that are covered by your tests.</p>
    #   @return [Float]
    # @!attribute branches_covered
    #   <p>The number of conditional branches that are covered by your tests.</p>
    #   @return [Integer]
    # @!attribute branches_missed
    #   <p>The number of conditional branches that are not covered by your tests.</p>
    #   @return [Integer]
    # @!attribute expired
    #   <p>The date and time that the tests were run.</p>
    #   @return [Time]
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
      :expired,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a summary of a code coverage report.</p>
    #          <p>Line coverage measures how many statements your tests cover. A statement is a single
    #       instruction, not including comments, conditionals, etc.</p>
    #          <p>Branch coverage determines if your tests cover every possible branch of a control
    #     structure, such as an <code>if</code> or <code>case</code> statement.</p>
    # @!attribute line_coverage_percentage
    #   <p>The percentage of lines that are covered by your tests.</p>
    #   @return [Float]
    # @!attribute lines_covered
    #   <p>The number of lines that are covered by your tests.</p>
    #   @return [Integer]
    # @!attribute lines_missed
    #   <p>The number of lines that are not covered by your tests.</p>
    #   @return [Integer]
    # @!attribute branch_coverage_percentage
    #   <p>The percentage of branches that are covered by your tests.</p>
    #   @return [Float]
    # @!attribute branches_covered
    #   <p>The number of conditional branches that are covered by your tests.</p>
    #   @return [Integer]
    # @!attribute branches_missed
    #   <p>The number of conditional branches that are not covered by your tests.</p>
    #   @return [Integer]
    class CodeCoverageReportSummary < Struct.new(
      :line_coverage_percentage,
      :lines_covered,
      :lines_missed,
      :branch_coverage_percentage,
      :branches_covered,
      :branches_missed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains command execution information.</p>
    # @!attribute id
    #   <p>The ID of the command execution.</p>
    #   @return [String]
    # @!attribute sandbox_id
    #   <p>A <code>sandboxId</code>.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>When the command execution process was initially submitted, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>When the command execution process started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the command execution process ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the command execution.</p>
    #   @return [String]
    # @!attribute command
    #   <p>The command that needs to be executed.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The command type.</p>
    #   @return [String]
    # @!attribute exit_code
    #   <p>The exit code to return upon completion.</p>
    #   @return [String]
    # @!attribute standard_output_content
    #   <p>The text written by the command to stdout.</p>
    #   @return [String]
    # @!attribute standard_err_content
    #   <p>The text written by the command to stderr.</p>
    #   @return [String]
    # @!attribute logs
    #   <p>Information about build logs in CloudWatch Logs.</p>
    #   @return [Types::LogsLocation]
    # @!attribute sandbox_arn
    #   <p>A <code>sandboxArn</code>.</p>
    #   @return [String]
    class CommandExecution < Struct.new(
      :id,
      :sandbox_id,
      :submit_time,
      :start_time,
      :end_time,
      :status,
      :command,
      :type,
      :exit_code,
      :standard_output_content,
      :standard_err_content,
      :logs,
      :sandbox_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CommandType
      SHELL = 'SHELL'
    end

    # <p>Contains compute attributes. These attributes only need be specified when your project's or fleet's <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    # @!attribute v_cpu
    #   <p>The number of vCPUs of the instance type included in your fleet.</p>
    #   @return [Integer]
    # @!attribute memory
    #   <p>The amount of memory of the instance type included in your fleet.</p>
    #   @return [Integer]
    # @!attribute disk
    #   <p>The amount of disk space of the instance type included in your fleet.</p>
    #   @return [Integer]
    # @!attribute machine_type
    #   <p>The machine type of the instance type included in your fleet.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The EC2 instance type to be launched in your fleet.</p>
    #   @return [String]
    class ComputeConfiguration < Struct.new(
      :v_cpu,
      :memory,
      :disk,
      :machine_type,
      :instance_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ComputeType
      BUILD_GENERAL1_SMALL = 'BUILD_GENERAL1_SMALL'
      BUILD_GENERAL1_MEDIUM = 'BUILD_GENERAL1_MEDIUM'
      BUILD_GENERAL1_LARGE = 'BUILD_GENERAL1_LARGE'
      BUILD_GENERAL1_XLARGE = 'BUILD_GENERAL1_XLARGE'
      BUILD_GENERAL1_2XLARGE = 'BUILD_GENERAL1_2XLARGE'
      BUILD_LAMBDA_1GB = 'BUILD_LAMBDA_1GB'
      BUILD_LAMBDA_2GB = 'BUILD_LAMBDA_2GB'
      BUILD_LAMBDA_4GB = 'BUILD_LAMBDA_4GB'
      BUILD_LAMBDA_8GB = 'BUILD_LAMBDA_8GB'
      BUILD_LAMBDA_10GB = 'BUILD_LAMBDA_10GB'
      ATTRIBUTE_BASED_COMPUTE = 'ATTRIBUTE_BASED_COMPUTE'
      CUSTOM_INSTANCE_TYPE = 'CUSTOM_INSTANCE_TYPE'
    end

    # @!attribute name
    #   <p>The name of the compute fleet.</p>
    #   @return [String]
    # @!attribute base_capacity
    #   <p>The initial number of machines allocated to the ﬂeet, which deﬁnes the number of builds that can run in parallel.</p>
    #   @return [Integer]
    # @!attribute environment_type
    #   <p>The environment type of the compute fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia Pacific (Sydney), 
    #                       EU (Frankfurt), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>ARM_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Medium fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       and EU (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Large fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2019_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
    #                       EU (Ireland).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2022_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU (Frankfurt), 
    #                       Asia Pacific (Sydney), Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo) and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Information about the compute resources the compute fleet uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_INSTANCE_TYPE</code>: Specify the instance type for your compute fleet. For a list of supported instance types, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types">Supported instance families
    #                           </a> in the <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute compute_configuration
    #   <p>The compute configuration of the compute fleet. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute scaling_configuration
    #   <p>The scaling configuration of the compute fleet.</p>
    #   @return [Types::ScalingConfigurationInput]
    # @!attribute overflow_behavior
    #   <p>The compute fleet overflow behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>For overflow behavior <code>QUEUE</code>, your overflow builds need to wait on 
    #                       the existing fleet instance to become available.</p>
    #               </li>
    #               <li>
    #                  <p>For overflow behavior <code>ON_DEMAND</code>, your overflow builds run on CodeBuild on-demand.</p>
    #                  <note>
    #                     <p>If you choose to set your overflow behavior to on-demand while creating a VPC-connected 
    #                       fleet, make sure that you add the required VPC permissions to your project service role. For more 
    #                       information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface">Example 
    #                       policy statement to allow CodeBuild access to Amazon Web Services services required to create a VPC network interface</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute proxy_configuration
    #   <p>The proxy configuration of the compute fleet.</p>
    #   @return [Types::ProxyConfiguration]
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) of the compute fleet.</p>
    #   @return [String]
    # @!attribute fleet_service_role
    #   <p>The service role associated with the compute fleet. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html">
    #               Allow a user to add a permission policy for a fleet service role</a> in the <i>CodeBuild User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this compute fleet.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet
    #   <p>Information about the compute fleet</p>
    #   @return [Types::Fleet]
    class CreateFleetOutput < Struct.new(
      :fleet,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description that makes the build project easy to identify.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Information about the build input source code for the build project.</p>
    #   @return [Types::ProjectSource]
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute source_version
    #   <p>A version of the build input to be built for this project. If not specified, the latest
    #               version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>sourceVersion</code> is specified at the build level, then that version takes
    #               precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. 
    #       </p>
    #   @return [String]
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         precedence over these <code>secondarySourceVersions</code> (at the project level).
    #       </p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    #   @return [Types::ProjectArtifacts]
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    #   @return [Array<Types::ProjectArtifacts>]
    # @!attribute cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #           time.</p>
    #   @return [Types::ProjectCache]
    # @!attribute environment
    #   <p>Information about the build environment for the build project.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before it times out
    #         any build that has not been marked as completed. The default is 60 minutes.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #         artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #            <note>
    #               <p>If you're using compute fleets during project creation, do not provide vpcConfig.</p>
    #            </note>
    #   @return [Types::VpcConfig]
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #           badge.</p>
    #   @return [Boolean]
    # @!attribute logs_config
    #   <p>Information about logs for the build project. These can be logs in CloudWatch Logs, logs
    #         uploaded to a specified S3 bucket, or both. </p>
    #   @return [Types::LogsConfig]
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build options
    #               for the project.</p>
    #   @return [Types::ProjectBuildBatchConfig]
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit. 
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #   @return [Integer]
    # @!attribute auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #         auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #         retry your build for up to 2 additional times.</p>
    #   @return [Integer]
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
      :auto_retry_limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>Information about the build project that was created.</p>
    #   @return [Types::Project]
    class CreateProjectOutput < Struct.new(
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>
    #         The name of the report group.
    #       </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #         The type of report group.
    #       </p>
    #   @return [String]
    # @!attribute export_config
    #   <p>
    #         A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported.
    #       </p>
    #   @return [Types::ReportExportConfig]
    # @!attribute tags
    #   <p>
    #         A list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateReportGroupInput < Struct.new(
      :name,
      :type,
      :export_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_group
    #   <p>
    #         Information about the report group that was created.
    #       </p>
    #   @return [Types::ReportGroup]
    class CreateReportGroupOutput < Struct.new(
      :report_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #   @return [String]
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    #   @return [Array<Array<Types::WebhookFilter>>]
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #            <note>
    #               <p>
    #                  <code>RUNNER_BUILDKITE_BUILD</code> is only available for <code>NO_SOURCE</code> source type projects 
    #           configured for Buildkite runner builds. For more information about CodeBuild-hosted Buildkite runner builds, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html">Tutorial: Configure a CodeBuild-hosted Buildkite runner</a> in the <i>CodeBuild
    #           user guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute manual_creation
    #   <p>If manualCreation is true, CodeBuild doesn't create a webhook in GitHub and instead returns <code>payloadUrl</code> and 
    #         <code>secret</code> values for the webhook. The <code>payloadUrl</code> and <code>secret</code> values in the output can be 
    #         used to manually create a webhook within GitHub.</p>
    #            <note>
    #               <p>
    #                  <code>manualCreation</code> is only available for GitHub webhooks.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute scope_configuration
    #   <p>The scope configuration for global or organization webhooks.</p>
    #            <note>
    #               <p>Global or organization webhooks are only available for GitHub and Github Enterprise webhooks.</p>
    #            </note>
    #   @return [Types::ScopeConfiguration]
    # @!attribute pull_request_build_policy
    #   <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    #   @return [Types::PullRequestBuildPolicy]
    class CreateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :filter_groups,
      :build_type,
      :manual_creation,
      :scope_configuration,
      :pull_request_build_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute webhook
    #   <p>Information about a webhook that connects repository events to a build project in
    #         CodeBuild.</p>
    #   @return [Types::Webhook]
    class CreateWebhookOutput < Struct.new(
      :webhook,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CredentialProviderType
      SECRETS_MANAGER = 'SECRETS_MANAGER'
    end

    # <p>Contains information about the debug session for a build. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a
    #                 running build in Session Manager</a>.</p>
    # @!attribute session_enabled
    #   <p>Specifies if session debugging is enabled for this build.</p>
    #   @return [Boolean]
    # @!attribute session_target
    #   <p>Contains the identifier of the Session Manager session used for the build. To work with
    #               the paused build, you open this session to examine, control, and resume the
    #               build.</p>
    #   @return [String]
    class DebugSession < Struct.new(
      :session_enabled,
      :session_target,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the batch build to delete.</p>
    #   @return [String]
    class DeleteBuildBatchInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The status code.</p>
    #   @return [String]
    # @!attribute builds_deleted
    #   <p>An array of strings that contain the identifiers of the builds that were deleted.</p>
    #   @return [Array<String>]
    # @!attribute builds_not_deleted
    #   <p>An array of <code>BuildNotDeleted</code> objects that specify the builds that could not be
    #               deleted.</p>
    #   @return [Array<Types::BuildNotDeleted>]
    class DeleteBuildBatchOutput < Struct.new(
      :status_code,
      :builds_deleted,
      :builds_not_deleted,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the compute fleet.</p>
    #   @return [String]
    class DeleteFleetInput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteFleetOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #   @return [String]
    class DeleteProjectInput < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteProjectOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the report group to delete. </p>
    #   @return [String]
    # @!attribute delete_reports
    #   <p>If <code>true</code>, deletes any reports that belong to a report group before deleting
    #               the report group. </p>
    #            <p>If <code>false</code>, you must delete any reports in the report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html">DeleteReport</a> to delete the reports. If you call
    #         <code>DeleteReportGroup</code> for a report group that contains one or more reports,
    #               an exception is thrown. </p>
    #   @return [Boolean]
    class DeleteReportGroupInput < Struct.new(
      :arn,
      :delete_reports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteReportGroupOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the report to delete.
    #       </p>
    #   @return [String]
    class DeleteReportInput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteReportOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #   @return [String]
    class DeleteResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteResourcePolicyOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token.</p>
    #   @return [String]
    class DeleteSourceCredentialsInput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #   @return [String]
    class DeleteSourceCredentialsOutput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #   @return [String]
    class DeleteWebhookInput < Struct.new(
      :project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteWebhookOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>DescribeCodeCoverages</code>. This specifies the next item to return. To
    #               return the beginning of the list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>Specifies if the results are sorted in ascending or descending order.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>Specifies how the results are sorted. Possible values are:</p>
    #            <dl>
    #               <dt>FILE_PATH</dt>
    #               <dd>
    #                  <p>The results are sorted by file path.</p>
    #               </dd>
    #               <dt>LINE_COVERAGE_PERCENTAGE</dt>
    #               <dd>
    #                  <p>The results are sorted by the percentage of lines that are covered.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute min_line_coverage_percentage
    #   <p>The minimum line coverage percentage to report.</p>
    #   @return [Float]
    # @!attribute max_line_coverage_percentage
    #   <p>The maximum line coverage percentage to report.</p>
    #   @return [Float]
    class DescribeCodeCoveragesInput < Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      :min_line_coverage_percentage,
      :max_line_coverage_percentage,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a subsequent
    #               call to <code>DescribeCodeCoverages</code> to retrieve the next set of items.</p>
    #   @return [String]
    # @!attribute code_coverages
    #   <p>An array of <code>CodeCoverage</code> objects that contain the results.</p>
    #   @return [Array<Types::CodeCoverage>]
    class DescribeCodeCoveragesOutput < Struct.new(
      :next_token,
      :code_coverages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>TestCase</code> objects. The default value is 100.
    #       </p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>
    #         A <code>TestCaseFilter</code> object used to filter the returned reports.
    #       </p>
    #   @return [Types::TestCaseFilter]
    class DescribeTestCasesInput < Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute test_cases
    #   <p>
    #         The returned list of test cases.
    #       </p>
    #   @return [Array<Types::TestCase>]
    class DescribeTestCasesOutput < Struct.new(
      :next_token,
      :test_cases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains docker server information.</p>
    # @!attribute compute_type
    #   <p>Information about the compute resources the docker server uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       your docker server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       your docker server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       your docker server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 64 GiB memory and 32 vCPUs for
    #                       your docker server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 128 GiB memory and 64 vCPUs for
    #                       your docker server.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A list of one or more security groups IDs.</p>
    #            <note>
    #               <p>Security groups configured for Docker servers should allow ingress network traffic from the VPC configured in the project. They should allow ingress on port 9876.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>A DockerServerStatus object to use for this docker server.</p>
    #   @return [Types::DockerServerStatus]
    class DockerServer < Struct.new(
      :compute_type,
      :security_group_ids,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the status of the docker server.</p>
    # @!attribute status
    #   <p>The status of the docker server.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message associated with the status of a docker server.</p>
    #   @return [String]
    class DockerServerStatus < Struct.new(
      :status,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a Docker image that is managed by CodeBuild.</p>
    # @!attribute name
    #   <p>The name of the Docker image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Docker image.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>A list of environment image versions.</p>
    #   @return [Array<String>]
    class EnvironmentImage < Struct.new(
      :name,
      :description,
      :versions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A set of Docker images that are related by programming language and are managed by
    #             CodeBuild.</p>
    # @!attribute language
    #   <p>The programming language for the Docker images.</p>
    #   @return [String]
    # @!attribute images
    #   <p>The list of Docker images that are related by the specified programming
    #               language.</p>
    #   @return [Array<Types::EnvironmentImage>]
    class EnvironmentLanguage < Struct.new(
      :language,
      :images,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A set of Docker images that are related by platform and are managed by CodeBuild.</p>
    # @!attribute platform
    #   <p>The platform's name.</p>
    #   @return [String]
    # @!attribute languages
    #   <p>The list of programming languages that are available for the specified
    #               platform.</p>
    #   @return [Array<Types::EnvironmentLanguage>]
    class EnvironmentPlatform < Struct.new(
      :platform,
      :languages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EnvironmentType
      WINDOWS_CONTAINER = 'WINDOWS_CONTAINER'
      LINUX_CONTAINER = 'LINUX_CONTAINER'
      LINUX_GPU_CONTAINER = 'LINUX_GPU_CONTAINER'
      ARM_CONTAINER = 'ARM_CONTAINER'
      WINDOWS_SERVER_2019_CONTAINER = 'WINDOWS_SERVER_2019_CONTAINER'
      WINDOWS_SERVER_2022_CONTAINER = 'WINDOWS_SERVER_2022_CONTAINER'
      LINUX_LAMBDA_CONTAINER = 'LINUX_LAMBDA_CONTAINER'
      ARM_LAMBDA_CONTAINER = 'ARM_LAMBDA_CONTAINER'
      LINUX_EC2 = 'LINUX_EC2'
      ARM_EC2 = 'ARM_EC2'
      WINDOWS_EC2 = 'WINDOWS_EC2'
      MAC_ARM = 'MAC_ARM'
    end

    # <p>Information about an environment variable for a build project or a build.</p>
    # @!attribute name
    #   <p>The name or key of the environment variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the environment variable.</p>
    #            <important>
    #               <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to
    #                   store sensitive values, especially Amazon Web Services secret key IDs.
    #                       <code>PLAINTEXT</code> environment variables can be displayed in plain text
    #                   using the CodeBuild console and the CLI. For sensitive values, we recommend you use an
    #                   environment variable of type <code>PARAMETER_STORE</code> or
    #                       <code>SECRETS_MANAGER</code>. </p>
    #            </important>
    #   @return [String]
    # @!attribute type
    #   <p>The type of environment variable. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PARAMETER_STORE</code>: An environment variable stored in Systems Manager
    #                       Parameter Store. For environment variables of this type, specify the name of the parameter as the <code>value</code> of the 
    #                       EnvironmentVariable. The parameter value will be substituted for the name at runtime. You can also define Parameter
    #                       Store environment variables in the buildspec. To learn how to do so,
    #                       see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.parameter-store">env/parameter-store</a> in the
    #                       <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAINTEXT</code>: An environment variable in plain text format. This is
    #                       the default value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SECRETS_MANAGER</code>: An environment variable stored in Secrets Manager. For environment variables of this type, 
    #                       specify the name of the secret as the <code>value</code> of the EnvironmentVariable. The secret value will be substituted for the 
    #                       name at runtime. You can also define Secrets Manager environment variables in the buildspec. To learn how to do so, see
    #                           <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec.env.secrets-manager">env/secrets-manager</a> in the
    #                       <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class EnvironmentVariable < Struct.new(
      :name,
      :value,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EnvironmentVariableType
      PLAINTEXT = 'PLAINTEXT'
      PARAMETER_STORE = 'PARAMETER_STORE'
      SECRETS_MANAGER = 'SECRETS_MANAGER'
    end

    # <p>Contains information about an exported environment variable. </p>
    #          <p>Exported environment variables are used in conjunction with CodePipeline to export
    #   environment variables from the current build stage to subsequent stages in the pipeline.
    #   For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html">Working with variables</a> in the <i>CodePipeline User Guide</i>.</p>
    #          <note>
    #             <p> During a build, the value of a variable is available starting with the
    #                   <code>install</code> phase. It can be updated between the start of the
    #                   <code>install</code> phase and the end of the <code>post_build</code> phase.
    #               After the <code>post_build</code> phase ends, the value of exported variables cannot
    #               change.</p>
    #          </note>
    # @!attribute name
    #   <p>The name of the exported environment variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to the exported environment variable.</p>
    #   @return [String]
    class ExportedEnvironmentVariable < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FileSystemType
      EFS = 'EFS'
    end

    # <p>A set of dedicated instances for your build environment.</p>
    # @!attribute arn
    #   <p>The ARN of the compute fleet.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the compute fleet.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the compute fleet.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time at which the compute fleet was created.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The time at which the compute fleet was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the compute fleet.</p>
    #   @return [Types::FleetStatus]
    # @!attribute base_capacity
    #   <p>The initial number of machines allocated to the compute ﬂeet, which deﬁnes the number of builds that can run in parallel.</p>
    #   @return [Integer]
    # @!attribute environment_type
    #   <p>The environment type of the compute fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia Pacific (Sydney), 
    #                       EU (Frankfurt), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>ARM_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Medium fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       and EU (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Large fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2019_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
    #                       EU (Ireland).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2022_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU (Frankfurt), 
    #                       Asia Pacific (Sydney), Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo) and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Information about the compute resources the compute fleet uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_INSTANCE_TYPE</code>: Specify the instance type for your compute fleet. For a list of supported instance types, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types">Supported instance families
    #                           </a> in the <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute compute_configuration
    #   <p>The compute configuration of the compute fleet. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute scaling_configuration
    #   <p>The scaling configuration of the compute fleet.</p>
    #   @return [Types::ScalingConfigurationOutput]
    # @!attribute overflow_behavior
    #   <p>The compute fleet overflow behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>For overflow behavior <code>QUEUE</code>, your overflow builds need to wait on 
    #                       the existing fleet instance to become available.</p>
    #               </li>
    #               <li>
    #                  <p>For overflow behavior <code>ON_DEMAND</code>, your overflow builds run on CodeBuild on-demand.</p>
    #                  <note>
    #                     <p>If you choose to set your overflow behavior to on-demand while creating a VPC-connected 
    #                       fleet, make sure that you add the required VPC permissions to your project service role. For more 
    #                       information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface">Example 
    #                       policy statement to allow CodeBuild access to Amazon Web Services services required to create a VPC network interface</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute proxy_configuration
    #   <p>The proxy configuration of the compute fleet.</p>
    #   @return [Types::ProxyConfiguration]
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) of the compute fleet.</p>
    #   @return [String]
    # @!attribute fleet_service_role
    #   <p>The service role associated with the compute fleet. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html">
    #               Allow a user to add a permission policy for a fleet service role</a> in the <i>CodeBuild User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this compute fleet.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FleetContextCode
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      ACTION_REQUIRED = 'ACTION_REQUIRED'
      PENDING_DELETION = 'PENDING_DELETION'
      INSUFFICIENT_CAPACITY = 'INSUFFICIENT_CAPACITY'
    end

    module FleetOverflowBehavior
      QUEUE = 'QUEUE'
      ON_DEMAND = 'ON_DEMAND'
    end

    # <p>Information about the proxy rule for your reserved capacity instances.</p>
    # @!attribute type
    #   <p>The type of proxy rule.</p>
    #   @return [String]
    # @!attribute effect
    #   <p>The behavior of the proxy rule.</p>
    #   @return [String]
    # @!attribute entities
    #   <p>The destination of the proxy rule.</p>
    #   @return [Array<String>]
    class FleetProxyRule < Struct.new(
      :type,
      :effect,
      :entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FleetProxyRuleBehavior
      ALLOW_ALL = 'ALLOW_ALL'
      DENY_ALL = 'DENY_ALL'
    end

    module FleetProxyRuleEffectType
      ALLOW = 'ALLOW'
      DENY = 'DENY'
    end

    module FleetProxyRuleType
      DOMAIN = 'DOMAIN'
      IP = 'IP'
    end

    module FleetScalingMetricType
      FLEET_UTILIZATION_RATE = 'FLEET_UTILIZATION_RATE'
    end

    module FleetScalingType
      TARGET_TRACKING_SCALING = 'TARGET_TRACKING_SCALING'
    end

    module FleetSortByType
      NAME = 'NAME'
      CREATED_TIME = 'CREATED_TIME'
      LAST_MODIFIED_TIME = 'LAST_MODIFIED_TIME'
    end

    # <p>The status of the compute fleet.</p>
    # @!attribute status_code
    #   <p>The status code of the compute fleet. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: The compute fleet is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code>: The compute fleet is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROTATING</code>: The compute fleet is being rotated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING_DELETION</code>: The compute fleet is pending deletion.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: The compute fleet is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: The compute fleet has failed to create.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_ROLLBACK_FAILED</code>: The compute fleet has failed to update and could not rollback to previous state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>: The compute fleet has succeeded and is active.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute context
    #   <p>Additional information about a compute fleet. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: The compute fleet has failed to create.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code>: The compute fleet has failed to update.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A message associated with the status of a compute fleet.</p>
    #   @return [String]
    class FleetStatus < Struct.new(
      :status_code,
      :context,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FleetStatusCode
      CREATING = 'CREATING'
      UPDATING = 'UPDATING'
      ROTATING = 'ROTATING'
      PENDING_DELETION = 'PENDING_DELETION'
      DELETING = 'DELETING'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATE_ROLLBACK_FAILED = 'UPDATE_ROLLBACK_FAILED'
      ACTIVE = 'ACTIVE'
    end

    # @!attribute report_group_arn
    #   <p>The ARN of the report group that contains the reports to analyze.</p>
    #   @return [String]
    # @!attribute num_of_reports
    #   <p>The number of reports to analyze. This operation always retrieves the most recent
    #               reports.</p>
    #            <p>If this parameter is omitted, the most recent 100 reports are analyzed.</p>
    #   @return [Integer]
    # @!attribute trend_field
    #   <p>The test report value to accumulate. This must be one of the following values:</p>
    #            <dl>
    #               <dt>Test reports:</dt>
    #               <dd>
    #                  <dl>
    #                     <dt>DURATION</dt>
    #                     <dd>
    #                        <p>Accumulate the test run times for the specified
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>PASS_RATE</dt>
    #                     <dd>
    #                        <p>Accumulate the percentage of tests that passed for the
    #                                       specified test reports.</p>
    #                     </dd>
    #                     <dt>TOTAL</dt>
    #                     <dd>
    #                        <p>Accumulate the total number of tests for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    #            <dl>
    #               <dt>Code coverage reports:</dt>
    #               <dd>
    #                  <dl>
    #                     <dt>BRANCH_COVERAGE</dt>
    #                     <dd>
    #                        <p>Accumulate the branch coverage percentages for the specified
    #                                       test reports.</p>
    #                     </dd>
    #                     <dt>BRANCHES_COVERED</dt>
    #                     <dd>
    #                        <p>Accumulate the branches covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>BRANCHES_MISSED</dt>
    #                     <dd>
    #                        <p>Accumulate the branches missed values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>LINE_COVERAGE</dt>
    #                     <dd>
    #                        <p>Accumulate the line coverage percentages for the specified
    #                                       test reports.</p>
    #                     </dd>
    #                     <dt>LINES_COVERED</dt>
    #                     <dd>
    #                        <p>Accumulate the lines covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                     <dt>LINES_MISSED</dt>
    #                     <dd>
    #                        <p>Accumulate the lines not covered values for the specified test
    #                                       reports.</p>
    #                     </dd>
    #                  </dl>
    #               </dd>
    #            </dl>
    #   @return [String]
    class GetReportGroupTrendInput < Struct.new(
      :report_group_arn,
      :num_of_reports,
      :trend_field,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute stats
    #   <p>Contains the accumulated trend data.</p>
    #   @return [Types::ReportGroupTrendStats]
    # @!attribute raw_data
    #   <p>An array that contains the raw data for each report.</p>
    #   @return [Array<Types::ReportWithRawData>]
    class GetReportGroupTrendOutput < Struct.new(
      :stats,
      :raw_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #   @return [String]
    class GetResourcePolicyInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p> The resource policy for the resource identified by the input ARN parameter. </p>
    #   @return [String]
    class GetResourcePolicyOutput < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the Git submodules configuration for an CodeBuild build project.
    #         </p>
    # @!attribute fetch_submodules
    #   <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
    #   @return [Boolean]
    class GitSubmodulesConfig < Struct.new(
      :fetch_submodules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImagePullCredentialsType
      CODEBUILD = 'CODEBUILD'
      SERVICE_ROLE = 'SERVICE_ROLE'
    end

    # @!attribute username
    #   <p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter
    #               is not valid for other types of source providers or connections. </p>
    #   @return [String]
    # @!attribute token
    #   <p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket,
    #               this is either the access token or the app password. For the <code>authType</code> CODECONNECTIONS, 
    #               this is the <code>connectionArn</code>. For the <code>authType</code> SECRETS_MANAGER, this is the <code>secretArn</code>.</p>
    #   @return [String]
    # @!attribute server_type
    #   <p> The source provider used for this project. </p>
    #   @return [String]
    # @!attribute auth_type
    #   <p> The type of authentication used to connect to a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
    #               Bitbucket repository. An OAUTH connection is not supported by the API and must be
    #               created using the CodeBuild console.</p>
    #   @return [String]
    # @!attribute should_overwrite
    #   <p> Set to <code>false</code> to prevent overwriting the repository source credentials.
    #               Set to <code>true</code> to overwrite the repository source credentials. The default
    #               value is <code>true</code>. </p>
    #   @return [Boolean]
    class ImportSourceCredentialsInput < Struct.new(
      :username,
      :token,
      :server_type,
      :auth_type,
      :should_overwrite,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #   @return [String]
    class ImportSourceCredentialsOutput < Struct.new(
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input value that was provided is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidInputException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild build project that the cache is reset for.</p>
    #   @return [String]
    class InvalidateProjectCacheInput < Struct.new(
      :project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class InvalidateProjectCacheOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LanguageType
      JAVA = 'JAVA'
      PYTHON = 'PYTHON'
      NODE_JS = 'NODE_JS'
      RUBY = 'RUBY'
      GOLANG = 'GOLANG'
      DOCKER = 'DOCKER'
      ANDROID = 'ANDROID'
      DOTNET = 'DOTNET'
      BASE = 'BASE'
      PHP = 'PHP'
    end

    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #   @return [Types::BuildBatchFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by
    #                       identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order
    #                       by identifier.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #   @return [String]
    class ListBuildBatchesForProjectInput < Struct.new(
      :project_name,
      :filter,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>An array of strings that contains the batch build identifiers.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a
    #               subsequent call to <code>ListBuildBatchesForProject</code> to retrieve the next set of
    #               items.</p>
    #   @return [String]
    class ListBuildBatchesForProjectOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #   @return [Types::BuildBatchFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatches</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #   @return [String]
    class ListBuildBatchesInput < Struct.new(
      :filter,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>An array of strings that contains the batch build identifiers.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a subsequent
    #               call to <code>ListBuildBatches</code> to retrieve the next set of items.</p>
    #   @return [String]
    class ListBuildBatchesOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order to sort the results in. The results are sorted by build number, not the build
    #               identifier. If this is not specified, the results are sorted in descending order.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the build identifiers in ascending order, by build number.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the build identifiers in descending order, by build number.</p>
    #               </li>
    #            </ul>
    #            <p>If the project has more than 100 builds, setting the sort order will result in an
    #               error. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #   @return [String]
    class ListBuildsForProjectInput < Struct.new(
      :project_name,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A list of build identifiers for the specified build project, with each build ID representing a
    #               single build.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #   @return [String]
    class ListBuildsForProjectOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_order
    #   <p>The order to list build IDs. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the build IDs in ascending order by build
    #                       ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the build IDs in descending order by build
    #                       ID.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #   @return [String]
    class ListBuildsInput < Struct.new(
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A list of build IDs, with each build ID representing a single build.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #   @return [String]
    class ListBuildsOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    #   @return [String]
    class ListCommandExecutionsForSandboxInput < Struct.new(
      :sandbox_id,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute command_executions
    #   <p>Information about the requested command executions.</p>
    #   @return [Array<Types::CommandExecution>]
    # @!attribute next_token
    #   <p>Information about the next token to get paginated results.</p>
    #   @return [String]
    class ListCommandExecutionsForSandboxOutput < Struct.new(
      :command_executions,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ListCuratedEnvironmentImagesInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute platforms
    #   <p>Information about supported platforms for Docker images that are managed by
    #               CodeBuild.</p>
    #   @return [Array<Types::EnvironmentPlatform>]
    class ListCuratedEnvironmentImagesOutput < Struct.new(
      :platforms,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #               <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of paginated compute fleets returned per response. Use
    #               <code>nextToken</code> to iterate pages in the list of returned compute fleets.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>The order in which to list compute fleets. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortBy</code> to specify the criterion to be used to list compute fleet
    #               names.</p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>The criterion to be used to list compute fleet names. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each compute fleet was
    #                           created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when information about each
    #                           compute fleet was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each compute fleet's name.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortOrder</code> to specify in what order to list the compute fleet names
    #                   based on the preceding criteria.</p>
    #   @return [String]
    class ListFleetsInput < Struct.new(
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #   @return [String]
    # @!attribute fleets
    #   <p>The list of compute fleet names.</p>
    #   @return [Array<String>]
    class ListFleetsOutput < Struct.new(
      :next_token,
      :fleets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_by
    #   <p>The criterion to be used to list build project names. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each build project was
    #                       created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when information about each
    #                       build project was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each build project's name.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortOrder</code> to specify in what order to list the build project names
    #               based on the preceding criteria.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order in which to list build projects. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #            <p>Use <code>sortBy</code> to specify the criterion to be used to list build project
    #               names.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #   @return [String]
    class ListProjectsInput < Struct.new(
      :sort_by,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #   @return [String]
    # @!attribute projects
    #   <p>The list of build project names, with each build project name representing a single
    #               build project.</p>
    #   @return [Array<String>]
    class ListProjectsOutput < Struct.new(
      :next_token,
      :projects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_order
    #   <p>
    #         Used to specify the order to sort the list of returned report groups. Valid values are
    #         <code>ASCENDING</code> and <code>DESCENDING</code>.
    #       </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>
    #         The criterion to be used to list build report groups. Valid values include:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each report group was
    #             created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when each report group  was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each report group's name.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>ReportGroup</code> objects. The default value is 100.
    #       </p>
    #   @return [Integer]
    class ListReportGroupsInput < Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute report_groups
    #   <p>
    #         The list of ARNs for the report groups in the current Amazon Web Services account.
    #       </p>
    #   @return [Array<String>]
    class ListReportGroupsOutput < Struct.new(
      :next_token,
      :report_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_group_arn
    #   <p>
    #         The ARN of the report group for which you want to return report ARNs.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>
    #         Use to specify whether the results are returned in ascending or descending order.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #   @return [Types::ReportFilter]
    class ListReportsForReportGroupInput < Struct.new(
      :report_group_arn,
      :next_token,
      :sort_order,
      :max_results,
      :filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute reports
    #   <p>
    #         The list of report ARNs.
    #       </p>
    #   @return [Array<String>]
    class ListReportsForReportGroupOutput < Struct.new(
      :next_token,
      :reports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_order
    #   <p>
    #         Specifies the sort order for the list of returned reports. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: return reports in chronological order based on their creation date.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: return reports in the reverse chronological order based on their creation date.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #   @return [Integer]
    # @!attribute filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #   @return [Types::ReportFilter]
    class ListReportsInput < Struct.new(
      :sort_order,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #   @return [String]
    # @!attribute reports
    #   <p>
    #         The list of returned ARNs for the reports in the current Amazon Web Services account.
    #       </p>
    #   @return [Array<String>]
    class ListReportsOutput < Struct.new(
      :next_token,
      :reports,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The CodeBuild project name.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    #   @return [String]
    class ListSandboxesForProjectInput < Struct.new(
      :project_name,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>Information about the requested sandbox IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Information about the next token to get paginated results.</p>
    #   @return [String]
    class ListSandboxesForProjectOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of sandbox records to be retrieved.</p>
    #   @return [Integer]
    # @!attribute sort_order
    #   <p>The order in which sandbox records should be retrieved.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token, if any, to get paginated results. You will get this value from previous execution of list sandboxes.</p>
    #   @return [String]
    class ListSandboxesInput < Struct.new(
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>Information about the requested sandbox IDs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Information about the next token to get paginated results.</p>
    #   @return [String]
    class ListSandboxesOutput < Struct.new(
      :ids,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_by
    #   <p> The criterion to be used to list build projects shared with the current Amazon Web Services account
    #               or user. Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       project was last changed. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order in which to list shared build projects. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of paginated shared build projects returned per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned <code>Project</code>
    #               objects. The default value is 100. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #   @return [String]
    class ListSharedProjectsInput < Struct.new(
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #   @return [String]
    # @!attribute projects
    #   <p> The list of ARNs for the build projects shared with the current Amazon Web Services account or user.
    #           </p>
    #   @return [Array<String>]
    class ListSharedProjectsOutput < Struct.new(
      :next_token,
      :projects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sort_order
    #   <p>The order in which to list shared report groups. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute sort_by
    #   <p> The criterion to be used to list report groups shared with the current Amazon Web Services account or
    #               user. Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       report group was last changed. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of paginated shared report groups per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned
    #                   <code>ReportGroup</code> objects. The default value is 100. </p>
    #   @return [Integer]
    class ListSharedReportGroupsInput < Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #   @return [String]
    # @!attribute report_groups
    #   <p> The list of ARNs for the report groups shared with the current Amazon Web Services account or user.
    #           </p>
    #   @return [Array<String>]
    class ListSharedReportGroupsOutput < Struct.new(
      :next_token,
      :report_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class ListSourceCredentialsInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_credentials_infos
    #   <p> A list of <code>SourceCredentialsInfo</code> objects. Each
    #                   <code>SourceCredentialsInfo</code> object includes the authentication type, token
    #               ARN, and type of source provider for one set of credentials. </p>
    #   @return [Array<Types::SourceCredentialsInfo>]
    class ListSourceCredentialsOutput < Struct.new(
      :source_credentials_infos,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about logs for a build project. These can be logs in CloudWatch Logs, built in a
    #             specified S3 bucket, or both. </p>
    # @!attribute cloud_watch_logs
    #   <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
    #   @return [Types::CloudWatchLogsConfig]
    # @!attribute s3_logs
    #   <p> Information about logs built to an S3 bucket for a build project. S3 logs are not
    #               enabled by default. </p>
    #   @return [Types::S3LogsConfig]
    class LogsConfig < Struct.new(
      :cloud_watch_logs,
      :s3_logs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LogsConfigStatusType
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Information about build logs in CloudWatch Logs.</p>
    # @!attribute group_name
    #   <p>The name of the CloudWatch Logs group for the build logs.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the CloudWatch Logs stream for the build logs.</p>
    #   @return [String]
    # @!attribute deep_link
    #   <p>The URL to an individual build log in CloudWatch Logs. The log stream is created during the PROVISIONING phase of a build and the <code>deeplink</code> will not be valid until it is created.</p>
    #   @return [String]
    # @!attribute s3_deep_link
    #   <p> The URL to a build log in an S3 bucket. </p>
    #   @return [String]
    # @!attribute cloud_watch_logs_arn
    #   <p>The ARN of the CloudWatch Logs stream for a build execution. Its format is <code>arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}</code>. 
    #               The CloudWatch Logs stream is created during the PROVISIONING phase of a build and the ARN will not be valid until it is created. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html#amazoncloudwatchlogs-resources-for-iam-policies">Resources Defined by CloudWatch Logs</a>.</p>
    #   @return [String]
    # @!attribute s3_logs_arn
    #   <p> The ARN of S3 logs for a build project. Its format is
    #                   <code>arn:${Partition}:s3:::${BucketName}/${ObjectName}</code>. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html#amazons3-resources-for-iam-policies">Resources Defined by Amazon S3</a>. </p>
    #   @return [String]
    # @!attribute cloud_watch_logs
    #   <p> Information about CloudWatch Logs for a build project. </p>
    #   @return [Types::CloudWatchLogsConfig]
    # @!attribute s3_logs
    #   <p> Information about S3 logs for a build project. </p>
    #   @return [Types::S3LogsConfig]
    class LogsLocation < Struct.new(
      :group_name,
      :stream_name,
      :deep_link,
      :s3_deep_link,
      :cloud_watch_logs_arn,
      :s3_logs_arn,
      :cloud_watch_logs,
      :s3_logs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MachineType
      GENERAL = 'GENERAL'
      NVME = 'NVME'
    end

    # <p>Describes a network interface.</p>
    # @!attribute subnet_id
    #   <p>The ID of the subnet.</p>
    #   @return [String]
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #   @return [String]
    class NetworkInterface < Struct.new(
      :subnet_id,
      :network_interface_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There was a problem with the underlying OAuth provider.</p>
    # @!attribute message
    #   @return [String]
    class OAuthProviderException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Additional information about a build phase that has an error. You can use this
    #             information for troubleshooting.</p>
    # @!attribute status_code
    #   <p>The status code for the context of the build phase.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of the build phase's context. This might include a command ID and an
    #               exit code.</p>
    #   @return [String]
    class PhaseContext < Struct.new(
      :status_code,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PlatformType
      DEBIAN = 'DEBIAN'
      AMAZON_LINUX = 'AMAZON_LINUX'
      UBUNTU = 'UBUNTU'
      WINDOWS_SERVER = 'WINDOWS_SERVER'
    end

    # <p>Information about a build project.</p>
    # @!attribute name
    #   <p>The name of the build project.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description that makes the build project easy to identify.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Information about the build input source code for this build project.</p>
    #   @return [Types::ProjectSource]
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute source_version
    #   <p>A version of the build input to be built for this project. If not specified, the
    #         latest version is used. If specified, it must be one of:</p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>sourceVersion</code> is specified at the build level, then that version
    #         takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #         with CodeBuild</a> in the <i>CodeBuild User Guide</i>. 
    #       </p>
    #   @return [String]
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         over these <code>secondarySourceVersions</code> (at the project level). </p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    #   @return [Types::ProjectArtifacts]
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    #   @return [Array<Types::ProjectArtifacts>]
    # @!attribute cache
    #   <p>Information about the cache for the build project.</p>
    #   @return [Types::ProjectCache]
    # @!attribute environment
    #   <p>Information about the build environment for this build project.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before timing out any
    #         related build that did not get marked as completed. The default is 60 minutes.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #         artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>). If you don't specify a 
    #           value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3).
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created
    #   <p>When the build project was created, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>When the build project's settings were last modified, expressed in Unix time
    #         format.</p>
    #   @return [Time]
    # @!attribute webhook
    #   <p>Information about a webhook that connects repository events to a build project in
    #         CodeBuild.</p>
    #   @return [Types::Webhook]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute badge
    #   <p>Information about the build badge for the build project.</p>
    #   @return [Types::ProjectBadge]
    # @!attribute logs_config
    #   <p>Information about logs for the build project. A project can create logs in CloudWatch Logs, an
    #         S3 bucket, or both. </p>
    #   @return [Types::LogsConfig]
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build
    #               options for the project.</p>
    #   @return [Types::ProjectBuildBatchConfig]
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit. 
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #   @return [Integer]
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute public_project_alias
    #   <p>Contains the project identifier used with the public build APIs. </p>
    #   @return [String]
    # @!attribute resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    #   @return [String]
    # @!attribute auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #         auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #         retry your build for up to 2 additional times.</p>
    #   @return [Integer]
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
      :auto_retry_limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the build output artifacts for the build project.</p>
    # @!attribute type
    #   <p>The type of build output artifact. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CODEPIPELINE</code>: The build project has build output generated
    #                       through CodePipeline. </p>
    #                  <note>
    #                     <p>The <code>CODEPIPELINE</code> type is not supported for
    #                               <code>secondaryArtifacts</code>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_ARTIFACTS</code>: The build project does not produce any build
    #                       output.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The build project stores build output in Amazon S3.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>Information about the build output artifact location:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output locations
    #                       instead of CodeBuild.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
    #                       bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute path
    #   <p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that CodeBuild
    #               uses to name and store the output artifact:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output
    #                       artifact. If <code>path</code> is not specified, <code>path</code> is not
    #                       used.</p>
    #               </li>
    #            </ul>
    #            <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
    #                   <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set
    #               to <code>MyArtifact.zip</code>, the output artifact is stored in the output bucket at
    #                   <code>MyArtifacts/MyArtifact.zip</code>.</p>
    #   @return [String]
    # @!attribute namespace_type
    #   <p>Along with <code>path</code> and <code>name</code>, the pattern that CodeBuild uses to
    #               determine the name and location to store the output artifact:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>BUILD_ID</code>: Include the build ID in the location of the
    #                               build output artifact.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NONE</code>: Do not include the build ID. This is the default if
    #                                   <code>namespaceType</code> is not specified.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
    #                   <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is
    #               set to <code>MyArtifact.zip</code>, the output artifact is stored in
    #                   <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that CodeBuild
    #               uses to name and store the output artifact:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
    #                       artifact object. If you set the name to be a forward slash ("/"), the artifact
    #                       is stored in the root of the output bucket.</p>
    #               </li>
    #            </ul>
    #            <p>For example:</p>
    #            <ul>
    #               <li>
    #                  <p> If <code>path</code> is set to <code>MyArtifacts</code>,
    #                           <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
    #                           <code>name</code> is set to <code>MyArtifact.zip</code>, then the output
    #                       artifact is stored in <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>. </p>
    #               </li>
    #               <li>
    #                  <p> If <code>path</code> is empty, <code>namespaceType</code> is set to
    #                           <code>NONE</code>, and <code>name</code> is set to "<code>/</code>", the
    #                       output artifact is stored in the root of the output bucket. </p>
    #               </li>
    #               <li>
    #                  <p> If <code>path</code> is set to <code>MyArtifacts</code>,
    #                           <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
    #                           <code>name</code> is set to "<code>/</code>", the output artifact is stored
    #                       in <code>MyArtifacts/<build-ID></code>. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute packaging
    #   <p>The type of build output artifact to create:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output artifacts
    #                       instead of CodeBuild.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>NONE</code>: CodeBuild creates in the output bucket a folder that
    #                               contains the build output. This is the default if <code>packaging</code>
    #                               is not specified.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ZIP</code>: CodeBuild creates in the output bucket a ZIP file that
    #                               contains the build output.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute override_artifact_name
    #   <p> If this flag is set, a name specified in the buildspec file overrides the artifact
    #               name. The name specified in a buildspec file is calculated at build time and uses the
    #               Shell Command Language. For example, you can append a date and time to your artifact
    #               name so that it is always unique. </p>
    #   @return [Boolean]
    # @!attribute encryption_disabled
    #   <p> Set to true if you do not want your output artifacts encrypted. This option is valid
    #               only if your artifacts type is Amazon S3. If this is set with another artifacts type, an
    #               invalidInputException is thrown. </p>
    #   @return [Boolean]
    # @!attribute artifact_identifier
    #   <p> An identifier for this artifact definition. </p>
    #   @return [String]
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #            <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #            </note>
    #            <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                  <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                  <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                  <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                     </li>
    #                     <li>
    #                        <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
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
      :bucket_owner_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the build badge for the build project.</p>
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #               badge.</p>
    #   @return [Boolean]
    # @!attribute badge_request_url
    #   <p>The publicly-accessible URL through which you can access the build badge for your
    #               project. </p>
    #   @return [String]
    class ProjectBadge < Struct.new(
      :badge_enabled,
      :badge_request_url,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:badge_enabled] = false unless options.key?(:badge_enabled)
        super
      end
    end

    # <p>Contains configuration information about a batch build project.</p>
    # @!attribute service_role
    #   <p>Specifies the service role ARN for the batch build project.</p>
    #   @return [String]
    # @!attribute combine_artifacts
    #   <p>Specifies if the build artifacts for the batch build should be combined into a single
    #               artifact location.</p>
    #   @return [Boolean]
    # @!attribute restrictions
    #   <p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch
    #               build.</p>
    #   @return [Types::BatchRestrictions]
    # @!attribute timeout_in_mins
    #   <p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>
    #   @return [Integer]
    # @!attribute batch_report_mode
    #   <p>Specifies how build status reports are sent to the source provider for the batch build. This property is only used
    #                 when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise,
    #                 and your project is configured to report build statuses to the source provider.</p>
    #            <dl>
    #               <dt>REPORT_AGGREGATED_BATCH</dt>
    #               <dd>
    #                  <p>(Default) Aggregate all of the build statuses into a single status report.</p>
    #               </dd>
    #               <dt>REPORT_INDIVIDUAL_BUILDS</dt>
    #               <dd>
    #                  <p>Send a separate status report for each individual build.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class ProjectBuildBatchConfig < Struct.new(
      :service_role,
      :combine_artifacts,
      :restrictions,
      :timeout_in_mins,
      :batch_report_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the cache for the build project.</p>
    # @!attribute type
    #   <p>The type of cache used by the build project. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NO_CACHE</code>: The build project does not use any cache.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The build project reads and writes from and to S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code>: The build project stores a cache locally on a build host
    #                       that is only available to that build host.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>Information about the cache location: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NO_CACHE</code> or <code>LOCAL</code>: This value is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: This is the S3 bucket name/prefix.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute modes
    #   <p>An array of strings that specify the local cache modes. You can use one or more local
    #               cache modes at the same time. This is only used for <code>LOCAL</code> cache
    #               types.</p>
    #            <p>Possible values are:</p>
    #            <dl>
    #               <dt>LOCAL_SOURCE_CACHE</dt>
    #               <dd>
    #                  <p>Caches Git metadata for primary and secondary sources. After the cache is
    #                           created, subsequent builds pull only the change between commits. This mode
    #                           is a good choice for projects with a clean working directory and a source
    #                           that is a large Git repository. If you choose this option and your project
    #                           does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the
    #                           option is ignored. </p>
    #               </dd>
    #               <dt>LOCAL_DOCKER_LAYER_CACHE</dt>
    #               <dd>
    #                  <p>Caches existing Docker layers. This mode is a good choice for projects
    #                           that build or pull large Docker images. It can prevent the performance
    #                           issues caused by pulling large Docker images down from the network. </p>
    #                  <note>
    #                     <ul>
    #                        <li>
    #                           <p>You can use a Docker layer cache in the Linux environment
    #                                       only. </p>
    #                        </li>
    #                        <li>
    #                           <p>The <code>privileged</code> flag must be set so that your
    #                                       project has the required Docker permissions. </p>
    #                        </li>
    #                        <li>
    #                           <p>You should consider the security implications before you use a
    #                                       Docker layer cache. </p>
    #                        </li>
    #                     </ul>
    #                  </note>
    #               </dd>
    #               <dt>LOCAL_CUSTOM_CACHE</dt>
    #               <dd>
    #                  <p>Caches directories you specify in the buildspec file. This mode is a good
    #                           choice if your build scenario is not suited to one of the other three local
    #                           cache modes. If you use a custom cache: </p>
    #                  <ul>
    #                     <li>
    #                        <p>Only directories can be specified for caching. You cannot specify
    #                                   individual files. </p>
    #                     </li>
    #                     <li>
    #                        <p>Symlinks are used to reference cached directories. </p>
    #                     </li>
    #                     <li>
    #                        <p>Cached directories are linked to your build before it downloads
    #                                   its project sources. Cached items are overridden if a source item
    #                                   has the same name. Directories are specified using cache paths in
    #                                   the buildspec file. </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [Array<String>]
    # @!attribute cache_namespace
    #   <p>Defines the scope of the cache. You can use this namespace to share a cache across 
    #               multiple projects. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/caching-s3.html#caching-s3-sharing">Cache sharing 
    #                   between projects</a> in the <i>CodeBuild User Guide</i>.</p>
    #   @return [String]
    class ProjectCache < Struct.new(
      :type,
      :location,
      :modes,
      :cache_namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the build environment of the build project.</p>
    # @!attribute type
    #   <p>The type of build environment to use for related builds.</p>
    #            <note>
    #               <p>If you're using compute fleets during project creation, <code>type</code> will be ignored.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    #   @return [String]
    # @!attribute image
    #   <p>The image tag or image digest that identifies the Docker image to use for this build
    #               project. Use the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>For an image tag: <code><registry>/<repository>:<tag></code>. For
    #                       example, in the Docker repository that CodeBuild uses to manage its Docker
    #                       images, this would be <code>aws/codebuild/standard:4.0</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For an image digest: <code><registry>/<repository>@<digest></code>.
    #                       For example, to specify an image with the digest
    #                       "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use
    #                           <code><registry>/<repository>@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf</code>.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html">Docker images provided by CodeBuild</a> in the <i>CodeBuild user
    #                   guide</i>.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Information about the compute resources the build project uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute compute_configuration
    #   <p>The compute configuration of the build project. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code>.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute fleet
    #   <p>A ProjectFleet object to use for this build project.</p>
    #   @return [Types::ProjectFleet]
    # @!attribute environment_variables
    #   <p>A set of environment variables to make available to builds for this build
    #               project.</p>
    #   @return [Array<Types::EnvironmentVariable>]
    # @!attribute privileged_mode
    #   <p>Enables running the Docker daemon inside a Docker container. Set to true only if the
    #               build project is used to build Docker images. Otherwise, a build that attempts to
    #               interact with the Docker daemon fails. The default setting is <code>false</code>.</p>
    #            <p>You can initialize the Docker daemon during the install phase of your build by adding
    #               one of the following sets of commands to the install phase of your buildspec
    #               file:</p>
    #            <p>If the operating system's base image is Ubuntu Linux:</p>
    #            <p>
    #               <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
    #            </p>
    #            <p>
    #               <code>- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"</code>
    #            </p>
    #            <p>If the operating system's base image is Alpine Linux and the previous command does not
    #               work, add the <code>-t</code> argument to <code>timeout</code>:</p>
    #            <p>
    #               <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
    #            </p>
    #            <p>
    #               <code>- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute certificate
    #   <p>The ARN of the Amazon S3 bucket, path prefix, and object key that contains the PEM-encoded
    #               certificate for the build project. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/create-project-cli.html#cli.environment.certificate">certificate</a> in the
    #                   <i>CodeBuild User Guide</i>.</p>
    #   @return [String]
    # @!attribute registry_credential
    #   <p> The credentials for access to a private registry.</p>
    #   @return [Types::RegistryCredential]
    # @!attribute image_pull_credentials_type
    #   <p> The type of credentials CodeBuild uses to pull images in your build. There are two valid
    #               values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CODEBUILD</code> specifies that CodeBuild uses its own credentials.
    #                       This requires that you modify your ECR repository policy to trust CodeBuild service principal. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_ROLE</code> specifies that CodeBuild uses your build project's service
    #                       role. </p>
    #               </li>
    #            </ul>
    #            <p> When you use a cross-account or private registry image, you must use SERVICE_ROLE
    #               credentials. When you use an CodeBuild curated image, you must use CODEBUILD credentials.
    #           </p>
    #   @return [String]
    # @!attribute docker_server
    #   <p>A DockerServer object to use for this build project.</p>
    #   @return [Types::DockerServer]
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
      :image_pull_credentials_type,
      :docker_server,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a file system created by Amazon Elastic File System (EFS). For more
    #             information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html">What Is
    #                 Amazon Elastic File System?</a>
    #          </p>
    # @!attribute type
    #   <p> The type of the file system. The one supported type is <code>EFS</code>. </p>
    #   @return [String]
    # @!attribute location
    #   <p>A string that specifies the location of the file system created by Amazon EFS. Its
    #               format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file
    #               system when you view it in the Amazon EFS console. The directory path is a path to a
    #               directory in the file system that CodeBuild mounts. For example, if the DNS name of a
    #               file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount
    #               directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is
    #                   <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p>
    #            <p>The directory path in the format <code>efs-dns-name:/directory-path</code> is
    #               optional. If you do not specify a directory path, the location is only the DNS name and
    #               CodeBuild mounts the entire file system. </p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The location in the container where you mount the file system. </p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The name used to access a file system created by Amazon EFS. CodeBuild creates an
    #               environment variable by appending the <code>identifier</code> in all capital letters to
    #                   <code>CODEBUILD_</code>. For example, if you specify <code>my_efs</code> for
    #                   <code>identifier</code>, a new environment variable is create named
    #                   <code>CODEBUILD_MY_EFS</code>. </p>
    #            <p> The <code>identifier</code> is used to mount your file system. </p>
    #   @return [String]
    # @!attribute mount_options
    #   <p> The mount options for a file system created by Amazon EFS. The default mount options
    #               used by CodeBuild are
    #                   <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For
    #               more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html">Recommended NFS Mount
    #                   Options</a>. </p>
    #   @return [String]
    class ProjectFileSystemLocation < Struct.new(
      :type,
      :location,
      :mount_point,
      :identifier,
      :mount_options,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the compute fleet of the build project. For more
    #             information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/fleets.html">Working 
    #                 with reserved capacity in CodeBuild</a>.</p>
    # @!attribute fleet_arn
    #   <p>Specifies the compute fleet ARN for the build project.</p>
    #   @return [String]
    class ProjectFleet < Struct.new(
      :fleet_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ProjectSortByType
      NAME = 'NAME'
      CREATED_TIME = 'CREATED_TIME'
      LAST_MODIFIED_TIME = 'LAST_MODIFIED_TIME'
    end

    # <p>Information about the build input source code for the build project.</p>
    # @!attribute type
    #   <p>The type of repository that contains the source code to be built. Valid values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BITBUCKET</code>: The source code is in a Bitbucket repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CODECOMMIT</code>: The source code is in an CodeCommit repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CODEPIPELINE</code>: The source code settings are specified in the
    #                       source action of a pipeline in CodePipeline.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITHUB</code>: The source code is in a GitHub repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITHUB_ENTERPRISE</code>: The source code is in a GitHub Enterprise
    #                       Server repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITLAB</code>: The source code is in a GitLab repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GITLAB_SELF_MANAGED</code>: The source code is in a self-managed GitLab repository.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_SOURCE</code>: The project does not have input source code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The source code is in an Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p>Information about the location of the source code to be built. Valid values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>For source code settings that are specified in the source action of a pipeline
    #                       in CodePipeline, <code>location</code> should not be specified. If it is specified,
    #                       CodePipeline ignores it. This is because CodePipeline uses the settings in a pipeline's source
    #                       action instead of this value.</p>
    #               </li>
    #               <li>
    #                  <p>For source code in an CodeCommit repository, the HTTPS clone URL to the repository
    #                       that contains the source code and the buildspec file (for example,
    #                           <code>https://git-codecommit.<region-ID>.amazonaws.com/v1/repos/<repo-name></code>).</p>
    #               </li>
    #               <li>
    #                  <p>For source code in an Amazon S3 input bucket, one of the following. </p>
    #                  <ul>
    #                     <li>
    #                        <p>The path to the ZIP file that contains the source code (for example,
    #                                   <code><bucket-name>/<path>/<object-name>.zip</code>). </p>
    #                     </li>
    #                     <li>
    #                        <p>The path to the folder that contains the source code (for example,
    #                                   <code><bucket-name>/<path-to-source-code>/<folder>/</code>). </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For source code in a GitHub repository, the HTTPS clone URL to the repository
    #                       that contains the source and the buildspec file. You must connect your Amazon Web Services account 
    #                       to your GitHub account. Use the CodeBuild console to start creating a build
    #                       project. When you use the console to connect (or reconnect) with GitHub, on the
    #                       GitHub <b>Authorize application</b> page, for
    #                           <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to
    #                       allow CodeBuild to have access to, and then choose <b>Authorize
    #                           application</b>. (After you have connected to your GitHub account,
    #                       you do not need to finish creating the build project. You can leave the CodeBuild
    #                       console.) To instruct CodeBuild to use this connection, in the <code>source</code>
    #                       object, set the <code>auth</code> object's <code>type</code> value to
    #                           <code>OAUTH</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For source code in an GitLab or self-managed GitLab repository, the HTTPS clone URL to the repository
    #                       that contains the source and the buildspec file. You must connect your Amazon Web Services account 
    #                       to your GitLab account. Use the CodeBuild console to start creating a build
    #                       project. When you use the console to connect (or reconnect) with GitLab, on the
    #                       Connections <b>Authorize application</b> page, choose <b>Authorize</b>. Then on the CodeConnections <b>Create GitLab connection</b> page, 
    #                       choose <b>Connect to GitLab</b>. (After you have connected to your GitLab account,
    #                       you do not need to finish creating the build project. You can leave the CodeBuild
    #                       console.) To instruct CodeBuild to override the default connection and use this connection instead,
    #                       set the <code>auth</code> object's <code>type</code> value to
    #                       <code>CODECONNECTIONS</code> in the <code>source</code> object.</p>
    #               </li>
    #               <li>
    #                  <p>For source code in a Bitbucket repository, the HTTPS clone URL to the
    #                       repository that contains the source and the buildspec file. You must connect
    #                       your Amazon Web Services account to your Bitbucket account. Use the CodeBuild console to start
    #                       creating a build project. When you use the console to connect (or reconnect)
    #                       with Bitbucket, on the Bitbucket <b>Confirm access to your
    #                           account</b> page, choose <b>Grant
    #                           access</b>. (After you have connected to your Bitbucket account, you
    #                       do not need to finish creating the build project. You can leave the CodeBuild
    #                       console.) To instruct CodeBuild to use this connection, in the <code>source</code>
    #                       object, set the <code>auth</code> object's <code>type</code> value to
    #                           <code>OAUTH</code>.</p>
    #               </li>
    #            </ul>
    #            <p>
    #             If you specify <code>CODEPIPELINE</code> for the <code>Type</code> property, don't specify this 
    #             property. For all of the other types, you must specify <code>Location</code>.
    #          </p>
    #   @return [String]
    # @!attribute git_clone_depth
    #   <p>Information about the Git clone depth for the build project.</p>
    #   @return [Integer]
    # @!attribute git_submodules_config
    #   <p> Information about the Git submodules configuration for the build project. </p>
    #   @return [Types::GitSubmodulesConfig]
    # @!attribute buildspec
    #   <p>The buildspec file declaration to use for the builds in this build project.</p>
    #            <p> If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #   @return [String]
    # @!attribute auth
    #   <p>Information about the authorization settings for CodeBuild to access the source code to be
    #               built.</p>
    #   @return [Types::SourceAuth]
    # @!attribute report_build_status
    #   <p> Set to true to report the status of a build's start and finish to your source
    #               provider. This option is valid only when your source provider is GitHub, GitHub
    #               Enterprise, GitLab, GitLab Self Managed, GitLab, GitLab Self Managed, or Bitbucket. If this is set and you use a different source provider, an
    #               <code>invalidInputException</code> is thrown. </p>
    #            <p>To be able to report the build status to the source provider, the user associated with the source provider must
    #   have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source provider access</a> in the <i>CodeBuild User Guide</i>.</p>
    #            <p>The status of a build triggered by a webhook is always reported to your source
    #                   provider. </p>
    #            <p>If your project's builds are triggered by a webhook, you must push a
    #                 new commit to the repo for a change to this property to take
    #                 effect.</p>
    #   @return [Boolean]
    # @!attribute build_status_config
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    #   @return [Types::BuildStatusConfig]
    # @!attribute insecure_ssl
    #   <p>Enable this flag to ignore SSL warnings while connecting to the project source
    #             code.</p>
    #   @return [Boolean]
    # @!attribute source_identifier
    #   <p>An identifier for this project source. The identifier can only contain
    #             alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
    #   @return [String]
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
      :source_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A source identifier and its corresponding version. </p>
    # @!attribute source_identifier
    #   <p>An identifier for a source in the build project. The identifier can only contain
    #               alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The source version for the corresponding source identifier. If specified, must be one
    #             of:</p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #                     corresponds to the version of the source code you want to build. If a pull
    #                     request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #                     (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #                     HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #                     used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #                     version of the source code you want to build. If a branch name is specified, the
    #                     branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                     commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #                     file to use.</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                 with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #   @return [String]
    class ProjectSourceVersion < Struct.new(
      :source_identifier,
      :source_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #          <dl>
    #             <dt>PUBLIC_READ</dt>
    #             <dd>
    #                <p>The project builds are visible to the public.</p>
    #             </dd>
    #             <dt>PRIVATE</dt>
    #             <dd>
    #                <p>The project builds are not visible to the public.</p>
    #             </dd>
    #          </dl>
    module ProjectVisibilityType
      PUBLIC_READ = 'PUBLIC_READ'
      PRIVATE = 'PRIVATE'
    end

    # <p>Information about the proxy configurations that apply network access control to your reserved capacity instances.</p>
    # @!attribute default_behavior
    #   <p>The default behavior of outgoing traffic.</p>
    #   @return [String]
    # @!attribute ordered_proxy_rules
    #   <p>An array of <code>FleetProxyRule</code> objects that represent the specified destination domains or IPs to allow or deny network access control to.</p>
    #   @return [Array<Types::FleetProxyRule>]
    class ProxyConfiguration < Struct.new(
      :default_behavior,
      :ordered_proxy_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PullRequestBuildApproverRole
      GITHUB_READ = 'GITHUB_READ'
      GITHUB_TRIAGE = 'GITHUB_TRIAGE'
      GITHUB_WRITE = 'GITHUB_WRITE'
      GITHUB_MAINTAIN = 'GITHUB_MAINTAIN'
      GITHUB_ADMIN = 'GITHUB_ADMIN'
      GITLAB_GUEST = 'GITLAB_GUEST'
      GITLAB_PLANNER = 'GITLAB_PLANNER'
      GITLAB_REPORTER = 'GITLAB_REPORTER'
      GITLAB_DEVELOPER = 'GITLAB_DEVELOPER'
      GITLAB_MAINTAINER = 'GITLAB_MAINTAINER'
      GITLAB_OWNER = 'GITLAB_OWNER'
      BITBUCKET_READ = 'BITBUCKET_READ'
      BITBUCKET_WRITE = 'BITBUCKET_WRITE'
      BITBUCKET_ADMIN = 'BITBUCKET_ADMIN'
    end

    module PullRequestBuildCommentApproval
      DISABLED = 'DISABLED'
      ALL_PULL_REQUESTS = 'ALL_PULL_REQUESTS'
      FORK_PULL_REQUESTS = 'FORK_PULL_REQUESTS'
    end

    # <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    # @!attribute requires_comment_approval
    #   <p>Specifies when comment-based approval is required before triggering a build on pull requests. This setting determines whether builds run automatically or require explicit approval through comments.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>DISABLED</i>: Builds trigger automatically without requiring comment approval</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>ALL_PULL_REQUESTS</i>: All pull requests require comment approval before builds execute (unless contributor is one of the approver roles)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>FORK_PULL_REQUESTS</i>: Only pull requests from forked repositories require comment approval (unless contributor is one of the approver roles)</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute approver_roles
    #   <p>List of repository roles that have approval privileges for pull request builds when comment approval is required. Only users with these roles can provide valid comment approvals. If a pull request contributor is one of these roles, their pull request builds will trigger automatically. This field is only applicable when <code>requiresCommentApproval</code> is not <i>DISABLED</i>.</p>
    #   @return [Array<String>]
    class PullRequestBuildPolicy < Struct.new(
      :requires_comment_approval,
      :approver_roles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p> A JSON-formatted resource policy. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share">Sharing
    #                   a Project</a> and <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share">Sharing a Report Group</a> in the <i>CodeBuild User Guide</i>.
    #           </p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to
    #               associate with a resource policy. </p>
    #   @return [String]
    class PutResourcePolicyInput < Struct.new(
      :policy,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource that is
    #               associated with a resource policy. </p>
    #   @return [String]
    class PutResourcePolicyOutput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about credentials that provide access to a private Docker registry. When
    #             this is set: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>.
    #                 </p>
    #             </li>
    #             <li>
    #                <p> images cannot be curated or an Amazon ECR image.</p>
    #             </li>
    #          </ul>
    #          <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html">Private Registry with
    #                 Secrets Manager Sample for CodeBuild</a>. </p>
    # @!attribute credential
    #   <p> The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. </p>
    #            <note>
    #               <p> The <code>credential</code> can use the name of the credentials only if they
    #                   exist in your current Amazon Web Services Region. </p>
    #            </note>
    #   @return [String]
    # @!attribute credential_provider
    #   <p> The service that created the credentials to access a private Docker registry. The
    #               valid value, SECRETS_MANAGER, is for Secrets Manager. </p>
    #   @return [String]
    class RegistryCredential < Struct.new(
      :credential,
      :credential_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the results from running a series of test cases during the run of a
    #             build project. The test cases are specified in the buildspec for the build project using
    #             one or more paths to the test case files. You can specify any type of tests you want,
    #             such as unit tests, integration tests, and functional tests. </p>
    # @!attribute arn
    #   <p> The ARN of the report run. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the report that was run.</p>
    #            <dl>
    #               <dt>CODE_COVERAGE</dt>
    #               <dd>
    #                  <p>A code coverage report.</p>
    #               </dd>
    #               <dt>TEST</dt>
    #               <dd>
    #                  <p>A test report.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the report that was run. </p>
    #   @return [String]
    # @!attribute report_group_arn
    #   <p> The ARN of the report group associated with this report. </p>
    #   @return [String]
    # @!attribute execution_id
    #   <p> The ARN of the build run that generated this report. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of this report. </p>
    #   @return [String]
    # @!attribute created
    #   <p> The date and time this report run occurred. </p>
    #   @return [Time]
    # @!attribute expired
    #   <p> The date and time a report expires. A report expires 30 days after it is created. An
    #         expired report is not available to view in CodeBuild. </p>
    #   @return [Time]
    # @!attribute export_config
    #   <p> Information about where the raw data used to generate this report was exported.
    #       </p>
    #   @return [Types::ReportExportConfig]
    # @!attribute truncated
    #   <p> A boolean that specifies if this report run is truncated. The list of test cases is
    #         truncated after the maximum number of test cases is reached. </p>
    #   @return [Boolean]
    # @!attribute test_summary
    #   <p> A <code>TestReportSummary</code> object that contains information about this test
    #         report. </p>
    #   @return [Types::TestReportSummary]
    # @!attribute code_coverage_summary
    #   <p>A <code>CodeCoverageReportSummary</code> object that contains a code coverage summary for
    #               this report.</p>
    #   @return [Types::CodeCoverageReportSummary]
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
      :code_coverage_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportCodeCoverageSortByType
      LINE_COVERAGE_PERCENTAGE = 'LINE_COVERAGE_PERCENTAGE'
      FILE_PATH = 'FILE_PATH'
    end

    # <p> Information about the location where the run of a report is exported. </p>
    # @!attribute export_config_type
    #   <p> The export configuration type. Valid values are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The report results are exported to an S3 bucket. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_EXPORT</code>: The report results are not exported. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_destination
    #   <p> A <code>S3ReportExportConfig</code> object that contains information about the S3
    #               bucket where the run of a report is exported. </p>
    #   @return [Types::S3ReportExportConfig]
    class ReportExportConfig < Struct.new(
      :export_config_type,
      :s3_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportExportConfigType
      S3 = 'S3'
      NO_EXPORT = 'NO_EXPORT'
    end

    # <p> A filter used to return reports with the status specified by the input
    #                 <code>status</code> parameter. </p>
    # @!attribute status
    #   <p> The status used to filter reports. You can filter using one status only. </p>
    #   @return [String]
    class ReportFilter < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A series of reports. Each report contains information about the results from running a
    #             series of test cases. You specify the test cases for a report group in the buildspec for
    #             a build project using one or more paths to the test case files. </p>
    # @!attribute arn
    #   <p>The ARN of the <code>ReportGroup</code>. 
    #       </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the <code>ReportGroup</code>. 
    #       </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the <code>ReportGroup</code>. This can be one of the following
    #               values:</p>
    #            <dl>
    #               <dt>CODE_COVERAGE</dt>
    #               <dd>
    #                  <p>The report group contains code coverage reports.</p>
    #               </dd>
    #               <dt>TEST</dt>
    #               <dd>
    #                  <p>The report group contains test reports.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute export_config
    #   <p>Information about the destination where the raw data of this <code>ReportGroup</code>
    #               is exported. </p>
    #   @return [Types::ReportExportConfig]
    # @!attribute created
    #   <p>The date and time this <code>ReportGroup</code> was created. </p>
    #   @return [Time]
    # @!attribute last_modified
    #   <p>The date and time this <code>ReportGroup</code> was last modified. </p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this report group. </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute status
    #   <p>The status of the report group. This property is read-only.</p>
    #            <p>This can be one of the following values:</p>
    #            <dl>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #                  <p>The report group is active.</p>
    #               </dd>
    #               <dt>DELETING</dt>
    #               <dd>
    #                  <p>The report group is in the process of being deleted.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class ReportGroup < Struct.new(
      :arn,
      :name,
      :type,
      :export_config,
      :created,
      :last_modified,
      :tags,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportGroupSortByType
      NAME = 'NAME'
      CREATED_TIME = 'CREATED_TIME'
      LAST_MODIFIED_TIME = 'LAST_MODIFIED_TIME'
    end

    module ReportGroupStatusType
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
    end

    module ReportGroupTrendFieldType
      PASS_RATE = 'PASS_RATE'
      DURATION = 'DURATION'
      TOTAL = 'TOTAL'
      LINE_COVERAGE = 'LINE_COVERAGE'
      LINES_COVERED = 'LINES_COVERED'
      LINES_MISSED = 'LINES_MISSED'
      BRANCH_COVERAGE = 'BRANCH_COVERAGE'
      BRANCHES_COVERED = 'BRANCHES_COVERED'
      BRANCHES_MISSED = 'BRANCHES_MISSED'
    end

    # <p>Contains trend statistics for a set of reports. The actual values depend on the type of
    #             trend being collected. For more information, see .</p>
    # @!attribute average
    #   <p>Contains the average of all values analyzed.</p>
    #   @return [String]
    # @!attribute max
    #   <p>Contains the maximum value analyzed.</p>
    #   @return [String]
    # @!attribute min
    #   <p>Contains the minimum value analyzed.</p>
    #   @return [String]
    class ReportGroupTrendStats < Struct.new(
      :average,
      :max,
      :min,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReportPackagingType
      ZIP = 'ZIP'
      NONE = 'NONE'
    end

    module ReportStatusType
      GENERATING = 'GENERATING'
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
      INCOMPLETE = 'INCOMPLETE'
      DELETING = 'DELETING'
    end

    module ReportType
      TEST = 'TEST'
      CODE_COVERAGE = 'CODE_COVERAGE'
    end

    # <p>Contains the unmodified data for the report. For more information, see .</p>
    # @!attribute report_arn
    #   <p>The ARN of the report.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The value of the requested data field from the report.</p>
    #   @return [String]
    class ReportWithRawData < Struct.new(
      :report_arn,
      :data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a resolved build artifact. A resolved artifact is an artifact that is built and
    #             deployed to the destination, such as Amazon S3.</p>
    # @!attribute type
    #   <p>Specifies the type of artifact.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the artifact.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The identifier of the artifact.</p>
    #   @return [String]
    class ResolvedArtifact < Struct.new(
      :type,
      :location,
      :identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same
    #             settings already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified Amazon Web Services resource cannot be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Specifies the identifier of the batch build to restart.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>RetryBuildBatch</code> request. The token is included in the
    #                   <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>RetryBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #   @return [String]
    # @!attribute retry_type
    #   <p>Specifies the type of retry to perform.</p>
    #   @return [String]
    class RetryBuildBatchInput < Struct.new(
      :id,
      :idempotency_token,
      :retry_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build_batch
    #   <p>Contains information about a batch build.</p>
    #   @return [Types::BuildBatch]
    class RetryBuildBatchOutput < Struct.new(
      :build_batch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RetryBuildBatchType
      RETRY_ALL_BUILDS = 'RETRY_ALL_BUILDS'
      RETRY_FAILED_BUILDS = 'RETRY_FAILED_BUILDS'
    end

    # @!attribute id
    #   <p>Specifies the identifier of the build to restart.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #         <code>RetryBuild</code> request. The token is included in the
    #         <code>RetryBuild</code> request and is valid for five minutes. If you repeat
    #         the <code>RetryBuild</code> request with the same token, but change a parameter,
    #         CodeBuild returns a parameter mismatch error.</p>
    #   @return [String]
    class RetryBuildInput < Struct.new(
      :id,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>Information about a build.</p>
    #   @return [Types::Build]
    class RetryBuildOutput < Struct.new(
      :build,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about S3 logs for a build project. </p>
    # @!attribute status
    #   <p>The current status of the S3 build logs. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code>: S3 build logs are enabled for this build project.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code>: S3 build logs are not enabled for this build
    #                       project.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute location
    #   <p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket
    #               name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then
    #               acceptable formats are <code>my-bucket/build-log</code> or
    #                   <code>arn:aws:s3:::my-bucket/build-log</code>. </p>
    #   @return [String]
    # @!attribute encryption_disabled
    #   <p> Set to true if you do not want your S3 build log output encrypted. By default S3
    #               build logs are encrypted. </p>
    #   @return [Boolean]
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #            <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #            </note>
    #            <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                  <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                  <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                  <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                     </li>
    #                     <li>
    #                        <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class S3LogsConfig < Struct.new(
      :status,
      :location,
      :encryption_disabled,
      :bucket_owner_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the S3 bucket where the raw data of a report are exported. </p>
    # @!attribute bucket
    #   <p> The name of the S3 bucket where the raw data of a report are exported. </p>
    #   @return [String]
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account identifier of the owner of the Amazon S3 bucket. This allows report data to be exported to an Amazon S3 bucket
    #           that is owned by an account other than the account running the build.</p>
    #   @return [String]
    # @!attribute path
    #   <p> The path to the exported report's raw data results. </p>
    #   @return [String]
    # @!attribute packaging
    #   <p> The type of build output artifact to create. Valid values include: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code>: CodeBuild creates the raw data in the output bucket. This
    #                       is the default if packaging is not specified. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ZIP</code>: CodeBuild creates a ZIP file with the raw data in the
    #                       output bucket. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute encryption_key
    #   <p> The encryption key for the report's encrypted raw data. </p>
    #   @return [String]
    # @!attribute encryption_disabled
    #   <p> A boolean value that specifies if the results of a report are encrypted. </p>
    #   @return [Boolean]
    class S3ReportExportConfig < Struct.new(
      :bucket,
      :bucket_owner,
      :path,
      :packaging,
      :encryption_key,
      :encryption_disabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the Session Manager session.</p>
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute token_value
    #   <p>An encrypted token value containing session and caller information.</p>
    #   @return [String]
    # @!attribute stream_url
    #   <p>A URL back to SSM Agent on the managed node that the Session Manager client uses to send commands and receive output from the node.</p>
    #   @return [String]
    class SSMSession < Struct.new(
      :session_id,
      :token_value,
      :stream_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains sandbox information.</p>
    # @!attribute id
    #   <p>The ID of the sandbox.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the sandbox.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The CodeBuild project name.</p>
    #   @return [String]
    # @!attribute request_time
    #   <p>When the sandbox process was initially requested, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute start_time
    #   <p>When the sandbox process started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the sandbox process ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the sandbox.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Information about the build input source code for the build project.</p>
    #   @return [Types::ProjectSource]
    # @!attribute source_version
    #   <p>Any version identifier for the version of the sandbox to be built.</p>
    #   @return [String]
    # @!attribute secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects.</p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute environment
    #   <p>Information about the build environment of the build project.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before timing out this sandbox if it does not
    #               get marked as completed.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p>The number of minutes a sandbox is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute log_config
    #   <p> Information about logs for a build project. These can be logs in CloudWatch Logs, built in a
    #               specified S3 bucket, or both. </p>
    #   @return [Types::LogsConfig]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the sandbox output
    #               artifacts.</p>
    #   @return [String]
    # @!attribute service_role
    #   <p>The name of a service role used for this sandbox.</p>
    #   @return [String]
    # @!attribute current_session
    #   <p>The current session for the sandbox.</p>
    #   @return [Types::SandboxSession]
    class Sandbox < Struct.new(
      :id,
      :arn,
      :project_name,
      :request_time,
      :start_time,
      :end_time,
      :status,
      :source,
      :source_version,
      :secondary_sources,
      :secondary_source_versions,
      :environment,
      :file_system_locations,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :vpc_config,
      :log_config,
      :encryption_key,
      :service_role,
      :current_session,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the sandbox session.</p>
    # @!attribute id
    #   <p>The ID of the sandbox session.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the sandbox session.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>When the sandbox session started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the sandbox session ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute current_phase
    #   <p>The current phase for the sandbox.</p>
    #   @return [String]
    # @!attribute phases
    #   <p> An array of <code>SandboxSessionPhase</code> objects. </p>
    #   @return [Array<Types::SandboxSessionPhase>]
    # @!attribute resolved_source_version
    #   <p>An identifier for the version of this sandbox's source code.</p>
    #   @return [String]
    # @!attribute logs
    #   <p>Information about build logs in CloudWatch Logs.</p>
    #   @return [Types::LogsLocation]
    # @!attribute network_interface
    #   <p>Describes a network interface.</p>
    #   @return [Types::NetworkInterface]
    class SandboxSession < Struct.new(
      :id,
      :status,
      :start_time,
      :end_time,
      :current_phase,
      :phases,
      :resolved_source_version,
      :logs,
      :network_interface,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the sandbox phase.</p>
    # @!attribute phase_type
    #   <p>The name of the sandbox phase.</p>
    #   @return [String]
    # @!attribute phase_status
    #   <p>The current status of the sandbox phase. Valid values include:</p>
    #            <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                  <p>The sandbox phase failed.</p>
    #               </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                  <p>The sandbox phase faulted.</p>
    #               </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                  <p>The sandbox phase is still in progress.</p>
    #               </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                  <p>The sandbox phase stopped.</p>
    #               </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                  <p>The sandbox phase succeeded.</p>
    #               </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                  <p>The sandbox phase timed out.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute start_time
    #   <p>When the sandbox phase started, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>When the sandbox phase ended, expressed in Unix time format.</p>
    #   @return [Time]
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, between the starting and ending times of the sandbox's
    #               phase.</p>
    #   @return [Integer]
    # @!attribute contexts
    #   <p> An array of <code>PhaseContext</code> objects. </p>
    #   @return [Array<Types::PhaseContext>]
    class SandboxSessionPhase < Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The scaling configuration input of a compute fleet.</p>
    # @!attribute scaling_type
    #   <p>The scaling type for a compute fleet.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_configs
    #   <p>A list of <code>TargetTrackingScalingConfiguration</code> objects.</p>
    #   @return [Array<Types::TargetTrackingScalingConfiguration>]
    # @!attribute max_capacity
    #   <p>The maximum number of instances in the ﬂeet when auto-scaling.</p>
    #   @return [Integer]
    class ScalingConfigurationInput < Struct.new(
      :scaling_type,
      :target_tracking_scaling_configs,
      :max_capacity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The scaling configuration output of a compute fleet.</p>
    # @!attribute scaling_type
    #   <p>The scaling type for a compute fleet.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_configs
    #   <p>A list of <code>TargetTrackingScalingConfiguration</code> objects.</p>
    #   @return [Array<Types::TargetTrackingScalingConfiguration>]
    # @!attribute max_capacity
    #   <p>The maximum number of instances in the ﬂeet when auto-scaling.</p>
    #   @return [Integer]
    # @!attribute desired_capacity
    #   <p>The desired number of instances in the ﬂeet when auto-scaling.</p>
    #   @return [Integer]
    class ScalingConfigurationOutput < Struct.new(
      :scaling_type,
      :target_tracking_scaling_configs,
      :max_capacity,
      :desired_capacity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains configuration information about the scope for a webhook. </p>
    # @!attribute name
    #   <p>The name of either the group, enterprise, or organization that will send webhook events to CodeBuild, depending on the type of webhook.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain of the GitHub Enterprise organization or the GitLab Self Managed group. Note that this parameter is only required if your project's source type is GITHUB_ENTERPRISE or GITLAB_SELF_MANAGED.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>The type of scope for a GitHub or GitLab webhook. The scope default is GITHUB_ORGANIZATION.</p>
    #   @return [String]
    class ScopeConfiguration < Struct.new(
      :name,
      :domain,
      :scope,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ServerType
      GITHUB = 'GITHUB'
      BITBUCKET = 'BITBUCKET'
      GITHUB_ENTERPRISE = 'GITHUB_ENTERPRISE'
      GITLAB = 'GITLAB'
      GITLAB_SELF_MANAGED = 'GITLAB_SELF_MANAGED'
    end

    module SharedResourceSortByType
      ARN = 'ARN'
      MODIFIED_TIME = 'MODIFIED_TIME'
    end

    module SortOrderType
      ASCENDING = 'ASCENDING'
      DESCENDING = 'DESCENDING'
    end

    # <p>Information about the authorization settings for CodeBuild to access the source code to be
    #             built.</p>
    # @!attribute type
    #   <p>The authorization type to use. Valid options are OAUTH, CODECONNECTIONS, or SECRETS_MANAGER.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The resource value that applies to the specified authorization type.</p>
    #   @return [String]
    class SourceAuth < Struct.new(
      :type,
      :resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceAuthType
      OAUTH = 'OAUTH'
      CODECONNECTIONS = 'CODECONNECTIONS'
      SECRETS_MANAGER = 'SECRETS_MANAGER'
    end

    # <p> Information about the credentials for a GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or Bitbucket
    #             repository. </p>
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #   @return [String]
    # @!attribute server_type
    #   <p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, GITLAB, GITLAB_SELF_MANAGED, or
    #               BITBUCKET. </p>
    #   @return [String]
    # @!attribute auth_type
    #   <p> The type of authentication used by the credentials. Valid options are OAUTH,
    #               BASIC_AUTH, PERSONAL_ACCESS_TOKEN, CODECONNECTIONS, or SECRETS_MANAGER. </p>
    #   @return [String]
    # @!attribute resource
    #   <p>The connection ARN if your authType is CODECONNECTIONS or SECRETS_MANAGER.</p>
    #   @return [String]
    class SourceCredentialsInfo < Struct.new(
      :arn,
      :server_type,
      :auth_type,
      :resource,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceType
      CODECOMMIT = 'CODECOMMIT'
      CODEPIPELINE = 'CODEPIPELINE'
      GITHUB = 'GITHUB'
      GITLAB = 'GITLAB'
      GITLAB_SELF_MANAGED = 'GITLAB_SELF_MANAGED'
      S3 = 'S3'
      BITBUCKET = 'BITBUCKET'
      GITHUB_ENTERPRISE = 'GITHUB_ENTERPRISE'
      NO_SOURCE = 'NO_SOURCE'
    end

    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    # @!attribute secondary_sources_override
    #   <p>An array of <code>ProjectSource</code> objects that override the secondary sources
    #           defined in the batch build project.</p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute secondary_sources_version_override
    #   <p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source
    #               versions in the batch build project.</p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute source_version
    #   <p>The version of the batch build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #            <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                  <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #               </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #               </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                  <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #               </dd>
    #            </dl>
    #            <p>If <code>sourceVersion</code> is specified at the project level, then this
    #                   <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #   @return [String]
    # @!attribute artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that contains information about the
    #               build output artifact overrides for the build project.</p>
    #   @return [Types::ProjectArtifacts]
    # @!attribute secondary_artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts
    #               defined in the batch build project.</p>
    #   @return [Array<Types::ProjectArtifacts>]
    # @!attribute environment_variables_override
    #   <p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the
    #               environment variables defined in the batch build project.</p>
    #   @return [Array<Types::EnvironmentVariable>]
    # @!attribute source_type_override
    #   <p>The source input type that overrides the source input defined in the batch
    #           build project.</p>
    #   @return [String]
    # @!attribute source_location_override
    #   <p>A location that overrides, for this batch build, the source location defined in
    #           the batch build project.</p>
    #   @return [String]
    # @!attribute source_auth_override
    #   <p>A <code>SourceAuth</code> object that overrides the one defined in the batch build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    #   @return [Types::SourceAuth]
    # @!attribute git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #           batch build only, any previous depth of history defined in the batch build project.</p>
    #   @return [Integer]
    # @!attribute git_submodules_config_override
    #   <p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration
    #               for this batch build.</p>
    #   @return [Types::GitSubmodulesConfig]
    # @!attribute buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #           already defined in the build project.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #           alternate buildspec file relative to the value of the built-in
    #           <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #           The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #           file using its ARN (for example,
    #           <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #           provided or is set to an empty string, the source code must contain a buildspec file in
    #           its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #   @return [String]
    # @!attribute insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the batch build
    #           project. The insecure SSL setting determines whether to ignore SSL warnings while
    #           connecting to the project source code. This override applies only if the build's source
    #           is GitHub Enterprise.</p>
    #   @return [Boolean]
    # @!attribute report_build_batch_status_override
    #   <p>Set to <code>true</code> to report to your source provider the status of a batch build's
    #               start and completion. If you use this option with a source provider other than GitHub,
    #               GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <note>
    #               <p>The status of a build triggered by a webhook is always reported to your source
    #             provider. </p>
    #            </note>
    #   @return [Boolean]
    # @!attribute environment_type_override
    #   <p>A container type for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #   @return [String]
    # @!attribute image_override
    #   <p>The name of an image for this batch build that overrides the one specified in the batch
    #               build project.</p>
    #   @return [String]
    # @!attribute compute_type_override
    #   <p>The name of a compute type for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #   @return [String]
    # @!attribute certificate_override
    #   <p>The name of a certificate for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #   @return [String]
    # @!attribute cache_override
    #   <p>A <code>ProjectCache</code> object that specifies cache overrides.</p>
    #   @return [Types::ProjectCache]
    # @!attribute service_role_override
    #   <p>The name of a service role for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #   @return [String]
    # @!attribute privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the batch build project.</p>
    #   @return [Boolean]
    # @!attribute build_timeout_in_minutes_override
    #   <p>Overrides the build timeout specified in the batch build project.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes_override
    #   <p>The number of minutes a batch build is allowed to be queued before it times out.</p>
    #   @return [Integer]
    # @!attribute encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the batch build
    #           project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #             service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>StartBuildBatch</code> request. The token is included in the
    #                   <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>StartBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #   @return [String]
    # @!attribute logs_config_override
    #   <p>A <code>LogsConfig</code> object that override the log settings defined in the batch build
    #               project.</p>
    #   @return [Types::LogsConfig]
    # @!attribute registry_credential_override
    #   <p>A <code>RegistryCredential</code> object that overrides credentials for access to a
    #               private registry.</p>
    #   @return [Types::RegistryCredential]
    # @!attribute image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your batch build. There are two valid
    #           values: </p>
    #            <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #               </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses your build project's service role. </p>
    #               </dd>
    #            </dl>
    #            <p>When using a cross-account or private registry image, you must use
    #                   <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    #   @return [String]
    # @!attribute build_batch_config_override
    #   <p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration
    #               overrides.</p>
    #   @return [Types::ProjectBuildBatchConfig]
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    #   @return [Boolean]
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
      :debug_session_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build_batch
    #   <p>A <code>BuildBatch</code> object that contains information about the batch build.</p>
    #   @return [Types::BuildBatch]
    class StartBuildBatchOutput < Struct.new(
      :build_batch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild build project to start running a build.</p>
    #   @return [String]
    # @!attribute secondary_sources_override
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute secondary_sources_version_override
    #   <p> An array of <code>ProjectSourceVersion</code> objects that specify one or more
    #               versions of the project's secondary sources to be used for this build only. </p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute source_version
    #   <p>The version of the build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #            <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                  <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #               </dd>
    #               <dt>GitLab</dt>
    #               <dd>
    #                  <p>The commit ID, branch, or Git tag to use.</p>
    #               </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                  <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #               </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                  <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #               </dd>
    #            </dl>
    #            <p>If <code>sourceVersion</code> is specified at the project level, then this
    #               <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #               with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #   @return [String]
    # @!attribute artifacts_override
    #   <p>Build output artifact settings that override, for this build only, the latest ones
    #               already defined in the build project.</p>
    #   @return [Types::ProjectArtifacts]
    # @!attribute secondary_artifacts_override
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    #   @return [Array<Types::ProjectArtifacts>]
    # @!attribute environment_variables_override
    #   <p>A set of environment variables that overrides, for this build only, the latest ones
    #               already defined in the build project.</p>
    #   @return [Array<Types::EnvironmentVariable>]
    # @!attribute source_type_override
    #   <p>A source input type, for this build, that overrides the source input defined in the
    #               build project.</p>
    #   @return [String]
    # @!attribute source_location_override
    #   <p>A location that overrides, for this build, the source location for the one defined in
    #               the build project.</p>
    #   @return [String]
    # @!attribute source_auth_override
    #   <p>An authorization type for this build that overrides the one defined in the build
    #               project. This override applies only if the build project's source is BitBucket, GitHub, 
    #               GitLab, or GitLab Self Managed.</p>
    #   @return [Types::SourceAuth]
    # @!attribute git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #               build only, any previous depth of history defined in the build project.</p>
    #   @return [Integer]
    # @!attribute git_submodules_config_override
    #   <p> Information about the Git submodules configuration for this build of an CodeBuild build
    #               project. </p>
    #   @return [Types::GitSubmodulesConfig]
    # @!attribute buildspec_override
    #   <p>A buildspec file declaration that overrides the latest one defined 
    #               in the build project, for this build only. The buildspec defined on the project is not changed.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>.</p>
    #            <note>
    #               <p>Since this property allows you to change the build commands that will run in the container, 
    #               you should note that an IAM principal with the ability to call this API and set this parameter 
    #               can override the default settings. Moreover, we encourage that you use a trustworthy buildspec location 
    #               like a file in your source repository or a Amazon S3 bucket. Alternatively, you can restrict overrides 
    #               to the buildspec by using a condition key: <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/action-context-keys.html#action-context-keys-example-overridebuildspec.html">Prevent unauthorized modifications to project buildspec</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the build
    #               project. The insecure SSL setting determines whether to ignore SSL warnings while
    #               connecting to the project source code. This override applies only if the build's source
    #               is GitHub Enterprise.</p>
    #   @return [Boolean]
    # @!attribute report_build_status_override
    #   <p> Set to true to report to your source provider the status of a build's start and
    #               completion. If you use this option with a source provider other than GitHub, GitHub
    #               Enterprise, GitLab, GitLab Self Managed, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <p>To be able to report the build status to the source provider, the user associated with the source provider must
    #   have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source provider access</a> in the <i>CodeBuild User Guide</i>.</p>
    #            <note>
    #               <p> The status of a build triggered by a webhook is always reported to your source
    #                   provider. </p>
    #            </note>
    #   @return [Boolean]
    # @!attribute build_status_config_override
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    #   @return [Types::BuildStatusConfig]
    # @!attribute environment_type_override
    #   <p>A container type for this build that overrides the one specified in the build
    #               project.</p>
    #   @return [String]
    # @!attribute image_override
    #   <p>The name of an image for this build that overrides the one specified in the build
    #               project.</p>
    #   @return [String]
    # @!attribute compute_type_override
    #   <p>The name of a compute type for this build that overrides the one specified in the
    #               build project.</p>
    #   @return [String]
    # @!attribute certificate_override
    #   <p>The name of a certificate for this build that overrides the one specified in the build
    #               project.</p>
    #   @return [String]
    # @!attribute cache_override
    #   <p>A ProjectCache object specified for this build that overrides the one defined in the
    #               build project.</p>
    #   @return [Types::ProjectCache]
    # @!attribute service_role_override
    #   <p>The name of a service role for this build that overrides the one specified in the
    #               build project.</p>
    #   @return [String]
    # @!attribute privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the build project.</p>
    #   @return [Boolean]
    # @!attribute timeout_in_minutes_override
    #   <p>The number of build timeout minutes, from 5 to 2160 (36 hours), that overrides, for this
    #               build only, the latest setting already defined in the build project.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes_override
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the build
    #               project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #               StartBuild request. The token is included in the StartBuild request and is valid for 5
    #               minutes. If you repeat the StartBuild request with the same token, but change a
    #               parameter, CodeBuild returns a parameter mismatch error. </p>
    #   @return [String]
    # @!attribute logs_config_override
    #   <p> Log settings for this build that override the log settings defined in the build
    #               project. </p>
    #   @return [Types::LogsConfig]
    # @!attribute registry_credential_override
    #   <p> The credentials for access to a private registry. </p>
    #   @return [Types::RegistryCredential]
    # @!attribute image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your build. There are two valid
    #               values: </p>
    #            <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #               </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                  <p>Specifies that CodeBuild uses your build project's service role. </p>
    #               </dd>
    #            </dl>
    #            <p>When using a cross-account or private registry image, you must use
    #               <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    #   @return [String]
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this build. For more information, see
    #                   <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>.</p>
    #   @return [Boolean]
    # @!attribute fleet_override
    #   <p>A ProjectFleet object specified for this build that overrides the one defined in the
    #               build project.</p>
    #   @return [Types::ProjectFleet]
    # @!attribute auto_retry_limit_override
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #               auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #               retry your build for up to 2 additional times.</p>
    #   @return [Integer]
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
      :auto_retry_limit_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>Information about the build to be run.</p>
    #   @return [Types::Build]
    class StartBuildOutput < Struct.new(
      :build,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    #   @return [String]
    # @!attribute command
    #   <p>The command that needs to be executed.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The command type.</p>
    #   @return [String]
    class StartCommandExecutionInput < Struct.new(
      :sandbox_id,
      :command,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute command_execution
    #   <p>Information about the requested command executions.</p>
    #   @return [Types::CommandExecution]
    class StartCommandExecutionOutput < Struct.new(
      :command_execution,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox_id
    #   <p>A <code>sandboxId</code> or <code>sandboxArn</code>.</p>
    #   @return [String]
    class StartSandboxConnectionInput < Struct.new(
      :sandbox_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ssm_session
    #   <p>Information about the Session Manager session.</p>
    #   @return [Types::SSMSession]
    class StartSandboxConnectionOutput < Struct.new(
      :ssm_session,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The CodeBuild project name.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique client token.</p>
    #   @return [String]
    class StartSandboxInput < Struct.new(
      :project_name,
      :idempotency_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox
    #   <p>Information about the requested sandbox.</p>
    #   @return [Types::Sandbox]
    class StartSandboxOutput < Struct.new(
      :sandbox,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StatusType
      SUCCEEDED = 'SUCCEEDED'
      FAILED = 'FAILED'
      FAULT = 'FAULT'
      TIMED_OUT = 'TIMED_OUT'
      IN_PROGRESS = 'IN_PROGRESS'
      STOPPED = 'STOPPED'
    end

    # @!attribute id
    #   <p>The identifier of the batch build to stop.</p>
    #   @return [String]
    class StopBuildBatchInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build_batch
    #   <p>Contains information about a batch build.</p>
    #   @return [Types::BuildBatch]
    class StopBuildBatchOutput < Struct.new(
      :build_batch,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the build.</p>
    #   @return [String]
    class StopBuildInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute build
    #   <p>Information about the build.</p>
    #   @return [Types::Build]
    class StopBuildOutput < Struct.new(
      :build,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>Information about the requested sandbox ID.</p>
    #   @return [String]
    class StopSandboxInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sandbox
    #   <p>Information about the requested sandbox.</p>
    #   @return [Types::Sandbox]
    class StopSandboxOutput < Struct.new(
      :sandbox,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A tag, consisting of a key and a value.</p>
    #          <p>This tag is available for use by Amazon Web Services services that support tags in CodeBuild.</p>
    # @!attribute key
    #   <p>The tag's key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag's value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines when a new instance is auto-scaled into the compute fleet.</p>
    # @!attribute metric_type
    #   <p>The metric type to determine auto-scaling.</p>
    #   @return [String]
    # @!attribute target_value
    #   <p>The value of <code>metricType</code> when to start scaling.</p>
    #   @return [Float]
    class TargetTrackingScalingConfiguration < Struct.new(
      :metric_type,
      :target_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a test case created using a framework such as NUnit or Cucumber. A
    #             test case might be a unit test or a configuration test. </p>
    # @!attribute report_arn
    #   <p> The ARN of the report to which the test case belongs. </p>
    #   @return [String]
    # @!attribute test_raw_data_path
    #   <p> The path to the raw data file that contains the test result. </p>
    #   @return [String]
    # @!attribute prefix
    #   <p> A string that is applied to a series of related test cases. CodeBuild generates the
    #               prefix. The prefix depends on the framework used to generate the tests. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the test case. </p>
    #   @return [String]
    # @!attribute status
    #   <p> The status returned by the test case after it was run. Valid statuses are
    #                   <code>SUCCEEDED</code>, <code>FAILED</code>, <code>ERROR</code>,
    #                   <code>SKIPPED</code>, and <code>UNKNOWN</code>. </p>
    #   @return [String]
    # @!attribute duration_in_nano_seconds
    #   <p> The number of nanoseconds it took to run this test case. </p>
    #   @return [Integer]
    # @!attribute message
    #   <p> A message associated with a test case. For example, an error message or stack trace.
    #           </p>
    #   @return [String]
    # @!attribute expired
    #   <p> The date and time a test case expires. A test case expires 30 days after it is
    #               created. An expired test case is not available to view in CodeBuild. </p>
    #   @return [Time]
    # @!attribute test_suite_name
    #   <p>The name of the test suite that the test case is a part of.</p>
    #   @return [String]
    class TestCase < Struct.new(
      :report_arn,
      :test_raw_data_path,
      :prefix,
      :name,
      :status,
      :duration_in_nano_seconds,
      :message,
      :expired,
      :test_suite_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A filter used to return specific types of test cases. In order to pass the filter, the
    #             report must meet all of the filter properties.</p>
    # @!attribute status
    #   <p>The status used to filter test cases. A <code>TestCaseFilter</code> can have one
    #               status. Valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute keyword
    #   <p>A keyword that is used to filter on the <code>name</code> or the <code>prefix</code>
    #               of the test cases. Only test cases where the keyword is a substring of the
    #                   <code>name</code> or the <code>prefix</code> will be returned.</p>
    #   @return [String]
    class TestCaseFilter < Struct.new(
      :status,
      :keyword,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about a test report. </p>
    # @!attribute total
    #   <p> The number of test cases in this <code>TestReportSummary</code>. The total includes
    #               truncated test cases. </p>
    #   @return [Integer]
    # @!attribute status_counts
    #   <p> A map that contains the number of each type of status returned by the test results in
    #               this <code>TestReportSummary</code>. </p>
    #   @return [Hash<String, Integer>]
    # @!attribute duration_in_nano_seconds
    #   <p> The number of nanoseconds it took to run all of the test cases in this report.
    #           </p>
    #   @return [Integer]
    class TestReportSummary < Struct.new(
      :total,
      :status_counts,
      :duration_in_nano_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the compute fleet.</p>
    #   @return [String]
    # @!attribute base_capacity
    #   <p>The initial number of machines allocated to the compute ﬂeet, which deﬁnes the number of builds that can
    #               run in parallel.</p>
    #   @return [Integer]
    # @!attribute environment_type
    #   <p>The environment type of the compute fleet.</p>
    #            <ul>
    #               <li>
    #                  <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia Pacific (Sydney), 
    #                       EU (Frankfurt), and South America (São Paulo).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>ARM_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Medium fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       and EU (Frankfurt)</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>MAC_ARM</code> is available for Large fleets only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon), and Asia Pacific (Sydney).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_EC2</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), 
    #                       EU (Frankfurt), Asia Pacific (Tokyo),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), South America (São Paulo), and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2019_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), Asia Pacific (Sydney), 
    #                       Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
    #                       EU (Ireland).</p>
    #               </li>
    #               <li>
    #                  <p>The environment type <code>WINDOWS_SERVER_2022_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU (Frankfurt), 
    #                       Asia Pacific (Sydney), Asia Pacific (Singapore), Asia Pacific (Tokyo), South America (São Paulo) and
    #                       Asia Pacific (Mumbai).</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Information about the compute resources the compute fleet uses. Available values
    #               include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ATTRIBUTE_BASED_COMPUTE</code>: Specify the amount of vCPUs, memory, disk space, and the type of machine.</p>
    #                  <note>
    #                     <p> If you use <code>ATTRIBUTE_BASED_COMPUTE</code>, you must define your attributes by using <code>computeConfiguration</code>. CodeBuild 
    #                           will select the cheapest instance that satisfies your specified attributes. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types">Reserved capacity environment 
    #                           types</a> in the <i>CodeBuild User Guide</i>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_INSTANCE_TYPE</code>: Specify the instance type for your compute fleet. For a list of supported instance types, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types">Supported instance families
    #                           </a> in the <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 4 GiB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 8 GiB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GiB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_XLARGE</code>: Use up to 72 GiB memory and 36 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 144 GiB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_1GB</code>: Use up to 1 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_2GB</code>: Use up to 2 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_4GB</code>: Use up to 4 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_8GB</code>: Use up to 8 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BUILD_LAMBDA_10GB</code>: Use up to 10 GiB memory for
    #                       builds. Only available for environment type <code>LINUX_LAMBDA_CONTAINER</code> and <code>ARM_LAMBDA_CONTAINER</code>.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_SMALL</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 16
    #                       GiB memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 4 GiB
    #                       memory and 2 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #            <ul>
    #               <li>
    #                  <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GiB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                  <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GiB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types">On-demand environment types</a> 
    #                   in the <i>CodeBuild User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute compute_configuration
    #   <p>The compute configuration of the compute fleet. This is only required if <code>computeType</code> is set to <code>ATTRIBUTE_BASED_COMPUTE</code> or <code>CUSTOM_INSTANCE_TYPE</code>.</p>
    #   @return [Types::ComputeConfiguration]
    # @!attribute scaling_configuration
    #   <p>The scaling configuration of the compute fleet.</p>
    #   @return [Types::ScalingConfigurationInput]
    # @!attribute overflow_behavior
    #   <p>The compute fleet overflow behavior.</p>
    #            <ul>
    #               <li>
    #                  <p>For overflow behavior <code>QUEUE</code>, your overflow builds need to wait on 
    #                       the existing fleet instance to become available.</p>
    #               </li>
    #               <li>
    #                  <p>For overflow behavior <code>ON_DEMAND</code>, your overflow builds run on CodeBuild on-demand.</p>
    #                  <note>
    #                     <p>If you choose to set your overflow behavior to on-demand while creating a VPC-connected 
    #                       fleet, make sure that you add the required VPC permissions to your project service role. For more 
    #                       information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface">Example 
    #                       policy statement to allow CodeBuild access to Amazon Web Services services required to create a VPC network interface</a>.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #   @return [Types::VpcConfig]
    # @!attribute proxy_configuration
    #   <p>The proxy configuration of the compute fleet.</p>
    #   @return [Types::ProxyConfiguration]
    # @!attribute image_id
    #   <p>The Amazon Machine Image (AMI) of the compute fleet.</p>
    #   @return [String]
    # @!attribute fleet_service_role
    #   <p>The service role associated with the compute fleet. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html">
    #               Allow a user to add a permission policy for a fleet service role</a> in the <i>CodeBuild User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this compute fleet.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet
    #   <p>A <code>Fleet</code> object.</p>
    #   @return [Types::Fleet]
    class UpdateFleetOutput < Struct.new(
      :fleet,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #            <note>
    #               <p>You cannot change a build project's name.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>A new or replacement description of the build project.</p>
    #   @return [String]
    # @!attribute source
    #   <p>Information to be changed about the build input source code for the build
    #       project.</p>
    #   @return [Types::ProjectSource]
    # @!attribute secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #   @return [Array<Types::ProjectSource>]
    # @!attribute source_version
    #   <p> A version of the build input to be built for this project. If not specified, the
    #       latest version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #               corresponds to the version of the source code you want to build. If a pull
    #               request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #               (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #               HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #               used.</p>
    #               </li>
    #               <li>
    #                  <p>For GitLab: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #               version of the source code you want to build. If a branch name is specified, the
    #               branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #               commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #               file to use.</p>
    #               </li>
    #            </ul>
    #            <p> If <code>sourceVersion</code> is specified at the build level, then that version
    #       takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #           with CodeBuild</a> in the <i>CodeBuild User Guide</i>. 
    #       </p>
    #   @return [String]
    # @!attribute secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #       over these <code>secondarySourceVersions</code> (at the project level). </p>
    #   @return [Array<Types::ProjectSourceVersion>]
    # @!attribute artifacts
    #   <p>Information to be changed about the build output artifacts for the build
    #           project.</p>
    #   @return [Types::ProjectArtifacts]
    # @!attribute secondary_artifacts
    #   <p> An array of <code>ProjectArtifact</code> objects. </p>
    #   @return [Array<Types::ProjectArtifacts>]
    # @!attribute cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #         time.</p>
    #   @return [Types::ProjectCache]
    # @!attribute environment
    #   <p>Information to be changed about the build environment for the build project.</p>
    #   @return [Types::ProjectEnvironment]
    # @!attribute service_role
    #   <p>The replacement ARN of the IAM role that enables CodeBuild to interact with dependent
    #       Amazon Web Services services on behalf of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute timeout_in_minutes
    #   <p>The replacement value in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait before
    #         timing out any related build that did not get marked as completed.</p>
    #   @return [Integer]
    # @!attribute queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #       artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #       the format <code>alias/<alias-name></code>).
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>An updated list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #   @return [Types::VpcConfig]
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #         badge.</p>
    #   @return [Boolean]
    # @!attribute logs_config
    #   <p> Information about logs for the build project. A project can create logs in CloudWatch Logs,
    #       logs in an S3 bucket, or both. </p>
    #   @return [Types::LogsConfig]
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object 
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>, 
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #   @return [Array<Types::ProjectFileSystemLocation>]
    # @!attribute build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    #   @return [Types::ProjectBuildBatchConfig]
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit. 
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #            <p>To remove this limit, set this value to -1.</p>
    #   @return [Integer]
    # @!attribute auto_retry_limit
    #   <p>The maximum number of additional automatic retries after a failed build. For example, if the 
    #         auto-retry limit is set to 2, CodeBuild will call the <code>RetryBuild</code> API to automatically 
    #         retry your build for up to 2 additional times.</p>
    #   @return [Integer]
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
      :auto_retry_limit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project
    #   <p>Information about the build project that was changed.</p>
    #   @return [Types::Project]
    class UpdateProjectOutput < Struct.new(
      :project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #   @return [String]
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    #   @return [String]
    class UpdateProjectVisibilityInput < Struct.new(
      :project_arn,
      :project_visibility,
      :resource_access_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #   @return [String]
    # @!attribute public_project_alias
    #   <p>Contains the project identifier used with the public build APIs. </p>
    #   @return [String]
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    class UpdateProjectVisibilityOutput < Struct.new(
      :project_arn,
      :public_project_alias,
      :project_visibility,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the report group to update.
    #       </p>
    #   @return [String]
    # @!attribute export_config
    #   <p>
    #         Used to specify an updated export type. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The report results are exported to an S3 bucket.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_EXPORT</code>: The report results are not exported.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [Types::ReportExportConfig]
    # @!attribute tags
    #   <p>
    #         An updated list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #   @return [Array<Types::Tag>]
    class UpdateReportGroupInput < Struct.new(
      :arn,
      :export_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute report_group
    #   <p>
    #         Information about the updated report group.
    #       </p>
    #   @return [Types::ReportGroup]
    class UpdateReportGroupOutput < Struct.new(
      :report_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #   @return [String]
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p> It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute rotate_secret
    #   <p> A boolean value that specifies whether the associated GitHub repository's secret
    #         token should be updated. If you use Bitbucket for your repository,
    #         <code>rotateSecret</code> is ignored. </p>
    #   @return [Boolean]
    # @!attribute filter_groups
    #   <p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a
    #         webhook event can trigger a build. A filter group must contain at least one
    #         <code>EVENT</code>
    #               <code>WebhookFilter</code>. </p>
    #   @return [Array<Array<Types::WebhookFilter>>]
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #            <note>
    #               <p>
    #                  <code>RUNNER_BUILDKITE_BUILD</code> is only available for <code>NO_SOURCE</code> source type projects 
    #           configured for Buildkite runner builds. For more information about CodeBuild-hosted Buildkite runner builds, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html">Tutorial: Configure a CodeBuild-hosted Buildkite runner</a> in the <i>CodeBuild
    #           user guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute pull_request_build_policy
    #   <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    #   @return [Types::PullRequestBuildPolicy]
    class UpdateWebhookInput < Struct.new(
      :project_name,
      :branch_filter,
      :rotate_secret,
      :filter_groups,
      :build_type,
      :pull_request_build_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute webhook
    #   <p> Information about a repository's webhook that is associated with a project in CodeBuild.
    #       </p>
    #   @return [Types::Webhook]
    class UpdateWebhookOutput < Struct.new(
      :webhook,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the VPC configuration that CodeBuild accesses.</p>
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>A list of one or more subnet IDs in your Amazon VPC.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of one or more security groups IDs in your Amazon VPC.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a webhook that connects repository events to a build project in
    #       CodeBuild.</p>
    # @!attribute url
    #   <p>The URL to the webhook.</p>
    #   @return [String]
    # @!attribute payload_url
    #   <p>The CodeBuild endpoint where webhook events are sent.</p>
    #   @return [String]
    # @!attribute secret
    #   <p>The secret token of the associated repository. </p>
    #            <note>
    #               <p>A Bitbucket webhook does not support <code>secret</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #   @return [String]
    # @!attribute filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    #   @return [Array<Array<Types::WebhookFilter>>]
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #            <note>
    #               <p>
    #                  <code>RUNNER_BUILDKITE_BUILD</code> is only available for <code>NO_SOURCE</code> source type projects 
    #           configured for Buildkite runner builds. For more information about CodeBuild-hosted Buildkite runner builds, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-runner-buildkite.html">Tutorial: Configure a CodeBuild-hosted Buildkite runner</a> in the <i>CodeBuild
    #           user guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute manual_creation
    #   <p>If manualCreation is true, CodeBuild doesn't create a webhook in GitHub and instead returns <code>payloadUrl</code> and 
    #         <code>secret</code> values for the webhook. The <code>payloadUrl</code> and <code>secret</code> values in the output can 
    #         be used to manually create a webhook within GitHub.</p>
    #            <note>
    #               <p>manualCreation is only available for GitHub webhooks.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute last_modified_secret
    #   <p>A timestamp that indicates the last time a repository's secret token was modified.
    #       </p>
    #   @return [Time]
    # @!attribute scope_configuration
    #   <p>The scope configuration for global or organization webhooks.</p>
    #            <note>
    #               <p>Global or organization webhooks are only available for GitHub and Github Enterprise webhooks.</p>
    #            </note>
    #   @return [Types::ScopeConfiguration]
    # @!attribute status
    #   <p>The status of the webhook. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code>: The webhook is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code>: The webhook has failed to create.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code>: The webhook has succeeded and is active.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code>: The webhook is being deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_message
    #   <p>A message associated with the status of a webhook.</p>
    #   @return [String]
    # @!attribute pull_request_build_policy
    #   <p>A PullRequestBuildPolicy object that defines comment-based approval requirements for triggering builds on pull requests. This policy helps control when automated builds are executed based on contributor permissions and approval workflows.</p>
    #   @return [Types::PullRequestBuildPolicy]
    class Webhook < Struct.new(
      :url,
      :payload_url,
      :secret,
      :branch_filter,
      :filter_groups,
      :build_type,
      :manual_creation,
      :last_modified_secret,
      :scope_configuration,
      :status,
      :status_message,
      :pull_request_build_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WebhookBuildType
      BUILD = 'BUILD'
      BUILD_BATCH = 'BUILD_BATCH'
      RUNNER_BUILDKITE_BUILD = 'RUNNER_BUILDKITE_BUILD'
    end

    # <p>A filter used to determine which webhooks trigger a build. </p>
    # @!attribute type
    #   <p> The type of webhook filter. There are 11 webhook filter types: <code>EVENT</code>,
    #                   <code>ACTOR_ACCOUNT_ID</code>, <code>HEAD_REF</code>, <code>BASE_REF</code>,
    #               <code>FILE_PATH</code>, <code>COMMIT_MESSAGE</code>, <code>TAG_NAME</code>, <code>RELEASE_NAME</code>, 
    #               <code>REPOSITORY_NAME</code>, <code>ORGANIZATION_NAME</code>, 
    #               and <code>WORKFLOW_NAME</code>. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                       EVENT
    #                   </p>
    #                  <ul>
    #                     <li>
    #                        <p> A webhook event triggers a build when the provided <code>pattern</code>
    #                               matches one of nine event types: <code>PUSH</code>,
    #                               <code>PULL_REQUEST_CREATED</code>, <code>PULL_REQUEST_UPDATED</code>, 
    #                               <code>PULL_REQUEST_CLOSED</code>, <code>PULL_REQUEST_REOPENED</code>, 
    #                               <code>PULL_REQUEST_MERGED</code>, <code>RELEASED</code>, <code>PRERELEASED</code>, 
    #                               and <code>WORKFLOW_JOB_QUEUED</code>. The <code>EVENT</code> patterns are
    #                               specified as a comma-separated string. For example, <code>PUSH,
    #                                   PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> filters all push, pull
    #                               request created, and pull request updated events. </p>
    #                        <note>
    #                           <p> Types <code>PULL_REQUEST_REOPENED</code> and <code>WORKFLOW_JOB_QUEUED</code> 
    #                                   work with GitHub and GitHub Enterprise only. Types <code>RELEASED</code> and 
    #                                   <code>PRERELEASED</code> work with GitHub only.</p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>ACTOR_ACCOUNT_ID</p>
    #                  <ul>
    #                     <li>
    #                        <p> A webhook event triggers a build when a GitHub, GitHub Enterprise, or
    #                               Bitbucket account ID matches the regular expression <code>pattern</code>.
    #                           </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>HEAD_REF</p>
    #                  <ul>
    #                     <li>
    #                        <p> A webhook event triggers a build when the head reference matches the
    #                               regular expression <code>pattern</code>. For example,
    #                               <code>refs/heads/branch-name</code> and <code>refs/tags/tag-name</code>. </p>
    #                        <note>
    #                           <p> Works with GitHub and GitHub Enterprise push, GitHub and GitHub
    #                               Enterprise pull request, Bitbucket push, and Bitbucket pull request events.</p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>BASE_REF</p>
    #                  <ul>
    #                     <li>
    #                        <p> A webhook event triggers a build when the base reference matches the
    #                               regular expression <code>pattern</code>. For example,
    #                               <code>refs/heads/branch-name</code>. </p>
    #                        <note>
    #                           <p> Works with pull request events only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>FILE_PATH</p>
    #                  <ul>
    #                     <li>
    #                        <p> A webhook triggers a build when the path of a changed file matches the
    #                               regular expression <code>pattern</code>. </p>
    #                        <note>
    #                           <p> Works with push and pull request events only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>COMMIT_MESSAGE</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the head commit message matches the
    #                               regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with push and pull request events only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>TAG_NAME</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the tag name of the release matches the 
    #                               regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with <code>RELEASED</code> and <code>PRERELEASED</code> events only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>RELEASE_NAME</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the release name matches the 
    #                               regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with <code>RELEASED</code> and <code>PRERELEASED</code> events only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>REPOSITORY_NAME</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the repository name matches the 
    #                                   regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with GitHub global or organization webhooks only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>ORGANIZATION_NAME</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the organization name matches the 
    #                                   regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with GitHub global webhooks only. </p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>WORKFLOW_NAME</p>
    #                  <ul>
    #                     <li>
    #                        <p>A webhook triggers a build when the workflow name matches the 
    #                               regular expression <code>pattern</code>.</p>
    #                        <note>
    #                           <p> Works with <code>WORKFLOW_JOB_QUEUED</code> events only. </p>
    #                        </note>
    #                        <note>
    #                           <p>For CodeBuild-hosted Buildkite runner builds, WORKFLOW_NAME
    #                                   filters will filter by pipeline name.</p>
    #                        </note>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute pattern
    #   <p> For a <code>WebHookFilter</code> that uses <code>EVENT</code> type, a comma-separated
    #               string that specifies one or more events. For example, the webhook filter <code>PUSH,
    #                   PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> allows all push, pull request
    #               created, and pull request updated events to trigger a build. </p>
    #            <p> For a <code>WebHookFilter</code> that uses any of the other filter types, a regular
    #               expression pattern. For example, a <code>WebHookFilter</code> that uses
    #                   <code>HEAD_REF</code> for its <code>type</code> and the pattern
    #                   <code>^refs/heads/</code> triggers a build when the head reference is a branch with
    #               a reference name <code>refs/heads/branch-name</code>. </p>
    #   @return [String]
    # @!attribute exclude_matched_pattern
    #   <p> Used to indicate that the <code>pattern</code> determines which webhook events do not
    #               trigger a build. If true, then a webhook event that does not match the
    #                   <code>pattern</code> triggers a build. If false, then a webhook event that matches
    #               the <code>pattern</code> triggers a build. </p>
    #   @return [Boolean]
    class WebhookFilter < Struct.new(
      :type,
      :pattern,
      :exclude_matched_pattern,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module WebhookFilterType
      EVENT = 'EVENT'
      BASE_REF = 'BASE_REF'
      HEAD_REF = 'HEAD_REF'
      ACTOR_ACCOUNT_ID = 'ACTOR_ACCOUNT_ID'
      FILE_PATH = 'FILE_PATH'
      COMMIT_MESSAGE = 'COMMIT_MESSAGE'
      WORKFLOW_NAME = 'WORKFLOW_NAME'
      TAG_NAME = 'TAG_NAME'
      RELEASE_NAME = 'RELEASE_NAME'
      REPOSITORY_NAME = 'REPOSITORY_NAME'
      ORGANIZATION_NAME = 'ORGANIZATION_NAME'
    end

    module WebhookScopeType
      GITHUB_ORGANIZATION = 'GITHUB_ORGANIZATION'
      GITHUB_GLOBAL = 'GITHUB_GLOBAL'
      GITLAB_GROUP = 'GITLAB_GROUP'
    end

    module WebhookStatus
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
    end

  end
end
