# frozen_string_literal: true

# This is generated code!

module Aws::Imagebuilder
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains counts of vulnerability findings from image scans that run when you create
    # 			new Image Builder images, or build new versions of existing images. The vulnerability counts are
    # 			grouped by severity level. The counts are aggregated across resources to create the
    # 			final tally for the account that owns them.</p>
    # @!attribute account_id
    #   <p>Identifies the account that owns the aggregated resource findings.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>Counts by severity level for medium severity and higher level findings, plus a total
    #   			for all of the findings.</p>
    #   @return [Types::SeverityCounts]
    class AccountAggregation < Struct.new(
      :account_id,
      :severity_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>In addition to your infrastructure configuration, these settings provide an extra
    # 			layer of control over your build instances. You can also specify commands to run on
    # 			launch for all of your build instances.</p>
    #          <p>Image Builder does not automatically install the Systems Manager agent on Windows instances. If your base
    # 			image includes the Systems Manager agent, then the AMI that you create will also include the
    # 			agent. For Linux instances, if the base image does not already include the Systems Manager agent,
    # 			Image Builder installs it. For Linux instances where Image Builder installs the Systems Manager agent, you can
    # 			choose whether to keep it for the AMI that you create.</p>
    # @!attribute systems_manager_agent
    #   <p>Contains settings for the Systems Manager agent on your build instance.</p>
    #   @return [Types::SystemsManagerAgent]
    # @!attribute user_data_override
    #   <p>Use this property to provide commands or a command script to run when you launch your
    #   			build instance.</p>
    #            <p>The userDataOverride property replaces any commands that Image Builder might have added to
    #   			ensure that Systems Manager is installed on your Linux build instance. If you override the user
    #   			data, make sure that you add commands to install Systems Manager, if it is not pre-installed on
    #   			your base image.</p>
    #            <note>
    #               <p>The user data is always base 64 encoded. For example, the following commands are
    #   				encoded as
    #   				<code>IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhci$</code>:</p>
    #               <p>
    #                  <i>#!/bin/bash</i>
    #               </p>
    #               <p>mkdir -p /var/bb/</p>
    #               <p>touch /var</p>
    #            </note>
    #   @return [String]
    class AdditionalInstanceConfiguration < Struct.new(
      :systems_manager_agent,
      :user_data_override,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an Amazon EC2 AMI.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region of the Amazon EC2 AMI.</p>
    #   @return [String]
    # @!attribute image
    #   <p>The AMI ID of the Amazon EC2 AMI.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Amazon EC2 AMI.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon EC2 AMI. Minimum and maximum length are in characters.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Image status and the reason for that status.</p>
    #   @return [Types::ImageState]
    # @!attribute account_id
    #   <p>The account ID of the owner of the AMI.</p>
    #   @return [String]
    class Ami < Struct.new(
      :region,
      :image,
      :name,
      :description,
      :state,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Define and configure the output AMIs of the pipeline.</p>
    # @!attribute name
    #   <p>The name of the output AMI.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the AMI distribution configuration. Minimum and maximum length are
    #   			in characters.</p>
    #   @return [String]
    # @!attribute target_account_ids
    #   <p>The ID of an account to which you want to distribute an image.</p>
    #   @return [Array<String>]
    # @!attribute ami_tags
    #   <p>The tags to apply to AMIs distributed to this Region.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt the distributed image. 
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute launch_permission
    #   <p>Launch permissions can be used to configure which Amazon Web Services accounts can use the AMI to
    #   			launch instances.</p>
    #   @return [Types::LaunchPermissionConfiguration]
    class AmiDistributionConfiguration < Struct.new(
      :name,
      :description,
      :target_account_ids,
      :ami_tags,
      :kms_key_id,
      :launch_permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the rules by which an image pipeline is automatically disabled when it fails.</p>
    # @!attribute failure_count
    #   <p>The number of consecutive scheduled image pipeline executions that must fail before Image Builder 
    #   			automatically disables the pipeline.</p>
    #   @return [Integer]
    class AutoDisablePolicy < Struct.new(
      :failure_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the permitted request rate for the specific operation.</p>
    # @!attribute message
    #   @return [String]
    class CallRateLimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to cancel creation
    #   			for.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CancelImageCreationRequest < Struct.new(
      :image_build_version_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The ARN of the image whose creation this request canceled.</p>
    #   @return [String]
    class CancelImageCreationResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>Identifies the specific runtime instance of the image lifecycle to cancel.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CancelLifecycleExecutionRequest < Struct.new(
      :lifecycle_execution_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>The unique identifier for the image lifecycle runtime instance that was canceled.</p>
    #   @return [String]
    class CancelLifecycleExecutionResponse < Struct.new(
      :lifecycle_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>These errors are usually caused by a client action, such as using an action or
    # 			resource on behalf of a user that doesn't have permissions to use the action or
    # 			resource, or specifying an invalid resource identifier.</p>
    # @!attribute message
    #   @return [String]
    class ClientException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A detailed view of a component.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>Describes what change has been made in this version of the component, 
    #   			or what makes this version different from other versions of the component.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The component type specifies whether Image Builder uses the component to build the image or
    #   			only to test it.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the component.</p>
    #   @return [String]
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If the OS information is
    #   			available, Image Builder performs a prefix match against the base image OS version during image
    #   			recipe creation.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>Describes the current status of the component.</p>
    #   @return [Types::ComponentState]
    # @!attribute parameters
    #   <p>Contains parameter details for each of the parameters that the component document 
    #   			defined for the component.</p>
    #   @return [Array<Types::ComponentParameterDetail>]
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Component data contains the YAML document content for the component.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier used to encrypt the component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>The encryption status of the component.</p>
    #   @return [Boolean]
    # @!attribute date_created
    #   <p>The date that Image Builder created the component.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute publisher
    #   <p>Contains the name of the publisher if this is a third-party component. Otherwise, 
    #   			this property is empty.</p>
    #   @return [String]
    # @!attribute obfuscate
    #   <p>Indicates whether component source is hidden from view in the console, and from 
    #   			component detail results for API, CLI, or SDK operations.</p>
    #   @return [Boolean]
    # @!attribute product_codes
    #   <p>Contains product codes that are used for billing purposes for Amazon Web Services Marketplace components.</p>
    #   @return [Array<Types::ProductCodeListItem>]
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
      :obfuscate,
      :product_codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:obfuscate] = false unless options.key?(:obfuscate)
        super
      end
    end

    # <p>Configuration details of the component.</p>
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A group of parameter settings that Image Builder uses to configure the component for a specific
    #   			recipe.</p>
    #   @return [Array<Types::ComponentParameter>]
    class ComponentConfiguration < Struct.new(
      :component_arn,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a key/value pair that sets the named component parameter.</p>
    # @!attribute name
    #   <p>The name of the component parameter to set.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Sets the value for the named component parameter.</p>
    #   @return [Array<String>]
    class ComponentParameter < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a parameter that is used to provide configuration details for the
    # 			component.</p>
    # @!attribute name
    #   <p>The name of this input parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of input this parameter provides. The currently supported value is
    #   			"string".</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of this parameter if no input is provided.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>Describes this parameter.</p>
    #   @return [String]
    class ComponentParameterDetail < Struct.new(
      :name,
      :type,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A group of fields that describe the current status of components.</p>
    # @!attribute status
    #   <p>The current state of the component.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Describes how or why the component changed state.</p>
    #   @return [String]
    class ComponentState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A high-level summary of a component.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the component.</p>
    #   @return [String]
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version that the component supports. If the OS information
    #   			is available, Image Builder performs a prefix match against the base image OS version during
    #   			image recipe creation.</p>
    #   @return [Array<String>]
    # @!attribute state
    #   <p>Describes the current status of the component.</p>
    #   @return [Types::ComponentState]
    # @!attribute type
    #   <p>The component type specifies whether Image Builder uses the component to build the image or
    #   			only to test it.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>The change description for the current version of the component.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The original creation date of the component.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute publisher
    #   <p>Contains the name of the publisher if this is a third-party component. Otherwise, 
    #   			this property is empty.</p>
    #   @return [String]
    # @!attribute obfuscate
    #   <p>Indicates whether component source is hidden from view in the console, and from 
    #   			component detail results for API, CLI, or SDK operations.</p>
    #   @return [Boolean]
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
      :obfuscate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:obfuscate] = false unless options.key?(:obfuscate)
        super
      end
    end

    # <p>The defining characteristics of a specific version of an Amazon Web Services TOE component.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #            <note>
    #               <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
    #   	at the level that applies to that object as follows:</p>
    #               <ol>
    #                  <li>
    #                     <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #                  </li>
    #                  <li>
    #                     <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #                  </li>
    #                  <li>
    #                     <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #                  </li>
    #               </ol>
    #            </note>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The semantic version of the component.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #   @return [String]
    # @!attribute supported_os_versions
    #   <p>he operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image
    #   			recipe creation.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image or
    #   			only to test it.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the component.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date that the component was created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the current status of the component version.</p>
    #   @return [String]
    # @!attribute product_codes
    #   <p>Contains product codes that are used for billing purposes for Amazon Web Services Marketplace components.</p>
    #   @return [Array<Types::ProductCodeListItem>]
    class ComponentVersion < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :platform,
      :supported_os_versions,
      :type,
      :owner,
      :date_created,
      :status,
      :product_codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container encapsulates the runtime environment for an application.</p>
    # @!attribute region
    #   <p>Containers and container images are Region-specific. This is the Region context for
    #   			the container.</p>
    #   @return [String]
    # @!attribute image_uris
    #   <p>A list of URIs for containers created in the context Region.</p>
    #   @return [Array<String>]
    class Container < Struct.new(
      :region,
      :image_uris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container distribution settings for encryption, licensing, and sharing in a specific
    # 			Region.</p>
    # @!attribute description
    #   <p>The description of the container distribution configuration.</p>
    #   @return [String]
    # @!attribute container_tags
    #   <p>Tags that are attached to the container distribution configuration.</p>
    #   @return [Array<String>]
    # @!attribute target_repository
    #   <p>The destination repository for the container distribution configuration.</p>
    #   @return [Types::TargetContainerRepository]
    class ContainerDistributionConfiguration < Struct.new(
      :description,
      :container_tags,
      :target_repository,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A container recipe.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe.</p>
    #            <note>
    #               <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
    #   	at the level that applies to that object as follows:</p>
    #               <ol>
    #                  <li>
    #                     <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #                  </li>
    #                  <li>
    #                     <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #                  </li>
    #                  <li>
    #                     <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #                  </li>
    #               </ol>
    #            </note>
    #   @return [String]
    # @!attribute container_type
    #   <p>Specifies the type of container, such as Docker.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the container recipe.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The system platform for the container, such as Windows or Linux.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the container recipe.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The semantic version of the container recipe.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>Build and test components that are included in the container recipe.
    #   			Recipes require a minimum of one build component, and can 
    #   			have a maximum of 20 build and test components in any combination.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute dockerfile_template_data
    #   <p>Dockerfiles are text documents that are used to build Docker containers, and ensure
    #   			that they contain all of the elements required by the application running inside. The
    #   			template data consists of contextual variables where Image Builder places build information or
    #   			scripts, based on your container image recipe.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies which KMS key is used to encrypt the container image 
    #   			for distribution to the target Region. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>A flag that indicates if the target container is encrypted.</p>
    #   @return [Boolean]
    # @!attribute parent_image
    #   <p>The base image for customizations specified in the container recipe. This can 
    #   			contain an Image Builder image resource ARN or a container image URI, for example 
    #   			<code>amazonlinux:latest</code>.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date when this container recipe was created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #   @return [String]
    # @!attribute target_repository
    #   <p>The destination repository for the container image.</p>
    #   @return [Types::TargetContainerRepository]
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
      :target_repository,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a container recipe</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe.</p>
    #   @return [String]
    # @!attribute container_type
    #   <p>Specifies the type of container, such as "Docker".</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The system platform for the container, such as Windows or Linux.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the container recipe.</p>
    #   @return [String]
    # @!attribute parent_image
    #   <p>The base image for the container recipe.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date when this container recipe was created.</p>
    #   @return [String]
    # @!attribute instance_image
    #   <p>The base image for a container build and test instance. This can contain an AMI ID 
    #   		or it can specify an Amazon Web Services Systems Manager (SSM) Parameter Store Parameter, prefixed by <code>ssm:</code>, 
    #   		followed by the parameter name or ARN.</p>
    #            <p>If not specified, Image Builder uses the appropriate ECS-optimized AMI as a base image.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #   @return [Hash<String, String>]
    class ContainerRecipeSummary < Struct.new(
      :arn,
      :container_type,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :instance_image,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the contents of the component.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>The change description of the component. Describes what change has been made in this
    #   			version, or what makes this version different from other versions of the
    #   			component.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the component.</p>
    #   @return [String]
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If the OS information is
    #   			available, a prefix match is performed against the base image OS version during image
    #   			recipe creation.</p>
    #   @return [Array<String>]
    # @!attribute data
    #   <p>Component <code>data</code> contains inline YAML document content for the component.
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   				(<code>s3://bucket/key</code>), and the requester must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   				<code>data</code> property. You cannot specify both properties.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that the request created.</p>
    #   @return [String]
    class CreateComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_type
    #   <p>The type of container to create.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the container recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the container recipe.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the container recipe. This version follows the semantic
    #   			version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>Components for build and test that are included in the container recipe.
    #   			Recipes require a minimum of one build component, and can 
    #   			have a maximum of 20 build and test components in any combination.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute dockerfile_template_data
    #   <p>The Dockerfile template used to build your image as an inline data blob.</p>
    #   @return [String]
    # @!attribute dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile that will be used to build your container
    #   			image.</p>
    #   @return [String]
    # @!attribute platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.</p>
    #   @return [String]
    # @!attribute image_os_version_override
    #   <p>Specifies the operating system version for the base image.</p>
    #   @return [String]
    # @!attribute parent_image
    #   <p>The base image for the container recipe.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #   @return [String]
    # @!attribute target_repository
    #   <p>The destination repository for the container image.</p>
    #   @return [Types::TargetContainerRepository]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies which KMS key is used to encrypt the Dockerfile 
    #   			template. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>Returns the Amazon Resource Name (ARN) of the container recipe that the request
    #   			created.</p>
    #   @return [String]
    class CreateContainerRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the distribution configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #   @return [String]
    # @!attribute distributions
    #   <p>The distributions of the distribution configuration.</p>
    #   @return [Array<Types::Distribution>]
    # @!attribute tags
    #   <p>The tags of the distribution configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CreateDistributionConfigurationRequest < Struct.new(
      :name,
      :description,
      :distributions,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that was created by
    #   			this request.</p>
    #   @return [String]
    class CreateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image pipeline.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure
    #   			images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure
    #   			images created by this container pipeline.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that will be used
    #   			to build images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that will be used to
    #   			configure and distribute images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of the image pipeline.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the image pipeline.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the image pipeline.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>Contains an array of workflow configuration objects.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    #   @return [Types::PipelineLoggingConfiguration]
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
      :image_scanning_configuration,
      :workflows,
      :execution_role,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that was created by this
    #   			request.</p>
    #   @return [String]
    class CreateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image recipe.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the image recipe. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>The components included in the image recipe.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute parent_image
    #   <p>The base image for customizations specified in the image recipe. You can specify the 
    #   			parent image using one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>AMI ID</p>
    #               </li>
    #               <li>
    #                  <p>Image Builder image Amazon Resource Name (ARN)</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Systems Manager (SSM) Parameter Store Parameter, prefixed by <code>ssm:</code>, 
    #   					followed by the parameter name or ARN.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Marketplace product ID</p>
    #               </li>
    #            </ul>
    #            <p>If you enter an AMI ID or an SSM parameter that contains the AMI ID, you must have access 
    #   			to the AMI, and the AMI must be in the source Region.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>The block device mappings of the image recipe.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory used during build and test workflows.</p>
    #   @return [String]
    # @!attribute additional_instance_configuration
    #   <p>Specify additional settings and launch scripts for your build instances.</p>
    #   @return [Types::AdditionalInstanceConfiguration]
    # @!attribute ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase 
    #   			prior to image distribution.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :ami_tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that was created by this
    #   			request.</p>
    #   @return [String]
    class CreateImageRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are
    #   			configured and tested.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of your pipeline.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>The image tests configuration of the image.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags of the image.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>Contains an array of workflow configuration objects.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    #   @return [Types::ImageLoggingConfiguration]
    class CreateImageRequest < Struct.new(
      :image_recipe_arn,
      :container_recipe_arn,
      :distribution_configuration_arn,
      :infrastructure_configuration_arn,
      :image_tests_configuration,
      :enhanced_image_metadata_enabled,
      :tags,
      :client_token,
      :image_scanning_configuration,
      :workflows,
      :execution_role,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that the request created.</p>
    #   @return [String]
    class CreateImageResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types
    #   			based on availability.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2 AMI.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event
    #   			notifications.</p>
    #            <note>
    #               <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
    #   				account that the Image Builder service runs under.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during the build process. 
    #   			Tags are formatted as key value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline
    #   			builds use to launch EC2 build and test instances.</p>
    #   @return [Types::InstanceMetadataOptions]
    # @!attribute tags
    #   <p>The metadata tags to assign to the infrastructure configuration resource that Image Builder 
    #   			creates as output. Tags are formatted as key value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute placement
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    #   @return [Types::Placement]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :placement,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was created by
    #   			this request.</p>
    #   @return [String]
    class CreateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the  lifecycle policy to create.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the lifecycle policy resource is enabled.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to run lifecycle actions.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Image Builder resource that the lifecycle policy applies to.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>Configuration details for the lifecycle policy rules.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute resource_selection
    #   <p>Selection criteria for the resources that the lifecycle policy applies to. </p>
    #   @return [Types::LifecyclePolicyResourceSelection]
    # @!attribute tags
    #   <p>Tags to apply to the lifecycle policy resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CreateLifecyclePolicyRequest < Struct.new(
      :name,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :policy_details,
      :resource_selection,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy that the request created.</p>
    #   @return [String]
    class CreateLifecyclePolicyResponse < Struct.new(
      :client_token,
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to create.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of this workflow resource. The semantic version syntax 
    #   			adheres to the following rules.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the workflow.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>Describes what change has been made in this version of the workflow, or 
    #   			what makes this version different from other versions of the workflow.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Contains the UTF-8 encoded YAML document content for the workflow. 
    #   			Alternatively, you can specify the <code>uri</code> of a YAML document file stored in
    #   			Amazon S3. However, you cannot specify both properties.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The <code>uri</code> of a YAML component document file. This must be an S3 URL
    #   			(<code>s3://bucket/key</code>), and the requester must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   			<code>data</code> property. You cannot specify both properties.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this workflow resource. 
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that apply to the workflow resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The phase in the image build process for which the workflow resource 
    #   			is responsible.</p>
    #   @return [String]
    class CreateWorkflowRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :change_description,
      :data,
      :uri,
      :kms_key_id,
      :tags,
      :client_token,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that the request created.</p>
    #   @return [String]
    class CreateWorkflowResponse < Struct.new(
      :client_token,
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Inspector generates a risk score for each finding. This score helps you to prioritize
    # 			findings, to focus on the most critical findings and the most vulnerable resources. The
    # 			score uses the Common Vulnerability Scoring System (CVSS) format. This format is a
    # 			modification of the base CVSS score that the National Vulnerability Database (NVD)
    # 			provides. For more information about severity levels, see <a href="https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html">Severity levels for Amazon Inspector findings</a> in the <i>Amazon Inspector User
    # 				Guide</i>.</p>
    # @!attribute base_score
    #   <p>The CVSS base score.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>The vector string of the CVSS score.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The CVSS version that generated the score.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source of the CVSS score.</p>
    #   @return [String]
    class CvssScore < Struct.new(
      :base_score,
      :scoring_vector,
      :version,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an adjustment that Amazon Inspector made to the CVSS score for a finding.</p>
    # @!attribute metric
    #   <p>The metric that Amazon Inspector used to adjust the CVSS score.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the CVSS score adjustment.</p>
    #   @return [String]
    class CvssScoreAdjustment < Struct.new(
      :metric,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the source of the score, and the factors that determined the adjustments
    # 			to create the final score.</p>
    # @!attribute score_source
    #   <p>The source for the CVSS score.</p>
    #   @return [String]
    # @!attribute cvss_source
    #   <p>The source of the finding.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The CVSS version that generated the score.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The CVSS score.</p>
    #   @return [Float]
    # @!attribute scoring_vector
    #   <p>A vector that measures the severity of the vulnerability.</p>
    #   @return [String]
    # @!attribute adjustments
    #   <p>An object that contains details about an adjustment that Amazon Inspector made to the CVSS score
    #   			for the finding.</p>
    #   @return [Array<Types::CvssScoreAdjustment>]
    class CvssScoreDetails < Struct.new(
      :score_source,
      :cvss_source,
      :version,
      :score,
      :scoring_vector,
      :adjustments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version to delete.</p>
    #   @return [String]
    class DeleteComponentRequest < Struct.new(
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component_build_version_arn
    #   <p>The ARN of the component build version that this request deleted.</p>
    #   @return [String]
    class DeleteComponentResponse < Struct.new(
      :request_id,
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to delete.</p>
    #   @return [String]
    class DeleteContainerRecipeRequest < Struct.new(
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that was deleted.</p>
    #   @return [String]
    class DeleteContainerRecipeResponse < Struct.new(
      :request_id,
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration to delete.</p>
    #   @return [String]
    class DeleteDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that was
    #   			deleted.</p>
    #   @return [String]
    class DeleteDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline to delete.</p>
    #   @return [String]
    class DeleteImagePipelineRequest < Struct.new(
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that was deleted.</p>
    #   @return [String]
    class DeleteImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe to delete.</p>
    #   @return [String]
    class DeleteImageRecipeRequest < Struct.new(
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that was deleted.</p>
    #   @return [String]
    class DeleteImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource to delete.</p>
    #   @return [String]
    class DeleteImageRequest < Struct.new(
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The ARN of the Image Builder image resource that this request deleted.</p>
    #   @return [String]
    class DeleteImageResponse < Struct.new(
      :request_id,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration to delete.</p>
    #   @return [String]
    class DeleteInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was
    #   			deleted.</p>
    #   @return [String]
    class DeleteInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource to delete.</p>
    #   @return [String]
    class DeleteLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>The ARN of the lifecycle policy that was deleted.</p>
    #   @return [String]
    class DeleteLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource to delete.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_build_version_arn
    #   <p>The ARN of the workflow resource that this request deleted.</p>
    #   @return [String]
    class DeleteWorkflowResponse < Struct.new(
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the settings for a specific Region.</p>
    # @!attribute region
    #   <p>The target Region.</p>
    #   @return [String]
    # @!attribute ami_distribution_configuration
    #   <p>The specific AMI settings; for example, launch permissions or AMI tags.</p>
    #   @return [Types::AmiDistributionConfiguration]
    # @!attribute container_distribution_configuration
    #   <p>Container distribution settings for encryption, licensing, and sharing in a specific
    #   			Region.</p>
    #   @return [Types::ContainerDistributionConfiguration]
    # @!attribute license_configuration_arns
    #   <p>The License Manager Configuration to associate with the AMI in the specified
    #   			Region.</p>
    #   @return [Array<String>]
    # @!attribute launch_template_configurations
    #   <p>A group of launchTemplateConfiguration settings that apply to image distribution for
    #   			specified accounts.</p>
    #   @return [Array<Types::LaunchTemplateConfiguration>]
    # @!attribute s3_export_configuration
    #   <p>Configure export settings to deliver disk images created from your image build, 
    #   			using a file format that is compatible with your VMs in that Region.</p>
    #   @return [Types::S3ExportConfiguration]
    # @!attribute fast_launch_configurations
    #   <p>The Windows faster-launching configurations to use for AMI distribution.</p>
    #   @return [Array<Types::FastLaunchConfiguration>]
    # @!attribute ssm_parameter_configurations
    #   <p>Contains settings to update Amazon Web Services Systems Manager (SSM) Parameter Store Parameters with 
    #   			output AMI IDs from the build by target Region.</p>
    #   @return [Array<Types::SsmParameterConfiguration>]
    class Distribution < Struct.new(
      :region,
      :ami_distribution_configuration,
      :container_distribution_configuration,
      :license_configuration_arns,
      :launch_template_configurations,
      :s3_export_configuration,
      :fast_launch_configurations,
      :ssm_parameter_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A distribution configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #   @return [String]
    # @!attribute distributions
    #   <p>The distribution objects that apply Region-specific settings for the deployment of 
    #   			the image to targeted Regions.</p>
    #   @return [Array<Types::Distribution>]
    # @!attribute timeout_minutes
    #   <p>The maximum duration in minutes for this distribution configuration.</p>
    #   @return [Integer]
    # @!attribute date_created
    #   <p>The date on which this distribution configuration was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which this distribution configuration was last updated.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the distribution configuration.</p>
    #   @return [Hash<String, String>]
    class DistributionConfiguration < Struct.new(
      :arn,
      :name,
      :description,
      :distributions,
      :timeout_minutes,
      :date_created,
      :date_updated,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A high-level overview of a distribution configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the distribution configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which the distribution configuration was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which the distribution configuration was updated.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the distribution configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute regions
    #   <p>A list of Regions where the container image is distributed to.</p>
    #   @return [Array<String>]
    class DistributionConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :tags,
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon EBS-specific block device mapping specifications.</p>
    # @!attribute encrypted
    #   <p>Use to configure device encryption.</p>
    #   @return [Boolean]
    # @!attribute delete_on_termination
    #   <p>Use to configure delete on termination of the associated device.</p>
    #   @return [Boolean]
    # @!attribute iops
    #   <p>Use to configure device IOPS.</p>
    #   @return [Integer]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key to use when encrypting the device. 
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The snapshot that defines the device contents.</p>
    #   @return [String]
    # @!attribute volume_size
    #   <p>Use to override the device's volume size.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>Use to override the device's volume type.</p>
    #   @return [String]
    # @!attribute throughput
    #   <p>
    #               <b>For GP3 volumes only</b> – The throughput in MiB/s
    #   			that the volume supports.</p>
    #   @return [Integer]
    class EbsInstanceBlockDeviceSpecification < Struct.new(
      :encrypted,
      :delete_on_termination,
      :iops,
      :kms_key_id,
      :snapshot_id,
      :volume_size,
      :volume_type,
      :throughput,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Settings that Image Builder uses to configure the ECR repository and the output container
    # 			images that Amazon Inspector scans.</p>
    # @!attribute repository_name
    #   <p>The name of the container repository that Amazon Inspector scans to identify findings for your
    #   			container images. The name includes the path for the repository location. If you don’t
    #   			provide this information, Image Builder creates a repository in your account named
    #   				<code>image-builder-image-scanning-repository</code> for vulnerability scans of your
    #   			output container images.</p>
    #   @return [String]
    # @!attribute container_tags
    #   <p>Tags for Image Builder to apply to the output container image that Amazon Inspector scans. Tags can
    #   			help you identify and manage your scanned images.</p>
    #   @return [Array<String>]
    class EcrConfiguration < Struct.new(
      :repository_name,
      :container_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Define and configure faster launching for output Windows AMIs.</p>
    # @!attribute enabled
    #   <p>A Boolean that represents the current state of faster launching for the Windows AMI.
    #   			Set to <code>true</code> to start using Windows faster launching, or <code>false</code>
    #   			to stop using it.</p>
    #   @return [Boolean]
    # @!attribute snapshot_configuration
    #   <p>Configuration settings for managing the number of snapshots that are created from
    #   			pre-provisioned instances for the Windows AMI when faster launching is enabled.</p>
    #   @return [Types::FastLaunchSnapshotConfiguration]
    # @!attribute max_parallel_launches
    #   <p>The maximum number of parallel instances that are launched for creating
    #   			resources.</p>
    #   @return [Integer]
    # @!attribute launch_template
    #   <p>The launch template that the fast-launch enabled Windows AMI uses when it launches
    #   			Windows instances to create pre-provisioned snapshots.</p>
    #   @return [Types::FastLaunchLaunchTemplateSpecification]
    # @!attribute account_id
    #   <p>The owner account ID for the fast-launch enabled Windows AMI.</p>
    #   @return [String]
    class FastLaunchConfiguration < Struct.new(
      :enabled,
      :snapshot_configuration,
      :max_parallel_launches,
      :launch_template,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Identifies the launch template that the associated Windows AMI uses for launching an
    # 			instance when faster launching is enabled.</p>
    #          <note>
    #             <p>You can specify either the <code>launchTemplateName</code> or the
    # 					<code>launchTemplateId</code>, but not both.</p>
    #          </note>
    # @!attribute launch_template_id
    #   <p>The ID of the launch template to use for faster launching for a Windows AMI.</p>
    #   @return [String]
    # @!attribute launch_template_name
    #   <p>The name of the launch template to use for faster launching for a Windows AMI.</p>
    #   @return [String]
    # @!attribute launch_template_version
    #   <p>The version of the launch template to use for faster launching for a Windows
    #   			AMI.</p>
    #   @return [String]
    class FastLaunchLaunchTemplateSpecification < Struct.new(
      :launch_template_id,
      :launch_template_name,
      :launch_template_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for creating and managing pre-provisioned snapshots for a
    # 			fast-launch enabled Windows AMI.</p>
    # @!attribute target_resource_count
    #   <p>The number of pre-provisioned snapshots to keep on hand for a fast-launch enabled
    #   			Windows AMI.</p>
    #   @return [Integer]
    class FastLaunchSnapshotConfiguration < Struct.new(
      :target_resource_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter name and value pair that is used to return a more specific list of results
    # 			from a list operation. Filters can be used to match a set of resources by specific
    # 			criteria, such as tags, attributes, or IDs.</p>
    # @!attribute name
    #   <p>The name of the filter. Filter names are case-sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values. Filter values are case-sensitive.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized to perform the requested operation.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component whose policy you want to
    #   			retrieve.</p>
    #   @return [String]
    class GetComponentPolicyRequest < Struct.new(
      :component_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The component policy.</p>
    #   @return [String]
    class GetComponentPolicyResponse < Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to get. Regex requires
    #   			the suffix <code>/\d+$</code>.</p>
    #   @return [String]
    class GetComponentRequest < Struct.new(
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component
    #   <p>The component object specified in the request.</p>
    #   @return [Types::Component]
    class GetComponentResponse < Struct.new(
      :request_id,
      :component,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe for the policy being
    #   			requested.</p>
    #   @return [String]
    class GetContainerRecipePolicyRequest < Struct.new(
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The container recipe policy object that is returned.</p>
    #   @return [String]
    class GetContainerRecipePolicyResponse < Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe to retrieve.</p>
    #   @return [String]
    class GetContainerRecipeRequest < Struct.new(
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute container_recipe
    #   <p>The container recipe object that is returned.</p>
    #   @return [Types::ContainerRecipe]
    class GetContainerRecipeResponse < Struct.new(
      :request_id,
      :container_recipe,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
    #   @return [String]
    class GetDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute distribution_configuration
    #   <p>The distribution configuration object.</p>
    #   @return [Types::DistributionConfiguration]
    class GetDistributionConfigurationResponse < Struct.new(
      :request_id,
      :distribution_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to retrieve.</p>
    #   @return [String]
    class GetImagePipelineRequest < Struct.new(
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_pipeline
    #   <p>The image pipeline object.</p>
    #   @return [Types::ImagePipeline]
    class GetImagePipelineResponse < Struct.new(
      :request_id,
      :image_pipeline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose policy you want to retrieve.</p>
    #   @return [String]
    class GetImagePolicyRequest < Struct.new(
      :image_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The image policy object.</p>
    #   @return [String]
    class GetImagePolicyResponse < Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe whose policy you want to
    #   			retrieve.</p>
    #   @return [String]
    class GetImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The image recipe policy object.</p>
    #   @return [String]
    class GetImageRecipePolicyResponse < Struct.new(
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve.</p>
    #   @return [String]
    class GetImageRecipeRequest < Struct.new(
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_recipe
    #   <p>The image recipe object.</p>
    #   @return [Types::ImageRecipe]
    class GetImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to get.</p>
    #   @return [String]
    class GetImageRequest < Struct.new(
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image
    #   <p>The image object.</p>
    #   @return [Types::Image]
    class GetImageResponse < Struct.new(
      :request_id,
      :image,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>GetInfrastructureConfiguration request object.</p>
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			retrieve.</p>
    #   @return [String]
    class GetInfrastructureConfigurationRequest < Struct.new(
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>GetInfrastructureConfiguration response object.</p>
    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration
    #   <p>The infrastructure configuration object.</p>
    #   @return [Types::InfrastructureConfiguration]
    class GetInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :infrastructure_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>Use the unique identifier for a runtime instance of the lifecycle policy to get runtime details.</p>
    #   @return [String]
    class GetLifecycleExecutionRequest < Struct.new(
      :lifecycle_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution
    #   <p>Runtime details for the specified runtime instance of the lifecycle policy.</p>
    #   @return [Types::LifecycleExecution]
    class GetLifecycleExecutionResponse < Struct.new(
      :lifecycle_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the image lifecycle policy resource to get.</p>
    #   @return [String]
    class GetLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy
    #   <p>The ARN of the image lifecycle policy resource that was returned.</p>
    #   @return [Types::LifecyclePolicy]
    class GetLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_type
    #   <p>Specifies which type of Amazon Web Services Marketplace resource Image Builder retrieves.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies an Amazon Web Services Marketplace resource.</p>
    #   @return [String]
    # @!attribute resource_location
    #   <p>The bucket path that you can specify to download the resource from Amazon S3.</p>
    #   @return [String]
    class GetMarketplaceResourceRequest < Struct.new(
      :resource_type,
      :resource_arn,
      :resource_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon Web Services Marketplace resource that was requested.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The obfuscated S3 URL to download the component artifact from.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Returns obfuscated data that contains the YAML content of the component.</p>
    #   @return [String]
    class GetMarketplaceResourceResponse < Struct.new(
      :resource_arn,
      :url,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_execution_id
    #   <p>Use the unique identifier for a runtime instance of the workflow to get 
    #   			runtime details.</p>
    #   @return [String]
    class GetWorkflowExecutionRequest < Struct.new(
      :workflow_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the build version for the Image Builder workflow resource 
    #   			that defines the specified runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image resource build version that the specified 
    #   			runtime instance of the workflow created.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of workflow that Image Builder ran for the specified runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current runtime status for the specified runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the specified runtime instance of the workflow, if applicable.</p>
    #   @return [String]
    # @!attribute total_step_count
    #   <p>The total number of steps in the specified runtime instance of the workflow that ran. 
    #   			This number should equal the sum of the step counts for steps that succeeded, were skipped, 
    #   			and failed.</p>
    #   @return [Integer]
    # @!attribute total_steps_succeeded
    #   <p>A runtime count for the number of steps that ran successfully in the specified runtime 
    #   			instance of the workflow.</p>
    #   @return [Integer]
    # @!attribute total_steps_failed
    #   <p>A runtime count for the number of steps that failed in the specified runtime instance 
    #   			of the workflow.</p>
    #   @return [Integer]
    # @!attribute total_steps_skipped
    #   <p>A runtime count for the number of steps that were skipped in the specified runtime 
    #   			instance of the workflow.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The timestamp when the specified runtime instance of the workflow started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the specified runtime instance of the workflow finished.</p>
    #   @return [String]
    # @!attribute parallel_group
    #   <p>Test workflows are defined within named runtime groups. The parallel group 
    #   			is a named group that contains one or more test workflows.</p>
    #   @return [String]
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
      :end_time,
      :parallel_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_step_count] = 0 unless options.key?(:total_step_count)
        options[:total_steps_succeeded] = 0 unless options.key?(:total_steps_succeeded)
        options[:total_steps_failed] = 0 unless options.key?(:total_steps_failed)
        options[:total_steps_skipped] = 0 unless options.key?(:total_steps_skipped)
        super
      end
    end

    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that you want to get.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow
    #   <p>The workflow resource specified in the request.</p>
    #   @return [Types::Workflow]
    class GetWorkflowResponse < Struct.new(
      :workflow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_execution_id
    #   <p>Use the unique identifier for a specific runtime instance of the workflow step to 
    #   			get runtime details for that step.</p>
    #   @return [String]
    class GetWorkflowStepExecutionRequest < Struct.new(
      :step_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute step_execution_id
    #   <p>The unique identifier for the runtime version of the workflow step that you specified 
    #   			in the request.</p>
    #   @return [String]
    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the build version for the Image Builder workflow resource
    #   			that defines this workflow step.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image resource build version that the specified 
    #   			runtime instance of the workflow step creates.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the specified runtime instance of the workflow step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the specified workflow step.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The name of the action that the specified step performs.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status for the specified runtime version of the workflow step.</p>
    #   @return [String]
    # @!attribute rollback_status
    #   <p>Reports on the rollback status of the specified runtime version of the workflow step, 
    #   			if applicable.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the specified runtime instance of the workflow step, if applicable.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Input parameters that Image Builder provided for the specified runtime instance of 
    #   			the workflow step.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The file names that the specified runtime version of the workflow step created as output.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the specified runtime version of the workflow step started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the specified runtime instance of the workflow step finished.</p>
    #   @return [String]
    # @!attribute on_failure
    #   <p>The action to perform if the workflow step fails.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>The maximum duration in seconds for this step to complete its action.</p>
    #   @return [Integer]
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
      :timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have specified a client token for an operation using parameter values that differ
    # 			from a previous request that used the same client token.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Image Builder image resource that keeps track of all of the settings used to create, configure, 
    # 			and distribute output for that image. You must specify exactly one recipe for the image – 
    # 			either a container recipe (<code>containerRecipe</code>), which creates a container image, or an
    # 			image recipe (<code>imageRecipe</code>), which creates an AMI.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image.</p>
    #            <note>
    #               <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
    #   	at the level that applies to that object as follows:</p>
    #               <ol>
    #                  <li>
    #                     <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #                  </li>
    #                  <li>
    #                     <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #                  </li>
    #                  <li>
    #                     <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #                  </li>
    #               </ol>
    #            </note>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether this image produces an AMI or a container image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The semantic version of the image.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute platform
    #   <p>The image operating system platform, such as Linux or Windows.</p>
    #   @return [String]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Indicates whether Image Builder collects additional information about the image, such as 
    #   			the operating system (OS) version and package list.</p>
    #   @return [Boolean]
    # @!attribute os_version
    #   <p>The operating system version for instances that launch from this image. For example, 
    #   			Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the image.</p>
    #   @return [Types::ImageState]
    # @!attribute image_recipe
    #   <p>For images that distribute an AMI, this is the image recipe that Image Builder used to 
    #   			create the image. For container images, this is empty.</p>
    #   @return [Types::ImageRecipe]
    # @!attribute container_recipe
    #   <p>For container images, this is the container recipe that Image Builder used to create the 
    #   			image. For images that distribute an AMI, this is empty.</p>
    #   @return [Types::ContainerRecipe]
    # @!attribute source_pipeline_name
    #   <p>The name of the image pipeline that created this image.</p>
    #   @return [String]
    # @!attribute source_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that created this image.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration
    #   <p>The infrastructure that Image Builder used to create this image.</p>
    #   @return [Types::InfrastructureConfiguration]
    # @!attribute distribution_configuration
    #   <p>The distribution configuration that Image Builder used to create this image.</p>
    #   @return [Types::DistributionConfiguration]
    # @!attribute image_tests_configuration
    #   <p>The image tests that ran when that Image Builder created this image.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute date_created
    #   <p>The date on which Image Builder created this image.</p>
    #   @return [String]
    # @!attribute output_resources
    #   <p>The output resources that Image Builder produces for this image.</p>
    #   @return [Types::OutputResources]
    # @!attribute tags
    #   <p>The tags that apply to this image.</p>
    #   @return [Hash<String, String>]
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated in the
    #   			following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>USER_INITIATED</b> – A manual 
    #   					pipeline build request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SCHEDULED</b> – A pipeline build 
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT</b> – A VM import created 
    #   					the image to use as the base image for the recipe.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT_ISO</b> – An ISO disk import created 
    #   					the image.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute image_source
    #   <p>The origin of the base image that Image Builder used to build this image.</p>
    #   @return [String]
    # @!attribute scan_state
    #   <p>Contains information about the current state of scans for this image.</p>
    #   @return [Types::ImageScanState]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute deprecation_time
    #   <p>The time when deprecation occurs for an image resource. This can be a past or future date.</p>
    #   @return [Time]
    # @!attribute lifecycle_execution_id
    #   <p>Identifies the last runtime instance of the lifecycle policy to take action on the image.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>Contains the build and test workflows that are associated with the image.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>The logging configuration that's defined for the image. Image Builder uses the defined settings 
    #   			to direct execution log output during image creation.</p>
    #   @return [Types::ImageLoggingConfiguration]
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
      :image_scanning_configuration,
      :deprecation_time,
      :lifecycle_execution_id,
      :execution_role,
      :workflows,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains vulnerability counts for a specific image.</p>
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the image for this aggregation.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>Counts by severity level for medium severity and higher level findings, plus a total
    #   			for all of the findings for the specified image.</p>
    #   @return [Types::SeverityCounts]
    class ImageAggregation < Struct.new(
      :image_build_version_arn,
      :severity_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration that's defined for the image. Image Builder uses the defined settings 
    # 			to direct execution log output during image creation.</p>
    # @!attribute log_group_name
    #   <p>The log group name that Image Builder uses for image creation. If not specified, the log group 
    #   			name defaults to <code>/aws/imagebuilder/image-name</code>.</p>
    #   @return [String]
    class ImageLoggingConfiguration < Struct.new(
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A software package that's installed on top of the base image to create a 
    # 			customized image.</p>
    # @!attribute package_name
    #   <p>The name of the package that's reported to the operating system package 
    #   			manager.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The version of the package that's reported to the operating system package 
    #   			manager.</p>
    #   @return [String]
    class ImagePackage < Struct.new(
      :package_name,
      :package_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of an image pipeline.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image pipeline.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the image pipeline.</p>
    #   @return [String]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #   @return [Boolean]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe associated with this image
    #   			pipeline.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used for this
    #   			pipeline.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration associated with
    #   			this image pipeline.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration associated with this
    #   			image pipeline.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>The image tests configuration of the image pipeline.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute schedule
    #   <p>The schedule of the image pipeline.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the image pipeline.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which this image pipeline was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which this image pipeline was last updated.</p>
    #   @return [String]
    # @!attribute date_last_run
    #   <p>This is no longer supported, and does not return a value.</p>
    #   @return [String]
    # @!attribute last_run_status
    #   <p>The status of the last image that this pipeline built, such as 
    #   			<code>BUILDING</code>, <code>TESTING</code>, <code>FAILED</code>, 
    #   			or <code>AVAILABLE</code>.</p>
    #   @return [String]
    # @!attribute date_next_run
    #   <p>The next date when the pipeline is scheduled to run.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of this image pipeline.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>Contains the workflows that run for the image pipeline.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>Defines logging configuration for the output image.</p>
    #   @return [Types::PipelineLoggingConfiguration]
    # @!attribute consecutive_failures
    #   <p>Image Builder tracks the number of consecutive failures for scheduled pipeline 
    #   			executions and takes one of the following actions each time it runs on a schedule:</p>
    #            <ul>
    #               <li>
    #                  <p>If the pipeline execution is successful, the number of consecutive 
    #   					failures resets to zero.</p>
    #               </li>
    #               <li>
    #                  <p>If the pipeline execution fails, Image Builder increments the number of 
    #   					consecutive failures. If the failure count exceeds the limit defined in the 
    #   					<code>AutoDisablePolicy</code>, Image Builder disables the pipeline.</p>
    #               </li>
    #            </ul>
    #            <p>The consecutive failure count is also reset to zero under the following 
    #   			conditions:</p>
    #            <ul>
    #               <li>
    #                  <p>The pipeline runs manually and succeeds.</p>
    #               </li>
    #               <li>
    #                  <p>The pipeline configuration is updated.</p>
    #               </li>
    #            </ul>
    #            <p>If the pipeline runs manually and fails, the count remains the same. The next 
    #   			scheduled run continues to increment where it left off before.</p>
    #   @return [Integer]
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
      :last_run_status,
      :date_next_run,
      :tags,
      :image_scanning_configuration,
      :execution_role,
      :workflows,
      :logging_configuration,
      :consecutive_failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains vulnerability counts for a specific image pipeline.</p>
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the image pipeline for this
    #   			aggregation.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>Counts by severity level for medium severity and higher level findings, plus a total
    #   			for all of the findings for the specified image pipeline.</p>
    #   @return [Types::SeverityCounts]
    class ImagePipelineAggregation < Struct.new(
      :image_pipeline_arn,
      :severity_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An image recipe.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies which type of image is created by the recipe - an AMI or a container
    #   			image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image recipe.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the image recipe.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the image recipe.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the image recipe.</p>
    #   @return [String]
    # @!attribute components
    #   <p>The components that are included in the image recipe. Recipes require a minimum of one build component, and can 
    #   			have a maximum of 20 build and test components in any combination.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute parent_image
    #   <p>The base image for customizations specified in the image recipe. You can specify the 
    #   			parent image using one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>AMI ID</p>
    #               </li>
    #               <li>
    #                  <p>Image Builder image Amazon Resource Name (ARN)</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Systems Manager (SSM) Parameter Store Parameter, prefixed by <code>ssm:</code>, 
    #   					followed by the parameter name or ARN.</p>
    #               </li>
    #               <li>
    #                  <p>Amazon Web Services Marketplace product ID</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>The block device mappings to apply when creating images from this recipe.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    # @!attribute date_created
    #   <p>The date on which this image recipe was created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory to be used during build and test workflows.</p>
    #   @return [String]
    # @!attribute additional_instance_configuration
    #   <p>Before you create a new AMI, Image Builder launches temporary Amazon EC2 instances to build and test
    #   			your image configuration. Instance configuration adds a layer of control over those
    #   			instances. You can define settings and add scripts to run when an instance is launched
    #   			from your AMI.</p>
    #   @return [Types::AdditionalInstanceConfiguration]
    # @!attribute ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase 
    #   			prior to image distribution.</p>
    #   @return [Hash<String, String>]
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
      :additional_instance_configuration,
      :ami_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an image recipe.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image recipe.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the image recipe.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the image recipe.</p>
    #   @return [String]
    # @!attribute parent_image
    #   <p>The base image of the image recipe.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which this image recipe was created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #   @return [Hash<String, String>]
    class ImageRecipeSummary < Struct.new(
      :arn,
      :name,
      :platform,
      :owner,
      :parent_image,
      :date_created,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a vulnerability scan finding.</p>
    # @!attribute aws_account_id
    #   <p>The Amazon Web Services account ID that's associated with the finding.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that's associated with the
    #   			finding.</p>
    #   @return [String]
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that's associated with the
    #   			finding.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the finding. Image Builder looks for findings of the type
    #   				<code>PACKAGE_VULNERABILITY</code> that apply to output images, and excludes other
    #   			types.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the finding.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the finding.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>An object that contains the details about how to remediate the finding.</p>
    #   @return [Types::Remediation]
    # @!attribute severity
    #   <p>The severity of the finding.</p>
    #   @return [String]
    # @!attribute first_observed_at
    #   <p>The date and time when the finding was first observed.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the finding was last updated.</p>
    #   @return [Time]
    # @!attribute inspector_score
    #   <p>The score that Amazon Inspector assigned for the finding.</p>
    #   @return [Float]
    # @!attribute inspector_score_details
    #   <p>An object that contains details of the Amazon Inspector score.</p>
    #   @return [Types::InspectorScoreDetails]
    # @!attribute package_vulnerability_details
    #   <p>An object that contains the details of a package vulnerability finding.</p>
    #   @return [Types::PackageVulnerabilityDetails]
    # @!attribute fix_available
    #   <p>Details about whether a fix is available for any of the packages that are identified
    #   			in the finding through a version update.</p>
    #   @return [String]
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
      :fix_available,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This returns exactly one type of aggregation, based on the filter that Image Builder applies in
    # 			its API action.</p>
    # @!attribute account_aggregation
    #   <p>Returns an object that contains severity counts based on an account ID.</p>
    #   @return [Types::AccountAggregation]
    # @!attribute image_aggregation
    #   <p>Returns an object that contains severity counts based on the Amazon Resource Name
    #   			(ARN) for a specific image.</p>
    #   @return [Types::ImageAggregation]
    # @!attribute image_pipeline_aggregation
    #   <p>Returns an object that contains severity counts based on an image pipeline ARN.</p>
    #   @return [Types::ImagePipelineAggregation]
    # @!attribute vulnerability_id_aggregation
    #   <p>Returns an object that contains severity counts based on vulnerability ID.</p>
    #   @return [Types::VulnerabilityIdAggregation]
    class ImageScanFindingAggregation < Struct.new(
      :account_aggregation,
      :image_aggregation,
      :image_pipeline_aggregation,
      :vulnerability_id_aggregation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A name value pair that Image Builder applies to streamline results from the
    # 			vulnerability scan findings list action.</p>
    # @!attribute name
    #   <p>The name of the image scan finding filter. Filter names are case-sensitive.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values. Filter values are case-sensitive.</p>
    #   @return [Array<String>]
    class ImageScanFindingsFilter < Struct.new(
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Shows the vulnerability scan status for a specific image, and the reason for that
    # 			status.</p>
    # @!attribute status
    #   <p>The current state of vulnerability scans for the image.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the scan status for the image.</p>
    #   @return [String]
    class ImageScanState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for Image Builder image resource and container image scans.</p>
    # @!attribute image_scanning_enabled
    #   <p>A setting that indicates whether Image Builder keeps a snapshot of the vulnerability scans that
    #   			Amazon Inspector runs against the build instance when you create a new image.</p>
    #   @return [Boolean]
    # @!attribute ecr_configuration
    #   <p>Contains Amazon ECR settings for vulnerability scans.</p>
    #   @return [Types::EcrConfiguration]
    class ImageScanningConfiguration < Struct.new(
      :image_scanning_enabled,
      :ecr_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Image status and the reason for that status.</p>
    # @!attribute status
    #   <p>The status of the image.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the status of the image.</p>
    #   @return [String]
    class ImageState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An image summary.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether this image produces an AMI or a container image.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the image.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The image operating system platform, such as Linux or Windows.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system version of the instances that launch from this image. For 
    #   			example, Amazon Linux 2, Ubuntu 18, or Microsoft Windows Server 2019.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the image.</p>
    #   @return [Types::ImageState]
    # @!attribute owner
    #   <p>The owner of the image.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which Image Builder created this image.</p>
    #   @return [String]
    # @!attribute output_resources
    #   <p>The output resources that Image Builder produced when it created this image.</p>
    #   @return [Types::OutputResources]
    # @!attribute tags
    #   <p>The tags that apply to this image.</p>
    #   @return [Hash<String, String>]
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated in the
    #   			following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>USER_INITIATED</b> – A manual 
    #   					pipeline build request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SCHEDULED</b> – A pipeline build 
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT</b> – A VM import created 
    #   					the image to use as the base image for the recipe.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT_ISO</b> – An ISO disk import created 
    #   					the image.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute image_source
    #   <p>The origin of the base image that Image Builder used to build this image.</p>
    #   @return [String]
    # @!attribute deprecation_time
    #   <p>The time when deprecation occurs for an image resource. This can be a past or future date.</p>
    #   @return [Time]
    # @!attribute lifecycle_execution_id
    #   <p>Identifies the last runtime instance of the lifecycle policy to take action on the image.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The logging configuration that's defined for the image.</p>
    #   @return [Types::ImageLoggingConfiguration]
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
      :image_source,
      :deprecation_time,
      :lifecycle_execution_id,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configure image tests for your pipeline build. Tests run after building the image, to
    # 			verify that the AMI or container image is valid before distributing it.</p>
    # @!attribute image_tests_enabled
    #   <p>Determines if tests should run after building the image. Image Builder defaults to enable tests
    #   			to run following the image build, before image distribution.</p>
    #   @return [Boolean]
    # @!attribute timeout_minutes
    #   <p>The maximum time in minutes that tests are permitted to run.</p>
    #            <note>
    #               <p>The timeout property is not currently active. This value is
    #   				ignored.</p>
    #            </note>
    #   @return [Integer]
    class ImageTestsConfiguration < Struct.new(
      :image_tests_enabled,
      :timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The defining characteristics of a specific version of an Image Builder image.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a specific version of an Image Builder image.</p>
    #            <note>
    #               <p>Semantic versioning is included in each object's Amazon Resource Name (ARN), 
    #   	at the level that applies to that object as follows:</p>
    #               <ol>
    #                  <li>
    #                     <p>Versionless ARNs and Name ARNs do not include specific values in any of the nodes. The nodes are 
    #   				either left off entirely, or they are specified as wildcards, for example: x.x.x.</p>
    #                  </li>
    #                  <li>
    #                     <p>Version ARNs have only the first three nodes: <major>.<minor>.<patch></p>
    #                  </li>
    #                  <li>
    #                     <p>Build version ARNs have all four nodes, and point to a specific build for a specific version of an object.</p>
    #                  </li>
    #               </ol>
    #            </note>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this specific version of an Image Builder image.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies whether this image produces an AMI or a container image.</p>
    #   @return [String]
    # @!attribute version
    #   <p>Details for a specific version of an Image Builder image. This version follows the semantic
    #   			version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the image version, for example "Windows" or 
    #   			"Linux".</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system version of the Amazon EC2 build instance. For example, Amazon Linux 2,
    #   			Ubuntu 18, or Microsoft Windows Server 2019.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the image version.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which this specific version of the Image Builder image was created.</p>
    #   @return [String]
    # @!attribute build_type
    #   <p>Indicates the type of build that created this image. The build can be initiated in the
    #   			following ways:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>USER_INITIATED</b> – A manual 
    #   					pipeline build request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SCHEDULED</b> – A pipeline build 
    #   					initiated by a cron expression in the Image Builder pipeline, or from EventBridge.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT</b> – A VM import created 
    #   					the image to use as the base image for the recipe.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IMPORT_ISO</b> – An ISO disk import created 
    #   					the image.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute image_source
    #   <p>The origin of the base image that Image Builder used to build this image.</p>
    #   @return [String]
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
      :image_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component. Describes the contents of the component.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>The change description of the component. This description indicates the change that
    #   			has been made in this version, or what makes this version different from other versions
    #   			of the component.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image, or
    #   			only to test it.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the resource that you want to import as a component.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #   @return [String]
    # @!attribute data
    #   <p>The data of the component. Used to specify the data inline. Either <code>data</code>
    #   			or <code>uri</code> can be used to specify the data within the component.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and the requester must have permission
    #   			to access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your
    #   			service quota. Either <code>data</code> or <code>uri</code> can be used to specify the
    #   			data within the component.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the imported component.</p>
    #   @return [String]
    class ImportComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image resource that's created from the import.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version to attach to the image that's created during the import
    #   			process. This version follows the semantic version syntax.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for your disk image import.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform for the imported image. Allowed values include 
    #   			the following: <code>Windows</code>.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system version for the imported image. Allowed values include 
    #   			the following: <code>Microsoft Windows 11</code>.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access 
    #   			to perform workflow actions to import an image from a Microsoft ISO file.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration resource that's used for 
    #   			launching the EC2 instance on which the ISO image is built.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The <code>uri</code> of the ISO disk file that's stored in Amazon S3.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    #   @return [Types::ImageLoggingConfiguration]
    # @!attribute tags
    #   <p>Tags that are attached to image resources created from the import.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class ImportDiskImageRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :platform,
      :os_version,
      :execution_role,
      :infrastructure_configuration_arn,
      :uri,
      :logging_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the output AMI that was created from the ISO disk file.</p>
    #   @return [String]
    class ImportDiskImageResponse < Struct.new(
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the base image that is created by the import process.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version to attach to the base image that was created during the import
    #   			process. This version follows the semantic version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes you can assign any positive integer value, including 
    #   	zero, with an upper limit of 2^30-1, or 1073741823 for each node. Image Builder automatically assigns the 
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for 
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or 
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the base image that is created by the import process.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform for the imported VM.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system version for the imported VM.</p>
    #   @return [String]
    # @!attribute vm_import_task_id
    #   <p>The <code>importTaskId</code> (API) or <code>ImportTaskId</code> (CLI) from the
    #   			Amazon EC2 VM import process. Image Builder retrieves information from the import process to pull in
    #   			the AMI that is created from the VM source as the base image for your recipe.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Define logging configuration for the image build process.</p>
    #   @return [Types::ImageLoggingConfiguration]
    # @!attribute tags
    #   <p>Tags that are attached to the import resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class ImportVmImageRequest < Struct.new(
      :name,
      :semantic_version,
      :description,
      :platform,
      :os_version,
      :vm_import_task_id,
      :logging_configuration,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the AMI that was created during the VM import
    #   			process. This AMI is used as the base image for the recipe that imported the VM.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    class ImportVmImageResponse < Struct.new(
      :request_id,
      :image_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the infrastructure configuration.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs of the infrastructure configuration.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The Amazon EC2 key pair of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure configuration of the infrastructure
    #   			configuration.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event
    #   			notifications.</p>
    #            <note>
    #               <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
    #   				account that the Image Builder service runs under.</p>
    #            </note>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which the infrastructure configuration was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which the infrastructure configuration was last updated.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata option settings for the infrastructure configuration.</p>
    #   @return [Types::InstanceMetadataOptions]
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute placement
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    #   @return [Types::Placement]
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
      :tags,
      :placement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The infrastructure used when building Amazon EC2 AMIs.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which the infrastructure configuration was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which the infrastructure configuration was last updated.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The tags attached to the image created by Image Builder.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute placement
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    #   @return [Types::Placement]
    class InfrastructureConfigurationSummary < Struct.new(
      :arn,
      :name,
      :description,
      :date_created,
      :date_updated,
      :resource_tags,
      :tags,
      :instance_types,
      :instance_profile_name,
      :placement,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the factors that influenced the score that Amazon Inspector assigned for a
    # 			finding.</p>
    # @!attribute adjusted_cvss
    #   <p>An object that contains details about an adjustment that Amazon Inspector made to the CVSS score
    #   			for the finding.</p>
    #   @return [Types::CvssScoreDetails]
    class InspectorScoreDetails < Struct.new(
      :adjusted_cvss,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines block device mappings for the instance used to configure your image.</p>
    # @!attribute device_name
    #   <p>The device to which these mappings apply.</p>
    #   @return [String]
    # @!attribute ebs
    #   <p>Use to manage Amazon EBS-specific configuration for this mapping.</p>
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    # @!attribute virtual_name
    #   <p>Use to manage instance ephemeral devices.</p>
    #   @return [String]
    # @!attribute no_device
    #   <p>Use to remove a mapping from the base image.</p>
    #   @return [String]
    class InstanceBlockDeviceMapping < Struct.new(
      :device_name,
      :ebs,
      :virtual_name,
      :no_device,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a custom base AMI and block device mapping configurations of an instance used
    # 			for building and testing container images.</p>
    # @!attribute image
    #   <p>The base image for a container build and test instance. This can contain an AMI ID 
    #   			or it can specify an Amazon Web Services Systems Manager (SSM) Parameter Store Parameter, prefixed by <code>ssm:</code>, 
    #   			followed by the parameter name or ARN.</p>
    #            <p>If not specified, Image Builder uses the appropriate ECS-optimized AMI as a base image.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>Defines the block devices to attach for building an instance from this Image Builder
    #   			AMI.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    class InstanceConfiguration < Struct.new(
      :image,
      :block_device_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The instance metadata options that apply to the HTTP requests that pipeline builds use
    # 			to launch EC2 build and test instances. For more information about instance metadata
    # 			options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    # 				<i>
    #                <i>Amazon EC2 User Guide</i>
    #             </i> for Linux instances, or <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    # 				<i>
    #                <i>Amazon EC2 Windows Guide</i>
    #             </i> for Windows instances.</p>
    # @!attribute http_tokens
    #   <p>Indicates whether a signed token header is required for instance metadata retrieval
    #   			requests. The values affect the response as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>required</b> – When you retrieve the IAM
    #   					role credentials, version 2.0 credentials are returned in all cases.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>optional</b> – You can include a signed
    #   					token header in your request to retrieve instance metadata, or you can leave it
    #   					out. If you include it, version 2.0 credentials are returned for the IAM role.
    #   					Otherwise, version 1.0 credentials are returned.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting is <b>optional</b>.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>Limit the number of hops that an instance metadata request can traverse to reach its
    #   			destination. The default is one hop. However, if HTTP tokens are required, container
    #   			image builds need a minimum of two hops.</p>
    #   @return [Integer]
    class InstanceMetadataOptions < Struct.new(
      :http_tokens,
      :http_put_response_hop_limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have provided an invalid pagination token in your request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have specified two or more mutually exclusive parameters. Review the error message
    # 			for details.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified parameter is invalid. Review the available parameters for the API
    # 			request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value that you provided for the specified parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have requested an action that that the service doesn't support.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your version number is out of bounds or does not follow the required syntax.</p>
    # @!attribute message
    #   @return [String]
    class InvalidVersionNumberException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for a launch permission. The launch permission
    # 			modification request is sent to the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2
    # 				ModifyImageAttribute</a> API on behalf of the user for each Region they have
    # 			selected to distribute the AMI. To make an AMI public, set the launch permission
    # 			authorized accounts to <code>all</code>. See the examples for making an AMI public at
    # 				<a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2
    # 				ModifyImageAttribute</a>.</p>
    # @!attribute user_ids
    #   <p>The Amazon Web Services account ID.</p>
    #   @return [Array<String>]
    # @!attribute user_groups
    #   <p>The name of the group.</p>
    #   @return [Array<String>]
    # @!attribute organization_arns
    #   <p>The ARN for an Amazon Web Services Organization that you want to share your AMI with. For more
    #   			information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What is
    #   				Organizations?</a>.</p>
    #   @return [Array<String>]
    # @!attribute organizational_unit_arns
    #   <p>The ARN for an Organizations organizational unit (OU) that you want to share your AMI with.
    #   			For more information about key concepts for Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html">Organizations
    #   				terminology and concepts</a>.</p>
    #   @return [Array<String>]
    class LaunchPermissionConfiguration < Struct.new(
      :user_ids,
      :user_groups,
      :organization_arns,
      :organizational_unit_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an Amazon EC2 launch template to use for a specific account.</p>
    # @!attribute launch_template_id
    #   <p>Identifies the Amazon EC2 launch template to use.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID that this configuration applies to.</p>
    #   @return [String]
    # @!attribute set_default_version
    #   <p>Set the specified Amazon EC2 launch template as the default launch template for the
    #   			specified account.</p>
    #   @return [Boolean]
    class LaunchTemplateConfiguration < Struct.new(
      :launch_template_id,
      :account_id,
      :set_default_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:set_default_version] = false unless options.key?(:set_default_version)
        super
      end
    end

    # <p>Contains metadata from a runtime instance of a lifecycle policy.</p>
    # @!attribute lifecycle_execution_id
    #   <p>Identifies the lifecycle policy runtime instance.</p>
    #   @return [String]
    # @!attribute lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy that ran.</p>
    #   @return [String]
    # @!attribute resources_impacted_summary
    #   <p>Contains information about associated resources that are identified for action by 
    #   			the runtime instance of the lifecycle policy.</p>
    #   @return [Types::LifecycleExecutionResourcesImpactedSummary]
    # @!attribute state
    #   <p>Runtime state that reports if the policy action ran successfully, 
    #   			failed, or was skipped.</p>
    #   @return [Types::LifecycleExecutionState]
    # @!attribute start_time
    #   <p>The timestamp when the lifecycle runtime instance started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when the lifecycle runtime instance completed.</p>
    #   @return [Time]
    class LifecycleExecution < Struct.new(
      :lifecycle_execution_id,
      :lifecycle_policy_arn,
      :resources_impacted_summary,
      :state,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for a resource that the runtime instance of the 
    # 			lifecycle policy identified for action.</p>
    # @!attribute account_id
    #   <p>The account that owns the impacted resource.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>Identifies the impacted resource. The resource ID depends on the type of 
    #   			resource, as follows.</p>
    #            <ul>
    #               <li>
    #                  <p>Image Builder image resources: Amazon Resource Name (ARN)</p>
    #               </li>
    #               <li>
    #                  <p>Distributed AMIs: AMI ID</p>
    #               </li>
    #               <li>
    #                  <p>Container images distributed to an ECR repository: image URI or SHA Digest</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute state
    #   <p>The runtime state for the lifecycle execution.</p>
    #   @return [Types::LifecycleExecutionResourceState]
    # @!attribute action
    #   <p>The action to take for the identified resource.</p>
    #   @return [Types::LifecycleExecutionResourceAction]
    # @!attribute region
    #   <p>The Amazon Web Services Region where the lifecycle execution resource is stored.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>A list of associated resource snapshots for the impacted resource if 
    #   			it’s an AMI.</p>
    #   @return [Array<Types::LifecycleExecutionSnapshotResource>]
    # @!attribute image_uris
    #   <p>For an impacted container image, this identifies a list of URIs for associated 
    #   			container images distributed to ECR repositories.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>The starting timestamp from the lifecycle action that was applied to the resource.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The ending timestamp from the lifecycle action that was applied to the resource.</p>
    #   @return [Time]
    class LifecycleExecutionResource < Struct.new(
      :account_id,
      :resource_id,
      :state,
      :action,
      :region,
      :snapshots,
      :image_uris,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The lifecycle policy action that was identified for the impacted resource.</p>
    # @!attribute name
    #   <p>The name of the resource that was identified for a lifecycle policy action.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the lifecycle policy action is taken.</p>
    #   @return [String]
    class LifecycleExecutionResourceAction < Struct.new(
      :name,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the state of an impacted resource that the runtime instance 
    # 			of the lifecycle policy identified for action.</p>
    # @!attribute status
    #   <p>The runtime status of the lifecycle action taken for the 
    #   			impacted resource.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Messaging that clarifies the reason for the assigned status.</p>
    #   @return [String]
    class LifecycleExecutionResourceState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details for an image resource that was identified for a lifecycle action.</p>
    # @!attribute has_impacted_resources
    #   <p>Indicates whether an image resource that was identified for a lifecycle action has 
    #   			associated resources that are also impacted.</p>
    #   @return [Boolean]
    class LifecycleExecutionResourcesImpactedSummary < Struct.new(
      :has_impacted_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:has_impacted_resources] = false unless options.key?(:has_impacted_resources)
        super
      end
    end

    # <p>Contains the state of an impacted snapshot resource that the runtime 
    # 			instance of the lifecycle policy identified for action.</p>
    # @!attribute snapshot_id
    #   <p>Identifies the impacted snapshot resource.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The runtime status of the lifecycle action taken for the snapshot.</p>
    #   @return [Types::LifecycleExecutionResourceState]
    class LifecycleExecutionSnapshotResource < Struct.new(
      :snapshot_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of the runtime instance of the lifecycle policy.</p>
    # @!attribute status
    #   <p>The runtime status of the lifecycle execution.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the current status.</p>
    #   @return [String]
    class LifecycleExecutionState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for a lifecycle policy resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the lifecycle policy resource is enabled.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder uses to run the lifecycle policy. 
    #   			This is a custom role that you create.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resources the lifecycle policy targets.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>The configuration details for a lifecycle policy resource.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute resource_selection
    #   <p>Resource selection criteria used to run the lifecycle policy.</p>
    #   @return [Types::LifecyclePolicyResourceSelection]
    # @!attribute date_created
    #   <p>The timestamp when Image Builder created the lifecycle policy resource.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The timestamp when Image Builder updated the lifecycle policy resource.</p>
    #   @return [Time]
    # @!attribute date_last_run
    #   <p>The timestamp for the last time Image Builder ran the lifecycle policy.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>To help manage your lifecycle policy resources, you can assign your own 
    #   			metadata to each resource in the form of tags. Each tag consists of a key and 
    #   			an optional value, both of which you define.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicy < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :policy_details,
      :resource_selection,
      :date_created,
      :date_updated,
      :date_last_run,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration details for a lifecycle policy resource.</p>
    # @!attribute action
    #   <p>Configuration details for the policy action.</p>
    #   @return [Types::LifecyclePolicyDetailAction]
    # @!attribute filter
    #   <p>Specifies the resources that the lifecycle policy applies to.</p>
    #   @return [Types::LifecyclePolicyDetailFilter]
    # @!attribute exclusion_rules
    #   <p>Additional rules to specify resources that should be exempt from policy actions.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRules]
    class LifecyclePolicyDetail < Struct.new(
      :action,
      :filter,
      :exclusion_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains selection criteria for the lifecycle policy.</p>
    # @!attribute type
    #   <p>Specifies the lifecycle action to take.</p>
    #   @return [String]
    # @!attribute include_resources
    #   <p>Specifies the resources that the lifecycle policy applies to.</p>
    #   @return [Types::LifecyclePolicyDetailActionIncludeResources]
    class LifecyclePolicyDetailAction < Struct.new(
      :type,
      :include_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how the lifecycle policy should apply actions to selected resources.</p>
    # @!attribute amis
    #   <p>Specifies whether the lifecycle action should apply to distributed AMIs.</p>
    #   @return [Boolean]
    # @!attribute snapshots
    #   <p>Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.</p>
    #   @return [Boolean]
    # @!attribute containers
    #   <p>Specifies whether the lifecycle action should apply to distributed containers.</p>
    #   @return [Boolean]
    class LifecyclePolicyDetailActionIncludeResources < Struct.new(
      :amis,
      :snapshots,
      :containers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:amis] = false unless options.key?(:amis)
        options[:snapshots] = false unless options.key?(:snapshots)
        options[:containers] = false unless options.key?(:containers)
        super
      end
    end

    # <p>Specifies resources that lifecycle policy actions should not apply to.</p>
    # @!attribute tag_map
    #   <p>Contains a list of tags that Image Builder uses to skip lifecycle actions for Image Builder image 
    #   			resources that have them.</p>
    #   @return [Hash<String, String>]
    # @!attribute amis
    #   <p>Lists configuration values that apply to AMIs that Image Builder should exclude 
    #   			from the lifecycle action.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmis]
    class LifecyclePolicyDetailExclusionRules < Struct.new(
      :tag_map,
      :amis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines criteria for AMIs that are excluded from lifecycle actions.</p>
    # @!attribute is_public
    #   <p>Configures whether public AMIs are excluded from the lifecycle action.</p>
    #   @return [Boolean]
    # @!attribute regions
    #   <p>Configures Amazon Web Services Regions that are excluded from the lifecycle action.</p>
    #   @return [Array<String>]
    # @!attribute shared_accounts
    #   <p>Specifies Amazon Web Services accounts whose resources are excluded from the lifecycle action.</p>
    #   @return [Array<String>]
    # @!attribute last_launched
    #   <p>Specifies configuration details for Image Builder to exclude the most recent resources 
    #   			from lifecycle actions.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched]
    # @!attribute tag_map
    #   <p>Lists tags that should be excluded from lifecycle actions for the AMIs that have them.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicyDetailExclusionRulesAmis < Struct.new(
      :is_public,
      :regions,
      :shared_accounts,
      :last_launched,
      :tag_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_public] = false unless options.key?(:is_public)
        super
      end
    end

    # <p>Defines criteria to exclude AMIs from lifecycle actions based on the last 
    # 			time they were used to launch an instance.</p>
    # @!attribute value
    #   <p>The integer number of units for the time period. For example <code>6</code> (months).</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>Defines the unit of time that the lifecycle policy uses to calculate elapsed time 
    #   			since the last instance launched from the AMI. For example: days, weeks, months, or years.</p>
    #   @return [String]
    class LifecyclePolicyDetailExclusionRulesAmisLastLaunched < Struct.new(
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines filters that the lifecycle policy uses to determine impacted resource.</p>
    # @!attribute type
    #   <p>Filter resources based on either <code>age</code> or <code>count</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The number of units for the time period or for the count. For example, a value of 
    #   			<code>6</code> might refer to six months or six AMIs.</p>
    #            <note>
    #               <p>For count-based filters, this value represents the minimum number of resources 
    #   				to keep on hand. If you have fewer resources than this number, the resource is 
    #   				excluded from lifecycle actions.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute unit
    #   <p>Defines the unit of time that the lifecycle policy uses to determine impacted 
    #   			resources. This is required for age-based rules.</p>
    #   @return [String]
    # @!attribute retain_at_least
    #   <p>For age-based filters, this is the number of resources to keep on hand after the lifecycle 
    #   			<code>DELETE</code> action is applied. Impacted resources are only deleted if you have more than 
    #   			this number of resources. If you have fewer resources than this number, the impacted resource 
    #   			is not deleted.</p>
    #   @return [Integer]
    class LifecyclePolicyDetailFilter < Struct.new(
      :type,
      :value,
      :unit,
      :retain_at_least,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource selection criteria for the lifecycle policy.</p>
    # @!attribute recipes
    #   <p>A list of recipes that are used as selection criteria for the output 
    #   			images that the lifecycle policy applies to.</p>
    #   @return [Array<Types::LifecyclePolicyResourceSelectionRecipe>]
    # @!attribute tag_map
    #   <p>A list of tags that are used as selection criteria for the Image Builder image 
    #   			resources that the lifecycle policy applies to.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicyResourceSelection < Struct.new(
      :recipes,
      :tag_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies an Image Builder recipe that the lifecycle policy uses for resource selection.</p>
    # @!attribute name
    #   <p>The name of an Image Builder recipe that the lifecycle policy uses for resource selection.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The version of the Image Builder recipe specified by the <code>name</code> field.</p>
    #   @return [String]
    class LifecyclePolicyResourceSelectionRecipe < Struct.new(
      :name,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of lifecycle policy resources.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy summary resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The lifecycle policy resource status.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder uses to run the lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resources the lifecycle policy targets.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The timestamp when Image Builder created the lifecycle policy resource.</p>
    #   @return [Time]
    # @!attribute date_updated
    #   <p>The timestamp when Image Builder updated the lifecycle policy resource.</p>
    #   @return [Time]
    # @!attribute date_last_run
    #   <p>The timestamp for the last time Image Builder ran the lifecycle policy.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>To help manage your lifecycle policy resources, you can assign your own 
    #   			metadata to each resource in the form of tags. Each tag consists of a key and 
    #   			an optional value, both of which you define.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicySummary < Struct.new(
      :arn,
      :name,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :date_created,
      :date_updated,
      :date_last_run,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_version_arn
    #   <p>The component version Amazon Resource Name (ARN) whose versions you want to
    #   			list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListComponentBuildVersionsRequest < Struct.new(
      :component_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component_summary_list
    #   <p>The list of component summaries for the specified semantic version.</p>
    #   @return [Array<Types::ComponentSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListComponentBuildVersionsResponse < Struct.new(
      :request_id,
      :component_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Filters results based on the type of owner for the component. By default, this request
    #   			returns a list of components that your account owns. To see results for other types of
    #   			owners, you can specify components that Amazon manages, third party components, or
    #   			components that other accounts have shared with you.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>supportedOsVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute by_name
    #   <p>Returns the list of components for the specified name.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListComponentsRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component_version_list
    #   <p>The list of component semantic versions.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #            </note>
    #   @return [Array<Types::ComponentVersion>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListComponentsResponse < Struct.new(
      :request_id,
      :component_version_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Returns container recipes belonging to the specified owner, that have been shared with
    #   			you. You can omit this field to return container recipes belonging to your
    #   			account.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>containerType</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListContainerRecipesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute container_recipe_summary_list
    #   <p>The list of container recipes returned for the request.</p>
    #   @return [Array<Types::ContainerRecipeSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListContainerRecipesResponse < Struct.new(
      :request_id,
      :container_recipe_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListDistributionConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute distribution_configuration_summary_list
    #   <p>The list of distributions.</p>
    #   @return [Array<Types::DistributionConfigurationSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListDistributionConfigurationsResponse < Struct.new(
      :request_id,
      :distribution_configuration_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image whose build versions you want to
    #   			retrieve.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageBuildVersionsRequest < Struct.new(
      :image_version_arn,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_summary_list
    #   <p>The list of image build versions.</p>
    #   @return [Array<Types::ImageSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImageBuildVersionsResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>Filter results for the ListImagePackages request by the Image Build Version ARN</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePackagesRequest < Struct.new(
      :image_build_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_package_list
    #   <p>The list of Image Packages returned in the response.</p>
    #   @return [Array<Types::ImagePackage>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImagePackagesResponse < Struct.new(
      :request_id,
      :image_package_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline whose images you want to
    #   			view.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePipelineImagesRequest < Struct.new(
      :image_pipeline_arn,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_summary_list
    #   <p>The list of images built by this pipeline.</p>
    #   @return [Array<Types::ImageSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImagePipelineImagesResponse < Struct.new(
      :request_id,
      :image_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>description</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>distributionConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imageRecipeArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>infrastructureConfigurationArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePipelinesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_pipeline_list
    #   <p>The list of image pipelines.</p>
    #   @return [Array<Types::ImagePipeline>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImagePipelinesResponse < Struct.new(
      :request_id,
      :image_pipeline_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>You can specify the recipe owner to filter results by that owner. By default, this request will
    #   			only show image recipes owned by your account. To filter by a different owner, specify one of the 
    #   			<code>Valid Values</code> that are listed for this parameter.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parentImage</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageRecipesRequest < Struct.new(
      :owner,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_recipe_summary_list
    #   <p>A list of <code>ImageRecipeSummary</code> objects that contain identifying characteristics for the 
    #   			image recipe, such as the name, the Amazon Resource Name (ARN), and the date created, along with other key details.</p>
    #   @return [Array<Types::ImageRecipeSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImageRecipesResponse < Struct.new(
      :request_id,
      :image_recipe_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A filter name and value pair that is used to return a more specific list of results
    #   			from a list operation. Filters can be used to match a set of resources by specific
    #   			criteria, such as tags, attributes, or IDs.</p>
    #   @return [Types::Filter]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageScanFindingAggregationsRequest < Struct.new(
      :filter,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute aggregation_type
    #   <p>The aggregation type specifies what type of key is used to group the image scan
    #   			findings. Image Builder returns results based on the request filter. If you didn't specify a
    #   			filter in the request, the type defaults to <code>accountId</code>.</p>
    #            <p class="title">
    #               <b>Aggregation types</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>accountId</p>
    #               </li>
    #               <li>
    #                  <p>imageBuildVersionArn</p>
    #               </li>
    #               <li>
    #                  <p>imagePipelineArn</p>
    #               </li>
    #               <li>
    #                  <p>vulnerabilityId</p>
    #               </li>
    #            </ul>
    #            <p>Each aggregation includes counts by severity level for medium severity and higher
    #   			level findings, plus a total for all of the findings for each key value.</p>
    #   @return [String]
    # @!attribute responses
    #   <p>An array of image scan finding aggregations that match the filter criteria.</p>
    #   @return [Array<Types::ImageScanFindingAggregation>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImageScanFindingAggregationsResponse < Struct.new(
      :request_id,
      :aggregation_type,
      :responses,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>An array of name value pairs that you can use to filter your results. You can use the
    #   			following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>imageBuildVersionArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imagePipelineArn</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vulnerabilityId</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>severity</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you don't request a filter, then all findings in your account are listed.</p>
    #   @return [Array<Types::ImageScanFindingsFilter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageScanFindingsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute findings
    #   <p>The image scan findings for your account that meet your request filter
    #   			criteria.</p>
    #   @return [Array<Types::ImageScanFinding>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImageScanFindingsResponse < Struct.new(
      :request_id,
      :findings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>The owner defines which images you want to list. By default, this request will only
    #   			show images owned by your account. You can use this field to specify if you want to view
    #   			images owned by yourself, by Amazon, or those images that have been shared with you by
    #   			other customers.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Use the following filters to streamline results:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>osVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>platform</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>type</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>version</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute by_name
    #   <p>Requests a list of images with a specific recipe name.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute include_deprecated
    #   <p>Includes deprecated images in the response list.</p>
    #   @return [Boolean]
    class ListImagesRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      :include_deprecated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_version_list
    #   <p>The list of image semantic versions.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>. 
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Filtering:</b> With semantic versioning, you have the flexibility to use wildcards (x) 
    #   	to specify the most recent versions or nodes when selecting the base image or components for your 
    #   	recipe. When you use a wildcard in any node, all nodes to the right of the first wildcard must also be 
    #   	wildcards.</p>
    #            </note>
    #   @return [Array<Types::ImageVersion>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImagesResponse < Struct.new(
      :request_id,
      :image_version_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>You can filter on <code>name</code> to streamline results.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListInfrastructureConfigurationsRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_summary_list
    #   <p>The list of infrastructure configurations.</p>
    #   @return [Array<Types::InfrastructureConfigurationSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListInfrastructureConfigurationsResponse < Struct.new(
      :request_id,
      :infrastructure_configuration_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>Use the unique identifier for a runtime instance of the lifecycle policy to get runtime details.</p>
    #   @return [String]
    # @!attribute parent_resource_id
    #   <p>You can  leave this empty to get a list of Image Builder resources that were identified for lifecycle actions.</p>
    #            <p>To get a list of associated resources that are impacted for an individual resource (the parent), specify 
    #   			its Amazon Resource Name (ARN). Associated resources are produced from your image and distributed when you run a build, such as 
    #   			AMIs or container images stored in ECR repositories.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListLifecycleExecutionResourcesRequest < Struct.new(
      :lifecycle_execution_id,
      :parent_resource_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>Runtime details for the specified runtime instance of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute lifecycle_execution_state
    #   <p>The current state of the lifecycle runtime instance.</p>
    #   @return [Types::LifecycleExecutionState]
    # @!attribute resources
    #   <p>A list of resources that were identified for lifecycle actions.</p>
    #   @return [Array<Types::LifecycleExecutionResource>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListLifecycleExecutionResourcesResponse < Struct.new(
      :lifecycle_execution_id,
      :lifecycle_execution_state,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to get a list of lifecycle runtime instances.</p>
    #   @return [String]
    class ListLifecycleExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_executions
    #   <p>A list of lifecycle runtime instances for the specified resource.</p>
    #   @return [Array<Types::LifecycleExecution>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListLifecycleExecutionsResponse < Struct.new(
      :lifecycle_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Streamline results based on one of the following values: <code>Name</code>, 
    #   			<code>Status</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListLifecyclePoliciesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_summary_list
    #   <p>A list of lifecycle policies in your Amazon Web Services account that meet the criteria 
    #   			specified in the request.</p>
    #   @return [Array<Types::LifecyclePolicySummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListLifecyclePoliciesResponse < Struct.new(
      :lifecycle_policy_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags you want to retrieve.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWaitingWorkflowStepsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute steps
    #   <p>An array of the workflow steps that are waiting for action in your 
    #   			Amazon Web Services account.</p>
    #   @return [Array<Types::WorkflowStepExecution>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWaitingWorkflowStepsResponse < Struct.new(
      :steps,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource for which to get a list of build versions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWorkflowBuildVersionsRequest < Struct.new(
      :workflow_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_summary_list
    #   <p>A list that contains metadata for the workflow builds that have run for 
    #   			the workflow resource specified in the request.</p>
    #   @return [Array<Types::WorkflowSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowBuildVersionsResponse < Struct.new(
      :workflow_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>List all workflow runtime instances for the specified image build version 
    #   			resource ARN.</p>
    #   @return [String]
    class ListWorkflowExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute workflow_executions
    #   <p>Contains an array of runtime details that represents each time a workflow ran for 
    #   			the requested image build version.</p>
    #   @return [Array<Types::WorkflowExecutionMetadata>]
    # @!attribute image_build_version_arn
    #   <p>The resource ARN of the image build version for which you requested a list of 
    #   			workflow runtime details.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the list action, if applicable.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowExecutionsResponse < Struct.new(
      :request_id,
      :workflow_executions,
      :image_build_version_arn,
      :message,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    class ListWorkflowStepExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>Contains an array of runtime details that represents each step in this runtime 
    #   			instance of the workflow.</p>
    #   @return [Array<Types::WorkflowStepMetadata>]
    # @!attribute workflow_build_version_arn
    #   <p>The build version ARN for the Image Builder workflow resource that defines the steps for 
    #   			this runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The image build version resource ARN that's associated with the specified runtime 
    #   			instance of the workflow.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the list action, if applicable.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowStepExecutionsResponse < Struct.new(
      :request_id,
      :steps,
      :workflow_build_version_arn,
      :workflow_execution_id,
      :image_build_version_arn,
      :message,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Used to get a list of workflow build version filtered by the identity of the creator.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Used to streamline search results.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute by_name
    #   <p>Specify all or part of the workflow name to streamline results.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>Specify the maximum number of items to return in a request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the nextToken 
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWorkflowsRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_version_list
    #   <p>A list of workflow build versions that match the request criteria.</p>
    #   @return [Array<Types::WorkflowVersion>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty, 
    #   	there are additional elements that the service hasn't included in this request. Use this token 
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      :workflow_version_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Logging configuration defines where Image Builder uploads your logs.</p>
    # @!attribute s3_logs
    #   <p>The Amazon S3 logging configuration.</p>
    #   @return [Types::S3Logs]
    class Logging < Struct.new(
      :s3_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resources produced by this image.</p>
    # @!attribute amis
    #   <p>The Amazon EC2 AMIs created by this image.</p>
    #   @return [Array<Types::Ami>]
    # @!attribute containers
    #   <p>Container images that the pipeline has generated and stored in the output
    #   			repository.</p>
    #   @return [Array<Types::Container>]
    class OutputResources < Struct.new(
      :amis,
      :containers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about package vulnerability findings.</p>
    # @!attribute vulnerability_id
    #   <p>A unique identifier for this vulnerability.</p>
    #   @return [String]
    # @!attribute vulnerable_packages
    #   <p>The packages that this vulnerability impacts.</p>
    #   @return [Array<Types::VulnerablePackage>]
    # @!attribute source
    #   <p>The source of the vulnerability information.</p>
    #   @return [String]
    # @!attribute cvss
    #   <p>CVSS scores for one or more vulnerabilities that Amazon Inspector identified for a
    #   			package.</p>
    #   @return [Array<Types::CvssScore>]
    # @!attribute related_vulnerabilities
    #   <p>Vulnerabilities that are often related to the findings for the package.</p>
    #   @return [Array<String>]
    # @!attribute source_url
    #   <p>A link to the source of the vulnerability information.</p>
    #   @return [String]
    # @!attribute vendor_severity
    #   <p>The severity that the vendor assigned to this vulnerability type.</p>
    #   @return [String]
    # @!attribute vendor_created_at
    #   <p>The date and time when this vulnerability was first added to the vendor's
    #   			database.</p>
    #   @return [Time]
    # @!attribute vendor_updated_at
    #   <p>The date and time when the vendor last updated this vulnerability in their
    #   			database.</p>
    #   @return [Time]
    # @!attribute reference_urls
    #   <p>Links to web pages that contain details about the vulnerabilities that Amazon Inspector
    #   			identified for the package.</p>
    #   @return [Array<String>]
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
      :reference_urls,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration that's defined for pipeline execution.</p>
    # @!attribute image_log_group_name
    #   <p>The log group name that Image Builder uses for image creation. If not specified, the log group 
    #   			name defaults to <code>/aws/imagebuilder/image-name</code>.</p>
    #   @return [String]
    # @!attribute pipeline_log_group_name
    #   <p>The log group name that Image Builder uses for the log output during creation of a new pipeline. 
    #   			If not specified, the pipeline log group name defaults to 
    #   			<code>/aws/imagebuilder/pipeline/pipeline-name</code>.</p>
    #   @return [String]
    class PipelineLoggingConfiguration < Struct.new(
      :image_log_group_name,
      :pipeline_log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>By default, EC2 instances run on shared tenancy hardware. This means that multiple 
    # 			Amazon Web Services accounts might share the same physical hardware. When you use dedicated hardware, 
    # 			the physical server that hosts your instances is dedicated to your Amazon Web Services account. 
    # 			Instance placement settings contain the details for the physical hardware where 
    # 			instances that Image Builder launches during image creation will run.</p>
    # @!attribute availability_zone
    #   <p>The Availability Zone where your build and test instances will launch.</p>
    #   @return [String]
    # @!attribute tenancy
    #   <p>The tenancy of the instance. An instance with a tenancy of <code>dedicated</code> 
    #   			runs on single-tenant hardware. An instance with a tenancy of <code>host</code> runs 
    #   			on a Dedicated Host.</p>
    #            <p>If tenancy is set to <code>host</code>, then you can optionally specify one target 
    #   			for placement – either host ID or host resource group ARN. If automatic placement 
    #   			is enabled for your host, and you don't specify any placement target, Amazon EC2 will try to 
    #   			find an available host for your build and test instances.</p>
    #   @return [String]
    # @!attribute host_id
    #   <p>The ID of the Dedicated Host on which build and test instances run. This only 
    #   			applies if <code>tenancy</code> is <code>host</code>. If you specify the host ID, you 
    #   			must not specify the resource group ARN. If you specify both, Image Builder returns an error.</p>
    #   @return [String]
    # @!attribute host_resource_group_arn
    #   <p>The Amazon Resource Name (ARN) of the host resource group in which to launch build and test instances. 
    #   			This only applies if <code>tenancy</code> is <code>host</code>. If you specify the resource 
    #   			group ARN, you must not specify the host ID. If you specify both, Image Builder returns an error.</p>
    #   @return [String]
    class Placement < Struct.new(
      :availability_zone,
      :tenancy,
      :host_id,
      :host_resource_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a single product code.</p>
    # @!attribute product_code_id
    #   <p>For Amazon Web Services Marketplace components, this contains the product code ID that can be stamped onto 
    #   			an EC2 AMI to ensure that components are billed correctly. If this property is empty, 
    #   			it might mean that the component is not published.</p>
    #   @return [String]
    # @!attribute product_code_type
    #   <p>The owner of the product code that's billed. If this property is 
    #   			empty, it might mean that the component is not published.</p>
    #   @return [String]
    class ProductCodeListItem < Struct.new(
      :product_code_id,
      :product_code_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy should be applied
    #   			to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #   @return [String]
    class PutComponentPolicyRequest < Struct.new(
      :component_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component that this policy was applied
    #   			to.</p>
    #   @return [String]
    class PutComponentPolicyResponse < Struct.new(
      :request_id,
      :component_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy should be
    #   			applied to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to apply to the container recipe.</p>
    #   @return [String]
    class PutContainerRecipePolicyRequest < Struct.new(
      :container_recipe_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that this policy was applied
    #   			to.</p>
    #   @return [String]
    class PutContainerRecipePolicyResponse < Struct.new(
      :request_id,
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy should be applied
    #   			to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #   @return [String]
    class PutImagePolicyRequest < Struct.new(
      :image_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_arn
    #   <p>The Amazon Resource Name (ARN) of the image that this policy was applied to.</p>
    #   @return [String]
    class PutImagePolicyResponse < Struct.new(
      :request_id,
      :image_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy should be applied
    #   			to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy to apply.</p>
    #   @return [String]
    class PutImageRecipePolicyRequest < Struct.new(
      :image_recipe_arn,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that this policy was applied
    #   			to.</p>
    #   @return [String]
    class PutImageRecipePolicyResponse < Struct.new(
      :request_id,
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how to remediate a finding.</p>
    # @!attribute recommendation
    #   <p>An object that contains information about the recommended course of action to
    #   			remediate the finding.</p>
    #   @return [Types::RemediationRecommendation]
    class Remediation < Struct.new(
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the recommended course of action to remediate the finding.</p>
    # @!attribute text
    #   <p>The recommended course of action to remediate the finding.</p>
    #   @return [String]
    # @!attribute url
    #   <p>A link to more information about the recommended remediation for this
    #   			vulnerability.</p>
    #   @return [String]
    class RemediationRecommendation < Struct.new(
      :text,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource that you are trying to create already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted to mutate or delete a resource with a dependency that prohibits
    # 			this action. See the error message for more details.</p>
    # @!attribute message
    #   @return [String]
    class ResourceDependencyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource that you are trying to operate on is currently in use. Review the message
    # 			details and retry later.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one of the resources referenced by your request does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The current state of an impacted resource.</p>
    # @!attribute status
    #   <p>Shows the current lifecycle policy action that was applied to an impacted resource.</p>
    #   @return [String]
    class ResourceState < Struct.new(
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional rules to specify resources that should be exempt from ad-hoc lifecycle actions.</p>
    # @!attribute amis
    #   <p>Defines criteria for AMIs that are excluded from lifecycle actions.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmis]
    class ResourceStateUpdateExclusionRules < Struct.new(
      :amis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies if the lifecycle policy should apply actions to selected resources.</p>
    # @!attribute amis
    #   <p>Specifies whether the lifecycle action should apply to distributed AMIs</p>
    #   @return [Boolean]
    # @!attribute snapshots
    #   <p>Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.</p>
    #   @return [Boolean]
    # @!attribute containers
    #   <p>Specifies whether the lifecycle action should apply to distributed containers.</p>
    #   @return [Boolean]
    class ResourceStateUpdateIncludeResources < Struct.new(
      :amis,
      :snapshots,
      :containers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:amis] = false unless options.key?(:amis)
        options[:snapshots] = false unless options.key?(:snapshots)
        options[:containers] = false unless options.key?(:containers)
        super
      end
    end

    # <p>Properties that configure export from your build instance to a compatible file format
    # 			for your VM.</p>
    # @!attribute role_name
    #   <p>The name of the role that grants VM Import/Export permission to export images to your
    #   			S3 bucket.</p>
    #   @return [String]
    # @!attribute disk_image_format
    #   <p>Export the updated image to one of the following supported disk image formats:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Virtual Hard Disk (VHD)</b> – Compatible
    #   					with Citrix Xen and Microsoft Hyper-V virtualization products.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Stream-optimized ESX Virtual Machine Disk
    #   						(VMDK)</b> – Compatible with VMware ESX and VMware vSphere
    #   					versions 4, 5, and 6.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Raw</b> – Raw format.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The S3 bucket in which to store the output disk images for your VM.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The Amazon S3 path for the bucket where the output disk images for your VM are
    #   			stored.</p>
    #   @return [String]
    class S3ExportConfiguration < Struct.new(
      :role_name,
      :disk_image_format,
      :s3_bucket,
      :s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon S3 logging configuration.</p>
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket in which to store the logs.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>The Amazon S3 path to the bucket where the logs are stored.</p>
    #   @return [String]
    class S3Logs < Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A schedule configures when and how often a pipeline will automatically create a new
    # 			image.</p>
    # @!attribute schedule_expression
    #   <p>The cron expression determines how often EC2 Image Builder evaluates your
    #   				<code>pipelineExecutionStartCondition</code>.</p>
    #            <p>For information on how to format a cron expression in Image Builder, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html">Use
    #   				cron expressions in EC2 Image Builder</a>.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The timezone that applies to the scheduling expression. For example, "Etc/UTC",
    #   			"America/Los_Angeles" in the <a href="https://www.joda.org/joda-time/timezones.html">IANA timezone format</a>. If not specified this defaults to UTC.</p>
    #   @return [String]
    # @!attribute pipeline_execution_start_condition
    #   <p>The start condition configures when the pipeline should trigger a new image build, 
    #   			as follows. If no value is set Image Builder defaults to 
    #   			<code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE</code> (default) – 
    #   					When you use semantic version filters on the base image or components in your 
    #   					image recipe, EC2 Image Builder builds a new image only when there are new versions of 
    #   					the base image or components in your recipe that match the filter.</p>
    #                  <note>
    #                     <p>For semantic version syntax, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html">CreateComponent</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPRESSION_MATCH_ONLY</code> – This condition builds a new 
    #   					image every time the CRON expression matches the current time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auto_disable_policy
    #   <p>The policy that configures when Image Builder should automatically disable a pipeline that 
    #   			is failing.</p>
    #   @return [Types::AutoDisablePolicy]
    class Schedule < Struct.new(
      :schedule_expression,
      :timezone,
      :pipeline_execution_start_condition,
      :auto_disable_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_execution_id
    #   <p>Uniquely identifies the workflow step that sent the step action.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version to send action for.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action for the image creation process to take while a workflow 
    #   			<code>WaitForAction</code> step waits for an asynchronous action to complete.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why this action is sent.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class SendWorkflowStepActionRequest < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :action,
      :reason,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_execution_id
    #   <p>The workflow step that sent the step action.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that received the action 
    #   			request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    class SendWorkflowStepActionResponse < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the service encounters an unrecoverable
    # 			exception.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the number of permitted resources or operations for this service.
    # 			For service quotas, see <a href="https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html#limits_imagebuilder">EC2 Image Builder endpoints and
    # 				quotas</a>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unable to process your request at this time.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes counts by severity level for medium severity and higher level findings, plus a total
    # 			for all of the findings for the specified filter.</p>
    # @!attribute all
    #   <p>The total number of findings across all severity levels for the specified filter.</p>
    #   @return [Integer]
    # @!attribute critical
    #   <p>The number of critical severity findings for the specified filter.</p>
    #   @return [Integer]
    # @!attribute high
    #   <p>The number of high severity findings for the specified filter.</p>
    #   @return [Integer]
    # @!attribute medium
    #   <p>The number of medium severity findings for the specified filter.</p>
    #   @return [Integer]
    class SeverityCounts < Struct.new(
      :all,
      :critical,
      :high,
      :medium,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for a single Parameter in the Amazon Web Services Systems Manager (SSM) Parameter Store in 
    # 			a given Region.</p>
    # @!attribute ami_account_id
    #   <p>Specify the account that will own the Parameter in a given Region. During distribution, 
    #   			this account must be specified in distribution settings as a target account for the 
    #   			Region.</p>
    #   @return [String]
    # @!attribute parameter_name
    #   <p>This is the name of the Parameter in the target Region or account. The image 
    #   			distribution creates the Parameter if it doesn't already exist. Otherwise, it updates 
    #   			the parameter.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type specifies what type of value the Parameter contains. We recommend that 
    #   			you use data type <code>aws:ec2:image</code>.</p>
    #   @return [String]
    class SsmParameterConfiguration < Struct.new(
      :ami_account_id,
      :parameter_name,
      :data_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to manually
    #   			invoke.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Specify tags for Image Builder to apply to the image resource that's created 
    #   			When it starts pipeline execution.</p>
    #   @return [Hash<String, String>]
    class StartImagePipelineExecutionRequest < Struct.new(
      :image_pipeline_arn,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that the request created.</p>
    #   @return [String]
    class StartImagePipelineExecutionResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the Image Builder resource that is updated. The state update might also 
    #   			impact associated resources.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Indicates the lifecycle action to take for this request.</p>
    #   @return [Types::ResourceState]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that’s used to update image state.</p>
    #   @return [String]
    # @!attribute include_resources
    #   <p>A list of image resources to update state for.</p>
    #   @return [Types::ResourceStateUpdateIncludeResources]
    # @!attribute exclusion_rules
    #   <p>Skip action on the image resource and associated resources if specified 
    #   			exclusion rules are met.</p>
    #   @return [Types::ResourceStateUpdateExclusionRules]
    # @!attribute update_at
    #   <p>The timestamp that indicates when resources are updated by a lifecycle action.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class StartResourceStateUpdateRequest < Struct.new(
      :resource_arn,
      :state,
      :execution_role,
      :include_resources,
      :exclusion_rules,
      :update_at,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>Identifies the lifecycle runtime instance that started the resource 
    #   			state update.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The requested ARN of the Image Builder resource for the asynchronous update.</p>
    #   @return [String]
    class StartResourceStateUpdateResponse < Struct.new(
      :lifecycle_execution_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for the Systems Manager agent on your build instance.</p>
    # @!attribute uninstall_after_build
    #   <p>Controls whether the Systems Manager agent is removed from your final build image, prior to
    #   			creating the new AMI. If this is set to true, then the agent is removed from the final
    #   			image. If it's set to false, then the agent is left in, so that it is included in the
    #   			new AMI. default value is false.</p>
    #            <p>The default behavior of uninstallAfterBuild is to remove the SSM Agent if it was installed by EC2 Image Builder</p>
    #   @return [Boolean]
    class SystemsManagerAgent < Struct.new(
      :uninstall_after_build,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container repository where the output container image is stored.</p>
    # @!attribute service
    #   <p>Specifies the service in which this image was registered.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the container repository where the output container image is stored. 
    #   			This name is prefixed by the repository location. For example, 
    #   			<code><repository location url>/repository_name</code>.</p>
    #   @return [String]
    class TargetContainerRepository < Struct.new(
      :service,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #   @return [String]
    # @!attribute distributions
    #   <p>The distributions of the distribution configuration.</p>
    #   @return [Array<Types::Distribution>]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class UpdateDistributionConfigurationRequest < Struct.new(
      :distribution_configuration_arn,
      :description,
      :distributions,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that was updated by
    #   			this request.</p>
    #   @return [String]
    class UpdateDistributionConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that will be used to configure
    #   			images updated by this image pipeline.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container pipeline to update.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that Image Builder uses to
    #   			build images that this image pipeline has updated.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that Image Builder uses to
    #   			configure and distribute images that this image pipeline has updated.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>The image test configuration of the image pipeline.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Collects additional information about the image being created, including the operating
    #   			system (OS) version and package list. This information is used to enhance the overall
    #   			experience of using EC2 Image Builder. Enabled by default.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of the image pipeline.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the image pipeline.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>Contains the workflows to run for the pipeline.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>Update logging configuration for the output image that's created when 
    #   			the pipeline runs.</p>
    #   @return [Types::PipelineLoggingConfiguration]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants 
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
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
      :image_scanning_configuration,
      :workflows,
      :logging_configuration,
      :execution_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that was updated by this
    #   			request.</p>
    #   @return [String]
    class UpdateImagePipelineResponse < Struct.new(
      :request_id,
      :client_token,
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that you want to
    #   			update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. The service will pick one of these instance types
    #   			based on availability.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID to place the instance used to customize your Amazon EC2 AMI in.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>The terminate instance on failure setting of the infrastructure configuration. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) for the SNS topic to which we send image build event
    #   			notifications.</p>
    #            <note>
    #               <p>EC2 Image Builder is unable to send notifications to SNS topics that are encrypted using keys 
    #   				from other accounts. The key that is used to encrypt the SNS topic must reside in the 
    #   				account that the Image Builder service runs under.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The tags attached to the resource created by Image Builder.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata options that you can set for the HTTP requests that pipeline
    #   			builds use to launch EC2 build and test instances. For more information about instance
    #   			metadata options, see one of the following links:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 User Guide</i>
    #                     </i> for Linux instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   						<i>
    #                        <i>Amazon EC2 Windows Guide</i>
    #                     </i> for Windows instances.</p>
    #               </li>
    #            </ul>
    #   @return [Types::InstanceMetadataOptions]
    # @!attribute placement
    #   <p>The instance placement settings that define where the instances that are launched 
    #   			from your image will run.</p>
    #   @return [Types::Placement]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
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
      :resource_tags,
      :instance_metadata_options,
      :placement,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that was updated by
    #   			this request.</p>
    #   @return [String]
    class UpdateInfrastructureConfigurationResponse < Struct.new(
      :request_id,
      :client_token,
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy resource.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the lifecycle policy resource is enabled.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder uses to update the 
    #   			lifecycle policy.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of image resource that the lifecycle policy applies to.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>The configuration details for a lifecycle policy resource.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute resource_selection
    #   <p>Selection criteria for resources that the lifecycle policy applies to.</p>
    #   @return [Types::LifecyclePolicyResourceSelection]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure
    #          idempotency of the request. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a> 
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class UpdateLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :policy_details,
      :resource_selection,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>The ARN of the image lifecycle policy resource that was updated.</p>
    #   @return [String]
    class UpdateLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes counts of image and pipeline resource findings by vulnerability.</p>
    # @!attribute vulnerability_id
    #   <p>The vulnerability Id for this set of counts.</p>
    #   @return [String]
    # @!attribute severity_counts
    #   <p>Counts by severity level for medium severity and higher level findings, plus a total
    #   			for all of the findings for the specified vulnerability.</p>
    #   @return [Types::SeverityCounts]
    class VulnerabilityIdAggregation < Struct.new(
      :vulnerability_id,
      :severity_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a vulnerable package that Amazon Inspector identifies in a finding.</p>
    # @!attribute name
    #   <p>The name of the vulnerable package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the vulnerable package.</p>
    #   @return [String]
    # @!attribute source_layer_hash
    #   <p>The source layer hash of the vulnerable package.</p>
    #   @return [String]
    # @!attribute epoch
    #   <p>The epoch of the vulnerable package.</p>
    #   @return [Integer]
    # @!attribute release
    #   <p>The release of the vulnerable package.</p>
    #   @return [String]
    # @!attribute arch
    #   <p>The architecture of the vulnerable package.</p>
    #   @return [String]
    # @!attribute package_manager
    #   <p>The package manager of the vulnerable package.</p>
    #   @return [String]
    # @!attribute file_path
    #   <p>The file path of the vulnerable package.</p>
    #   @return [String]
    # @!attribute fixed_in_version
    #   <p>The version of the package that contains the vulnerability fix.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The code to run in your environment to update packages with a fix available.</p>
    #   @return [String]
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
      :remediation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a process that Image Builder uses to build and test images during 
    # 			the image creation process.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow resource.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The workflow resource version. Workflow resources are immutable. 
    #   			To make a change, you can clone a workflow or create a new version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>Describes what change has been made in this version of the workflow, or 
    #   			what makes this version different from other versions of the workflow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Specifies the image creation stage that the workflow applies to. Image Builder 
    #   			currently supports build and test workflows.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Describes the current status of the workflow and the reason for 
    #   			that status.</p>
    #   @return [Types::WorkflowState]
    # @!attribute owner
    #   <p>The owner of the workflow resource.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Contains the YAML document content for the workflow.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier used to encrypt the workflow resource. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a> 
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The timestamp when Image Builder created the workflow resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the workflow resource</p>
    #   @return [Hash<String, String>]
    # @!attribute parameters
    #   <p>An array of input parameters that that the image workflow uses 
    #   			to control actions or configure settings.</p>
    #   @return [Array<Types::WorkflowParameterDetail>]
    class Workflow < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :change_description,
      :type,
      :state,
      :owner,
      :data,
      :kms_key_id,
      :date_created,
      :tags,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains control settings and configurable inputs for a workflow 
    # 			resource.</p>
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>Contains parameter values for each of the parameters that the workflow 
    #   			document defined for the workflow resource.</p>
    #   @return [Array<Types::WorkflowParameter>]
    # @!attribute parallel_group
    #   <p>Test workflows are defined within named runtime groups called parallel groups. 
    #   			The parallel group is the named group that contains this test workflow. Test 
    #   			workflows within a parallel group can run at the same time. Image Builder starts up to five 
    #   			test workflows in the group at the same time, and starts additional workflows as 
    #   			others complete, until all workflows in the group have completed. This field only 
    #   			applies for test workflows.</p>
    #   @return [String]
    # @!attribute on_failure
    #   <p>The action to take if the workflow fails.</p>
    #   @return [String]
    class WorkflowConfiguration < Struct.new(
      :workflow_arn,
      :parameters,
      :parallel_group,
      :on_failure,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata that includes details and status from this runtime instance of the workflow.</p>
    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource build version that ran.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>Unique identifier that Image Builder assigns to keep track of runtime resources each time it runs a
    #   			workflow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates what type of workflow that Image Builder ran for this runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current runtime status for this workflow.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The runtime output message from the workflow, if applicable.</p>
    #   @return [String]
    # @!attribute total_step_count
    #   <p>The total number of steps in the workflow. This should equal the sum of the step
    #   			counts for steps that succeeded, were skipped, and failed.</p>
    #   @return [Integer]
    # @!attribute total_steps_succeeded
    #   <p>A runtime count for the number of steps in the workflow that ran successfully.</p>
    #   @return [Integer]
    # @!attribute total_steps_failed
    #   <p>A runtime count for the number of steps in the workflow that failed.</p>
    #   @return [Integer]
    # @!attribute total_steps_skipped
    #   <p>A runtime count for the number of steps in the workflow that were skipped.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The timestamp when the runtime instance of this workflow started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when this runtime instance of the workflow finished.</p>
    #   @return [String]
    # @!attribute parallel_group
    #   <p>The name of the test group that included the test workflow resource at runtime.</p>
    #   @return [String]
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
      :end_time,
      :parallel_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_step_count] = 0 unless options.key?(:total_step_count)
        options[:total_steps_succeeded] = 0 unless options.key?(:total_steps_succeeded)
        options[:total_steps_failed] = 0 unless options.key?(:total_steps_failed)
        options[:total_steps_skipped] = 0 unless options.key?(:total_steps_skipped)
        super
      end
    end

    # <p>Contains a key/value pair that sets the named workflow parameter.</p>
    # @!attribute name
    #   <p>The name of the workflow parameter to set.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Sets the value for the named workflow parameter.</p>
    #   @return [Array<String>]
    class WorkflowParameter < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a parameter that's used to provide configuration details for the 
    # 			workflow.</p>
    # @!attribute name
    #   <p>The name of this input parameter.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of input this parameter provides. The currently supported value is
    #   			"string".</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of this parameter if no input is provided.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>Describes this parameter.</p>
    #   @return [String]
    class WorkflowParameterDetail < Struct.new(
      :name,
      :type,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A group of fields that describe the current status of workflow.</p>
    # @!attribute status
    #   <p>The current state of the workflow.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Describes how or why the workflow changed state.</p>
    #   @return [String]
    class WorkflowState < Struct.new(
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains runtime details for an instance of a workflow that ran for the 
    # 			associated image build version.</p>
    # @!attribute step_execution_id
    #   <p>Uniquely identifies the workflow step that ran for the associated 
    #   			image build version.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that ran the workflow.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>Uniquely identifies the runtime instance of the workflow that contains 
    #   			the workflow step that ran for the associated image build version.</p>
    #   @return [String]
    # @!attribute workflow_build_version_arn
    #   <p>The ARN of the workflow resource that ran.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow step.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The name of the step action.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the workflow step started.</p>
    #   @return [String]
    class WorkflowStepExecution < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :workflow_execution_id,
      :workflow_build_version_arn,
      :name,
      :action,
      :start_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Runtime details and status for the workflow step.</p>
    # @!attribute step_execution_id
    #   <p>A unique identifier for the workflow step, assigned at runtime.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the workflow step.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The step action name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Runtime status for the workflow step.</p>
    #   @return [String]
    # @!attribute rollback_status
    #   <p>Reports on the rollback status of the step, if applicable.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Detailed output message that the workflow step provides at runtime.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Input parameters that Image Builder provides for the workflow step.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The file names that the workflow step created as output for this runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the workflow step started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the workflow step finished.</p>
    #   @return [String]
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
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about the workflow resource.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the workflow.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>The change description for the current version of the workflow resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The image creation stage that this workflow applies to. Image Builder currently 
    #   			supports build and test stage workflows.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the workflow resource.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Describes the current state of the workflow resource.</p>
    #   @return [Types::WorkflowState]
    # @!attribute date_created
    #   <p>The original creation date of the workflow resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Contains a list of tags that are defined for the workflow.</p>
    #   @return [Hash<String, String>]
    class WorkflowSummary < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :change_description,
      :type,
      :owner,
      :state,
      :date_created,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about this version of the workflow.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The semantic version of the workflow resource. The format includes three nodes: <major>.<minor>.<patch>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the workflow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The image creation stage that this workflow applies to. Image Builder currently 
    #   			supports build and test stage workflows.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the workflow resource.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The timestamp when Image Builder created the workflow version.</p>
    #   @return [String]
    class WorkflowVersion < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :type,
      :owner,
      :date_created,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
