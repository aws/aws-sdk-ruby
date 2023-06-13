# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Imagebuilder
  module Types

    # Contains counts of vulnerability findings from image scans that run
    # when you create new Image Builder images, or build new versions of
    # existing images. The vulnerability counts are grouped by severity
    # level. The counts are aggregated across resources to create the final
    # tally for the account that owns them.
    #
    # @!attribute [rw] account_id
    #   Identifies the account that owns the aggregated resource findings.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   Counts by severity level for medium severity and higher level
    #   findings, plus a total for all of the findings.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AccountAggregation AWS API Documentation
    #
    class AccountAggregation < Struct.new(
      :account_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # In addition to your infrastructure configuration, these settings
    # provide an extra layer of control over your build instances. You can
    # also specify commands to run on launch for all of your build
    # instances.
    #
    # Image Builder does not automatically install the Systems Manager agent
    # on Windows instances. If your base image includes the Systems Manager
    # agent, then the AMI that you create will also include the agent. For
    # Linux instances, if the base image does not already include the
    # Systems Manager agent, Image Builder installs it. For Linux instances
    # where Image Builder installs the Systems Manager agent, you can choose
    # whether to keep it for the AMI that you create.
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
    #   `IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$`:
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
    #   Image status and the reason for that status.
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

    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to cancel
    #   creation for.
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
    #   The ARN of the image whose creation this request canceled.
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
    #   The component type specifies whether Image Builder uses the
    #   component to build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version supported by the component. If the
    #   OS information is available, Image Builder performs a prefix match
    #   against the base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   Describes the current status of the component. This is used for
    #   components that are no longer active.
    #   @return [Types::ComponentState]
    #
    # @!attribute [rw] parameters
    #   Contains parameter details for each of the parameters that the
    #   component document defined for the component.
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
    #   The date that Image Builder created the component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] publisher
    #   Contains the name of the publisher if this is a third-party
    #   component. Otherwise, this property is empty.
    #   @return [String]
    #
    # @!attribute [rw] obfuscate
    #   Indicates whether component source is hidden from view in the
    #   console, and from component detail results for API, CLI, or SDK
    #   operations.
    #   @return [Boolean]
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
      :tags,
      :publisher,
      :obfuscate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details of the component.
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A group of parameter settings that Image Builder uses to configure
    #   the component for a specific recipe.
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
    #   The operating system platform of the component.
    #   @return [String]
    #
    # @!attribute [rw] supported_os_versions
    #   The operating system (OS) version that the component supports. If
    #   the OS information is available, Image Builder performs a prefix
    #   match against the base image OS version during image recipe
    #   creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state
    #   Describes the current status of the component.
    #   @return [Types::ComponentState]
    #
    # @!attribute [rw] type
    #   The component type specifies whether Image Builder uses the
    #   component to build the image or only to test it.
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
    #   The change description for the current version of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The original creation date of the component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] publisher
    #   Contains the name of the publisher if this is a third-party
    #   component. Otherwise, this property is empty.
    #   @return [String]
    #
    # @!attribute [rw] obfuscate
    #   Indicates whether component source is hidden from view in the
    #   console, and from component detail results for API, CLI, or SDK
    #   operations.
    #   @return [Boolean]
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
      :tags,
      :publisher,
      :obfuscate)
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
    #   Build and test components that are included in the container recipe.
    #   Recipes require a minimum of one build component, and can have a
    #   maximum of 20 build and test components in any combination.
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
    #   Describes the contents of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description of the component. Describes what change has
    #   been made in this version, or what makes this version different from
    #   other versions of this component.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform of the component.
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
    #   The ID of the KMS key that is used to encrypt this component.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the component.
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
    #   The Amazon Resource Name (ARN) of the component that this request
    #   created.
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
    #   recipe. Recipes require a minimum of one build component, and can
    #   have a maximum of 20 build and test components in any combination.
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
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #   @return [Types::ImageScanningConfiguration]
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
      :client_token,
      :image_scanning_configuration)
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
    #   The components included in the image recipe.
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
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #   @return [Types::ImageScanningConfiguration]
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
      :client_token,
      :image_scanning_configuration)
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
    #   The Amazon Resource Name (ARN) of the image that this request
    #   created.
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

    # Amazon Inspector generates a risk score for each finding. This score
    # helps you to prioritize findings, to focus on the most critical
    # findings and the most vulnerable resources. The score uses the Common
    # Vulnerability Scoring System (CVSS) format. This format is a
    # modification of the base CVSS score that the National Vulnerability
    # Database (NVD) provides. For more information about severity levels,
    # see [Severity levels for Amazon Inspector findings][1] in the *Amazon
    # Inspector User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html
    #
    # @!attribute [rw] base_score
    #   The CVSS base score.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   The vector string of the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The CVSS version that generated the score.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the CVSS score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CvssScore AWS API Documentation
    #
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :version,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an adjustment that Amazon Inspector made to the CVSS
    # score for a finding.
    #
    # @!attribute [rw] metric
    #   The metric that Amazon Inspector used to adjust the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the CVSS score adjustment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CvssScoreAdjustment AWS API Documentation
    #
    class CvssScoreAdjustment < Struct.new(
      :metric,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the source of the score, and the factors that determined
    # the adjustments to create the final score.
    #
    # @!attribute [rw] score_source
    #   The source for the CVSS score.
    #   @return [String]
    #
    # @!attribute [rw] cvss_source
    #   The source of the finding.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The CVSS version that generated the score.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The CVSS score.
    #   @return [Float]
    #
    # @!attribute [rw] scoring_vector
    #   A vector that measures the severity of the vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] adjustments
    #   An object that contains details about an adjustment that Amazon
    #   Inspector made to the CVSS score for the finding.
    #   @return [Array<Types::CvssScoreAdjustment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CvssScoreDetails AWS API Documentation
    #
    class CvssScoreDetails < Struct.new(
      :score_source,
      :cvss_source,
      :version,
      :score,
      :scoring_vector,
      :adjustments)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The ARN of the component build version that this request deleted.
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
    #   The ARN of the Image Builder image resource that this request
    #   deleted.
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

    # Settings that Image Builder uses to configure the ECR repository and
    # the output container images that Amazon Inspector scans.
    #
    # @!attribute [rw] repository_name
    #   The name of the container repository that Amazon Inspector scans to
    #   identify findings for your container images. The name includes the
    #   path for the repository location. If you don’t provide this
    #   information, Image Builder creates a repository in your account
    #   named `image-builder-image-scanning-repository` for vulnerability
    #   scans of your output container images.
    #   @return [String]
    #
    # @!attribute [rw] container_tags
    #   Tags for Image Builder to apply to the output container image that
    #   &amp;INS; scans. Tags can help you identify and manage your scanned
    #   images.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/EcrConfiguration AWS API Documentation
    #
    class EcrConfiguration < Struct.new(
      :repository_name,
      :container_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Define and configure faster launching for output Windows AMIs.
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

    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that you want to
    #   get. Regex requires the suffix `/\d+$`.
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

    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to get.
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

    # @!attribute [rw] workflow_execution_id
    #   Use the unique identifier for a runtime instance of the workflow to
    #   get runtime details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowExecutionRequest AWS API Documentation
    #
    class GetWorkflowExecutionRequest < Struct.new(
      :workflow_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the build version for the Image
    #   Builder workflow resource that defines the specified runtime
    #   instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image resource build version
    #   that the specified runtime instance of the workflow created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of workflow that Image Builder ran for the specified
    #   runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current runtime status for the specified runtime instance of the
    #   workflow.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the specified runtime instance of the
    #   workflow, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] total_step_count
    #   The total number of steps in the specified runtime instance of the
    #   workflow that ran. This number should equal the sum of the step
    #   counts for steps that succeeded, were skipped, and failed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_succeeded
    #   A runtime count for the number of steps that ran successfully in the
    #   specified runtime instance of the workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_failed
    #   A runtime count for the number of steps that failed in the specified
    #   runtime instance of the workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_skipped
    #   A runtime count for the number of steps that were skipped in the
    #   specified runtime instance of the workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the specified runtime instance of the workflow
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the specified runtime instance of the workflow
    #   finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowExecutionResponse AWS API Documentation
    #
    class GetWorkflowExecutionResponse < Struct.new(
      :request_id,
      :workflow_build_version_arn,
      :workflow_execution_id,
      :image_build_version_arn,
      :type,
      :status,
      :message,
      :total_step_count,
      :total_steps_succeeded,
      :total_steps_failed,
      :total_steps_skipped,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_execution_id
    #   Use the unique identifier for a specific runtime instance of the
    #   workflow step to get runtime details for that step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowStepExecutionRequest AWS API Documentation
    #
    class GetWorkflowStepExecutionRequest < Struct.new(
      :step_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] step_execution_id
    #   The unique identifier for the runtime version of the workflow step
    #   that you specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the build version for the Image
    #   Builder workflow resource that defines this workflow step.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image resource build version
    #   that the specified runtime instance of the workflow step creates.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified runtime instance of the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes the specified workflow step.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The name of the action that the specified step performs.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status for the specified runtime version of the workflow
    #   step.
    #   @return [String]
    #
    # @!attribute [rw] rollback_status
    #   Reports on the rollback status of the specified runtime version of
    #   the workflow step, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the specified runtime instance of the
    #   workflow step, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Input parameters that Image Builder provided for the specified
    #   runtime instance of the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The file names that the specified runtime version of the workflow
    #   step created as output.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the specified runtime version of the workflow
    #   step started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the specified runtime instance of the workflow
    #   step finished.
    #   @return [String]
    #
    # @!attribute [rw] on_failure
    #   The action to perform if the workflow step fails.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration in seconds for this step to complete its
    #   action.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowStepExecutionResponse AWS API Documentation
    #
    class GetWorkflowStepExecutionResponse < Struct.new(
      :request_id,
      :step_execution_id,
      :workflow_build_version_arn,
      :workflow_execution_id,
      :image_build_version_arn,
      :name,
      :description,
      :action,
      :status,
      :rollback_status,
      :message,
      :inputs,
      :outputs,
      :start_time,
      :end_time,
      :on_failure,
      :timeout_seconds)
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
    #   Specifies whether this image produces an AMI or a container image.
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
    #   The image operating system platform, such as Linux or Windows.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Indicates whether Image Builder collects additional information
    #   about the image, such as the operating system (OS) version and
    #   package list.
    #   @return [Boolean]
    #
    # @!attribute [rw] os_version
    #   The operating system version for instances that launch from this
    #   image. For example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows
    #   Server 2019.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the image.
    #   @return [Types::ImageState]
    #
    # @!attribute [rw] image_recipe
    #   For images that distribute an AMI, this is the image recipe that
    #   Image Builder used to create the image. For container images, this
    #   is empty.
    #   @return [Types::ImageRecipe]
    #
    # @!attribute [rw] container_recipe
    #   For container images, this is the container recipe that Image
    #   Builder used to create the image. For images that distribute an AMI,
    #   this is empty.
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
    #   The infrastructure that Image Builder used to create this image.
    #   @return [Types::InfrastructureConfiguration]
    #
    # @!attribute [rw] distribution_configuration
    #   The distribution configuration that Image Builder used to create
    #   this image.
    #   @return [Types::DistributionConfiguration]
    #
    # @!attribute [rw] image_tests_configuration
    #   The image tests that ran when that Image Builder created this image.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] date_created
    #   The date on which Image Builder created this image.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources that Image Builder produces for this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags that apply to this image.
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
    # @!attribute [rw] image_source
    #   The origin of the base image that Image Builder used to build this
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] scan_state
    #   Contains information about the current state of scans for this
    #   image.
    #   @return [Types::ImageScanState]
    #
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #   @return [Types::ImageScanningConfiguration]
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
      :build_type,
      :image_source,
      :scan_state,
      :image_scanning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains vulnerability counts for a specific image.
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) that identifies the image for this
    #   aggregation.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   Counts by severity level for medium severity and higher level
    #   findings, plus a total for all of the findings for the specified
    #   image.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageAggregation AWS API Documentation
    #
    class ImageAggregation < Struct.new(
      :image_build_version_arn,
      :severity_counts)
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
    #   This is no longer supported, and does not return a value.
    #   @return [String]
    #
    # @!attribute [rw] date_next_run
    #   The next date when the pipeline is scheduled to run.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of this image pipeline.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #   @return [Types::ImageScanningConfiguration]
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
      :tags,
      :image_scanning_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains vulnerability counts for a specific image pipeline.
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) that identifies the image pipeline
    #   for this aggregation.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   Counts by severity level for medium severity and higher level
    #   findings, plus a total for all of the findings for the specified
    #   image pipeline.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImagePipelineAggregation AWS API Documentation
    #
    class ImagePipelineAggregation < Struct.new(
      :image_pipeline_arn,
      :severity_counts)
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
    #   The components that are included in the image recipe. Recipes
    #   require a minimum of one build component, and can have a maximum of
    #   20 build and test components in any combination.
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

    # Contains details about a vulnerability scan finding.
    #
    # @!attribute [rw] aws_account_id
    #   The Amazon Web Services account ID that's associated with the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version that's
    #   associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that's
    #   associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the finding. Image Builder looks for findings of the
    #   type `PACKAGE_VULNERABILITY` that apply to output images, and
    #   excludes other types.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the finding.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   An object that contains the details about how to remediate the
    #   finding.
    #   @return [Types::Remediation]
    #
    # @!attribute [rw] severity
    #   The severity of the finding.
    #   @return [String]
    #
    # @!attribute [rw] first_observed_at
    #   The date and time when the finding was first observed.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the finding was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] inspector_score
    #   The score that Amazon Inspector assigned for the finding.
    #   @return [Float]
    #
    # @!attribute [rw] inspector_score_details
    #   An object that contains details of the Amazon Inspector score.
    #   @return [Types::InspectorScoreDetails]
    #
    # @!attribute [rw] package_vulnerability_details
    #   An object that contains the details of a package vulnerability
    #   finding.
    #   @return [Types::PackageVulnerabilityDetails]
    #
    # @!attribute [rw] fix_available
    #   Details about whether a fix is available for any of the packages
    #   that are identified in the finding through a version update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageScanFinding AWS API Documentation
    #
    class ImageScanFinding < Struct.new(
      :aws_account_id,
      :image_build_version_arn,
      :image_pipeline_arn,
      :type,
      :description,
      :title,
      :remediation,
      :severity,
      :first_observed_at,
      :updated_at,
      :inspector_score,
      :inspector_score_details,
      :package_vulnerability_details,
      :fix_available)
      SENSITIVE = []
      include Aws::Structure
    end

    # This returns exactly one type of aggregation, based on the filter that
    # Image Builder applies in its API action.
    #
    # @!attribute [rw] account_aggregation
    #   Returns an object that contains severity counts based on an account
    #   ID.
    #   @return [Types::AccountAggregation]
    #
    # @!attribute [rw] image_aggregation
    #   Returns an object that contains severity counts based on the Amazon
    #   Resource Name (ARN) for a specific image.
    #   @return [Types::ImageAggregation]
    #
    # @!attribute [rw] image_pipeline_aggregation
    #   Returns an object that contains severity counts based on an image
    #   pipeline ARN.
    #   @return [Types::ImagePipelineAggregation]
    #
    # @!attribute [rw] vulnerability_id_aggregation
    #   Returns an object that contains severity counts based on
    #   vulnerability ID.
    #   @return [Types::VulnerabilityIdAggregation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageScanFindingAggregation AWS API Documentation
    #
    class ImageScanFindingAggregation < Struct.new(
      :account_aggregation,
      :image_aggregation,
      :image_pipeline_aggregation,
      :vulnerability_id_aggregation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A name value pair that Image Builder applies to streamline results
    # from the vulnerability scan findings list action.
    #
    # @!attribute [rw] name
    #   The name of the image scan finding filter. Filter names are
    #   case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter values. Filter values are case-sensitive.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageScanFindingsFilter AWS API Documentation
    #
    class ImageScanFindingsFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the vulnerability scan status for a specific image, and the
    # reason for that status.
    #
    # @!attribute [rw] status
    #   The current state of vulnerability scans for the image.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the scan status for the image.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageScanState AWS API Documentation
    #
    class ImageScanState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings for Image Builder image resource and container image
    # scans.
    #
    # @!attribute [rw] image_scanning_enabled
    #   A setting that indicates whether Image Builder keeps a snapshot of
    #   the vulnerability scans that Amazon Inspector runs against the build
    #   instance when you create a new image.
    #   @return [Boolean]
    #
    # @!attribute [rw] ecr_configuration
    #   Contains Amazon ECR settings for vulnerability scans.
    #   @return [Types::EcrConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageScanningConfiguration AWS API Documentation
    #
    class ImageScanningConfiguration < Struct.new(
      :image_scanning_enabled,
      :ecr_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Image status and the reason for that status.
    #
    # @!attribute [rw] status
    #   The status of the image.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the status of the image.
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
    #   Specifies whether this image produces an AMI or a container image.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the image.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The image operating system platform, such as Linux or Windows.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version of the instances that launch from this
    #   image. For example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows
    #   Server 2019.
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
    #   The date on which Image Builder created this image.
    #   @return [String]
    #
    # @!attribute [rw] output_resources
    #   The output resources that Image Builder produced when it created
    #   this image.
    #   @return [Types::OutputResources]
    #
    # @!attribute [rw] tags
    #   The tags that apply to this image.
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
    # @!attribute [rw] image_source
    #   The origin of the base image that Image Builder used to build this
    #   image.
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
      :build_type,
      :image_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure image tests for your pipeline build. Tests run after
    # building the image, to verify that the AMI or container image is valid
    # before distributing it.
    #
    # @!attribute [rw] image_tests_enabled
    #   Determines if tests should run after building the image. Image
    #   Builder defaults to enable tests to run following the image build,
    #   before image distribution.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum time in minutes that tests are permitted to run.
    #
    #   <note markdown="1"> The timeoutMinutes attribute is not currently active. This value is
    #   ignored.
    #
    #    </note>
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
    #   Specifies whether this image produces an AMI or a container image.
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
    #   The operating system platform of the image version, for example
    #   "Windows" or "Linux".
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
    # @!attribute [rw] image_source
    #   The origin of the base image that Image Builder used to build this
    #   image.
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
      :build_type,
      :image_source)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The change description of the component. This description indicates
    #   the change that has been made in this version, or what makes this
    #   version different from other versions of this component.
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

    # Information about the factors that influenced the score that Amazon
    # Inspector assigned for a finding.
    #
    # @!attribute [rw] adjusted_cvss
    #   An object that contains details about an adjustment that Amazon
    #   Inspector made to the CVSS score for the finding.
    #   @return [Types::CvssScoreDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/InspectorScoreDetails AWS API Documentation
    #
    class InspectorScoreDetails < Struct.new(
      :adjusted_cvss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines block device mappings for the instance used to configure your
    # image.
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
    #   traverse to reach its destination. The default is one hop. However,
    #   if HTTP tokens are required, container image builds need a minimum
    #   of two hops.
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

    # You have requested an action that that the service doesn't support.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] owner
    #   Filters results based on the type of owner for the component. By
    #   default, this request returns a list of components that your account
    #   owns. To see results for other types of owners, you can specify
    #   components that Amazon manages, third party components, or
    #   components that other accounts have shared with you.
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
    #   Returns the list of components for the specified name.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] image_build_version_arn
    #   Filter results for the ListImagePackages request by the Image Build
    #   Version ARN
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] filter
    #   A filter name and value pair that is used to return a more specific
    #   list of results from a list operation. Filters can be used to match
    #   a set of resources by specific criteria, such as tags, attributes,
    #   or IDs.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindingAggregationsRequest AWS API Documentation
    #
    class ListImageScanFindingAggregationsRequest < Struct.new(
      :filter,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_type
    #   The aggregation type specifies what type of key is used to group the
    #   image scan findings. Image Builder returns results based on the
    #   request filter. If you didn't specify a filter in the request, the
    #   type defaults to `accountId`.
    #
    #   **Aggregation types**
    #
    #   * accountId
    #
    #   * imageBuildVersionArn
    #
    #   * imagePipelineArn
    #
    #   * vulnerabilityId
    #
    #   Each aggregation includes counts by severity level for medium
    #   severity and higher level findings, plus a total for all of the
    #   findings for each key value.
    #   @return [String]
    #
    # @!attribute [rw] responses
    #   An array of image scan finding aggregations that match the filter
    #   criteria.
    #   @return [Array<Types::ImageScanFindingAggregation>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindingAggregationsResponse AWS API Documentation
    #
    class ListImageScanFindingAggregationsResponse < Struct.new(
      :request_id,
      :aggregation_type,
      :responses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   An array of name value pairs that you can use to filter your
    #   results. You can use the following filters to streamline results:
    #
    #   * `imageBuildVersionArn`
    #
    #   * `imagePipelineArn`
    #
    #   * `vulnerabilityId`
    #
    #   * `severity`
    #
    #   If you don't request a filter, then all findings in your account
    #   are listed.
    #   @return [Array<Types::ImageScanFindingsFilter>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindingsRequest AWS API Documentation
    #
    class ListImageScanFindingsRequest < Struct.new(
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
    # @!attribute [rw] findings
    #   The image scan findings for your account that meet your request
    #   filter criteria.
    #   @return [Array<Types::ImageScanFinding>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListImageScanFindingsResponse AWS API Documentation
    #
    class ListImageScanFindingsResponse < Struct.new(
      :request_id,
      :findings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
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

    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   List all workflow runtime instances for the specified image build
    #   version resource ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowExecutionsRequest AWS API Documentation
    #
    class ListWorkflowExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] workflow_executions
    #   Contains an array of runtime details that represents each time a
    #   workflow ran for the requested image build version.
    #   @return [Array<Types::WorkflowExecutionMetadata>]
    #
    # @!attribute [rw] image_build_version_arn
    #   The resource ARN of the image build version for which you requested
    #   a list of workflow runtime details.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the list action, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowExecutionsResponse AWS API Documentation
    #
    class ListWorkflowExecutionsResponse < Struct.new(
      :request_id,
      :workflow_executions,
      :image_build_version_arn,
      :message,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum items to return in a request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the NextToken
    #   from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowStepExecutionsRequest AWS API Documentation
    #
    class ListWorkflowStepExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   Contains an array of runtime details that represents each step in
    #   this runtime instance of the workflow.
    #   @return [Array<Types::WorkflowStepMetadata>]
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The build version ARN for the Image Builder workflow resource that
    #   defines the steps for this runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The image build version resource ARN that's associated with the
    #   specified runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the list action, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service has'ot
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowStepExecutionsResponse AWS API Documentation
    #
    class ListWorkflowStepExecutionsResponse < Struct.new(
      :request_id,
      :steps,
      :workflow_build_version_arn,
      :workflow_execution_id,
      :image_build_version_arn,
      :message,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Logging configuration defines where Image Builder uploads your logs.
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

    # Information about package vulnerability findings.
    #
    # @!attribute [rw] vulnerability_id
    #   A unique identifier for this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] vulnerable_packages
    #   The packages that this vulnerability impacts.
    #   @return [Array<Types::VulnerablePackage>]
    #
    # @!attribute [rw] source
    #   The source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] cvss
    #   CVSS scores for one or more vulnerabilities that Amazon Inspector
    #   identified for a package.
    #   @return [Array<Types::CvssScore>]
    #
    # @!attribute [rw] related_vulnerabilities
    #   Vulnerabilities that are often related to the findings for the
    #   package.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_url
    #   A link to the source of the vulnerability information.
    #   @return [String]
    #
    # @!attribute [rw] vendor_severity
    #   The severity that the vendor assigned to this vulnerability type.
    #   @return [String]
    #
    # @!attribute [rw] vendor_created_at
    #   The date and time when this vulnerability was first added to the
    #   vendor's database.
    #   @return [Time]
    #
    # @!attribute [rw] vendor_updated_at
    #   The date and time when the vendor last updated this vulnerability in
    #   their database.
    #   @return [Time]
    #
    # @!attribute [rw] reference_urls
    #   Links to web pages that contain details about the vulnerabilities
    #   that Amazon Inspector identified for the package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PackageVulnerabilityDetails AWS API Documentation
    #
    class PackageVulnerabilityDetails < Struct.new(
      :vulnerability_id,
      :vulnerable_packages,
      :source,
      :cvss,
      :related_vulnerabilities,
      :source_url,
      :vendor_severity,
      :vendor_created_at,
      :vendor_updated_at,
      :reference_urls)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Information about how to remediate a finding.
    #
    # @!attribute [rw] recommendation
    #   An object that contains information about the recommended course of
    #   action to remediate the finding.
    #   @return [Types::RemediationRecommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Remediation AWS API Documentation
    #
    class Remediation < Struct.new(
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the recommended course of action to remediate the
    # finding.
    #
    # @!attribute [rw] text
    #   The recommended course of action to remediate the finding.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A link to more information about the recommended remediation for
    #   this vulnerability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RemediationRecommendation AWS API Documentation
    #
    class RemediationRecommendation < Struct.new(
      :text,
      :url)
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

    # Includes counts by severity level for medium severity and higher level
    # findings, plus a total for all of the findings for the specified
    # filter.
    #
    # @!attribute [rw] all
    #   The total number of findings across all severity levels for the
    #   specified filter.
    #   @return [Integer]
    #
    # @!attribute [rw] critical
    #   The number of critical severity findings for the specified filter.
    #   @return [Integer]
    #
    # @!attribute [rw] high
    #   The number of high severity findings for the specified filter.
    #   @return [Integer]
    #
    # @!attribute [rw] medium
    #   The number of medium severity findings for the specified filter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SeverityCounts AWS API Documentation
    #
    class SeverityCounts < Struct.new(
      :all,
      :critical,
      :high,
      :medium)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   that Image Builder uses to build images that this image pipeline has
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that Image Builder uses to configure and distribute images that this
    #   image pipeline has updated.
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
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans.
    #   @return [Types::ImageScanningConfiguration]
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
      :client_token,
      :image_scanning_configuration)
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

    # Includes counts of image and pipeline resource findings by
    # vulnerability.
    #
    # @!attribute [rw] vulnerability_id
    #   The vulnerability Id for this set of counts.
    #   @return [String]
    #
    # @!attribute [rw] severity_counts
    #   Counts by severity level for medium severity and higher level
    #   findings, plus a total for all of the findings for the specified
    #   vulnerability.
    #   @return [Types::SeverityCounts]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/VulnerabilityIdAggregation AWS API Documentation
    #
    class VulnerabilityIdAggregation < Struct.new(
      :vulnerability_id,
      :severity_counts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a vulnerable package that Amazon Inspector
    # identifies in a finding.
    #
    # @!attribute [rw] name
    #   The name of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] source_layer_hash
    #   The source layer hash of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of the vulnerable package.
    #   @return [Integer]
    #
    # @!attribute [rw] release
    #   The release of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] arch
    #   The architecture of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The package manager of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file path of the vulnerable package.
    #   @return [String]
    #
    # @!attribute [rw] fixed_in_version
    #   The version of the package that contains the vulnerability fix.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The code to run in your environment to update packages with a fix
    #   available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/VulnerablePackage AWS API Documentation
    #
    class VulnerablePackage < Struct.new(
      :name,
      :version,
      :source_layer_hash,
      :epoch,
      :release,
      :arch,
      :package_manager,
      :file_path,
      :fixed_in_version,
      :remediation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata that includes details and status from this runtime instance
    # of the workflow.
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource build
    #   version that ran.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   Unique identifier that Image Builder assigns to keep track of
    #   runtime resources each time it runs a workflow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates what type of workflow that Image Builder ran for this
    #   runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current runtime status for this workflow.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The runtime output message from the workflow, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] total_step_count
    #   The total number of steps in the workflow. This should equal the sum
    #   of the step counts for steps that succeeded, were skipped, and
    #   failed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_succeeded
    #   A runtime count for the number of steps in the workflow that ran
    #   successfully.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_failed
    #   A runtime count for the number of steps in the workflow that failed.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps_skipped
    #   A runtime count for the number of steps in the workflow that were
    #   skipped.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the runtime instance of this workflow started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when this runtime instance of the workflow finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowExecutionMetadata AWS API Documentation
    #
    class WorkflowExecutionMetadata < Struct.new(
      :workflow_build_version_arn,
      :workflow_execution_id,
      :type,
      :status,
      :message,
      :total_step_count,
      :total_steps_succeeded,
      :total_steps_failed,
      :total_steps_skipped,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Runtime details and status for the workflow step.
    #
    # @!attribute [rw] step_execution_id
    #   A unique identifier for the workflow step, assigned at runtime.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The step action name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Runtime status for the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] rollback_status
    #   Reports on the rollback status of the step, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Detailed output message that the workflow step provides at runtime.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Input parameters that Image Builder provides for the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The file names that the workflow step created as output for this
    #   runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the workflow step started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the workflow step finished.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowStepMetadata AWS API Documentation
    #
    class WorkflowStepMetadata < Struct.new(
      :step_execution_id,
      :name,
      :description,
      :action,
      :status,
      :rollback_status,
      :message,
      :inputs,
      :outputs,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
