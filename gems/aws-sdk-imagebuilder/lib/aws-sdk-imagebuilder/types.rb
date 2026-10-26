# frozen_string_literal: true

# This is generated code!

module Aws::Imagebuilder
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have permissions to perform the requested operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

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
      nil,
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
    #   <p>The Systems Manager agent settings for your build instance. This setting
    #   			applies to Linux and macOS build instances only. Requests that set it for a
    #   			recipe with a Windows base image are rejected.</p>
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
    #   				<code>IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhcg==</code>:</p>
    #               <p>
    #                  <i>#!/bin/bash</i>
    #               </p>
    #               <p>mkdir -p /var/bb/</p>
    #               <p>touch /var</p>
    #            </note>
    #   @return [String]
    class AdditionalInstanceConfiguration < Struct.new(
      nil,
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
    #   <p>The state of the AMI, which includes the status and, if applicable,
    #   			the reason for that status.</p>
    #   @return [Types::ImageState]
    # @!attribute account_id
    #   <p>The account ID of the owner of the AMI.</p>
    #   @return [String]
    class Ami < Struct.new(
      nil,
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
    #   <p>The name of the output AMI. The name must include the
    #   			<code>{{ imagebuilder:buildDate }}</code> dynamic tag so that each build
    #   			produces a uniquely named AMI. If you don't specify a name, Image Builder
    #   			names the output AMI with the image name followed by the build timestamp,
    #   			for example <code>my-image 2022-10-26T22-30-05.912619Z</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description to apply to the distributed AMI. Image Builder sets this as the
    #   			output AMI's description in each target Region and account. If you
    #   			don't specify a description, the AMI in the build Region uses the
    #   			image recipe's description, if the recipe has one. Copies distributed
    #   			to other Regions and accounts don't receive a default
    #   			description.</p>
    #   @return [String]
    # @!attribute target_account_ids
    #   <p>The Amazon Web Services account IDs to distribute the AMI to in this Region. Each listed
    #   			account receives its own copy of the output AMI. If you don't specify
    #   			accounts, Image Builder distributes the AMI only to your own account.</p>
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
      nil,
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

    # <p>Defines the rules by which an image pipeline is automatically disabled when
    # 			it fails. By default, if the schedule doesn't include an auto-disable
    # 			policy, Image Builder disables the pipeline after 5 consecutive failed scheduled
    # 			builds.</p>
    # @!attribute failure_count
    #   <p>The number of consecutive scheduled image pipeline executions that must fail before Image Builder
    #   			automatically disables the pipeline.</p>
    #   @return [Integer]
    class AutoDisablePolicy < Struct.new(
      nil,
      :failure_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies the Amazon EC2 Auto Scaling group that Image Builder takes the build instance from,
    # 			and how long Image Builder waits when the group has no instance available.</p>
    # @!attribute name
    #   <p>The name of the Auto Scaling group, in the same account and Amazon Web Services Region as the
    #   			infrastructure configuration. To specify a group, you must have permissions to describe
    #   			it.</p>
    #   @return [String]
    # @!attribute capacity_wait_timeout_seconds
    #   <p>The number of seconds that Image Builder waits for an instance to become available in the
    #   			group before the build fails. If you set this value to 0 or omit it, the build fails as
    #   			soon as the group has no instance available.</p>
    #   @return [Integer]
    class AutoScalingGroupConfiguration < Struct.new(
      nil,
      :name,
      :capacity_wait_timeout_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have exceeded the permitted request rate for the Amazon EC2 APIs that Image Builder
    # 			calls on your behalf. Retry with an increasing or variable delay between
    # 			requests.</p>
    # @!attribute message
    #   @return [String]
    class CallRateLimitExceededException < Struct.new(
      nil,
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
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CancelImageCreationRequest < Struct.new(
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the image whose creation this request canceled.</p>
    #   @return [String]
    class CancelImageCreationResponse < Struct.new(
      nil,
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
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class CancelLifecycleExecutionRequest < Struct.new(
      nil,
      :lifecycle_execution_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>The unique identifier of the lifecycle execution that the cancellation
    #   			request applies to. The cancellation completes asynchronously.</p>
    #   @return [String]
    class CancelLifecycleExecutionResponse < Struct.new(
      nil,
      :lifecycle_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A generic client error. This error usually indicates that the request
    # 			failed a validation check, such as when a downstream service rejects a
    # 			configured value.</p>
    # @!attribute message
    #   @return [String]
    class ClientException < Struct.new(
      nil,
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
    #   <p>The owner of the component. The value is your account ID for components
    #   			that you own, the sharing account's ID for shared components, or
    #   			<code>Amazon</code>, <code>ThirdParty</code>, or <code>AWSMarketplace</code>.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Component data contains the YAML document content for the component.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier used to encrypt the component. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Indicates whether the component data is encrypted at rest. Image Builder encrypts
    #   			all component data at rest, so this value is always <code>true</code>. This
    #   			field is retained for backward compatibility.</p>
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
      nil,
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

    # <p>Configuration details of the component. You can specify each component only
    # 			once in a recipe, regardless of version. Components with a status of
    # 			<code>DEPRECATED</code> or <code>DISABLED</code> can't be added to new
    # 			recipes.</p>
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component. You can specify a build version ARN, or a
    #   			component version ARN whose version segments can use <code>x</code>
    #   			wildcards, for example <code>1.x.x</code>.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>A group of parameter settings that Image Builder uses to configure the component for
    #   			a specific recipe. You must supply a value for every component parameter
    #   			that has no default value, and you can only supply parameters that the
    #   			component defines.</p>
    #   @return [Array<Types::ComponentParameter>]
    class ComponentConfiguration < Struct.new(
      nil,
      :component_arn,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the component that caused the image creation process to
    # 			fail. The details identify the first step that failed when the component ran.</p>
    # @!attribute component_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version that failed.</p>
    #   @return [String]
    # @!attribute phase_name
    #   <p>The name of the phase in the component document where the failure occurred, such
    #   			as <code>build</code>, <code>validate</code>, or <code>test</code>.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The name of the step in the component document that failed.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action that the failed step runs, for example <code>ExecuteBash</code>.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message from the step that failed. Image Builder truncates messages that are
    #   			longer than 1024 characters. The component log in Amazon CloudWatch Logs contains
    #   			the full output.</p>
    #   @return [String]
    class ComponentFailureContext < Struct.new(
      nil,
      :component_arn,
      :phase_name,
      :step_name,
      :action,
      :error_message,
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
      nil,
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
      nil,
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
    #   <p>The current state of the component. Components with a status of
    #   			<code>DEPRECATED</code> or <code>DISABLED</code> can't be added to new
    #   			recipes.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Describes how or why the component changed state.</p>
    #   @return [String]
    class ComponentState < Struct.new(
      nil,
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
    #   <p>The owner of the component. The value is your account ID for components
    #   			that you own, the sharing account's ID for shared components, or
    #   			<code>Amazon</code>, <code>ThirdParty</code>, or <code>AWSMarketplace</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>The change description for this version of the component.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date that Image Builder created this version of the component.</p>
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
      nil,
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

    # <p>The defining characteristics of a specific version of a component.</p>
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
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    #   	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    #   	to the right of the first wildcard must also be wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform of the component.</p>
    #   @return [String]
    # @!attribute supported_os_versions
    #   <p>The operating system (OS) version supported by the component. If OS information is
    #   			available, Image Builder performs a prefix match against the base image OS version during image
    #   			recipe creation.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the component denotes whether the component is used to build the image or
    #   			only to test it.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the component. The value is your account ID for components
    #   			that you own, the sharing account's ID for shared components, or
    #   			<code>Amazon</code>, <code>ThirdParty</code>, or <code>AWSMarketplace</code>.</p>
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
      nil,
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

    # <p>Details of the container images that are output resources of an image build
    # 			in a given Amazon Web Services Region: the Region, and the URIs of the container
    # 			images.</p>
    # @!attribute region
    #   <p>Containers and container images are Region-specific. This is the Region context for
    #   			the container.</p>
    #   @return [String]
    # @!attribute image_uris
    #   <p>A list of URIs for containers created in the context Region.</p>
    #   @return [Array<String>]
    class Container < Struct.new(
      nil,
      :region,
      :image_uris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how the output container image is distributed in a specific
    # 			Amazon Web Services Region: the target repository, the image tags to apply to the
    # 			distributed image, and an optional description.</p>
    # @!attribute description
    #   <p>The description of the container distribution configuration.</p>
    #   @return [String]
    # @!attribute container_tags
    #   <p>Tags that Image Builder applies to the distributed container image in the target
    #   			repository. These are repository image tags, not resource tags.</p>
    #   @return [Array<String>]
    # @!attribute target_repository
    #   <p>The destination repository for the container distribution configuration.</p>
    #   @return [Types::TargetContainerRepository]
    class ContainerDistributionConfiguration < Struct.new(
      nil,
      :description,
      :container_tags,
      :target_repository,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how Image Builder builds and tests a container image: the base image,
    # 			components to apply, the Dockerfile template, the build and test instance
    # 			configuration, and the target repository for the output image.</p>
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
    #   <p>The system platform for the container. Container recipes support only the
    #   			Linux and Windows platforms.</p>
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
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    #   	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    #   	to the right of the first wildcard must also be wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>Build and test components that are included in the container recipe.
    #   			A recipe can contain a maximum of 20 build and test components
    #   			in any combination, by default. This maximum is an adjustable quota. For more information, see
    #   			<a href="https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html">EC2 Image Builder endpoints and quotas</a>
    #   			in the <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute dockerfile_template_data
    #   <p>The Dockerfile template that Image Builder uses to build the container image. The
    #   			template can include contextual variables that Image Builder replaces with build
    #   			information at build time. For the contextual variables that the template
    #   			can include, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html">Create
    #   				a new version of a container recipe</a> in the
    #   			<i>EC2 Image Builder User Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key that Image Builder uses to encrypt the recipe's Dockerfile template
    #   			data at rest. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder
    #   			encrypts the template data with a KMS key that Image Builder owns. This key
    #   			isn't used to encrypt the output container image.</p>
    #   @return [String]
    # @!attribute encrypted
    #   <p>Specifies whether the recipe's Dockerfile template data is encrypted at
    #   			rest. Image Builder encrypts all Dockerfile template data at rest, so this value is
    #   			always <code>true</code>. This field is retained for backward compatibility,
    #   			and doesn't describe encryption of the output container image.</p>
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
      nil,
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

    # <p>A summary of a container recipe.</p>
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
    #   <p>The system platform for the container. Container recipes support only the
    #   			Linux and Windows platforms.</p>
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
      nil,
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
    #   <p>The name of the component. Image Builder generates the component ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a component with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			component already exists.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
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
    #   				(<code>s3://bucket/key</code>), and you must have permission to access the
    #   			S3 bucket it points to. If you use Amazon S3, you can specify component content up to your
    #   			service quota for component size, which is 64 KB by default.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the component
    #   				<code>data</code> property. You cannot specify both properties.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this component.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the
    #   			component data with a KMS key that Image Builder owns.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that apply to the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateComponentRequest < Struct.new(
      nil,
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
      :dry_run,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class CreateComponentResponse < Struct.new(
      nil,
      :request_id,
      :client_token,
      :component_build_version_arn,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_type
    #   <p>The type of container to create.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the container recipe. The recipe name, combined with the
    #   			semantic version, must be unique to your account in each Amazon Web Services Region.
    #   			Image Builder generates the container recipe ARN from a normalized form of the
    #   			name, so names that differ only in case, spaces, or underscores count as
    #   			the same name.</p>
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
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>The components included in the container recipe. You can specify each
    #   			component only one time in a recipe.</p>
    #   @return [Array<Types::ComponentConfiguration>]
    # @!attribute instance_configuration
    #   <p>A group of options that can be used to configure an instance for building and testing
    #   			container images.</p>
    #   @return [Types::InstanceConfiguration]
    # @!attribute dockerfile_template_data
    #   <p>The Dockerfile template used to build your image, as an inline data blob.
    #   			You must specify exactly one of the <code>dockerfileTemplateData</code> or
    #   			<code>dockerfileTemplateUri</code> properties. For the contextual variables
    #   			that the template can include, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html">Create
    #   				a new version of a container recipe</a> in the
    #   			<i>EC2 Image Builder User Guide</i>.</p>
    #   @return [String]
    # @!attribute dockerfile_template_uri
    #   <p>The Amazon S3 URI for the Dockerfile template that is used to build your container
    #   			image. You must have permission to read the object. Image Builder reads the object
    #   			once, when it creates the recipe, and stores its content in the recipe.
    #   			Later changes to the S3 object don't affect the recipe. You must specify
    #   			exactly one of the <code>dockerfileTemplateData</code> or
    #   			<code>dockerfileTemplateUri</code> properties.</p>
    #   @return [String]
    # @!attribute platform_override
    #   <p>Specifies the operating system platform when you use a custom base image.
    #   			Container recipes support only the Linux and Windows platforms.</p>
    #   @return [String]
    # @!attribute image_os_version_override
    #   <p>Specifies the operating system version for the base image. Use this property
    #   			only when the base image is a container image from a registry. When the base
    #   			image is an Image Builder image, the operating system version comes from the parent
    #   			image.</p>
    #   @return [String]
    # @!attribute parent_image
    #   <p>The base image for the container recipe. This can be an Image Builder image resource
    #   			ARN or a container image URI from a registry, for example
    #   			<code>amazonlinux:latest</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that are attached to the container recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory for use during build and test workflows.</p>
    #   @return [String]
    # @!attribute target_repository
    #   <p>The destination repository for the container image. The Amazon ECR repository
    #   			must already exist in the Amazon Web Services Region where the build runs.</p>
    #   @return [Types::TargetContainerRepository]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies which KMS key is used to encrypt the Dockerfile
    #   			template. This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateContainerRecipeRequest < Struct.new(
      nil,
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
      :dry_run,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class CreateContainerRecipeResponse < Struct.new(
      nil,
      :request_id,
      :client_token,
      :container_recipe_arn,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the distribution configuration. Distribution configuration
    #   			names must be unique to your account in each Amazon Web Services Region. Image Builder generates
    #   			the distribution configuration ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the distribution configuration.</p>
    #   @return [String]
    # @!attribute distributions
    #   <p>The distribution settings for the configuration. Each entry defines how
    #   			output images are distributed in one target Amazon Web Services Region. A Region can
    #   			appear at most once in the list.</p>
    #   @return [Array<Types::Distribution>]
    # @!attribute tags
    #   <p>The tags of the distribution configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateDistributionConfigurationRequest < Struct.new(
      nil,
      :name,
      :description,
      :distributions,
      :tags,
      :client_token,
      :dry_run,
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
      nil,
      :request_id,
      :client_token,
      :distribution_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image pipeline. Pipeline names must be unique to your
    #   			account in each Amazon Web Services Region. Image Builder generates the pipeline ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image pipeline.</p>
    #   @return [String]
    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that configures
    #   			images created by this image pipeline. You must specify either this property
    #   			or <code>containerRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure
    #   			images created by this container pipeline. You must specify either this
    #   			property or <code>imageRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that
    #   			builds images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that configures and
    #   			distributes images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>Specifies the test settings that Image Builder applies to images that this
    #   			pipeline creates. If you don't provide test settings, Image Builder stores a default
    #   			configuration with image tests enabled.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of the image pipeline. If you don't provide a schedule, the
    #   			pipeline runs only when you call
    #   			<a>StartImagePipelineExecution</a>.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the image pipeline. If you don't specify a status, it
    #   			defaults to <code>ENABLED</code>. A disabled pipeline doesn't run on its
    #   			schedule, but you can still start builds manually.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the image pipeline.</p>
    #   @return [Hash<String, String>]
    # @!attribute image_tags
    #   <p>The tags that Image Builder applies to the Image Builder image resource that this
    #   			pipeline's scheduled executions create. These tags don't apply to the
    #   			output AMI. To tag output AMIs, use <code>amiTags</code> in the
    #   			pipeline's distribution configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans that Amazon Inspector runs against the test instance
    #   			during image creation.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>The array of workflow configuration objects for builds that this pipeline
    #   			starts. You must also specify <code>executionRole</code> when you provide
    #   			workflows.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Specifies the logging configuration for the image pipeline. Use this
    #   			to define custom CloudWatch Logs log groups for your pipeline execution
    #   			logs and image build logs. The service manages log groups with names
    #   			starting with <code>/aws/imagebuilder/</code> using the service-linked
    #   			role. For custom log group names outside of this prefix, you must also
    #   			provide an <code>executionRole</code>.</p>
    #   @return [Types::PipelineLoggingConfiguration]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateImagePipelineRequest < Struct.new(
      nil,
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
      :image_tags,
      :client_token,
      :image_scanning_configuration,
      :workflows,
      :execution_role,
      :logging_configuration,
      :dry_run,
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
      nil,
      :request_id,
      :client_token,
      :image_pipeline_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image recipe. The recipe name, combined with the semantic
    #   			version, must be unique to your account in each Amazon Web Services Region. Image Builder
    #   			generates the image recipe ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
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
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #            </note>
    #   @return [String]
    # @!attribute components
    #   <p>The components included in the image recipe. Components are optional. A
    #   			recipe with no components bakes the base image without additional
    #   			customization. You can
    #   			specify each component only one time in a recipe. Components with a status
    #   			of <code>DEPRECATED</code> or <code>DISABLED</code> can't be added to
    #   			new recipes.</p>
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
    #   			to the AMI. The AMI must also be in the Region where you're creating
    #   			the recipe.</p>
    #   @return [String]
    # @!attribute block_device_mappings
    #   <p>The block device mappings that Image Builder applies to the build instance and the
    #   			output AMI. For example, you can override the size of the base image's
    #   			root volume or attach additional EBS volumes.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    # @!attribute tags
    #   <p>The tags of the image recipe.</p>
    #   @return [Hash<String, String>]
    # @!attribute working_directory
    #   <p>The working directory used during build and test workflows. If you
    #   			don't specify a working directory, Image Builder uses <code>/tmp</code> for
    #   			Linux and macOS build instances, and <code>C:/</code> for Windows build
    #   			instances.</p>
    #   @return [String]
    # @!attribute additional_instance_configuration
    #   <p>The additional settings and launch scripts for your build instances.</p>
    #   @return [Types::AdditionalInstanceConfiguration]
    # @!attribute ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase
    #   			prior to image distribution.</p>
    #   @return [Hash<String, String>]
    # @!attribute ami_watermarks
    #   <p>The AMI watermark names to attach to the output AMI from this recipe.
    #   			AMI watermarks are lineage markers. They automatically propagate to
    #   			derivative AMIs when the source AMI is copied or distributed across
    #   			Regions or accounts.</p>
    #            <note>
    #               <p>AMI watermarks are supported only for image recipes. AMIs with
    #   				watermarks cannot be made public.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateImageRecipeRequest < Struct.new(
      nil,
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
      :ami_watermarks,
      :client_token,
      :dry_run,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class CreateImageRecipeResponse < Struct.new(
      nil,
      :request_id,
      :client_token,
      :image_recipe_arn,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that defines how images are
    #   			configured, tested, and assessed. You must specify either this property or
    #   			<code>containerRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that defines how images are
    #   			configured and tested. You must specify either this property or
    #   			<code>imageRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that defines and
    #   			configures the outputs of the image build. If you don't specify a
    #   			distribution configuration, Image Builder creates the output image only in the
    #   			account and Amazon Web Services Region where the build runs.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that defines the
    #   			environment in which your image will be built and tested.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>Settings that determine whether Image Builder runs tests on the image after
    #   			building it. Image tests are enabled by default.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags of the image.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Settings for vulnerability scans that Amazon Inspector runs during image
    #   			creation. For AMI output, Amazon Inspector scans the test instance. For container
    #   			output, Amazon Inspector scans the container image that Image Builder pushes to the Amazon ECR
    #   			repository specified in <code>ecrConfiguration</code>.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>The array of workflow configuration objects for the build. If you specify
    #   			workflows, they replace the default workflows that Image Builder otherwise runs for
    #   			the build, and you must also provide an <code>executionRole</code>.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions. This property is required if you
    #   			specify <code>workflows</code>. If you don't provide a role, Image Builder uses the
    #   			Image Builder service-linked role in your account, and creates it if it doesn't
    #   			exist.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the image build logs. If
    #   			you specify a log group name outside of the <code>/aws/imagebuilder/</code>
    #   			namespace, you must also provide an <code>executionRole</code> that has
    #   			permission to write to that log group.</p>
    #   @return [Types::ImageLoggingConfiguration]
    class CreateImageRequest < Struct.new(
      nil,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class CreateImageResponse < Struct.new(
      nil,
      :request_id,
      :client_token,
      :image_build_version_arn,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the infrastructure configuration. Infrastructure configuration
    #   			names must be unique to your account in each Amazon Web Services Region. Image Builder generates
    #   			the infrastructure configuration ARN from a normalized form of the name, so
    #   			names that differ only in case, spaces, or underscores count as the same
    #   			name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute instance_types
    #   <p>The instance types of the infrastructure configuration. You can specify one or more
    #   			instance types to use for this build. Image Builder picks one of these instance types
    #   			based on availability. If you don't specify instance types, Image Builder selects
    #   			compatible instance types automatically. If you specify a Dedicated Host,
    #   			Image Builder uses only instance types that the host supports.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI. The instance profile must exist in your account.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2
    #   			AMI. If you specify <code>subnetId</code>, you must also specify one or
    #   			more security group IDs in <code>securityGroupIds</code>. Otherwise, the
    #   			request fails.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration. When you
    #   			configure S3 logs, Image Builder writes logs from the build and test process to the
    #   			specified bucket under the key prefix.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>Specifies whether to terminate the instance on failure. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails. Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute terminate_instance_on_completion
    #   <p>Specifies whether Image Builder terminates build and test instances when image creation
    #   			ends without a failure (success, cancellation, or expiration). Defaults to
    #   			<code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to which Image Builder sends image build event notifications.
    #   			Specify a standard topic. Image Builder doesn't support FIFO topics.
    #   			Image Builder validates the topic when you create or update the configuration. You
    #   			must have permission to publish to the topic.</p>
    #            <note>
    #               <p>EC2 Image Builder can't send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. If your SNS topic is encrypted, the key must be owned by the
    #   				same account that owns your Image Builder resources.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during
    #   			the build process. Tags are formatted as key value pairs. Tag keys can't
    #   			begin with <code>aws:</code> or match one of the following reserved keys: <code>CreatedBy</code>,
    #   			<code>Ec2ImageBuilderArn</code>, <code>Name</code>, or
    #   			<code>Tags</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata service (IMDS) settings that Image Builder applies to the EC2
    #   			build and test instances it launches during image creation. If you don't
    #   			set these options, the EC2 launch defaults for the instance apply. For more
    #   			information about instance metadata options, see one of the following
    #   			links:</p>
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
    # @!attribute tags
    #   <p>The metadata tags to assign to the infrastructure configuration resource that Image Builder
    #   			creates as output. Tags are formatted as key value pairs.</p>
    #   @return [Hash<String, String>]
    # @!attribute placement
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    #   @return [Types::Placement]
    # @!attribute parent_instance
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from, instead of
    #   			launching a new instance. This applies only to the build phase.</p>
    #            <p>To use this feature, the execution role for the build must have permissions to
    #   			describe the Auto Scaling group, tag the instance while it's still in the group, and
    #   			detach it from the group. For more information, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/infra-config-parent-instance.html">Build on an
    #   				instance from an Auto Scaling group</a> in the <i>EC2 Image Builder User
    #   				Guide</i>.</p>
    #   @return [Types::ParentInstanceConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateInfrastructureConfigurationRequest < Struct.new(
      nil,
      :name,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :terminate_instance_on_completion,
      :sns_topic_arn,
      :resource_tags,
      :instance_metadata_options,
      :tags,
      :placement,
      :parent_instance,
      :client_token,
      :dry_run,
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
      nil,
      :request_id,
      :client_token,
      :infrastructure_configuration_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the lifecycle policy to create. Policy names must be unique to
    #   			your account in each Amazon Web Services Region. Image Builder generates the policy ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. You can't change the name after
    #   			creation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Optional description for the lifecycle policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the lifecycle policy resource is enabled. If you don't
    #   			specify a status, it defaults to <code>ENABLED</code>. Only enabled policies
    #   			run on their schedule.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access to run
    #   			lifecycle actions. You must have permission to pass the role, and the
    #   			role's trust policy must allow the Image Builder service principal to assume it.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of Image Builder resource that the lifecycle policy applies to. The resource
    #   			type determines the allowed rule actions: policies for AMI-based Image Builder images
    #   			support <code>DELETE</code>, <code>DEPRECATE</code>, and
    #   			<code>DISABLE</code>, and policies for container-based Image Builder images support
    #   			only <code>DELETE</code>. You can't
    #   			change the resource type after creation.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>Configuration details for the lifecycle policy rules. A policy can contain
    #   			at most one rule per action type: one <code>DELETE</code>, one
    #   			<code>DEPRECATE</code>, and one <code>DISABLE</code>.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute resource_selection
    #   <p>Selection criteria for the resources that the lifecycle policy applies to.
    #   			You must specify exactly one selection criteria: either recipes or a tag
    #   			map, not both.</p>
    #   @return [Types::LifecyclePolicyResourceSelection]
    # @!attribute tags
    #   <p>Tags to apply to the lifecycle policy resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateLifecyclePolicyRequest < Struct.new(
      nil,
      :name,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :policy_details,
      :resource_selection,
      :tags,
      :client_token,
      :dry_run,
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
      nil,
      :client_token,
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow to create. Image Builder generates the workflow ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a workflow with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			workflow already exists.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of this workflow resource. The semantic version syntax
    #   			adheres to the following rules.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
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
    #   <p>The UTF-8 encoded YAML document content for the workflow, up to
    #   			16,000 characters. For larger documents, store the document in Amazon S3 and specify
    #   			the <code>uri</code> property instead. You must specify exactly one of the
    #   			<code>data</code> or <code>uri</code> properties.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The <code>uri</code> of a YAML workflow document file stored in Amazon S3. This must
    #   			be an S3 URL (<code>s3://bucket/key</code>), and you must have permission to
    #   			access the S3 bucket it points to. A workflow document that you provide from
    #   			Amazon S3 can be up to your service quota for workflow size.</p>
    #            <p>Alternatively, you can specify the YAML document inline, using the workflow
    #   			<code>data</code> property. You must specify exactly one of the <code>data</code>
    #   			or <code>uri</code> properties.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the KMS key used to encrypt this workflow resource.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the workflow
    #   			document with a KMS key that Image Builder owns.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags that apply to the workflow resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The image creation stage that this workflow applies to. Image Builder validates the
    #   			workflow document steps against the stage you specify.</p>
    #   @return [String]
    # @!attribute dry_run
    #   <p>Validates the required permissions and request parameters without performing the operation. If validation succeeds, the operation returns a <code>DryRunOperationException</code> error response.</p>
    #   @return [Boolean]
    class CreateWorkflowRequest < Struct.new(
      nil,
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
      :dry_run,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class CreateWorkflowResponse < Struct.new(
      nil,
      :client_token,
      :workflow_build_version_arn,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A CVSS score for the vulnerability, as published by the vulnerability
    # 			source. Sources include the National Vulnerability Database (NVD) and the
    # 			operating system vendor's security feed. A finding can include CVSS scores
    # 			from multiple sources and CVSS versions.</p>
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
      nil,
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
      nil,
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
    #   <p>The source of the CVSS data that the Amazon Inspector score for the finding is based
    #   			on, for example NVD or a vendor security feed.</p>
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
    #   <p>The adjustments that Amazon Inspector applied to the base CVSS score to produce its own
    #   			score for the finding. The list is empty when Amazon Inspector made no
    #   			adjustments.</p>
    #   @return [Array<Types::CvssScoreAdjustment>]
    class CvssScoreDetails < Struct.new(
      nil,
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
      nil,
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component build version that this request deleted.</p>
    #   @return [String]
    class DeleteComponentResponse < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource that this request deleted.</p>
    #   @return [String]
    class DeleteImageResponse < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy that was deleted.</p>
    #   @return [String]
    class DeleteLifecyclePolicyResponse < Struct.new(
      nil,
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource to delete.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      nil,
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that this request deleted.</p>
    #   @return [String]
    class DeleteWorkflowResponse < Struct.new(
      nil,
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_image
    #   <p>The source image to distribute. You can specify the source in any of the
    #   			following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>An AMI ID.</p>
    #               </li>
    #               <li>
    #                  <p>An Amazon Web Services Systems Manager Parameter Store reference, prefixed by
    #   					<code>ssm:</code>, followed by the parameter name or ARN.</p>
    #               </li>
    #               <li>
    #                  <p>An Image Builder image Amazon Resource Name (ARN). An image version ARN resolves to the latest
    #   					available build version.</p>
    #               </li>
    #            </ul>
    #            <p>Whichever format you use, the source must resolve to an AMI in the current
    #   			Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration. The configuration
    #   			defines target Regions, accounts, and AMI settings. The distribution
    #   			configuration must be in the same Region as this operation.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder assumes to distribute
    #   			the image.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to apply to the new Image Builder image resource that this operation
    #   			creates. To tag the output AMIs, use <code>amiTags</code> in the
    #   			distribution configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The logging configuration for the distribution.</p>
    #   @return [Types::ImageLoggingConfiguration]
    class DistributeImageRequest < Struct.new(
      nil,
      :source_image,
      :distribution_configuration_arn,
      :execution_role,
      :tags,
      :client_token,
      :logging_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the new Image Builder image resource that this operation creates to
    #   			track the distribution. Use this ARN with <a>GetImage</a> to
    #   			monitor distribution progress.</p>
    #   @return [String]
    class DistributeImageResponse < Struct.new(
      nil,
      :client_token,
      :image_build_version_arn,
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
      nil,
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

    # <p>Defines how Image Builder distributes the output of an image build. You can
    # 			configure:</p>
    #          <ul>
    #             <li>
    #                <p>The Regions to distribute the image to.</p>
    #             </li>
    #             <li>
    #                <p>The Region-specific settings to apply, such as output AMI names,
    # 					launch permissions for other Amazon Web Services accounts, and target container
    # 					repositories.</p>
    #             </li>
    #          </ul>
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
    #   <p>A property that Image Builder doesn't use. You can't set this property
    #   			when you create or update a distribution configuration, and it has no
    #   			effect on distribution behavior.</p>
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
      nil,
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
    #   <p>A list of the Regions that the distribution configuration distributes
    #   			images to.</p>
    #   @return [Array<String>]
    class DistributionConfigurationSummary < Struct.new(
      nil,
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

    # <p>Contains details about a failure that occurred while Image Builder distributed the image
    # 			or applied configuration to the distributed image.</p>
    # @!attribute error_message
    #   <p>The error message for the distribution failure.</p>
    #   @return [String]
    # @!attribute region_failures
    #   <p>The details about the failure for each Region where the image didn't finish
    #   			distribution or configuration.</p>
    #   @return [Array<Types::RegionFailure>]
    class DistributionFailureContext < Struct.new(
      nil,
      :error_message,
      :region_failures,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The dry run operation of the resource was successful, and no resources or mutations were actually performed due to the dry run flag in the request.</p>
    # @!attribute message
    #   @return [String]
    class DryRunOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon EBS-specific block device mapping specifications.</p>
    # @!attribute encrypted
    #   <p>Specifies whether to encrypt the device.</p>
    #   @return [Boolean]
    # @!attribute delete_on_termination
    #   <p>Specifies whether to delete the associated device on termination.</p>
    #   @return [Boolean]
    # @!attribute iops
    #   <p>The IOPS value for the device. Required only when volumeType is io1 or io2.</p>
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
    #   <p>Overrides the volume size for the device.</p>
    #   @return [Integer]
    # @!attribute volume_type
    #   <p>Overrides the volume type for the device.</p>
    #   @return [String]
    # @!attribute throughput
    #   <p>
    #               <b>For GP3 volumes only</b> – The throughput in MiB/s
    #   			that the volume supports.</p>
    #   @return [Integer]
    class EbsInstanceBlockDeviceSpecification < Struct.new(
      nil,
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
    #   <p>The name of the container repository where Image Builder pushes the container
    #   			image for the vulnerability scan. Provide the repository name only (a
    #   			namespace path is allowed, but not the registry hostname); the repository
    #   			must already exist in your account. If you don't specify a repository
    #   			name, Image Builder creates the default repository
    #   			<code>image-builder-image-scanning-repository</code> in your account.</p>
    #   @return [String]
    # @!attribute container_tags
    #   <p>Tags for Image Builder to apply to the output container image that Amazon Inspector scans. Tags can
    #   			help you identify and manage your scanned images.</p>
    #   @return [Array<String>]
    class EcrConfiguration < Struct.new(
      nil,
      :repository_name,
      :container_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines and configures EC2 Fast Launch for output Windows AMIs.</p>
    # @!attribute enabled
    #   <p>Specifies whether to enable Windows fast launch on the output AMI during
    #   			distribution. A value of <code>false</code> means Image Builder takes no
    #   			fast-launch action for this configuration.</p>
    #   @return [Boolean]
    # @!attribute snapshot_configuration
    #   <p>Configuration settings for managing the number of snapshots that are created from
    #   			pre-provisioned instances for the Windows AMI when Windows fast launch is enabled.</p>
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
      nil,
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
    # 			instance when Windows fast launch is enabled.</p>
    #          <note>
    #             <p>You can specify either the <code>launchTemplateName</code> or the
    # 					<code>launchTemplateId</code>, but not both.</p>
    #          </note>
    # @!attribute launch_template_id
    #   <p>The ID of the launch template to use for Windows fast launch for a Windows AMI.</p>
    #   @return [String]
    # @!attribute launch_template_name
    #   <p>The name of the launch template to use for Windows fast launch for a Windows AMI.</p>
    #   @return [String]
    # @!attribute launch_template_version
    #   <p>The version of the launch template to use for Windows fast launch for a Windows
    #   			AMI.</p>
    #   @return [String]
    class FastLaunchLaunchTemplateSpecification < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the component that you want to get. You can specify a build
    #   			version ARN, or a component version ARN. The version can use the
    #   			<code>x</code> wildcard in trailing positions, for example
    #   			<code>1.0.x</code> or <code>1.x.x</code>. Version ARNs resolve to the
    #   			latest available matching component build version.</p>
    #   @return [String]
    class GetComponentRequest < Struct.new(
      nil,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class GetComponentResponse < Struct.new(
      nil,
      :request_id,
      :component,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe for the policy being
    #   			requested.</p>
    #   @return [String]
    class GetContainerRecipePolicyRequest < Struct.new(
      nil,
      :container_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy for the container recipe, as a JSON policy document. If
    #   			no policy has been applied, the response contains an empty JSON object
    #   			(<code>{}</code>).</p>
    #   @return [String]
    class GetContainerRecipePolicyResponse < Struct.new(
      nil,
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
      nil,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class GetContainerRecipeResponse < Struct.new(
      nil,
      :request_id,
      :container_recipe,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that you want to
    #   			retrieve.</p>
    #   @return [String]
    class GetDistributionConfigurationRequest < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :image_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy for the image, as a JSON policy document. If the image
    #   			has no policy applied, the response contains an empty JSON object
    #   			(<code>{}</code>).</p>
    #   @return [String]
    class GetImagePolicyResponse < Struct.new(
      nil,
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
      nil,
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The resource policy for the image recipe, as a JSON policy document. If no
    #   			policy has been applied, the response contains an empty JSON object
    #   			(<code>{}</code>).</p>
    #   @return [String]
    class GetImageRecipePolicyResponse < Struct.new(
      nil,
      :request_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the image recipe that you want to retrieve. You can use the
    #   			<code>x</code> wildcard in trailing version positions to retrieve the latest
    #   			matching version, for example <code>x.x.x</code> or <code>1.x.x</code>.</p>
    #   @return [String]
    class GetImageRecipeRequest < Struct.new(
      nil,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class GetImageRecipeResponse < Struct.new(
      nil,
      :request_id,
      :image_recipe,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image that you want to get. You can specify a full build
    #   			version ARN, or a version ARN with or without wildcards
    #   			(<code>x.x.x</code>, <code>1.x.x</code>, or <code>1.0.x</code>). A version or
    #   			wildcard ARN resolves to the latest matching build version that has reached
    #   			<code>AVAILABLE</code> status. Builds that were later deprecated, disabled,
    #   			or deleted don't resolve. To get an image in any other state, such as a
    #   			failed or in-progress build, specify the full build version ARN.</p>
    #   @return [String]
    class GetImageRequest < Struct.new(
      nil,
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
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class GetImageResponse < Struct.new(
      nil,
      :request_id,
      :image,
      :latest_version_references,
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
      nil,
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
      nil,
      :request_id,
      :infrastructure_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>The unique identifier for a runtime instance of the lifecycle policy.</p>
    #   @return [String]
    class GetLifecycleExecutionRequest < Struct.new(
      nil,
      :lifecycle_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution
    #   <p>Runtime details for the specified runtime instance of the lifecycle policy.</p>
    #   @return [Types::LifecycleExecution]
    class GetLifecycleExecutionResponse < Struct.new(
      nil,
      :lifecycle_execution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the image lifecycle policy resource to get.</p>
    #   @return [String]
    class GetLifecyclePolicyRequest < Struct.new(
      nil,
      :lifecycle_policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_policy
    #   <p>The details of the lifecycle policy that the request retrieved.</p>
    #   @return [Types::LifecyclePolicy]
    class GetLifecyclePolicyResponse < Struct.new(
      nil,
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
    #   <p>The Amazon S3 location of the component artifact to retrieve, in
    #   			<code>s3://bucket/key</code> form.</p>
    #   @return [String]
    class GetMarketplaceResourceRequest < Struct.new(
      nil,
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
    #   <p>A time-limited presigned URL for downloading the component artifact from
    #   			Amazon S3.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Returns obfuscated data that contains the YAML content of the component.</p>
    #   @return [String]
    class GetMarketplaceResourceResponse < Struct.new(
      nil,
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
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the image build version that owns the specified runtime
    #   			instance of the workflow.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of workflow that Image Builder ran for the specified runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current runtime status for the specified runtime instance of the workflow.
    #   			<code>COMPLETED</code>, <code>FAILED</code>, <code>ROLLBACK_COMPLETED</code>,
    #   			<code>CANCELLED</code>, and <code>SKIPPED</code> are terminal states.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the specified runtime instance of the workflow, if applicable.</p>
    #   @return [String]
    # @!attribute total_step_count
    #   <p>The total number of steps that the workflow document defines for this runtime
    #   			instance of the workflow. Image Builder sets this count before any steps run. The sum of
    #   			succeeded, skipped, and failed steps only reaches this total if every step
    #   			finishes in one of those states.</p>
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
    #   <p>The name of the parallel group that this runtime instance of the workflow
    #   			ran in, if configured. Parallel groups apply only to test workflows.</p>
    #   @return [String]
    class GetWorkflowExecutionResponse < Struct.new(
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that you want to get. You can specify a
    #   			build version ARN, or a version ARN with or without wildcards (<code>x</code>)
    #   			in its version segments. Image Builder resolves version and wildcard ARNs to the most
    #   			recent matching build version.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      nil,
      :workflow_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow
    #   <p>The workflow resource specified in the request.</p>
    #   @return [Types::Workflow]
    # @!attribute latest_version_references
    #   <p>A set of wildcard version ARNs that always reference the latest
    #   			version of the resource. ARNs are included for the latest version overall, and for the latest
    #   			versions within the same major, minor, and patch levels.</p>
    #   @return [Types::LatestVersionReferences]
    class GetWorkflowResponse < Struct.new(
      nil,
      :workflow,
      :latest_version_references,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_execution_id
    #   <p>The unique identifier for the runtime instance of the workflow step that you
    #   			want to get runtime details for. To get the identifiers for the steps that ran
    #   			in a workflow, call <a>ListWorkflowStepExecutions</a>.</p>
    #   @return [String]
    class GetWorkflowStepExecutionRequest < Struct.new(
      nil,
      :step_execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The request ID that uniquely identifies this request.</p>
    #   @return [String]
    # @!attribute step_execution_id
    #   <p>The unique identifier for the runtime instance of the workflow step that you specified
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
    #   <p>The Amazon Resource Name (ARN) of the image build version that owns the specified runtime
    #   			instance of the workflow step.</p>
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
    #   <p>The current status for the specified runtime instance of the workflow step.</p>
    #   @return [String]
    # @!attribute rollback_status
    #   <p>Reports on the rollback status of the specified runtime instance of the
    #   			workflow step, if applicable. Rollback runs when the workflow execution fails,
    #   			and undoes the work that completed steps performed.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The output message from the specified runtime instance of the workflow step, if applicable.</p>
    #   @return [String]
    # @!attribute inputs
    #   <p>Input parameters that Image Builder provided for the specified runtime instance of
    #   			the workflow step, as a JSON-encoded string.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The output values that the specified runtime instance of the workflow step
    #   			produced, as a JSON-encoded string. For example, a step that launches an
    #   			instance outputs the instance ID. If the step failed, this field contains the
    #   			error message.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the specified runtime instance of the workflow step started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the specified runtime instance of the workflow step finished.</p>
    #   @return [String]
    # @!attribute on_failure
    #   <p>The action that the workflow takes if this step fails, as configured in the
    #   			workflow document. <code>Abort</code> fails the workflow and rolls back
    #   			completed steps. <code>Continue</code> proceeds to the next step. If the
    #   			step doesn't set a value, it defaults to <code>Abort</code>.</p>
    #   @return [String]
    # @!attribute timeout_seconds
    #   <p>The maximum duration in seconds for this step to complete its action. If the
    #   			workflow document doesn't set a timeout for the step, Image Builder applies the
    #   			default timeout for the step's action. This field returns that value.</p>
    #   @return [Integer]
    # @!attribute attempt_number
    #   <p>The current attempt number for the specified runtime instance of the workflow
    #   			step. The first run is attempt one. The number increases by one for each retry.</p>
    #   @return [Integer]
    # @!attribute max_attempts
    #   <p>The maximum number of attempts allowed for the specified runtime instance of
    #   			the workflow step, based on the retry configuration in the workflow document.
    #   			If the step doesn't configure retries, the maximum is one attempt.</p>
    #   @return [Integer]
    class GetWorkflowStepExecutionResponse < Struct.new(
      nil,
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
      :attempt_number,
      :max_attempts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have specified a client token for an operation using parameter values that differ
    # 			from a previous request that used the same client token.</p>
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Image Builder image resource that keeps track of all of the settings used to create,
    # 			configure, and distribute output for that image. An image that Image Builder built
    # 			from a recipe contains exactly one recipe – either a container recipe
    # 			(<code>containerRecipe</code>), which creates a container image, or an image
    # 			recipe (<code>imageRecipe</code>), which creates an AMI. Imported images
    # 			don't contain a recipe.</p>
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
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    #   	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    #   	to the right of the first wildcard must also be wildcards.</p>
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
    #   <p>The name of the image pipeline that created this image. Image Builder doesn't return
    #   			this field for new images. Use <code>sourcePipelineArn</code> instead.</p>
    #   @return [String]
    # @!attribute source_pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the image pipeline that created this image. This field is only
    #   			present for images that a pipeline execution created.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration
    #   <p>The infrastructure that Image Builder used to create this image.</p>
    #   @return [Types::InfrastructureConfiguration]
    # @!attribute distribution_configuration
    #   <p>The distribution configuration that Image Builder used to create this image.</p>
    #   @return [Types::DistributionConfiguration]
    # @!attribute image_tests_configuration
    #   <p>The image test settings that Image Builder used when it created this image.</p>
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
    #   <p>Settings for the vulnerability scans that Amazon Inspector runs for this
    #   			image. For AMI output, Amazon Inspector scans the test instance during image creation.
    #   			For container output, Amazon Inspector scans the container image in its Amazon ECR
    #   			repository.</p>
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
    #   <p>The build, test, and distribution workflow configurations that are
    #   			associated with the image.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>The logging configuration that's defined for the image. Image Builder uses the defined settings
    #   			to direct execution log output during image creation.</p>
    #   @return [Types::ImageLoggingConfiguration]
    class Image < Struct.new(
      nil,
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
      nil,
      :image_build_version_arn,
      :severity_counts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about the failure when the image creation process fails.
    # 			Properties appear in the failure context when the related information is available
    # 			for the failure.</p>
    # @!attribute image_status
    #   <p>The status that the image had when the failure occurred. This indicates the stage
    #   			of the image creation process where the image failed, for example
    #   			<code>BUILDING</code> or <code>DISTRIBUTING</code>.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier of the workflow execution that was running when the image
    #   			failed.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow build version that was running when the image
    #   			failed.</p>
    #   @return [String]
    # @!attribute step_execution_id
    #   <p>The unique identifier of the workflow step execution that failed.</p>
    #   @return [String]
    # @!attribute failed_step
    #   <p>The name of the workflow step that failed, as it appears in the workflow
    #   			document.</p>
    #   @return [String]
    # @!attribute component_failure
    #   <p>The details about the component that failed, if the failure occurred while a
    #   			component was running.</p>
    #   @return [Types::ComponentFailureContext]
    # @!attribute distribution_failure
    #   <p>The details about the distribution failure, if the failure occurred while Image Builder
    #   			distributed or configured the image.</p>
    #   @return [Types::DistributionFailureContext]
    class ImageFailureContext < Struct.new(
      nil,
      :image_status,
      :workflow_execution_id,
      :workflow_arn,
      :step_execution_id,
      :failed_step,
      :component_failure,
      :distribution_failure,
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
      nil,
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A software package that's installed on an image, as detected by Amazon Web Services Systems Manager
    # 			Inventory at build time. The list includes packages that shipped with the
    # 			base image.</p>
    # @!attribute package_name
    #   <p>The name of the package that's reported to the operating system package
    #   			manager.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The version of the package that's reported to the operating system package
    #   			manager.</p>
    #   @return [String]
    class ImagePackage < Struct.new(
      nil,
      :package_name,
      :package_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the automation configuration for building, testing, and
    # 			distributing images. A pipeline references the resources that its builds
    # 			use, such as the recipe and infrastructure configuration. It also holds
    # 			the settings that control its builds, such as the schedule and custom
    # 			workflows.</p>
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
    #   <p>The platform of the image pipeline, inherited from the recipe that the
    #   			pipeline uses.</p>
    #   @return [String]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
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
    #   <p>The status of the image pipeline. A disabled pipeline doesn't run on its
    #   			schedule, but you can still start builds manually. Image Builder can also disable a
    #   			pipeline automatically when consecutive scheduled builds fail.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which this image pipeline was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which this image pipeline was last updated.</p>
    #   @return [String]
    # @!attribute date_last_run
    #   <p>The date on which this image pipeline was last run.</p>
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
    #   <p>Contains settings for vulnerability scans that Amazon Inspector runs against the test instance
    #   			during image creation.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute image_tags
    #   <p>The tags that Image Builder applies to the Image Builder image resource that this
    #   			pipeline's scheduled executions create. These tags don't apply to the
    #   			output AMI. Builds that you start manually use the tags from the
    #   			<a href="https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_StartImagePipelineExecution.html">StartImagePipelineExecution</a> request instead.</p>
    #   @return [Hash<String, String>]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions.</p>
    #   @return [String]
    # @!attribute workflows
    #   <p>Contains the workflows that run for the image pipeline.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>The CloudWatch Logs configuration for the pipeline: the log group for
    #   			image build logs and the log group for pipeline execution logs.</p>
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
    #   					consecutive failures. If the failure count reaches the limit defined in the
    #   					<a>AutoDisablePolicy</a>, Image Builder disables the pipeline.</p>
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
      nil,
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
      :image_tags,
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
      nil,
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
    #   <p>The output image type. For an image recipe, this is always AMI. Container
    #   			images are built from container recipes, a separate resource. This field
    #   			isn't currently returned in responses.</p>
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
    #   <p>The components that are included in the image recipe. A recipe can contain a maximum of 20 build and test components
    #   			in any combination, by default. This maximum is an adjustable quota. For more information, see
    #   			<a href="https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html">EC2 Image Builder endpoints and quotas</a>
    #   			in the <i>Amazon Web Services General Reference</i>.</p>
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
    #   <p>The working directory used during build and test workflows. If you
    #   			don't specify a working directory, Image Builder uses <code>/tmp</code> for
    #   			Linux and macOS build instances, and <code>C:/</code> for Windows build
    #   			instances.</p>
    #   @return [String]
    # @!attribute additional_instance_configuration
    #   <p>Before you create a new AMI, Image Builder launches temporary Amazon EC2 instances to build and test
    #   			your image configuration. Instance configuration adds a layer of control over those
    #   			instances. You can define settings and add scripts to run when Image Builder launches
    #   			your build instance.</p>
    #   @return [Types::AdditionalInstanceConfiguration]
    # @!attribute ami_tags
    #   <p>Tags that are applied to the AMI that Image Builder creates during the Build phase
    #   			prior to image distribution.</p>
    #   @return [Hash<String, String>]
    # @!attribute ami_watermarks
    #   <p>The AMI watermark names attached to the output AMI from this recipe.
    #   			AMI watermarks are lineage markers that automatically propagate to
    #   			derivative AMIs when the source AMI is copied or distributed.</p>
    #   @return [Array<String>]
    class ImageRecipe < Struct.new(
      nil,
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
      :ami_watermarks,
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
      nil,
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

    # <p>Contains details about a vulnerability scan finding that Amazon Inspector generated
    # 			for an image.</p>
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
    #   <p>The severity of the finding. For more information, see <a href="https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html">Severity levels for Amazon Inspector findings</a> in the
    #   				<i>Amazon Inspector User Guide</i>.</p>
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
    #   			in the finding through a version update. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>YES</code> – A fix is available for all of the packages
    #   					identified in the finding.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO</code> – No fix is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL</code> – A fix is available for some, but not
    #   					all, of the packages identified in the finding.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ImageScanFinding < Struct.new(
      nil,
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
    #   <p>Returns an object that contains severity counts based on the Amazon Resource Name (ARN) for a specific image.</p>
    #   @return [Types::ImageAggregation]
    # @!attribute image_pipeline_aggregation
    #   <p>Returns an object that contains severity counts based on an image pipeline ARN.</p>
    #   @return [Types::ImagePipelineAggregation]
    # @!attribute vulnerability_id_aggregation
    #   <p>Returns an object that contains severity counts based on vulnerability ID.</p>
    #   @return [Types::VulnerabilityIdAggregation]
    class ImageScanFindingAggregation < Struct.new(
      nil,
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
    #   <p>The name of the image scan finding filter. Filter names are case-sensitive.
    #   			Valid filter names are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>imageBuildVersionArn</code> – Filters findings by the
    #   					image build version that was scanned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imagePipelineArn</code> – Filters findings by the
    #   					pipeline that created the scanned image.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vulnerabilityId</code> – Filters findings by
    #   					vulnerability ID, for example a CVE ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>severity</code> – Filters findings by severity
    #   					level.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute values
    #   <p>The filter values. Filter values are case-sensitive.</p>
    #   @return [Array<String>]
    class ImageScanFindingsFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Shows the vulnerability scan status for a specific image, and the reason for that
    # 			status.</p>
    # @!attribute status
    #   <p>The current state of vulnerability scans for the image. The scan starts as
    #   			<code>PENDING</code> and moves through <code>SCANNING</code> and
    #   			<code>COLLECTING</code> to <code>COMPLETED</code>. Image Builder sets the status to
    #   			<code>ABANDONED</code> if the image reaches a terminal state before the scan
    #   			finding collection completes. A scan can also end as <code>FAILED</code> or
    #   			<code>TIMED_OUT</code>.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the scan status for the image.</p>
    #   @return [String]
    class ImageScanState < Struct.new(
      nil,
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for Image Builder image resource and container image scans.</p>
    # @!attribute image_scanning_enabled
    #   <p>Specifies whether Amazon Inspector scans for vulnerabilities when you create a new
    #   			image, and whether Image Builder saves the findings. Amazon Inspector must be enabled in the
    #   			account. Image tests must also be enabled. For AMI output, Amazon Inspector scans the
    #   			test instance. For container output, Amazon Inspector scans the container image that
    #   			Image Builder pushes to the Amazon ECR repository from your <code>ecrConfiguration</code>
    #   			settings.</p>
    #   @return [Boolean]
    # @!attribute ecr_configuration
    #   <p>Contains Amazon ECR settings for vulnerability scans.</p>
    #   @return [Types::EcrConfiguration]
    class ImageScanningConfiguration < Struct.new(
      nil,
      :image_scanning_enabled,
      :ecr_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Image status and the reason for that status.</p>
    # @!attribute status
    #   <p>The status of the image. A new image moves through build, test, and
    #   			distribution statuses during creation, and ends in the
    #   			<code>AVAILABLE</code>, <code>FAILED</code>, or <code>CANCELLED</code>
    #   			state. The <code>DEPRECATED</code>, <code>DISABLED</code>, and
    #   			<code>DELETED</code> statuses come from later resource management
    #   			actions.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the status of the image.</p>
    #   @return [String]
    # @!attribute failure_context
    #   <p>The details about the failure, for images that failed to complete. Image Builder only
    #   			sets this property when the image status is <code>FAILED</code>.</p>
    #   @return [Types::ImageFailureContext]
    class ImageState < Struct.new(
      nil,
      :status,
      :reason,
      :failure_context,
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
      nil,
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
    #   <p>Specifies whether tests run after building the image.
    #   			When enabled, tests run after the image build and before image distribution.
    #   			Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute timeout_minutes
    #   <p>The maximum time in minutes that tests are permitted to run. If you don't
    #   			specify a value, Image Builder stores and returns 720.</p>
    #            <note>
    #               <p>The timeout property is not currently active. This value is
    #   				ignored.</p>
    #            </note>
    #   @return [Integer]
    class ImageTestsConfiguration < Struct.new(
      nil,
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
    #   <p>The semantic version of the image. This version follows the semantic
    #   			version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
    #               <p>
    #                  <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    #   	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    #   	to the right of the first wildcard must also be wildcards.</p>
    #            </note>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform of the image version, for example "Windows" or
    #   			"Linux".</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The operating system version of the image. For example, Amazon Linux 2023
    #   			or Microsoft Windows Server 2022.</p>
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
      nil,
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
    #   <p>The name of the component. Image Builder generates the component ARN from a
    #   			normalized form of the name, so names that differ only in case, spaces, or
    #   			underscores count as the same name. If a component with the same name and
    #   			semantic version already exists in your account in the same Amazon Web Services Region,
    #   			the request creates a new build version for it. If the content is also
    #   			identical to the latest build version, the request fails because the
    #   			component already exists.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version of the component. This version follows the semantic version
    #   			syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
    #   	build number to the fourth node.</p>
    #               <p>
    #                  <b>Patterns:</b> You can use any numeric pattern that adheres to the assignment requirements for
    #   	the nodes that you can assign. For example, you might choose a software version pattern, such as 1.0.0, or
    #   	a date, such as 2021.01.01.</p>
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
    #   <p>The data of the component. For the <code>SHELL</code> format, this is the
    #   			plain script content. You must specify exactly one of the <code>data</code>
    #   			or <code>uri</code> properties. For scripts that exceed the inline length
    #   			constraint, use the <code>uri</code> property.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The uri of the component. Must be an Amazon S3 URL and you must have permission
    #   			to access the Amazon S3 bucket. If you use Amazon S3, you can specify component content up to your
    #   			service quota. Either <code>data</code> or <code>uri</code> can be used to specify the
    #   			data within the component.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt this component.
    #   			This can be either the Key ARN or the Alias ARN. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">Key identifiers (KeyId)</a>
    #   			in the <i>Key Management Service Developer Guide</i>. If you don't specify a key, Image Builder encrypts the
    #   			component data with a KMS key that Image Builder owns.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the component.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class ImportComponentRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :client_token,
      :component_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image resource that's created from the import. Image Builder
    #   			generates the image ARN from a normalized form of the name, so names that
    #   			differ only in case, spaces, or underscores count as the same name. If an
    #   			image with the same name and semantic version already exists in your
    #   			account in the same Amazon Web Services Region, the import creates a new build version
    #   			for it.</p>
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
    #   <p>The operating system version for the imported image. The only supported
    #   			value is <code>Microsoft Windows 11</code>.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access
    #   			to perform workflow actions to import an image from a Microsoft ISO file.
    #   			If you don't provide a role, Image Builder uses the Image Builder service-linked role in your
    #   			account, and creates it if it doesn't exist.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration resource that's used for
    #   			launching the EC2 instance on which the ISO image is built.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The <code>uri</code> of the ISO disk file that's stored in Amazon S3, in
    #   			<code>s3://bucket/key</code> format. The key must end with the
    #   			<code>.iso</code>, <code>.ISO</code>, or <code>.Iso</code> extension, and the
    #   			bucket must be owned by the account that makes the request.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the import logs. If you
    #   			specify a log group name outside of the <code>/aws/imagebuilder/</code>
    #   			namespace, you must also provide an <code>executionRole</code> that has
    #   			permission to write to that log group.</p>
    #   @return [Types::ImageLoggingConfiguration]
    # @!attribute tags
    #   <p>Tags that are attached to image resources created from the import.</p>
    #   @return [Hash<String, String>]
    # @!attribute register_image_options
    #   <p>Configures Secure Boot and UEFI settings for the
    #   			imported image.</p>
    #   @return [Types::RegisterImageOptions]
    # @!attribute windows_configuration
    #   <p>Specifies Windows settings for ISO imports.</p>
    #   @return [Types::WindowsConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class ImportDiskImageRequest < Struct.new(
      nil,
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
      :register_image_options,
      :windows_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource that this request created. The AMI
    #   			doesn't exist yet when the response returns. The import runs asynchronously,
    #   			and the output AMI appears in the image's output resources when the import
    #   			completes.</p>
    #   @return [String]
    class ImportDiskImageResponse < Struct.new(
      nil,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the base image that is created by the import process. Image Builder
    #   			generates the image ARN from a normalized form of the name, so names that
    #   			differ only in case, spaces, or underscores count as the same name. If an
    #   			image with the same name and semantic version already exists in your
    #   			account in the same Amazon Web Services Region, the import creates a new build version
    #   			for it.</p>
    #   @return [String]
    # @!attribute semantic_version
    #   <p>The semantic version to attach to the base image that was created during the import
    #   			process. This version follows the semantic version syntax.</p>
    #            <note>
    #               <p>The semantic version has four nodes: <major>.<minor>.<patch>/<build>.
    #   	You can assign values for the first three, and can filter on all of them.</p>
    #               <p>
    #                  <b>Assignment:</b> For the first three nodes, you can assign any positive integer value, including
    #   	zero. The upper limit is 2^30-1, or 1073741823, for each node. Image Builder automatically assigns the
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
    #   			Amazon EC2 VM import process. The import task doesn't need to be complete when you
    #   			call ImportVmImage - Image Builder monitors the task and finishes creating the image
    #   			when the task completes.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The CloudWatch Logs log group where Image Builder sends the import logs. For
    #   			ImportVmImage, the log group name must be within the
    #   			<code>/aws/imagebuilder/</code> namespace.</p>
    #   @return [Types::ImageLoggingConfiguration]
    # @!attribute tags
    #   <p>Tags that are attached to the import resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class ImportVmImageRequest < Struct.new(
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the Image Builder image resource that this request created. Image Builder
    #   			records the AMI from the VM import task in the image's output resources
    #   			after the task completes.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    class ImportVmImageResponse < Struct.new(
      nil,
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
    #   <p>The logging configuration of the infrastructure configuration. When you
    #   			configure S3 logs, Image Builder writes logs from the build and test process to the
    #   			specified bucket under the key prefix.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The Amazon EC2 key pair of the infrastructure configuration.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>Indicates whether Image Builder terminates the build and test instances when the image
    #   			build fails. When <code>false</code>, Image Builder retains the instance so that you
    #   			can debug it.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to which Image Builder
    #   			sends image build event notifications. Specify a standard topic. Image Builder doesn't support FIFO
    #   			topics.</p>
    #            <note>
    #               <p>EC2 Image Builder can't send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. If your SNS topic is encrypted, the key must be owned by the
    #   				same account that owns your Image Builder resources.</p>
    #            </note>
    #   @return [String]
    # @!attribute date_created
    #   <p>The date on which the infrastructure configuration was created.</p>
    #   @return [String]
    # @!attribute date_updated
    #   <p>The date on which the infrastructure configuration was last updated.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The metadata tags assigned to the Amazon EC2 build and test instances that Image Builder
    #   			launches during image creation.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata option settings for the infrastructure configuration.</p>
    #   @return [Types::InstanceMetadataOptions]
    # @!attribute tags
    #   <p>The tags of the infrastructure configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute placement
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    #   @return [Types::Placement]
    # @!attribute terminate_instance_on_completion
    #   <p>Specifies whether Image Builder terminates build and test instances when image creation
    #   			ends without a failure.</p>
    #   @return [Boolean]
    # @!attribute parent_instance
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from, instead of
    #   			launching a new instance. This applies only to the build phase.</p>
    #   @return [Types::ParentInstanceConfiguration]
    class InfrastructureConfiguration < Struct.new(
      nil,
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
      :terminate_instance_on_completion,
      :parent_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a high-level summary of an infrastructure configuration, including
    # 			the environment settings that Image Builder uses to build and test images.</p>
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
    #   <p>The metadata tags assigned to the Amazon EC2 build and test instances that Image Builder
    #   			launches during image creation.</p>
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
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    #   @return [Types::Placement]
    class InfrastructureConfigurationSummary < Struct.new(
      nil,
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
    #   <p>The CVSS score that Amazon Inspector assigned to the finding after applying its
    #   			adjustments. It includes the score source, CVSS version, scoring vector,
    #   			and the adjustments applied.</p>
    #   @return [Types::CvssScoreDetails]
    class InspectorScoreDetails < Struct.new(
      nil,
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
    #   <p>The Amazon EBS-specific configuration for this mapping.</p>
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    # @!attribute virtual_name
    #   <p>The virtual device name for instance ephemeral devices.</p>
    #   @return [String]
    # @!attribute no_device
    #   <p>Specifies a mapping to remove from the base image.</p>
    #   @return [String]
    class InstanceBlockDeviceMapping < Struct.new(
      nil,
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
    #   <p>Defines the block device mappings for the EC2 instance that Image Builder launches
    #   			to build and test your container image.</p>
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    class InstanceConfiguration < Struct.new(
      nil,
      :image,
      :block_device_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The instance metadata service (IMDS) settings that Image Builder applies to the EC2
    # 			build and test instances it launches. These settings control how software
    # 			on those instances retrieves instance metadata and IAM role
    # 			credentials.</p>
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
    #            <p>If you don't set a value, the EC2 launch default applies to the
    #   			build and test instances. That default depends on the base AMI and any
    #   			account-level instance metadata defaults. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html">Configure the instance metadata options</a> in the
    #   				<i>
    #                  <i>Amazon EC2 User Guide</i>
    #               </i>.</p>
    #   @return [String]
    # @!attribute http_put_response_hop_limit
    #   <p>Limit the number of hops that an instance metadata request can traverse to
    #   			reach its destination. If you don't set a value, the EC2 launch default
    #   			for the instance applies. If HTTP tokens are required, container image
    #   			builds need a minimum of two hops.</p>
    #   @return [Integer]
    class InstanceMetadataOptions < Struct.new(
      nil,
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
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have specified a combination of parameters that isn't valid. For
    # 			example, two mutually exclusive parameters, or a parameter without its
    # 			required companion parameter. Review the error message for details.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      nil,
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
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value that you provided for the specified parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidParameterValueException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is malformed or otherwise invalid. Verify the request and try
    # 			again.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your version number is out of bounds or does not follow the required syntax.</p>
    # @!attribute message
    #   @return [String]
    class InvalidVersionNumberException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of wildcard version ARNs that always reference the latest
    # 			version of the resource. ARNs are included for the latest version overall, and for the latest
    # 			versions within the same major, minor, and patch levels.</p>
    # @!attribute latest_version_arn
    #   <p>The latest version Amazon Resource Name (ARN) of the Image Builder resource.</p>
    #   @return [String]
    # @!attribute latest_major_version_arn
    #   <p>The latest version Amazon Resource Name (ARN) with the same <code>major</code> version of the Image Builder resource.</p>
    #   @return [String]
    # @!attribute latest_minor_version_arn
    #   <p>The latest version Amazon Resource Name (ARN) with the same <code>minor</code> version of the Image Builder resource.</p>
    #   @return [String]
    # @!attribute latest_patch_version_arn
    #   <p>The latest version Amazon Resource Name (ARN) with the same <code>patch</code> version of the Image Builder resource.</p>
    #   @return [String]
    class LatestVersionReferences < Struct.new(
      nil,
      :latest_version_arn,
      :latest_major_version_arn,
      :latest_minor_version_arn,
      :latest_patch_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the configuration for a launch permission. The launch permission
    # 			modification request is sent to the <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2
    # 				ModifyImageAttribute</a> API on behalf of the user for each Region they have
    # 			selected to distribute the AMI. To make an AMI public, set <code>userGroups</code>
    # 			to the value <code>all</code>. See the examples for making an AMI public at
    # 				<a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html">Amazon EC2
    # 				ModifyImageAttribute</a>.</p>
    # @!attribute user_ids
    #   <p>The Amazon Web Services account IDs to grant launch permission to. Each listed account can
    #   			use the distributed AMI to launch instances.</p>
    #   @return [Array<String>]
    # @!attribute user_groups
    #   <p>The name of the group that you want to grant launch permission to. The only
    #   			supported value is <code>all</code>, which makes the distributed AMI
    #   			public.</p>
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
      nil,
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
    #   <p>Specifies whether to make the new launch template version that Image Builder creates
    #   			the default version of the launch template. If you don't set a value,
    #   			Image Builder treats it as <code>true</code>.</p>
    #   @return [Boolean]
    class LaunchTemplateConfiguration < Struct.new(
      nil,
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
    #   <p>A summary flag that indicates whether the lifecycle execution identified any
    #   			resources to take lifecycle actions on.</p>
    #   @return [Types::LifecycleExecutionResourcesImpactedSummary]
    # @!attribute state
    #   <p>Runtime state that reports whether the lifecycle execution is in progress,
    #   			succeeded, or failed.</p>
    #   @return [Types::LifecycleExecutionState]
    # @!attribute start_time
    #   <p>The timestamp when the lifecycle runtime instance started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when the lifecycle runtime instance completed.</p>
    #   @return [Time]
    class LifecycleExecution < Struct.new(
      nil,
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
    #   <p>The runtime state of the lifecycle action for this resource.</p>
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
      nil,
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
    #   <p>The name of the lifecycle action that was identified for the resource.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the lifecycle policy action is taken.</p>
    #   @return [String]
    class LifecycleExecutionResourceAction < Struct.new(
      nil,
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
      nil,
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an indicator that shows whether the lifecycle execution identified
    # 			any resources to take lifecycle actions on.</p>
    # @!attribute has_impacted_resources
    #   <p>Indicates whether the lifecycle execution identified any resources to take
    #   			lifecycle actions on.</p>
    #   @return [Boolean]
    class LifecycleExecutionResourcesImpactedSummary < Struct.new(
      nil,
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
      nil,
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
      nil,
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a lifecycle policy resource: its identity, status, execution role,
    # 			resource type, rules, resource selection, timestamps, and tags.</p>
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
    #   <p>Indicates whether the lifecycle policy resource is enabled. Only enabled
    #   			policies run on their schedule. Disabling or deleting a policy removes its
    #   			schedule and cancels any in-flight lifecycle execution.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that Image Builder uses to run the lifecycle policy.
    #   			This is a custom role that you create.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resources the lifecycle policy targets.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>The list of rules for the lifecycle policy. Each rule pairs an action with a
    #   			filter and optional exclusion rules. A policy can contain at most one rule
    #   			per action type.</p>
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
      nil,
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

    # <p>Defines one lifecycle policy rule: the action to take, the filter that
    # 			determines which resources the rule applies to, and optional exclusion
    # 			rules.</p>
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
      nil,
      :action,
      :filter,
      :exclusion_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the action configuration for a lifecycle policy rule: the action to
    # 			take, and which underlying resources the action extends to.</p>
    # @!attribute type
    #   <p>Specifies the lifecycle action to take. <code>DELETE</code> deletes the
    #   			image resource and, with <code>includeResources</code>, also removes
    #   			distributed AMIs, snapshots, or container images. <code>DEPRECATE</code> and
    #   			<code>DISABLE</code> set the corresponding status on the image resource and,
    #   			if <code>includeResources.amis</code> is set, on its distributed AMIs.</p>
    #   @return [String]
    # @!attribute include_resources
    #   <p>Specifies which underlying resources the action extends to beyond the Image Builder
    #   			image resource itself: distributed AMIs, their snapshots, or distributed
    #   			container images. <code>DELETE</code> rules can include all three,
    #   			<code>DEPRECATE</code> and <code>DISABLE</code> rules can include AMIs only,
    #   			and you can only include snapshots together with AMIs.</p>
    #   @return [Types::LifecyclePolicyDetailActionIncludeResources]
    class LifecyclePolicyDetailAction < Struct.new(
      nil,
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
      nil,
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
      nil,
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
    #   <p>The lifecycle action doesn't apply to AMIs that are shared with any of
    #   			the specified Amazon Web Services accounts.</p>
    #   @return [Array<String>]
    # @!attribute last_launched
    #   <p>Configures Image Builder to exclude AMIs that were launched within the specified time
    #   			period from lifecycle actions. AMIs with no recorded last-launched time
    #   			aren't excluded by this rule.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched]
    # @!attribute tag_map
    #   <p>Lifecycle actions don't apply to AMIs that have any of these tags. Both
    #   			the key and the value must match.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicyDetailExclusionRulesAmis < Struct.new(
      nil,
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
    #   <p>Defines the unit of time that the lifecycle policy uses to calculate elapsed
    #   			time since the last launch.</p>
    #   @return [String]
    class LifecyclePolicyDetailExclusionRulesAmisLastLaunched < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines filters that the lifecycle policy uses to determine impacted resource.</p>
    # @!attribute type
    #   <p>Filter resources based on either <code>AGE</code> or <code>COUNT</code>.
    #   			You can only use the count filter with the <code>DELETE</code> action
    #   			type.</p>
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
      nil,
      :type,
      :value,
      :unit,
      :retain_at_least,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource selection criteria for the lifecycle policy. You must provide
    # 			exactly one selection criteria: either recipes or a tag map, not both.</p>
    # @!attribute recipes
    #   <p>A list of recipes that are used as selection criteria for the output
    #   			images that the lifecycle policy applies to.</p>
    #   @return [Array<Types::LifecyclePolicyResourceSelectionRecipe>]
    # @!attribute tag_map
    #   <p>A list of tags that are used as selection criteria for the Image Builder image
    #   			resources that the lifecycle policy applies to.</p>
    #   @return [Hash<String, String>]
    class LifecyclePolicyResourceSelection < Struct.new(
      nil,
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
      nil,
      :name,
      :semantic_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of lifecycle policy resources.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the lifecycle policy.</p>
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
      nil,
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
    #   <p>The component version ARN whose build versions you want to list. The ARN
    #   			must specify an exact version, without a build number suffix. If you
    #   			don't specify an ARN, Image Builder returns build versions for the components
    #   			that your account owns.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListComponentBuildVersionsRequest < Struct.new(
      nil,
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
    #   <p>The list of component summaries. Each summary represents one build version
    #   			of the specified component version, or of the components that your account
    #   			owns if you didn't specify an ARN. Deprecated build versions aren't
    #   			included.</p>
    #   @return [Array<Types::ComponentSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListComponentBuildVersionsResponse < Struct.new(
      nil,
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
    #   			owners, you can specify components that Amazon manages, components from the
    #   			Amazon Web Services Marketplace, third party components, or components that other accounts have shared
    #   			with you.</p>
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
    #                     <code>productCodes</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status</code>
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
    #   <p>Specifies whether to return one entry per component name, with all versions
    #   			of each component aggregated. Defaults to <code>false</code>, which returns
    #   			one entry per component version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListComponentsRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :component_version_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Returns container recipes belonging to the specified owner, that have been
    #   			shared with you. You can omit this field to return container recipes
    #   			belonging to your account. For container recipes, the valid owner values are
    #   			<code>Self</code>, <code>Shared</code>, and <code>Amazon</code>.</p>
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListContainerRecipesRequest < Struct.new(
      nil,
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
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListDistributionConfigurationsRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :distribution_configuration_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image version whose build versions you want to retrieve.
    #   			The ARN must specify an exact version
    #   			(<code><major>.<minor>.<patch></code>) - wildcards aren't allowed.
    #   			This parameter is optional. If you don't specify it, Image Builder returns build
    #   			versions for all of the images in your account.</p>
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageBuildVersionsRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :image_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version whose packages you want to list. The
    #   			value must be a full build version ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePackagesRequest < Struct.new(
      nil,
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
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePipelineImagesRequest < Struct.new(
      nil,
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
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImagePipelinesRequest < Struct.new(
      nil,
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
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageRecipesRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :image_recipe_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A filter name and value pair that determines the type of aggregation
    #   			that Image Builder returns. Use one of the following filter names:</p>
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
    #            </ul>
    #            <p>If you don't specify a filter, Image Builder returns an aggregation for your account.</p>
    #   @return [Types::Filter]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageScanFindingAggregationsRequest < Struct.new(
      nil,
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
      nil,
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
    #                     <code>imageBuildVersionArn</code> – Filters findings by the
    #   					image build version that was scanned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>imagePipelineArn</code> – Filters findings by the
    #   					pipeline that created the scanned image.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>vulnerabilityId</code> – Filters findings by
    #   					vulnerability ID, for example a CVE ID.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>severity</code> – Filters findings by severity
    #   					level.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't request a filter, then all findings in your account are listed.</p>
    #   @return [Array<Types::ImageScanFindingsFilter>]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListImageScanFindingsRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :findings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner
    #   <p>Filters the list to images owned by you, by Amazon, or shared with you by other accounts.
    #   		By default, only your account's images are returned.</p>
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
    #   <p>Specifies whether to return one entry per image name, with all versions of
    #   			each image aggregated. Defaults to <code>false</code>, which returns one
    #   			entry per image version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute include_deprecated
    #   <p>Specifies whether to include deprecated Amazon-managed images in the
    #   			results. Deprecated images that you own are always returned. Defaults to
    #   			<code>false</code>.</p>
    #   @return [Boolean]
    class ListImagesRequest < Struct.new(
      nil,
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
    #                  <b>Filtering:</b> You can use wildcards (x) to specify the most recent versions or nodes when
    #   	selecting the base image or components for your recipe. When you use a wildcard in any node, all nodes
    #   	to the right of the first wildcard must also be wildcards.</p>
    #            </note>
    #   @return [Array<Types::ImageVersion>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListImagesResponse < Struct.new(
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListInfrastructureConfigurationsRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :infrastructure_configuration_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>The unique identifier for a runtime instance of the lifecycle policy.</p>
    #   @return [String]
    # @!attribute parent_resource_id
    #   <p>The Amazon Resource Name (ARN) of an image build version to get the output resources for,
    #   			such as AMIs or container images in Amazon ECR. You can get this value from the
    #   			<code>resourceId</code> in the top-level response. If you leave this
    #   			property empty, the response lists the Image Builder resources that the lifecycle
    #   			execution identified for lifecycle actions. If the image build version that
    #   			you specify in <code>parentResourceId</code> wasn't part of this
    #   			lifecycle execution, the response contains an empty list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListLifecycleExecutionResourcesRequest < Struct.new(
      nil,
      :lifecycle_execution_id,
      :parent_resource_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute lifecycle_execution_id
    #   <p>The unique identifier for the runtime instance of the lifecycle policy.</p>
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
      nil,
      :lifecycle_execution_id,
      :lifecycle_execution_state,
      :resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list lifecycle executions. Specify a
    #   			lifecycle policy ARN to list its executions, or an image build version ARN
    #   			to list the executions that <a>StartResourceStateUpdate</a>
    #   			started for that image. Other ARN types aren't valid for this
    #   			request.</p>
    #   @return [String]
    class ListLifecycleExecutionsRequest < Struct.new(
      nil,
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
      nil,
      :lifecycle_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Use the following filters to streamline results: <code>name</code>,
    #   			<code>resourceType</code>, and <code>status</code>. Filter names are
    #   			matched exactly as shown.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListLifecyclePoliciesRequest < Struct.new(
      nil,
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
      nil,
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
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the specified resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWaitingWorkflowStepsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute steps
    #   <p>An array of the workflow steps that are waiting for action in your
    #   			Amazon Web Services account. Each step is paused at a <code>WaitForAction</code> step, and
    #   			remains in the list until you respond with
    #   			<a>SendWorkflowStepAction</a> or the wait times out.</p>
    #   @return [Array<Types::WorkflowStepExecution>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWaitingWorkflowStepsResponse < Struct.new(
      nil,
      :steps,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_version_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow resource for which to get a list of build versions.
    #   			The version segments can contain wildcards (<code>x</code>) to match multiple
    #   			versions of the workflow. If you don't specify an ARN, the response lists build
    #   			versions for all of the workflows in your account.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWorkflowBuildVersionsRequest < Struct.new(
      nil,
      :workflow_version_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_summary_list
    #   <p>A list that contains metadata for the build versions of the workflow
    #   			resource specified in the request.</p>
    #   @return [Array<Types::WorkflowSummary>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowBuildVersionsResponse < Struct.new(
      nil,
      :workflow_summary_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>List all workflow runtime instances for the specified image build version
    #   			resource ARN.</p>
    #   @return [String]
    class ListWorkflowExecutionsRequest < Struct.new(
      nil,
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
    #   <p>An array of runtime details that represents each time a workflow ran for
    #   			the requested image build version. Image Builder retains workflow execution records
    #   			for a limited time, so this array can be empty for older image build
    #   			versions.</p>
    #   @return [Array<Types::WorkflowExecutionMetadata>]
    # @!attribute image_build_version_arn
    #   <p>The resource Amazon Resource Name (ARN) of the image build version for which you requested a list of
    #   			workflow runtime details.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The failure reason for the image build version, if it's in a failed state.
    #   			This comes from the image itself, not from an individual workflow, so it's
    #   			available even when no workflow executions remain for the image.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowExecutionsResponse < Struct.new(
      nil,
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
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    class ListWorkflowStepExecutionsRequest < Struct.new(
      nil,
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
    #   <p>The build version Amazon Resource Name (ARN) for the Image Builder workflow resource that defines the steps for
    #   			this runtime instance of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_execution_id
    #   <p>The unique identifier that Image Builder assigned to keep track of runtime details
    #   			when it ran the workflow.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The image build version resource Amazon Resource Name (ARN) that's associated with the specified runtime
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
      nil,
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
    #   <p>Filters results based on the workflow owner. By default, this request returns
    #   			the workflows that your account owns (<code>Self</code>). Specify
    #   			<code>Amazon</code> to list the workflows that Image Builder manages. Image Builder rejects
    #   			the <code>Shared</code> and <code>ThirdParty</code> owner values for
    #   			workflows, and <code>AWSMarketplace</code> returns no results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters to narrow the list of workflows. You can filter on
    #   			<code>name</code>, <code>version</code>, <code>description</code>, and
    #   			<code>type</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute by_name
    #   <p>Specifies whether to return one entry per workflow name, with all versions of
    #   			each workflow aggregated. Defaults to <code>false</code>, which returns one
    #   			entry per workflow version. You can't combine this option with the
    #   			<code>version</code> filter.</p>
    #   @return [Boolean]
    # @!attribute max_results
    #   <p>The maximum number of items to return in a single request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to specify where to start paginating. Use the <code>nextToken</code> value
    #   	from a previously truncated response.</p>
    #   @return [String]
    class ListWorkflowsRequest < Struct.new(
      nil,
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
    #   <p>A list of workflow versions that match the request criteria.</p>
    #   @return [Array<Types::WorkflowVersion>]
    # @!attribute next_token
    #   <p>The next token used for paginated responses. When this field isn't empty,
    #   	there are additional elements that the service hasn't included in this request. Use this token
    #   		with the next request to retrieve additional objects.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      nil,
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
      nil,
      :s3_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resources produced by this image.</p>
    # @!attribute amis
    #   <p>The Amazon EC2 AMIs created by this image. The list contains one entry per
    #   			AMI, including copies that distribution created in each target
    #   			Amazon Web Services Region and account.</p>
    #   @return [Array<Types::Ami>]
    # @!attribute containers
    #   <p>The container images that Image Builder created when it built this image, stored in
    #   			the output Amazon ECR repository.</p>
    #   @return [Array<Types::Container>]
    class OutputResources < Struct.new(
      nil,
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
    #   <p>The CVSS scores for the vulnerability in this finding, as published
    #   			by the vulnerability sources. Sources include NVD and the operating system
    #   			vendor, and scores can span CVSS versions.</p>
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
      nil,
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

    # <p>Settings for building on an instance that is already running, instead of an
    # 			instance that Image Builder launches for the build.</p>
    # @!attribute auto_scaling_group
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from. This is
    #   			required when you specify <code>parentInstance</code>.</p>
    #   @return [Types::AutoScalingGroupConfiguration]
    class ParentInstanceConfiguration < Struct.new(
      nil,
      :auto_scaling_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The logging configuration that's defined for pipeline execution.</p>
    # @!attribute image_log_group_name
    #   <p>Specifies the CloudWatch Logs log group name for image build logs.
    #   			The log group name can contain alphanumeric characters, hyphens,
    #   			underscores, forward slashes, and periods, up to 512 characters.
    #   			Log group names not starting with <code>/aws/imagebuilder/</code>
    #   			require an <code>executionRole</code> with CloudWatch Logs write
    #   			permissions. If not specified, defaults to
    #   			<code>/aws/imagebuilder/image-name</code>.</p>
    #   @return [String]
    # @!attribute pipeline_log_group_name
    #   <p>Specifies the CloudWatch Logs log group name for pipeline execution
    #   			logs. The log group name can contain alphanumeric characters, hyphens,
    #   			underscores, forward slashes, and periods, up to 512 characters.
    #   			Log group names not starting with <code>/aws/imagebuilder/</code>
    #   			require an <code>executionRole</code> with CloudWatch Logs write
    #   			permissions. If not specified, defaults to
    #   			<code>/aws/imagebuilder/pipeline/pipeline-name</code>.</p>
    #   @return [String]
    class PipelineLoggingConfiguration < Struct.new(
      nil,
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
    #   			applies if <code>tenancy</code> is <code>host</code>.</p>
    #   @return [String]
    # @!attribute host_resource_group_arn
    #   <p>The Amazon Resource Name (ARN) of the host resource group in which to launch build and test instances.
    #   			This only applies if <code>tenancy</code> is <code>host</code>.</p>
    #   @return [String]
    class Placement < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
    #   <p>The resource policy to apply to the image, as a JSON policy document.
    #   			Image Builder validates the policy with Amazon Web Services RAM before applying it, and rejects
    #   			invalid policies with <code>InvalidParameterValueException</code>.</p>
    #   @return [String]
    class PutImagePolicyRequest < Struct.new(
      nil,
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
      nil,
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
      nil,
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
      nil,
      :request_id,
      :image_recipe_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a distribution or image configuration failure for a single
    # 			Region.</p>
    # @!attribute region
    #   <p>The Region where the failure occurred.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The failure status for the Region. Indicates whether the process failed, was
    #   			canceled, or timed out.</p>
    #   @return [String]
    # @!attribute image_configuration_step
    #   <p>The image configuration step where the failure occurred. Image Builder sets this property
    #   			when the failure happened during post-distribution configuration, such as launch
    #   			template updates or virtual machine (VM) export. This property doesn't appear
    #   			for failures that occurred while Image Builder copied the image to the Region.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message for the failure in the Region.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The account ID of the account that the image was distributed to in the
    #   			Region.</p>
    #   @return [String]
    class RegionFailure < Struct.new(
      nil,
      :region,
      :status,
      :image_configuration_step,
      :error_message,
      :target_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Controls Secure Boot and UEFI data settings for the resulting image
    # 			during ISO imports. For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html">UEFI Secure Boot for Amazon EC2 instances</a> in
    # 			the <i>
    #                <i>Amazon EC2 User Guide</i>
    #             </i>.</p>
    # @!attribute secure_boot_enabled
    #   <p>Specifies whether Secure Boot is enabled for the output AMI.
    #   			The default value is <code>true</code>. To disable Secure Boot
    #   			for custom unsigned drivers, set this value to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute uefi_data
    #   <p>A Base64-encoded representation of the non-volatile UEFI variable store.
    #   			You can specify this parameter only when
    #   			<code>secureBootEnabled</code> is <code>true</code> or
    #   			unspecified. You can inspect and modify the UEFI data by using
    #   			the <a href="https://github.com/awslabs/python-uefivars">python-uefivars tool on GitHub</a>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-variables.html">UEFI
    #   				variables for Amazon EC2 instances</a>.</p>
    #   @return [String]
    class RegisterImageOptions < Struct.new(
      nil,
      :secure_boot_enabled,
      :uefi_data,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
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
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>At least one of the resources referenced by your request does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The state to apply to the image resource in a resource state update
    # 			request.</p>
    # @!attribute status
    #   <p>The status to which you want to move the image resource. Set the status to
    #   			<code>AVAILABLE</code> to restore an image that's currently deprecated
    #   			or disabled.</p>
    #   @return [String]
    class ResourceState < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional rules to specify resources that should be exempt from ad-hoc lifecycle actions.</p>
    # @!attribute amis
    #   <p>Defines criteria for AMIs that Image Builder should exclude from the resource
    #   			state update.</p>
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmis]
    class ResourceStateUpdateExclusionRules < Struct.new(
      nil,
      :amis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies which underlying resources the resource state update applies to,
    # 			in addition to the Image Builder image resource itself: distributed AMIs and their
    # 			snapshots for AMI images, or distributed container images for container
    # 			images.</p>
    # @!attribute amis
    #   <p>Specifies whether the lifecycle action should apply to distributed AMIs.</p>
    #   @return [Boolean]
    # @!attribute snapshots
    #   <p>Specifies whether the lifecycle action should apply to snapshots associated with distributed AMIs.</p>
    #   @return [Boolean]
    # @!attribute containers
    #   <p>Specifies whether the lifecycle action should apply to distributed containers.</p>
    #   @return [Boolean]
    class ResourceStateUpdateIncludeResources < Struct.new(
      nil,
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

    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that you want to retry. The image
    #   			must be in the <code>FAILED</code> or <code>CANCELLED</code> state.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class RetryImageRequest < Struct.new(
      nil,
      :image_build_version_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The ARN of the image to be retried.</p>
    #   @return [String]
    class RetryImageResponse < Struct.new(
      nil,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Properties that configure exporting the output image to a disk image file in
    # 			an Amazon S3 bucket, in a format that's compatible with your VMs.</p>
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
      nil,
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
    #   <p>The name of an existing Amazon S3 bucket where Image Builder saves build logs. The bucket
    #   			isn't validated when you create or update the configuration, and Image Builder
    #   			doesn't create it. The instance profile associated with this
    #   			infrastructure configuration must have permission to write to the
    #   			bucket.</p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p>The Amazon S3 key prefix under which Image Builder writes build and test logs in the
    #   			bucket.</p>
    #   @return [String]
    class S3Logs < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A schedule configures when and how often a pipeline will automatically create a new
    # 			image.</p>
    # @!attribute schedule_expression
    #   <p>The expression determines how often EC2 Image Builder evaluates your
    #   				<code>pipelineExecutionStartCondition</code>. You can specify a cron
    #   				expression, or a rate expression such as <code>rate(1 day)</code>.</p>
    #            <p>For information on how to format a cron expression in Image Builder, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/image-builder-cron.html">Use
    #   				cron expressions in EC2 Image Builder</a>.</p>
    #   @return [String]
    # @!attribute timezone
    #   <p>The timezone that applies to the scheduling expression. Specify a value in
    #   			<a href="https://www.joda.org/joda-time/timezones.html">IANA timezone
    #   				format</a>, for example <code>Etc/UTC</code> or
    #   			<code>America/Los_Angeles</code>. If not specified, this defaults to UTC.</p>
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
    #                     <p>For semantic version syntax, see
    #   						<a href="https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html">CreateComponent</a>.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EXPRESSION_MATCH_ONLY</code> – This condition builds a new
    #   					image every time the CRON expression matches the current time.</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If the recipe references its base image through an Amazon Web Services Systems Manager Parameter
    #   				Store parameter, a change in the parameter's value also counts as an
    #   				available dependency update.</p>
    #            </note>
    #   @return [String]
    # @!attribute auto_disable_policy
    #   <p>The policy that configures when Image Builder should automatically disable a pipeline that
    #   			is failing.</p>
    #   @return [Types::AutoDisablePolicy]
    class Schedule < Struct.new(
      nil,
      :schedule_expression,
      :timezone,
      :pipeline_execution_start_condition,
      :auto_disable_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_execution_id
    #   <p>Uniquely identifies the waiting workflow step that you send the action to.
    #   			To get this identifier, call <a>ListWaitingWorkflowSteps</a>.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version associated with the workflow
    #   			step execution. This value must match the image that owns the waiting step.
    #   			If the ARN does not correspond to the image running the workflow,
    #   			then the request fails with a validation error.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to perform on the paused workflow step.
    #   			<code>RESUME</code> completes the waiting step, and the workflow continues.
    #   			<code>STOP</code> fails the step, and the step's <code>onFailure</code>
    #   			setting determines whether the workflow continues or aborts. The workflow
    #   			step must be in a waiting state to accept an action. The request fails if
    #   			the step has already timed out or been actioned.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the action. This value is stored with the step
    #   			execution record and is accessible in subsequent workflow steps
    #   			via step output references.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class SendWorkflowStepActionRequest < Struct.new(
      nil,
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
    #   <p>The unique identifier for the workflow step that received the action, as
    #   			specified in the request.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version that received the action
    #   			request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token that uniquely identifies the request.</p>
    #   @return [String]
    class SendWorkflowStepActionResponse < Struct.new(
      nil,
      :step_execution_id,
      :image_build_version_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred while Image Builder processed the request.
    # 			Retrying the request may succeed.</p>
    # @!attribute message
    #   @return [String]
    class ServiceException < Struct.new(
      nil,
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
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is unable to process your request at this time.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
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
      nil,
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
    #   <p>The type of value the parameter contains.
    #   		We recommend the <code>aws:ec2:image</code> data type.</p>
    #   @return [String]
    class SsmParameterConfiguration < Struct.new(
      nil,
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
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for Image Builder to apply to the image resource that's created
    #   			when pipeline execution starts.</p>
    #   @return [Hash<String, String>]
    class StartImagePipelineExecutionRequest < Struct.new(
      nil,
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
      nil,
      :request_id,
      :client_token,
      :image_build_version_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the image build version to update. The
    #   			image must be in one of these terminal states: <code>AVAILABLE</code>,
    #   			<code>DEPRECATED</code>, <code>DISABLED</code>,
    #   			<code>FAILED</code>, or <code>CANCELLED</code>. Images with
    #   			<code>FAILED</code> or <code>CANCELLED</code> status can transition only
    #   			to <code>DELETED</code>.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Specifies the lifecycle action to take for this request. For AMI-based
    #   			images, valid values are <code>AVAILABLE</code>,
    #   			<code>DEPRECATED</code>, <code>DISABLED</code>, and
    #   			<code>DELETED</code>. For container-based images, only
    #   			<code>DELETED</code> is supported.</p>
    #   @return [Types::ResourceState]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) of the IAM role that's used to update image state. You
    #   			must provide this property together with <code>includeResources</code>.
    #   			Neither is valid without the other.</p>
    #   @return [String]
    # @!attribute include_resources
    #   <p>Specifies which underlying resources to update, in addition to the Image Builder
    #   			image resource itself. Snapshots and containers are only valid for the
    #   			<code>DELETED</code> state. To set an image to <code>DELETED</code>, you
    #   			must include its underlying resources. To delete only the Image Builder image
    #   			record, use the <a>DeleteImage</a> operation instead.</p>
    #   @return [Types::ResourceStateUpdateIncludeResources]
    # @!attribute exclusion_rules
    #   <p>Rules that Image Builder evaluates against each of the image's AMIs. Matching
    #   			AMIs and their snapshots are skipped. Exclusion rules only take effect when
    #   			the request includes AMIs. If the target state is <code>DELETED</code> and
    #   			any resource was skipped, the Image Builder image resource itself is also retained.
    #   			For the <code>DEPRECATED</code> and <code>DISABLED</code> target states,
    #   			Image Builder updates the image resource's state regardless of
    #   			exclusions.</p>
    #   @return [Types::ResourceStateUpdateExclusionRules]
    # @!attribute update_at
    #   <p>The timestamp that indicates when resources are updated by a lifecycle
    #   			action. This property is valid only when the target status is
    #   			<code>DEPRECATED</code>, and the value must be a future time. If you
    #   			don't specify a value, Image Builder begins the state update right away. For a
    #   			scheduled deprecation, included AMIs get their EC2 deprecation time set
    #   			immediately, and Image Builder schedules the image resource to transition to
    #   			<code>DEPRECATED</code> at that time.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class StartResourceStateUpdateRequest < Struct.new(
      nil,
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
    #   <p>Identifies the lifecycle execution that performs the resource state update.
    #   			Image Builder only returns this field when it started a lifecycle execution for the
    #   			update. Use it with <a>GetLifecycleExecution</a> to track
    #   			progress.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The requested Amazon Resource Name (ARN) of the Image Builder resource for the asynchronous update.</p>
    #   @return [String]
    class StartResourceStateUpdateResponse < Struct.new(
      nil,
      :lifecycle_execution_id,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains settings for the Systems Manager agent on your build instance. This setting
    # 			applies to Linux and macOS build instances only. Requests that set it for a
    # 			recipe with a Windows base image are rejected.</p>
    # @!attribute uninstall_after_build
    #   <p>Specifies whether the Systems Manager agent is removed from your final build image
    #   			before Image Builder creates the new AMI. If <code>true</code>, the agent is
    #   			removed. If <code>false</code>, the agent is kept, so that it's
    #   			included in the AMI. If you don't set this property, Image Builder removes the
    #   			agent only if Image Builder installed the agent during the build. An agent that was
    #   			pre-installed on the base image is kept.</p>
    #   @return [Boolean]
    class SystemsManagerAgent < Struct.new(
      nil,
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
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The container repository where the output container image is stored.</p>
    # @!attribute service
    #   <p>Specifies the service in which this image was registered.</p>
    #   @return [String]
    # @!attribute repository_name
    #   <p>The name of the container repository where the output container image is
    #   			stored. Provide the repository name only (a namespace path such as
    #   			<code>team-a/my-repo</code> is allowed, but not the registry
    #   			hostname).</p>
    #   @return [String]
    class TargetContainerRepository < Struct.new(
      nil,
      :service,
      :repository_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You have attempted too many requests for the specific operation.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
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
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
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
    #   <p>The distribution settings for the configuration. Each entry defines how
    #   			output images are distributed in one target Amazon Web Services Region. A Region can
    #   			appear at most once in the list. This list replaces the configuration's existing
    #   			distributions entirely.</p>
    #   @return [Array<Types::Distribution>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class UpdateDistributionConfigurationRequest < Struct.new(
      nil,
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
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the image recipe that configures
    #   			images created by this image pipeline. You must specify either this property
    #   			or <code>containerRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute container_recipe_arn
    #   <p>The Amazon Resource Name (ARN) of the container recipe that is used to configure images
    #   			created by this container pipeline. You must specify either this property or
    #   			<code>imageRecipeArn</code>, but not both.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the infrastructure configuration that Image Builder uses to
    #   			build images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute distribution_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the distribution configuration that Image Builder uses to
    #   			configure and distribute images created by this image pipeline.</p>
    #   @return [String]
    # @!attribute image_tests_configuration
    #   <p>Specifies the test settings that Image Builder applies to images that this
    #   			pipeline creates. If you don't provide test settings, Image Builder stores a default
    #   			configuration with image tests enabled.</p>
    #   @return [Types::ImageTestsConfiguration]
    # @!attribute enhanced_image_metadata_enabled
    #   <p>Specifies whether to collect additional information about the image being created, including the operating
    #   			system (OS) version and package list. Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute schedule
    #   <p>The schedule of the image pipeline. Because the update replaces the entire
    #   			configuration, omitting this property removes any existing schedule. The
    #   			pipeline then runs only when you call
    #   			<a>StartImagePipelineExecution</a>.</p>
    #   @return [Types::Schedule]
    # @!attribute status
    #   <p>The status of the image pipeline. Defaults to <code>ENABLED</code> when
    #   			omitted. To keep a pipeline disabled, include this property set to
    #   			<code>DISABLED</code> in your update request.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    # @!attribute image_scanning_configuration
    #   <p>Contains settings for vulnerability scans that Amazon Inspector runs against the test instance
    #   			during image creation.</p>
    #   @return [Types::ImageScanningConfiguration]
    # @!attribute workflows
    #   <p>The array of workflow configuration objects for builds that this pipeline
    #   			starts. You must also specify <code>executionRole</code> when you provide
    #   			workflows.</p>
    #   @return [Array<Types::WorkflowConfiguration>]
    # @!attribute logging_configuration
    #   <p>Specifies the logging configuration for the image pipeline. Use this
    #   			to define custom CloudWatch Logs log groups for your pipeline execution
    #   			logs and image build logs. The service manages log groups with names
    #   			starting with <code>/aws/imagebuilder/</code> using the service-linked
    #   			role. For custom log group names outside of this prefix, you must also
    #   			provide an <code>executionRole</code>.</p>
    #   @return [Types::PipelineLoggingConfiguration]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants
    #   			Image Builder access to perform workflow actions. If you omit this property, the
    #   			pipeline reverts to the Image Builder service-linked role.</p>
    #   @return [String]
    # @!attribute image_tags
    #   <p>The tags that Image Builder applies to the Image Builder image resource that this
    #   			pipeline's scheduled executions create. These tags don't apply to the
    #   			output AMI. To tag output AMIs, use <code>amiTags</code> in the
    #   			pipeline's distribution configuration.</p>
    #   @return [Hash<String, String>]
    class UpdateImagePipelineRequest < Struct.new(
      nil,
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
      :image_tags,
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
      nil,
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
    #   			instance types to use for this build. Image Builder picks one of these instance types
    #   			based on availability. If you don't specify instance types, Image Builder selects
    #   			compatible instance types automatically. If you specify a Dedicated Host,
    #   			Image Builder uses only instance types that the host supports.</p>
    #   @return [Array<String>]
    # @!attribute instance_profile_name
    #   <p>The instance profile to associate with the instance used to customize your Amazon EC2
    #   			AMI. The instance profile must exist in your account.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The security group IDs to associate with the instance used to customize your Amazon EC2
    #   			AMI.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The subnet ID in which to place the instance used to customize your Amazon EC2
    #   			AMI. If you specify <code>subnetId</code>, you must also specify one or
    #   			more security group IDs in <code>securityGroupIds</code>. Otherwise, the
    #   			request fails.</p>
    #   @return [String]
    # @!attribute logging
    #   <p>The logging configuration of the infrastructure configuration. When you
    #   			configure S3 logs, Image Builder writes logs from the build and test process to the
    #   			specified bucket under the key prefix.</p>
    #   @return [Types::Logging]
    # @!attribute key_pair
    #   <p>The key pair of the infrastructure configuration. You can use this to log on to and
    #   			debug the instance used to create your image.</p>
    #   @return [String]
    # @!attribute terminate_instance_on_failure
    #   <p>Specifies whether to terminate the instance on failure. Set to
    #   			false if you want Image Builder to retain the instance used to configure your AMI if the build or
    #   			test phase of your workflow fails. Defaults to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute terminate_instance_on_completion
    #   <p>Specifies whether Image Builder terminates build and test instances when image creation
    #   			ends without a failure (success, cancellation, or expiration). Defaults to
    #   			<code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic to which Image Builder
    #   			sends image build event notifications. Specify a standard topic. Image Builder doesn't support FIFO
    #   			topics. Image Builder validates the topic when you create or update the configuration.
    #   			You must have permission to publish to the topic.</p>
    #            <note>
    #               <p>EC2 Image Builder can't send notifications to SNS topics that are encrypted using keys
    #   				from other accounts. If your SNS topic is encrypted, the key must be owned by the
    #   				same account that owns your Image Builder resources.</p>
    #            </note>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The metadata tags to assign to the Amazon EC2 instance that Image Builder launches during
    #   			the build process. Tags are formatted as key value pairs. Tag keys can't
    #   			begin with <code>aws:</code> or match one of the following reserved keys:
    #   			<code>CreatedBy</code>, <code>Ec2ImageBuilderArn</code>, <code>Name</code>,
    #   			or <code>Tags</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute instance_metadata_options
    #   <p>The instance metadata service (IMDS) settings that Image Builder applies to the EC2
    #   			build and test instances it launches during image creation. If you don't
    #   			set these options, the EC2 launch defaults for the instance apply. For more
    #   			information about instance metadata options, see one of the following
    #   			links:</p>
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
    #   <p>The instance placement settings that define where the build and test
    #   			instances that Image Builder launches during image creation run. These settings
    #   			don't affect instances that you launch from the output image.</p>
    #   @return [Types::Placement]
    # @!attribute parent_instance
    #   <p>The Amazon EC2 Auto Scaling group that Image Builder takes the build instance from, instead of
    #   			launching a new instance. This applies only to the build phase.</p>
    #            <p>To use this feature, the execution role for the build must have permissions to
    #   			describe the Auto Scaling group, tag the instance while it's still in the group, and
    #   			detach it from the group. For more information, see <a href="https://docs.aws.amazon.com/imagebuilder/latest/userguide/infra-config-parent-instance.html">Build on an
    #   				instance from an Auto Scaling group</a> in the <i>EC2 Image Builder User
    #   				Guide</i>.</p>
    #   @return [Types::ParentInstanceConfiguration]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class UpdateInfrastructureConfigurationRequest < Struct.new(
      nil,
      :infrastructure_configuration_arn,
      :description,
      :instance_types,
      :instance_profile_name,
      :security_group_ids,
      :subnet_id,
      :logging,
      :key_pair,
      :terminate_instance_on_failure,
      :terminate_instance_on_completion,
      :sns_topic_arn,
      :resource_tags,
      :instance_metadata_options,
      :placement,
      :parent_instance,
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
      nil,
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
    #   <p>Optional description for the lifecycle policy. Because the update replaces the
    #   			entire configuration, omitting this property removes any existing
    #   			description.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates whether the lifecycle policy resource is enabled. Defaults to
    #   			<code>ENABLED</code> when omitted, so updating a disabled policy without
    #   			setting this property re-enables it.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>The name or Amazon Resource Name (ARN) for the IAM role you create that grants Image Builder access
    #   			to run lifecycle actions.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of image resource that the lifecycle policy applies to. The value
    #   			must match the policy's existing resource type. You can't change the
    #   			resource type of an existing lifecycle policy.</p>
    #   @return [String]
    # @!attribute policy_details
    #   <p>The configuration details for a lifecycle policy resource.</p>
    #   @return [Array<Types::LifecyclePolicyDetail>]
    # @!attribute resource_selection
    #   <p>Selection criteria for resources that the lifecycle policy applies to. You
    #   			must specify exactly one selection criteria: either recipes or a tag map,
    #   			not both.</p>
    #   @return [Types::LifecyclePolicyResourceSelection]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure
    #          that the operation runs no more than one time. If you retry a request with the same client
    #   	   token, Image Builder returns the original response without running the operation again. For more
    #   	   information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Ensuring idempotency</a>
    #          in the <i>Amazon EC2 API Reference</i>.</p>
    #   @return [String]
    class UpdateLifecyclePolicyRequest < Struct.new(
      nil,
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
    #   <p>The Amazon Resource Name (ARN) of the image lifecycle policy resource that was updated.</p>
    #   @return [String]
    class UpdateLifecyclePolicyResponse < Struct.new(
      nil,
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
      nil,
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
      nil,
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

    # <p>Windows-specific configuration settings for an ISO import, including
    # 			the edition to install from a multi-edition Windows ISO file.</p>
    # @!attribute image_index
    #   <p>The 1-based index that specifies which Windows edition to install
    #   			from a multi-edition Windows ISO file. A Windows ISO can contain a
    #   			<code>.wim</code> file with multiple image indexes, each representing
    #   			a different edition.</p>
    #   @return [Integer]
    class WindowsConfiguration < Struct.new(
      nil,
      :image_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a process that Image Builder runs during the build, test, or distribution
    # 			stage of the image creation process.</p>
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
    #   <p>The image creation stage that the workflow applies to.</p>
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
    #   <p>The tags that apply to the workflow resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute parameters
    #   <p>An array of input parameters that the image workflow uses
    #   			to control actions or configure settings.</p>
    #   @return [Array<Types::WorkflowParameterDetail>]
    class Workflow < Struct.new(
      nil,
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
    #   <p>The action to take if the workflow fails. With <code>CONTINUE</code>, a
    #   			failed workflow is logged and image creation proceeds to the next workflow.
    #   			If you don't set a value, the image build fails when the workflow fails.
    #   			You can only set this property for test workflows.</p>
    #   @return [String]
    class WorkflowConfiguration < Struct.new(
      nil,
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
    #   <p>The total number of steps that the workflow document defines for this runtime
    #   			instance of the workflow. Image Builder sets this count before any steps run. The sum of
    #   			succeeded, skipped, and failed steps only reaches this total if every step
    #   			finishes in one of those states.</p>
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
    # @!attribute retried
    #   <p>Indicates whether a retry of the image build superseded this runtime instance
    #            of the workflow. When you retry a failed image build, Image Builder sets this flag to
    #            <code>true</code> on the original workflow executions that the retry re-ran.</p>
    #   @return [Boolean]
    class WorkflowExecutionMetadata < Struct.new(
      nil,
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
      :retried,
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
      nil,
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
    #   <p>The type of input this parameter provides. Supported values are
    #   			<code>string</code>, <code>integer</code>, <code>boolean</code>, and
    #   			<code>stringList</code>.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of this parameter if no input is provided.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>Describes this parameter.</p>
    #   @return [String]
    class WorkflowParameterDetail < Struct.new(
      nil,
      :name,
      :type,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A group of fields that describe the current status of the workflow.</p>
    # @!attribute status
    #   <p>The current state of the workflow.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Describes how or why the workflow changed state.</p>
    #   @return [String]
    class WorkflowState < Struct.new(
      nil,
      :status,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains runtime details for a workflow step that has paused at a
    # 			<code>WaitForAction</code> step, and is waiting for you to send an action.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the workflow resource that ran.</p>
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
      nil,
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
    #   <p>Input parameters that Image Builder provides for the workflow step, as a JSON-encoded
    #   			string.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p>The output values that the workflow step produced for this runtime instance
    #   			of the workflow, as a JSON-encoded string. For example, a step that launches
    #   			an instance outputs the instance ID. If the step failed, this field contains
    #   			the error message.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the workflow step started.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the workflow step finished.</p>
    #   @return [String]
    # @!attribute attempt_number
    #   <p>The current attempt number for the workflow step. The first run is attempt one.
    #   			The number increases by one for each retry.</p>
    #   @return [Integer]
    # @!attribute max_attempts
    #   <p>The maximum number of attempts allowed for the workflow step, based on the
    #   			retry configuration in the workflow document. If the step doesn't configure
    #   			retries, the maximum is one attempt.</p>
    #   @return [Integer]
    class WorkflowStepMetadata < Struct.new(
      nil,
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
      :attempt_number,
      :max_attempts,
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
    #   <p>The image creation stage that this workflow applies to.</p>
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
      nil,
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
    #   <p>The image creation stage that this workflow applies to.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the workflow resource.</p>
    #   @return [String]
    # @!attribute date_created
    #   <p>The timestamp when Image Builder created the workflow version.</p>
    #   @return [String]
    class WorkflowVersion < Struct.new(
      nil,
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
