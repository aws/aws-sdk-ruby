# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Amplify
  module Types

    # Amplify App represents different branches of a repository for
    # building, deploying, and hosting.
    #
    # @!attribute [rw] app_id
    #   Unique Id for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   ARN for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag for Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] description
    #   Description for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   Repository for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Platform for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Create date / time for the Amplify App.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Update date / time for the Amplify App.
    #   @return [Time]
    #
    # @!attribute [rw] iam_service_role_arn
    #   IAM service role ARN for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   Environment Variables for the Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] default_domain
    #   Default domain for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enables auto-building of branches for the Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Authorization for branches for the Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for branches for the Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   Custom redirect / rewrite rules for the Amplify App.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] production_branch
    #   Structure with Production Branch information.
    #   @return [Types::ProductionBranch]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec content for Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   Automated branch creation glob patterns for the Amplify App.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   Automated branch creation config for the Amplify App.
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
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :production_branch,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config)
      include Aws::Structure
    end

    # Structure with auto branch creation config.
    #
    # @note When making an API call, you may pass AutoBranchCreationConfig
    #   data as a hash:
    #
    #       {
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #         framework: "Framework",
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         build_spec: "BuildSpec",
    #       }
    #
    # @!attribute [rw] stage
    #   Stage for the auto created branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   Framework for the auto created branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto building for the auto created branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_variables
    #   Environment Variables for the auto created branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for the auto created branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Auth for the auto created branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec for the auto created branch.
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
      :build_spec)
      include Aws::Structure
    end

    # Exception thrown when a request contains unexpected data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Branch for an Amplify App, which maps to a 3rd party repository
    # branch.
    #
    # @!attribute [rw] branch_arn
    #   ARN for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tag for branch for Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] stage
    #   Stage for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for a branch, will use as the default domain prefix.
    #   @return [String]
    #
    # @!attribute [rw] enable_notification
    #   Enables notifications for a branch, part of an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_time
    #   Creation date and time for a branch, part of an Amplify App.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Last updated date and time for a branch, part of an Amplify App.
    #   @return [Time]
    #
    # @!attribute [rw] environment_variables
    #   Environment Variables specific to a branch, part of an Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_auto_build
    #   Enables auto-building on push for a branch, part of an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] custom_domains
    #   Custom domains for a branch, part of an Amplify App.
    #   @return [Array<String>]
    #
    # @!attribute [rw] framework
    #   Framework for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] active_job_id
    #   Id of the active job for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] total_number_of_jobs
    #   Total number of Jobs part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Authorization for a branch, part of an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] thumbnail_url
    #   Thumbnail URL for the branch.
    #   @return [String]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for a branch, part of an Amplify
    #   App.
    #   @return [String]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec content for branch for Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content TTL for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] associated_resources
    #   List of custom resources that are linked to this branch.
    #   @return [Array<String>]
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
      :thumbnail_url,
      :basic_auth_credentials,
      :build_spec,
      :ttl,
      :associated_resources)
      include Aws::Structure
    end

    # Request structure used to create Apps in Amplify.
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
    #           stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #           framework: "Framework",
    #           enable_auto_build: false,
    #           environment_variables: {
    #             "EnvKey" => "EnvValue",
    #           },
    #           basic_auth_credentials: "BasicAuthCredentials",
    #           enable_basic_auth: false,
    #           build_spec: "BuildSpec",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name for the Amplify App
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for an Amplify App
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   Repository for an Amplify App
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Platform / framework for an Amplify App
    #   @return [String]
    #
    # @!attribute [rw] iam_service_role_arn
    #   AWS IAM service role for an Amplify App
    #   @return [String]
    #
    # @!attribute [rw] oauth_token
    #   OAuth token for 3rd party source control system for an Amplify App,
    #   used to create webhook and read-only deploy key. OAuth token is not
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   Personal Access token for 3rd party source control system for an
    #   Amplify App, used to create webhook and read-only deploy key. Token
    #   is not stored.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   Environment variables map for an Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enable the auto building of branches for an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enable Basic Authorization for an Amplify App, this will apply to
    #   all branches part of this App.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Credentials for Basic Authorization for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   Custom rewrite / redirect rules for an Amplify App.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] tags
    #   Tag for an Amplify App
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec for an Amplify App
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   Automated branch creation glob patterns for the Amplify App.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   Automated branch creation config for the Amplify App.
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
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :tags,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config)
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   Amplify App represents different branches of a repository for
    #   building, deploying, and hosting.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateAppResult AWS API Documentation
    #
    class CreateAppResult < Struct.new(
      :app)
      include Aws::Structure
    end

    # Request structure for a branch create request.
    #
    # @note When making an API call, you may pass CreateBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         description: "Description",
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #         framework: "Framework",
    #         enable_notification: false,
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         build_spec: "BuildSpec",
    #         ttl: "TTL",
    #         display_name: "DisplayName",
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the branch.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Stage for the branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   Framework for the branch.
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
    #   Environment Variables for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Auth for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Tag for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec for the branch.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content TTL for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for a branch, will use as the default domain prefix.
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
      :tags,
      :build_spec,
      :ttl,
      :display_name)
      include Aws::Structure
    end

    # Result structure for create branch request.
    #
    # @!attribute [rw] branch
    #   Branch structure for an Amplify App.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateBranchResult AWS API Documentation
    #
    class CreateBranchResult < Struct.new(
      :branch)
      include Aws::Structure
    end

    # Request structure for create a new deployment.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] file_map
    #   Optional file map that contains file name as the key and file
    #   content md5 hash as the value. If this argument is provided, the
    #   service will generate different upload url per file. Otherwise, the
    #   service will only generate a single upload url for the zipped files.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :file_map)
      include Aws::Structure
    end

    # Result structure for create a new deployment.
    #
    # @!attribute [rw] job_id
    #   The jobId for this deployment, will supply to start deployment api.
    #   @return [String]
    #
    # @!attribute [rw] file_upload_urls
    #   When the fileMap argument is provided in the request, the
    #   fileUploadUrls will contain a map of file names to upload url.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] zip_upload_url
    #   When the fileMap argument is NOT provided. This zipUploadUrl will be
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDeploymentResult AWS API Documentation
    #
    class CreateDeploymentResult < Struct.new(
      :job_id,
      :file_upload_urls,
      :zip_upload_url)
      include Aws::Structure
    end

    # Request structure for create Domain Association request.
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
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Domain name for the Domain Association.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables automated creation of Subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_domain_settings
    #   Setting structure for the Subdomain.
    #   @return [Array<Types::SubDomainSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociationRequest AWS API Documentation
    #
    class CreateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings)
      include Aws::Structure
    end

    # Result structure for the create Domain Association request.
    #
    # @!attribute [rw] domain_association
    #   Domain Association structure.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateDomainAssociationResult AWS API Documentation
    #
    class CreateDomainAssociationResult < Struct.new(
      :domain_association)
      include Aws::Structure
    end

    # Request structure for create webhook request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateWebhookRequest AWS API Documentation
    #
    class CreateWebhookRequest < Struct.new(
      :app_id,
      :branch_name,
      :description)
      include Aws::Structure
    end

    # Result structure for the create webhook request.
    #
    # @!attribute [rw] webhook
    #   Webhook structure.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CreateWebhookResult AWS API Documentation
    #
    class CreateWebhookResult < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # Custom rewrite / redirect rule.
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
    #   @return [String]
    #
    # @!attribute [rw] condition
    #   The condition for a URL rewrite or redirect rule, e.g. country code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/CustomRule AWS API Documentation
    #
    class CustomRule < Struct.new(
      :source,
      :target,
      :status,
      :condition)
      include Aws::Structure
    end

    # Request structure for an Amplify App delete request.
    #
    # @note When making an API call, you may pass DeleteAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteAppRequest AWS API Documentation
    #
    class DeleteAppRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # Result structure for an Amplify App delete request.
    #
    # @!attribute [rw] app
    #   Amplify App represents different branches of a repository for
    #   building, deploying, and hosting.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteAppResult AWS API Documentation
    #
    class DeleteAppResult < Struct.new(
      :app)
      include Aws::Structure
    end

    # Request structure for delete branch request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranchRequest AWS API Documentation
    #
    class DeleteBranchRequest < Struct.new(
      :app_id,
      :branch_name)
      include Aws::Structure
    end

    # Result structure for delete branch request.
    #
    # @!attribute [rw] branch
    #   Branch structure for an Amplify App.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteBranchResult AWS API Documentation
    #
    class DeleteBranchResult < Struct.new(
      :branch)
      include Aws::Structure
    end

    # Request structure for the delete Domain Association request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociationRequest AWS API Documentation
    #
    class DeleteDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name)
      include Aws::Structure
    end

    # @!attribute [rw] domain_association
    #   Structure for Domain Association, which associates a custom domain
    #   with an Amplify App.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteDomainAssociationResult AWS API Documentation
    #
    class DeleteDomainAssociationResult < Struct.new(
      :domain_association)
      include Aws::Structure
    end

    # Request structure for delete job request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Unique Id for the Job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      include Aws::Structure
    end

    # Result structure for the delete job request.
    #
    # @!attribute [rw] job_summary
    #   Structure for the summary of a Job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteJobResult AWS API Documentation
    #
    class DeleteJobResult < Struct.new(
      :job_summary)
      include Aws::Structure
    end

    # Request structure for the delete webhook request.
    #
    # @note When making an API call, you may pass DeleteWebhookRequest
    #   data as a hash:
    #
    #       {
    #         webhook_id: "WebhookId", # required
    #       }
    #
    # @!attribute [rw] webhook_id
    #   Unique Id for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteWebhookRequest AWS API Documentation
    #
    class DeleteWebhookRequest < Struct.new(
      :webhook_id)
      include Aws::Structure
    end

    # Result structure for the delete webhook request.
    #
    # @!attribute [rw] webhook
    #   Webhook structure.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DeleteWebhookResult AWS API Documentation
    #
    class DeleteWebhookResult < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # Exception thrown when an operation fails due to a dependent service
    # throwing an exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DependentServiceFailureException AWS API Documentation
    #
    class DependentServiceFailureException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Structure for Domain Association, which associates a custom domain
    # with an Amplify App.
    #
    # @!attribute [rw] domain_association_arn
    #   ARN for the Domain Association.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables automated creation of Subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] domain_status
    #   Status fo the Domain Association.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Reason for the current status of the Domain Association.
    #   @return [String]
    #
    # @!attribute [rw] certificate_verification_dns_record
    #   DNS Record for certificate verification.
    #   @return [String]
    #
    # @!attribute [rw] sub_domains
    #   Subdomains for the Domain Association.
    #   @return [Array<Types::SubDomain>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/DomainAssociation AWS API Documentation
    #
    class DomainAssociation < Struct.new(
      :domain_association_arn,
      :domain_name,
      :enable_auto_sub_domain,
      :domain_status,
      :status_reason,
      :certificate_verification_dns_record,
      :sub_domains)
      include Aws::Structure
    end

    # Request structure for get App request.
    #
    # @note When making an API call, you may pass GetAppRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetAppRequest AWS API Documentation
    #
    class GetAppRequest < Struct.new(
      :app_id)
      include Aws::Structure
    end

    # @!attribute [rw] app
    #   Amplify App represents different branches of a repository for
    #   building, deploying, and hosting.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetAppResult AWS API Documentation
    #
    class GetAppResult < Struct.new(
      :app)
      include Aws::Structure
    end

    # Result structure for get branch request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranchRequest AWS API Documentation
    #
    class GetBranchRequest < Struct.new(
      :app_id,
      :branch_name)
      include Aws::Structure
    end

    # @!attribute [rw] branch
    #   Branch for an Amplify App, which maps to a 3rd party repository
    #   branch.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetBranchResult AWS API Documentation
    #
    class GetBranchResult < Struct.new(
      :branch)
      include Aws::Structure
    end

    # Request structure for the get Domain Association request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociationRequest AWS API Documentation
    #
    class GetDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name)
      include Aws::Structure
    end

    # Result structure for the get Domain Association request.
    #
    # @!attribute [rw] domain_association
    #   Domain Association structure.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetDomainAssociationResult AWS API Documentation
    #
    class GetDomainAssociationResult < Struct.new(
      :domain_association)
      include Aws::Structure
    end

    # Request structure for get job request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Unique Id for the Job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   Structure for an execution job for an Amplify App.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetJobResult AWS API Documentation
    #
    class GetJobResult < Struct.new(
      :job)
      include Aws::Structure
    end

    # Request structure for the get webhook request.
    #
    # @note When making an API call, you may pass GetWebhookRequest
    #   data as a hash:
    #
    #       {
    #         webhook_id: "WebhookId", # required
    #       }
    #
    # @!attribute [rw] webhook_id
    #   Unique Id for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetWebhookRequest AWS API Documentation
    #
    class GetWebhookRequest < Struct.new(
      :webhook_id)
      include Aws::Structure
    end

    # Result structure for the get webhook request.
    #
    # @!attribute [rw] webhook
    #   Webhook structure.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/GetWebhookResult AWS API Documentation
    #
    class GetWebhookResult < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # Exception thrown when the service fails to perform an operation due to
    # an internal issue.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Structure for an execution job for an Amplify App.
    #
    # @!attribute [rw] summary
    #   Summary for an execution job for an Amplify App.
    #   @return [Types::JobSummary]
    #
    # @!attribute [rw] steps
    #   Execution steps for an execution job, for an Amplify App.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/Job AWS API Documentation
    #
    class Job < Struct.new(
      :summary,
      :steps)
      include Aws::Structure
    end

    # Structure for the summary of a Job.
    #
    # @!attribute [rw] job_arn
    #   Arn for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Unique Id for the Job.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   Commit Id from 3rd party repository provider for the Job.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   Commit message from 3rd party repository provider for the Job.
    #   @return [String]
    #
    # @!attribute [rw] commit_time
    #   Commit date / time for the Job.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   Start date / time for the Job.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status for the Job.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End date / time for the Job.
    #   @return [Time]
    #
    # @!attribute [rw] job_type
    #   Type for the Job. \\n "RELEASE": Manually released from source by
    #   using StartJob API. "RETRY": Manually retried by using StartJob
    #   API. "WEB\_HOOK": Automatically triggered by WebHooks.
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
      include Aws::Structure
    end

    # Exception thrown when a resource could not be created because of
    # service limits.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request structure for an Amplify App list request.
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
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListAppsRequest AWS API Documentation
    #
    class ListAppsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Result structure for an Amplify App list request.
    #
    # @!attribute [rw] apps
    #   List of Amplify Apps.
    #   @return [Array<Types::App>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing Apps from start. If
    #   non-null pagination token is returned in a result, then pass its
    #   value in here to list more projects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListAppsResult AWS API Documentation
    #
    class ListAppsResult < Struct.new(
      :apps,
      :next_token)
      include Aws::Structure
    end

    # Request structure for list branches request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing branches from start.
    #   If a non-null pagination token is returned in a result, then pass
    #   its value in here to list more branches.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranchesRequest AWS API Documentation
    #
    class ListBranchesRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Result structure for list branches request.
    #
    # @!attribute [rw] branches
    #   List of branches for an Amplify App.
    #   @return [Array<Types::Branch>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListBranchesResult AWS API Documentation
    #
    class ListBranchesResult < Struct.new(
      :branches,
      :next_token)
      include Aws::Structure
    end

    # Request structure for the list Domain Associations request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing Apps from start. If
    #   non-null pagination token is returned in a result, then pass its
    #   value in here to list more projects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociationsRequest AWS API Documentation
    #
    class ListDomainAssociationsRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Result structure for the list Domain Association request.
    #
    # @!attribute [rw] domain_associations
    #   List of Domain Associations.
    #   @return [Array<Types::DomainAssociation>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListDomainAssociationsResult AWS API Documentation
    #
    class ListDomainAssociationsResult < Struct.new(
      :domain_associations,
      :next_token)
      include Aws::Structure
    end

    # Request structure for list job request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for a branch.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing steps from start. If
    #   a non-null pagination token is returned in a result, then pass its
    #   value in here to list more steps.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobsRequest AWS API Documentation
    #
    class ListJobsRequest < Struct.new(
      :app_id,
      :branch_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Maximum number of records to list in a single response.
    #
    # @!attribute [rw] job_summaries
    #   Result structure for list job result request.
    #   @return [Array<Types::JobSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListJobsResult AWS API Documentation
    #
    class ListJobsResult < Struct.new(
      :job_summaries,
      :next_token)
      include Aws::Structure
    end

    # Request structure used to list tags for resource.
    #
    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Resource arn used to list tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # Response for list tags.
    #
    # @!attribute [rw] tags
    #   Tags result for response.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      include Aws::Structure
    end

    # Request structure for the list webhooks request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token. Set to null to start listing webhooks from start.
    #   If non-null pagination token is returned in a result, then pass its
    #   value in here to list more webhooks.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of records to list in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListWebhooksRequest AWS API Documentation
    #
    class ListWebhooksRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # Result structure for the list webhooks request.
    #
    # @!attribute [rw] webhooks
    #   List of webhooks.
    #   @return [Array<Types::Webhook>]
    #
    # @!attribute [rw] next_token
    #   Pagination token. If non-null pagination token is returned in a
    #   result, then pass its value in another request to fetch more
    #   entries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ListWebhooksResult AWS API Documentation
    #
    class ListWebhooksResult < Struct.new(
      :webhooks,
      :next_token)
      include Aws::Structure
    end

    # Exception thrown when an entity has not been found during an
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Structure with Production Branch information.
    #
    # @!attribute [rw] last_deploy_time
    #   Last Deploy Time of Production Branch.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of Production Branch.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail_url
    #   Thumbnail URL for Production Branch.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Branch Name for Production Branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/ProductionBranch AWS API Documentation
    #
    class ProductionBranch < Struct.new(
      :last_deploy_time,
      :status,
      :thumbnail_url,
      :branch_name)
      include Aws::Structure
    end

    # Exception thrown when an operation fails due to non-existent resource.
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
      include Aws::Structure
    end

    # Request structure for start a deployment.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job id for this deployment, generated by create deployment
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] source_url
    #   The sourceUrl for this deployment, used when calling start
    #   deployment without create deployment. SourceUrl can be any HTTP GET
    #   url that is public accessible and downloads a single zip.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartDeploymentRequest AWS API Documentation
    #
    class StartDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :source_url)
      include Aws::Structure
    end

    # Result structure for start a deployment.
    #
    # @!attribute [rw] job_summary
    #   Summary for the Job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartDeploymentResult AWS API Documentation
    #
    class StartDeploymentResult < Struct.new(
      :job_summary)
      include Aws::Structure
    end

    # Request structure for Start job request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Unique Id for an existing job. Required for "RETRY" JobType.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   Type for the Job. Available JobTypes are: \\n "RELEASE": Start a
    #   new job with the latest change from the specified branch. Only
    #   available for apps that have connected to a repository. "RETRY":
    #   Retry an existing job. JobId is required for this type of job.
    #   @return [String]
    #
    # @!attribute [rw] job_reason
    #   Descriptive reason for starting this job.
    #   @return [String]
    #
    # @!attribute [rw] commit_id
    #   Commit Id from 3rd party repository provider for the Job.
    #   @return [String]
    #
    # @!attribute [rw] commit_message
    #   Commit message from 3rd party repository provider for the Job.
    #   @return [String]
    #
    # @!attribute [rw] commit_time
    #   Commit date / time for the Job.
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
      include Aws::Structure
    end

    # Result structure for run job request.
    #
    # @!attribute [rw] job_summary
    #   Summary for the Job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StartJobResult AWS API Documentation
    #
    class StartJobResult < Struct.new(
      :job_summary)
      include Aws::Structure
    end

    # Structure for an execution step for an execution job, for an Amplify
    # App.
    #
    # @!attribute [rw] step_name
    #   Name of the execution step.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start date/ time of the execution step.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the execution step.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End date/ time of the execution step.
    #   @return [Time]
    #
    # @!attribute [rw] log_url
    #   URL to the logs for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] artifacts_url
    #   URL to the artifact for the execution step.
    #   @return [String]
    #
    # @!attribute [rw] screenshots
    #   List of screenshot URLs for the execution step, if relevant.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status_reason
    #   The reason for current step status.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context for current step, will include build image if step is
    #   build.
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
      :screenshots,
      :status_reason,
      :context)
      include Aws::Structure
    end

    # Request structure for stop job request.
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
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch, for the Job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   Unique Id for the Job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJobRequest AWS API Documentation
    #
    class StopJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id)
      include Aws::Structure
    end

    # Result structure for the stop job request.
    #
    # @!attribute [rw] job_summary
    #   Summary for the Job.
    #   @return [Types::JobSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/StopJobResult AWS API Documentation
    #
    class StopJobResult < Struct.new(
      :job_summary)
      include Aws::Structure
    end

    # Subdomain for the Domain Association.
    #
    # @!attribute [rw] sub_domain_setting
    #   Setting structure for the Subdomain.
    #   @return [Types::SubDomainSetting]
    #
    # @!attribute [rw] verified
    #   Verified status of the Subdomain
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_record
    #   DNS record for the Subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/SubDomain AWS API Documentation
    #
    class SubDomain < Struct.new(
      :sub_domain_setting,
      :verified,
      :dns_record)
      include Aws::Structure
    end

    # Setting for the Subdomain.
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
    #   Prefix setting for the Subdomain.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Branch name setting for the Subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/SubDomainSetting AWS API Documentation
    #
    class SubDomainSetting < Struct.new(
      :prefix,
      :branch_name)
      include Aws::Structure
    end

    # Request structure used to tag resource.
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
    #   Resource arn used to tag resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags used to tag resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # Response for tag resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Exception thrown when an operation fails due to a lack of access.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Request structure used to untag resource.
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
    #   Resource arn used to untag resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys used to untag resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # Response for untag resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Request structure for update App request.
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
    #           stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #           framework: "Framework",
    #           enable_auto_build: false,
    #           environment_variables: {
    #             "EnvKey" => "EnvValue",
    #           },
    #           basic_auth_credentials: "BasicAuthCredentials",
    #           enable_basic_auth: false,
    #           build_spec: "BuildSpec",
    #         },
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   Platform for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] iam_service_role_arn
    #   IAM service role for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] environment_variables
    #   Environment Variables for an Amplify App.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] enable_branch_auto_build
    #   Enables branch auto-building for an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Authorization for an Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] custom_rules
    #   Custom redirect / rewrite rules for an Amplify App.
    #   @return [Array<Types::CustomRule>]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_branch_creation
    #   Enables automated branch creation for the Amplify App.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_branch_creation_patterns
    #   Automated branch creation glob patterns for the Amplify App.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_branch_creation_config
    #   Automated branch creation config for the Amplify App.
    #   @return [Types::AutoBranchCreationConfig]
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
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :build_spec,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config)
      include Aws::Structure
    end

    # Result structure for an Amplify App update request.
    #
    # @!attribute [rw] app
    #   App structure for the updated App.
    #   @return [Types::App]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateAppResult AWS API Documentation
    #
    class UpdateAppResult < Struct.new(
      :app)
      include Aws::Structure
    end

    # Request structure for update branch request.
    #
    # @note When making an API call, you may pass UpdateBranchRequest
    #   data as a hash:
    #
    #       {
    #         app_id: "AppId", # required
    #         branch_name: "BranchName", # required
    #         description: "Description",
    #         framework: "Framework",
    #         stage: "PRODUCTION", # accepts PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL
    #         enable_notification: false,
    #         enable_auto_build: false,
    #         environment_variables: {
    #           "EnvKey" => "EnvValue",
    #         },
    #         basic_auth_credentials: "BasicAuthCredentials",
    #         enable_basic_auth: false,
    #         build_spec: "BuildSpec",
    #         ttl: "TTL",
    #         display_name: "DisplayName",
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for the branch.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for the branch.
    #   @return [String]
    #
    # @!attribute [rw] framework
    #   Framework for the branch.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Stage for the branch.
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
    #   Environment Variables for the branch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] basic_auth_credentials
    #   Basic Authorization credentials for the branch.
    #   @return [String]
    #
    # @!attribute [rw] enable_basic_auth
    #   Enables Basic Auth for the branch.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_spec
    #   BuildSpec for the branch.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The content TTL for the website in seconds.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for a branch, will use as the default domain prefix.
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
      :build_spec,
      :ttl,
      :display_name)
      include Aws::Structure
    end

    # Result structure for update branch request.
    #
    # @!attribute [rw] branch
    #   Branch structure for an Amplify App.
    #   @return [Types::Branch]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateBranchResult AWS API Documentation
    #
    class UpdateBranchResult < Struct.new(
      :branch)
      include Aws::Structure
    end

    # Request structure for update Domain Association request.
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
    #       }
    #
    # @!attribute [rw] app_id
    #   Unique Id for an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] enable_auto_sub_domain
    #   Enables automated creation of Subdomains for branches.
    #   @return [Boolean]
    #
    # @!attribute [rw] sub_domain_settings
    #   Setting structure for the Subdomain.
    #   @return [Array<Types::SubDomainSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociationRequest AWS API Documentation
    #
    class UpdateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings)
      include Aws::Structure
    end

    # Result structure for the update Domain Association request.
    #
    # @!attribute [rw] domain_association
    #   Domain Association structure.
    #   @return [Types::DomainAssociation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateDomainAssociationResult AWS API Documentation
    #
    class UpdateDomainAssociationResult < Struct.new(
      :domain_association)
      include Aws::Structure
    end

    # Request structure for update webhook request.
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
    #   Unique Id for a webhook.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for a webhook.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateWebhookRequest AWS API Documentation
    #
    class UpdateWebhookRequest < Struct.new(
      :webhook_id,
      :branch_name,
      :description)
      include Aws::Structure
    end

    # Result structure for the update webhook request.
    #
    # @!attribute [rw] webhook
    #   Webhook structure.
    #   @return [Types::Webhook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/amplify-2017-07-25/UpdateWebhookResult AWS API Documentation
    #
    class UpdateWebhookResult < Struct.new(
      :webhook)
      include Aws::Structure
    end

    # Structure for webhook, which associates a webhook with an Amplify App.
    #
    # @!attribute [rw] webhook_arn
    #   ARN for the webhook.
    #   @return [String]
    #
    # @!attribute [rw] webhook_id
    #   Id of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] webhook_url
    #   Url of the webhook.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   Name for a branch, part of an Amplify App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description for a webhook.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Create date / time for a webhook.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Update date / time for a webhook.
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
      include Aws::Structure
    end

  end
end
