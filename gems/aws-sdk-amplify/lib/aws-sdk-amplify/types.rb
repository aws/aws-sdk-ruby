# frozen_string_literal: true

# This is generated code!

module Aws::Amplify
  # This module contains the types returned by client operations.
  module Types

    # <p>Represents the different branches of a repository for building, deploying, and hosting
    #             an Amplify app. </p>
    # @!attribute app_id
    #   <p>The unique ID of the Amplify app. </p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the Amplify app. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the Amplify app. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tag for the Amplify app. </p>
    #   @return [Hash<String, String>]
    # @!attribute description
    #   <p>The description for the Amplify app. </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The Git repository for the Amplify app. </p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform for the Amplify app. For a static app, set the platform type to
    #                   <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform
    #               type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR
    #               support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>
    #            <p>If you are deploying an SSG only app with Next.js 14 or later, you must use the
    #               platform type <code>WEB_COMPUTE</code>.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>A timestamp of when Amplify created the application.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>A timestamp of when Amplify updated the application.</p>
    #   @return [Time]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for an SSR app. The
    #               Compute role allows the Amplify Hosting compute service to securely
    #               access specific Amazon Web Services resources based on the role's permissions. For more
    #               information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    #   @return [String]
    # @!attribute iam_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>The environment variables for the Amplify app. </p>
    #            <p>For a list of the environment variables that are accessible to Amplify by default, see
    #                   <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html">Amplify
    #                   Environment variables</a> in the <i>Amplify Hosting User
    #               Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute default_domain
    #   <p>The default domain for the Amplify app. </p>
    #   @return [String]
    # @!attribute enable_branch_auto_build
    #   <p>Enables the auto-building of branches for the Amplify app. </p>
    #   @return [Boolean]
    # @!attribute enable_branch_auto_deletion
    #   <p>Automatically disconnect a branch in the Amplify console when you delete a branch from
    #               your Git repository.</p>
    #   @return [Boolean]
    # @!attribute enable_basic_auth
    #   <p>Enables basic authorization for the Amplify app's branches. </p>
    #   @return [Boolean]
    # @!attribute basic_auth_credentials
    #   <p>The basic authorization credentials for branches for the Amplify app. You must
    #               base64-encode the authorization credentials and provide them in the format
    #                   <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute custom_rules
    #   <p>Describes the custom redirect and rewrite rules for the Amplify app. </p>
    #   @return [Array<Types::CustomRule>]
    # @!attribute production_branch
    #   <p>Describes the information about a production branch of the Amplify app. </p>
    #   @return [Types::ProductionBranch]
    # @!attribute build_spec
    #   <p>Describes the content of the build specification (build spec) for the Amplify app.
    #           </p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>Describes the custom HTTP headers for the Amplify app.</p>
    #   @return [String]
    # @!attribute enable_auto_branch_creation
    #   <p>Enables automated branch creation for the Amplify app. </p>
    #   @return [Boolean]
    # @!attribute auto_branch_creation_patterns
    #   <p>Describes the automated branch creation glob patterns for the Amplify app. </p>
    #   @return [Array<String>]
    # @!attribute auto_branch_creation_config
    #   <p>Describes the automated branch creation configuration for the Amplify app. </p>
    #   @return [Types::AutoBranchCreationConfig]
    # @!attribute repository_clone_method
    #   <note>
    #               <p>This is for internal use.</p>
    #            </note>
    #            <p>The Amplify service uses this parameter to specify the authentication protocol to use
    #               to access the Git repository for an Amplify app. Amplify specifies <code>TOKEN</code>
    #               for a GitHub repository, <code>SIGV4</code> for an Amazon Web Services CodeCommit
    #               repository, and <code>SSH</code> for GitLab and Bitbucket repositories.</p>
    #   @return [String]
    # @!attribute cache_config
    #   <p>The cache configuration for the Amplify app. If you don't specify the
    #               cache configuration <code>type</code>, Amplify uses the default
    #                   <code>AMPLIFY_MANAGED</code> setting.</p>
    #   @return [Types::CacheConfig]
    # @!attribute webhook_create_time
    #   <p>A timestamp of when Amplify created the webhook in your Git
    #               repository.</p>
    #   @return [Time]
    # @!attribute waf_configuration
    #   <p>Describes the Firewall configuration for the Amplify app. Firewall
    #               support enables you to protect your hosted applications with a direct integration with
    #                   WAF.</p>
    #   @return [Types::WafConfiguration]
    # @!attribute job_config
    #   <p>The configuration details that apply to the jobs for an Amplify app.</p>
    #   @return [Types::JobConfig]
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
      :compute_role_arn,
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
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :repository_clone_method,
      :cache_config,
      :webhook_create_time,
      :waf_configuration,
      :job_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an artifact. </p>
    # @!attribute artifact_file_name
    #   <p>The file name for the artifact. </p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique ID for the artifact. </p>
    #   @return [String]
    class Artifact < Struct.new(
      :artifact_file_name,
      :artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the automated branch creation configuration. </p>
    # @!attribute stage
    #   <p>Describes the current stage for the autocreated branch. </p>
    #   @return [String]
    # @!attribute framework
    #   <p>The framework for the autocreated branch. </p>
    #   @return [String]
    # @!attribute enable_auto_build
    #   <p>Enables auto building for the autocreated branch. </p>
    #   @return [Boolean]
    # @!attribute environment_variables
    #   <p>The environment variables for the autocreated branch. </p>
    #   @return [Hash<String, String>]
    # @!attribute basic_auth_credentials
    #   <p>The basic authorization credentials for the autocreated branch. You must base64-encode
    #               the authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute enable_basic_auth
    #   <p>Enables basic authorization for the autocreated branch. </p>
    #   @return [Boolean]
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #   @return [Boolean]
    # @!attribute build_spec
    #   <p>The build specification (build spec) for the autocreated branch. </p>
    #   @return [String]
    # @!attribute enable_pull_request_preview
    #   <p>Enables pull request previews for the autocreated branch. </p>
    #   @return [Boolean]
    # @!attribute pull_request_environment_name
    #   <p>The Amplify environment name for the pull request. </p>
    #   @return [String]
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
      :pull_request_environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the backend associated with an Amplify
    #             <code>Branch</code>.</p>
    #          <p>This property is available to Amplify Gen 2 apps only. When you deploy
    #             an application with Amplify Gen 2, you provision the app's backend infrastructure using
    #             Typescript code.</p>
    # @!attribute stack_arn
    #   <p>The Amazon Resource Name (ARN) for the CloudFormation stack.</p>
    #   @return [String]
    class Backend < Struct.new(
      :stack_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the backend environment associated with a <code>Branch</code> of a Gen 1
    #                 Amplify app. Amplify Gen 1 applications are created
    #             using Amplify Studio or the Amplify command line interface
    #             (CLI).</p>
    # @!attribute backend_environment_arn
    #   <p>The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify
    #               app. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name for a backend environment that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The AWS CloudFormation stack name of a backend environment. </p>
    #   @return [String]
    # @!attribute deployment_artifacts
    #   <p>The name of deployment artifacts. </p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The creation date and time for a backend environment that is part of an Amplify app.
    #           </p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>The last updated date and time for a backend environment that is part of an Amplify
    #               app. </p>
    #   @return [Time]
    class BackendEnvironment < Struct.new(
      :backend_environment_arn,
      :environment_name,
      :stack_name,
      :deployment_artifacts,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request contains unexpected data. </p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    # @!attribute branch_arn
    #   <p> The Amazon Resource Name (ARN) for a branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p> The name for the branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description for the branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tag for the branch of an Amplify app. </p>
    #   @return [Hash<String, String>]
    # @!attribute stage
    #   <p> The current stage for the branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The display name for the branch. This is used as the default domain prefix. </p>
    #   @return [String]
    # @!attribute enable_notification
    #   <p> Enables notifications for a branch that is part of an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute create_time
    #   <p>A timestamp of when Amplify created the branch.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>A timestamp for the last updated time for a branch.</p>
    #   @return [Time]
    # @!attribute environment_variables
    #   <p> The environment variables specific to a branch of an Amplify app. </p>
    #   @return [Hash<String, String>]
    # @!attribute enable_auto_build
    #   <p> Enables auto-building on push for a branch of an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute enable_skew_protection
    #   <p>Specifies whether the skew protection feature is enabled for the branch.</p>
    #            <p>Deployment skew protection is available to Amplify applications to
    #               eliminate version skew issues between client and servers in web applications. When you
    #               apply skew protection to a branch, you can ensure that your clients always interact with
    #               the correct version of server-side assets, regardless of when a deployment occurs. For
    #               more information about skew protection, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html">Skew protection for Amplify deployments</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute custom_domains
    #   <p> The custom domains for a branch of an Amplify app. </p>
    #   @return [Array<String>]
    # @!attribute framework
    #   <p> The framework for a branch of an Amplify app. </p>
    #   @return [String]
    # @!attribute active_job_id
    #   <p> The ID of the active job for a branch of an Amplify app. </p>
    #   @return [String]
    # @!attribute total_number_of_jobs
    #   <p> The total number of jobs that are part of an Amplify app. </p>
    #   @return [String]
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for a branch of an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #   @return [Boolean]
    # @!attribute thumbnail_url
    #   <p> The thumbnail URL for the branch of an Amplify app. </p>
    #   @return [String]
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for a branch of an Amplify app. You must
    #               base64-encode the authorization credentials and provide them in the format
    #                   <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute build_spec
    #   <p> The build specification (build spec) content for the branch of an Amplify app.
    #           </p>
    #   @return [String]
    # @!attribute ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    #   @return [String]
    # @!attribute associated_resources
    #   <p> A list of custom resources that are linked to this branch. </p>
    #   @return [Array<String>]
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for the branch. </p>
    #   @return [Boolean]
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #   @return [String]
    # @!attribute destination_branch
    #   <p> The destination branch if the branch is a pull request branch. </p>
    #   @return [String]
    # @!attribute source_branch
    #   <p> The source branch if the branch is a pull request branch. </p>
    #   @return [String]
    # @!attribute backend_environment_arn
    #   <p> The Amazon Resource Name (ARN) for a backend environment that is part of an Amplify app. </p>
    #            <p>This property is available to Amplify Gen 1 apps only. When you deploy
    #               an application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    #   @return [String]
    # @!attribute backend
    #   <p>Describes the backend associated with an Amplify
    #               <code>Branch</code>.</p>
    #            <p>This property is available to Amplify Gen 2 apps only. When you deploy
    #               an application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    #   @return [Types::Backend]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for a branch of an SSR
    #               app. The Compute role allows the Amplify Hosting compute service to
    #               securely access specific Amazon Web Services resources based on the role's permissions.
    #               For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    #   @return [String]
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
      :enable_skew_protection,
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
      :backend_environment_arn,
      :backend,
      :compute_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the cache configuration for an Amplify app.</p>
    #          <p>For more information about how Amplify applies an optimal cache
    #             configuration for your app based on the type of content that is being served, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/managing-cache-configuration">Managing cache configuration</a> in the <i>Amplify User
    #                 guide</i>.</p>
    # @!attribute type
    #   <p>The type of cache configuration to use for an Amplify app.</p>
    #            <p>The <code>AMPLIFY_MANAGED</code> cache configuration automatically applies an
    #               optimized cache configuration for your app based on its platform, routing rules, and
    #               rewrite rules.</p>
    #            <p>The <code>AMPLIFY_MANAGED_NO_COOKIES</code> cache configuration type is the same as
    #                   <code>AMPLIFY_MANAGED</code>, except that it excludes all cookies from the cache
    #               key. This is the default setting.</p>
    #   @return [String]
    class CacheConfig < Struct.new(
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the current SSL/TLS certificate that is in use for the domain. If you are
    #             using <code>CreateDomainAssociation</code> to create a new domain association,
    #                 <code>Certificate</code> describes the new certificate that you are creating.</p>
    # @!attribute type
    #   <p>The type of SSL/TLS certificate that you want to use.</p>
    #            <p>Specify <code>AMPLIFY_MANAGED</code> to use the default certificate that Amplify
    #               provisions for you.</p>
    #            <p>Specify <code>CUSTOM</code> to use your own certificate that you have already added to
    #                   Certificate Manager in your Amazon Web Services account. Make sure you request (or
    #               import) the certificate in the US East (N. Virginia) Region (us-east-1). For more
    #               information about using ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into
    #                       Certificate Manager</a> in the <i>ACM User
    #                   guide</i>.</p>
    #   @return [String]
    # @!attribute custom_certificate_arn
    #   <p>The Amazon resource name (ARN) for a custom certificate that you have already added to
    #                   Certificate Manager in your Amazon Web Services account. </p>
    #            <p>This field is required only when the certificate type is <code>CUSTOM</code>.</p>
    #   @return [String]
    # @!attribute certificate_verification_dns_record
    #   <p>The DNS record for certificate verification.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :type,
      :custom_certificate_arn,
      :certificate_verification_dns_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The type of SSL/TLS certificate to use for your custom domain. If a certificate type
    #             isn't specified, Amplify uses the default <code>AMPLIFY_MANAGED</code>
    #             certificate.</p>
    # @!attribute type
    #   <p>The certificate type.</p>
    #            <p>Specify <code>AMPLIFY_MANAGED</code> to use the default certificate that Amplify
    #               provisions for you.</p>
    #            <p>Specify <code>CUSTOM</code> to use your own certificate that you have already added to
    #                   Certificate Manager in your Amazon Web Services account. Make sure you request (or
    #               import) the certificate in the US East (N. Virginia) Region (us-east-1). For more
    #               information about using ACM, see <a href="https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html">Importing certificates into
    #                       Certificate Manager</a> in the <i>ACM User
    #                   guide</i>.</p>
    #   @return [String]
    # @!attribute custom_certificate_arn
    #   <p>The Amazon resource name (ARN) for the custom certificate that you have already added
    #               to Certificate Manager in your Amazon Web Services account.</p>
    #            <p>This field is required only when the certificate type is <code>CUSTOM</code>.</p>
    #   @return [String]
    class CertificateSettings < Struct.new(
      :type,
      :custom_certificate_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure used to create apps in Amplify. </p>
    # @!attribute name
    #   <p>The name of the Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amplify app. </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The Git repository for the Amplify app. </p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform for the Amplify app. For a static app, set the platform type to
    #                   <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform
    #               type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR
    #               support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>
    #            <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set
    #               the platform type to <code>WEB_COMPUTE</code> and set the artifacts
    #                   <code>baseDirectory</code> to <code>.next</code> in the application's build
    #               settings. For an example of the build specification settings, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/deploy-nextjs-app.html#build-setting-detection-ssg-14">Amplify build settings for a Next.js 14 SSG application</a> in the
    #                   <i>Amplify Hosting User Guide</i>.</p>
    #   @return [String]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.
    #               The SSR Compute role allows the Amplify Hosting compute service to
    #               securely access specific Amazon Web Services resources based on the role's permissions.
    #               For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    #   @return [String]
    # @!attribute iam_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>
    #   @return [String]
    # @!attribute oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #            <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit. To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #            <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               create a new app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #            <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #            <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               create a new app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>The environment variables map for an Amplify app. </p>
    #            <p>For a list of the environment variables that are accessible to Amplify by default, see
    #                   <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-console-environment-variables.html">Amplify
    #                   Environment variables</a> in the <i>Amplify Hosting User
    #               Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute enable_branch_auto_build
    #   <p>Enables the auto building of branches for an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute enable_branch_auto_deletion
    #   <p>Automatically disconnects a branch in the Amplify console when you delete a branch
    #               from your Git repository. </p>
    #   @return [Boolean]
    # @!attribute enable_basic_auth
    #   <p>Enables basic authorization for an Amplify app. This will apply to all branches that
    #               are part of this app. </p>
    #   @return [Boolean]
    # @!attribute basic_auth_credentials
    #   <p>The credentials for basic authorization for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute custom_rules
    #   <p>The custom rewrite and redirect rules for an Amplify app. </p>
    #   @return [Array<Types::CustomRule>]
    # @!attribute tags
    #   <p>The tag for an Amplify app. </p>
    #   @return [Hash<String, String>]
    # @!attribute build_spec
    #   <p>The build specification (build spec) for an Amplify app. </p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #   @return [String]
    # @!attribute enable_auto_branch_creation
    #   <p>Enables automated branch creation for an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute auto_branch_creation_patterns
    #   <p>The automated branch creation glob patterns for an Amplify app. </p>
    #   @return [Array<String>]
    # @!attribute auto_branch_creation_config
    #   <p>The automated branch creation configuration for an Amplify app. </p>
    #   @return [Types::AutoBranchCreationConfig]
    # @!attribute job_config
    #   <p>Describes the configuration details that apply to the jobs for an Amplify app.</p>
    #   @return [Types::JobConfig]
    # @!attribute cache_config
    #   <p>The cache configuration for the Amplify app.</p>
    #   @return [Types::CacheConfig]
    class CreateAppRequest < Struct.new(
      :name,
      :description,
      :repository,
      :platform,
      :compute_role_arn,
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
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :job_config,
      :cache_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app
    #   <p>Represents the different branches of a repository for building, deploying, and hosting
    #               an Amplify app. </p>
    #   @return [Types::App]
    class CreateAppResult < Struct.new(
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the backend environment create request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name for the backend environment. </p>
    #   @return [String]
    # @!attribute stack_name
    #   <p>The AWS CloudFormation stack name of a backend environment. </p>
    #   @return [String]
    # @!attribute deployment_artifacts
    #   <p>The name of deployment artifacts. </p>
    #   @return [String]
    class CreateBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name,
      :stack_name,
      :deployment_artifacts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the create backend environment request. </p>
    # @!attribute backend_environment
    #   <p>Describes the backend environment for an Amplify app. </p>
    #   @return [Types::BackendEnvironment]
    class CreateBackendEnvironmentResult < Struct.new(
      :backend_environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the create branch request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name for the branch. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the branch. </p>
    #   @return [String]
    # @!attribute stage
    #   <p>Describes the current stage for the branch. </p>
    #   @return [String]
    # @!attribute framework
    #   <p> The framework for the branch. </p>
    #   @return [String]
    # @!attribute enable_notification
    #   <p> Enables notifications for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_skew_protection
    #   <p>Specifies whether the skew protection feature is enabled for the branch.</p>
    #            <p>Deployment skew protection is available to Amplify applications to
    #               eliminate version skew issues between client and servers in web applications. When you
    #               apply skew protection to a branch, you can ensure that your clients always interact with
    #               the correct version of server-side assets, regardless of when a deployment occurs. For
    #               more information about skew protection, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html">Skew protection for Amplify deployments</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute environment_variables
    #   <p> The environment variables for the branch. </p>
    #   @return [Hash<String, String>]
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p> The tag for the branch. </p>
    #   @return [Hash<String, String>]
    # @!attribute build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #   @return [String]
    # @!attribute ttl
    #   <p> The content Time To Live (TTL) for the website in seconds. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #   @return [String]
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #   @return [Boolean]
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #   @return [String]
    # @!attribute backend_environment_arn
    #   <p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1
    #               Amplify app. </p>
    #            <p>This field is available to Amplify Gen 1 apps only where the backend is
    #               created using Amplify Studio or the Amplify command line
    #               interface (CLI).</p>
    #   @return [String]
    # @!attribute backend
    #   <p>The backend for a <code>Branch</code> of an Amplify app. Use for a
    #               backend created from an CloudFormation stack.</p>
    #            <p>This field is available to Amplify Gen 2 apps only. When you deploy an
    #               application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    #   @return [Types::Backend]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of
    #               an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #               service to securely access specific Amazon Web Services resources based on the role's
    #               permissions. For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute role</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    #   @return [String]
    class CreateBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      :description,
      :stage,
      :framework,
      :enable_notification,
      :enable_auto_build,
      :enable_skew_protection,
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
      :backend_environment_arn,
      :backend,
      :compute_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for create branch request. </p>
    # @!attribute branch
    #   <p> Describes the branch for an Amplify app, which maps to a third-party repository
    #               branch. </p>
    #   @return [Types::Branch]
    class CreateBranchResult < Struct.new(
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the create a new deployment request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p> The name of the branch to use for the job. </p>
    #   @return [String]
    # @!attribute file_map
    #   <p> An optional file map that contains the file name as the key and the file content md5
    #               hash as the value. If this argument is provided, the service will generate a unique
    #               upload URL per file. Otherwise, the service will only generate a single upload URL for
    #               the zipped files. </p>
    #   @return [Hash<String, String>]
    class CreateDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :file_map,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the create a new deployment request. </p>
    # @!attribute job_id
    #   <p> The job ID for this deployment. will supply to start deployment api. </p>
    #   @return [String]
    # @!attribute file_upload_urls
    #   <p> When the <code>fileMap</code> argument is provided in the request,
    #                   <code>fileUploadUrls</code> will contain a map of file names to upload URLs. </p>
    #   @return [Hash<String, String>]
    # @!attribute zip_upload_url
    #   <p> When the <code>fileMap</code> argument is not provided in the request, this
    #                   <code>zipUploadUrl</code> is returned. </p>
    #   @return [String]
    class CreateDeploymentResult < Struct.new(
      :job_id,
      :file_upload_urls,
      :zip_upload_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the create domain association request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The domain name for the domain association. </p>
    #   @return [String]
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #   @return [Boolean]
    # @!attribute sub_domain_settings
    #   <p> The setting for the subdomain. </p>
    #   @return [Array<Types::SubDomainSetting>]
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #   @return [Array<String>]
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #   @return [String]
    # @!attribute certificate_settings
    #   <p>The type of SSL/TLS certificate to use for your custom domain. If you don't specify a
    #               certificate type, Amplify uses the default certificate that it provisions and manages
    #               for you.</p>
    #   @return [Types::CertificateSettings]
    class CreateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      :certificate_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the create domain association request. </p>
    # @!attribute domain_association
    #   <p> Describes the structure of a domain association, which associates a custom domain
    #               with an Amplify app. </p>
    #   @return [Types::DomainAssociation]
    class CreateDomainAssociationResult < Struct.new(
      :domain_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the create webhook request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name for a branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a webhook. </p>
    #   @return [String]
    class CreateWebhookRequest < Struct.new(
      :app_id,
      :branch_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the create webhook request. </p>
    # @!attribute webhook
    #   <p>Describes a webhook that connects repository events to an Amplify app. </p>
    #   @return [Types::Webhook]
    class CreateWebhookResult < Struct.new(
      :webhook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a custom rewrite or redirect rule. </p>
    # @!attribute source
    #   <p>The source pattern for a URL rewrite or redirect rule. </p>
    #   @return [String]
    # @!attribute target
    #   <p>The target pattern for a URL rewrite or redirect rule. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status code for a URL rewrite or redirect rule. </p>
    #            <dl>
    #               <dt>200</dt>
    #               <dd>
    #                  <p>Represents a 200 rewrite rule.</p>
    #               </dd>
    #               <dt>301</dt>
    #               <dd>
    #                  <p>Represents a 301 (moved permanently) redirect rule. This and all future
    #                           requests should be directed to the target URL. </p>
    #               </dd>
    #               <dt>302</dt>
    #               <dd>
    #                  <p>Represents a 302 temporary redirect rule.</p>
    #               </dd>
    #               <dt>404</dt>
    #               <dd>
    #                  <p>Represents a 404 redirect rule.</p>
    #               </dd>
    #               <dt>404-200</dt>
    #               <dd>
    #                  <p>Represents a 404 rewrite rule.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute condition
    #   <p>The condition for a URL rewrite or redirect rule, such as a country code. </p>
    #   @return [String]
    class CustomRule < Struct.new(
      :source,
      :target,
      :status,
      :condition,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the request structure for the delete app request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    class DeleteAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the delete app request. </p>
    # @!attribute app
    #   <p>Represents the different branches of a repository for building, deploying, and hosting
    #               an Amplify app. </p>
    #   @return [Types::App]
    class DeleteAppResult < Struct.new(
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the delete backend environment request. </p>
    # @!attribute app_id
    #   <p>The unique ID of an Amplify app. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of a backend environment of an Amplify app. </p>
    #   @return [String]
    class DeleteBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure of the delete backend environment result. </p>
    # @!attribute backend_environment
    #   <p>Describes the backend environment for an Amplify app. </p>
    #   @return [Types::BackendEnvironment]
    class DeleteBackendEnvironmentResult < Struct.new(
      :backend_environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the delete branch request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch. </p>
    #   @return [String]
    class DeleteBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the delete branch request. </p>
    # @!attribute branch
    #   <p>The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #   @return [Types::Branch]
    class DeleteBranchResult < Struct.new(
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the delete domain association request. </p>
    # @!attribute app_id
    #   <p> The unique id for an Amplify app. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #   @return [String]
    class DeleteDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_association
    #   <p>Describes the association between a custom domain and an Amplify app. </p>
    #   @return [Types::DomainAssociation]
    class DeleteDomainAssociationResult < Struct.new(
      :domain_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the delete job request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p> The unique ID for the job. </p>
    #   @return [String]
    class DeleteJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the delete job request. </p>
    # @!attribute job_summary
    #   <p> Describes the summary for an execution job for an Amplify app. </p>
    #   @return [Types::JobSummary]
    class DeleteJobResult < Struct.new(
      :job_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the delete webhook request. </p>
    # @!attribute webhook_id
    #   <p>The unique ID for a webhook. </p>
    #   @return [String]
    class DeleteWebhookRequest < Struct.new(
      :webhook_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the delete webhook request. </p>
    # @!attribute webhook
    #   <p>Describes a webhook that connects repository events to an Amplify app. </p>
    #   @return [Types::Webhook]
    class DeleteWebhookResult < Struct.new(
      :webhook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation failed because a dependent service threw an exception. </p>
    # @!attribute message
    #   @return [String]
    class DependentServiceFailureException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between a custom domain and an Amplify app. </p>
    # @!attribute domain_association_arn
    #   <p> The Amazon Resource Name (ARN) for the domain association. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #   @return [String]
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #   @return [Boolean]
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets branch patterns for automatic subdomain creation. </p>
    #   @return [Array<String>]
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #   @return [String]
    # @!attribute domain_status
    #   <p> The current status of the domain association. </p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the domain update operation that is currently in progress. The following
    #               list describes the valid update states.</p>
    #            <dl>
    #               <dt>REQUESTING_CERTIFICATE</dt>
    #               <dd>
    #                  <p>The certificate is in the process of being updated.</p>
    #               </dd>
    #               <dt>PENDING_VERIFICATION</dt>
    #               <dd>
    #                  <p>Indicates that an Amplify managed certificate is in the
    #                           process of being verified. This occurs during the creation of a custom
    #                           domain or when a custom domain is updated to use a managed
    #                           certificate.</p>
    #               </dd>
    #               <dt>IMPORTING_CUSTOM_CERTIFICATE</dt>
    #               <dd>
    #                  <p>Indicates that an Amplify custom certificate is in the
    #                           process of being imported. This occurs during the creation of a custom
    #                           domain or when a custom domain is updated to use a custom
    #                           certificate.</p>
    #               </dd>
    #               <dt>PENDING_DEPLOYMENT</dt>
    #               <dd>
    #                  <p>Indicates that the subdomain or certificate changes are being
    #                           propagated.</p>
    #               </dd>
    #               <dt>AWAITING_APP_CNAME</dt>
    #               <dd>
    #                  <p>Amplify is waiting for CNAME records corresponding to
    #                           subdomains to be propagated. If your custom domain is on Route 53,
    #                               Amplify handles this for you automatically. For more
    #                           information about custom domains, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/custom-domains.html">Setting up custom
    #                               domains</a> in the <i>Amplify Hosting User
    #                               Guide</i>. </p>
    #               </dd>
    #               <dt>UPDATE_COMPLETE</dt>
    #               <dd>
    #                  <p>The certificate has been associated with a domain.</p>
    #               </dd>
    #               <dt>UPDATE_FAILED</dt>
    #               <dd>
    #                  <p>The certificate has failed to be provisioned or associated, and there is
    #                           no existing active certificate to roll back to.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute status_reason
    #   <p> Additional information that describes why the domain association is in the current
    #               state.</p>
    #   @return [String]
    # @!attribute certificate_verification_dns_record
    #   <p> The DNS record for certificate verification. </p>
    #   @return [String]
    # @!attribute sub_domains
    #   <p> The subdomains for the domain association. </p>
    #   @return [Array<Types::SubDomain>]
    # @!attribute certificate
    #   <p>Describes the SSL/TLS certificate for the domain association. This can be your own
    #               custom certificate or the default certificate that Amplify provisions for
    #               you.</p>
    #            <p>If you are updating your domain to use a different certificate,
    #                   <code>certificate</code> points to the new certificate that is being created instead
    #               of the current active certificate. Otherwise, <code>certificate</code> points to the
    #               current active certificate.</p>
    #   @return [Types::Certificate]
    class DomainAssociation < Struct.new(
      :domain_association_arn,
      :domain_name,
      :enable_auto_sub_domain,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      :domain_status,
      :update_status,
      :status_reason,
      :certificate_verification_dns_record,
      :sub_domains,
      :certificate,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the generate access logs request. </p>
    # @!attribute start_time
    #   <p>The time at which the logs should start. The time range specified is inclusive of the
    #               start time. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the logs should end. The time range specified is inclusive of the
    #               end time. </p>
    #   @return [Time]
    # @!attribute domain_name
    #   <p>The name of the domain. </p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    class GenerateAccessLogsRequest < Struct.new(
      :start_time,
      :end_time,
      :domain_name,
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the generate access logs request. </p>
    # @!attribute log_url
    #   <p>The pre-signed URL for the requested access logs. </p>
    #   @return [String]
    class GenerateAccessLogsResult < Struct.new(
      :log_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the get app request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    class GetAppRequest < Struct.new(
      :app_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute app
    #   <p>Represents the different branches of a repository for building, deploying, and hosting
    #               an Amplify app. </p>
    #   @return [Types::App]
    class GetAppResult < Struct.new(
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the request structure for the get artifact request. </p>
    # @!attribute artifact_id
    #   <p>The unique ID for an artifact. </p>
    #   @return [String]
    class GetArtifactUrlRequest < Struct.new(
      :artifact_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the result structure for the get artifact request. </p>
    # @!attribute artifact_id
    #   <p>The unique ID for an artifact. </p>
    #   @return [String]
    # @!attribute artifact_url
    #   <p>The presigned URL for the artifact. </p>
    #   @return [String]
    class GetArtifactUrlResult < Struct.new(
      :artifact_id,
      :artifact_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the get backend environment request. </p>
    # @!attribute app_id
    #   <p>The unique id for an Amplify app. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name for the backend environment. </p>
    #   @return [String]
    class GetBackendEnvironmentRequest < Struct.new(
      :app_id,
      :environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the get backend environment result. </p>
    # @!attribute backend_environment
    #   <p>Describes the backend environment for an Amplify app. </p>
    #   @return [Types::BackendEnvironment]
    class GetBackendEnvironmentResult < Struct.new(
      :backend_environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the get branch request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch. </p>
    #   @return [String]
    class GetBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute branch
    #   <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #   @return [Types::Branch]
    class GetBranchResult < Struct.new(
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the get domain association request. </p>
    # @!attribute app_id
    #   <p> The unique id for an Amplify app. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #   @return [String]
    class GetDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the get domain association request. </p>
    # @!attribute domain_association
    #   <p> Describes the structure of a domain association, which associates a custom domain
    #               with an Amplify app. </p>
    #   @return [Types::DomainAssociation]
    class GetDomainAssociationResult < Struct.new(
      :domain_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the get job request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique ID for the job. </p>
    #   @return [String]
    class GetJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job
    #   <p> Describes an execution job for an Amplify app. </p>
    #   @return [Types::Job]
    class GetJobResult < Struct.new(
      :job,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the get webhook request. </p>
    # @!attribute webhook_id
    #   <p>The unique ID for a webhook. </p>
    #   @return [String]
    class GetWebhookRequest < Struct.new(
      :webhook_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the get webhook request. </p>
    # @!attribute webhook
    #   <p>Describes the structure of a webhook. </p>
    #   @return [Types::Webhook]
    class GetWebhookResult < Struct.new(
      :webhook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The service failed to perform an operation due to an internal issue. </p>
    # @!attribute message
    #   @return [String]
    class InternalFailureException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Describes an execution job for an Amplify app. </p>
    # @!attribute summary
    #   <p> Describes the summary for an execution job for an Amplify app. </p>
    #   @return [Types::JobSummary]
    # @!attribute steps
    #   <p> The execution steps for an execution job, for an Amplify app. </p>
    #   @return [Array<Types::Step>]
    class Job < Struct.new(
      :summary,
      :steps,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration details that apply to the jobs for an Amplify app.</p>
    #          <p>Use <code>JobConfig</code> to apply configuration to jobs, such as customizing the build instance size when you create or
    #             update an Amplify app. For more information about customizable build
    #             instances, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/custom-build-instance.html">Custom build instances</a> in the <i>Amplify User Guide</i>.</p>
    # @!attribute build_compute_type
    #   <p>Specifies the size of the build instance. Amplify supports three
    #               instance sizes: <code>STANDARD_8GB</code>, <code>LARGE_16GB</code>, and
    #                   <code>XLARGE_72GB</code>. If you don't specify a value, Amplify uses
    #               the <code>STANDARD_8GB</code> default.</p>
    #            <p>The following list describes the CPU, memory, and storage capacity for each build
    #               instance type:</p>
    #            <dl>
    #               <dt>STANDARD_8GB</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>vCPUs: 4</p>
    #                     </li>
    #                     <li>
    #                        <p>Memory: 8 GiB</p>
    #                     </li>
    #                     <li>
    #                        <p>Disk space: 128 GB</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>LARGE_16GB</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>vCPUs: 8</p>
    #                     </li>
    #                     <li>
    #                        <p>Memory: 16 GiB</p>
    #                     </li>
    #                     <li>
    #                        <p>Disk space: 128 GB</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>XLARGE_72GB</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>vCPUs: 36</p>
    #                     </li>
    #                     <li>
    #                        <p>Memory: 72 GiB</p>
    #                     </li>
    #                     <li>
    #                        <p>Disk space: 256 GB</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #   @return [String]
    class JobConfig < Struct.new(
      :build_compute_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Describes the summary for an execution job for an Amplify app. </p>
    # @!attribute job_arn
    #   <p> The Amazon Resource Name (ARN) for the job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p> The unique ID for the job. </p>
    #   @return [String]
    # @!attribute commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    #   @return [String]
    # @!attribute commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    #   @return [String]
    # @!attribute commit_time
    #   <p>The commit date and time for the job. </p>
    #   @return [Time]
    # @!attribute start_time
    #   <p> The start date and time for the job. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The current status for the job. </p>
    #   @return [String]
    # @!attribute end_time
    #   <p> The end date and time for the job. </p>
    #   @return [Time]
    # @!attribute job_type
    #   <p> The type for the job. If the value is <code>RELEASE</code>, the job was manually
    #               released from its source by using the <code>StartJob</code> API. This value is available
    #               only for apps that are connected to a repository.</p>
    #            <p>If the value is <code>RETRY</code>, the job was manually retried using the
    #                   <code>StartJob</code> API. If the value is <code>WEB_HOOK</code>, the job was
    #               automatically triggered by webhooks. If the value is <code>MANUAL</code>, the job is for
    #               a manually deployed app. Manually deployed apps are not connected to a Git
    #               repository.</p>
    #   @return [String]
    # @!attribute source_url
    #   <p>The source URL for the files to deploy. The source URL can be either an HTTP GET URL
    #               that is publicly accessible and downloads a single .zip file, or an Amazon S3
    #               bucket and prefix.</p>
    #   @return [String]
    # @!attribute source_url_type
    #   <p>The type of source specified by the <code>sourceURL</code>. If the value is
    #                   <code>ZIP</code>, the source is a .zip file. If the value is
    #                   <code>BUCKET_PREFIX</code>, the source is an Amazon S3 bucket and prefix. If
    #               no value is specified, the default is <code>ZIP</code>.</p>
    #   @return [String]
    class JobSummary < Struct.new(
      :job_arn,
      :job_id,
      :commit_id,
      :commit_message,
      :commit_time,
      :start_time,
      :status,
      :end_time,
      :job_type,
      :source_url,
      :source_url_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource could not be created because service quotas were exceeded. </p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the list apps request. </p>
    # @!attribute next_token
    #   <p>A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListAppsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for an Amplify app list request. </p>
    # @!attribute apps
    #   <p>A list of Amplify apps. </p>
    #   @return [Array<Types::App>]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing apps from start. If non-null, the
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
    #   @return [String]
    class ListAppsResult < Struct.new(
      :apps,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the request structure for the list artifacts request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of a branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique ID for a job. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing artifacts from start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more artifacts.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListArtifactsRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the list artifacts request. </p>
    # @!attribute artifacts
    #   <p>A list of artifacts. </p>
    #   @return [Array<Types::Artifact>]
    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListArtifactsResult < Struct.new(
      :artifacts,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the list backend environments request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the backend environment </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing backend environments from the start.
    #               If a non-null pagination token is returned in a result, pass its value in here to list
    #               more backend environments. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListBackendEnvironmentsRequest < Struct.new(
      :app_id,
      :environment_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the list backend environments result. </p>
    # @!attribute backend_environments
    #   <p>The list of backend environments for an Amplify app. </p>
    #   @return [Array<Types::BackendEnvironment>]
    # @!attribute next_token
    #   <p>A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListBackendEnvironmentsResult < Struct.new(
      :backend_environments,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the list branches request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing branches from the start. If a
    #               non-null pagination token is returned in a result, pass its value in here to list more
    #               branches. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListBranchesRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the list branches request. </p>
    # @!attribute branches
    #   <p> A list of branches for an Amplify app. </p>
    #   @return [Array<Types::Branch>]
    # @!attribute next_token
    #   <p> A pagination token. If a non-null pagination token is returned in a result, pass its
    #               value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListBranchesResult < Struct.new(
      :branches,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the list domain associations request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> A pagination token. Set to null to start listing apps from the start. If non-null, a
    #               pagination token is returned in a result. Pass its value in here to list more projects.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListDomainAssociationsRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the list domain association request. </p>
    # @!attribute domain_associations
    #   <p> A list of domain associations. </p>
    #   @return [Array<Types::DomainAssociation>]
    # @!attribute next_token
    #   <p> A pagination token. If non-null, a pagination token is returned in a result. Pass its
    #               value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListDomainAssociationsResult < Struct.new(
      :domain_associations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the list jobs request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the request. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing steps from the start. If a non-null
    #               pagination token is returned in a result, pass its value in here to list more steps.
    #           </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListJobsRequest < Struct.new(
      :app_id,
      :branch_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of records to list in a single response. </p>
    # @!attribute job_summaries
    #   <p>The result structure for the list job result request. </p>
    #   @return [Array<Types::JobSummary>]
    # @!attribute next_token
    #   <p>A pagination token. If non-null the pagination token is returned in a result. Pass its
    #               value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListJobsResult < Struct.new(
      :job_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure to use to list tags for a resource. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to list tags. </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response for the list tags for resource request. </p>
    # @!attribute tags
    #   <p>A list of tags for the specified The Amazon Resource Name (ARN). </p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the list webhooks request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token. Set to null to start listing webhooks from the start. If
    #               non-null,the pagination token is returned in a result. Pass its value in here to list
    #               more webhooks. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of records to list in a single response. </p>
    #   @return [Integer]
    class ListWebhooksRequest < Struct.new(
      :app_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the list webhooks request. </p>
    # @!attribute webhooks
    #   <p>A list of webhooks. </p>
    #   @return [Array<Types::Webhook>]
    # @!attribute next_token
    #   <p>A pagination token. If non-null, the pagination token is returned in a result. Pass
    #               its value in another request to retrieve more entries. </p>
    #   @return [String]
    class ListWebhooksResult < Struct.new(
      :webhooks,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An entity was not found during an operation. </p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information about a production branch for an Amplify app. </p>
    # @!attribute last_deploy_time
    #   <p>The last deploy time of the production branch. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the production branch. </p>
    #   @return [String]
    # @!attribute thumbnail_url
    #   <p>The thumbnail URL for the production branch. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The branch name for the production branch. </p>
    #   @return [String]
    class ProductionBranch < Struct.new(
      :last_deploy_time,
      :status,
      :thumbnail_url,
      :branch_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation failed due to a non-existent resource. </p>
    # @!attribute code
    #   @return [String]
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :code,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the start a deployment request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the deployment job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job ID for this deployment that is generated by the <code>CreateDeployment</code>
    #               request. </p>
    #   @return [String]
    # @!attribute source_url
    #   <p>The source URL for the deployment that is used when calling
    #                   <code>StartDeployment</code> without <code>CreateDeployment</code>. The source URL
    #               can be either an HTTP GET URL that is publicly accessible and downloads a single .zip
    #               file, or an Amazon S3 bucket and prefix.</p>
    #   @return [String]
    # @!attribute source_url_type
    #   <p>The type of source specified by the <code>sourceURL</code>. If the value is
    #                   <code>ZIP</code>, the source is a .zip file. If the value is
    #                   <code>BUCKET_PREFIX</code>, the source is an Amazon S3 bucket and prefix. If
    #               no value is specified, the default is <code>ZIP</code>.</p>
    #   @return [String]
    class StartDeploymentRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :source_url,
      :source_url_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the start a deployment request. </p>
    # @!attribute job_summary
    #   <p>The summary for the job. </p>
    #   @return [Types::JobSummary]
    class StartDeploymentResult < Struct.new(
      :job_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the start job request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique ID for an existing job. This is required if the value of
    #                   <code>jobType</code> is <code>RETRY</code>. </p>
    #   @return [String]
    # @!attribute job_type
    #   <p>Describes the type for the job. The job type <code>RELEASE</code> starts a new job
    #               with the latest change from the specified branch. This value is available only for apps
    #               that are connected to a repository. </p>
    #            <p>The job type <code>RETRY</code> retries an existing job. If the job type value is
    #                   <code>RETRY</code>, the <code>jobId</code> is also required. </p>
    #   @return [String]
    # @!attribute job_reason
    #   <p>A descriptive reason for starting the job.</p>
    #   @return [String]
    # @!attribute commit_id
    #   <p> The commit ID from a third-party repository provider for the job. </p>
    #   @return [String]
    # @!attribute commit_message
    #   <p> The commit message from a third-party repository provider for the job. </p>
    #   @return [String]
    # @!attribute commit_time
    #   <p> The commit date and time for the job. </p>
    #   @return [Time]
    class StartJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      :job_type,
      :job_reason,
      :commit_id,
      :commit_message,
      :commit_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the run job request. </p>
    # @!attribute job_summary
    #   <p> The summary for the job. </p>
    #   @return [Types::JobSummary]
    class StartJobResult < Struct.new(
      :job_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Describes an execution step, for an execution job, for an Amplify app. </p>
    # @!attribute step_name
    #   <p> The name of the execution step. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The start date and time of the execution step. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The status of the execution step. </p>
    #   @return [String]
    # @!attribute end_time
    #   <p> The end date and time of the execution step. </p>
    #   @return [Time]
    # @!attribute log_url
    #   <p> The URL to the logs for the execution step. </p>
    #   @return [String]
    # @!attribute artifacts_url
    #   <p> The URL to the build artifact for the execution step. </p>
    #   @return [String]
    # @!attribute test_artifacts_url
    #   <p> The URL to the test artifact for the execution step. </p>
    #   @return [String]
    # @!attribute test_config_url
    #   <p> The URL to the test configuration for the execution step. </p>
    #   @return [String]
    # @!attribute screenshots
    #   <p> The list of screenshot URLs for the execution step, if relevant. </p>
    #   @return [Hash<String, String>]
    # @!attribute status_reason
    #   <p> The reason for the current step status. </p>
    #   @return [String]
    # @!attribute context
    #   <p> The context for the current step. Includes a build image if the step is build.
    #           </p>
    #   @return [String]
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
      :context,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the stop job request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch to use for the stop job request. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p> The unique id for the job. </p>
    #   @return [String]
    class StopJobRequest < Struct.new(
      :app_id,
      :branch_name,
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the stop job request. </p>
    # @!attribute job_summary
    #   <p> The summary for the job. </p>
    #   @return [Types::JobSummary]
    class StopJobResult < Struct.new(
      :job_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The subdomain for the domain association. </p>
    # @!attribute sub_domain_setting
    #   <p> Describes the settings for the subdomain. </p>
    #   @return [Types::SubDomainSetting]
    # @!attribute verified
    #   <p> The verified status of the subdomain </p>
    #   @return [Boolean]
    # @!attribute dns_record
    #   <p> The DNS record for the subdomain. </p>
    #   @return [String]
    class SubDomain < Struct.new(
      :sub_domain_setting,
      :verified,
      :dns_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Describes the settings for the subdomain. </p>
    # @!attribute prefix
    #   <p> The prefix setting for the subdomain. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p> The branch name setting for the subdomain. </p>
    #   @return [String]
    class SubDomainSetting < Struct.new(
      :prefix,
      :branch_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure to tag a resource with a tag key and value.</p>
    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) to use to tag a resource. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to tag the resource. </p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response for the tag resource request. </p>
    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An operation failed due to a lack of access. </p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the untag resource request. </p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) to use to untag a resource. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to use to untag a resource. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response for the untag resource request. </p>
    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the update app request. </p>
    # @!attribute app_id
    #   <p>The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for an Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for an Amplify app. </p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform for the Amplify app. For a static app, set the platform type to
    #                   <code>WEB</code>. For a dynamic server-side rendered (SSR) app, set the platform
    #               type to <code>WEB_COMPUTE</code>. For an app requiring Amplify Hosting's original SSR
    #               support only, set the platform type to <code>WEB_DYNAMIC</code>.</p>
    #            <p>If you are deploying an SSG only app with Next.js version 14 or later, you must set
    #               the platform type to <code>WEB_COMPUTE</code>.</p>
    #   @return [String]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to an SSR app.
    #               The SSR Compute role allows the Amplify Hosting compute service to
    #               securely access specific Amazon Web Services resources based on the role's permissions.
    #               For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute
    #                   role</a> in the <i>Amplify User Guide</i>.</p>
    #   @return [String]
    # @!attribute iam_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role for the Amplify app.</p>
    #   @return [String]
    # @!attribute environment_variables
    #   <p>The environment variables for an Amplify app. </p>
    #   @return [Hash<String, String>]
    # @!attribute enable_branch_auto_build
    #   <p>Enables branch auto-building for an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute enable_branch_auto_deletion
    #   <p>Automatically disconnects a branch in the Amplify console when you delete a branch
    #               from your Git repository. </p>
    #   @return [Boolean]
    # @!attribute enable_basic_auth
    #   <p>Enables basic authorization for an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute basic_auth_credentials
    #   <p>The basic authorization credentials for an Amplify app. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute custom_rules
    #   <p>The custom redirect and rewrite rules for an Amplify app. </p>
    #   @return [Array<Types::CustomRule>]
    # @!attribute build_spec
    #   <p>The build specification (build spec) for an Amplify app. </p>
    #   @return [String]
    # @!attribute custom_headers
    #   <p>The custom HTTP headers for an Amplify app.</p>
    #   @return [String]
    # @!attribute enable_auto_branch_creation
    #   <p>Enables automated branch creation for an Amplify app. </p>
    #   @return [Boolean]
    # @!attribute auto_branch_creation_patterns
    #   <p>Describes the automated branch creation glob patterns for an Amplify app. </p>
    #   @return [Array<String>]
    # @!attribute auto_branch_creation_config
    #   <p>The automated branch creation configuration for an Amplify app. </p>
    #   @return [Types::AutoBranchCreationConfig]
    # @!attribute repository
    #   <p>The name of the Git repository for an Amplify app.</p>
    #   @return [String]
    # @!attribute oauth_token
    #   <p>The OAuth token for a third-party source control system for an Amplify app. The OAuth
    #               token is used to create a webhook and a read-only deploy key using SSH cloning. The
    #               OAuth token is not stored.</p>
    #            <p>Use <code>oauthToken</code> for repository providers other than GitHub, such as
    #               Bitbucket or CodeCommit.</p>
    #            <p>To authorize access to GitHub as your repository provider, use
    #                   <code>accessToken</code>.</p>
    #            <p>You must specify either <code>oauthToken</code> or <code>accessToken</code> when you
    #               update an app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #   @return [String]
    # @!attribute access_token
    #   <p>The personal access token for a GitHub repository for an Amplify app. The personal
    #               access token is used to authorize access to a GitHub repository using the Amplify GitHub
    #               App. The token is not stored.</p>
    #            <p>Use <code>accessToken</code> for GitHub repositories only. To authorize access to a
    #               repository provider such as Bitbucket or CodeCommit, use <code>oauthToken</code>.</p>
    #            <p>You must specify either <code>accessToken</code> or <code>oauthToken</code> when you
    #               update an app.</p>
    #            <p>Existing Amplify apps deployed from a GitHub repository using OAuth continue to work
    #               with CI/CD. However, we strongly recommend that you migrate these apps to use the GitHub
    #               App. For more information, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/setting-up-GitHub-access.html#migrating-to-github-app-auth">Migrating an existing OAuth app to the Amplify GitHub App</a> in the
    #                   <i>Amplify User Guide</i> .</p>
    #   @return [String]
    # @!attribute job_config
    #   <p>Describes the configuration details that apply to the jobs for an Amplify app.</p>
    #   @return [Types::JobConfig]
    # @!attribute cache_config
    #   <p>The cache configuration for the Amplify app.</p>
    #   @return [Types::CacheConfig]
    class UpdateAppRequest < Struct.new(
      :app_id,
      :name,
      :description,
      :platform,
      :compute_role_arn,
      :iam_service_role_arn,
      :environment_variables,
      :enable_branch_auto_build,
      :enable_branch_auto_deletion,
      :enable_basic_auth,
      :basic_auth_credentials,
      :custom_rules,
      :build_spec,
      :custom_headers,
      :enable_auto_branch_creation,
      :auto_branch_creation_patterns,
      :auto_branch_creation_config,
      :repository,
      :oauth_token,
      :access_token,
      :job_config,
      :cache_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for an Amplify app update request. </p>
    # @!attribute app
    #   <p>Represents the updated Amplify app. </p>
    #   @return [Types::App]
    class UpdateAppResult < Struct.new(
      :app,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the update branch request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the branch. </p>
    #   @return [String]
    # @!attribute description
    #   <p> The description for the branch. </p>
    #   @return [String]
    # @!attribute framework
    #   <p> The framework for the branch. </p>
    #   @return [String]
    # @!attribute stage
    #   <p> Describes the current stage for the branch. </p>
    #   @return [String]
    # @!attribute enable_notification
    #   <p> Enables notifications for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_auto_build
    #   <p> Enables auto building for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_skew_protection
    #   <p>Specifies whether the skew protection feature is enabled for the branch.</p>
    #            <p>Deployment skew protection is available to Amplify applications to
    #               eliminate version skew issues between client and servers in web applications. When you
    #               apply skew protection to a branch, you can ensure that your clients always interact with
    #               the correct version of server-side assets, regardless of when a deployment occurs. For
    #               more information about skew protection, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/skew-protection.html">Skew protection for Amplify deployments</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute environment_variables
    #   <p> The environment variables for the branch. </p>
    #   @return [Hash<String, String>]
    # @!attribute basic_auth_credentials
    #   <p> The basic authorization credentials for the branch. You must base64-encode the
    #               authorization credentials and provide them in the format
    #               <code>user:password</code>.</p>
    #   @return [String]
    # @!attribute enable_basic_auth
    #   <p> Enables basic authorization for the branch. </p>
    #   @return [Boolean]
    # @!attribute enable_performance_mode
    #   <p>Enables performance mode for the branch.</p>
    #            <p>Performance mode optimizes for faster hosting performance by keeping content cached at
    #               the edge for a longer interval. When performance mode is enabled, hosting configuration
    #               or code changes can take up to 10 minutes to roll out. </p>
    #   @return [Boolean]
    # @!attribute build_spec
    #   <p> The build specification (build spec) for the branch. </p>
    #   @return [String]
    # @!attribute ttl
    #   <p> The content Time to Live (TTL) for the website in seconds. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p> The display name for a branch. This is used as the default domain prefix. </p>
    #   @return [String]
    # @!attribute enable_pull_request_preview
    #   <p> Enables pull request previews for this branch. </p>
    #   @return [Boolean]
    # @!attribute pull_request_environment_name
    #   <p> The Amplify environment name for the pull request. </p>
    #   @return [String]
    # @!attribute backend_environment_arn
    #   <p>The Amazon Resource Name (ARN) for a backend environment that is part of a Gen 1
    #               Amplify app. </p>
    #            <p>This field is available to Amplify Gen 1 apps only where the backend is
    #               created using Amplify Studio or the Amplify command line
    #               interface (CLI).</p>
    #   @return [String]
    # @!attribute backend
    #   <p>The backend for a <code>Branch</code> of an Amplify app. Use for a
    #               backend created from an CloudFormation stack.</p>
    #            <p>This field is available to Amplify Gen 2 apps only. When you deploy an
    #               application with Amplify Gen 2, you provision the app's backend infrastructure using
    #               Typescript code.</p>
    #   @return [Types::Backend]
    # @!attribute compute_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to assign to a branch of
    #               an SSR app. The SSR Compute role allows the Amplify Hosting compute
    #               service to securely access specific Amazon Web Services resources based on the role's
    #               permissions. For more information about the SSR Compute role, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/amplify-SSR-compute-role.html">Adding an SSR Compute role</a> in the <i>Amplify User
    #                   Guide</i>.</p>
    #   @return [String]
    class UpdateBranchRequest < Struct.new(
      :app_id,
      :branch_name,
      :description,
      :framework,
      :stage,
      :enable_notification,
      :enable_auto_build,
      :enable_skew_protection,
      :environment_variables,
      :basic_auth_credentials,
      :enable_basic_auth,
      :enable_performance_mode,
      :build_spec,
      :ttl,
      :display_name,
      :enable_pull_request_preview,
      :pull_request_environment_name,
      :backend_environment_arn,
      :backend,
      :compute_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the update branch request. </p>
    # @!attribute branch
    #   <p> The branch for an Amplify app, which maps to a third-party repository branch. </p>
    #   @return [Types::Branch]
    class UpdateBranchResult < Struct.new(
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The request structure for the update domain association request. </p>
    # @!attribute app_id
    #   <p> The unique ID for an Amplify app. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p> The name of the domain. </p>
    #   @return [String]
    # @!attribute enable_auto_sub_domain
    #   <p> Enables the automated creation of subdomains for branches. </p>
    #   @return [Boolean]
    # @!attribute sub_domain_settings
    #   <p> Describes the settings for the subdomain. </p>
    #   @return [Array<Types::SubDomainSetting>]
    # @!attribute auto_sub_domain_creation_patterns
    #   <p> Sets the branch patterns for automatic subdomain creation. </p>
    #   @return [Array<String>]
    # @!attribute auto_sub_domain_iam_role
    #   <p> The required AWS Identity and Access Management (IAM) service role for the Amazon
    #               Resource Name (ARN) for automatically creating subdomains. </p>
    #   @return [String]
    # @!attribute certificate_settings
    #   <p>The type of SSL/TLS certificate to use for your custom domain.</p>
    #   @return [Types::CertificateSettings]
    class UpdateDomainAssociationRequest < Struct.new(
      :app_id,
      :domain_name,
      :enable_auto_sub_domain,
      :sub_domain_settings,
      :auto_sub_domain_creation_patterns,
      :auto_sub_domain_iam_role,
      :certificate_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The result structure for the update domain association request. </p>
    # @!attribute domain_association
    #   <p> Describes a domain association, which associates a custom domain with an Amplify app.
    #           </p>
    #   @return [Types::DomainAssociation]
    class UpdateDomainAssociationResult < Struct.new(
      :domain_association,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request structure for the update webhook request. </p>
    # @!attribute webhook_id
    #   <p>The unique ID for a webhook. </p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name for a branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a webhook. </p>
    #   @return [String]
    class UpdateWebhookRequest < Struct.new(
      :webhook_id,
      :branch_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result structure for the update webhook request. </p>
    # @!attribute webhook
    #   <p>Describes a webhook that connects repository events to an Amplify app. </p>
    #   @return [Types::Webhook]
    class UpdateWebhookResult < Struct.new(
      :webhook,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Firewall configuration for a hosted Amplify application.
    #             Firewall support enables you to protect your web applications with a direct integration
    #             with WAF. For more information about using WAF protections
    #             for an Amplify application, see <a href="https://docs.aws.amazon.com/amplify/latest/userguide/WAF-integration.html">Firewall support for hosted
    #                 sites</a> in the <i>Amplify User Guide</i>. </p>
    # @!attribute web_acl_arn
    #   <p>The Amazon Resource Name (ARN) for the web ACL associated with an Amplify app.</p>
    #   @return [String]
    # @!attribute waf_status
    #   <p>The status of the process to associate or disassociate a web ACL to an Amplify app.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the Firewall configuration.</p>
    #   @return [String]
    class WafConfiguration < Struct.new(
      :web_acl_arn,
      :waf_status,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a webhook that connects repository events to an Amplify app. </p>
    # @!attribute webhook_arn
    #   <p>The Amazon Resource Name (ARN) for the webhook. </p>
    #   @return [String]
    # @!attribute webhook_id
    #   <p>The ID of the webhook. </p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The URL of the webhook. </p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique ID of an Amplify app.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name for a branch that is part of an Amplify app. </p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a webhook. </p>
    #   @return [String]
    # @!attribute create_time
    #   <p>A timestamp of when Amplify created the webhook in your Git
    #               repository.</p>
    #   @return [Time]
    # @!attribute update_time
    #   <p>A timestamp of when Amplify updated the webhook in your Git
    #               repository.</p>
    #   @return [Time]
    class Webhook < Struct.new(
      :webhook_arn,
      :webhook_id,
      :webhook_url,
      :app_id,
      :branch_name,
      :description,
      :create_time,
      :update_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
