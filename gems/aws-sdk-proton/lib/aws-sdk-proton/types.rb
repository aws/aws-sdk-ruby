# frozen_string_literal: true

# This is generated code!

module Aws::Proton
  # This module contains the types returned by client operations.
  module Types

    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #   @return [String]
    class AcceptEnvironmentAccountConnectionOperationInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection data that's returned by Proton.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class AcceptEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There <i>isn't</i> sufficient access for performing this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Proton settings that are used for multiple services in the Amazon Web Services account.</p>
    # @!attribute pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed provisioning, and by
    #         customer-owned automation for self-managed provisioning.</p>
    #   @return [String]
    # @!attribute pipeline_provisioning_repository
    #   <p>The linked repository for pipeline provisioning. Required if you have environments configured for self-managed provisioning with services that include
    #         pipelines. A linked repository is a repository that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #   @return [Types::RepositoryBranch]
    # @!attribute pipeline_codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role that Proton uses for provisioning pipelines. Proton assumes this role for CodeBuild-based
    #         provisioning.</p>
    #   @return [String]
    class AccountSettings < Struct.new(
      :pipeline_service_role_arn,
      :pipeline_provisioning_repository,
      :pipeline_codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component with the deployment to cancel.</p>
    #   @return [String]
    class CancelComponentDeploymentOperationInput < Struct.new(
      :component_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the component with the deployment that is being canceled.</p>
    #   @return [Types::Component]
    class CancelComponentDeploymentOperationOutput < Struct.new(
      :component,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_name
    #   <p>The name of the environment with the deployment to cancel.</p>
    #   @return [String]
    class CancelEnvironmentDeploymentOperationInput < Struct.new(
      :environment_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The environment summary data that's returned by Proton.</p>
    #   @return [Types::Environment]
    class CancelEnvironmentDeploymentOperationOutput < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance_name
    #   <p>The name of the service instance with the deployment to cancel.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service with the service instance deployment to cancel.</p>
    #   @return [String]
    class CancelServiceInstanceDeploymentOperationInput < Struct.new(
      :service_instance_name,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance
    #   <p>The service instance summary data that's returned by Proton.</p>
    #   @return [Types::ServiceInstance]
    class CancelServiceInstanceDeploymentOperationOutput < Struct.new(
      :service_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service with the service pipeline deployment to cancel.</p>
    #   @return [String]
    class CancelServicePipelineDeploymentOperationInput < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>The service pipeline detail data that's returned by Proton.</p>
    #   @return [Types::ServicePipeline]
    class CancelServicePipelineDeploymentOperationOutput < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Compatible environment template data.</p>
    # @!attribute template_name
    #   <p>The compatible environment template name.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The major version of the compatible environment template.</p>
    #   @return [String]
    class CompatibleEnvironmentTemplate < Struct.new(
      :template_name,
      :major_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Compatible environment template data.</p>
    # @!attribute template_name
    #   <p>The compatible environment template name.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The major version of the compatible environment template.</p>
    #   @return [String]
    class CompatibleEnvironmentTemplateInput < Struct.new(
      :template_name,
      :major_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the component.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the Proton environment that this component is associated with.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the component was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the component was last modified.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the component was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the component was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute deployment_status
    #   <p>The component deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>The message associated with the component deployment status.</p>
    #   @return [String]
    # @!attribute service_spec
    #   <p>The service spec that the component uses to access service inputs. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute last_client_request_token
    #   <p>The last token the client requested.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this component.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this component.</p>
    #   @return [String]
    class Component < Struct.new(
      :name,
      :description,
      :arn,
      :environment_name,
      :service_name,
      :service_instance_name,
      :created_at,
      :last_modified_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :deployment_status,
      :deployment_status_message,
      :service_spec,
      :last_client_request_token,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed data about the current state of the component.</p>
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute service_spec
    #   <p>The service spec that the component uses to access service inputs. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute template_file
    #   <p>The template file used.</p>
    #   @return [String]
    class ComponentState < Struct.new(
      :service_name,
      :service_instance_name,
      :service_spec,
      :template_file,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #   <i>Proton User Guide</i>.</p>
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the Proton environment that this component is associated with.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the component was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the component was last modified.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the component was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the component was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute deployment_status
    #   <p>The component deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>The message associated with the component deployment status.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this component.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this component.</p>
    #   @return [String]
    class ComponentSummary < Struct.new(
      :name,
      :arn,
      :environment_name,
      :service_name,
      :service_instance_name,
      :created_at,
      :last_modified_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :deployment_status,
      :deployment_status_message,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request <i>couldn't</i> be made due to a conflicting operation or resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary counts of each Proton resource type.</p>
    # @!attribute components
    #   <p>The total number of components in the Amazon Web Services account.</p>
    #            <p>The semantics of the <code>components</code> field are different from the semantics of results for other
    #      infrastructure-provisioning resources. That's because at this time components don't have associated templates,
    #      therefore they don't have the concept of staleness. The <code>components</code> object will only contain
    #       <code>total</code> and <code>failed</code> members.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute environments
    #   <p>The staleness counts for Proton environments in the Amazon Web Services account. The <code>environments</code> object will only
    #      contain <code>total</code> members.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute environment_templates
    #   <p>The total number of environment templates in the Amazon Web Services account. The <code>environmentTemplates</code> object
    #      will only contain <code>total</code> members.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute service_instances
    #   <p>The staleness counts for Proton service instances in the Amazon Web Services account.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute services
    #   <p>The staleness counts for Proton services in the Amazon Web Services account.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute service_templates
    #   <p>The total number of service templates in the Amazon Web Services account. The <code>serviceTemplates</code> object will only
    #      contain <code>total</code> members.</p>
    #   @return [Types::ResourceCountsSummary]
    # @!attribute pipelines
    #   <p>The staleness counts for Proton pipelines in the Amazon Web Services account.</p>
    #   @return [Types::ResourceCountsSummary]
    class CountsSummary < Struct.new(
      :components,
      :environments,
      :environment_templates,
      :service_instances,
      :services,
      :service_templates,
      :pipelines,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The customer-provided name of the component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional customer-provided description of the component.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. If you don't specify this, the component isn't attached to any
    #         service instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. If you don't specify this, the component isn't attached to any service
    #         instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the Proton environment that you want to associate this component with. You must specify this when you don't specify
    #           <code>serviceInstanceName</code> and <code>serviceName</code>.</p>
    #   @return [String]
    # @!attribute template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #   @return [String]
    # @!attribute manifest
    #   <p>A path to a manifest file that lists the Infrastructure as Code (IaC) file, template language, and rendering engine for infrastructure that a custom
    #         component provisions.</p>
    #   @return [String]
    # @!attribute service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when you attach the component to a service
    #         instance.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton component. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token for the created component.</p>
    #   @return [String]
    class CreateComponentOperationInput < Struct.new(
      :name,
      :description,
      :service_name,
      :service_instance_name,
      :environment_name,
      :template_file,
      :manifest,
      :service_spec,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the created component.</p>
    #   @return [Types::Component]
    class CreateComponentOperationOutput < Struct.new(
      :component,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the first
    #         request created.</p>
    #   @return [String]
    # @!attribute management_account_id
    #   <p>The ID of the management account that accepts or rejects the environment account connection. You create and manage the Proton environment in this
    #         account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision environment
    #         infrastructure resources in the associated environment account.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision infrastructure
    #         resources in the associated environment account.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the Proton environment that's created in the associated management account.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with any environments running in this
    #         account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources
    #         using CodeBuild-based provisioning in the associated environment account.</p>
    #   @return [String]
    class CreateEnvironmentAccountConnectionOperationInput < Struct.new(
      :client_token,
      :management_account_id,
      :role_arn,
      :environment_name,
      :tags,
      :component_role_arn,
      :codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class CreateEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the environment template. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-templates.html">Environment Templates</a> in the <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment that's being created and deployed.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>A YAML formatted string that provides inputs as defined in the environment template bundle schema file. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-environments.html">Environments</a> in the <i>Proton User
    #         Guide</i>.</p>
    #   @return [String]
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #   @return [String]
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an environment
    #         account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-env-account-connections.html">Environment account
    #           connections</a> in the <i>Proton User guide</i>.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute provisioning_repository
    #   <p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository
    #         that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #            <p>To use self-managed provisioning for the environment, specify this parameter and omit the <code>environmentAccountConnectionId</code> and
    #           <code>protonServiceRoleArn</code> parameters.</p>
    #   @return [Types::RepositoryBranchInput]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with this environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your
    #         behalf.</p>
    #            <p>To use CodeBuild-based provisioning for the environment or for any service instance running in the environment, specify either the
    #         <code>environmentAccountConnectionId</code> or <code>codebuildRoleArn</code> parameter.</p>
    #   @return [String]
    class CreateEnvironmentOperationInput < Struct.new(
      :name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :description,
      :spec,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :tags,
      :provisioning_repository,
      :component_role_arn,
      :codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The environment detail data that's returned by Proton.</p>
    #   @return [Types::Environment]
    class CreateEnvironmentOperationOutput < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The environment template name as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>A customer provided encryption key that Proton uses to encrypt data.</p>
    #   @return [String]
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateEnvironmentTemplateOperationInput < Struct.new(
      :name,
      :display_name,
      :description,
      :encryption_key,
      :provisioning,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template
    #   <p>The environment template detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentTemplate]
    class CreateEnvironmentTemplateOperationOutput < Struct.new(
      :environment_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the first
    #         request created.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the new version of an environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To create a new minor version of the environment template, include <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the environment template, exclude <code>major Version</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>
    #   @return [Types::TemplateVersionSourceInput]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateEnvironmentTemplateVersionOperationInput < Struct.new(
      :client_token,
      :template_name,
      :description,
      :major_version,
      :source,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template_version
    #   <p>The environment template detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentTemplateVersion]
    class CreateEnvironmentTemplateVersionOperationOutput < Struct.new(
      :environment_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of your AWS CodeStar connection that connects Proton to your repository provider account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html">Setting up for Proton</a> in the <i>Proton User
    #           Guide</i>.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton repository. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateRepositoryOperationInput < Struct.new(
      :provider,
      :name,
      :connection_arn,
      :encryption_key,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>The repository link's detail data that's returned by Proton.</p>
    #   @return [Types::Repository]
    class CreateRepositoryOperationOutput < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service instance to create.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service the service instance is added to.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The spec for the service instance you want to create.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>To create a new major and minor version of the service template,
    #           <i>exclude</i>
    #               <code>major Version</code>.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>To create a new minor version of the service template, include a <code>major
    #           Version</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service instance.
    #         A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>The client token of the service instance to create.</p>
    #   @return [String]
    class CreateServiceInstanceOperationInput < Struct.new(
      :name,
      :service_name,
      :spec,
      :template_major_version,
      :template_minor_version,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance
    #   <p>The detailed data of the service instance being created.</p>
    #   @return [Types::ServiceInstance]
    class CreateServiceInstanceOperationOutput < Struct.new(
      :service_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The service name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the Proton service.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template that's used to create the service.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>A link to a spec file that provides inputs as defined in the service template bundle
    #         schema file. The spec file is in YAML format. <i>Don’t</i> include pipeline
    #         inputs in the spec if your service template <i>doesn’t</i> include a service
    #         pipeline. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-create-svc.html">Create a service</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see
    #           <a href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol">Setting up an
    #           AWS CodeStar connection</a> in the <i>Proton User Guide</i>.
    #           <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    #   @return [String]
    # @!attribute repository_id
    #   <p>The ID of the code repository. <i>Don't</i> include this parameter if your
    #         service template <i>doesn't</i> include a service pipeline.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in Proton.
    #           <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service. A tag is
    #         a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateServiceOperationInput < Struct.new(
      :name,
      :description,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :spec,
      :repository_connection_arn,
      :repository_id,
      :branch_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service detail data that's returned by Proton.</p>
    #   @return [Types::Service]
    class CreateServiceOperationOutput < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service the Proton Ops file is for.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The provider type for your repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch for your Proton Ops file.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The path to the Proton Ops file.</p>
    #   @return [String]
    class CreateServiceSyncConfigOperationInput < Struct.new(
      :service_name,
      :repository_provider,
      :repository_name,
      :branch,
      :file_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_sync_config
    #   <p>The detailed data of the Proton Ops file.</p>
    #   @return [Types::ServiceSyncConfig]
    class CreateServiceSyncConfigOperationOutput < Struct.new(
      :service_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the service template as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service template.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>A customer provided encryption key that's used to encrypt data.</p>
    #   @return [String]
    # @!attribute pipeline_provisioning
    #   <p>By default, Proton provides a service pipeline for your service. When this parameter is
    #         included, it indicates that an Proton service pipeline <i>isn't</i> provided
    #         for your service. After it's included, it <i>can't</i> be changed. For more
    #         information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-template-authoring.html#ag-template-bundles">Template
    #           bundles</a> in the <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template.
    #         A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateServiceTemplateOperationInput < Struct.new(
      :name,
      :display_name,
      :description,
      :encryption_key,
      :pipeline_provisioning,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template
    #   <p>The service template detail data that's returned by Proton.</p>
    #   @return [Types::ServiceTemplate]
    class CreateServiceTemplateOperationOutput < Struct.new(
      :service_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton
    #         returns the service template version that the first request created.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the new version of a service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To create a new minor version of the service template, include a <code>major
    #           Version</code>.</p>
    #            <p>To create a new major and minor version of the service template,
    #           <i>exclude</i>
    #               <code>major Version</code>.</p>
    #   @return [String]
    # @!attribute source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of
    #         a service template.</p>
    #   @return [Types::TemplateVersionSourceInput]
    # @!attribute compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with the new service template
    #         version. A service instance based on this service template version can run in environments
    #         based on compatible templates.</p>
    #   @return [Array<Types::CompatibleEnvironmentTemplateInput>]
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template
    #         version. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton User Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached
    #         to service instances based on this service template version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [Array<String>]
    class CreateServiceTemplateVersionOperationInput < Struct.new(
      :client_token,
      :template_name,
      :description,
      :major_version,
      :source,
      :compatible_environment_templates,
      :tags,
      :supported_component_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template_version
    #   <p>The service template version summary of detail data that's returned by Proton.</p>
    #   @return [Types::ServiceTemplateVersion]
    class CreateServiceTemplateVersionOperationOutput < Struct.new(
      :service_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of your registered template.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The type of the registered template.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The provider type for your repository.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch for your template.</p>
    #   @return [String]
    # @!attribute subdirectory
    #   <p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this
    #      repository directory.</p>
    #   @return [String]
    class CreateTemplateSyncConfigOperationInput < Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #   @return [Types::TemplateSyncConfig]
    class CreateTemplateSyncConfigOperationOutput < Struct.new(
      :template_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the component to delete.</p>
    #   @return [String]
    class DeleteComponentOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the component being deleted.</p>
    #   @return [Types::Component]
    class DeleteComponentOperationOutput < Struct.new(
      :component,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the deployment to delete.</p>
    #   @return [String]
    class DeleteDeploymentInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment
    #   <p>The detailed data of the deployment being deleted.</p>
    #   @return [Types::Deployment]
    class DeleteDeploymentOutput < Struct.new(
      :deployment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to delete.</p>
    #   @return [String]
    class DeleteEnvironmentAccountConnectionOperationInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The detailed data of the environment account connection being deleted.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class DeleteEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment to delete.</p>
    #   @return [String]
    class DeleteEnvironmentOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The detailed data of the environment being deleted.</p>
    #   @return [Types::Environment]
    class DeleteEnvironmentOperationOutput < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template to delete.</p>
    #   @return [String]
    class DeleteEnvironmentTemplateOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template
    #   <p>The detailed data of the environment template being deleted.</p>
    #   @return [Types::EnvironmentTemplate]
    class DeleteEnvironmentTemplateOperationOutput < Struct.new(
      :environment_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The environment template major version to delete.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The environment template minor version to delete.</p>
    #   @return [String]
    class DeleteEnvironmentTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template_version
    #   <p>The detailed data of the environment template version being deleted.</p>
    #   @return [Types::EnvironmentTemplateVersion]
    class DeleteEnvironmentTemplateVersionOperationOutput < Struct.new(
      :environment_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name.</p>
    #   @return [String]
    class DeleteRepositoryOperationInput < Struct.new(
      :provider,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>The deleted repository link's detail data that's returned by Proton.</p>
    #   @return [Types::Repository]
    class DeleteRepositoryOperationOutput < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service to delete.</p>
    #   @return [String]
    class DeleteServiceOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The detailed data of the service being deleted.</p>
    #   @return [Types::Service]
    class DeleteServiceOperationOutput < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that you want to delete the service sync configuration for.</p>
    #   @return [String]
    class DeleteServiceSyncConfigOperationInput < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_sync_config
    #   <p>The detailed data for the service sync config.</p>
    #   @return [Types::ServiceSyncConfig]
    class DeleteServiceSyncConfigOperationOutput < Struct.new(
      :service_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service template to delete.</p>
    #   @return [String]
    class DeleteServiceTemplateOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template
    #   <p>The detailed data of the service template being deleted.</p>
    #   @return [Types::ServiceTemplate]
    class DeleteServiceTemplateOperationOutput < Struct.new(
      :service_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The service template major version to delete.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The service template minor version to delete.</p>
    #   @return [String]
    class DeleteServiceTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template_version
    #   <p>The detailed data of the service template version being deleted.</p>
    #   @return [Types::ServiceTemplateVersion]
    class DeleteServiceTemplateVersionOperationOutput < Struct.new(
      :service_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The template type.</p>
    #   @return [String]
    class DeleteTemplateSyncConfigOperationInput < Struct.new(
      :template_name,
      :template_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #   @return [Types::TemplateSyncConfig]
    class DeleteTemplateSyncConfigOperationOutput < Struct.new(
      :template_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed information about a deployment.</p>
    # @!attribute id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target of the deployment.</p>
    #   @return [String]
    # @!attribute target_resource_created_at
    #   <p>The date and time the depoyment target was created.</p>
    #   @return [Time]
    # @!attribute target_resource_type
    #   <p>The resource type of the deployment target. It can be an environment, service, service instance, or component.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment associated with this deployment.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service in this deployment.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the deployment's service instance.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component associated with this deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>The deployment status message.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the deployment was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The date and time the deployment was last modified.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The date and time the deployment was completed.</p>
    #   @return [Time]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment.</p>
    #   @return [String]
    # @!attribute initial_state
    #   <p>The initial state of the target resource at the time of the deployment.</p>
    #   @return [Types::DeploymentState]
    # @!attribute target_state
    #   <p>The target state of the target resource at the time of the deployment.</p>
    #   @return [Types::DeploymentState]
    class Deployment < Struct.new(
      :id,
      :arn,
      :target_arn,
      :target_resource_created_at,
      :target_resource_type,
      :environment_name,
      :service_name,
      :service_instance_name,
      :component_name,
      :deployment_status,
      :deployment_status_message,
      :created_at,
      :last_modified_at,
      :completed_at,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      :initial_state,
      :target_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed data about the current state of the deployment.</p>
    # @!attribute service_instance
    #   <p>The state of the service instance associated with the deployment.</p>
    #   @return [Types::ServiceInstanceState]
    # @!attribute environment
    #   <p>The state of the environment associated with the deployment.</p>
    #   @return [Types::EnvironmentState]
    # @!attribute service_pipeline
    #   <p>The state of the service pipeline associated with the deployment.</p>
    #   @return [Types::ServicePipelineState]
    # @!attribute component
    #   <p>The state of the component associated with the deployment.</p>
    #   @return [Types::ComponentState]
    class DeploymentState < Struct.new(
      :service_instance,
      :environment,
      :service_pipeline,
      :component,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class ServiceInstance < DeploymentState; end
      class Environment < DeploymentState; end
      class ServicePipeline < DeploymentState; end
      class Component < DeploymentState; end
      class Unknown < DeploymentState; end
    end

    # <p>Summary data of the deployment.</p>
    # @!attribute id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The Amazon Resource Name (ARN) of the target of the deployment.</p>
    #   @return [String]
    # @!attribute target_resource_created_at
    #   <p>The date and time the target resource was created.</p>
    #   @return [Time]
    # @!attribute target_resource_type
    #   <p>The resource type of the deployment target. It can be an environment, service, service instance, or component.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the deployment was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The date and time the deployment was last modified.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The date and time the deployment was completed.</p>
    #   @return [Time]
    # @!attribute environment_name
    #   <p>The name of the environment associated with the deployment.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service associated with the deployment.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance associated with the deployment.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component associated with the deployment.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The current status of the deployment.</p>
    #   @return [String]
    class DeploymentSummary < Struct.new(
      :id,
      :arn,
      :target_arn,
      :target_resource_created_at,
      :target_resource_type,
      :created_at,
      :last_modified_at,
      :completed_at,
      :environment_name,
      :service_name,
      :service_instance_name,
      :component_name,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      :deployment_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton environment resource. An Proton environment is a set of resources shared across Proton services.</p>
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the environment was created.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the environment was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the environment was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The environment deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>An environment deployment status message.</p>
    #   @return [String]
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #   @return [String]
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that's used to provision infrastructure resources in an environment account.</p>
    #   @return [String]
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The environment spec.</p>
    #   @return [String]
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #   @return [String]
    # @!attribute provisioning_repository
    #   <p>The linked repository that you use to host your rendered infrastructure templates for self-managed
    #      provisioning. A linked repository is a repository that has been registered with Proton. For more information, see
    #       <a href="https://docs.aws.amazon.com/proton/latest/APIReference/API_CreateRepository.html">CreateRepository</a>.</p>
    #   @return [Types::RepositoryBranch]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your
    #         behalf.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this environment.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this environment.</p>
    #   @return [String]
    class Environment < Struct.new(
      :name,
      :description,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :arn,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :environment_account_id,
      :spec,
      :provisioning,
      :provisioning_repository,
      :component_role_arn,
      :codebuild_role_arn,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton environment account connection resource.</p>
    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment account connection.</p>
    #   @return [String]
    # @!attribute management_account_id
    #   <p>The ID of the management account that's connected to the environment account connection.</p>
    #   @return [String]
    # @!attribute environment_account_id
    #   <p>The environment account that's connected to the environment account connection.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM service role that's associated with the environment account connection.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment that's associated with the environment account connection.</p>
    #   @return [String]
    # @!attribute requested_at
    #   <p>The time when the environment account connection request was made.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the environment account connection was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the environment account connection.</p>
    #   @return [String]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources
    #         using CodeBuild-based provisioning in the associated environment account.</p>
    #   @return [String]
    class EnvironmentAccountConnection < Struct.new(
      :id,
      :arn,
      :management_account_id,
      :environment_account_id,
      :role_arn,
      :environment_name,
      :requested_at,
      :last_modified_at,
      :status,
      :component_role_arn,
      :codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton environment account connection resource.</p>
    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment account connection.</p>
    #   @return [String]
    # @!attribute management_account_id
    #   <p>The ID of the management account that's connected to the environment account connection.</p>
    #   @return [String]
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that's connected to the environment account connection.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM service role that's associated with the environment account connection.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment that's associated with the environment account connection.</p>
    #   @return [String]
    # @!attribute requested_at
    #   <p>The time when the environment account connection request was made.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the environment account connection was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the environment account connection.</p>
    #   @return [String]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    class EnvironmentAccountConnectionSummary < Struct.new(
      :id,
      :arn,
      :management_account_id,
      :environment_account_id,
      :role_arn,
      :environment_name,
      :requested_at,
      :last_modified_at,
      :status,
      :component_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed data about the current state of the environment.</p>
    # @!attribute spec
    #   <p>The environment spec that was used to create the environment.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the environment template that was used to create the environment.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the environment template that was used to create the environment.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template that was used to create the environment.</p>
    #   @return [String]
    class EnvironmentState < Struct.new(
      :spec,
      :template_name,
      :template_major_version,
      :template_minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton environment resource. An Proton environment is a set of resources shared across Proton services.</p>
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the environment was created.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the environment was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the environment was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The environment deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>An environment deployment status message.</p>
    #   @return [String]
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #   @return [String]
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that the environment is associated with.</p>
    #   @return [String]
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>
    #   @return [String]
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #   @return [String]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this environment.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this environment.</p>
    #   @return [String]
    class EnvironmentSummary < Struct.new(
      :name,
      :description,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :arn,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :environment_account_id,
      :provisioning,
      :component_role_arn,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The environment template data.</p>
    # @!attribute name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the environment template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the environment template was last modified.</p>
    #   @return [Time]
    # @!attribute display_name
    #   <p>The name of the environment template as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #   @return [String]
    # @!attribute recommended_version
    #   <p>The ID of the recommended version of the environment template.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The customer provided encryption key for the environment template.</p>
    #   @return [String]
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #   @return [String]
    class EnvironmentTemplate < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :encryption_key,
      :provisioning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A search filter for environment templates.</p>
    # @!attribute template_name
    #   <p>Include <code>templateName</code> to filter search for a template name.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>Include <code>majorVersion</code> to filter search for a major version.</p>
    #   @return [String]
    class EnvironmentTemplateFilter < Struct.new(
      :template_name,
      :major_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The environment template data.</p>
    # @!attribute name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the environment template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the environment template was last modified.</p>
    #   @return [Time]
    # @!attribute display_name
    #   <p>The name of the environment template as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #   @return [String]
    # @!attribute recommended_version
    #   <p>The recommended version of the environment template.</p>
    #   @return [String]
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #   @return [String]
    class EnvironmentTemplateSummary < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :provisioning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The environment template version data.</p>
    # @!attribute template_name
    #   <p>The name of the version of an environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of an environment template.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The minor version of an environment template.</p>
    #   @return [String]
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the environment template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the version of an environment template.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the version of an environment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the minor version of an environment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of an environment template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the version of an environment template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the version of an environment template was last modified.</p>
    #   @return [Time]
    # @!attribute schema
    #   <p>The schema of the version of an environment template.</p>
    #   @return [String]
    class EnvironmentTemplateVersion < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      :schema,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of the version of an environment template detail data.</p>
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of an environment template.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The version of an environment template.</p>
    #   @return [String]
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the environment template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the version of an environment template.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the version of an environment template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the version of an environment template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of an environment template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the version of an environment template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the version of an environment template was last modified.</p>
    #   @return [Time]
    class EnvironmentTemplateVersionSummary < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetAccountSettingsOperationInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>The Proton pipeline service role detail data that's returned by Proton.</p>
    #   @return [Types::AccountSettings]
    class GetAccountSettingsOperationOutput < Struct.new(
      :account_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the component that you want to get the detailed data for.</p>
    #   @return [String]
    class GetComponentOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the requested component.</p>
    #   @return [Types::Component]
    class GetComponentOperationOutput < Struct.new(
      :component,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the deployment that you want to get the detailed data for.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of a environment that you want to get the detailed data for.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service associated with the given deployment ID.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance associated with the given deployment ID. <code>serviceName</code> must be specified to identify the service
    #      instance.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of a component that you want to get the detailed data for.</p>
    #   @return [String]
    class GetDeploymentInput < Struct.new(
      :id,
      :environment_name,
      :service_name,
      :service_instance_name,
      :component_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment
    #   <p>The detailed data of the requested deployment.</p>
    #   @return [Types::Deployment]
    class GetDeploymentOutput < Struct.new(
      :deployment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection that you want to get the detailed data for.</p>
    #   @return [String]
    class GetEnvironmentAccountConnectionOperationInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The detailed data of the requested environment account connection.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class GetEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment that you want to get the detailed data for.</p>
    #   @return [String]
    class GetEnvironmentOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The detailed data of the requested environment.</p>
    #   @return [Types::Environment]
    class GetEnvironmentOperationOutput < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template that you want to get the detailed data for.</p>
    #   @return [String]
    class GetEnvironmentTemplateOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template
    #   <p>The detailed data of the requested environment template.</p>
    #   @return [Types::EnvironmentTemplate]
    class GetEnvironmentTemplateOperationOutput < Struct.new(
      :environment_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template a version of which you want to get detailed data for.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To get environment template major version detail data, include <code>major Version</code>.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>To get environment template minor version detail data, include <code>minorVersion</code>.</p>
    #   @return [String]
    class GetEnvironmentTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template_version
    #   <p>The detailed data of the requested environment template version.</p>
    #   @return [Types::EnvironmentTemplateVersion]
    class GetEnvironmentTemplateVersionOperationOutput < Struct.new(
      :environment_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name, for example <code>myrepos/myrepo</code>.</p>
    #   @return [String]
    class GetRepositoryOperationInput < Struct.new(
      :provider,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>The repository link's detail data that's returned by Proton.</p>
    #   @return [Types::Repository]
    class GetRepositoryOperationOutput < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The repository sync type.</p>
    #   @return [String]
    class GetRepositorySyncStatusOperationInput < Struct.new(
      :repository_name,
      :repository_provider,
      :branch,
      :sync_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute latest_sync
    #   <p>The repository sync status detail data that's returned by Proton.</p>
    #   @return [Types::RepositorySyncAttempt]
    class GetRepositorySyncStatusOperationOutput < Struct.new(
      :latest_sync,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class GetResourcesSummaryOperationInput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute counts
    #   <p>Summary counts of each Proton resource type.</p>
    #   @return [Types::CountsSummary]
    class GetResourcesSummaryOperationOutput < Struct.new(
      :counts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of a service instance that you want to get the detailed data for.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that you want the service instance input for.</p>
    #   @return [String]
    class GetServiceInstanceOperationInput < Struct.new(
      :name,
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance
    #   <p>The detailed data of the requested service instance.</p>
    #   @return [Types::ServiceInstance]
    class GetServiceInstanceOperationOutput < Struct.new(
      :service_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want the sync status input for.</p>
    #   @return [String]
    class GetServiceInstanceSyncStatusOperationInput < Struct.new(
      :service_name,
      :service_instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute latest_sync
    #   <p>The detailed data of the latest sync with the service instance.</p>
    #   @return [Types::ResourceSyncAttempt]
    # @!attribute latest_successful_sync
    #   <p>The detailed data of the latest successful sync with the service instance.</p>
    #   @return [Types::ResourceSyncAttempt]
    # @!attribute desired_state
    #   <p>The service instance sync desired state that's returned by Proton</p>
    #   @return [Types::Revision]
    class GetServiceInstanceSyncStatusOperationOutput < Struct.new(
      :latest_sync,
      :latest_successful_sync,
      :desired_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service that you want to get the detailed data for.</p>
    #   @return [String]
    class GetServiceOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The detailed data of the requested service.</p>
    #   @return [Types::Service]
    class GetServiceOperationOutput < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that you want to get the service sync blocker summary for. If
    #         given only the service name, all instances are blocked.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to get the service sync blocker summary
    #         for. If given bothe the instance name and the service name, only the instance is
    #         blocked.</p>
    #   @return [String]
    class GetServiceSyncBlockerSummaryOperationInput < Struct.new(
      :service_name,
      :service_instance_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_sync_blocker_summary
    #   <p>The detailed data of the requested service sync blocker summary.</p>
    #   @return [Types::ServiceSyncBlockerSummary]
    class GetServiceSyncBlockerSummaryOperationOutput < Struct.new(
      :service_sync_blocker_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that you want to get the service sync configuration for.</p>
    #   @return [String]
    class GetServiceSyncConfigOperationInput < Struct.new(
      :service_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_sync_config
    #   <p>The detailed data of the requested service sync configuration.</p>
    #   @return [Types::ServiceSyncConfig]
    class GetServiceSyncConfigOperationOutput < Struct.new(
      :service_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service template that you want to get detailed data for.</p>
    #   @return [String]
    class GetServiceTemplateOperationInput < Struct.new(
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template
    #   <p>The detailed data of the requested service template.</p>
    #   @return [Types::ServiceTemplate]
    class GetServiceTemplateOperationOutput < Struct.new(
      :service_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template a version of which you want to get detailed data
    #         for.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To get service template major version detail data, include <code>major
    #         Version</code>.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>To get service template minor version detail data, include
    #         <code>minorVersion</code>.</p>
    #   @return [String]
    class GetServiceTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template_version
    #   <p>The detailed data of the requested service template version.</p>
    #   @return [Types::ServiceTemplateVersion]
    class GetServiceTemplateVersionOperationOutput < Struct.new(
      :service_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The template type.</p>
    #   @return [String]
    class GetTemplateSyncConfigOperationInput < Struct.new(
      :template_name,
      :template_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #   @return [Types::TemplateSyncConfig]
    class GetTemplateSyncConfigOperationOutput < Struct.new(
      :template_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The template type.</p>
    #   @return [String]
    # @!attribute template_version
    #   <p>The template major version.</p>
    #   @return [String]
    class GetTemplateSyncStatusOperationInput < Struct.new(
      :template_name,
      :template_type,
      :template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute latest_sync
    #   <p>The details of the last sync that's returned by Proton.</p>
    #   @return [Types::ResourceSyncAttempt]
    # @!attribute latest_successful_sync
    #   <p>The details of the last successful sync that's returned by Proton.</p>
    #   @return [Types::ResourceSyncAttempt]
    # @!attribute desired_state
    #   <p>The template sync desired state that's returned by Proton.</p>
    #   @return [Types::Revision]
    class GetTemplateSyncStatusOperationOutput < Struct.new(
      :latest_sync,
      :latest_successful_sync,
      :desired_state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed to register with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component whose outputs you want.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    #   @return [String]
    class ListComponentOutputsOperationInput < Struct.new(
      :component_name,
      :next_token,
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of component Infrastructure as Code (IaC) outputs.</p>
    #   @return [Array<Types::Output>]
    class ListComponentOutputsOperationOutput < Struct.new(
      :next_token,
      :outputs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component whose provisioned resources you want.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #   @return [String]
    class ListComponentProvisionedResourcesOperationInput < Struct.new(
      :component_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
    #         provisioned resources.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a component.</p>
    #   @return [Array<Types::ProvisionedResource>]
    class ListComponentProvisionedResourcesOperationOutput < Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the list of components that was previously
    #         requested.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of an environment for result list filtering. Proton returns components associated with the environment or attached to service instances
    #         running in it.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of a service for result list filtering. Proton returns components attached to service instances of the service.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the component attached to the service instance, if any.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of components to list.</p>
    #   @return [Integer]
    class ListComponentsOperationInput < Struct.new(
      :next_token,
      :environment_name,
      :service_name,
      :service_instance_name,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the current requested list of components.</p>
    #   @return [String]
    # @!attribute components
    #   <p>An array of components with summary data.</p>
    #   @return [Array<Types::ComponentSummary>]
    class ListComponentsOperationOutput < Struct.new(
      :next_token,
      :components,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next deployment in the array of deployment, after the list of deployment that was previously
    #      requested.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of an environment for result list filtering. Proton returns deployments associated with the environment.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of a service for result list filtering. Proton returns deployments associated with service instances of the service.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the deployments associated with the service instance.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of a component for result list filtering. Proton returns deployments associated with that component.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of deployments to list.</p>
    #   @return [Integer]
    class ListDeploymentsInput < Struct.new(
      :next_token,
      :environment_name,
      :service_name,
      :service_instance_name,
      :component_name,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next deployment in the array of deployment, after the current requested list of deployment.</p>
    #   @return [String]
    # @!attribute deployments
    #   <p>An array of deployment with summary data.</p>
    #   @return [Array<Types::DeploymentSummary>]
    class ListDeploymentsOutput < Struct.new(
      :next_token,
      :deployments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute requested_by
    #   <p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The environment name that's associated with each listed environment account connection.</p>
    #   @return [String]
    # @!attribute statuses
    #   <p>The status details for each listed environment account connection.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the list of
    #         environment account connections that was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environment account connections to list.</p>
    #   @return [Integer]
    class ListEnvironmentAccountConnectionsOperationInput < Struct.new(
      :requested_by,
      :environment_name,
      :statuses,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connections
    #   <p>An array of environment account connections with details that's returned by Proton. </p>
    #   @return [Array<Types::EnvironmentAccountConnectionSummary>]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the current
    #         requested list of environment account connections.</p>
    #   @return [String]
    class ListEnvironmentAccountConnectionsOperationOutput < Struct.new(
      :environment_account_connections,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_name
    #   <p>The environment name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the list of environment outputs that was
    #         previously requested.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    #   @return [String]
    class ListEnvironmentOutputsOperationInput < Struct.new(
      :environment_name,
      :next_token,
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the current requested list of
    #         environment outputs.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of environment outputs with detail data.</p>
    #   @return [Array<Types::Output>]
    class ListEnvironmentOutputsOperationOutput < Struct.new(
      :next_token,
      :outputs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_name
    #   <p>The environment name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of environment provisioned resources, after the list of
    #         environment provisioned resources that was previously requested.</p>
    #   @return [String]
    class ListEnvironmentProvisionedResourcesOperationInput < Struct.new(
      :environment_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of provisioned resources, after the current requested
    #         list of environment provisioned resources.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>An array of environment provisioned resources.</p>
    #   @return [Array<Types::ProvisionedResource>]
    class ListEnvironmentProvisionedResourcesOperationOutput < Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of major or minor versions of an environment template to list.</p>
    #   @return [Integer]
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of an environment template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #   @return [String]
    class ListEnvironmentTemplateVersionsOperationInput < Struct.new(
      :next_token,
      :max_results,
      :template_name,
      :major_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    #   @return [String]
    # @!attribute template_versions
    #   <p>An array of major or minor versions of an environment template detail data.</p>
    #   @return [Array<Types::EnvironmentTemplateVersionSummary>]
    class ListEnvironmentTemplateVersionsOperationOutput < Struct.new(
      :next_token,
      :template_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the list of environment templates
    #         that was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environment templates to list.</p>
    #   @return [Integer]
    class ListEnvironmentTemplatesOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the current requested list of
    #         environment templates.</p>
    #   @return [String]
    # @!attribute templates
    #   <p>An array of environment templates with detail data.</p>
    #   @return [Array<Types::EnvironmentTemplateSummary>]
    class ListEnvironmentTemplatesOperationOutput < Struct.new(
      :next_token,
      :templates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the list of environments that was previously
    #         requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of environments to list.</p>
    #   @return [Integer]
    # @!attribute environment_templates
    #   <p>An array of the versions of the environment template.</p>
    #   @return [Array<Types::EnvironmentTemplateFilter>]
    class ListEnvironmentsOperationInput < Struct.new(
      :next_token,
      :max_results,
      :environment_templates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the current requested list of environments.</p>
    #   @return [String]
    # @!attribute environments
    #   <p>An array of environment detail data summaries.</p>
    #   @return [Array<Types::EnvironmentSummary>]
    class ListEnvironmentsOperationOutput < Struct.new(
      :next_token,
      :environments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the list of repositories previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of repositories to list.</p>
    #   @return [Integer]
    class ListRepositoriesOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the current requested list of repositories. </p>
    #   @return [String]
    # @!attribute repositories
    #   <p>An array of repository links.</p>
    #   @return [Array<Types::RepositorySummary>]
    class ListRepositoriesOperationOutput < Struct.new(
      :next_token,
      :repositories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute sync_type
    #   <p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the list of repository
    #         sync definitions previously requested.</p>
    #   @return [String]
    class ListRepositorySyncDefinitionsOperationInput < Struct.new(
      :repository_name,
      :repository_provider,
      :sync_type,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the current requested
    #         list of repository sync definitions.</p>
    #   @return [String]
    # @!attribute sync_definitions
    #   <p>An array of repository sync definitions.</p>
    #   @return [Array<Types::RepositorySyncDefinition>]
    class ListRepositorySyncDefinitionsOperationOutput < Struct.new(
      :next_token,
      :sync_definitions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance_name
    #   <p>The name of the service instance whose outputs you want.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         list of outputs that was previously requested.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment whose outputs you want.</p>
    #   @return [String]
    class ListServiceInstanceOutputsOperationInput < Struct.new(
      :service_instance_name,
      :service_name,
      :next_token,
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         current requested list of outputs.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of service instance Infrastructure as Code (IaC) outputs.</p>
    #   @return [Array<Types::Output>]
    class ListServiceInstanceOutputsOperationOutput < Struct.new(
      :next_token,
      :outputs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance whose provisioned resources you want.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the list of provisioned resources that was previously
    #         requested.</p>
    #   @return [String]
    class ListServiceInstanceProvisionedResourcesOperationInput < Struct.new(
      :service_name,
      :service_instance_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the current requested list of provisioned resources.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a service instance.</p>
    #   @return [Array<Types::ProvisionedResource>]
    class ListServiceInstanceProvisionedResourcesOperationOutput < Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A filtering criterion to scope down the result list of the <a>ListServiceInstances</a> action.</p>
    # @!attribute key
    #   <p>The name of a filtering criterion.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value to filter by.</p>
    #            <p>With the date/time keys (<code>*At{Before,After}</code>), the value is a valid <a href="https://datatracker.ietf.org/doc/html/rfc3339.html">RFC 3339</a> string with no UTC
    #         offset and with an optional fractional precision (for example,
    #           <code>1985-04-12T23:20:50.52Z</code>).</p>
    #   @return [String]
    class ListServiceInstancesFilter < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of service instances,
    #         after the list of service instances that was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of service instances to list.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>An array of filtering criteria that scope down the result list. By default, all service
    #         instances in the Amazon Web Services account are returned.</p>
    #   @return [Array<Types::ListServiceInstancesFilter>]
    # @!attribute sort_by
    #   <p>The field that the result list is sorted by.</p>
    #            <p>When you choose to sort by <code>serviceName</code>, service instances within each service
    #         are sorted by service instance name.</p>
    #            <p>Default: <code>serviceName</code>
    #            </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Result list sort order.</p>
    #            <p>Default: <code>ASCENDING</code>
    #            </p>
    #   @return [String]
    class ListServiceInstancesOperationInput < Struct.new(
      :service_name,
      :next_token,
      :max_results,
      :filters,
      :sort_by,
      :sort_order,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service instance in the array of service
    #         instances, after the current requested list of service instances.</p>
    #   @return [String]
    # @!attribute service_instances
    #   <p>An array of service instances with summary data.</p>
    #   @return [Array<Types::ServiceInstanceSummary>]
    class ListServiceInstancesOperationOutput < Struct.new(
      :next_token,
      :service_instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service whose pipeline's outputs you want.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         list of outputs that was previously requested.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment you want the outputs for.</p>
    #   @return [String]
    class ListServicePipelineOutputsOperationInput < Struct.new(
      :service_name,
      :next_token,
      :deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the
    #         current requested list of outputs.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>An array of service pipeline Infrastructure as Code (IaC) outputs.</p>
    #   @return [Array<Types::Output>]
    class ListServicePipelineOutputsOperationOutput < Struct.new(
      :next_token,
      :outputs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service whose pipeline's provisioned resources you want.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the list of provisioned resources that was previously
    #         requested.</p>
    #   @return [String]
    class ListServicePipelineProvisionedResourcesOperationInput < Struct.new(
      :service_name,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of
    #         provisioned resources, after the current requested list of provisioned resources.</p>
    #   @return [String]
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a service and pipeline.</p>
    #   @return [Array<Types::ProvisionedResource>]
    class ListServicePipelineProvisionedResourcesOperationOutput < Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of
    #         major or minor versions of a service template, after the list of major or minor versions that
    #         was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of major or minor versions of a service template to list.</p>
    #   @return [Integer]
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To view a list of minor of versions under a major version of a service template, include
    #           <code>major Version</code>.</p>
    #            <p>To view a list of major versions of a service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #   @return [String]
    class ListServiceTemplateVersionsOperationInput < Struct.new(
      :next_token,
      :max_results,
      :template_name,
      :major_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of
    #         major or minor versions of a service template, after the current requested list of service
    #         major or minor versions.</p>
    #   @return [String]
    # @!attribute template_versions
    #   <p>An array of major or minor versions of a service template with detail data.</p>
    #   @return [Array<Types::ServiceTemplateVersionSummary>]
    class ListServiceTemplateVersionsOperationOutput < Struct.new(
      :next_token,
      :template_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service template in the array of service
    #         templates, after the list of service templates previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of service templates to list.</p>
    #   @return [Integer]
    class ListServiceTemplatesOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service template in the array of service
    #         templates, after the current requested list of service templates.</p>
    #   @return [String]
    # @!attribute templates
    #   <p>An array of service templates with detail data.</p>
    #   @return [Array<Types::ServiceTemplateSummary>]
    class ListServiceTemplatesOperationOutput < Struct.new(
      :next_token,
      :templates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of services, after
    #         the list of services that was previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of services to list.</p>
    #   @return [Integer]
    class ListServicesOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of services, after
    #         the current requested list of services.</p>
    #   @return [String]
    # @!attribute services
    #   <p>An array of services with summaries of detail data.</p>
    #   @return [Array<Types::ServiceSummary>]
    class ListServicesOperationOutput < Struct.new(
      :next_token,
      :services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the list of resource tags that was
    #      previously requested.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tags to list.</p>
    #   @return [Integer]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of resource tags with detail data.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the current requested list of resource
    #      tags.</p>
    #   @return [String]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The provisioned resource Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of your provisioned resource.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The provisioned resource state change detail data that's returned by Proton.</p>
    #   @return [Array<Types::Output>]
    # @!attribute deployment_id
    #   <p>The deployment ID for your provisioned resource.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The deployment status message for your provisioned resource.</p>
    #   @return [String]
    class NotifyResourceDeploymentStatusChangeOperationInput < Struct.new(
      :resource_arn,
      :status,
      :outputs,
      :deployment_id,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class NotifyResourceDeploymentStatusChangeOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An infrastructure as code defined resource output.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key
    #   <p>The output key.</p>
    #   @return [String]
    # @!attribute value_string
    #   <p>The output value.</p>
    #   @return [String]
    class Output < Struct.new(
      :key,
      :value_string,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail data for a provisioned resource.</p>
    # @!attribute name
    #   <p>The provisioned resource name.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The provisioned resource identifier.</p>
    #   @return [String]
    # @!attribute provisioning_engine
    #   <p>The resource provisioning engine. At this time, <code>CLOUDFORMATION</code> can be used for Amazon Web Services-managed provisioning, and <code>TERRAFORM</code> can
    #         be used for self-managed provisioning.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-works-prov-methods.html#ag-works-prov-methods-self">Self-managed provisioning</a> in the <i>Proton User Guide</i>.</p>
    #   @return [String]
    class ProvisionedResource < Struct.new(
      :name,
      :identifier,
      :provisioning_engine,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to reject.</p>
    #   @return [String]
    class RejectEnvironmentAccountConnectionOperationInput < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment connection account detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class RejectEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of a linked repository—a repository that has been registered with Proton.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the linked repository.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of your AWS CodeStar connection that connects Proton to your repository provider account.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>Your customer Amazon Web Services KMS encryption key.</p>
    #   @return [String]
    class Repository < Struct.new(
      :arn,
      :provider,
      :name,
      :connection_arn,
      :encryption_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail data for a linked repository branch.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the linked repository.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    class RepositoryBranch < Struct.new(
      :arn,
      :provider,
      :name,
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail input data for a linked repository branch.</p>
    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    class RepositoryBranchInput < Struct.new(
      :provider,
      :name,
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of a linked repository—a repository that has been registered with Proton.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the linked repository.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of the of your connection that connects Proton to your repository.</p>
    #   @return [String]
    class RepositorySummary < Struct.new(
      :arn,
      :provider,
      :name,
      :connection_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail data for a repository sync attempt activated by a push to a repository.</p>
    # @!attribute started_at
    #   <p>The time when the sync attempt started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The sync attempt status.</p>
    #   @return [String]
    # @!attribute events
    #   <p>Detail data for sync attempt events.</p>
    #   @return [Array<Types::RepositorySyncEvent>]
    class RepositorySyncAttempt < Struct.new(
      :started_at,
      :status,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A repository sync definition.</p>
    # @!attribute target
    #   <p>The resource that is synced to.</p>
    #   @return [String]
    # @!attribute parent
    #   <p>The resource that is synced from.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    # @!attribute directory
    #   <p>The directory in the repository.</p>
    #   @return [String]
    class RepositorySyncDefinition < Struct.new(
      :target,
      :parent,
      :branch,
      :directory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Repository sync event detail data for a sync attempt.</p>
    # @!attribute type
    #   <p>The type of event.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID of the sync event.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The time that the sync event occurred.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>Event detail for a repository sync attempt.</p>
    #   @return [String]
    class RepositorySyncEvent < Struct.new(
      :type,
      :external_id,
      :time,
      :event,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary counts of each Proton resource types.</p>
    # @!attribute total
    #   <p>The total number of resources of this type in the Amazon Web Services account.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The number of resources of this type in the Amazon Web Services account that failed to deploy.</p>
    #   @return [Integer]
    # @!attribute up_to_date
    #   <p>The number of resources of this type in the Amazon Web Services account that are up-to-date with their template.</p>
    #   @return [Integer]
    # @!attribute behind_major
    #   <p>The number of resources of this type in the Amazon Web Services account that need a major template version update.</p>
    #   @return [Integer]
    # @!attribute behind_minor
    #   <p>The number of resources of this type in the Amazon Web Services account that need a minor template version update.</p>
    #   @return [Integer]
    class ResourceCountsSummary < Struct.new(
      :total,
      :failed,
      :up_to_date,
      :behind_major,
      :behind_minor,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource <i>wasn't</i> found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail data for a resource sync attempt activated by a push to a repository.</p>
    # @!attribute initial_revision
    #   <p>Detail data for the initial repository commit, path and push.</p>
    #   @return [Types::Revision]
    # @!attribute target_revision
    #   <p>Detail data for the target revision.</p>
    #   @return [Types::Revision]
    # @!attribute target
    #   <p>The resource that is synced to.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The time when the sync attempt started.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the sync attempt.</p>
    #   @return [String]
    # @!attribute events
    #   <p>An array of events with detail data.</p>
    #   @return [Array<Types::ResourceSyncEvent>]
    class ResourceSyncAttempt < Struct.new(
      :initial_revision,
      :target_revision,
      :target,
      :started_at,
      :status,
      :events,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detail data for a resource sync event.</p>
    # @!attribute type
    #   <p>The type of event.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID for the event.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The time when the event occurred.</p>
    #   @return [Time]
    # @!attribute event
    #   <p>A resource sync event.</p>
    #   @return [String]
    class ResourceSyncEvent < Struct.new(
      :type,
      :external_id,
      :time,
      :event,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Revision detail data for a commit and push that activates a sync attempt</p>
    # @!attribute repository_name
    #   <p>The repository name.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute sha
    #   <p>The secure hash algorithm (SHA) hash for the revision.</p>
    #   @return [String]
    # @!attribute directory
    #   <p>The repository directory changed by a commit and push that activated the sync attempt.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    class Revision < Struct.new(
      :repository_name,
      :repository_provider,
      :sha,
      :directory,
      :branch,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Template bundle S3 bucket data.</p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket that contains a template bundle.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The path to the S3 bucket that contains a template bundle.</p>
    #   @return [String]
    class S3ObjectSource < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton service resource.</p>
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the service was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the service.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A service status message.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The formatted specification that defines the service.</p>
    #   @return [String]
    # @!attribute pipeline
    #   <p>The service pipeline detail data.</p>
    #   @return [Types::ServicePipeline]
    # @!attribute repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see
    #           <a href="https://docs.aws.amazon.com/proton/latest/userguide/setting-up-for-service.html#setting-up-vcontrol">Setting up an
    #           AWS CodeStar connection</a> in the <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute repository_id
    #   <p>The ID of the source code repository.</p>
    #   @return [String]
    # @!attribute branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in
    #         Proton.</p>
    #   @return [String]
    class Service < Struct.new(
      :name,
      :description,
      :arn,
      :template_name,
      :created_at,
      :last_modified_at,
      :status,
      :status_message,
      :spec,
      :pipeline,
      :repository_connection_arn,
      :repository_id,
      :branch_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton service instance resource.</p>
    # @!attribute name
    #   <p>The name of the service instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service instance was created.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service instance was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service instance was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment that the service instance was deployed into.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service instance.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service
    #         instance.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service
    #         instance.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The service instance deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>The message associated with the service instance deployment status.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The service spec that was used to create the service instance.</p>
    #   @return [String]
    # @!attribute last_client_request_token
    #   <p>The last client request token received.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this service instance.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this service instance.</p>
    #   @return [String]
    class ServiceInstance < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :service_name,
      :environment_name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :spec,
      :last_client_request_token,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed data about the current state of this service instance.</p>
    # @!attribute spec
    #   <p>The service spec that was used to create the service instance.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service instance.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    # @!attribute last_successful_component_deployment_ids
    #   <p>The IDs for the last successful components deployed for this service instance.</p>
    #   @return [Array<String>]
    # @!attribute last_successful_environment_deployment_id
    #   <p>The ID for the last successful environment deployed for this service instance.</p>
    #   @return [String]
    # @!attribute last_successful_service_pipeline_deployment_id
    #   <p>The ID for the last successful service pipeline deployed for this service instance.</p>
    #   @return [String]
    class ServiceInstanceState < Struct.new(
      :spec,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :last_successful_component_deployment_ids,
      :last_successful_environment_deployment_id,
      :last_successful_service_pipeline_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton service instance resource.</p>
    # @!attribute name
    #   <p>The name of the service instance.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service instance.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service instance was created.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #   @return [String]
    # @!attribute environment_name
    #   <p>The name of the environment that the service instance was deployed into.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The service instance template major version.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The service instance template minor version.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The service instance deployment status.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>A service instance deployment status message.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this service instance.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this service instance.</p>
    #   @return [String]
    class ServiceInstanceSummary < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :service_name,
      :environment_name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton service instance pipeline resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service pipeline.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service pipeline was created.</p>
    #   @return [Time]
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service pipeline was last attempted.</p>
    #   @return [Time]
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service pipeline was last deployed successfully.</p>
    #   @return [Time]
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service pipeline.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The deployment status of the service pipeline.</p>
    #   @return [String]
    # @!attribute deployment_status_message
    #   <p>A service pipeline deployment status message.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The service spec that was used to create the service pipeline.</p>
    #   @return [String]
    # @!attribute last_attempted_deployment_id
    #   <p>The ID of the last attempted deployment of this service pipeline.</p>
    #   @return [String]
    # @!attribute last_succeeded_deployment_id
    #   <p>The ID of the last successful deployment of this service pipeline.</p>
    #   @return [String]
    class ServicePipeline < Struct.new(
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :spec,
      :last_attempted_deployment_id,
      :last_succeeded_deployment_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detailed data about the current state of the service pipeline.</p>
    # @!attribute spec
    #   <p>The service spec that was used to create the service pipeline.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service pipeline.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service
    #         pipeline.</p>
    #   @return [String]
    class ServicePipelineState < Struct.new(
      :spec,
      :template_name,
      :template_major_version,
      :template_minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A quota was exceeded. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-limits.html">Proton Quotas</a> in
    #       the <i>Proton User Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton service resource.</p>
    # @!attribute name
    #   <p>The name of the service.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the service was last modified.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the service.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A service status message.</p>
    #   @return [String]
    class ServiceSummary < Struct.new(
      :name,
      :description,
      :arn,
      :template_name,
      :created_at,
      :last_modified_at,
      :status,
      :status_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>If a service instance is manually updated, Proton wants to prevent accidentally overriding
    #       a manual change.</p>
    #          <p>A blocker is created because of the manual update or deletion of a service instance. The
    #       summary describes the blocker as being active or resolved.</p>
    # @!attribute service_name
    #   <p>The name of the service that you want to get the sync blocker summary for. If given a
    #         service instance name and a service name, it will return the blockers only applying to the
    #         instance that is blocked.</p>
    #            <p>If given only a service name, it will return the blockers that apply to all of the
    #         instances. In order to get the blockers for a single instance, you will need to make two
    #         distinct calls, one to get the sync blocker summary for the service and the other to get the
    #         sync blocker for the service instance.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want sync your service configuration
    #         with.</p>
    #   @return [String]
    # @!attribute latest_blockers
    #   <p>The latest active blockers for the synced service.</p>
    #   @return [Array<Types::SyncBlocker>]
    class ServiceSyncBlockerSummary < Struct.new(
      :service_name,
      :service_instance_name,
      :latest_blockers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of the service sync configuration.</p>
    # @!attribute service_name
    #   <p>The name of the service that the service instance is added to.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The name of the repository provider that holds the repository Proton will sync
    #         with.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the code repository that holds the service code Proton will sync
    #         with.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The name of the code repository branch that holds the service code Proton will sync
    #         with.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The file path to the service sync configuration file.</p>
    #   @return [String]
    class ServiceSyncConfig < Struct.new(
      :service_name,
      :repository_provider,
      :repository_name,
      :branch,
      :file_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton service template resource.</p>
    # @!attribute name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the service template was last modified.</p>
    #   @return [Time]
    # @!attribute display_name
    #   <p>The service template name as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service template.</p>
    #   @return [String]
    # @!attribute recommended_version
    #   <p>The recommended version of the service template.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The customer provided service template encryption key that's used to encrypt data.</p>
    #   @return [String]
    # @!attribute pipeline_provisioning
    #   <p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included
    #         in the service template. Otherwise, a service pipeline <i>isn't</i> included in
    #         the service template.</p>
    #   @return [String]
    class ServiceTemplate < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :encryption_key,
      :pipeline_provisioning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton service template resource.</p>
    # @!attribute name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the service template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the service template was last modified.</p>
    #   @return [Time]
    # @!attribute display_name
    #   <p>The service template name as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service template.</p>
    #   @return [String]
    # @!attribute recommended_version
    #   <p>The recommended version of the service template.</p>
    #   @return [String]
    # @!attribute pipeline_provisioning
    #   <p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included
    #         in the service template, otherwise a service pipeline <i>isn't</i> included in
    #         the service template.</p>
    #   @return [String]
    class ServiceTemplateSummary < Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :pipeline_provisioning,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of an Proton service template version resource.</p>
    # @!attribute template_name
    #   <p>The name of the version of a service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of a service template.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The minor version of a service template.</p>
    #   @return [String]
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the service template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The service template version status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A service template version status message.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the version of a service template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of a service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the version of a service template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the version of a service template was last modified.</p>
    #   @return [Time]
    # @!attribute compatible_environment_templates
    #   <p>An array of compatible environment template names for the major version of a service
    #         template.</p>
    #   @return [Array<Types::CompatibleEnvironmentTemplate>]
    # @!attribute schema
    #   <p>The schema of the version of a service template.</p>
    #   @return [String]
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached
    #         to service instances based on this service template version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [Array<String>]
    class ServiceTemplateVersion < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      :compatible_environment_templates,
      :schema,
      :supported_component_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary data of an Proton service template version resource.</p>
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of a service template.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>The minor version of a service template.</p>
    #   @return [String]
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the service template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The service template minor version status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>A service template minor version status message.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the version of a service template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of a service template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the version of a service template was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>The time when the version of a service template was last modified.</p>
    #   @return [Time]
    class ServiceTemplateVersionSummary < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of the sync blocker.</p>
    # @!attribute id
    #   <p>The ID of the sync blocker.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the sync blocker.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the sync blocker.</p>
    #   @return [String]
    # @!attribute created_reason
    #   <p>The reason why the sync blocker was created.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the sync blocker was created.</p>
    #   @return [Time]
    # @!attribute contexts
    #   <p>The contexts for the sync blocker.</p>
    #   @return [Array<Types::SyncBlockerContext>]
    # @!attribute resolved_reason
    #   <p>The reason the sync blocker was resolved.</p>
    #   @return [String]
    # @!attribute resolved_at
    #   <p>The time the sync blocker was resolved.</p>
    #   @return [Time]
    class SyncBlocker < Struct.new(
      :id,
      :type,
      :status,
      :created_reason,
      :created_at,
      :contexts,
      :resolved_reason,
      :resolved_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed data of the context of the sync blocker.</p>
    # @!attribute key
    #   <p>The key for the sync blocker context.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the sync blocker context.</p>
    #   @return [String]
    class SyncBlockerContext < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A description of a resource tag.</p>
    # @!attribute key
    #   <p>The key of the resource tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the resource tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton resource to apply customer tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of customer tags to apply to the Proton resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The detail data for a template sync configuration.</p>
    # @!attribute template_name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The template type.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch.</p>
    #   @return [String]
    # @!attribute subdirectory
    #   <p>A subdirectory path to your template bundle version.</p>
    #   @return [String]
    class TemplateSyncConfig < Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Template version source data.</p>
    # @!attribute s3
    #   <p>An S3 source object that includes the template bundle S3 path and name for a template minor version.</p>
    #   @return [Types::S3ObjectSource]
    class TemplateVersionSourceInput < Struct.new(
      :s3,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class S3 < TemplateVersionSourceInput; end
      class Unknown < TemplateVersionSourceInput; end
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove customer tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of customer tag keys that indicate the customer tags to be removed from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed
    #      provisioning, and by customer-owned automation for self-managed provisioning.</p>
    #            <p>To remove a previously configured ARN, specify an empty string.</p>
    #   @return [String]
    # @!attribute pipeline_provisioning_repository
    #   <p>A linked repository for pipeline provisioning. Specify it if you have environments configured for self-managed provisioning with services that
    #      include pipelines. A linked repository is a repository that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #            <p>To remove a previously configured repository, set <code>deletePipelineProvisioningRepository</code> to <code>true</code>, and don't set
    #       <code>pipelineProvisioningRepository</code>.</p>
    #   @return [Types::RepositoryBranchInput]
    # @!attribute delete_pipeline_provisioning_repository
    #   <p>Set to <code>true</code> to remove a configured pipeline repository from the account settings. Don't set this field if you are updating the
    #      configured pipeline repository.</p>
    #   @return [Boolean]
    # @!attribute pipeline_codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Proton assumes this role for CodeBuild-based
    #      provisioning.</p>
    #   @return [String]
    class UpdateAccountSettingsOperationInput < Struct.new(
      :pipeline_service_role_arn,
      :pipeline_provisioning_repository,
      :delete_pipeline_provisioning_repository,
      :pipeline_codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_settings
    #   <p>The Proton pipeline service role and repository data shared across the Amazon Web Services account.</p>
    #   @return [Types::AccountSettings]
    class UpdateAccountSettingsOperationOutput < Struct.new(
      :account_settings,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the component to update.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type. It defines the mode for updating a component, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated. You can only specify
    #                 <code>description</code> in this mode.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the component is deployed and updated with the new <code>serviceSpec</code>, <code>templateSource</code>, and/or <code>type</code>
    #               that you provide. Only requested parameters are updated.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute description
    #   <p>An optional customer-provided description of the component.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Don't specify to keep the component's current service instance
    #         attachment. Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. Don't specify to keep the component's current service instance attachment.
    #         Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #   @return [String]
    # @!attribute service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when the component is attached to a service
    #         instance.</p>
    #   @return [String]
    # @!attribute template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token for the updated component.</p>
    #   @return [String]
    class UpdateComponentOperationInput < Struct.new(
      :name,
      :deployment_type,
      :description,
      :service_name,
      :service_instance_name,
      :service_spec,
      :template_file,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the updated component.</p>
    #   @return [Types::Component]
    class UpdateComponentOperationOutput < Struct.new(
      :component,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to update.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's associated with the environment account connection to update.</p>
    #   @return [String]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM service role in the environment account. Proton uses this role to provision infrastructure resources
    #         using CodeBuild-based provisioning in the associated environment account.</p>
    #   @return [String]
    class UpdateEnvironmentAccountConnectionOperationInput < Struct.new(
      :id,
      :role_arn,
      :component_role_arn,
      :codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentAccountConnection]
    class UpdateEnvironmentAccountConnectionOperationOutput < Struct.new(
      :environment_account_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment update.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The formatted specification that defines the update.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the environment to update.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the environment to update.</p>
    #   @return [String]
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #               use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #               by default. You can also specify a different major version that is higher than the major version in use and a minor version (optional).</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection.</p>
    #            <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment account
    #         connection was created in and is associated with the current environment.</p>
    #   @return [String]
    # @!attribute provisioning_repository
    #   <p>The linked repository that you use to host your rendered infrastructure templates for self-managed provisioning. A linked repository is a repository
    #         that has been registered with Proton. For more information, see <a>CreateRepository</a>.</p>
    #   @return [Types::RepositoryBranchInput]
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [String]
    # @!attribute codebuild_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that allows Proton to provision infrastructure using CodeBuild-based provisioning on your
    #         behalf.</p>
    #   @return [String]
    class UpdateEnvironmentOperationInput < Struct.new(
      :name,
      :description,
      :spec,
      :template_major_version,
      :template_minor_version,
      :proton_service_role_arn,
      :deployment_type,
      :environment_account_connection_id,
      :provisioning_repository,
      :component_role_arn,
      :codebuild_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The environment detail data that's returned by Proton.</p>
    #   @return [Types::Environment]
    class UpdateEnvironmentOperationOutput < Struct.new(
      :environment,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template to update.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the environment template to update as displayed in the developer interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the environment template update.</p>
    #   @return [String]
    class UpdateEnvironmentTemplateOperationInput < Struct.new(
      :name,
      :display_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template
    #   <p>The environment template detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentTemplate]
    class UpdateEnvironmentTemplateOperationOutput < Struct.new(
      :environment_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To update a major version of an environment template, include <code>major Version</code>.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of environment template version to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the environment template minor version to update.</p>
    #   @return [String]
    class UpdateEnvironmentTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :description,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_template_version
    #   <p>The environment template version detail data that's returned by Proton.</p>
    #   @return [Types::EnvironmentTemplateVersion]
    class UpdateEnvironmentTemplateVersionOperationOutput < Struct.new(
      :environment_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service instance to update.</p>
    #   @return [String]
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type. It defines the mode for updating a service instance, as
    #         follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested
    #               metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the new spec that
    #               you provide. Only requested parameters are updated. <i>Don’t</i> include
    #               major or minor version parameters when you use this deployment type.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published,
    #               recommended (latest) minor version of the current major version in use, by default. You
    #               can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published,
    #               recommended (latest) major and minor version of the current template, by default. You
    #               can specify a different major version that's higher than the major version in use and a
    #               minor version.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute spec
    #   <p>The formatted specification that defines the service instance update.</p>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template to update.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token of the service instance to update.</p>
    #   @return [String]
    class UpdateServiceInstanceOperationInput < Struct.new(
      :name,
      :service_name,
      :deployment_type,
      :spec,
      :template_major_version,
      :template_minor_version,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_instance
    #   <p>The service instance summary data that's returned by Proton.</p>
    #   @return [Types::ServiceInstance]
    class UpdateServiceInstanceOperationOutput < Struct.new(
      :service_instance,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service to edit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The edited service description.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>Lists the service instances to add and the existing service instances to remain. Omit the
    #         existing service instances to delete from the list. <i>Don't</i> include edits
    #         to the existing service instances or pipeline. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-svc-update.html">Edit a service</a>
    #         in the <i>Proton User Guide</i>.</p>
    #   @return [String]
    class UpdateServiceOperationInput < Struct.new(
      :name,
      :description,
      :spec,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service
    #   <p>The service detail data that's returned by Proton.</p>
    #   @return [Types::Service]
    class UpdateServiceOperationOutput < Struct.new(
      :service,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service to that the pipeline is associated with.</p>
    #   @return [String]
    # @!attribute spec
    #   <p>The spec for the service pipeline to update.</p>
    #   @return [String]
    # @!attribute deployment_type
    #   <p>The deployment type.</p>
    #            <p>There are four modes for updating a service pipeline. The <code>deploymentType</code>
    #         field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested
    #               metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the new spec that
    #               you provide. Only requested parameters are updated. <i>Don’t</i> include
    #               major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published,
    #               recommended (latest) minor version of the current major version in use, by default. You
    #               can specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published,
    #               recommended (latest) major and minor version of the current template, by default. You
    #               can specify a different major version that's higher than the major version in use and a
    #               minor version.</p>
    #               </dd>
    #            </dl>
    #   @return [String]
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service that the
    #         pipeline is associated with.</p>
    #   @return [String]
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service that the
    #         pipeline is associated with.</p>
    #   @return [String]
    class UpdateServicePipelineOperationInput < Struct.new(
      :service_name,
      :spec,
      :deployment_type,
      :template_major_version,
      :template_minor_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>The pipeline details that are returned by Proton.</p>
    #   @return [Types::ServicePipeline]
    class UpdateServicePipelineOperationOutput < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the service sync blocker.</p>
    #   @return [String]
    # @!attribute resolved_reason
    #   <p>The reason the service sync blocker was resolved.</p>
    #   @return [String]
    class UpdateServiceSyncBlockerOperationInput < Struct.new(
      :id,
      :resolved_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that you want to update the service sync blocker for.</p>
    #   @return [String]
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to update the service sync blocker
    #         for.</p>
    #   @return [String]
    # @!attribute service_sync_blocker
    #   <p>The detailed data on the service sync blocker that was updated.</p>
    #   @return [Types::SyncBlocker]
    class UpdateServiceSyncBlockerOperationOutput < Struct.new(
      :service_name,
      :service_instance_name,
      :service_sync_blocker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service the Proton Ops file is for.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The name of the repository provider where the Proton Ops file is found.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the repository where the Proton Ops file is found.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The name of the code repository branch where the Proton Ops file is found.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The path to the Proton Ops file.</p>
    #   @return [String]
    class UpdateServiceSyncConfigOperationInput < Struct.new(
      :service_name,
      :repository_provider,
      :repository_name,
      :branch,
      :file_path,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_sync_config
    #   <p>The detailed data of the Proton Ops file.</p>
    #   @return [Types::ServiceSyncConfig]
    class UpdateServiceSyncConfigOperationOutput < Struct.new(
      :service_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the service template to update.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the service template to update that's displayed in the developer
    #         interface.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the service template update.</p>
    #   @return [String]
    class UpdateServiceTemplateOperationInput < Struct.new(
      :name,
      :display_name,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template
    #   <p>The service template detail data that's returned by Proton.</p>
    #   @return [Types::ServiceTemplate]
    class UpdateServiceTemplateOperationOutput < Struct.new(
      :service_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #   @return [String]
    # @!attribute major_version
    #   <p>To update a major version of a service template, include <code>major
    #         Version</code>.</p>
    #   @return [String]
    # @!attribute minor_version
    #   <p>To update a minor version of a service template, include <code>minorVersion</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of a service template version to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the service template minor version to update.</p>
    #   @return [String]
    # @!attribute compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with this service template
    #         version. A service instance based on this service template version can run in environments
    #         based on compatible templates.</p>
    #   @return [Array<Types::CompatibleEnvironmentTemplateInput>]
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached
    #         to service instances based on this service template version.</p>
    #            <note>
    #               <p>A change to <code>supportedComponentSources</code> doesn't impact existing component
    #           attachments to instances based on this template version. A change only affects later
    #           associations.</p>
    #            </note>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/userguide/ag-components.html">Proton components</a> in the
    #     <i>Proton User Guide</i>.</p>
    #   @return [Array<String>]
    class UpdateServiceTemplateVersionOperationInput < Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :description,
      :status,
      :compatible_environment_templates,
      :supported_component_sources,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute service_template_version
    #   <p>The service template version detail data that's returned by Proton.</p>
    #   @return [Types::ServiceTemplateVersion]
    class UpdateServiceTemplateVersionOperationOutput < Struct.new(
      :service_template_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_name
    #   <p>The synced template name.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The synced template type.</p>
    #   @return [String]
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #   @return [String]
    # @!attribute branch
    #   <p>The repository branch for your template.</p>
    #   @return [String]
    # @!attribute subdirectory
    #   <p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>
    #   @return [String]
    class UpdateTemplateSyncConfigOperationInput < Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #   @return [Types::TemplateSyncConfig]
    class UpdateTemplateSyncConfigOperationOutput < Struct.new(
      :template_sync_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The input is invalid or an out-of-range value was supplied for the input parameter.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
