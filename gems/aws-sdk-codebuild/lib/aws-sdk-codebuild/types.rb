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
    # @!attribute [rw] project_name
    #   The name of the build project.
    #   @return [String]
    #
    # @!attribute [rw] phases
    #   Information about all previous build phases that are completed and
    #   information about any current build phase that is not yet complete.
    #   @return [Array<Types::BuildPhase>]
    #
    # @!attribute [rw] source
    #   Information about the source code to be built.
    #   @return [Types::ProjectSource]
    #
    # @!attribute [rw] artifacts
    #   Information about the output artifacts for the build.
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
    #   How long, in minutes, for AWS CodeBuild to wait before timing out
    #   this build if it does not get marked as completed.
    #   @return [Integer]
    #
    # @!attribute [rw] build_complete
    #   Whether the build has finished. True if completed; otherwise, false.
    #   @return [Boolean]
    #
    # @!attribute [rw] initiator
    #   The entity that started the build. Valid values include:
    #
    #   * If AWS CodePipeline started the build, the pipeline's name (for
    #     example, `codepipeline/my-demo-pipeline`).
    #
    #   * If an AWS Identity and Access Management (IAM) user started the
    #     build, the user's name (for example `MyUserName`).
    #
    #   * If the Jenkins plugin for AWS CodeBuild started the build, the
    #     string `CodeBuild-Jenkins-Plugin`.
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
    #   Information about the location of the build artifacts.
    #   @return [String]
    #
    # @!attribute [rw] sha256sum
    #   The SHA-256 hash of the build artifact.
    #
    #   You can use this hash along with a checksum tool to confirm both
    #   file integrity and authenticity.
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
    #   You can use this hash along with a checksum tool to confirm both
    #   file integrity and authenticity.
    #
    #   <note markdown="1"> This value is available only if the build project's `packaging`
    #   value is set to `ZIP`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/BuildArtifacts AWS API Documentation
    #
    class BuildArtifacts < Struct.new(
      :location,
      :sha256sum,
      :md5sum)
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

    # @note When making an API call, you may pass CreateProjectInput
    #   data as a hash:
    #
    #       {
    #         name: "ProjectName", # required
    #         description: "ProjectDescription",
    #         source: { # required
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET
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
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #             },
    #           ],
    #           privileged_mode: false,
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
    # @!attribute [rw] artifacts
    #   Information about the build output artifacts for the build project.
    #   @return [Types::ProjectArtifacts]
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
    #   wait until timing out any build that has not been marked as
    #   completed. The default is 60 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProjectInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/CreateProjectOutput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/EnvironmentImage AWS API Documentation
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
    #   We strongly discourage using environment variables to store
    #   sensitive values, especially AWS secret key IDs and secret access
    #   keys. Environment variables can be displayed in plain text using
    #   tools such as the AWS CodeBuild console and the AWS Command Line
    #   Interface (AWS CLI).
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
    #   The name of the build project.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/LogsLocation AWS API Documentation
    #
    class LogsLocation < Struct.new(
      :group_name,
      :stream_name,
      :deep_link)
      include Aws::Structure
    end

    # Additional information about a build phase that has an error. You can
    # use this information to help troubleshoot a failed build.
    #
    # @!attribute [rw] status_code
    #   The status code for the context of the build phase.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of the build phase's context. This explanation might
    #   include a command ID and an exit code.
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
    # @!attribute [rw] artifacts
    #   Information about the build output artifacts for the build project.
    #   @return [Types::ProjectArtifacts]
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
    # @!attribute [rw] encryption_key
    #   The AWS Key Management Service (AWS KMS) customer master key (CMK)
    #   to be used for encrypting the build output artifacts.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/Project AWS API Documentation
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
    #       }
    #
    # @!attribute [rw] type
    #   The type of build output artifact. Valid values include:
    #
    #   * `CODEPIPELINE`\: The build project will have build output
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectArtifacts AWS API Documentation
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

    # Information about the build environment of the build project.
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
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #           },
    #         ],
    #         privileged_mode: false,
    #       }
    #
    # @!attribute [rw] type
    #   The type of build environment to use for related builds.
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
    # @!attribute [rw] privileged_mode
    #   If set to true, enables running the Docker daemon inside a Docker
    #   container; otherwise, false or not specified (the default). This
    #   value must be set to true only if this build project will be used to
    #   build Docker images, and the specified build environment image is
    #   not one provided by AWS CodeBuild with Docker support. Otherwise,
    #   all associated builds that attempt to interact with the Docker
    #   daemon will fail. Note that you must also start the Docker daemon so
    #   that your builds can interact with it as needed. One way to do this
    #   is to initialize the Docker daemon in the install phase of your
    #   build spec by running the following build commands. (Do not run the
    #   following build commands if the specified build environment image is
    #   provided by AWS CodeBuild with Docker support.)
    #
    #   `- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
    #   --host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout -t 15
    #   sh -c "until docker info; do echo .; sleep 1; done"`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectEnvironment AWS API Documentation
    #
    class ProjectEnvironment < Struct.new(
      :type,
      :image,
      :compute_type,
      :environment_variables,
      :privileged_mode)
      include Aws::Structure
    end

    # Information about the build input source code for the build project.
    #
    # @note When making an API call, you may pass ProjectSource
    #   data as a hash:
    #
    #       {
    #         type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET
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
    #   * `BITBUCKET`\: The source code is in a Bitbucket repository.
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
    #   * For source code in a GitHub repository, the HTTPS clone URL to the
    #     repository that contains the source and the build spec. Also, you
    #     must connect your AWS account to your GitHub account. To do this,
    #     use the AWS CodeBuild console to begin creating a build project.
    #     When you use the console to connect (or reconnect) with GitHub, on
    #     the GitHub **Authorize application** page that displays, for
    #     **Organization access**, choose **Request access** next to each
    #     repository you want to allow AWS CodeBuild to have access to. Then
    #     choose **Authorize application**. (After you have connected to
    #     your GitHub account, you do not need to finish creating the build
    #     project, and you may then leave the AWS CodeBuild console.) To
    #     instruct AWS CodeBuild to then use this connection, in the
    #     `source` object, set the `auth` object's `type` value to `OAUTH`.
    #
    #   * For source code in a Bitbucket repository, the HTTPS clone URL to
    #     the repository that contains the source and the build spec. Also,
    #     you must connect your AWS account to your Bitbucket account. To do
    #     this, use the AWS CodeBuild console to begin creating a build
    #     project. When you use the console to connect (or reconnect) with
    #     Bitbucket, on the Bitbucket **Confirm access to your account**
    #     page that displays, choose **Grant access**. (After you have
    #     connected to your Bitbucket account, you do not need to finish
    #     creating the build project, and you may then leave the AWS
    #     CodeBuild console.) To instruct AWS CodeBuild to then use this
    #     connection, in the `source` object, set the `auth` object's
    #     `type` value to `OAUTH`.
    #   @return [String]
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
    #   code should not get or set this information directly (unless the
    #   build project's source `type` value is `BITBUCKET` or `GITHUB`).
    #   @return [Types::SourceAuth]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/ProjectSource AWS API Documentation
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
    # This information is for the AWS CodeBuild console's use only. Your
    # code should not get or set this information directly (unless the build
    # project's source `type` value is `BITBUCKET` or `GITHUB`).
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/SourceAuth AWS API Documentation
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
    #             type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
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
    #   * For AWS CodeCommit: the commit ID to use.
    #
    #   * For GitHub: the commit ID, pull request ID, branch name, or tag
    #     name that corresponds to the version of the source code you want
    #     to build. If a pull request ID is specified, it must use the
    #     format `pr/pull-request-ID` (for example `pr/25`). If a branch
    #     name is specified, the branch's HEAD commit ID will be used. If
    #     not specified, the default branch's HEAD commit ID will be used.
    #
    #   * For Bitbucket: the commit ID, branch name, or tag name that
    #     corresponds to the version of the source code you want to build.
    #     If a branch name is specified, the branch's HEAD commit ID will
    #     be used. If not specified, the default branch's HEAD commit ID
    #     will be used.
    #
    #   * For Amazon Simple Storage Service (Amazon S3): the version ID of
    #     the object representing the build input ZIP file to use.
    #   @return [String]
    #
    # @!attribute [rw] artifacts_override
    #   Build output artifact settings that override, for this build only,
    #   the latest ones already defined in the build project.
    #   @return [Types::ProjectArtifacts]
    #
    # @!attribute [rw] environment_variables_override
    #   A set of environment variables that overrides, for this build only,
    #   the latest ones already defined in the build project.
    #   @return [Array<Types::EnvironmentVariable>]
    #
    # @!attribute [rw] buildspec_override
    #   A build spec declaration that overrides, for this build only, the
    #   latest one already defined in the build project.
    #   @return [String]
    #
    # @!attribute [rw] timeout_in_minutes_override
    #   The number of build timeout minutes, from 5 to 480 (8 hours), that
    #   overrides, for this build only, the latest setting already defined
    #   in the build project.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/StartBuildInput AWS API Documentation
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
    #           type: "CODECOMMIT", # required, accepts CODECOMMIT, CODEPIPELINE, GITHUB, S3, BITBUCKET
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
    #               type: "PLAINTEXT", # accepts PLAINTEXT, PARAMETER_STORE
    #             },
    #           ],
    #           privileged_mode: false,
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
    # @!attribute [rw] artifacts
    #   Information to be changed about the build output artifacts for the
    #   build project.
    #   @return [Types::ProjectArtifacts]
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
    # @!attribute [rw] encryption_key
    #   The replacement AWS Key Management Service (AWS KMS) customer master
    #   key (CMK) to be used for encrypting the build output artifacts.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectInput AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codebuild-2016-10-06/UpdateProjectOutput AWS API Documentation
    #
    class UpdateProjectOutput < Struct.new(
      :project)
      include Aws::Structure
    end

  end
end
