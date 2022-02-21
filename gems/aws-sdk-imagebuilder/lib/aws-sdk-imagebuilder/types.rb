# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Imagebuilder
  module Types

    # In addition to your infrastruction configuration, these settings
    # provide an extra layer of control over your build instances. For
    # instances where Image Builder installs the Systems Manager agent, you
    # can choose whether to keep it for the AMI that you create. You can
    # also specify commands to run on launch for all of your build
    # instances.
    #
    # @note When making an API call, you may pass AdditionalInstanceConfiguration
    #   data as a hash:
    #
    #       {
    #         systems_manager_agent: {
    #           uninstall_after_build: false,
    #         },
    #         user_data_override: "UserDataOverride",
    #       }
    #
    # @!attribute [rw] systems_manager_agent
    #   Contains settings for the Systems Manager agent on your build
    #   instance.
    #   @return [Types::SystemsManagerAgent]
    #
    # @!attribute [rw] user_data_override
    #   Use this property to provide commands or a command script to run
    #   when you launch your build instance.
    #
    #   The userDataOverride property replaces any commands that Image
    #   Builder might have added to ensure that Systems Manager is installed
    #   on your Linux build instance. If you override the user data, make
    #   sure that you add commands to install Systems Manager, if it is not
    #   pre-installed on your base image.
    #
    #   <note markdown="1"> The user data is always base 64 encoded. For example, the following
    #   commands are encoded as
    #   `IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$`\:
    #
    #    *#!/bin/bash*
    #
    #    mkdir -p /var/bb/
    #
    #    touch /var
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AdditionalInstanceConfiguration AWS API Documentation
    #
    class AdditionalInstanceConfiguration < Struct.new(
      :systems_manager_agent,
      :user_data_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an Amazon EC2 AMI.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region of the Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The AMI ID of the Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon EC2 AMI. Minimum and maximum length
    #   are in characters.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Image state shows the image status and the reason for that status.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] account_id
    #   The account ID of the owner of the AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Ami AWS API Documentation
    #
    class Ami < Struct.new(
      :region,
      :image,
      :name,
      :description,
      :state,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Define and configure the output AMIs of the pipeline.
    #
    # @note When making an API call, you may pass AmiDistributionConfiguration
    #   data as a hash:
    #
    #       {
    #         name: "AmiNameString",
    #         description: "NonEmptyString",
    #         target_account_ids: ["AccountId"],
    #         ami_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         kms_key_id: "NonEmptyString",
    #         launch_permission: {
    #           user_ids: ["AccountId"],
    #           user_groups: ["NonEmptyString"],
    #           organization_arns: ["OrganizationArn"],
    #           organizational_unit_arns: ["OrganizationalUnitArn"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the output AMI.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the AMI distribution configuration. Minimum and
    #   maximum length are in characters.
    #   @return [String]
    #
    # @!attribute [rw] target_account_ids
    #   The ID of an account to which you want to distribute an image.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ami_tags
    #   The tags to apply to AMIs distributed to this Region.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the distributed image.
    #   @return [String]
    #
    # @!attribute [rw] launch_permission
    #   Launch permissions can be used to configure which Amazon Web
    #   Services accounts can use the AMI to launch instances.
    #   @return [Types::LaunchPermissionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AmiDistributionConfiguration AWS API Documentation
    #
    class AmiDistributionConfiguration < Struct.new(
      :name,
      :description,
      :target_account_ids,
      :ami_tags,
      :kms_key_id,
      :launch_permission)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the permitted request rate for the specific
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CallRateLimitExceededException AWS API Documentation
    #
    class CallRateLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CancelImageCreationRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageBuildVersionArn", # required
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation you want
    #   to cancel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [Ensuring idempotency][1]
    #   in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreationRequest AWS API Documentation
    #
    class CancelImageCreationRequest < Struct.new(
      :image_build_version_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token that was used for this request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation has been
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelImageCreationResponse AWS API Documentation
    #
    class CancelImageCreationResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # These errors are usually caused by a client action, such as using an
    # action or resource on behalf of a user that doesn't have permissions
    # to use the action or resource, or specifying an invalid resource
    # identifier.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ClientException AWS API Documentation
    #
    class ClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A detailed view of a component.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   Describes the current status of the component. This is used for
    #   components that are no longer active.
    #   @return [Types::ComponentState]
    #
    # @!attribute [rw] parameters
    #   Contains parameter details for each of the parameters that are
    #   defined for the component.
    #   @return [Array<Types::ComponentParameterDetail>]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Component data contains the YAML document content for the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the component.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   The encryption status of the component.
    #   @return [Boolean]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Component AWS API Documentation
    #
    class Component < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :change_description,
      :type,
      :platform,
      :supported_os_versions,
      :state,
      :parameters,
      :owner,
      :data,
      :kms_key_id,
      :encrypted,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details of the component.
    #
    # @note When making an API call, you may pass ComponentConfiguration
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #         parameters: [
    #           {
    #             name: "ComponentParameterName", # required
    #             value: ["ComponentParameterValue"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A group of parameter settings that are used to configure the
    #   component for a specific recipe.
    #   @return [Array<Types::ComponentParameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentConfiguration AWS API Documentation
    #
    class ComponentConfiguration < Struct.new(
      :component_arn,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a key/value pair that sets the named component parameter.
    #
    # @note When making an API call, you may pass ComponentParameter
    #   data as a hash:
    #
    #       {
    #         name: "ComponentParameterName", # required
    #         value: ["ComponentParameterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the component parameter to set.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Sets the value for the named component parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentParameter AWS API Documentation
    #
    class ComponentParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a parameter that is used to provide configuration details for
    # the component.
    #
    # @!attribute [rw] name
    #   The name of this input parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of input this parameter provides. The currently supported
    #   value is "string".
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of this parameter if no input is provided.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   Describes this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentParameterDetail AWS API Documentation
    #
    class ComponentParameterDetail < Struct.new(
      :name,
      :type,
      :default_value,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A group of fields that describe the current status of components that
    # are no longer active.
    #
    # @!attribute [rw] status
    #   The current state of the component.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Describes how or why the component changed state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentState AWS API Documentation
    #
    class ComponentState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A high-level summary of a component.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   Describes the current status of the component.
    #   @return [Types::ComponentState]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the component.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentSummary AWS API Documentation
    #
    class ComponentSummary < Struct.new(
      :arn,
      :name,
      :version,
      :platform,
      :supported_os_versions,
      :state,
      :type,
      :owner,
      :description,
      :change_description,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The defining characteristics of a specific version of an Amazon Web
    # Services TOE component.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the component.
    #
    #   <note markdown="1"> Semantic versioning is included in each object's Amazon Resource
    #   Name (ARN), at the level that applies to that object as follows:
    #
    #    1.  Versionless ARNs and Name ARNs do not include specific values in
    #       any of the nodes. The nodes are either left off entirely, or
    #       they are specified as wildcards, for example: x.x.x.
    #
    #   2.  Version ARNs have only the first three nodes:
    #       &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;
    #
    #   3.  Build version ARNs have all four nodes, and point to a specific
    #       build for a specific version of an object.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the component.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   he operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentVersion AWS API Documentation
    #
    class ComponentVersion < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :platform,
      :supported_os_versions,
      :type,
      :owner,
      :date_created)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container encapsulates the runtime environment for an application.
    #
    # @!attribute [rw] region
    #   Containers and container images are Region-specific. This is the
    #   Region context for the container.
    #   @return [String]
    #
    # @!attribute [rw] image_uris
    #   A list of URIs for containers created in the context Region.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Container AWS API Documentation
    #
    class Container < Struct.new(
      :region,
      :image_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container distribution settings for encryption, licensing, and sharing
    # in a specific Region.
    #
    # @note When making an API call, you may pass ContainerDistributionConfiguration
    #   data as a hash:
    #
    #       {
    #         description: "NonEmptyString",
    #         container_tags: ["NonEmptyString"],
    #         target_repository: { # required
    #           service: "ECR", # required, accepts ECR
    #           repository_name: "NonEmptyString", # required
    #         },
    #       }
    #
    # @!attribute [rw] description
    #   The description of the container distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] container_tags
    #   Tags that are attached to the container distribution configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] target_repository
    #   The destination repository for the container distribution
    #   configuration.
    #   @return [Types::TargetContainerRepository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ContainerDistributionConfiguration AWS API Documentation
    #
    class ContainerDistributionConfiguration < Struct.new(
      :description,
      :container_tags,
      :target_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # A container recipe.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the container recipe.
    #
    #   <note markdown="1"> Semantic versioning is included in each object's Amazon Resource
    #   Name (ARN), at the level that applies to that object as follows:
    #
    #    1.  Versionless ARNs and Name ARNs do not include specific values in
    #       any of the nodes. The nodes are either left off entirely, or
    #       they are specified as wildcards, for example: x.x.x.
    #
    #   2.  Version ARNs have only the first three nodes:
    #       &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;
    #
    #   3.  Build version ARNs have all four nodes, and point to a specific
    #       build for a specific version of an object.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   Specifies the type of container, such as Docker.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The system platform for the container, such as Windows or Linux.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the container recipe.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] components
    #   Components for build and test that are included in the container
    #   recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] dockerfile_template_data
    #   Dockerfiles are text documents that are used to build Docker
    #   containers, and ensure that they contain all of the elements
    #   required by the application running inside. The template data
    #   consists of contextual variables where Image Builder places build
    #   information or scripts, based on your container image recipe.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   Identifies which KMS key is used to encrypt the container image for
    #   distribution to the target Region.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   A flag that indicates if the target container is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_image
    #   The base image for the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date when this container recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to the container recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory for use during build and test workflows.
    #   @return [String]
    #
    # @!attribute [rw] target_repository
    #   The destination repository for the container image.
    #   @return [Types::TargetContainerRepository]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ContainerRecipe AWS API Documentation
    #
    class ContainerRecipe < Struct.new(
      :arn,
      :container_type,
      :name,
      :description,
      :platform,
      :owner,
      :version,
      :components,
      :instance_configuration,
      :dockerfile_template_data,
      :kms_key_id,
      :encrypted,
      :parent_image,
      :date_created,
      :tags,
      :working_directory,
      :target_repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a container recipe
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] container_type
    #   Specifies the type of container, such as "Docker".
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The system platform for the container, such as Windows or Linux.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] parent_image
    #   The base image for the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date when this container recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to the container recipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ContainerRecipeSummary AWS API Documentation
    #
    class ContainerRecipeSummary < Struct.new(
      :arn,
      :container_type,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateComponentRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         semantic_version: "VersionNumber", # required
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         platform: "Windows", # required, accepts Windows, Linux
    #         supported_os_versions: ["OsVersion"],
    #         data: "InlineComponentData",
    #         uri: "Uri",
    #         kms_key_id: "NonEmptyString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component. Describes the contents of the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, a prefix match is performed against the
    #   base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data
    #   Component `data` contains inline YAML document content for the
    #   component. Alternatively, you can specify the `uri` of a YAML
    #   document file stored in Amazon S3. However, you cannot specify both
    #   properties.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The `uri` of a YAML component document file. This must be an S3 URL
    #   (`s3://bucket/key`), and the requester must have permission to
    #   access the S3 bucket it points to. If you use Amazon S3, you can
    #   specify component content up to your service quota.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   component `data` property. You cannot specify both properties.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponentRequest AWS API Documentation
    #
    class CreateComponentRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :platform,
      :supported_os_versions,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that was created by
    #   this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateContainerRecipeRequest
    #   data as a hash:
    #
    #       {
    #         container_type: "DOCKER", # required, accepts DOCKER
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         semantic_version: "VersionNumber", # required
    #         components: [ # required
    #           {
    #             component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #             parameters: [
    #               {
    #                 name: "ComponentParameterName", # required
    #                 value: ["ComponentParameterValue"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         instance_configuration: {
    #           image: "NonEmptyString",
    #           block_device_mappings: [
    #             {
    #               device_name: "NonEmptyString",
    #               ebs: {
    #                 encrypted: false,
    #                 delete_on_termination: false,
    #                 iops: 1,
    #                 kms_key_id: "NonEmptyString",
    #                 snapshot_id: "NonEmptyString",
    #                 volume_size: 1,
    #                 volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #                 throughput: 1,
    #               },
    #               virtual_name: "NonEmptyString",
    #               no_device: "EmptyString",
    #             },
    #           ],
    #         },
    #         dockerfile_template_data: "InlineDockerFileTemplate",
    #         dockerfile_template_uri: "Uri",
    #         platform_override: "Windows", # accepts Windows, Linux
    #         image_os_version_override: "NonEmptyString",
    #         parent_image: "NonEmptyString", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         working_directory: "NonEmptyString",
    #         target_repository: { # required
    #           service: "ECR", # required, accepts ECR
    #           repository_name: "NonEmptyString", # required
    #         },
    #         kms_key_id: "NonEmptyString",
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] container_type
    #   The type of container to create.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the container recipe. This version follows
    #   the semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] components
    #   Components for build and test that are included in the container
    #   recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] dockerfile_template_data
    #   The Dockerfile template used to build your image as an inline data
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] dockerfile_template_uri
    #   The Amazon S3 URI for the Dockerfile that will be used to build your
    #   container image.
    #   @return [String]
    #
    # @!attribute [rw] platform_override
    #   Specifies the operating system platform when you use a custom base
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] image_os_version_override
    #   Specifies the operating system version for the base image.
    #   @return [String]
    #
    # @!attribute [rw] parent_image
    #   The base image for the container recipe.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to the container recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory for use during build and test workflows.
    #   @return [String]
    #
    # @!attribute [rw] target_repository
    #   The destination repository for the container image.
    #   @return [Types::TargetContainerRepository]
    #
    # @!attribute [rw] kms_key_id
    #   Identifies which KMS key is used to encrypt the container image.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateContainerRecipeRequest AWS API Documentation
    #
    class CreateContainerRecipeRequest < Struct.new(
      :container_type,
      :name,
      :description,
      :semantic_version,
      :components,
      :instance_configuration,
      :dockerfile_template_data,
      :dockerfile_template_uri,
      :platform_override,
      :image_os_version_override,
      :parent_image,
      :tags,
      :working_directory,
      :target_repository,
      :kms_key_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   Returns the Amazon Resource Name (ARN) of the container recipe that
    #   the request created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateContainerRecipeResponse AWS API Documentation
    #
    class CreateContainerRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         distributions: [ # required
    #           {
    #             region: "NonEmptyString", # required
    #             ami_distribution_configuration: {
    #               name: "AmiNameString",
    #               description: "NonEmptyString",
    #               target_account_ids: ["AccountId"],
    #               ami_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               kms_key_id: "NonEmptyString",
    #               launch_permission: {
    #                 user_ids: ["AccountId"],
    #                 user_groups: ["NonEmptyString"],
    #                 organization_arns: ["OrganizationArn"],
    #                 organizational_unit_arns: ["OrganizationalUnitArn"],
    #               },
    #             },
    #             container_distribution_configuration: {
    #               description: "NonEmptyString",
    #               container_tags: ["NonEmptyString"],
    #               target_repository: { # required
    #                 service: "ECR", # required, accepts ECR
    #                 repository_name: "NonEmptyString", # required
    #               },
    #             },
    #             license_configuration_arns: ["LicenseConfigurationArn"],
    #             launch_template_configurations: [
    #               {
    #                 launch_template_id: "LaunchTemplateId", # required
    #                 account_id: "AccountId",
    #                 set_default_version: false,
    #               },
    #             ],
    #             s3_export_configuration: {
    #               role_name: "NonEmptyString", # required
    #               disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #               s3_bucket: "NonEmptyString", # required
    #               s3_prefix: "NonEmptyString",
    #             },
    #             fast_launch_configurations: [
    #               {
    #                 enabled: false, # required
    #                 snapshot_configuration: {
    #                   target_resource_count: 1,
    #                 },
    #                 max_parallel_launches: 1,
    #                 launch_template: {
    #                   launch_template_id: "LaunchTemplateId",
    #                   launch_template_name: "NonEmptyString",
    #                   launch_template_version: "NonEmptyString",
    #                 },
    #                 account_id: "AccountId",
    #               },
    #             ],
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distributions of the distribution configuration.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] tags
    #   The tags of the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfigurationRequest AWS API Documentation
    #
    class CreateDistributionConfigurationRequest < Struct.new(
      :name,
      :description,
      :distributions,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfigurationResponse AWS API Documentation
    #
    class CreateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         image_recipe_arn: "ImageRecipeArn",
    #         container_recipe_arn: "ContainerRecipeArn",
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         schedule: {
    #           schedule_expression: "NonEmptyString",
    #           timezone: "Timezone",
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #         },
    #         status: "DISABLED", # accepts DISABLED, ENABLED
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images created by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used
    #   to configure images created by this container pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images created by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that will be used to configure and distribute images created by this
    #   image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image test configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image pipeline.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipelineRequest AWS API Documentation
    #
    class CreateImagePipelineRequest < Struct.new(
      :name,
      :description,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImagePipelineResponse AWS API Documentation
    #
    class CreateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         semantic_version: "VersionNumber", # required
    #         components: [ # required
    #           {
    #             component_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #             parameters: [
    #               {
    #                 name: "ComponentParameterName", # required
    #                 value: ["ComponentParameterValue"], # required
    #               },
    #             ],
    #           },
    #         ],
    #         parent_image: "NonEmptyString", # required
    #         block_device_mappings: [
    #           {
    #             device_name: "NonEmptyString",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               kms_key_id: "NonEmptyString",
    #               snapshot_id: "NonEmptyString",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #               throughput: 1,
    #             },
    #             virtual_name: "NonEmptyString",
    #             no_device: "EmptyString",
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         working_directory: "NonEmptyString",
    #         additional_instance_configuration: {
    #           systems_manager_agent: {
    #             uninstall_after_build: false,
    #           },
    #           user_data_override: "UserDataOverride",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the image recipe. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components of the image recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The base image of the image recipe. The value of the string can be
    #   the ARN of the base image or an AMI ID. The format for the ARN
    #   follows this example:
    #   `arn:aws:imagebuilder:us-west-2:aws:image/windows-server-2016-english-full-base-x86/x.x.x`.
    #   You can provide the specific version that you want to use, or you
    #   can use a wildcard in all of the fields. If you enter an AMI ID for
    #   the string value, you must have access to the AMI, and the AMI must
    #   be in the same Region in which you are using Image Builder.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mappings of the image recipe.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory used during build and test workflows.
    #   @return [String]
    #
    # @!attribute [rw] additional_instance_configuration
    #   Specify additional settings and launch scripts for your build
    #   instances.
    #   @return [Types::AdditionalInstanceConfiguration]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipeRequest AWS API Documentation
    #
    class CreateImageRecipeRequest < Struct.new(
      :name,
      :description,
      :semantic_version,
      :components,
      :parent_image,
      :block_device_mappings,
      :tags,
      :working_directory,
      :additional_instance_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that was created
    #   by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipeResponse AWS API Documentation
    #
    class CreateImageRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateImageRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn",
    #         container_recipe_arn: "ContainerRecipeArn",
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that defines
    #   how images are configured and tested.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that defines and configures the outputs of your pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration of the image.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRequest AWS API Documentation
    #
    class CreateImageRequest < Struct.new(
      :image_recipe_arn,
      :container_recipe_arn,
      :distribution_configuration_arn,
      :infrastructure_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that was created by this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageResponse AWS API Documentation
    #
    class CreateImageResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         description: "NonEmptyString",
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "InstanceProfileNameType", # required
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_id: "NonEmptyString",
    #         logging: {
    #           s3_logs: {
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString",
    #           },
    #         },
    #         key_pair: "NonEmptyString",
    #         terminate_instance_on_failure: false,
    #         sns_topic_arn: "SnsTopicArn",
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         instance_metadata_options: {
    #           http_tokens: "HttpTokens",
    #           http_put_response_hop_limit: 1,
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The
    #   service will pick one of these instance types based on availability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. You can use this
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of
    #   your workflow fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) for the SNS topic to which we send
    #   image build event notifications.
    #
    #   <note markdown="1"> EC2 Image Builder is unable to send notifications to SNS topics that
    #   are encrypted using keys from other accounts. The key that is used
    #   to encrypt the SNS topic must reside in the account that the Image
    #   Builder service runs under.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_metadata_options
    #   The instance metadata options that you can set for the HTTP requests
    #   that pipeline builds use to launch EC2 build and test instances.
    #   @return [Types::InstanceMetadataOptions]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfigurationRequest AWS API Documentation
    #
    class CreateInfrastructureConfigurationRequest < Struct.new(
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :resource_tags,
      :instance_metadata_options,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was created by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateInfrastructureConfigurationResponse AWS API Documentation
    #
    class CreateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteComponentRequest
    #   data as a hash:
    #
    #       {
    #         component_build_version_arn: "ComponentBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component build version that
    #   was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteComponentResponse AWS API Documentation
    #
    class DeleteComponentResponse < Struct.new(
      :request_id,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteContainerRecipeRequest
    #   data as a hash:
    #
    #       {
    #         container_recipe_arn: "ContainerRecipeArn", # required
    #       }
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteContainerRecipeRequest AWS API Documentation
    #
    class DeleteContainerRecipeRequest < Struct.new(
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that was
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteContainerRecipeResponse AWS API Documentation
    #
    class DeleteContainerRecipeResponse < Struct.new(
      :request_id,
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfigurationRequest AWS API Documentation
    #
    class DeleteDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteDistributionConfigurationResponse AWS API Documentation
    #
    class DeleteDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipelineRequest AWS API Documentation
    #
    class DeleteImagePipelineRequest < Struct.new(
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImagePipelineResponse AWS API Documentation
    #
    class DeleteImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipeRequest AWS API Documentation
    #
    class DeleteImageRecipeRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRecipeResponse AWS API Documentation
    #
    class DeleteImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImageRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the Image Builder image resource
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageRequest AWS API Documentation
    #
    class DeleteImageRequest < Struct.new(
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the Image Builder image resource
    #   that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteImageResponse AWS API Documentation
    #
    class DeleteImageResponse < Struct.new(
      :request_id,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfigurationRequest AWS API Documentation
    #
    class DeleteInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteInfrastructureConfigurationResponse AWS API Documentation
    #
    class DeleteInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the settings for a specific Region.
    #
    # @note When making an API call, you may pass Distribution
    #   data as a hash:
    #
    #       {
    #         region: "NonEmptyString", # required
    #         ami_distribution_configuration: {
    #           name: "AmiNameString",
    #           description: "NonEmptyString",
    #           target_account_ids: ["AccountId"],
    #           ami_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           kms_key_id: "NonEmptyString",
    #           launch_permission: {
    #             user_ids: ["AccountId"],
    #             user_groups: ["NonEmptyString"],
    #             organization_arns: ["OrganizationArn"],
    #             organizational_unit_arns: ["OrganizationalUnitArn"],
    #           },
    #         },
    #         container_distribution_configuration: {
    #           description: "NonEmptyString",
    #           container_tags: ["NonEmptyString"],
    #           target_repository: { # required
    #             service: "ECR", # required, accepts ECR
    #             repository_name: "NonEmptyString", # required
    #           },
    #         },
    #         license_configuration_arns: ["LicenseConfigurationArn"],
    #         launch_template_configurations: [
    #           {
    #             launch_template_id: "LaunchTemplateId", # required
    #             account_id: "AccountId",
    #             set_default_version: false,
    #           },
    #         ],
    #         s3_export_configuration: {
    #           role_name: "NonEmptyString", # required
    #           disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #           s3_bucket: "NonEmptyString", # required
    #           s3_prefix: "NonEmptyString",
    #         },
    #         fast_launch_configurations: [
    #           {
    #             enabled: false, # required
    #             snapshot_configuration: {
    #               target_resource_count: 1,
    #             },
    #             max_parallel_launches: 1,
    #             launch_template: {
    #               launch_template_id: "LaunchTemplateId",
    #               launch_template_name: "NonEmptyString",
    #               launch_template_version: "NonEmptyString",
    #             },
    #             account_id: "AccountId",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] region
    #   The target Region.
    #   @return [String]
    #
    # @!attribute [rw] ami_distribution_configuration
    #   The specific AMI settings; for example, launch permissions or AMI
    #   tags.
    #   @return [Types::AmiDistributionConfiguration]
    #
    # @!attribute [rw] container_distribution_configuration
    #   Container distribution settings for encryption, licensing, and
    #   sharing in a specific Region.
    #   @return [Types::ContainerDistributionConfiguration]
    #
    # @!attribute [rw] license_configuration_arns
    #   The License Manager Configuration to associate with the AMI in the
    #   specified Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] launch_template_configurations
    #   A group of launchTemplateConfiguration settings that apply to image
    #   distribution for specified accounts.
    #   @return [Array<Types::LaunchTemplateConfiguration>]
    #
    # @!attribute [rw] s3_export_configuration
    #   Configure export settings to deliver disk images created from your
    #   image build, using a file format that is compatible with your VMs in
    #   that Region.
    #   @return [Types::S3ExportConfiguration]
    #
    # @!attribute [rw] fast_launch_configurations
    #   The Windows faster-launching configurations to use for AMI
    #   distribution.
    #   @return [Array<Types::FastLaunchConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Distribution AWS API Documentation
    #
    class Distribution < Struct.new(
      :region,
      :ami_distribution_configuration,
      :container_distribution_configuration,
      :license_configuration_arns,
      :launch_template_configurations,
      :s3_export_configuration,
      :fast_launch_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A distribution configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distribution objects that apply Region-specific settings for the
    #   deployment of the image to targeted Regions.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum duration in minutes for this distribution configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] date_created
    #   The date on which this distribution configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which this distribution configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributionConfiguration AWS API Documentation
    #
    class DistributionConfiguration < Struct.new(
      :arn,
      :name,
      :description,
      :distributions,
      :timeout_minutes,
      :date_created,
      :date_updated,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A high-level overview of a distribution configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the distribution configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the distribution configuration was updated.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] regions
    #   A list of Regions where the container image is distributed to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributionConfigurationSummary AWS API Documentation
    #
    class DistributionConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :tags,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EBS-specific block device mapping specifications.
    #
    # @note When making an API call, you may pass EbsInstanceBlockDeviceSpecification
    #   data as a hash:
    #
    #       {
    #         encrypted: false,
    #         delete_on_termination: false,
    #         iops: 1,
    #         kms_key_id: "NonEmptyString",
    #         snapshot_id: "NonEmptyString",
    #         volume_size: 1,
    #         volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #         throughput: 1,
    #       }
    #
    # @!attribute [rw] encrypted
    #   Use to configure device encryption.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Use to configure delete on termination of the associated device.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   Use to configure device IOPS.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   Use to configure the KMS key to use when encrypting the device.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot that defines the device contents.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Use to override the device's volume size.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Use to override the device's volume type.
    #   @return [String]
    #
    # @!attribute [rw] throughput
    #   **For GP3 volumes only** – The throughput in MiB/s that the volume
    #   supports.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/EbsInstanceBlockDeviceSpecification AWS API Documentation
    #
    class EbsInstanceBlockDeviceSpecification < Struct.new(
      :encrypted,
      :delete_on_termination,
      :iops,
      :kms_key_id,
      :snapshot_id,
      :volume_size,
      :volume_type,
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # Define and configure faster launching for output Windows AMIs.
    #
    # @note When making an API call, you may pass FastLaunchConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         snapshot_configuration: {
    #           target_resource_count: 1,
    #         },
    #         max_parallel_launches: 1,
    #         launch_template: {
    #           launch_template_id: "LaunchTemplateId",
    #           launch_template_name: "NonEmptyString",
    #           launch_template_version: "NonEmptyString",
    #         },
    #         account_id: "AccountId",
    #       }
    #
    # @!attribute [rw] enabled
    #   A Boolean that represents the current state of faster launching for
    #   the Windows AMI. Set to `true` to start using Windows faster
    #   launching, or `false` to stop using it.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_configuration
    #   Configuration settings for managing the number of snapshots that are
    #   created from pre-provisioned instances for the Windows AMI when
    #   faster launching is enabled.
    #   @return [Types::FastLaunchSnapshotConfiguration]
    #
    # @!attribute [rw] max_parallel_launches
    #   The maximum number of parallel instances that are launched for
    #   creating resources.
    #   @return [Integer]
    #
    # @!attribute [rw] launch_template
    #   The launch template that the fast-launch enabled Windows AMI uses
    #   when it launches Windows instances to create pre-provisioned
    #   snapshots.
    #   @return [Types::FastLaunchLaunchTemplateSpecification]
    #
    # @!attribute [rw] account_id
    #   The owner account ID for the fast-launch enabled Windows AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/FastLaunchConfiguration AWS API Documentation
    #
    class FastLaunchConfiguration < Struct.new(
      :enabled,
      :snapshot_configuration,
      :max_parallel_launches,
      :launch_template,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the launch template that the associated Windows AMI uses
    # for launching an instance when faster launching is enabled.
    #
    # <note markdown="1"> You can specify either the `launchTemplateName` or the
    # `launchTemplateId`, but not both.
    #
    #  </note>
    #
    # @note When making an API call, you may pass FastLaunchLaunchTemplateSpecification
    #   data as a hash:
    #
    #       {
    #         launch_template_id: "LaunchTemplateId",
    #         launch_template_name: "NonEmptyString",
    #         launch_template_version: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] launch_template_id
    #   The ID of the launch template to use for faster launching for a
    #   Windows AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template to use for faster launching for a
    #   Windows AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_version
    #   The version of the launch template to use for faster launching for a
    #   Windows AMI.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/FastLaunchLaunchTemplateSpecification AWS API Documentation
    #
    class FastLaunchLaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :launch_template_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for creating and managing pre-provisioned
    # snapshots for a fast-launch enabled Windows AMI.
    #
    # @note When making an API call, you may pass FastLaunchSnapshotConfiguration
    #   data as a hash:
    #
    #       {
    #         target_resource_count: 1,
    #       }
    #
    # @!attribute [rw] target_resource_count
    #   The number of pre-provisioned snapshots to keep on hand for a
    #   fast-launch enabled Windows AMI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/FastLaunchSnapshotConfiguration AWS API Documentation
    #
    class FastLaunchSnapshotConfiguration < Struct.new(
      :target_resource_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter name and value pair that is used to return a more specific
    # list of results from a list operation. Filters can be used to match a
    # set of resources by specific criteria, such as tags, attributes, or
    # IDs.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "FilterName",
    #         values: ["FilterValue"],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter. Filter names are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to perform the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentPolicyRequest
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component whose policy you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicyRequest AWS API Documentation
    #
    class GetComponentPolicyRequest < Struct.new(
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The component policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentPolicyResponse AWS API Documentation
    #
    class GetComponentPolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComponentRequest
    #   data as a hash:
    #
    #       {
    #         component_build_version_arn: "ComponentVersionArnOrBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to
    #   retrieve. Regex requires "/\\d+$" suffix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentRequest AWS API Documentation
    #
    class GetComponentRequest < Struct.new(
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component
    #   The component object associated with the specified ARN.
    #   @return [Types::Component]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentResponse AWS API Documentation
    #
    class GetComponentResponse < Struct.new(
      :request_id,
      :component)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContainerRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         container_recipe_arn: "ContainerRecipeArn", # required
    #       }
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe for the
    #   policy being requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipePolicyRequest AWS API Documentation
    #
    class GetContainerRecipePolicyRequest < Struct.new(
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The container recipe policy object that is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipePolicyResponse AWS API Documentation
    #
    class GetContainerRecipePolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContainerRecipeRequest
    #   data as a hash:
    #
    #       {
    #         container_recipe_arn: "ContainerRecipeArn", # required
    #       }
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipeRequest AWS API Documentation
    #
    class GetContainerRecipeRequest < Struct.new(
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe
    #   The container recipe object that is returned.
    #   @return [Types::ContainerRecipe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipeResponse AWS API Documentation
    #
    class GetContainerRecipeResponse < Struct.new(
      :request_id,
      :container_recipe)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfigurationRequest AWS API Documentation
    #
    class GetDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration
    #   The distribution configuration object.
    #   @return [Types::DistributionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetDistributionConfigurationResponse AWS API Documentation
    #
    class GetDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipelineRequest AWS API Documentation
    #
    class GetImagePipelineRequest < Struct.new(
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline
    #   The image pipeline object.
    #   @return [Types::ImagePipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePipelineResponse AWS API Documentation
    #
    class GetImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImagePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_arn: "ImageBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image whose policy you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicyRequest AWS API Documentation
    #
    class GetImagePolicyRequest < Struct.new(
      :image_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The image policy object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImagePolicyResponse AWS API Documentation
    #
    class GetImagePolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe whose policy you
    #   want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicyRequest AWS API Documentation
    #
    class GetImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The image recipe policy object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipePolicyResponse AWS API Documentation
    #
    class GetImageRecipePolicyResponse < Struct.new(
      :request_id,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRecipeRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipeRequest AWS API Documentation
    #
    class GetImageRecipeRequest < Struct.new(
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe
    #   The image recipe object.
    #   @return [Types::ImageRecipe]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipeResponse AWS API Documentation
    #
    class GetImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImageRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageVersionArnOrBuildVersionArn", # required
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRequest AWS API Documentation
    #
    class GetImageRequest < Struct.new(
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image
    #   The image object.
    #   @return [Types::Image]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageResponse AWS API Documentation
    #
    class GetImageResponse < Struct.new(
      :request_id,
      :image)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInfrastructureConfiguration request object.
    #
    # @note When making an API call, you may pass GetInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfigurationRequest AWS API Documentation
    #
    class GetInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # GetInfrastructureConfiguration response object.
    #
    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration
    #   The infrastructure configuration object.
    #   @return [Types::InfrastructureConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetInfrastructureConfigurationResponse AWS API Documentation
    #
    class GetInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified a client token for an operation using parameter
    # values that differ from a previous request that used the same client
    # token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Image Builder image. You must specify exactly one recipe for the
    # image – either a container recipe (`containerRecipe`), which creates a
    # container image, or an image recipe (`imageRecipe`), which creates an
    # AMI.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image.
    #
    #   <note markdown="1"> Semantic versioning is included in each object's Amazon Resource
    #   Name (ARN), at the level that applies to that object as follows:
    #
    #    1.  Versionless ARNs and Name ARNs do not include specific values in
    #       any of the nodes. The nodes are either left off entirely, or
    #       they are specified as wildcards, for example: x.x.x.
    #
    #   2.  Version ARNs have only the first three nodes:
    #       &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;
    #
    #   3.  Build version ARNs have all four nodes, and point to a specific
    #       build for a specific version of an object.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies whether this is an AMI or container image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the image.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instance. For example, Amazon
    #   Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] image_recipe
    #   The image recipe used when creating the image.
    #   @return [Types::ImageRecipe]
    #
    # @!attribute [rw] container_recipe
    #   The recipe that is used to create an Image Builder container image.
    #   @return [Types::ContainerRecipe]
    #
    # @!attribute [rw] source_pipeline_name
    #   The name of the image pipeline that created this image.
    #   @return [String]
    #
    # @!attribute [rw] source_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that created
    #   this image.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration
    #   The infrastructure used when creating this image.
    #   @return [Types::InfrastructureConfiguration]
    #
    # @!attribute [rw] distribution_configuration
    #   The distribution configuration used when creating this image.
    #   @return [Types::DistributionConfiguration]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration used when creating this image.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] date_created
    #   The date on which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources produced when creating this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_type
    #   Indicates the type of build that created this image. The build can
    #   be initiated in the following ways:
    #
    #   * **USER\_INITIATED** – A manual pipeline build request.
    #
    #   * **SCHEDULED** – A pipeline build initiated by a cron expression in
    #     the Image Builder pipeline, or from EventBridge.
    #
    #   * **IMPORT** – A VM import created the image to use as the base
    #     image for the recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Image AWS API Documentation
    #
    class Image < Struct.new(
      :arn,
      :type,
      :name,
      :version,
      :platform,
      :enhanced_image_metadata_enabled,
      :os_version,
      :state,
      :image_recipe,
      :container_recipe,
      :source_pipeline_name,
      :source_pipeline_arn,
      :infrastructure_configuration,
      :distribution_configuration,
      :image_tests_configuration,
      :date_created,
      :output_resources,
      :tags,
      :build_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a package installed on an Image Builder image.
    #
    # @!attribute [rw] package_name
    #   The name of the package as reported to the operating system package
    #   manager.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The version of the package as reported to the operating system
    #   package manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImagePackage AWS API Documentation
    #
    class ImagePackage < Struct.new(
      :package_name,
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of an image pipeline.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe associated with
    #   this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used
    #   for this pipeline.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   associated with this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   associated with this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image pipeline was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which this image pipeline was last updated.
    #   @return [String]
    #
    # @!attribute [rw] date_last_run
    #   The date on which this image pipeline was last run.
    #   @return [String]
    #
    # @!attribute [rw] date_next_run
    #   The date on which this image pipeline will next be run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of this image pipeline.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImagePipeline AWS API Documentation
    #
    class ImagePipeline < Struct.new(
      :arn,
      :name,
      :description,
      :platform,
      :enhanced_image_metadata_enabled,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :schedule,
      :status,
      :date_created,
      :date_updated,
      :date_last_run,
      :date_next_run,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image recipe.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies which type of image is created by the recipe - an AMI or a
    #   container image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components of the image recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The base image of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mappings to apply when creating images from this
    #   recipe.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] date_created
    #   The date on which this image recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory to be used during build and test workflows.
    #   @return [String]
    #
    # @!attribute [rw] additional_instance_configuration
    #   Before you create a new AMI, Image Builder launches temporary Amazon
    #   EC2 instances to build and test your image configuration. Instance
    #   configuration adds a layer of control over those instances. You can
    #   define settings and add scripts to run when an instance is launched
    #   from your AMI.
    #   @return [Types::AdditionalInstanceConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageRecipe AWS API Documentation
    #
    class ImageRecipe < Struct.new(
      :arn,
      :type,
      :name,
      :description,
      :platform,
      :owner,
      :version,
      :components,
      :parent_image,
      :block_device_mappings,
      :date_created,
      :tags,
      :working_directory,
      :additional_instance_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an image recipe.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] parent_image
    #   The base image of the image recipe.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image recipe was created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageRecipeSummary AWS API Documentation
    #
    class ImageRecipeSummary < Struct.new(
      :arn,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Image state shows the image status and the reason for that status.
    #
    # @!attribute [rw] status
    #   The status of the image.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the image's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageState AWS API Documentation
    #
    class ImageState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An image summary.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the image.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the image.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies whether this is an AMI or container image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the image.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instance. For example, Amazon
    #   Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] owner
    #   The owner of the image.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this image was created.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources produced when creating this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] build_type
    #   Indicates the type of build that created this image. The build can
    #   be initiated in the following ways:
    #
    #   * **USER\_INITIATED** – A manual pipeline build request.
    #
    #   * **SCHEDULED** – A pipeline build initiated by a cron expression in
    #     the Image Builder pipeline, or from EventBridge.
    #
    #   * **IMPORT** – A VM import created the image to use as the base
    #     image for the recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageSummary AWS API Documentation
    #
    class ImageSummary < Struct.new(
      :arn,
      :name,
      :type,
      :version,
      :platform,
      :os_version,
      :state,
      :owner,
      :date_created,
      :output_resources,
      :tags,
      :build_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure image tests for your pipeline build. Tests run after
    # building the image, to verify that the AMI or container image is valid
    # before distributing it.
    #
    # @note When making an API call, you may pass ImageTestsConfiguration
    #   data as a hash:
    #
    #       {
    #         image_tests_enabled: false,
    #         timeout_minutes: 1,
    #       }
    #
    # @!attribute [rw] image_tests_enabled
    #   Determines if tests should run after building the image. Image
    #   Builder defaults to enable tests to run following the image build,
    #   before image distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum time in minutes that tests are permitted to run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageTestsConfiguration AWS API Documentation
    #
    class ImageTestsConfiguration < Struct.new(
      :image_tests_enabled,
      :timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The defining characteristics of a specific version of an Image Builder
    # image.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of a specific version of an Image
    #   Builder image.
    #
    #   <note markdown="1"> Semantic versioning is included in each object's Amazon Resource
    #   Name (ARN), at the level that applies to that object as follows:
    #
    #    1.  Versionless ARNs and Name ARNs do not include specific values in
    #       any of the nodes. The nodes are either left off entirely, or
    #       they are specified as wildcards, for example: x.x.x.
    #
    #   2.  Version ARNs have only the first three nodes:
    #       &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;
    #
    #   3.  Build version ARNs have all four nodes, and point to a specific
    #       build for a specific version of an object.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this specific version of an Image Builder image.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specifies whether this image is an AMI or a container image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Details for a specific version of an Image Builder image. This
    #   version follows the semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the image version, for example "Windows" or
    #   "Linux".
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the Amazon EC2 build instance. For
    #   example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server
    #   2019.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the image version.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which this specific version of the Image Builder image
    #   was created.
    #   @return [String]
    #
    # @!attribute [rw] build_type
    #   Indicates the type of build that created this image. The build can
    #   be initiated in the following ways:
    #
    #   * **USER\_INITIATED** – A manual pipeline build request.
    #
    #   * **SCHEDULED** – A pipeline build initiated by a cron expression in
    #     the Image Builder pipeline, or from EventBridge.
    #
    #   * **IMPORT** – A VM import created the image to use as the base
    #     image for the recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageVersion AWS API Documentation
    #
    class ImageVersion < Struct.new(
      :arn,
      :name,
      :type,
      :version,
      :platform,
      :os_version,
      :owner,
      :date_created,
      :build_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportComponentRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         semantic_version: "VersionNumber", # required
    #         description: "NonEmptyString",
    #         change_description: "NonEmptyString",
    #         type: "BUILD", # required, accepts BUILD, TEST
    #         format: "SHELL", # required, accepts SHELL
    #         platform: "Windows", # required, accepts Windows, Linux
    #         data: "NonEmptyString",
    #         uri: "Uri",
    #         kms_key_id: "NonEmptyString",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of the component. This version follows the
    #   semantic version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component. Describes the contents of the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image, or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the resource that you want to import as a component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The data of the component. Used to specify the data inline. Either
    #   `data` or `uri` can be used to specify the data within the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The uri of the component. Must be an Amazon S3 URL and the requester
    #   must have permission to access the Amazon S3 bucket. If you use
    #   Amazon S3, you can specify component content up to your service
    #   quota. Either `data` or `uri` can be used to specify the data within
    #   the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID of the KMS key that should be used to encrypt this component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the component.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponentRequest AWS API Documentation
    #
    class ImportComponentRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :type,
      :format,
      :platform,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the imported component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportComponentResponse AWS API Documentation
    #
    class ImportComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportVmImageRequest
    #   data as a hash:
    #
    #       {
    #         name: "NonEmptyString", # required
    #         semantic_version: "VersionNumber", # required
    #         description: "NonEmptyString",
    #         platform: "Windows", # required, accepts Windows, Linux
    #         os_version: "OsVersion",
    #         vm_import_task_id: "NonEmptyString", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the base image that is created by the import process.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version to attach to the base image that was created
    #   during the import process. This version follows the semantic version
    #   syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes you can assign any
    #   positive integer value, including zero, with an upper limit of
    #   2^30-1, or 1073741823 for each node. Image Builder automatically
    #   assigns the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the base image that is created by the import
    #   process.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform for the imported VM.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version for the imported VM.
    #   @return [String]
    #
    # @!attribute [rw] vm_import_task_id
    #   The `importTaskId` (API) or `ImportTaskId` (CLI) from the Amazon EC2
    #   VM import process. Image Builder retrieves information from the
    #   import process to pull in the AMI that is created from the VM source
    #   as the base image for your recipe.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to the import resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure idempotency
    #   of the request. For more information, see [Ensuring idempotency][1]
    #   in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportVmImageRequest AWS API Documentation
    #
    class ImportVmImageRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :platform,
      :os_version,
      :vm_import_task_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the AMI that was created during
    #   the VM import process. This AMI is used as the base image for the
    #   recipe that imported the VM.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token that was used for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportVmImageResponse AWS API Documentation
    #
    class ImportVmImageResponse < Struct.new(
      :request_id,
      :image_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the infrastructure configuration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs of the infrastructure configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The Amazon EC2 key pair of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure configuration of the
    #   infrastructure configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) for the SNS topic to which we send
    #   image build event notifications.
    #
    #   <note markdown="1"> EC2 Image Builder is unable to send notifications to SNS topics that
    #   are encrypted using keys from other accounts. The key that is used
    #   to encrypt the SNS topic must reside in the account that the Image
    #   Builder service runs under.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the infrastructure configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the infrastructure configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_metadata_options
    #   The instance metadata option settings for the infrastructure
    #   configuration.
    #   @return [Types::InstanceMetadataOptions]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InfrastructureConfiguration AWS API Documentation
    #
    class InfrastructureConfiguration < Struct.new(
      :arn,
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :date_created,
      :date_updated,
      :resource_tags,
      :instance_metadata_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The infrastructure used when building Amazon EC2 AMIs.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date on which the infrastructure configuration was created.
    #   @return [String]
    #
    # @!attribute [rw] date_updated
    #   The date on which the infrastructure configuration was last updated.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the image created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags of the infrastructure configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile of the infrastructure configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InfrastructureConfigurationSummary AWS API Documentation
    #
    class InfrastructureConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :resource_tags,
      :tags,
      :instance_types,
      :instance_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines block device mappings for the instance used to configure your
    # image.
    #
    # @note When making an API call, you may pass InstanceBlockDeviceMapping
    #   data as a hash:
    #
    #       {
    #         device_name: "NonEmptyString",
    #         ebs: {
    #           encrypted: false,
    #           delete_on_termination: false,
    #           iops: 1,
    #           kms_key_id: "NonEmptyString",
    #           snapshot_id: "NonEmptyString",
    #           volume_size: 1,
    #           volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #           throughput: 1,
    #         },
    #         virtual_name: "NonEmptyString",
    #         no_device: "EmptyString",
    #       }
    #
    # @!attribute [rw] device_name
    #   The device to which these mappings apply.
    #   @return [String]
    #
    # @!attribute [rw] ebs
    #   Use to manage Amazon EBS-specific configuration for this mapping.
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    #
    # @!attribute [rw] virtual_name
    #   Use to manage instance ephemeral devices.
    #   @return [String]
    #
    # @!attribute [rw] no_device
    #   Use to remove a mapping from the base image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InstanceBlockDeviceMapping AWS API Documentation
    #
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs,
      :virtual_name,
      :no_device)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a custom base AMI and block device mapping configurations of
    # an instance used for building and testing container images.
    #
    # @note When making an API call, you may pass InstanceConfiguration
    #   data as a hash:
    #
    #       {
    #         image: "NonEmptyString",
    #         block_device_mappings: [
    #           {
    #             device_name: "NonEmptyString",
    #             ebs: {
    #               encrypted: false,
    #               delete_on_termination: false,
    #               iops: 1,
    #               kms_key_id: "NonEmptyString",
    #               snapshot_id: "NonEmptyString",
    #               volume_size: 1,
    #               volume_type: "standard", # accepts standard, io1, io2, gp2, gp3, sc1, st1
    #               throughput: 1,
    #             },
    #             virtual_name: "NonEmptyString",
    #             no_device: "EmptyString",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] image
    #   The AMI ID to use as the base image for a container build and test
    #   instance. If not specified, Image Builder will use the appropriate
    #   ECS-optimized AMI as a base image.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   Defines the block devices to attach for building an instance from
    #   this Image Builder AMI.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InstanceConfiguration AWS API Documentation
    #
    class InstanceConfiguration < Struct.new(
      :image,
      :block_device_mappings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance metadata options that apply to the HTTP requests that
    # pipeline builds use to launch EC2 build and test instances. For more
    # information about instance metadata options, see [Configure the
    # instance metadata options][1] in the <i> <i>Amazon EC2 User Guide</i>
    # </i> for Linux instances, or [Configure the instance metadata
    # options][2] in the <i> <i>Amazon EC2 Windows Guide</i> </i> for
    # Windows instances.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html
    # [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html
    #
    # @note When making an API call, you may pass InstanceMetadataOptions
    #   data as a hash:
    #
    #       {
    #         http_tokens: "HttpTokens",
    #         http_put_response_hop_limit: 1,
    #       }
    #
    # @!attribute [rw] http_tokens
    #   Indicates whether a signed token header is required for instance
    #   metadata retrieval requests. The values affect the response as
    #   follows:
    #
    #   * **required** – When you retrieve the IAM role credentials, version
    #     2.0 credentials are returned in all cases.
    #
    #   * **optional** – You can include a signed token header in your
    #     request to retrieve instance metadata, or you can leave it out. If
    #     you include it, version 2.0 credentials are returned for the IAM
    #     role. Otherwise, version 1.0 credentials are returned.
    #
    #   The default setting is **optional**.
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   Limit the number of hops that an instance metadata request can
    #   traverse to reach its destination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InstanceMetadataOptions AWS API Documentation
    #
    class InstanceMetadataOptions < Struct.new(
      :http_tokens,
      :http_put_response_hop_limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have provided an invalid pagination token in your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have specified two or more mutually exclusive parameters. Review
    # the error message for details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterCombinationException AWS API Documentation
    #
    class InvalidParameterCombinationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified parameter is invalid. Review the available parameters
    # for the API request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value that you provided for the specified parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have made a request for an action that is not supported by the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your version number is out of bounds or does not follow the required
    # syntax.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InvalidVersionNumberException AWS API Documentation
    #
    class InvalidVersionNumberException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a launch permission. The launch
    # permission modification request is sent to the [Amazon EC2
    # ModifyImageAttribute][1] API on behalf of the user for each Region
    # they have selected to distribute the AMI. To make an AMI public, set
    # the launch permission authorized accounts to `all`. See the examples
    # for making an AMI public at [Amazon EC2 ModifyImageAttribute][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html
    #
    # @note When making an API call, you may pass LaunchPermissionConfiguration
    #   data as a hash:
    #
    #       {
    #         user_ids: ["AccountId"],
    #         user_groups: ["NonEmptyString"],
    #         organization_arns: ["OrganizationArn"],
    #         organizational_unit_arns: ["OrganizationalUnitArn"],
    #       }
    #
    # @!attribute [rw] user_ids
    #   The Amazon Web Services account ID.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   The name of the group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_arns
    #   The ARN for an Amazon Web Services Organization that you want to
    #   share your AMI with. For more information, see [What is
    #   Organizations?][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_unit_arns
    #   The ARN for an Organizations organizational unit (OU) that you want
    #   to share your AMI with. For more information about key concepts for
    #   Organizations, see [Organizations terminology and concepts][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LaunchPermissionConfiguration AWS API Documentation
    #
    class LaunchPermissionConfiguration < Struct.new(
      :user_ids,
      :user_groups,
      :organization_arns,
      :organizational_unit_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an Amazon EC2 launch template to use for a specific
    # account.
    #
    # @note When making an API call, you may pass LaunchTemplateConfiguration
    #   data as a hash:
    #
    #       {
    #         launch_template_id: "LaunchTemplateId", # required
    #         account_id: "AccountId",
    #         set_default_version: false,
    #       }
    #
    # @!attribute [rw] launch_template_id
    #   Identifies the Amazon EC2 launch template to use.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID that this configuration applies to.
    #   @return [String]
    #
    # @!attribute [rw] set_default_version
    #   Set the specified Amazon EC2 launch template as the default launch
    #   template for the specified account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LaunchTemplateConfiguration AWS API Documentation
    #
    class LaunchTemplateConfiguration < Struct.new(
      :launch_template_id,
      :account_id,
      :set_default_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentBuildVersionsRequest
    #   data as a hash:
    #
    #       {
    #         component_version_arn: "ComponentVersionArn", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] component_version_arn
    #   The component version Amazon Resource Name (ARN) whose versions you
    #   want to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersionsRequest AWS API Documentation
    #
    class ListComponentBuildVersionsRequest < Struct.new(
      :component_version_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_summary_list
    #   The list of component summaries for the specified semantic version.
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentBuildVersionsResponse AWS API Documentation
    #
    class ListComponentBuildVersionsResponse < Struct.new(
      :request_id,
      :component_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComponentsRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         by_name: false,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which components you want to list. By default,
    #   this request will only show components owned by your account. You
    #   can use this field to specify if you want to view components owned
    #   by yourself, by Amazon, or those components that have been shared
    #   with you by other customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `description`
    #
    #   * `name`
    #
    #   * `platform`
    #
    #   * `supportedOsVersion`
    #
    #   * `type`
    #
    #   * `version`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] by_name
    #   Returns the list of component build versions for the specified name.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_version_list
    #   The list of component semantic versions.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    </note>
    #   @return [Array<Types::ComponentVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :request_id,
      :component_version_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListContainerRecipesRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] owner
    #   Returns container recipes belonging to the specified owner, that
    #   have been shared with you. You can omit this field to return
    #   container recipes belonging to your account.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `containerType`
    #
    #   * `name`
    #
    #   * `parentImage`
    #
    #   * `platform`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Provides a token for pagination, which determines where to begin the
    #   next set of results when the current set reaches the maximum for one
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListContainerRecipesRequest AWS API Documentation
    #
    class ListContainerRecipesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_summary_list
    #   The list of container recipes returned for the request.
    #   @return [Array<Types::ContainerRecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token field is used for paginated responses. When this is
    #   not empty, there are additional container recipes that the service
    #   has not included in this response. Use this token with the next
    #   request to retrieve additional list items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListContainerRecipesResponse AWS API Documentation
    #
    class ListContainerRecipesResponse < Struct.new(
      :request_id,
      :container_recipe_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDistributionConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filters
    #   You can filter on `name` to streamline results.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurationsRequest AWS API Documentation
    #
    class ListDistributionConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_summary_list
    #   The list of distributions.
    #   @return [Array<Types::DistributionConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListDistributionConfigurationsResponse AWS API Documentation
    #
    class ListDistributionConfigurationsResponse < Struct.new(
      :request_id,
      :distribution_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImageBuildVersionsRequest
    #   data as a hash:
    #
    #       {
    #         image_version_arn: "ImageVersionArn", # required
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] image_version_arn
    #   The Amazon Resource Name (ARN) of the image whose build versions you
    #   want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `osVersion`
    #
    #   * `platform`
    #
    #   * `type`
    #
    #   * `version`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersionsRequest AWS API Documentation
    #
    class ListImageBuildVersionsRequest < Struct.new(
      :image_version_arn,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_summary_list
    #   The list of image build versions.
    #   @return [Array<Types::ImageSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageBuildVersionsResponse AWS API Documentation
    #
    class ListImageBuildVersionsResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagePackagesRequest
    #   data as a hash:
    #
    #       {
    #         image_build_version_arn: "ImageBuildVersionArn", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] image_build_version_arn
    #   Filter results for the ListImagePackages request by the Image Build
    #   Version ARN
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maxiumum number of results to return from the ListImagePackages
    #   request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePackagesRequest AWS API Documentation
    #
    class ListImagePackagesRequest < Struct.new(
      :image_build_version_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_package_list
    #   The list of Image Packages returned in the response.
    #   @return [Array<Types::ImagePackage>]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePackagesResponse AWS API Documentation
    #
    class ListImagePackagesResponse < Struct.new(
      :request_id,
      :image_package_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagePipelineImagesRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline whose images
    #   you want to view.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `version`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImagesRequest AWS API Documentation
    #
    class ListImagePipelineImagesRequest < Struct.new(
      :image_pipeline_arn,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_summary_list
    #   The list of images built by this pipeline.
    #   @return [Array<Types::ImageSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelineImagesResponse AWS API Documentation
    #
    class ListImagePipelineImagesResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagePipelinesRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `description`
    #
    #   * `distributionConfigurationArn`
    #
    #   * `imageRecipeArn`
    #
    #   * `infrastructureConfigurationArn`
    #
    #   * `name`
    #
    #   * `status`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelinesRequest AWS API Documentation
    #
    class ListImagePipelinesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_list
    #   The list of image pipelines.
    #   @return [Array<Types::ImagePipeline>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagePipelinesResponse AWS API Documentation
    #
    class ListImagePipelinesResponse < Struct.new(
      :request_id,
      :image_pipeline_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImageRecipesRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which image recipes you want to list. By default,
    #   this request will only show image recipes owned by your account. You
    #   can use this field to specify if you want to view image recipes
    #   owned by yourself, by Amazon, or those image recipes that have been
    #   shared with you by other customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `parentImage`
    #
    #   * `platform`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipesRequest AWS API Documentation
    #
    class ListImageRecipesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_summary_list
    #   The list of image pipelines.
    #   @return [Array<Types::ImageRecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageRecipesResponse AWS API Documentation
    #
    class ListImageRecipesResponse < Struct.new(
      :request_id,
      :image_recipe_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImagesRequest
    #   data as a hash:
    #
    #       {
    #         owner: "Self", # accepts Self, Shared, Amazon
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         by_name: false,
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #         include_deprecated: false,
    #       }
    #
    # @!attribute [rw] owner
    #   The owner defines which images you want to list. By default, this
    #   request will only show images owned by your account. You can use
    #   this field to specify if you want to view images owned by yourself,
    #   by Amazon, or those images that have been shared with you by other
    #   customers.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Use the following filters to streamline results:
    #
    #   * `name`
    #
    #   * `osVersion`
    #
    #   * `platform`
    #
    #   * `type`
    #
    #   * `version`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] by_name
    #   Requests a list of images with a specific recipe name.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] include_deprecated
    #   Includes deprecated images in the response list.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagesRequest AWS API Documentation
    #
    class ListImagesRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      :include_deprecated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_version_list
    #   The list of image semantic versions.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Filtering:** With semantic versioning, you have the flexibility to
    #   use wildcards (x) to specify the most recent versions or nodes when
    #   selecting the base image or components for your recipe. When you use
    #   a wildcard in any node, all nodes to the right of the first wildcard
    #   must also be wildcards.
    #
    #    </note>
    #   @return [Array<Types::ImageVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImagesResponse AWS API Documentation
    #
    class ListImagesResponse < Struct.new(
      :request_id,
      :image_version_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInfrastructureConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "FilterName",
    #             values: ["FilterValue"],
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] filters
    #   You can filter on `name` to streamline results.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurationsRequest AWS API Documentation
    #
    class ListInfrastructureConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_summary_list
    #   The list of infrastructure configurations.
    #   @return [Array<Types::InfrastructureConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this is not empty,
    #   there are additional elements that the service has not included in
    #   this request. Use this token with the next request to retrieve
    #   additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListInfrastructureConfigurationsResponse AWS API Documentation
    #
    class ListInfrastructureConfigurationsResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags you want
    #   to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the specified resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Logging configuration defines where Image Builder uploads your logs.
    #
    # @note When making an API call, you may pass Logging
    #   data as a hash:
    #
    #       {
    #         s3_logs: {
    #           s3_bucket_name: "NonEmptyString",
    #           s3_key_prefix: "NonEmptyString",
    #         },
    #       }
    #
    # @!attribute [rw] s3_logs
    #   The Amazon S3 logging configuration.
    #   @return [Types::S3Logs]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Logging AWS API Documentation
    #
    class Logging < Struct.new(
      :s3_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resources produced by this image.
    #
    # @!attribute [rw] amis
    #   The Amazon EC2 AMIs created by this image.
    #   @return [Array<Types::Ami>]
    #
    # @!attribute [rw] containers
    #   Container images that the pipeline has generated and stored in the
    #   output repository.
    #   @return [Array<Types::Container>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/OutputResources AWS API Documentation
    #
    class OutputResources < Struct.new(
      :amis,
      :containers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutComponentPolicyRequest
    #   data as a hash:
    #
    #       {
    #         component_arn: "ComponentBuildVersionArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy
    #   should be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicyRequest AWS API Documentation
    #
    class PutComponentPolicyRequest < Struct.new(
      :component_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component that this policy was
    #   applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutComponentPolicyResponse AWS API Documentation
    #
    class PutComponentPolicyResponse < Struct.new(
      :request_id,
      :component_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutContainerRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         container_recipe_arn: "ContainerRecipeArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that this
    #   policy should be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply to the container recipe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutContainerRecipePolicyRequest AWS API Documentation
    #
    class PutContainerRecipePolicyRequest < Struct.new(
      :container_recipe_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that this
    #   policy was applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutContainerRecipePolicyResponse AWS API Documentation
    #
    class PutContainerRecipePolicyResponse < Struct.new(
      :request_id,
      :container_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImagePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_arn: "ImageBuildVersionArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy should
    #   be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicyRequest AWS API Documentation
    #
    class PutImagePolicyRequest < Struct.new(
      :image_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_arn
    #   The Amazon Resource Name (ARN) of the image that this policy was
    #   applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImagePolicyResponse AWS API Documentation
    #
    class PutImagePolicyResponse < Struct.new(
      :request_id,
      :image_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutImageRecipePolicyRequest
    #   data as a hash:
    #
    #       {
    #         image_recipe_arn: "ImageRecipeArn", # required
    #         policy: "ResourcePolicyDocument", # required
    #       }
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   should be applied to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy to apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicyRequest AWS API Documentation
    #
    class PutImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that this policy
    #   was applied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PutImageRecipePolicyResponse AWS API Documentation
    #
    class PutImageRecipePolicyResponse < Struct.new(
      :request_id,
      :image_recipe_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you are trying to create already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have attempted to mutate or delete a resource with a dependency
    # that prohibits this action. See the error message for more details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceDependencyException AWS API Documentation
    #
    class ResourceDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource that you are trying to operate on is currently in use.
    # Review the message details and retry later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # At least one of the resources referenced by your request does not
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that configure export from your build instance to a
    # compatible file format for your VM.
    #
    # @note When making an API call, you may pass S3ExportConfiguration
    #   data as a hash:
    #
    #       {
    #         role_name: "NonEmptyString", # required
    #         disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #         s3_bucket: "NonEmptyString", # required
    #         s3_prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role that grants VM Import/Export permission to
    #   export images to your S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] disk_image_format
    #   Export the updated image to one of the following supported disk
    #   image formats:
    #
    #   * **Virtual Hard Disk (VHD)** – Compatible with Citrix Xen and
    #     Microsoft Hyper-V virtualization products.
    #
    #   * **Stream-optimized ESX Virtual Machine Disk (VMDK)** – Compatible
    #     with VMware ESX and VMware vSphere versions 4, 5, and 6.
    #
    #   * **Raw** – Raw format.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket in which to store the output disk images for your VM.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The Amazon S3 path for the bucket where the output disk images for
    #   your VM are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/S3ExportConfiguration AWS API Documentation
    #
    class S3ExportConfiguration < Struct.new(
      :role_name,
      :disk_image_format,
      :s3_bucket,
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 logging configuration.
    #
    # @note When making an API call, you may pass S3Logs
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "NonEmptyString",
    #         s3_key_prefix: "NonEmptyString",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The S3 bucket in which to store the logs.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The Amazon S3 path to the bucket where the logs are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/S3Logs AWS API Documentation
    #
    class S3Logs < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A schedule configures how often and when a pipeline will automatically
    # create a new image.
    #
    # @note When making an API call, you may pass Schedule
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "NonEmptyString",
    #         timezone: "Timezone",
    #         pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #       }
    #
    # @!attribute [rw] schedule_expression
    #   The cron expression determines how often EC2 Image Builder evaluates
    #   your `pipelineExecutionStartCondition`.
    #
    #   For information on how to format a cron expression in Image Builder,
    #   see [Use cron expressions in EC2 Image Builder][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html
    #   @return [String]
    #
    # @!attribute [rw] timezone
    #   The timezone that applies to the scheduling expression. For example,
    #   "Etc/UTC", "America/Los\_Angeles" in the [IANA timezone
    #   format][1]. If not specified this defaults to UTC.
    #
    #
    #
    #   [1]: https://www.joda.org/joda-time/timezones.html
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_start_condition
    #   The condition configures when the pipeline should trigger a new
    #   image build. When the `pipelineExecutionStartCondition` is set to
    #   `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE`, and you use
    #   semantic version filters on the base image or components in your
    #   image recipe, EC2 Image Builder will build a new image only when
    #   there are new versions of the image or components in your recipe
    #   that match the semantic version filter. When it is set to
    #   `EXPRESSION_MATCH_ONLY`, it will build a new image every time the
    #   CRON expression matches the current time. For semantic version
    #   syntax, see [CreateComponent][1] in the <i> EC2 Image Builder API
    #   Reference</i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :timezone,
      :pipeline_execution_start_condition)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the service encounters an unrecoverable
    # exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the number of permitted resources or operations for
    # this service. For service quotas, see [EC2 Image Builder endpoints and
    # quotas][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html#limits_imagebuilder
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is unable to process your request at this time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImagePipelineExecutionRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to manually invoke.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecutionRequest AWS API Documentation
    #
    class StartImagePipelineExecutionRequest < Struct.new(
      :image_pipeline_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that was created by this
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecutionResponse AWS API Documentation
    #
    class StartImagePipelineExecutionResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings for the Systems Manager agent on your build
    # instance.
    #
    # @note When making an API call, you may pass SystemsManagerAgent
    #   data as a hash:
    #
    #       {
    #         uninstall_after_build: false,
    #       }
    #
    # @!attribute [rw] uninstall_after_build
    #   Controls whether the Systems Manager agent is removed from your
    #   final build image, prior to creating the new AMI. If this is set to
    #   true, then the agent is removed from the final image. If it's set
    #   to false, then the agent is left in, so that it is included in the
    #   new AMI. The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SystemsManagerAgent AWS API Documentation
    #
    class SystemsManagerAgent < Struct.new(
      :uninstall_after_build)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The container repository where the output container image is stored.
    #
    # @note When making an API call, you may pass TargetContainerRepository
    #   data as a hash:
    #
    #       {
    #         service: "ECR", # required, accepts ECR
    #         repository_name: "NonEmptyString", # required
    #       }
    #
    # @!attribute [rw] service
    #   Specifies the service in which this image was registered.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The name of the container repository where the output container
    #   image is stored. This name is prefixed by the repository location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TargetContainerRepository AWS API Documentation
    #
    class TargetContainerRepository < Struct.new(
      :service,
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ImageBuilderArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDistributionConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         distribution_configuration_arn: "DistributionConfigurationArn", # required
    #         description: "NonEmptyString",
    #         distributions: [ # required
    #           {
    #             region: "NonEmptyString", # required
    #             ami_distribution_configuration: {
    #               name: "AmiNameString",
    #               description: "NonEmptyString",
    #               target_account_ids: ["AccountId"],
    #               ami_tags: {
    #                 "TagKey" => "TagValue",
    #               },
    #               kms_key_id: "NonEmptyString",
    #               launch_permission: {
    #                 user_ids: ["AccountId"],
    #                 user_groups: ["NonEmptyString"],
    #                 organization_arns: ["OrganizationArn"],
    #                 organizational_unit_arns: ["OrganizationalUnitArn"],
    #               },
    #             },
    #             container_distribution_configuration: {
    #               description: "NonEmptyString",
    #               container_tags: ["NonEmptyString"],
    #               target_repository: { # required
    #                 service: "ECR", # required, accepts ECR
    #                 repository_name: "NonEmptyString", # required
    #               },
    #             },
    #             license_configuration_arns: ["LicenseConfigurationArn"],
    #             launch_template_configurations: [
    #               {
    #                 launch_template_id: "LaunchTemplateId", # required
    #                 account_id: "AccountId",
    #                 set_default_version: false,
    #               },
    #             ],
    #             s3_export_configuration: {
    #               role_name: "NonEmptyString", # required
    #               disk_image_format: "VMDK", # required, accepts VMDK, RAW, VHD
    #               s3_bucket: "NonEmptyString", # required
    #               s3_prefix: "NonEmptyString",
    #             },
    #             fast_launch_configurations: [
    #               {
    #                 enabled: false, # required
    #                 snapshot_configuration: {
    #                   target_resource_count: 1,
    #                 },
    #                 max_parallel_launches: 1,
    #                 launch_template: {
    #                   launch_template_id: "LaunchTemplateId",
    #                   launch_template_name: "NonEmptyString",
    #                   launch_template_version: "NonEmptyString",
    #                 },
    #                 account_id: "AccountId",
    #               },
    #             ],
    #           },
    #         ],
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distributions of the distribution configuration.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] client_token
    #   The idempotency token of the distribution configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfigurationRequest AWS API Documentation
    #
    class UpdateDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn,
      :description,
      :distributions,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that was updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateDistributionConfigurationResponse AWS API Documentation
    #
    class UpdateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateImagePipelineRequest
    #   data as a hash:
    #
    #       {
    #         image_pipeline_arn: "ImagePipelineArn", # required
    #         description: "NonEmptyString",
    #         image_recipe_arn: "ImageRecipeArn",
    #         container_recipe_arn: "ContainerRecipeArn",
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         distribution_configuration_arn: "DistributionConfigurationArn",
    #         image_tests_configuration: {
    #           image_tests_enabled: false,
    #           timeout_minutes: 1,
    #         },
    #         enhanced_image_metadata_enabled: false,
    #         schedule: {
    #           schedule_expression: "NonEmptyString",
    #           timezone: "Timezone",
    #           pipeline_execution_start_condition: "EXPRESSION_MATCH_ONLY", # accepts EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE
    #         },
    #         status: "DISABLED", # accepts DISABLED, ENABLED
    #         client_token: "ClientToken", # required
    #       }
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that will be used
    #   to configure images updated by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that will be used to build images updated by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that will be used to configure and distribute images updated by this
    #   image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image test configuration of the image pipeline.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Collects additional information about the image being created,
    #   including the operating system (OS) version and package list. This
    #   information is used to enhance the overall experience of using EC2
    #   Image Builder. Enabled by default.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipelineRequest AWS API Documentation
    #
    class UpdateImagePipelineRequest < Struct.new(
      :image_pipeline_arn,
      :description,
      :image_recipe_arn,
      :container_recipe_arn,
      :infrastructure_configuration_arn,
      :distribution_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :schedule,
      :status,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that was
    #   updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateImagePipelineResponse AWS API Documentation
    #
    class UpdateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateInfrastructureConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         infrastructure_configuration_arn: "InfrastructureConfigurationArn", # required
    #         description: "NonEmptyString",
    #         instance_types: ["InstanceType"],
    #         instance_profile_name: "InstanceProfileNameType", # required
    #         security_group_ids: ["NonEmptyString"],
    #         subnet_id: "NonEmptyString",
    #         logging: {
    #           s3_logs: {
    #             s3_bucket_name: "NonEmptyString",
    #             s3_key_prefix: "NonEmptyString",
    #           },
    #         },
    #         key_pair: "NonEmptyString",
    #         terminate_instance_on_failure: false,
    #         sns_topic_arn: "SnsTopicArn",
    #         client_token: "ClientToken", # required
    #         resource_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         instance_metadata_options: {
    #           http_tokens: "HttpTokens",
    #           http_put_response_hop_limit: 1,
    #         },
    #       }
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. The
    #   service will pick one of these instance types based on availability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID to place the instance used to customize your Amazon
    #   EC2 AMI in.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. You can use this
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   The terminate instance on failure setting of the infrastructure
    #   configuration. Set to false if you want Image Builder to retain the
    #   instance used to configure your AMI if the build or test phase of
    #   your workflow fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) for the SNS topic to which we send
    #   image build event notifications.
    #
    #   <note markdown="1"> EC2 Image Builder is unable to send notifications to SNS topics that
    #   are encrypted using keys from other accounts. The key that is used
    #   to encrypt the SNS topic must reside in the account that the Image
    #   Builder service runs under.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags attached to the resource created by Image Builder.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_metadata_options
    #   The instance metadata options that you can set for the HTTP requests
    #   that pipeline builds use to launch EC2 build and test instances. For
    #   more information about instance metadata options, see one of the
    #   following links:
    #
    #   * [Configure the instance metadata options][1] in the <i> <i>Amazon
    #     EC2 User Guide</i> </i> for Linux instances.
    #
    #   * [Configure the instance metadata options][2] in the <i> <i>Amazon
    #     EC2 Windows Guide</i> </i> for Windows instances.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html
    #   @return [Types::InstanceMetadataOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfigurationRequest AWS API Documentation
    #
    class UpdateInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :sns_topic_arn,
      :client_token,
      :resource_tags,
      :instance_metadata_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The idempotency token used to make this request idempotent.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that was updated by this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateInfrastructureConfigurationResponse AWS API Documentation
    #
    class UpdateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
