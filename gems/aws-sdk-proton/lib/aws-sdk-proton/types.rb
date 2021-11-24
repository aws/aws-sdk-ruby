# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Proton
  module Types

    # @note When making an API call, you may pass AcceptEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/AcceptEnvironmentAccountConnectionInput AWS API Documentation
    #
    class AcceptEnvironmentAccountConnectionInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment account connection data that's returned by Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/AcceptEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class AcceptEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # There *isn't* sufficient access for performing this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # The Proton pipeline service role and repository data.
    #
    # @!attribute [rw] pipeline_provisioning_repository
    #   The repository that you provide with pull request provisioning.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [Types::RepositoryBranch]
    #
    # @!attribute [rw] pipeline_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton pipeline service role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/AccountSettings AWS API Documentation
    #
    class AccountSettings < Struct.new(
      :pipeline_provisioning_repository,
      :pipeline_service_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelEnvironmentDeploymentInput
    #   data as a hash:
    #
    #       {
    #         environment_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] environment_name
    #   The name of the environment with the deployment to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelEnvironmentDeploymentInput AWS API Documentation
    #
    class CancelEnvironmentDeploymentInput < Struct.new(
      :environment_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The environment summary data that's returned by Proton.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelEnvironmentDeploymentOutput AWS API Documentation
    #
    class CancelEnvironmentDeploymentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelServiceInstanceDeploymentInput
    #   data as a hash:
    #
    #       {
    #         service_instance_name: "ResourceName", # required
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] service_instance_name
    #   The name of the service instance with the deployment to cancel.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service with the service instance deployment to
    #   cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServiceInstanceDeploymentInput AWS API Documentation
    #
    class CancelServiceInstanceDeploymentInput < Struct.new(
      :service_instance_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_instance
    #   The service instance summary data that's returned by Proton.
    #   @return [Types::ServiceInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServiceInstanceDeploymentOutput AWS API Documentation
    #
    class CancelServiceInstanceDeploymentOutput < Struct.new(
      :service_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelServicePipelineDeploymentInput
    #   data as a hash:
    #
    #       {
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] service_name
    #   The name of the service with the service pipeline deployment to
    #   cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServicePipelineDeploymentInput AWS API Documentation
    #
    class CancelServicePipelineDeploymentInput < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   The service pipeline detail data that's returned by Proton.
    #   @return [Types::ServicePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CancelServicePipelineDeploymentOutput AWS API Documentation
    #
    class CancelServicePipelineDeploymentOutput < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compatible environment template data.
    #
    # @!attribute [rw] major_version
    #   The major version of the compatible environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The compatible environment template name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CompatibleEnvironmentTemplate AWS API Documentation
    #
    class CompatibleEnvironmentTemplate < Struct.new(
      :major_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compatible environment template data.
    #
    # @note When making an API call, you may pass CompatibleEnvironmentTemplateInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   The major version of the compatible environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The compatible environment template name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CompatibleEnvironmentTemplateInput AWS API Documentation
    #
    class CompatibleEnvironmentTemplateInput < Struct.new(
      :major_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request *couldn't* be made due to a conflicting operation or
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         environment_name: "ResourceName", # required
    #         management_account_id: "AwsAccountId", # required
    #         role_arn: "Arn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] client_token
    #   When included, if two identical requests are made with the same
    #   client token, Proton returns the environment account connection that
    #   the first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the Proton environment that's created in the associated
    #   management account.
    #   @return [String]
    #
    # @!attribute [rw] management_account_id
    #   The ID of the management account that accepts or rejects the
    #   environment account connection. You create an manage the Proton
    #   environment in this account. If the management account accepts the
    #   environment account connection, Proton can use the associated IAM
    #   role to provision environment infrastructure resources in the
    #   associated environment account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that's
    #   created in the environment account. Proton uses this role to
    #   provision infrastructure resources in the associated environment
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for your environment account connection. For more information,
    #   see [Proton resources and tagging][1] in the *Proton Administrator
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentAccountConnectionInput AWS API Documentation
    #
    class CreateEnvironmentAccountConnectionInput < Struct.new(
      :client_token,
      :environment_name,
      :management_account_id,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment account connection detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class CreateEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         environment_account_connection_id: "EnvironmentAccountConnectionId",
    #         name: "ResourceName", # required
    #         proton_service_role_arn: "Arn",
    #         provisioning_repository: {
    #           branch: "GitBranchName", # required
    #           name: "RepositoryName", # required
    #           provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         },
    #         spec: "SpecContents", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart",
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of the environment that's being created and deployed.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_connection_id
    #   The ID of the environment account connection that you provide if
    #   you're provisioning your environment infrastructure resources to an
    #   environment account. You must include either the
    #   `environmentAccountConnectionId` or `protonServiceRoleArn` parameter
    #   and value and omit the `provisioningRepository` parameter and
    #   values. For more information, see [Environment account
    #   connections][1] in the *Proton Administrator guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton service role that
    #   allows Proton to make calls to other services on your behalf. You
    #   must include either the `environmentAccountConnectionId` or
    #   `protonServiceRoleArn` parameter and value and omit the
    #   `provisioningRepository` parameter when you use standard
    #   provisioning.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_repository
    #   The repository that you provide with pull request provisioning. If
    #   you provide this parameter, you must omit the
    #   `environmentAccountConnectionId` and `protonServiceRoleArn`
    #   parameters.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [Types::RepositoryBranchInput]
    #
    # @!attribute [rw] spec
    #   A link to a YAML formatted spec file that provides inputs as defined
    #   in the environment template bundle schema file. For more
    #   information, see [Environments][1] in the *Proton Administrator
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for your environment. For more information, see *Proton
    #   resources and tagging* in the [Proton Administrator Guide][1] or
    #   [Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template. For more information, see
    #   [Environment Templates][1] in the *Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentInput AWS API Documentation
    #
    class CreateEnvironmentInput < Struct.new(
      :description,
      :environment_account_connection_id,
      :name,
      :proton_service_role_arn,
      :provisioning_repository,
      :spec,
      :tags,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:description, :spec]
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The environment detail data that's returned by Proton.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentOutput AWS API Documentation
    #
    class CreateEnvironmentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentTemplateInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         display_name: "DisplayName",
    #         encryption_key: "Arn",
    #         name: "ResourceName", # required
    #         provisioning: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   A description of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The environment template name as displayed in the developer
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   A customer provided encryption key that Proton uses to encrypt data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] provisioning
    #   When included, indicates that the environment template is for
    #   customer provisioned and managed infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for your environment template. For more information, see
    #   *Proton resources and tagging* in the [Proton Administrator
    #   Guide][1] or [Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplateInput AWS API Documentation
    #
    class CreateEnvironmentTemplateInput < Struct.new(
      :description,
      :display_name,
      :encryption_key,
      :name,
      :provisioning,
      :tags)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # @!attribute [rw] environment_template
    #   The environment template detail data that's returned by Proton.
    #   @return [Types::EnvironmentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplateOutput AWS API Documentation
    #
    class CreateEnvironmentTemplateOutput < Struct.new(
      :environment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEnvironmentTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         description: "Description",
    #         major_version: "TemplateVersionPart",
    #         source: { # required
    #           s3: {
    #             bucket: "S3Bucket", # required
    #             key: "S3Key", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   When included, if two identical requests are made with the same
    #   client token, Proton returns the environment template version that
    #   the first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] major_version
    #   To create a new minor version of the environment template, include a
    #   `major Version`.
    #
    #   To create a new major and minor version of the environment template,
    #   *exclude* `major Version`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of an template.
    #   @return [Types::TemplateVersionSourceInput]
    #
    # @!attribute [rw] tags
    #   Create tags for a new version of an environment template.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplateVersionInput AWS API Documentation
    #
    class CreateEnvironmentTemplateVersionInput < Struct.new(
      :client_token,
      :description,
      :major_version,
      :source,
      :tags,
      :template_name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] environment_template_version
    #   The environment template detail data that's returned by Proton.
    #   @return [Types::EnvironmentTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateEnvironmentTemplateVersionOutput AWS API Documentation
    #
    class CreateEnvironmentTemplateVersionOutput < Struct.new(
      :environment_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRepositoryInput
    #   data as a hash:
    #
    #       {
    #         connection_arn: "Arn", # required
    #         encryption_key: "Arn",
    #         name: "RepositoryName", # required
    #         provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #       }
    #
    # @!attribute [rw] connection_arn
    #   The Amazon Resource Name (ARN) of your Amazon Web Services CodeStar
    #   connection. For more information, see [Setting up for Proton][1] in
    #   the *Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/setting-up-for-service
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The ARN of your customer Amazon Web Services Key Management Service
    #   (Amazon Web Services KMS) key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The repository name, for example `myrepos/myrepo`.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateRepositoryInput AWS API Documentation
    #
    class CreateRepositoryInput < Struct.new(
      :connection_arn,
      :encryption_key,
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository detail data that's returned by Proton.
    #   @return [Types::Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateRepositoryOutput AWS API Documentation
    #
    class CreateRepositoryOutput < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceInput
    #   data as a hash:
    #
    #       {
    #         branch_name: "GitBranchName",
    #         description: "Description",
    #         name: "ResourceName", # required
    #         repository_connection_arn: "Arn",
    #         repository_id: "RepositoryId",
    #         spec: "SpecContents", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         template_major_version: "TemplateVersionPart", # required
    #         template_minor_version: "TemplateVersionPart",
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] branch_name
    #   The name of the code repository branch that holds the code that's
    #   deployed in Proton. *Don't* include this parameter if your service
    #   template *doesn't* include a service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the Proton service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The service name.
    #   @return [String]
    #
    # @!attribute [rw] repository_connection_arn
    #   The Amazon Resource Name (ARN) of the repository connection. For
    #   more information, see [Set up repository connection][1] in the
    #   *Proton Administrator Guide* and [Setting up with Proton][2] in the
    #   *Proton User Guide*. *Don't* include this parameter if your service
    #   template *doesn't* include a service pipeline.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection
    #   @return [String]
    #
    # @!attribute [rw] repository_id
    #   The ID of the code repository. *Don't* include this parameter if
    #   your service template *doesn't* include a service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   A link to a spec file that provides inputs as defined in the service
    #   template bundle schema file. The spec file is in YAML format. Don’t
    #   include pipeline inputs in the spec if your service template
    #   *doesn’t* include a service pipeline. For more information, see
    #   [Create a service][1] in the *Proton Administrator Guide* and
    #   [Create a service][2] in the *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for your service. For more information, see *Proton
    #   resources and tagging* in the [Proton Administrator Guide][1] or
    #   [Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the service template that was used to create
    #   the service.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the service template that was used to create
    #   the service.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template that's used to create the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceInput AWS API Documentation
    #
    class CreateServiceInput < Struct.new(
      :branch_name,
      :description,
      :name,
      :repository_connection_arn,
      :repository_id,
      :spec,
      :tags,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:description, :spec]
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The service detail data that's returned by Proton.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceOutput AWS API Documentation
    #
    class CreateServiceOutput < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceTemplateInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         display_name: "DisplayName",
    #         encryption_key: "Arn",
    #         name: "ResourceName", # required
    #         pipeline_provisioning: "CUSTOMER_MANAGED", # accepts CUSTOMER_MANAGED
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] description
    #   A description of the service template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the service template as displayed in the developer
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   A customer provided encryption key that's used to encrypt data.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service template.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_provisioning
    #   Proton includes a service pipeline for your service by default. When
    #   included, this parameter indicates that an Proton service pipeline
    #   *won't* be included for your service. Once specified, this
    #   parameter *can't* be changed. For more information, see [Service
    #   template bundles][1] in the *Proton Administrator Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for your service template. For more information, see
    #   *Proton resources and tagging* in the [Proton Administrator
    #   Guide][1] or [Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/resources.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/resources.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplateInput AWS API Documentation
    #
    class CreateServiceTemplateInput < Struct.new(
      :description,
      :display_name,
      :encryption_key,
      :name,
      :pipeline_provisioning,
      :tags)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # @!attribute [rw] service_template
    #   The service template detail data that's returned by Proton.
    #   @return [Types::ServiceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplateOutput AWS API Documentation
    #
    class CreateServiceTemplateOutput < Struct.new(
      :service_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         client_token: "ClientToken",
    #         compatible_environment_templates: [ # required
    #           {
    #             major_version: "TemplateVersionPart", # required
    #             template_name: "ResourceName", # required
    #           },
    #         ],
    #         description: "Description",
    #         major_version: "TemplateVersionPart",
    #         source: { # required
    #           s3: {
    #             bucket: "S3Bucket", # required
    #             key: "S3Key", # required
    #           },
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] client_token
    #   When included, if two identical requests are made with the same
    #   client token, Proton returns the service template version that the
    #   first request created.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] compatible_environment_templates
    #   An array of compatible environment template objects for the new
    #   version of a service template.
    #   @return [Array<Types::CompatibleEnvironmentTemplateInput>]
    #
    # @!attribute [rw] description
    #   A description of the new version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] major_version
    #   To create a new minor version of the service template, include a
    #   `major Version`.
    #
    #   To create a new major and minor version of the service template,
    #   *exclude* `major Version`.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   An object that includes the template bundle S3 bucket path and name
    #   for the new version of a service template.
    #   @return [Types::TemplateVersionSourceInput]
    #
    # @!attribute [rw] tags
    #   Create tags for a new version of a service template.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplateVersionInput AWS API Documentation
    #
    class CreateServiceTemplateVersionInput < Struct.new(
      :client_token,
      :compatible_environment_templates,
      :description,
      :major_version,
      :source,
      :tags,
      :template_name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] service_template_version
    #   The service template version summary of detail data that's returned
    #   by Proton.
    #   @return [Types::ServiceTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateServiceTemplateVersionOutput AWS API Documentation
    #
    class CreateServiceTemplateVersionOutput < Struct.new(
      :service_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTemplateSyncConfigInput
    #   data as a hash:
    #
    #       {
    #         branch: "GitBranchName", # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         subdirectory: "Subdirectory",
    #         template_name: "ResourceName", # required
    #         template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #       }
    #
    # @!attribute [rw] branch
    #   The branch of the registered repository for your template.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of your repository, for example `myrepos/myrepo`.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The provider type for your repository.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   A repository subdirectory path to your template bundle directory.
    #   When included, Proton limits the template bundle search to this
    #   repository directory.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of your registered template.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The type of the registered template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateTemplateSyncConfigInput AWS API Documentation
    #
    class CreateTemplateSyncConfigInput < Struct.new(
      :branch,
      :repository_name,
      :repository_provider,
      :subdirectory,
      :template_name,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_sync_config
    #   The template sync configuration detail data that's returned by
    #   Proton.
    #   @return [Types::TemplateSyncConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/CreateTemplateSyncConfigOutput AWS API Documentation
    #
    class CreateTemplateSyncConfigOutput < Struct.new(
      :template_sync_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentAccountConnectionInput AWS API Documentation
    #
    class DeleteEnvironmentAccountConnectionInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment account connection detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class DeleteEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentInput AWS API Documentation
    #
    class DeleteEnvironmentInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The environment detail data that's returned by Proton.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentOutput AWS API Documentation
    #
    class DeleteEnvironmentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentTemplateInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment template to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplateInput AWS API Documentation
    #
    class DeleteEnvironmentTemplateInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_template
    #   The environment template detail data that's returned by Proton.
    #   @return [Types::EnvironmentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplateOutput AWS API Documentation
    #
    class DeleteEnvironmentTemplateOutput < Struct.new(
      :environment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   The environment template major version to delete.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The environment template minor version to delete.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplateVersionInput AWS API Documentation
    #
    class DeleteEnvironmentTemplateVersionInput < Struct.new(
      :major_version,
      :minor_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_template_version
    #   The environment template version detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteEnvironmentTemplateVersionOutput AWS API Documentation
    #
    class DeleteEnvironmentTemplateVersionOutput < Struct.new(
      :environment_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRepositoryInput
    #   data as a hash:
    #
    #       {
    #         name: "RepositoryName", # required
    #         provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #       }
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteRepositoryInput AWS API Documentation
    #
    class DeleteRepositoryInput < Struct.new(
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository detail data that's returned by Proton.
    #   @return [Types::Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteRepositoryOutput AWS API Documentation
    #
    class DeleteRepositoryOutput < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the service to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceInput AWS API Documentation
    #
    class DeleteServiceInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The service detail data that's returned by Proton.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceOutput AWS API Documentation
    #
    class DeleteServiceOutput < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceTemplateInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the service template to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplateInput AWS API Documentation
    #
    class DeleteServiceTemplateInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_template
    #   The service template detail data that's returned by Proton.
    #   @return [Types::ServiceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplateOutput AWS API Documentation
    #
    class DeleteServiceTemplateOutput < Struct.new(
      :service_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   The service template major version to delete.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The service template minor version to delete.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplateVersionInput AWS API Documentation
    #
    class DeleteServiceTemplateVersionInput < Struct.new(
      :major_version,
      :minor_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_template_version
    #   The service template version detail data that's returned by Proton.
    #   @return [Types::ServiceTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteServiceTemplateVersionOutput AWS API Documentation
    #
    class DeleteServiceTemplateVersionOutput < Struct.new(
      :service_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTemplateSyncConfigInput
    #   data as a hash:
    #
    #       {
    #         template_name: "ResourceName", # required
    #         template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #       }
    #
    # @!attribute [rw] template_name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteTemplateSyncConfigInput AWS API Documentation
    #
    class DeleteTemplateSyncConfigInput < Struct.new(
      :template_name,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_sync_config
    #   The template sync configuration detail data that's returned by
    #   Proton.
    #   @return [Types::TemplateSyncConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/DeleteTemplateSyncConfigOutput AWS API Documentation
    #
    class DeleteTemplateSyncConfigOutput < Struct.new(
      :template_sync_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment detail data. An Proton environment is a set resources
    # shared across an Proton service.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The environment deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   An environment deployment status message.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_connection_id
    #   The ID of the environment account connection that's used to
    #   provision infrastructure resources in an environment account.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_id
    #   The ID of the environment account that the environment
    #   infrastructure resources are provisioned in.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_attempted_at
    #   The time when a deployment of the environment was last attempted.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_succeeded_at
    #   The time when the environment was last deployed successfully.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton service role that
    #   allows Proton to make calls to other services on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] provisioning
    #   When included, indicates that the environment template is for
    #   customer provisioned and managed infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_repository
    #   The repository that you provide with pull request provisioning.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [Types::RepositoryBranch]
    #
    # @!attribute [rw] spec
    #   The environment spec.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The ID of the major version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The ID of the minor version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The Amazon Resource Name (ARN) of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :arn,
      :created_at,
      :deployment_status,
      :deployment_status_message,
      :description,
      :environment_account_connection_id,
      :environment_account_id,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :name,
      :proton_service_role_arn,
      :provisioning,
      :provisioning_repository,
      :spec,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:deployment_status_message, :description, :spec]
      include Aws::Structure
    end

    # The environment account connection detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment account
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_id
    #   The environment account that's connected to the environment account
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment that's associated with the environment
    #   account connection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the environment account connection was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] management_account_id
    #   The ID of the management account that's connected to the
    #   environment account connection.
    #   @return [String]
    #
    # @!attribute [rw] requested_at
    #   The time when the environment account connection request was made.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The IAM service role that's associated with the environment account
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environment account connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentAccountConnection AWS API Documentation
    #
    class EnvironmentAccountConnection < Struct.new(
      :arn,
      :environment_account_id,
      :environment_name,
      :id,
      :last_modified_at,
      :management_account_id,
      :requested_at,
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the environment account connection detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment account
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_id
    #   The ID of the environment account that's connected to the
    #   environment account connection.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment that's associated with the environment
    #   account connection.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the environment account connection was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] management_account_id
    #   The ID of the management account that's connected to the
    #   environment account connection.
    #   @return [String]
    #
    # @!attribute [rw] requested_at
    #   The time when the environment account connection request was made.
    #   @return [Time]
    #
    # @!attribute [rw] role_arn
    #   The IAM service role that's associated with the environment account
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environment account connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentAccountConnectionSummary AWS API Documentation
    #
    class EnvironmentAccountConnectionSummary < Struct.new(
      :arn,
      :environment_account_id,
      :environment_name,
      :id,
      :last_modified_at,
      :management_account_id,
      :requested_at,
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the environment detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The environment deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   An environment deployment status message.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_connection_id
    #   The ID of the environment account connection that the environment is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_id
    #   The ID of the environment account that the environment
    #   infrastructure resources are provisioned in.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_attempted_at
    #   The time when a deployment of the environment was last attempted.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_succeeded_at
    #   The time when the environment was last deployed successfully.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton service role that
    #   allows Proton to make calls to other services on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] provisioning
    #   When included, indicates that the environment template is for
    #   customer provisioned and managed infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :arn,
      :created_at,
      :deployment_status,
      :deployment_status_message,
      :description,
      :environment_account_connection_id,
      :environment_account_id,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :name,
      :proton_service_role_arn,
      :provisioning,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:deployment_status_message, :description]
      include Aws::Structure
    end

    # The environment template data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the environment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the environment template as displayed in the developer
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The customer provided encryption key for the environment template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the environment template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] provisioning
    #   When included, indicates that the environment template is for
    #   customer provisioned and managed infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The ID of the recommended version of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentTemplate AWS API Documentation
    #
    class EnvironmentTemplate < Struct.new(
      :arn,
      :created_at,
      :description,
      :display_name,
      :encryption_key,
      :last_modified_at,
      :name,
      :provisioning,
      :recommended_version)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # A search filter for environment templates.
    #
    # @note When making an API call, you may pass EnvironmentTemplateFilter
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   Include `majorVersion` to filter search for a major version.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   Include `templateName` to filter search for a template name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentTemplateFilter AWS API Documentation
    #
    class EnvironmentTemplateFilter < Struct.new(
      :major_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The environment template data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the environment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the environment template as displayed in the developer
    #   interface.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the environment template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] provisioning
    #   When included, indicates that the environment template is for
    #   customer provisioned and managed infrastructure.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The recommended version of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentTemplateSummary AWS API Documentation
    #
    class EnvironmentTemplateSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :display_name,
      :last_modified_at,
      :name,
      :provisioning,
      :recommended_version)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # The environment template version data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of an environment
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the version of an environment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the minor version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the version of an environment template was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] major_version
    #   The latest major version that's associated with the version of an
    #   environment template.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The minor version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_minor_version
    #   The recommended minor version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the version of an environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentTemplateVersion AWS API Documentation
    #
    class EnvironmentTemplateVersion < Struct.new(
      :arn,
      :created_at,
      :description,
      :last_modified_at,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :schema,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :schema, :status_message]
      include Aws::Structure
    end

    # A summary of the version of an environment template detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of an environment
    #   template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the version of an environment template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the version of an environment template was last
    #   modified.
    #   @return [Time]
    #
    # @!attribute [rw] major_version
    #   The latest major version that's associated with the version of an
    #   environment template.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_minor_version
    #   The recommended minor version of the environment template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the version of an environment template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the version of an environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/EnvironmentTemplateVersionSummary AWS API Documentation
    #
    class EnvironmentTemplateVersionSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :last_modified_at,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :status_message]
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetAccountSettingsInput AWS API Documentation
    #
    class GetAccountSettingsInput < Aws::EmptyStructure; end

    # @!attribute [rw] account_settings
    #   The Proton pipeline service role detail data that's returned by
    #   Proton.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetAccountSettingsOutput AWS API Documentation
    #
    class GetAccountSettingsOutput < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentAccountConnectionInput AWS API Documentation
    #
    class GetEnvironmentAccountConnectionInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment account connection detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class GetEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment that you want to get the detail data
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentInput AWS API Documentation
    #
    class GetEnvironmentInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The environment detail data that's returned by Proton.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentOutput AWS API Documentation
    #
    class GetEnvironmentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentTemplateInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment template that you want to get the detail
    #   data for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplateInput AWS API Documentation
    #
    class GetEnvironmentTemplateInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_template
    #   The environment template detail data that's returned by Proton.
    #   @return [Types::EnvironmentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplateOutput AWS API Documentation
    #
    class GetEnvironmentTemplateOutput < Struct.new(
      :environment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   To view environment template major version detail data, include
    #   `major Version`.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   To view environment template minor version detail data, include
    #   `minorVersion`.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplateVersionInput AWS API Documentation
    #
    class GetEnvironmentTemplateVersionInput < Struct.new(
      :major_version,
      :minor_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_template_version
    #   The environment template version detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetEnvironmentTemplateVersionOutput AWS API Documentation
    #
    class GetEnvironmentTemplateVersionOutput < Struct.new(
      :environment_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRepositoryInput
    #   data as a hash:
    #
    #       {
    #         name: "RepositoryName", # required
    #         provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #       }
    #
    # @!attribute [rw] name
    #   The repository name, for example `myrepos/myrepo`.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepositoryInput AWS API Documentation
    #
    class GetRepositoryInput < Struct.new(
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository detail data that's returned by Proton.
    #   @return [Types::Repository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepositoryOutput AWS API Documentation
    #
    class GetRepositoryOutput < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRepositorySyncStatusInput
    #   data as a hash:
    #
    #       {
    #         branch: "GitBranchName", # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         sync_type: "TEMPLATE_SYNC", # required, accepts TEMPLATE_SYNC
    #       }
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The repository provider.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The repository sync type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepositorySyncStatusInput AWS API Documentation
    #
    class GetRepositorySyncStatusInput < Struct.new(
      :branch,
      :repository_name,
      :repository_provider,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] latest_sync
    #   The repository sync status detail data that's returned by Proton.
    #   @return [Types::RepositorySyncAttempt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetRepositorySyncStatusOutput AWS API Documentation
    #
    class GetRepositorySyncStatusOutput < Struct.new(
      :latest_sync)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the service that you want to get the detail data for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceInput AWS API Documentation
    #
    class GetServiceInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceInstanceInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of a service instance that you want to get the detail data
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the service instance belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceInstanceInput AWS API Documentation
    #
    class GetServiceInstanceInput < Struct.new(
      :name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_instance
    #   The service instance detail data that's returned by Proton.
    #   @return [Types::ServiceInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceInstanceOutput AWS API Documentation
    #
    class GetServiceInstanceOutput < Struct.new(
      :service_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The service detail data that's returned by Proton.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceOutput AWS API Documentation
    #
    class GetServiceOutput < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceTemplateInput
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the service template that you want to get detail data
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplateInput AWS API Documentation
    #
    class GetServiceTemplateInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_template
    #   The service template detail data that's returned by Proton.
    #   @return [Types::ServiceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplateOutput AWS API Documentation
    #
    class GetServiceTemplateOutput < Struct.new(
      :service_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServiceTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   To view service template major version detail data, include `major
    #   Version`.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   To view service template minor version detail data, include
    #   `minorVersion`.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplateVersionInput AWS API Documentation
    #
    class GetServiceTemplateVersionInput < Struct.new(
      :major_version,
      :minor_version,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service_template_version
    #   The service template version detail data that's returned by Proton.
    #   @return [Types::ServiceTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetServiceTemplateVersionOutput AWS API Documentation
    #
    class GetServiceTemplateVersionOutput < Struct.new(
      :service_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTemplateSyncConfigInput
    #   data as a hash:
    #
    #       {
    #         template_name: "ResourceName", # required
    #         template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #       }
    #
    # @!attribute [rw] template_name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncConfigInput AWS API Documentation
    #
    class GetTemplateSyncConfigInput < Struct.new(
      :template_name,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_sync_config
    #   The template sync configuration detail data that's returned by
    #   Proton.
    #   @return [Types::TemplateSyncConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncConfigOutput AWS API Documentation
    #
    class GetTemplateSyncConfigOutput < Struct.new(
      :template_sync_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTemplateSyncStatusInput
    #   data as a hash:
    #
    #       {
    #         template_name: "ResourceName", # required
    #         template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #         template_version: "TemplateVersionPart", # required
    #       }
    #
    # @!attribute [rw] template_name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The template type.
    #   @return [String]
    #
    # @!attribute [rw] template_version
    #   The template version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncStatusInput AWS API Documentation
    #
    class GetTemplateSyncStatusInput < Struct.new(
      :template_name,
      :template_type,
      :template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] desired_state
    #   The template sync desired state that's returned by Proton.
    #   @return [Types::Revision]
    #
    # @!attribute [rw] latest_successful_sync
    #   The details of the last successful sync that's returned by Proton.
    #   @return [Types::ResourceSyncAttempt]
    #
    # @!attribute [rw] latest_sync
    #   The details of the last sync that's returned by Proton.
    #   @return [Types::ResourceSyncAttempt]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/GetTemplateSyncStatusOutput AWS API Documentation
    #
    class GetTemplateSyncStatusOutput < Struct.new(
      :desired_state,
      :latest_successful_sync,
      :latest_sync)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed to register with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentAccountConnectionsInput
    #   data as a hash:
    #
    #       {
    #         environment_name: "ResourceName",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         requested_by: "MANAGEMENT_ACCOUNT", # required, accepts MANAGEMENT_ACCOUNT, ENVIRONMENT_ACCOUNT
    #         statuses: ["PENDING"], # accepts PENDING, CONNECTED, REJECTED
    #       }
    #
    # @!attribute [rw] environment_name
    #   The environment name that's associated with each listed environment
    #   account connection.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environment account connections to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment account
    #   connection in the array of environment account connections, after
    #   the list of environment account connections that was previously
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] requested_by
    #   The type of account making the `ListEnvironmentAccountConnections`
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] statuses
    #   The status details for each listed environment account connection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentAccountConnectionsInput AWS API Documentation
    #
    class ListEnvironmentAccountConnectionsInput < Struct.new(
      :environment_name,
      :max_results,
      :next_token,
      :requested_by,
      :statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connections
    #   An array of environment account connections with details that's
    #   returned by Proton.
    #   @return [Array<Types::EnvironmentAccountConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment account
    #   connection in the array of environment account connections, after
    #   the current requested list of environment account connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentAccountConnectionsOutput AWS API Documentation
    #
    class ListEnvironmentAccountConnectionsOutput < Struct.new(
      :environment_account_connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentOutputsInput
    #   data as a hash:
    #
    #       {
    #         environment_name: "ResourceName", # required
    #         next_token: "EmptyNextToken",
    #       }
    #
    # @!attribute [rw] environment_name
    #   The environment name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment output in
    #   the array of environment outputs, after the list of environment
    #   outputs that was previously requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentOutputsInput AWS API Documentation
    #
    class ListEnvironmentOutputsInput < Struct.new(
      :environment_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment output in
    #   the array of environment outputs, after the current requested list
    #   of environment outputs.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of environment outputs with detail data.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentOutputsOutput AWS API Documentation
    #
    class ListEnvironmentOutputsOutput < Struct.new(
      :next_token,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentProvisionedResourcesInput
    #   data as a hash:
    #
    #       {
    #         environment_name: "ResourceName", # required
    #         next_token: "EmptyNextToken",
    #       }
    #
    # @!attribute [rw] environment_name
    #   The environment name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment provisioned
    #   resource in the array of environment provisioned resources, after
    #   the list of environment provisioned resources that was previously
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentProvisionedResourcesInput AWS API Documentation
    #
    class ListEnvironmentProvisionedResourcesInput < Struct.new(
      :environment_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment provisioned
    #   resource in the array of provisioned resources, after the current
    #   requested list of environment provisioned resources.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   An array of environment provisioned resources.
    #   @return [Array<Types::ProvisionedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentProvisionedResourcesOutput AWS API Documentation
    #
    class ListEnvironmentProvisionedResourcesOutput < Struct.new(
      :next_token,
      :provisioned_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentTemplateVersionsInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   To view a list of minor of versions under a major version of an
    #   environment template, include `major Version`.
    #
    #   To view a list of major versions of an environment template,
    #   *exclude* `major Version`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of major or minor versions of an environment
    #   template to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next major or minor version
    #   in the array of major or minor versions of an environment template,
    #   after the list of major or minor versions that was previously
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplateVersionsInput AWS API Documentation
    #
    class ListEnvironmentTemplateVersionsInput < Struct.new(
      :major_version,
      :max_results,
      :next_token,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next major or minor version
    #   in the array of major or minor versions of an environment template,
    #   after the list of major or minor versions that was previously
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] template_versions
    #   An array of major or minor versions of an environment template
    #   detail data.
    #   @return [Array<Types::EnvironmentTemplateVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplateVersionsOutput AWS API Documentation
    #
    class ListEnvironmentTemplateVersionsOutput < Struct.new(
      :next_token,
      :template_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentTemplatesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of environment templates to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment template in
    #   the array of environment templates, after the list of environment
    #   templates that was previously requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplatesInput AWS API Documentation
    #
    class ListEnvironmentTemplatesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment template in
    #   the array of environment templates, after the current requested list
    #   of environment templates.
    #   @return [String]
    #
    # @!attribute [rw] templates
    #   An array of environment templates with detail data.
    #   @return [Array<Types::EnvironmentTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentTemplatesOutput AWS API Documentation
    #
    class ListEnvironmentTemplatesOutput < Struct.new(
      :next_token,
      :templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentsInput
    #   data as a hash:
    #
    #       {
    #         environment_templates: [
    #           {
    #             major_version: "TemplateVersionPart", # required
    #             template_name: "ResourceName", # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] environment_templates
    #   An array of the versions of the environment template.
    #   @return [Array<Types::EnvironmentTemplateFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of environments to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment in the
    #   array of environments, after the list of environments that was
    #   previously requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentsInput AWS API Documentation
    #
    class ListEnvironmentsInput < Struct.new(
      :environment_templates,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   An array of environment detail data summaries.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next environment in the
    #   array of environments, after the current requested list of
    #   environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListEnvironmentsOutput AWS API Documentation
    #
    class ListEnvironmentsOutput < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRepositoriesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of repositories to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next repository in the array
    #   of repositories, after the list of repositories previously
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositoriesInput AWS API Documentation
    #
    class ListRepositoriesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next repository in the array
    #   of repositories, after the current requested list of repositories.
    #   @return [String]
    #
    # @!attribute [rw] repositories
    #   An array of repositories.
    #   @return [Array<Types::RepositorySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositoriesOutput AWS API Documentation
    #
    class ListRepositoriesOutput < Struct.new(
      :next_token,
      :repositories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRepositorySyncDefinitionsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "EmptyNextToken",
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         sync_type: "TEMPLATE_SYNC", # required, accepts TEMPLATE_SYNC
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next repository sync
    #   definition in the array of repository sync definitions, after the
    #   list of repository sync definitions previously requested.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The repository provider.
    #   @return [String]
    #
    # @!attribute [rw] sync_type
    #   The sync type. The only supported value is `TEMPLATE_SYNC`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositorySyncDefinitionsInput AWS API Documentation
    #
    class ListRepositorySyncDefinitionsInput < Struct.new(
      :next_token,
      :repository_name,
      :repository_provider,
      :sync_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next repository sync
    #   definition in the array of repository sync definitions, after the
    #   current requested list of repository sync definitions.
    #   @return [String]
    #
    # @!attribute [rw] sync_definitions
    #   An array of repository sync definitions.
    #   @return [Array<Types::RepositorySyncDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListRepositorySyncDefinitionsOutput AWS API Documentation
    #
    class ListRepositorySyncDefinitionsOutput < Struct.new(
      :next_token,
      :sync_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceInstanceOutputsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "EmptyNextToken",
    #         service_instance_name: "ResourceName", # required
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next output in the array of
    #   outputs, after the list of outputs that was previously requested.
    #   @return [String]
    #
    # @!attribute [rw] service_instance_name
    #   The service instance name.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceOutputsInput AWS API Documentation
    #
    class ListServiceInstanceOutputsInput < Struct.new(
      :next_token,
      :service_instance_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next output in the array of
    #   outputs, after the current requested list of outputs.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of service instance infrastructure as code outputs.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceOutputsOutput AWS API Documentation
    #
    class ListServiceInstanceOutputsOutput < Struct.new(
      :next_token,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceInstanceProvisionedResourcesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "EmptyNextToken",
    #         service_instance_name: "ResourceName", # required
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next provisioned resource in
    #   the array of provisioned resources, after the list of provisioned
    #   resources that was previously requested.
    #   @return [String]
    #
    # @!attribute [rw] service_instance_name
    #   The service instance name.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceProvisionedResourcesInput AWS API Documentation
    #
    class ListServiceInstanceProvisionedResourcesInput < Struct.new(
      :next_token,
      :service_instance_name,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next provisioned resource in
    #   the array of provisioned resources, after the current requested list
    #   of provisioned resources.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   An array of provisioned resources for a service instance.
    #   @return [Array<Types::ProvisionedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstanceProvisionedResourcesOutput AWS API Documentation
    #
    class ListServiceInstanceProvisionedResourcesOutput < Struct.new(
      :next_token,
      :provisioned_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceInstancesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #         service_name: "ResourceName",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of service instances to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service in the array of
    #   service instances, after the list of service instances that was
    #   previously requested.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the service instance belongs to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstancesInput AWS API Documentation
    #
    class ListServiceInstancesInput < Struct.new(
      :max_results,
      :next_token,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service instance in the
    #   array of service instances, after the current requested list of
    #   service instances.
    #   @return [String]
    #
    # @!attribute [rw] service_instances
    #   An array of service instances with summaries of detail data.
    #   @return [Array<Types::ServiceInstanceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceInstancesOutput AWS API Documentation
    #
    class ListServiceInstancesOutput < Struct.new(
      :next_token,
      :service_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServicePipelineOutputsInput
    #   data as a hash:
    #
    #       {
    #         next_token: "EmptyNextToken",
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next output in the array of
    #   outputs, after the list of outputs that was previously requested.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineOutputsInput AWS API Documentation
    #
    class ListServicePipelineOutputsInput < Struct.new(
      :next_token,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next output in the array of
    #   outputs, after the current requested list of outputs.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   An array of outputs.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineOutputsOutput AWS API Documentation
    #
    class ListServicePipelineOutputsOutput < Struct.new(
      :next_token,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServicePipelineProvisionedResourcesInput
    #   data as a hash:
    #
    #       {
    #         next_token: "EmptyNextToken",
    #         service_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next provisioned resource in
    #   the array of provisioned resources, after the list of provisioned
    #   resources that was previously requested.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The service name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineProvisionedResourcesInput AWS API Documentation
    #
    class ListServicePipelineProvisionedResourcesInput < Struct.new(
      :next_token,
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next provisioned resource in
    #   the array of provisioned resources, after the current requested list
    #   of provisioned resources.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_resources
    #   An array of provisioned resources for a service and pipeline.
    #   @return [Array<Types::ProvisionedResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicePipelineProvisionedResourcesOutput AWS API Documentation
    #
    class ListServicePipelineProvisionedResourcesOutput < Struct.new(
      :next_token,
      :provisioned_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceTemplateVersionsInput
    #   data as a hash:
    #
    #       {
    #         major_version: "TemplateVersionPart",
    #         max_results: 1,
    #         next_token: "NextToken",
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] major_version
    #   To view a list of minor of versions under a major version of a
    #   service template, include `major Version`.
    #
    #   To view a list of major versions of a service template, *exclude*
    #   `major Version`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of major or minor versions of a service template
    #   to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next major or minor version
    #   in the array of major or minor versions of a service template, after
    #   the list of major or minor versions that was previously requested.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplateVersionsInput AWS API Documentation
    #
    class ListServiceTemplateVersionsInput < Struct.new(
      :major_version,
      :max_results,
      :next_token,
      :template_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next major or minor version
    #   in the array of major or minor versions of a service template, after
    #   the current requested list of service major or minor versions.
    #   @return [String]
    #
    # @!attribute [rw] template_versions
    #   An array of major or minor versions of a service template with
    #   detail data.
    #   @return [Array<Types::ServiceTemplateVersionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplateVersionsOutput AWS API Documentation
    #
    class ListServiceTemplateVersionsOutput < Struct.new(
      :next_token,
      :template_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceTemplatesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of service templates to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service template in the
    #   array of service templates, after the list of service templates
    #   previously requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplatesInput AWS API Documentation
    #
    class ListServiceTemplatesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service template in the
    #   array of service templates, after the current requested list of
    #   service templates.
    #   @return [String]
    #
    # @!attribute [rw] templates
    #   An array of service templates with detail data.
    #   @return [Array<Types::ServiceTemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServiceTemplatesOutput AWS API Documentation
    #
    class ListServiceTemplatesOutput < Struct.new(
      :next_token,
      :templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServicesInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of services to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service in the array of
    #   services, after the list of services that was previously requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicesInput AWS API Documentation
    #
    class ListServicesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next service in the array of
    #   services, after the current requested list of services.
    #   @return [String]
    #
    # @!attribute [rw] services
    #   An array of services with summaries of detail data.
    #   @return [Array<Types::ServiceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListServicesOutput AWS API Documentation
    #
    class ListServicesOutput < Struct.new(
      :next_token,
      :services)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #         resource_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum number of tags to list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to indicate the location of the next resource tag in the
    #   array of resource tags, after the list of resource tags that was
    #   previously requested.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for the listed tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to indicate the location of the next resource tag in the
    #   array of resource tags, after the current requested list of resource
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of resource tags with detail data.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass NotifyResourceDeploymentStatusChangeInput
    #   data as a hash:
    #
    #       {
    #         deployment_id: "DeploymentId",
    #         outputs: [
    #           {
    #             key: "OutputKey",
    #             value_string: "OutputValueString",
    #           },
    #         ],
    #         resource_arn: "Arn", # required
    #         status: "IN_PROGRESS", # required, accepts IN_PROGRESS, FAILED, SUCCEEDED
    #         status_message: "SyntheticNotifyResourceDeploymentStatusChangeInputString",
    #       }
    #
    # @!attribute [rw] deployment_id
    #   The deployment ID for your provisioned resource.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The provisioned resource state change detail data that's returned
    #   by Proton.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] resource_arn
    #   The provisioned resource Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your provisioned resource.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The deployment status message for your provisioned resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/NotifyResourceDeploymentStatusChangeInput AWS API Documentation
    #
    class NotifyResourceDeploymentStatusChangeInput < Struct.new(
      :deployment_id,
      :outputs,
      :resource_arn,
      :status,
      :status_message)
      SENSITIVE = [:status_message]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/NotifyResourceDeploymentStatusChangeOutput AWS API Documentation
    #
    class NotifyResourceDeploymentStatusChangeOutput < Aws::EmptyStructure; end

    # An infrastructure as code defined resource output.
    #
    # @note When making an API call, you may pass Output
    #   data as a hash:
    #
    #       {
    #         key: "OutputKey",
    #         value_string: "OutputValueString",
    #       }
    #
    # @!attribute [rw] key
    #   The output key.
    #   @return [String]
    #
    # @!attribute [rw] value_string
    #   The output value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Output AWS API Documentation
    #
    class Output < Struct.new(
      :key,
      :value_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail data for a provisioned resource.
    #
    # @!attribute [rw] identifier
    #   The provisioned resource identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The provisioned resource name.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_engine
    #   The resource provisioning engine.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ProvisionedResource AWS API Documentation
    #
    class ProvisionedResource < Struct.new(
      :identifier,
      :name,
      :provisioning_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection to reject.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RejectEnvironmentAccountConnectionInput AWS API Documentation
    #
    class RejectEnvironmentAccountConnectionInput < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment connection account detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RejectEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class RejectEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail date for a repository that has been registered with Proton.
    #
    # @!attribute [rw] arn
    #   The repository Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] connection_arn
    #   The repository Amazon Web Services CodeStar connection that connects
    #   Proton to your repository.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   Your customer Amazon Web Services KMS encryption key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Repository AWS API Documentation
    #
    class Repository < Struct.new(
      :arn,
      :connection_arn,
      :encryption_key,
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail data for a repository branch.
    #
    # Provisioning by pull request is currently in feature preview and is
    # only usable with Terraform based Proton Templates. To learn more about
    # [Amazon Web Services Feature Preview terms][1], see section 2 on Beta
    # and Previews.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the repository branch.
    #   @return [String]
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositoryBranch AWS API Documentation
    #
    class RepositoryBranch < Struct.new(
      :arn,
      :branch,
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail input data for a repository branch.
    #
    # Provisioning by pull request is currently in feature preview and is
    # only usable with Terraform based Proton Templates. To learn more about
    # [Amazon Web Services Feature Preview terms][1], see section 2 on Beta
    # and Previews.
    #
    #
    #
    # [1]: https://aws.amazon.com/service-terms
    #
    # @note When making an API call, you may pass RepositoryBranchInput
    #   data as a hash:
    #
    #       {
    #         branch: "GitBranchName", # required
    #         name: "RepositoryName", # required
    #         provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #       }
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositoryBranchInput AWS API Documentation
    #
    class RepositoryBranchInput < Struct.new(
      :branch,
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of detail data for a registered repository.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for a repository.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The repository provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositorySummary AWS API Documentation
    #
    class RepositorySummary < Struct.new(
      :arn,
      :name,
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail data for a repository sync attempt activated by a push to a
    # repository.
    #
    # @!attribute [rw] events
    #   Detail data for sync attempt events.
    #   @return [Array<Types::RepositorySyncEvent>]
    #
    # @!attribute [rw] started_at
    #   The time when the sync attempt started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The sync attempt status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositorySyncAttempt AWS API Documentation
    #
    class RepositorySyncAttempt < Struct.new(
      :events,
      :started_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The repository sync definition.
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] directory
    #   The directory in the repository.
    #   @return [String]
    #
    # @!attribute [rw] parent
    #   The resource that is synced from.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The resource that is synced to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositorySyncDefinition AWS API Documentation
    #
    class RepositorySyncDefinition < Struct.new(
      :branch,
      :directory,
      :parent,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # Repository sync event detail data for a sync attempt.
    #
    # @!attribute [rw] event
    #   Event detail for a repository sync attempt.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the sync event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time that the sync event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/RepositorySyncEvent AWS API Documentation
    #
    class RepositorySyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource *wasn't* found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # Detail data for a resource sync attempt activated by a push to a
    # repository.
    #
    # @!attribute [rw] events
    #   An array of events with detail data.
    #   @return [Array<Types::ResourceSyncEvent>]
    #
    # @!attribute [rw] initial_revision
    #   Detail data for the initial repository commit, path and push.
    #   @return [Types::Revision]
    #
    # @!attribute [rw] started_at
    #   The time when the sync attempt started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the sync attempt.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The resource that is synced to.
    #   @return [String]
    #
    # @!attribute [rw] target_revision
    #   Detail data for the target revision.
    #   @return [Types::Revision]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ResourceSyncAttempt AWS API Documentation
    #
    class ResourceSyncAttempt < Struct.new(
      :events,
      :initial_revision,
      :started_at,
      :status,
      :target,
      :target_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detail data for a resource sync event.
    #
    # @!attribute [rw] event
    #   A resource sync event.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID for the event.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time when the event occurred.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ResourceSyncEvent AWS API Documentation
    #
    class ResourceSyncEvent < Struct.new(
      :event,
      :external_id,
      :time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Revision detail data for a commit and push that activates a sync
    # attempt
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] directory
    #   The repository directory changed by a commit and push that activated
    #   the sync attempt.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The repository provider.
    #   @return [String]
    #
    # @!attribute [rw] sha
    #   The secure hash algorithm (SHA) hash for the revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Revision AWS API Documentation
    #
    class Revision < Struct.new(
      :branch,
      :directory,
      :repository_name,
      :repository_provider,
      :sha)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template bundle S3 bucket data.
    #
    # @note When making an API call, you may pass S3ObjectSource
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket", # required
    #         key: "S3Key", # required
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that contains a template bundle.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The path to the S3 bucket that contains a template bundle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/S3ObjectSource AWS API Documentation
    #
    class S3ObjectSource < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] branch_name
    #   The name of the code repository branch that holds the code that's
    #   deployed in Proton.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of a service.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the service was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] pipeline
    #   The service pipeline detail data.
    #   @return [Types::ServicePipeline]
    #
    # @!attribute [rw] repository_connection_arn
    #   The Amazon Resource Name (ARN) of the repository connection. For
    #   more information, see [Set up a repository connection][1] in the
    #   *Proton Administrator Guide* and [Setting up with Proton][2] in the
    #   *Proton User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html#setting-up-vcontrol
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html#setup-repo-connection
    #   @return [String]
    #
    # @!attribute [rw] repository_id
    #   The ID of the source code repository.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The formatted specification that defines the service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A service status message.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Service AWS API Documentation
    #
    class Service < Struct.new(
      :arn,
      :branch_name,
      :created_at,
      :description,
      :last_modified_at,
      :name,
      :pipeline,
      :repository_connection_arn,
      :repository_id,
      :spec,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :spec, :status_message]
      include Aws::Structure
    end

    # The service instance detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service instance.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The service instance deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   A service instance deployment status message.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment that the service instance was deployed
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_attempted_at
    #   The time when a deployment of the service instance was last
    #   attempted.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_succeeded_at
    #   The time when the service instance was last deployed successfully.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service instance.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the service instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The service spec that was used to create the service instance.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the service template that was used to create
    #   the service instance.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the service template that was used to create
    #   the service instance.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template that was used to create the service
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceInstance AWS API Documentation
    #
    class ServiceInstance < Struct.new(
      :arn,
      :created_at,
      :deployment_status,
      :deployment_status_message,
      :environment_name,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :name,
      :service_name,
      :spec,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:deployment_status_message, :spec]
      include Aws::Structure
    end

    # A summary of the service instance detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service instance.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The service instance deployment status.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   A service instance deployment status message.
    #   @return [String]
    #
    # @!attribute [rw] environment_name
    #   The name of the environment that the service instance was deployed
    #   into.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_attempted_at
    #   The time when a deployment of the service was last attempted.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_succeeded_at
    #   The time when the service was last deployed successfully.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service instance.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the service instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The service instance template major version.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The service instance template minor version.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceInstanceSummary AWS API Documentation
    #
    class ServiceInstanceSummary < Struct.new(
      :arn,
      :created_at,
      :deployment_status,
      :deployment_status_message,
      :environment_name,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :name,
      :service_name,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:deployment_status_message]
      include Aws::Structure
    end

    # The service pipeline detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The deployment status of the service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status_message
    #   A service pipeline deployment status message.
    #   @return [String]
    #
    # @!attribute [rw] last_deployment_attempted_at
    #   The time when a deployment of the service pipeline was last
    #   attempted.
    #   @return [Time]
    #
    # @!attribute [rw] last_deployment_succeeded_at
    #   The time when the service pipeline was last deployed successfully.
    #   @return [Time]
    #
    # @!attribute [rw] spec
    #   The service spec that was used to create the service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the service template that was used to create
    #   the service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the service template that was used to create
    #   the service pipeline.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template that was used to create the service
    #   pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServicePipeline AWS API Documentation
    #
    class ServicePipeline < Struct.new(
      :arn,
      :created_at,
      :deployment_status,
      :deployment_status_message,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :spec,
      :template_major_version,
      :template_minor_version,
      :template_name)
      SENSITIVE = [:deployment_status_message, :spec]
      include Aws::Structure
    end

    # A quota was exceeded. For more information, see [Proton Quotas][1] in
    # the *Proton Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # A summary of the service detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the service.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the service was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A service status message.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceSummary AWS API Documentation
    #
    class ServiceSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :last_modified_at,
      :name,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :status_message]
      include Aws::Structure
    end

    # The service template detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the service template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The service template name as displayed in the developer interface.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The customer provided service template encryption key that's used
    #   to encrypt data.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the service template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service template.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_provisioning
    #   If `pipelineProvisioning` is `true`, a service pipeline is included
    #   in the service template. Otherwise, a service pipeline *isn't*
    #   included in the service template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The recommended version of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceTemplate AWS API Documentation
    #
    class ServiceTemplate < Struct.new(
      :arn,
      :created_at,
      :description,
      :display_name,
      :encryption_key,
      :last_modified_at,
      :name,
      :pipeline_provisioning,
      :recommended_version)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # The service template summary data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the service template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the service template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the service template.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The service template name as displayed in the developer interface.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the service template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the service template.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_provisioning
    #   If `pipelineProvisioning` is `true`, a service pipeline is included
    #   in the service template, otherwise a service pipeline *isn't*
    #   included in the service template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_version
    #   The recommended version of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceTemplateSummary AWS API Documentation
    #
    class ServiceTemplateSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :display_name,
      :last_modified_at,
      :name,
      :pipeline_provisioning,
      :recommended_version)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # The version of a service template detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] compatible_environment_templates
    #   An array of compatible environment template names for the major
    #   version of a service template.
    #   @return [Array<Types::CompatibleEnvironmentTemplate>]
    #
    # @!attribute [rw] created_at
    #   The time when the version of a service template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the version of a service template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] major_version
    #   The latest major version that's associated with the version of a
    #   service template.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The minor version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_minor_version
    #   The recommended minor version of the service template.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The service template version status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A service template version status message.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the version of a service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceTemplateVersion AWS API Documentation
    #
    class ServiceTemplateVersion < Struct.new(
      :arn,
      :compatible_environment_templates,
      :created_at,
      :description,
      :last_modified_at,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :schema,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :schema, :status_message]
      include Aws::Structure
    end

    # A summary of the service template version detail data.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time when the version of a service template was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The time when the version of a service template was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] major_version
    #   The latest major version that's associated with the version of a
    #   service template.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   The minor version of a service template.
    #   @return [String]
    #
    # @!attribute [rw] recommended_minor_version
    #   The recommended minor version of the service template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The service template minor version status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A service template minor version status message.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ServiceTemplateVersionSummary AWS API Documentation
    #
    class ServiceTemplateVersionSummary < Struct.new(
      :arn,
      :created_at,
      :description,
      :last_modified_at,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :template_name)
      SENSITIVE = [:description, :status_message]
      include Aws::Structure
    end

    # A description of a resource tag.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The key of the resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the resource tag
    #   is applied to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   An array of resource tags to apply to a resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The detail data for a template sync configuration.
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository, for example `myrepos/myrepo`.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The repository provider.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory path to your template bundle version.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/TemplateSyncConfig AWS API Documentation
    #
    class TemplateSyncConfig < Struct.new(
      :branch,
      :repository_name,
      :repository_provider,
      :subdirectory,
      :template_name,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template version source data.
    #
    # @note TemplateVersionSourceInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3
    #   An S3 source object that includes the template bundle S3 path and
    #   name for a template minor version.
    #   @return [Types::S3ObjectSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/TemplateVersionSourceInput AWS API Documentation
    #
    class TemplateVersionSourceInput < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < TemplateVersionSourceInput; end
      class Unknown < TemplateVersionSourceInput; end
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that the tag is to be
    #   removed from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   An array of tag keys indicating the resource tags to be removed from
    #   the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAccountSettingsInput
    #   data as a hash:
    #
    #       {
    #         pipeline_provisioning_repository: {
    #           branch: "GitBranchName", # required
    #           name: "RepositoryName", # required
    #           provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         },
    #         pipeline_service_role_arn: "PipelineRoleArn",
    #       }
    #
    # @!attribute [rw] pipeline_provisioning_repository
    #   The repository that you provide with pull request provisioning.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [Types::RepositoryBranchInput]
    #
    # @!attribute [rw] pipeline_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton pipeline service role.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateAccountSettingsInput AWS API Documentation
    #
    class UpdateAccountSettingsInput < Struct.new(
      :pipeline_provisioning_repository,
      :pipeline_service_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_settings
    #   The Proton pipeline service role repository detail data that's
    #   returned by Proton.
    #   @return [Types::AccountSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateAccountSettingsOutput AWS API Documentation
    #
    class UpdateAccountSettingsOutput < Struct.new(
      :account_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentAccountConnectionInput
    #   data as a hash:
    #
    #       {
    #         id: "EnvironmentAccountConnectionId", # required
    #         role_arn: "Arn", # required
    #       }
    #
    # @!attribute [rw] id
    #   The ID of the environment account connection to update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM service role that is
    #   associated with the environment account connection to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentAccountConnectionInput AWS API Documentation
    #
    class UpdateEnvironmentAccountConnectionInput < Struct.new(
      :id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_account_connection
    #   The environment account connection detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentAccountConnection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentAccountConnectionOutput AWS API Documentation
    #
    class UpdateEnvironmentAccountConnectionOutput < Struct.new(
      :environment_account_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #         description: "Description",
    #         environment_account_connection_id: "EnvironmentAccountConnectionId",
    #         name: "ResourceName", # required
    #         proton_service_role_arn: "Arn",
    #         provisioning_repository: {
    #           branch: "GitBranchName", # required
    #           name: "RepositoryName", # required
    #           provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         },
    #         spec: "SpecContents",
    #         template_major_version: "TemplateVersionPart",
    #         template_minor_version: "TemplateVersionPart",
    #       }
    #
    # @!attribute [rw] deployment_type
    #   There are four modes for updating an environment as described in the
    #   following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the new
    #     spec that you provide. Only requested parameters are updated.
    #     *Don’t* include minor or major version parameters when you use
    #     this `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the
    #     published, recommended (latest) minor version of the current major
    #     version in use, by default. You can also specify a different minor
    #     version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the environment is deployed and updated with the
    #     published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different
    #     major version that is higher than the major version in use and a
    #     minor version (optional).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the environment update.
    #   @return [String]
    #
    # @!attribute [rw] environment_account_connection_id
    #   The ID of the environment account connection.
    #
    #   You can only update to a new environment account connection if it
    #   was created in the same environment account that the current
    #   environment account connection was created in and is associated with
    #   the current environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment to update.
    #   @return [String]
    #
    # @!attribute [rw] proton_service_role_arn
    #   The Amazon Resource Name (ARN) of the Proton service role that
    #   allows Proton to make API calls to other services your behalf.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_repository
    #   The repository that you provide with pull request provisioning.
    #
    #   Provisioning by pull request is currently in feature preview and is
    #   only usable with Terraform based Proton Templates. To learn more
    #   about [Amazon Web Services Feature Preview terms][1], see section 2
    #   on Beta and Previews.
    #
    #
    #
    #   [1]: https://aws.amazon.com/service-terms
    #   @return [Types::RepositoryBranchInput]
    #
    # @!attribute [rw] spec
    #   The formatted specification that defines the update.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the environment to update.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the environment to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentInput AWS API Documentation
    #
    class UpdateEnvironmentInput < Struct.new(
      :deployment_type,
      :description,
      :environment_account_connection_id,
      :name,
      :proton_service_role_arn,
      :provisioning_repository,
      :spec,
      :template_major_version,
      :template_minor_version)
      SENSITIVE = [:description, :spec]
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The environment detail data that's returned by Proton.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentOutput AWS API Documentation
    #
    class UpdateEnvironmentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentTemplateInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         display_name: "DisplayName",
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of the environment template update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the environment template to update as displayed in the
    #   developer interface.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment template to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplateInput AWS API Documentation
    #
    class UpdateEnvironmentTemplateInput < Struct.new(
      :description,
      :display_name,
      :name)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # @!attribute [rw] environment_template
    #   The environment template detail data that's returned by Proton.
    #   @return [Types::EnvironmentTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplateOutput AWS API Documentation
    #
    class UpdateEnvironmentTemplateOutput < Struct.new(
      :environment_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEnvironmentTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         status: "REGISTRATION_IN_PROGRESS", # accepts REGISTRATION_IN_PROGRESS, REGISTRATION_FAILED, DRAFT, PUBLISHED
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of environment template version to update.
    #   @return [String]
    #
    # @!attribute [rw] major_version
    #   To update a major version of an environment template, include `major
    #   Version`.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   To update a minor version of an environment template, include
    #   `minorVersion`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environment template minor version to update.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the environment template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplateVersionInput AWS API Documentation
    #
    class UpdateEnvironmentTemplateVersionInput < Struct.new(
      :description,
      :major_version,
      :minor_version,
      :status,
      :template_name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] environment_template_version
    #   The environment template version detail data that's returned by
    #   Proton.
    #   @return [Types::EnvironmentTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateEnvironmentTemplateVersionOutput AWS API Documentation
    #
    class UpdateEnvironmentTemplateVersionOutput < Struct.new(
      :environment_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         name: "ResourceName", # required
    #         spec: "SpecContents",
    #       }
    #
    # @!attribute [rw] description
    #   The edited service description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service to edit.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   Lists the service instances to add and the existing service
    #   instances to remain. Omit the existing service instances to delete
    #   from the list. *Don't* include edits to the existing service
    #   instances or pipeline. For more information, see *Edit a service* in
    #   the [Proton Administrator Guide][1] or the [Proton User Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html
    #   [2]: https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceInput AWS API Documentation
    #
    class UpdateServiceInput < Struct.new(
      :description,
      :name,
      :spec)
      SENSITIVE = [:description, :spec]
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceInstanceInput
    #   data as a hash:
    #
    #       {
    #         deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #         name: "ResourceName", # required
    #         service_name: "ResourceName", # required
    #         spec: "SpecContents",
    #         template_major_version: "TemplateVersionPart",
    #         template_minor_version: "TemplateVersionPart",
    #       }
    #
    # @!attribute [rw] deployment_type
    #   The deployment type.
    #
    #   There are four modes for updating a service instance as described in
    #   the following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with
    #     the new spec that you provide. Only requested parameters are
    #     updated. *Don’t* include minor or major version parameters when
    #     you use this `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with
    #     the published, recommended (latest) minor version of the current
    #     major version in use, by default. You can also specify a different
    #     minor version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the service instance is deployed and updated with
    #     the published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different
    #     major version that is higher than the major version in use and a
    #     minor version (optional).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service instance to update.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service that the service instance belongs to.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The formatted specification that defines the service instance
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the service template to update.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the service template to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceInstanceInput AWS API Documentation
    #
    class UpdateServiceInstanceInput < Struct.new(
      :deployment_type,
      :name,
      :service_name,
      :spec,
      :template_major_version,
      :template_minor_version)
      SENSITIVE = [:spec]
      include Aws::Structure
    end

    # @!attribute [rw] service_instance
    #   The service instance summary data returned by Proton.
    #   @return [Types::ServiceInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceInstanceOutput AWS API Documentation
    #
    class UpdateServiceInstanceOutput < Struct.new(
      :service_instance)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] service
    #   The service detail data that's returned by Proton.
    #   @return [Types::Service]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceOutput AWS API Documentation
    #
    class UpdateServiceOutput < Struct.new(
      :service)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServicePipelineInput
    #   data as a hash:
    #
    #       {
    #         deployment_type: "NONE", # required, accepts NONE, CURRENT_VERSION, MINOR_VERSION, MAJOR_VERSION
    #         service_name: "ResourceName", # required
    #         spec: "SpecContents", # required
    #         template_major_version: "TemplateVersionPart",
    #         template_minor_version: "TemplateVersionPart",
    #       }
    #
    # @!attribute [rw] deployment_type
    #   The deployment type.
    #
    #   There are four modes for updating a service pipeline as described in
    #   the following. The `deploymentType` field defines the mode.
    #
    #
    #
    #   : `NONE`
    #
    #     In this mode, a deployment *doesn't* occur. Only the requested
    #     metadata parameters are updated.
    #
    #
    #
    #   : `CURRENT_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with
    #     the new spec that you provide. Only requested parameters are
    #     updated. *Don’t* include minor or major version parameters when
    #     you use this `deployment-type`.
    #
    #
    #
    #   : `MINOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with
    #     the published, recommended (latest) minor version of the current
    #     major version in use, by default. You can also specify a different
    #     minor version of the current major version in use.
    #
    #
    #
    #   : `MAJOR_VERSION`
    #
    #     In this mode, the service pipeline is deployed and updated with
    #     the published, recommended (latest) major and minor version of the
    #     current template, by default. You can also specify a different
    #     major version that is higher than the major version in use and a
    #     minor version (optional).
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service to that the pipeline is associated with.
    #   @return [String]
    #
    # @!attribute [rw] spec
    #   The spec for the service pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] template_major_version
    #   The major version of the service template that was used to create
    #   the service that the pipeline is associated with.
    #   @return [String]
    #
    # @!attribute [rw] template_minor_version
    #   The minor version of the service template that was used to create
    #   the service that the pipeline is associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServicePipelineInput AWS API Documentation
    #
    class UpdateServicePipelineInput < Struct.new(
      :deployment_type,
      :service_name,
      :spec,
      :template_major_version,
      :template_minor_version)
      SENSITIVE = [:spec]
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   The pipeline details returned by Proton.
    #   @return [Types::ServicePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServicePipelineOutput AWS API Documentation
    #
    class UpdateServicePipelineOutput < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceTemplateInput
    #   data as a hash:
    #
    #       {
    #         description: "Description",
    #         display_name: "DisplayName",
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] description
    #   A description of the service template update.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the service template to update as displayed in the
    #   developer interface.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the service template to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplateInput AWS API Documentation
    #
    class UpdateServiceTemplateInput < Struct.new(
      :description,
      :display_name,
      :name)
      SENSITIVE = [:description, :display_name]
      include Aws::Structure
    end

    # @!attribute [rw] service_template
    #   The service template detail data that's returned by Proton.
    #   @return [Types::ServiceTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplateOutput AWS API Documentation
    #
    class UpdateServiceTemplateOutput < Struct.new(
      :service_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceTemplateVersionInput
    #   data as a hash:
    #
    #       {
    #         compatible_environment_templates: [
    #           {
    #             major_version: "TemplateVersionPart", # required
    #             template_name: "ResourceName", # required
    #           },
    #         ],
    #         description: "Description",
    #         major_version: "TemplateVersionPart", # required
    #         minor_version: "TemplateVersionPart", # required
    #         status: "REGISTRATION_IN_PROGRESS", # accepts REGISTRATION_IN_PROGRESS, REGISTRATION_FAILED, DRAFT, PUBLISHED
    #         template_name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] compatible_environment_templates
    #   An array of compatible environment names for a service template
    #   major or minor version to update.
    #   @return [Array<Types::CompatibleEnvironmentTemplateInput>]
    #
    # @!attribute [rw] description
    #   A description of a service template version to update.
    #   @return [String]
    #
    # @!attribute [rw] major_version
    #   To update a major version of a service template, include `major
    #   Version`.
    #   @return [String]
    #
    # @!attribute [rw] minor_version
    #   To update a minor version of a service template, include
    #   `minorVersion`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service template minor version to update.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the service template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplateVersionInput AWS API Documentation
    #
    class UpdateServiceTemplateVersionInput < Struct.new(
      :compatible_environment_templates,
      :description,
      :major_version,
      :minor_version,
      :status,
      :template_name)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] service_template_version
    #   The service template version detail data that's returned by Proton.
    #   @return [Types::ServiceTemplateVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateServiceTemplateVersionOutput AWS API Documentation
    #
    class UpdateServiceTemplateVersionOutput < Struct.new(
      :service_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateTemplateSyncConfigInput
    #   data as a hash:
    #
    #       {
    #         branch: "GitBranchName", # required
    #         repository_name: "RepositoryName", # required
    #         repository_provider: "GITHUB", # required, accepts GITHUB, GITHUB_ENTERPRISE, BITBUCKET
    #         subdirectory: "Subdirectory",
    #         template_name: "ResourceName", # required
    #         template_type: "ENVIRONMENT", # required, accepts ENVIRONMENT, SERVICE
    #       }
    #
    # @!attribute [rw] branch
    #   The repository branch.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the repository, for example `myrepos/myrepo`.
    #   @return [String]
    #
    # @!attribute [rw] repository_provider
    #   The repository provider.
    #   @return [String]
    #
    # @!attribute [rw] subdirectory
    #   A subdirectory path to your template bundle version. When included,
    #   limits the template bundle search to this repository directory.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The synced template name.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The synced template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateTemplateSyncConfigInput AWS API Documentation
    #
    class UpdateTemplateSyncConfigInput < Struct.new(
      :branch,
      :repository_name,
      :repository_provider,
      :subdirectory,
      :template_name,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_sync_config
    #   The template sync configuration detail data that's returned by
    #   Proton.
    #   @return [Types::TemplateSyncConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/UpdateTemplateSyncConfigOutput AWS API Documentation
    #
    class UpdateTemplateSyncConfigOutput < Struct.new(
      :template_sync_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input is invalid or an out-of-range value was supplied for the
    # input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = [:message]
      include Aws::Structure
    end

  end
end
