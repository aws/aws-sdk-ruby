# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Amplify
  module Types

    # Represents the different branches of a repository for building,
    # deploying, and hosting an Amplify app.
    #
    # @!attribute [rw] app_id
    #   The unique ID of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag for the Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   The description for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Creates a date and time for the Amplify app.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Updates the date and time for the Amplify app.
    #   @return [Time]
    #
    # @!attribute [rw] iam_service_role_arn
    #   The AWS Identity and Access Management (IAM) service role for the
    #   Amazon Resource Name (ARN) of the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for the Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_domain
    #   The default domain for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enables the auto-building of branches for the Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_branch_auto_deletion
    #   Automatically disconnect a branch in the Amplify Console when you
    #   delete a branch from your Git repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for the Amplify app's branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for branches for the Amplify
    #   app.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   Describes the custom redirect and rewrite rules for the Amplify app.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] production_branch
    #   Describes the information about a production branch of the Amplify
    #   app.
    #   @return [Types::ProductionBranch]
    #
    # @!attribute [rw] build_spec
    #   Describes the content of the build specification (build spec) for
    #   the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   Describes the automated branch creation glob patterns for the
    #   Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   Describes the automated branch creation configuration for the
    #   Amplify app.
    #   @return [Types::AutoBranchCreationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/App AWS API Documentation
    #
    class App < Struct.new(
      :app_id,
      :app_arn,
      :name,
      :tags,
      :description,
      :repository,
      :platform,
      :create_time,
      :update_time,
      :iam_service_role_arn,
      :environment_variables,
      :default_domain,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :production_branch,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config)
      SENSITIVE = [:basic_auth_credentials]
      include Aws::Structure
    end

    # Describes an artifact.
    #
    # @!attribute [rw] artifact_file_name
    #   The file name for the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique ID for the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Artifact AWS API Documentation
    #
    class Artifact < Struct.new(
      :artifact_file_name,
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the automated branch creation configuration.
    #
    # @note When making an API call, you may pass AutoBranchCreationConfig
    #   data as a hash:
    #
    #       {
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName",
    #       }
    #
    # @!attribute [rw] stage
    #   Describes the current stage for the autocreated branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The framework for the autocreated branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto building for the autocreated branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for the autocreated branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for the autocreated branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for the autocreated branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_mode
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. Enabling
    #   performance mode will mean that hosting configuration or code
    #   changes can take up to 10 minutes to roll out.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) for the autocreated branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_pull_request_preview
    #   Enables pull request preview for the autocreated branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/AutoBranchCreationConfig AWS API Documentation
    #
    class AutoBranchCreationConfig < Struct.new(
      :stage,
      :framework,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :build_spec,
      :enable_pull_request_preview,
      :pull_request_environment_name)
      SENSITIVE = [:basic_auth_credentials]
      include Aws::Structure
    end

    # Describes the backend environment for an Amplify app.
    #
    # @!attribute [rw] backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is
    #   part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name for a backend environment that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The AWS CloudFormation stack name of a backend environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_artifacts
    #   The name of deployment artifacts.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The creation date and time for a backend environment that is part of
    #   an Amplify app.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The last updated date and time for a backend environment that is
    #   part of an Amplify app.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/BackendEnvironment AWS API Documentation
    #
    class BackendEnvironment < Struct.new(
      :backend_environment_arn,
      :environment_name,
      :stack_name,
      :deployment_artifacts,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request contains unexpected data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The branch for an Amplify app, which maps to a third-party repository
    # branch.
    #
    # @!attribute [rw] branch_arn
    #   The Amazon Resource Name (ARN) for a branch that is part of an
    #   Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag for the branch of an Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] stage
    #   The current stage for the branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for the branch. This is used as the default domain
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] enable_notification
    #   Enables notifications for a branch that is part of an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_time
    #   The creation date and time for a branch that is part of an Amplify
    #   app.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   The last updated date and time for a branch that is part of an
    #   Amplify app.
    #   @return [Time]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables specific to a branch of an Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto-building on push for a branch of an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_domains
    #   The custom domains for a branch of an Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] framework
    #   The framework for a branch of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] active_job_id
    #   The ID of the active job for a branch of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] total_number_of_jobs
    #   The total number of jobs that are part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for a branch of an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_mode
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. Enabling
    #   performance mode will mean that hosting configuration or code
    #   changes can take up to 10 minutes to roll out.
    #   @return [Boolean]
    #
    # @!attribute [rw] thumbnail_url
    #   The thumbnail URL for the branch of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for a branch of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) content for the branch of an
    #   Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content Time to Live (TTL) for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] associated_resources
    #   A list of custom resources that are linked to this branch.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_pull_request_preview
    #   Enables pull request preview for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #   @return [String]
    #
    # @!attribute [rw] destination_branch
    #   The destination branch if the branch is a pull request branch.
    #   @return [String]
    #
    # @!attribute [rw] source_branch
    #   The source branch if the branch is a pull request branch.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is
    #   part of an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Branch AWS API Documentation
    #
    class Branch < Struct.new(
      :branch_arn,
      :branch_name,
      :description,
      :tags,
      :stage,
      :display_name,
      :enable_notification,
      :create_time,
      :update_time,
      :environment_variables,
      :enable_auto_build,
      :custom_domains,
      :framework,
      :active_job_id,
      :total_number_of_jobs,
      :enable_basic_auth,
      :enable_performance_mode,
      :thumbnail_url,
      :basic_auth_credentials,
      :build_spec,
      :ttl,
      :associated_resources,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :destination_branch,
      :source_branch,
      :backend_environment_arn)
      SENSITIVE = [:basic_auth_credentials]
      include Aws::Structure
    end

    # The request structure used to create apps in Amplify.
    #
    # @note When making an API call, you may pass CreateAppRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         repository: "Repository",
    #         platform: "WEB", # accepts WEB
    #         iam_service_role_arn: "ServiceRoleArn",
    #         oauth_token: "OauthToken",
    #         access_token: "AccessToken",
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         enable_branch_auto_build: false,
    #         enable_branch_auto_deletion: false,
    #         enable_basic_auth: false,
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         custom_rules: [
    #           {
    #             source: "Source", # required
    #             target: "Target", # required
    #             status: "Status",
    #             condition: "Condition",
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         build_spec: "BuildSpec",
    #         enable_auto_branch_creation: false,
    #         auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #         auto_branch_creation_config: {
    #           stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #           framework: "Framework",
    #           enable_auto_build: false,
    #           environment_variables: {
    #             "EnvKey" => "EnvValue",
    #           },
    #           basic_auth_credentials: "BasicAuthCredentials",
    #           enable_basic_auth: false,
    #           enable_performance_mode: false,
    #           build_spec: "BuildSpec",
    #           enable_pull_request_preview: false,
    #           pull_request_environment_name: "PullRequestEnvironmentName",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name for the Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform or framework for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] iam_service_role_arn
    #   The AWS Identity and Access Management (IAM) service role for an
    #   Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] oauth_token
    #   The OAuth token for a third-party source control system for an
    #   Amplify app. The OAuth token is used to create a webhook and a
    #   read-only deploy key. The OAuth token is not stored.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The personal access token for a third-party source control system
    #   for an Amplify app. The personal access token is used to create a
    #   webhook and a read-only deploy key. The token is not stored.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables map for an Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enables the auto building of branches for an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_branch_auto_deletion
    #   Automatically disconnects a branch in the Amplify Console when you
    #   delete a branch from your Git repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for an Amplify app. This will apply to
    #   all branches that are part of this app.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The credentials for basic authorization for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   The custom rewrite and redirect rules for an Amplify app.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] tags
    #   The tag for an Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   The automated branch creation glob patterns for the Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   The automated branch creation configuration for the Amplify app.
    #   @return [Types::AutoBranchCreationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateAppRequest AWS API Documentation
    #
    class CreateAppRequest < Struct.new(
      :name,
      :description,
      :repository,
      :platform,
      :iam_service_role_arn,
      :oauth_token,
      :access_token,
      :environment_variables,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :tags,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config)
      SENSITIVE = [:oauth_token, :access_token, :basic_auth_credentials]
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   Represents the different branches of a repository for building,
    #   deploying, and hosting an Amplify app.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateAppResult AWS API Documentation
    #
    class CreateAppResult < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the backend environment create request.
    #
    # @note When making an API call, you may pass CreateBackendEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         environment_name: "EnvironmentName", # required
    #         stack_name: "StackName",
    #         deployment_artifacts: "DeploymentArtifacts",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name for the backend environment.
    #   @return [String]
    #
    # @!attribute [rw] stack_name
    #   The AWS CloudFormation stack name of a backend environment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_artifacts
    #   The name of deployment artifacts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBackendEnvironmentRequest AWS API Documentation
    #
    class CreateBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name,
      :stack_name,
      :deployment_artifacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the create backend environment request.
    #
    # @!attribute [rw] backend_environment
    #   Describes the backend environment for an Amplify app.
    #   @return [Types::BackendEnvironment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBackendEnvironmentResult AWS API Documentation
    #
    class CreateBackendEnvironmentResult < Struct.new(
      :backend_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the create branch request.
    #
    # @note When making an API call, you may pass CreateBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         description: "Description",
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #         framework: "Framework",
    #         enable_notification: false,
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         build_spec: "BuildSpec",
    #         ttl: "TTL",
    #         display_name: "DisplayName",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName",
    #         backend_environment_arn: "BackendEnvironmentArn",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the branch.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Describes the current stage for the branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The framework for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_notification
    #   Enables notifications for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto building for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_mode
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. Enabling
    #   performance mode will mean that hosting configuration or code
    #   changes can take up to 10 minutes to roll out.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tag for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) for the branch.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content Time To Live (TTL) for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for a branch. This is used as the default domain
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] enable_pull_request_preview
    #   Enables pull request preview for this branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is
    #   part of an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBranchRequest AWS API Documentation
    #
    class CreateBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      :description,
      :stage,
      :framework,
      :enable_notification,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :tags,
      :build_spec,
      :ttl,
      :display_name,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :backend_environment_arn)
      SENSITIVE = [:basic_auth_credentials]
      include Aws::Structure
    end

    # The result structure for create branch request.
    #
    # @!attribute [rw] branch
    #   Describes the branch for an Amplify app, which maps to a third-party
    #   repository branch.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBranchResult AWS API Documentation
    #
    class CreateBranchResult < Struct.new(
      :branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the create a new deployment request.
    #
    # @note When making an API call, you may pass CreateDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         file_map: {
    #           "FileName" => "MD5Hash",
    #         },
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch, for the job.
    #   @return [String]
    #
    # @!attribute [rw] file_map
    #   An optional file map that contains the file name as the key and the
    #   file content md5 hash as the value. If this argument is provided,
    #   the service will generate a unique upload URL per file. Otherwise,
    #   the service will only generate a single upload URL for the zipped
    #   files.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :file_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the create a new deployment request.
    #
    # @!attribute [rw] job_id
    #   The job ID for this deployment. will supply to start deployment api.
    #   @return [String]
    #
    # @!attribute [rw] file_upload_urls
    #   When the `fileMap` argument is provided in the request,
    #   `fileUploadUrls` will contain a map of file names to upload URLs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] zip_upload_url
    #   When the `fileMap` argument is not provided in the request, this
    #   `zipUploadUrl` is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDeploymentResult AWS API Documentation
    #
    class CreateDeploymentResult < Struct.new(
      :job_id,
      :file_upload_urls,
      :zip_upload_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the create domain association request.
    #
    # @note When making an API call, you may pass CreateDomainAssociationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         domain_name: "DomainName", # required
    #         enable_auto_sub_domain: false,
    #         sub_domain_settings: [ # required
    #           {
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #         ],
    #         auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #         auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name for the domain association.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables the automated creation of subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_domain_settings
    #   The setting for the subdomain.
    #   @return [Array<Types::SubDomainSetting>]
    #
    # @!attribute [rw] auto_sub_domain_creation_patterns
    #   Sets the branch patterns for automatic subdomain creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_sub_domain_iam_role
    #   The required AWS Identity and Access Management (IAM) service role
    #   for the Amazon Resource Name (ARN) for automatically creating
    #   subdomains.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociationRequest AWS API Documentation
    #
    class CreateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the create domain association request.
    #
    # @!attribute [rw] domain_association
    #   Describes the structure of a domain association, which associates a
    #   custom domain with an Amplify app.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociationResult AWS API Documentation
    #
    class CreateDomainAssociationResult < Struct.new(
      :domain_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the create webhook request.
    #
    # @note When making an API call, you may pass CreateWebhookRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for a branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateWebhookRequest AWS API Documentation
    #
    class CreateWebhookRequest < Struct.new(
      :app_id,
      :branch_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the create webhook request.
    #
    # @!attribute [rw] webhook
    #   Describes a webhook that connects repository events to an Amplify
    #   app.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateWebhookResult AWS API Documentation
    #
    class CreateWebhookResult < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a custom rewrite or redirect rule.
    #
    # @note When making an API call, you may pass CustomRule
    #   data as a hash:
    #
    #       {
    #         source: "Source", # required
    #         target: "Target", # required
    #         status: "Status",
    #         condition: "Condition",
    #       }
    #
    # @!attribute [rw] source
    #   The source pattern for a URL rewrite or redirect rule.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target pattern for a URL rewrite or redirect rule.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status code for a URL rewrite or redirect rule.
    #
    #   200
    #
    #   : Represents a 200 rewrite rule.
    #
    #   301
    #
    #   : Represents a 301 (moved pemanently) redirect rule. This and all
    #     future requests should be directed to the target URL.
    #
    #   302
    #
    #   : Represents a 302 temporary redirect rule.
    #
    #   404
    #
    #   : Represents a 404 redirect rule.
    #
    #   404-200
    #
    #   : Represents a 404 rewrite rule.
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition for a URL rewrite or redirect rule, such as a country
    #   code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CustomRule AWS API Documentation
    #
    class CustomRule < Struct.new(
      :source,
      :target,
      :status,
      :condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the request structure for the delete app request.
    #
    # @note When making an API call, you may pass DeleteAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the delete app request.
    #
    # @!attribute [rw] app
    #   Represents the different branches of a repository for building,
    #   deploying, and hosting an Amplify app.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteAppResult AWS API Documentation
    #
    class DeleteAppResult < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the delete backend environment request.
    #
    # @note When making an API call, you may pass DeleteBackendEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         environment_name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of a backend environment of an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBackendEnvironmentRequest AWS API Documentation
    #
    class DeleteBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure of the delete backend environment result.
    #
    # @!attribute [rw] backend_environment
    #   Describes the backend environment for an Amplify app.
    #   @return [Types::BackendEnvironment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBackendEnvironmentResult AWS API Documentation
    #
    class DeleteBackendEnvironmentResult < Struct.new(
      :backend_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the delete branch request.
    #
    # @note When making an API call, you may pass DeleteBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranchRequest AWS API Documentation
    #
    class DeleteBranchRequest < Struct.new(
      :app_id,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the delete branch request.
    #
    # @!attribute [rw] branch
    #   The branch for an Amplify app, which maps to a third-party
    #   repository branch.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranchResult AWS API Documentation
    #
    class DeleteBranchResult < Struct.new(
      :branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the delete domain association request.
    #
    # @note When making an API call, you may pass DeleteDomainAssociationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique id for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociationRequest AWS API Documentation
    #
    class DeleteDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_association
    #   Describes a domain association that associates a custom domain with
    #   an Amplify app.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociationResult AWS API Documentation
    #
    class DeleteDomainAssociationResult < Struct.new(
      :domain_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the delete job request.
    #
    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch, for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique ID for the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the delete job request.
    #
    # @!attribute [rw] job_summary
    #   Describes the summary for an execution job for an Amplify app.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJobResult AWS API Documentation
    #
    class DeleteJobResult < Struct.new(
      :job_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the delete webhook request.
    #
    # @note When making an API call, you may pass DeleteWebhookRequest
    #   data as a hash:
    #
    #       {
    #         webhook_id: "WebhookId", # required
    #       }
    #
    # @!attribute [rw] webhook_id
    #   The unique ID for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteWebhookRequest AWS API Documentation
    #
    class DeleteWebhookRequest < Struct.new(
      :webhook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the delete webhook request.
    #
    # @!attribute [rw] webhook
    #   Describes a webhook that connects repository events to an Amplify
    #   app.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteWebhookResult AWS API Documentation
    #
    class DeleteWebhookResult < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # An operation failed because a dependent service threw an exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DependentServiceFailureException AWS API Documentation
    #
    class DependentServiceFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a domain association that associates a custom domain with an
    # Amplify app.
    #
    # @!attribute [rw] domain_association_arn
    #   The Amazon Resource Name (ARN) for the domain association.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables the automated creation of subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_sub_domain_creation_patterns
    #   Sets branch patterns for automatic subdomain creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_sub_domain_iam_role
    #   The required AWS Identity and Access Management (IAM) service role
    #   for the Amazon Resource Name (ARN) for automatically creating
    #   subdomains.
    #   @return [String]
    #
    # @!attribute [rw] domain_status
    #   The current status of the domain association.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the domain association.
    #   @return [String]
    #
    # @!attribute [rw] certificate_verification_dns_record
    #   The DNS record for certificate verification.
    #   @return [String]
    #
    # @!attribute [rw] sub_domains
    #   The subdomains for the domain association.
    #   @return [Array<Types::SubDomain>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DomainAssociation AWS API Documentation
    #
    class DomainAssociation < Struct.new(
      :domain_association_arn,
      :domain_name,
      :enable_auto_sub_domain,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      :domain_status,
      :status_reason,
      :certificate_verification_dns_record,
      :sub_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the generate access logs request.
    #
    # @note When making an API call, you may pass GenerateAccessLogsRequest
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         domain_name: "DomainName", # required
    #         app_id: "AppId", # required
    #       }
    #
    # @!attribute [rw] start_time
    #   The time at which the logs should start. The time range specified is
    #   inclusive of the start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the logs should end. The time range specified is
    #   inclusive of the end time.
    #   @return [Time]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GenerateAccessLogsRequest AWS API Documentation
    #
    class GenerateAccessLogsRequest < Struct.new(
      :start_time,
      :end_time,
      :domain_name,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the generate access logs request.
    #
    # @!attribute [rw] log_url
    #   The pre-signed URL for the requested access logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GenerateAccessLogsResult AWS API Documentation
    #
    class GenerateAccessLogsResult < Struct.new(
      :log_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get app request.
    #
    # @note When making an API call, you may pass GetAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetAppRequest AWS API Documentation
    #
    class GetAppRequest < Struct.new(
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   Represents the different branches of a repository for building,
    #   deploying, and hosting an Amplify app.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetAppResult AWS API Documentation
    #
    class GetAppResult < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the request structure for the get artifact request.
    #
    # @note When making an API call, you may pass GetArtifactUrlRequest
    #   data as a hash:
    #
    #       {
    #         artifact_id: "ArtifactId", # required
    #       }
    #
    # @!attribute [rw] artifact_id
    #   The unique ID for an artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetArtifactUrlRequest AWS API Documentation
    #
    class GetArtifactUrlRequest < Struct.new(
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the result structure for the get artifact request.
    #
    # @!attribute [rw] artifact_id
    #   The unique ID for an artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_url
    #   The presigned URL for the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetArtifactUrlResult AWS API Documentation
    #
    class GetArtifactUrlResult < Struct.new(
      :artifact_id,
      :artifact_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get backend environment request.
    #
    # @note When making an API call, you may pass GetBackendEnvironmentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         environment_name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique id for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name for the backend environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBackendEnvironmentRequest AWS API Documentation
    #
    class GetBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the get backend environment result.
    #
    # @!attribute [rw] backend_environment
    #   Describes the backend environment for an Amplify app.
    #   @return [Types::BackendEnvironment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBackendEnvironmentResult AWS API Documentation
    #
    class GetBackendEnvironmentResult < Struct.new(
      :backend_environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get branch request.
    #
    # @note When making an API call, you may pass GetBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranchRequest AWS API Documentation
    #
    class GetBranchRequest < Struct.new(
      :app_id,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] branch
    #   The branch for an Amplify app, which maps to a third-party
    #   repository branch.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranchResult AWS API Documentation
    #
    class GetBranchResult < Struct.new(
      :branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get domain association request.
    #
    # @note When making an API call, you may pass GetDomainAssociationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         domain_name: "DomainName", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique id for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociationRequest AWS API Documentation
    #
    class GetDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the get domain association request.
    #
    # @!attribute [rw] domain_association
    #   Describes the structure of a domain association, which associates a
    #   custom domain with an Amplify app.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociationResult AWS API Documentation
    #
    class GetDomainAssociationResult < Struct.new(
      :domain_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get job request.
    #
    # @note When making an API call, you may pass GetJobRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch name for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique ID for the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Describes an execution job for an Amplify app.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJobResult AWS API Documentation
    #
    class GetJobResult < Struct.new(
      :job)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the get webhook request.
    #
    # @note When making an API call, you may pass GetWebhookRequest
    #   data as a hash:
    #
    #       {
    #         webhook_id: "WebhookId", # required
    #       }
    #
    # @!attribute [rw] webhook_id
    #   The unique ID for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetWebhookRequest AWS API Documentation
    #
    class GetWebhookRequest < Struct.new(
      :webhook_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the get webhook request.
    #
    # @!attribute [rw] webhook
    #   Describes the structure of a webhook.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetWebhookResult AWS API Documentation
    #
    class GetWebhookResult < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service failed to perform an operation due to an internal issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an execution job for an Amplify app.
    #
    # @!attribute [rw] summary
    #   Describes the summary for an execution job for an Amplify app.
    #   @return [Types::JobSummary]
    #
    # @!attribute [rw] steps
    #   The execution steps for an execution job, for an Amplify app.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Job AWS API Documentation
    #
    class Job < Struct.new(
      :summary,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the summary for an execution job for an Amplify app.
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique ID for the job.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The commit ID from a third-party repository provider for the job.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message from a third-party repository provider for the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] commit_time
    #   The commit date and time for the job.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The start date and time for the job.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status for the job.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end date and time for the job.
    #   @return [Time]
    #
    # @!attribute [rw] job_type
    #   The type for the job. If the value is `RELEASE`, the job was
    #   manually released from its source by using the `StartJob` API. If
    #   the value is `RETRY`, the job was manually retried using the
    #   `StartJob` API. If the value is `WEB_HOOK`, the job was
    #   automatically triggered by webhooks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/JobSummary AWS API Documentation
    #
    class JobSummary < Struct.new(
      :job_arn,
      :job_id,
      :commit_id,
      :commit_message,
      :commit_time,
      :start_time,
      :status,
      :end_time,
      :job_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource could not be created because service quotas were exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list apps request.
    #
    # @note When making an API call, you may pass ListAppsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A pagination token. If non-null, the pagination token is returned in
    #   a result. Pass its value in another request to retrieve more
    #   entries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for an Amplify app list request.
    #
    # @!attribute [rw] apps
    #   A list of Amplify apps.
    #   @return [Array<Types::App>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing apps from start. If
    #   non-null, the pagination token is returned in a result. Pass its
    #   value in here to list more projects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListAppsResult AWS API Documentation
    #
    class ListAppsResult < Struct.new(
      :apps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the request structure for the list artifacts request.
    #
    # @note When making an API call, you may pass ListArtifactsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of a branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique ID for a job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing artifacts from
    #   start. If a non-null pagination token is returned in a result, pass
    #   its value in here to list more artifacts.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListArtifactsRequest AWS API Documentation
    #
    class ListArtifactsRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the list artifacts request.
    #
    # @!attribute [rw] artifacts
    #   A list of artifacts.
    #   @return [Array<Types::Artifact>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListArtifactsResult AWS API Documentation
    #
    class ListArtifactsResult < Struct.new(
      :artifacts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list backend environments request.
    #
    # @note When making an API call, you may pass ListBackendEnvironmentsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         environment_name: "EnvironmentName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the backend environment
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing backend
    #   environments from the start. If a non-null pagination token is
    #   returned in a result, pass its value in here to list more backend
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBackendEnvironmentsRequest AWS API Documentation
    #
    class ListBackendEnvironmentsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the list backend environments result.
    #
    # @!attribute [rw] backend_environments
    #   The list of backend environments for an Amplify app.
    #   @return [Array<Types::BackendEnvironment>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBackendEnvironmentsResult AWS API Documentation
    #
    class ListBackendEnvironmentsResult < Struct.new(
      :backend_environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list branches request.
    #
    # @note When making an API call, you may pass ListBranchesRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing branches from the
    #   start. If a non-null pagination token is returned in a result, pass
    #   its value in here to list more branches.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranchesRequest AWS API Documentation
    #
    class ListBranchesRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the list branches request.
    #
    # @!attribute [rw] branches
    #   A list of branches for an Amplify app.
    #   @return [Array<Types::Branch>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If a non-null pagination token is returned in a
    #   result, pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranchesResult AWS API Documentation
    #
    class ListBranchesResult < Struct.new(
      :branches,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list domain associations request.
    #
    # @note When making an API call, you may pass ListDomainAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing apps from the
    #   start. If non-null, a pagination token is returned in a result. Pass
    #   its value in here to list more projects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociationsRequest AWS API Documentation
    #
    class ListDomainAssociationsRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the list domain association request.
    #
    # @!attribute [rw] domain_associations
    #   A list of domain associations.
    #   @return [Array<Types::DomainAssociation>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If non-null, a pagination token is returned in a
    #   result. Pass its value in another request to retrieve more entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociationsResult AWS API Documentation
    #
    class ListDomainAssociationsResult < Struct.new(
      :domain_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list jobs request.
    #
    # @note When making an API call, you may pass ListJobsRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for a branch.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing steps from the
    #   start. If a non-null pagination token is returned in a result, pass
    #   its value in here to list more steps.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :app_id,
      :branch_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of records to list in a single response.
    #
    # @!attribute [rw] job_summaries
    #   The result structure for the list job result request.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If non-null the pagination token is returned in
    #   a result. Pass its value in another request to retrieve more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobsResult AWS API Documentation
    #
    class ListJobsResult < Struct.new(
      :job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure to use to list tags for a resource.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to use to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for the list tags for resource request.
    #
    # @!attribute [rw] tags
    #   A list of tags for the specified The Amazon Resource Name (ARN).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the list webhooks request.
    #
    # @note When making an API call, you may pass ListWebhooksRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token. Set to null to start listing webhooks from the
    #   start. If non-null,the pagination token is returned in a result.
    #   Pass its value in here to list more webhooks.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListWebhooksRequest AWS API Documentation
    #
    class ListWebhooksRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the list webhooks request.
    #
    # @!attribute [rw] webhooks
    #   A list of webhooks.
    #   @return [Array<Types::Webhook>]
    #
    # @!attribute [rw] next_token
    #   A pagination token. If non-null, the pagination token is returned in
    #   a result. Pass its value in another request to retrieve more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListWebhooksResult AWS API Documentation
    #
    class ListWebhooksResult < Struct.new(
      :webhooks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity was not found during an operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the information about a production branch for an Amplify
    # app.
    #
    # @!attribute [rw] last_deploy_time
    #   The last deploy time of the production branch.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the production branch.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail_url
    #   The thumbnail URL for the production branch.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch name for the production branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ProductionBranch AWS API Documentation
    #
    class ProductionBranch < Struct.new(
      :last_deploy_time,
      :status,
      :thumbnail_url,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An operation failed due to a non-existent resource.
    #
    # @!attribute [rw] code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the start a deployment request.
    #
    # @note When making an API call, you may pass StartDeploymentRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId",
    #         source_url: "SourceUrl",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch, for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job ID for this deployment, generated by the create deployment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The source URL for this deployment, used when calling start
    #   deployment without create deployment. The source URL can be any HTTP
    #   GET URL that is publicly accessible and downloads a single .zip
    #   file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartDeploymentRequest AWS API Documentation
    #
    class StartDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :source_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the start a deployment request.
    #
    # @!attribute [rw] job_summary
    #   The summary for the job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartDeploymentResult AWS API Documentation
    #
    class StartDeploymentResult < Struct.new(
      :job_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the start job request.
    #
    # @note When making an API call, you may pass StartJobRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId",
    #         job_type: "RELEASE", # required, accepts RELEASE, RETRY, MANUAL, WEB_HOOK
    #         job_reason: "JobReason",
    #         commit_id: "CommitId",
    #         commit_message: "CommitMessage",
    #         commit_time: Time.now,
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch name for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique ID for an existing job. This is required if the value of
    #   `jobType` is `RETRY`.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   Describes the type for the job. The job type `RELEASE` starts a new
    #   job with the latest change from the specified branch. This value is
    #   available only for apps that are connected to a repository. The job
    #   type `RETRY` retries an existing job. If the job type value is
    #   `RETRY`, the `jobId` is also required.
    #   @return [String]
    #
    # @!attribute [rw] job_reason
    #   A descriptive reason for starting this job.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   The commit ID from a third-party repository provider for the job.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   The commit message from a third-party repository provider for the
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] commit_time
    #   The commit date and time for the job.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartJobRequest AWS API Documentation
    #
    class StartJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :job_type,
      :job_reason,
      :commit_id,
      :commit_message,
      :commit_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the run job request.
    #
    # @!attribute [rw] job_summary
    #   The summary for the job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartJobResult AWS API Documentation
    #
    class StartJobResult < Struct.new(
      :job_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an execution step, for an execution job, for an Amplify app.
    #
    # @!attribute [rw] step_name
    #   The name of the execution step.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start date and time of the execution step.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the execution step.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end date and time of the execution step.
    #   @return [Time]
    #
    # @!attribute [rw] log_url
    #   The URL to the logs for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] artifacts_url
    #   The URL to the artifact for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] test_artifacts_url
    #   The URL to the test artifact for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] test_config_url
    #   The URL to the test configuration for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] screenshots
    #   The list of screenshot URLs for the execution step, if relevant.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current step status.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context for the current step. Includes a build image if the step
    #   is build.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Step AWS API Documentation
    #
    class Step < Struct.new(
      :step_name,
      :start_time,
      :status,
      :end_time,
      :log_url,
      :artifacts_url,
      :test_artifacts_url,
      :test_config_url,
      :screenshots,
      :status_reason,
      :context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the stop job request.
    #
    # @note When making an API call, you may pass StopJobRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch, for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique id for the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJobRequest AWS API Documentation
    #
    class StopJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the stop job request.
    #
    # @!attribute [rw] job_summary
    #   The summary for the job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJobResult AWS API Documentation
    #
    class StopJobResult < Struct.new(
      :job_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subdomain for the domain association.
    #
    # @!attribute [rw] sub_domain_setting
    #   Describes the settings for the subdomain.
    #   @return [Types::SubDomainSetting]
    #
    # @!attribute [rw] verified
    #   The verified status of the subdomain
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_record
    #   The DNS record for the subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/SubDomain AWS API Documentation
    #
    class SubDomain < Struct.new(
      :sub_domain_setting,
      :verified,
      :dns_record)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the settings for the subdomain.
    #
    # @note When making an API call, you may pass SubDomainSetting
    #   data as a hash:
    #
    #       {
    #         prefix: "DomainPrefix", # required
    #         branch_name: "BranchName", # required
    #       }
    #
    # @!attribute [rw] prefix
    #   The prefix setting for the subdomain.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The branch name setting for the subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/SubDomainSetting AWS API Documentation
    #
    class SubDomainSetting < Struct.new(
      :prefix,
      :branch_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure to tag a resource with a tag key and value.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to use to tag a resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to tag the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for the tag resource request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # An operation failed due to a lack of access.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the untag resource request.
    #
    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) to use to untag a resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to use to untag a resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response for the untag resource request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The request structure for the update app request.
    #
    # @note When making an API call, you may pass UpdateAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         name: "Name",
    #         description: "Description",
    #         platform: "WEB", # accepts WEB
    #         iam_service_role_arn: "ServiceRoleArn",
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         enable_branch_auto_build: false,
    #         enable_branch_auto_deletion: false,
    #         enable_basic_auth: false,
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         custom_rules: [
    #           {
    #             source: "Source", # required
    #             target: "Target", # required
    #             status: "Status",
    #             condition: "Condition",
    #           },
    #         ],
    #         build_spec: "BuildSpec",
    #         enable_auto_branch_creation: false,
    #         auto_branch_creation_patterns: ["AutoBranchCreationPattern"],
    #         auto_branch_creation_config: {
    #           stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #           framework: "Framework",
    #           enable_auto_build: false,
    #           environment_variables: {
    #             "EnvKey" => "EnvValue",
    #           },
    #           basic_auth_credentials: "BasicAuthCredentials",
    #           enable_basic_auth: false,
    #           enable_performance_mode: false,
    #           build_spec: "BuildSpec",
    #           enable_pull_request_preview: false,
    #           pull_request_environment_name: "PullRequestEnvironmentName",
    #         },
    #         repository: "Repository",
    #         oauth_token: "OauthToken",
    #         access_token: "AccessToken",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] iam_service_role_arn
    #   The AWS Identity and Access Management (IAM) service role for an
    #   Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for an Amplify app.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enables branch auto-building for an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_branch_auto_deletion
    #   Automatically disconnects a branch in the Amplify Console when you
    #   delete a branch from your Git repository.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for an Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   The custom redirect and rewrite rules for an Amplify app.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify app.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   Describes the automated branch creation glob patterns for the
    #   Amplify app.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   The automated branch creation configuration for the Amplify app.
    #   @return [Types::AutoBranchCreationConfig]
    #
    # @!attribute [rw] repository
    #   The name of the repository for an Amplify app
    #   @return [String]
    #
    # @!attribute [rw] oauth_token
    #   The OAuth token for a third-party source control system for an
    #   Amplify app. The token is used to create a webhook and a read-only
    #   deploy key. The OAuth token is not stored.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The personal access token for a third-party source control system
    #   for an Amplify app. The token is used to create webhook and a
    #   read-only deploy key. The token is not stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateAppRequest AWS API Documentation
    #
    class UpdateAppRequest < Struct.new(
      :app_id,
      :name,
      :description,
      :platform,
      :iam_service_role_arn,
      :environment_variables,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :repository,
      :oauth_token,
      :access_token)
      SENSITIVE = [:basic_auth_credentials, :oauth_token, :access_token]
      include Aws::Structure
    end

    # The result structure for an Amplify app update request.
    #
    # @!attribute [rw] app
    #   Represents the updated Amplify app.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateAppResult AWS API Documentation
    #
    class UpdateAppResult < Struct.new(
      :app)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the update branch request.
    #
    # @note When making an API call, you may pass UpdateBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         description: "Description",
    #         framework: "Framework",
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST
    #         enable_notification: false,
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         enable_performance_mode: false,
    #         build_spec: "BuildSpec",
    #         ttl: "TTL",
    #         display_name: "DisplayName",
    #         enable_pull_request_preview: false,
    #         pull_request_environment_name: "PullRequestEnvironmentName",
    #         backend_environment_arn: "BackendEnvironmentArn",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for the branch.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   The framework for the branch.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Describes the current stage for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_notification
    #   Enables notifications for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto building for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_variables
    #   The environment variables for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   The basic authorization credentials for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables basic authorization for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_performance_mode
    #   Performance mode optimizes for faster hosting performance by keeping
    #   content cached at the edge for a longer interval. Enabling
    #   performance mode will mean that hosting configuration or code
    #   changes can take up to 10 minutes to roll out.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_spec
    #   The build specification (build spec) for the branch.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content Time to Live (TTL) for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name for a branch. This is used as the default domain
    #   prefix.
    #   @return [String]
    #
    # @!attribute [rw] enable_pull_request_preview
    #   Enables pull request preview for this branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] pull_request_environment_name
    #   The Amplify environment name for the pull request.
    #   @return [String]
    #
    # @!attribute [rw] backend_environment_arn
    #   The Amazon Resource Name (ARN) for a backend environment that is
    #   part of an Amplify app.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateBranchRequest AWS API Documentation
    #
    class UpdateBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      :description,
      :framework,
      :stage,
      :enable_notification,
      :enable_auto_build,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :build_spec,
      :ttl,
      :display_name,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :backend_environment_arn)
      SENSITIVE = [:basic_auth_credentials]
      include Aws::Structure
    end

    # The result structure for the update branch request.
    #
    # @!attribute [rw] branch
    #   The branch for an Amplify app, which maps to a third-party
    #   repository branch.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateBranchResult AWS API Documentation
    #
    class UpdateBranchResult < Struct.new(
      :branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the update domain association request.
    #
    # @note When making an API call, you may pass UpdateDomainAssociationRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         domain_name: "DomainName", # required
    #         enable_auto_sub_domain: false,
    #         sub_domain_settings: [ # required
    #           {
    #             prefix: "DomainPrefix", # required
    #             branch_name: "BranchName", # required
    #           },
    #         ],
    #         auto_sub_domain_creation_patterns: ["AutoSubDomainCreationPattern"],
    #         auto_sub_domain_iam_role: "AutoSubDomainIAMRole",
    #       }
    #
    # @!attribute [rw] app_id
    #   The unique ID for an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables the automated creation of subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_domain_settings
    #   Describes the settings for the subdomain.
    #   @return [Array<Types::SubDomainSetting>]
    #
    # @!attribute [rw] auto_sub_domain_creation_patterns
    #   Sets the branch patterns for automatic subdomain creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_sub_domain_iam_role
    #   The required AWS Identity and Access Management (IAM) service role
    #   for the Amazon Resource Name (ARN) for automatically creating
    #   subdomains.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociationRequest AWS API Documentation
    #
    class UpdateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the update domain association request.
    #
    # @!attribute [rw] domain_association
    #   Describes a domain association, which associates a custom domain
    #   with an Amplify app.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociationResult AWS API Documentation
    #
    class UpdateDomainAssociationResult < Struct.new(
      :domain_association)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request structure for the update webhook request.
    #
    # @note When making an API call, you may pass UpdateWebhookRequest
    #   data as a hash:
    #
    #       {
    #         webhook_id: "WebhookId", # required
    #         branch_name: "BranchName",
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] webhook_id
    #   The unique ID for a webhook.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for a branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateWebhookRequest AWS API Documentation
    #
    class UpdateWebhookRequest < Struct.new(
      :webhook_id,
      :branch_name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result structure for the update webhook request.
    #
    # @!attribute [rw] webhook
    #   Describes a webhook that connects repository events to an Amplify
    #   app.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateWebhookResult AWS API Documentation
    #
    class UpdateWebhookResult < Struct.new(
      :webhook)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a webhook that connects repository events to an Amplify app.
    #
    # @!attribute [rw] webhook_arn
    #   The Amazon Resource Name (ARN) for the webhook.
    #   @return [String]
    #
    # @!attribute [rw] webhook_id
    #   The ID of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] webhook_url
    #   The URL of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name for a branch that is part of an Amplify app.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a webhook.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The create date and time for a webhook.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Updates the date and time for a webhook.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Webhook AWS API Documentation
    #
    class Webhook < Struct.new(
      :webhook_arn,
      :webhook_id,
      :webhook_url,
      :branch_name,
      :description,
      :create_time,
      :update_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
