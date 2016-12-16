# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeBuild
  module Types

    # @note When making an API call, you may pass BatchGetBuildsInput
    #   data as a hash:
    #
    #       {
    #         ids: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] ids
    #   The IDs of the builds to get information about.
    #   @return [Array<String>]
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
    #   The names of the build projects to get information about.
    #   @return [Array<String>]
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
    class BatchGetProjectsOutput < Struct.new(
      :projects,
      :projects_not_found)
      include Aws::Structure
    end

    # Information about a build.
    #
    # @!attribute [rw] id
    #   The build's unique ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The build's Amazon Resource Name (ARN).
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
    #   The build's current build phase.
    #   @return [String]
    #
    # @!attribute [rw] build_status
    #   The build's current status. Valid values include:
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
    # @!attribute [rw] project_name
    #   The build project's name.
    #   @return [String]
    #
    # @!attribute [rw] phases
    #   Information about all previous build phases that have completed, and
    #   information about any current build phase that has not yet
    #   completed.
    #   @return [Array<Types::BuildPhase>]
    #
    # @!attribute [rw] source
    #   Information about the source code to be built.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] artifacts
    #   Information about the build's output artifacts.
    #   @return [Types::BuildArtifacts]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] logs
    #   Information about the build's logs in Amazon CloudWatch Logs.
    #   @return [Types::LogsLocation]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long in minutes for AWS CodeBuild to wait to timeout this build
    #   if it does not get marked as completed.
    #   @return [Integer]
    #
    # @!attribute [rw] build_complete
    #   Whether the build has finished. Valid values include true if
    #   completed; otherwise, false.
    #   @return [Boolean]
    #
    # @!attribute [rw] initiator
    #   The entity that started the build. Valid values include:
    #
    #   * If AWS CodePipeline started the build, the pipeline's name, for
    #     example `codepipeline/my-demo-pipeline`.
    #
    #   * If an AWS Identity and Access Management (IAM) user started the
    #     build, the user's name, for example `MyUserName`.
    #
    #   * If the Jenkins plugin for AWS CodeBuild started the build, the
    #     string `CodeBuild-Jenkins-Plugin`.
    #   @return [String]
    #
    class Build < Struct.new(
      :id,
      :arn,
      :start_time,
      :end_time,
      :current_phase,
      :build_status,
      :source_version,
      :project_name,
      :phases,
      :source,
      :artifacts,
      :environment,
      :logs,
      :timeout_in_minutes,
      :build_complete,
      :initiator)
      include Aws::Structure
    end

    # Information about build output artifacts.
    #
    # @!attribute [rw] location
    #   Information about the build artifacts' location.
    #   @return [String]
    #
    # @!attribute [rw] sha256sum
    #   The SHA-256 hash of the build artifact.
    #
    #   You can use this hash along with a checksum tool to confirm both
    #   file integrity and authenticity.
    #
    #   <note markdown="1"> This value is available only if the related build project's
    #   `packaging` value is set to `ZIP`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] md5sum
    #   The MD5 hash of the build artifact.
    #
    #   You can use this hash along with a checksum tool to confirm both
    #   file integrity and authenticity.
    #
    #   <note markdown="1"> This value is available only if the related build project's
    #   `packaging` value is set to `ZIP`.
    #
    #    </note>
    #   @return [String]
    #
    class BuildArtifacts < Struct.new(
      :location,
      :sha256sum,
      :md5sum)
      include Aws::Structure
    end

    # Information about a stage for a build.
    #
    # @!attribute [rw] phase_type
    #   The build phase's name. Valid values include:
    #
    #   * `BUILD`\: Core build activities typically occur in this build
    #     phase.
    #
    #   * `COMPLETED`\: The build has completed.
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
    #   * `SUBMITTED`\: The build has been submitted.
    #
    #   * `UPLOAD_ARTIFACTS`\: Build output artifacts are being uploaded to
    #     output location.
    #   @return [String]
    #
    # @!attribute [rw] phase_status
    #   The build phase's current status. Valid values include:
    #
    #   * `FAILED`\: The build phase failed.
    #
    #   * `FAULT`\: The build phase faulted.
    #
    #   * `IN_PROGRESS`\: The build phase is still in progress.
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
    #   How long, in seconds, between the build's phase starting and ending
    #   times.
    #   @return [Integer]
    #
    # @!attribute [rw] contexts
    #   Additional information about a build phase, especially to help
    #   troubleshoot a failed build.
    #   @return [Array<Types::PhaseContext>]
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

    # @note When making an API call, you may pass CreateProjectInput
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         description: "ProjectDescription",
    #         source: { # required
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3
    #           location: "String",
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH", # required, accepts OAUTH
    #             resource: "String",
    #           },
    #         },
    #         artifacts: { # required
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #         },
    #         environment: { # required
    #           type: "LINUX_CONTAINER", # required, accepts LINUX_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #             },
    #           ],
    #         },
    #         service_role: "NonEmptyString",
    #         timeout_in_minutes: 1,
    #         encryption_key: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The build project's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build project's build input source code.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] artifacts
    #   Information about the build project's build output artifacts.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] environment
    #   Information about the build project's build environment.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that enables AWS CodeBuild to interact with
    #   dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait until timing out any related build that does not get marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build project's build output
    #   artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    class CreateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :artifacts,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :encryption_key,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   Information about the build project that was created.
    #   @return [Types::Project]
    #
    class CreateProjectOutput < Struct.new(
      :project)
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
    #   The name of the build project to delete.
    #   @return [String]
    #
    class DeleteProjectInput < Struct.new(
      :name)
      include Aws::Structure
    end

    class DeleteProjectOutput < Aws::EmptyStructure; end

    # Information about a Docker image that is managed by AWS CodeBuild.
    #
    # @!attribute [rw] name
    #   The Docker image's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The Docker image's description.
    #   @return [String]
    #
    class EnvironmentImage < Struct.new(
      :name,
      :description)
      include Aws::Structure
    end

    # A set of Docker images that are related by programming language and
    # are managed by AWS CodeBuild.
    #
    # @!attribute [rw] language
    #   The programming language for the related set of Docker images.
    #   @return [String]
    #
    # @!attribute [rw] images
    #   The list of Docker images that are related by the specified
    #   programming language.
    #   @return [Array<Types::EnvironmentImage>]
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
    #       }
    #
    # @!attribute [rw] name
    #   The environment variable's name or key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The environment variable's value.
    #   @return [String]
    #
    class EnvironmentVariable < Struct.new(
      :name,
      :value)
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
    #   The name of the build project to get a list of build IDs for.
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
    class ListBuildsOutput < Struct.new(
      :ids,
      :next_token)
      include Aws::Structure
    end

    # @api private
    #
    class ListCuratedEnvironmentImagesInput < Aws::EmptyStructure; end

    # @!attribute [rw] platforms
    #   Information about supported platforms for Docker images that are
    #   managed by AWS CodeBuild.
    #   @return [Array<Types::EnvironmentPlatform>]
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
    #   * `CREATED_TIME`\: List the build project names based on when each
    #     build project was created.
    #
    #   * `LAST_MODIFIED_TIME`\: List the build project names based on when
    #     information about each build project was last changed.
    #
    #   * `NAME`\: List the build project names based on each build
    #     project's name.
    #
    #   Use `sortOrder` to specify in what order to list the build project
    #   names based on the preceding criteria.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order in which to list build projects. Valid values include:
    #
    #   * `ASCENDING`\: List the build project names in ascending order.
    #
    #   * `DESCENDING`\: List the build project names in descending order.
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
    class ListProjectsOutput < Struct.new(
      :next_token,
      :projects)
      include Aws::Structure
    end

    # Information about build logs in Amazon CloudWatch Logs.
    #
    # @!attribute [rw] group_name
    #   The name of the Amazon CloudWatch Logs group for the associated
    #   build logs.
    #   @return [String]
    #
    # @!attribute [rw] stream_name
    #   The name of the Amazon CloudWatch Logs stream for the associated
    #   build logs.
    #   @return [String]
    #
    # @!attribute [rw] deep_link
    #   The URL to an individual build log in Amazon CloudWatch Logs.
    #   @return [String]
    #
    class LogsLocation < Struct.new(
      :group_name,
      :stream_name,
      :deep_link)
      include Aws::Structure
    end

    # Additional information about a build phase that has an error, which
    # you can use to help troubleshoot a failed build.
    #
    # @!attribute [rw] status_code
    #   The status code for the context of the build phase.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of the build phase's context. This explanation may
    #   include a command ID and an exit code.
    #   @return [String]
    #
    class PhaseContext < Struct.new(
      :status_code,
      :message)
      include Aws::Structure
    end

    # Information about a build project.
    #
    # @!attribute [rw] name
    #   The build project's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The build project's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A meaningful description of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information about the build project's build input source code.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] artifacts
    #   Information about the build project's build output artifacts.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] environment
    #   Information about the build environment for this build project.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that enables AWS CodeBuild to interact with
    #   dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   How long in minutes, from 5 to 480 (8 hours), for AWS CodeBuild to
    #   wait to timeout any related build that did not get marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build project's build output
    #   artifacts.
    #
    #   This is expressed either as the CMK's Amazon Resource Name (ARN)
    #   or, if specified, the CMK's alias (using the format
    #   `alias/alias-name `).
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
    class Project < Struct.new(
      :name,
      :arn,
      :description,
      :source,
      :artifacts,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :encryption_key,
      :tags,
      :created,
      :last_modified)
      include Aws::Structure
    end

    # Information about the build project's build output artifacts.
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
    #       }
    #
    # @!attribute [rw] type
    #   The build output artifact's type. Valid values include:
    #
    #   * `CODEPIPELINE`\: The build project with have build output
    #     generated through AWS CodePipeline.
    #
    #   * `NO_ARTIFACTS`\: The build project will not produce any build
    #     output.
    #
    #   * `S3`\: The build project will store build output in Amazon Simple
    #     Storage Service (Amazon S3).
    #   @return [String]
    #
    # @!attribute [rw] location
    #   Information about the build output artifact location, as follows:
    #
    #   * If `type` is set to `CODEPIPELINE`, then AWS CodePipeline will
    #     ignore this value if specified. This is because AWS CodePipeline
    #     manages its build output locations instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, then this value will be
    #     ignored if specified, because no build output will be produced.
    #
    #   * If `type` is set to `S3`, this is the name of the output bucket.
    #     If `path` is not also specified, then `location` can also specify
    #     the path of the output artifact in the output bucket.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   Along with `namespaceType` and `name`, the pattern that AWS
    #   CodeBuild will use to name and store the output artifact, as
    #   follows:
    #
    #   * If `type` is set to `CODEPIPELINE`, then AWS CodePipeline will
    #     ignore this value if specified. This is because AWS CodePipeline
    #     manages its build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, then this value will be
    #     ignored if specified, because no build output will be produced.
    #
    #   * If `type` is set to `S3`, this is the path to the output artifact.
    #     If `path` is not specified, then `path` will not be used.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `NONE`, and `name` is set to `MyArtifact.zip`, then the
    #   output artifact would be stored in the output bucket at
    #   `MyArtifacts/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] namespace_type
    #   Along with `path` and `name`, the pattern that AWS CodeBuild will
    #   use to determine the name and location to store the output artifact,
    #   as follows:
    #
    #   * If `type` is set to `CODEPIPELINE`, then AWS CodePipeline will
    #     ignore this value if specified. This is because AWS CodePipeline
    #     manages its build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, then this value will be
    #     ignored if specified, because no build output will be produced.
    #
    #   * If `type` is set to `S3`, then valid values include:
    #
    #     * `BUILD_ID`\: Include the build ID in the location of the build
    #       output artifact.
    #
    #     * `NONE`\: Do not include the build ID. This is the default if
    #       `namespaceType` is not specified.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `BUILD_ID`, and `name` is set to `MyArtifact.zip`, then the
    #   output artifact would be stored in
    #   `MyArtifacts/build-ID/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Along with `path` and `namespaceType`, the pattern that AWS
    #   CodeBuild will use to name and store the output artifact, as
    #   follows:
    #
    #   * If `type` is set to `CODEPIPELINE`, then AWS CodePipeline will
    #     ignore this value if specified. This is because AWS CodePipeline
    #     manages its build output names instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, then this value will be
    #     ignored if specified, because no build output will be produced.
    #
    #   * If `type` is set to `S3`, this is the name of the output artifact
    #     object.
    #
    #   For example, if `path` is set to `MyArtifacts`, `namespaceType` is
    #   set to `BUILD_ID`, and `name` is set to `MyArtifact.zip`, then the
    #   output artifact would be stored in
    #   `MyArtifacts/build-ID/MyArtifact.zip`.
    #   @return [String]
    #
    # @!attribute [rw] packaging
    #   The type of build output artifact to create, as follows:
    #
    #   * If `type` is set to `CODEPIPELINE`, then AWS CodePipeline will
    #     ignore this value if specified. This is because AWS CodePipeline
    #     manages its build output artifacts instead of AWS CodeBuild.
    #
    #   * If `type` is set to `NO_ARTIFACTS`, then this value will be
    #     ignored if specified, because no build output will be produced.
    #
    #   * If `type` is set to `S3`, valid values include:
    #
    #     * `NONE`\: AWS CodeBuild will create in the output bucket a folder
    #       containing the build output. This is the default if `packaging`
    #       is not specified.
    #
    #     * `ZIP`\: AWS CodeBuild will create in the output bucket a ZIP
    #       file containing the build output.
    #   @return [String]
    #
    class ProjectArtifacts < Struct.new(
      :type,
      :location,
      :path,
      :namespace_type,
      :name,
      :packaging)
      include Aws::Structure
    end

    # Information about the build project's build environment.
    #
    # @note When making an API call, you may pass ProjectEnvironment
    #   data as a hash:
    #
    #       {
    #         type: "LINUX_CONTAINER", # required, accepts LINUX_CONTAINER
    #         image: "NonEmptyString", # required
    #         compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #         environment_variables: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
    #
    #   The only valid value is `LINUX_CONTAINER`, which represents a
    #   Linux-based build environment.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The ID of the Docker image to use for this build project.
    #   @return [String]
    #
    # @!attribute [rw] compute_type
    #   Information about the compute resources the build project will use.
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
    class ProjectEnvironment < Struct.new(
      :type,
      :image,
      :compute_type,
      :environment_variables)
      include Aws::Structure
    end

    # Information about the build project's build input source code.
    #
    # @note When making an API call, you may pass ProjectSource
    #   data as a hash:
    #
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3
    #         location: "String",
    #         buildspec: "String",
    #         auth: {
    #           type: "OAUTH", # required, accepts OAUTH
    #           resource: "String",
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of repository that contains the source code to be built.
    #   Valid values include:
    #
    #   * `CODECOMMIT`\: The source code is in an AWS CodeCommit repository.
    #
    #   * `CODEPIPELINE`\: The source code settings are specified in the
    #     source action of a pipeline in AWS CodePipeline.
    #
    #   * `GITHUB`\: The source code is in a GitHub repository.
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
    #     specified. If it is specified, AWS CodePipeline will ignore it.
    #     This is because AWS CodePipeline uses the settings in a
    #     pipeline's source action instead of this value.
    #
    #   * For source code in an AWS CodeCommit repository, the HTTPS clone
    #     URL to the repository that contains the source code and the build
    #     spec (for example,
    #     `https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name
    #     `).
    #
    #   * For source code in an Amazon Simple Storage Service (Amazon S3)
    #     input bucket, the path to the ZIP file that contains the source
    #     code (for example, ` bucket-name/path/to/object-name.zip`)
    #
    #   * For source code in a GitHub repository, the HTTPS clone URL,
    #     including the user name and personal access token, to the
    #     repository that contains the source code and the build spec (for
    #     example,
    #     `https://login-user-name:personal-access-token@github.com/repo-owner-name/repo-name.git`).
    #     For more information, see [Creating an Access Token for
    #     Command-Line Use][1] on the GitHub Help website.
    #
    #
    #
    #   [1]: https://help.github.com/articles/creating-an-access-token-for-command-line-use/
    #   @return [String]
    #
    # @!attribute [rw] buildspec
    #   The build spec declaration to use for this build project's related
    #   builds.
    #
    #   If this value is not specified, a build spec must be included along
    #   with the source code to be built.
    #   @return [String]
    #
    # @!attribute [rw] auth
    #   Information about the authorization settings for AWS CodeBuild to
    #   access the source code to be built.
    #
    #   This information is only for the AWS CodeBuild console's use. Your
    #   code should not get or set this information directly.
    #   @return [Types::SourceAuth]
    #
    class ProjectSource < Struct.new(
      :type,
      :location,
      :buildspec,
      :auth)
      include Aws::Structure
    end

    # Information about the authorization settings for AWS CodeBuild to
    # access the source code to be built.
    #
    # This information is only for the AWS CodeBuild console's use. Your
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
    #   The authorization type to use. The only valid value is `OAUTH`,
    #   which represents the OAuth authorization type.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The resource value that applies to the specified authorization type.
    #   @return [String]
    #
    class SourceAuth < Struct.new(
      :type,
      :resource)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBuildInput
    #   data as a hash:
    #
    #       {
    #         project_name: "NonEmptyString", # required
    #         source_version: "String",
    #         artifacts_override: {
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #         },
    #         environment_variables_override: [
    #           {
    #             name: "NonEmptyString", # required
    #             value: "String", # required
    #           },
    #         ],
    #         buildspec_override: "String",
    #         timeout_in_minutes_override: 1,
    #       }
    #
    # @!attribute [rw] project_name
    #   The name of the build project to start running a build.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   A version of the build input to be built, for this build only. If
    #   not specified, the latest version will be used. If specified, must
    #   be one of:
    #
    #   * For AWS CodeCommit or GitHub: the commit ID to use.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of
    #     the object representing the build input ZIP file to use.
    #   @return [String]
    #
    # @!attribute [rw] artifacts_override
    #   Build output artifact settings that override, for this build only,
    #   the latest ones already defined in the corresponding build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the corresponding build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] buildspec_override
    #   A build spec declaration that overrides, for this build only, the
    #   latest one already defined in the corresponding build project.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 480 (8 hours) that
    #   overrides, for this build only, the latest setting already defined
    #   in the corresponding build project.
    #   @return [Integer]
    #
    class StartBuildInput < Struct.new(
      :project_name,
      :source_version,
      :artifacts_override,
      :environment_variables_override,
      :buildspec_override,
      :timeout_in_minutes_override)
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Information about the build to be run.
    #   @return [Types::Build]
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
    #   The ID of the build to attempt to stop running.
    #   @return [String]
    #
    class StopBuildInput < Struct.new(
      :id)
      include Aws::Structure
    end

    # @!attribute [rw] build
    #   Information about the build that was attempted to be stopped.
    #   @return [Types::Build]
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
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3
    #           location: "String",
    #           buildspec: "String",
    #           auth: {
    #             type: "OAUTH", # required, accepts OAUTH
    #             resource: "String",
    #           },
    #         },
    #         artifacts: {
    #           type: "CODEPIPELINE", # required, accepts CODEPIPELINE, S3, NO_ARTIFACTS
    #           location: "String",
    #           path: "String",
    #           namespace_type: "NONE", # accepts NONE, BUILD_ID
    #           name: "String",
    #           packaging: "NONE", # accepts NONE, ZIP
    #         },
    #         environment: {
    #           type: "LINUX_CONTAINER", # required, accepts LINUX_CONTAINER
    #           image: "NonEmptyString", # required
    #           compute_type: "BUILD_GENERAL1_SMALL", # required, accepts BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE
    #           environment_variables: [
    #             {
    #               name: "NonEmptyString", # required
    #               value: "String", # required
    #             },
    #           ],
    #         },
    #         service_role: "NonEmptyString",
    #         timeout_in_minutes: 1,
    #         encryption_key: "NonEmptyString",
    #         tags: [
    #           {
    #             key: "KeyInput",
    #             value: "ValueInput",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the existing build project to change settings.
    #
    #   <note markdown="1"> You cannot change an existing build project's name.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A new or replacement description of the build project.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Information to be changed about the build project's build input
    #   source code.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] artifacts
    #   Information to be changed about the build project's build output
    #   artifacts.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] environment
    #   Information to be changed about the build project's build
    #   environment.
    #   @return [Types::ProjectEnvironment]
    #
    # @!attribute [rw] service_role
    #   The replacement Amazon Resource Name (ARN) of the AWS Identity and
    #   Access Management (IAM) role that enables AWS CodeBuild to interact
    #   with dependent AWS services on behalf of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes
    #   The replacement value in minutes, from 5 to 480 (8 hours), for AWS
    #   CodeBuild to wait to timeout any related build that did not get
    #   marked as completed.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The replacement AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) to be used for encrypting the build project's build
    #   output artifacts.
    #
    #   You can specify either the CMK's Amazon Resource Name (ARN) or, if
    #   available, the CMK's alias (using the format `alias/alias-name `).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The replacement set of tags for this build project.
    #
    #   These tags are available for use by AWS services that support AWS
    #   CodeBuild build project tags.
    #   @return [Array<Types::Tag>]
    #
    class UpdateProjectInput < Struct.new(
      :name,
      :description,
      :source,
      :artifacts,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :encryption_key,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] project
    #   Information about the build project that was changed.
    #   @return [Types::Project]
    #
    class UpdateProjectOutput < Struct.new(
      :project)
      include Aws::Structure
    end

  end
end
