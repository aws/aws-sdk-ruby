# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Imagebuilder
  module Types

    # You do not have permissions to perform the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Systems Manager agent settings for your build instance. This
    #   setting applies to Linux and macOS build instances only. Requests
    #   that set it for a recipe with a Windows base image are rejected.
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
    #   `IyEvYmluL2Jhc2gKbWtkaXIgLXAgL3Zhci9iYi8KdG91Y2ggL3Zhcg==`:
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
    #   The state of the AMI, which includes the status and, if applicable,
    #   the reason for that status.
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
    #   The name of the output AMI. The name must include the `{{
    #   imagebuilder:buildDate }}` dynamic tag so that each build produces a
    #   uniquely named AMI. If you don't specify a name, Image Builder
    #   names the output AMI with the image name followed by the build
    #   timestamp, for example `my-image 2022-10-26T22-30-05.912619Z`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to apply to the distributed AMI. Image Builder sets
    #   this as the output AMI's description in each target Region and
    #   account. If you don't specify a description, the AMI in the build
    #   Region uses the image recipe's description, if the recipe has one.
    #   Copies distributed to other Regions and accounts don't receive a
    #   default description.
    #   @return [String]
    #
    # @!attribute [rw] target_account_ids
    #   The Amazon Web Services account IDs to distribute the AMI to in this
    #   Region. Each listed account receives its own copy of the output AMI.
    #   If you don't specify accounts, Image Builder distributes the AMI
    #   only to your own account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ami_tags
    #   The tags to apply to AMIs distributed to this Region.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt the distributed image. This can be either the Key
    #   ARN or the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
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

    # Defines the rules by which an image pipeline is automatically disabled
    # when it fails. By default, if the schedule doesn't include an
    # auto-disable policy, Image Builder disables the pipeline after 5
    # consecutive failed scheduled builds.
    #
    # @!attribute [rw] failure_count
    #   The number of consecutive scheduled image pipeline executions that
    #   must fail before Image Builder automatically disables the pipeline.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/AutoDisablePolicy AWS API Documentation
    #
    class AutoDisablePolicy < Struct.new(
      :failure_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the permitted request rate for the Amazon EC2 APIs
    # that Image Builder calls on your behalf. Retry with an increasing or
    # variable delay between requests.
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
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
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
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image whose creation this
    #   request canceled.
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

    # @!attribute [rw] lifecycle_execution_id
    #   Identifies the specific runtime instance of the image lifecycle to
    #   cancel.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelLifecycleExecutionRequest AWS API Documentation
    #
    class CancelLifecycleExecutionRequest < Struct.new(
      :lifecycle_execution_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_execution_id
    #   The unique identifier of the lifecycle execution that the
    #   cancellation request applies to. The cancellation completes
    #   asynchronously.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CancelLifecycleExecutionResponse AWS API Documentation
    #
    class CancelLifecycleExecutionResponse < Struct.new(
      :lifecycle_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A generic client error. This error usually indicates that the request
    # failed a validation check, such as when a downstream service rejects a
    # configured value.
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
    #   Describes what change has been made in this version of the
    #   component, or what makes this version different from other versions
    #   of the component.
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
    #   Describes the current status of the component.
    #   @return [Types::ComponentState]
    #
    # @!attribute [rw] parameters
    #   Contains parameter details for each of the parameters that the
    #   component document defined for the component.
    #   @return [Array<Types::ComponentParameterDetail>]
    #
    # @!attribute [rw] owner
    #   The owner of the component. The value is your account ID for
    #   components that you own, the sharing account's ID for shared
    #   components, or `Amazon`, `ThirdParty`, or `AWSMarketplace`.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Component data contains the YAML document content for the component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the component. This can be
    #   either the Key ARN or the Alias ARN. For more information, see [Key
    #   identifiers (KeyId)][1] in the *Key Management Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the component data is encrypted at rest. Image
    #   Builder encrypts all component data at rest, so this value is always
    #   `true`. This field is retained for backward compatibility.
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
    # @!attribute [rw] product_codes
    #   Contains product codes that are used for billing purposes for Amazon
    #   Web Services Marketplace components.
    #   @return [Array<Types::ProductCodeListItem>]
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
      :obfuscate,
      :product_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details of the component. You can specify each component
    # only once in a recipe, regardless of version. Components with a status
    # of `DEPRECATED` or `DISABLED` can't be added to new recipes.
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component. You can specify a
    #   build version ARN, or a component version ARN whose version segments
    #   can use `x` wildcards, for example `1.x.x`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A group of parameter settings that Image Builder uses to configure
    #   the component for a specific recipe. You must supply a value for
    #   every component parameter that has no default value, and you can
    #   only supply parameters that the component defines.
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

    # Contains details about the component that caused the image creation
    # process to fail. The details identify the first step that failed when
    # the component ran.
    #
    # @!attribute [rw] component_arn
    #   The Amazon Resource Name (ARN) of the component build version that
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] phase_name
    #   The name of the phase in the component document where the failure
    #   occurred, such as `build`, `validate`, or `test`.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The name of the step in the component document that failed.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action that the failed step runs, for example `ExecuteBash`.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message from the step that failed. Image Builder truncates
    #   messages that are longer than 1024 characters. The component log in
    #   Amazon CloudWatch Logs contains the full output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ComponentFailureContext AWS API Documentation
    #
    class ComponentFailureContext < Struct.new(
      :component_arn,
      :phase_name,
      :step_name,
      :action,
      :error_message)
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

    # A group of fields that describe the current status of components.
    #
    # @!attribute [rw] status
    #   The current state of the component. Components with a status of
    #   `DEPRECATED` or `DISABLED` can't be added to new recipes.
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
    #   The owner of the component. The value is your account ID for
    #   components that you own, the sharing account's ID for shared
    #   components, or `Amazon`, `ThirdParty`, or `AWSMarketplace`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description for this version of the component.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that Image Builder created this version of the component.
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

    # The defining characteristics of a specific version of a component.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** You can use wildcards (x) to specify the most recent
    #   versions or nodes when selecting the base image or components for
    #   your recipe. When you use a wildcard in any node, all nodes to the
    #   right of the first wildcard must also be wildcards.
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
    #   The operating system (OS) version supported by the component. If OS
    #   information is available, Image Builder performs a prefix match
    #   against the base image OS version during image recipe creation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the component denotes whether the component is used to
    #   build the image or only to test it.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the component. The value is your account ID for
    #   components that you own, the sharing account's ID for shared
    #   components, or `Amazon`, `ThirdParty`, or `AWSMarketplace`.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The date that the component was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Describes the current status of the component version.
    #   @return [String]
    #
    # @!attribute [rw] product_codes
    #   Contains product codes that are used for billing purposes for Amazon
    #   Web Services Marketplace components.
    #   @return [Array<Types::ProductCodeListItem>]
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
      :date_created,
      :status,
      :product_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the container images that are output resources of an image
    # build in a given Amazon Web Services Region: the Region, and the URIs
    # of the container images.
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

    # Defines how the output container image is distributed in a specific
    # Amazon Web Services Region: the target repository, the image tags to
    # apply to the distributed image, and an optional description.
    #
    # @!attribute [rw] description
    #   The description of the container distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] container_tags
    #   Tags that Image Builder applies to the distributed container image
    #   in the target repository. These are repository image tags, not
    #   resource tags.
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

    # Defines how Image Builder builds and tests a container image: the base
    # image, components to apply, the Dockerfile template, the build and
    # test instance configuration, and the target repository for the output
    # image.
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
    #   The system platform for the container. Container recipes support
    #   only the Linux and Windows platforms.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** You can use wildcards (x) to specify the most recent
    #   versions or nodes when selecting the base image or components for
    #   your recipe. When you use a wildcard in any node, all nodes to the
    #   right of the first wildcard must also be wildcards.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] components
    #   Build and test components that are included in the container recipe.
    #   A recipe can contain a maximum of 20 build and test components in
    #   any combination, by default. This maximum is an adjustable quota.
    #   For more information, see [EC2 Image Builder endpoints and
    #   quotas][1] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] dockerfile_template_data
    #   The Dockerfile template that Image Builder uses to build the
    #   container image. The template can include contextual variables that
    #   Image Builder replaces with build information at build time. For the
    #   contextual variables that the template can include, see [Create a
    #   new version of a container recipe][1] in the *EC2 Image Builder User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key that Image Builder uses to encrypt the recipe's
    #   Dockerfile template data at rest. This can be either the Key ARN or
    #   the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*. If you
    #   don't specify a key, Image Builder encrypts the template data with
    #   a KMS key that Image Builder owns. This key isn't used to encrypt
    #   the output container image.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Specifies whether the recipe's Dockerfile template data is
    #   encrypted at rest. Image Builder encrypts all Dockerfile template
    #   data at rest, so this value is always `true`. This field is retained
    #   for backward compatibility, and doesn't describe encryption of the
    #   output container image.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_image
    #   The base image for customizations specified in the container recipe.
    #   This can contain an Image Builder image resource ARN or a container
    #   image URI, for example `amazonlinux:latest`.
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

    # A summary of a container recipe.
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
    #   The system platform for the container. Container recipes support
    #   only the Linux and Windows platforms.
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
    # @!attribute [rw] instance_image
    #   The base image for a container build and test instance. This can
    #   contain an AMI ID or it can specify an Amazon Web Services Systems
    #   Manager (SSM) Parameter Store Parameter, prefixed by `ssm:`,
    #   followed by the parameter name or ARN.
    #
    #   If not specified, Image Builder uses the appropriate ECS-optimized
    #   AMI as a base image.
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
      :instance_image,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the component. Image Builder generates the component ARN
    #   from a normalized form of the name, so names that differ only in
    #   case, spaces, or underscores count as the same name. If a component
    #   with the same name and semantic version already exists in your
    #   account in the same Amazon Web Services Region, the request creates
    #   a new build version for it. If the content is also identical to the
    #   latest build version, the request fails because the component
    #   already exists.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   other versions of the component.
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
    #   (`s3://bucket/key`), and you must have permission to access the S3
    #   bucket it points to. If you use Amazon S3, you can specify component
    #   content up to your service quota for component size, which is 64 KB
    #   by default.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   component `data` property. You cannot specify both properties.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this component. This can be either the Key ARN or
    #   the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*. If you
    #   don't specify a key, Image Builder encrypts the component data with
    #   a KMS key that Image Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
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
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] component_build_version_arn
    #   The Amazon Resource Name (ARN) of the component that the request
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateComponentResponse AWS API Documentation
    #
    class CreateComponentResponse < Struct.new(
      :request_id,
      :client_token,
      :component_build_version_arn,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_type
    #   The type of container to create.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the container recipe. The recipe name, combined with the
    #   semantic version, must be unique to your account in each Amazon Web
    #   Services Region. Image Builder generates the container recipe ARN
    #   from a normalized form of the name, so names that differ only in
    #   case, spaces, or underscores count as the same name.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   The components included in the container recipe. You can specify
    #   each component only one time in a recipe.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] instance_configuration
    #   A group of options that can be used to configure an instance for
    #   building and testing container images.
    #   @return [Types::InstanceConfiguration]
    #
    # @!attribute [rw] dockerfile_template_data
    #   The Dockerfile template used to build your image, as an inline data
    #   blob. You must specify exactly one of the `dockerfileTemplateData`
    #   or `dockerfileTemplateUri` properties. For the contextual variables
    #   that the template can include, see [Create a new version of a
    #   container recipe][1] in the *EC2 Image Builder User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/userguide/create-container-recipes.html
    #   @return [String]
    #
    # @!attribute [rw] dockerfile_template_uri
    #   The Amazon S3 URI for the Dockerfile template that is used to build
    #   your container image. You must have permission to read the object.
    #   Image Builder reads the object once, when it creates the recipe, and
    #   stores its content in the recipe. Later changes to the S3 object
    #   don't affect the recipe. You must specify exactly one of the
    #   `dockerfileTemplateData` or `dockerfileTemplateUri` properties.
    #   @return [String]
    #
    # @!attribute [rw] platform_override
    #   Specifies the operating system platform when you use a custom base
    #   image. Container recipes support only the Linux and Windows
    #   platforms.
    #   @return [String]
    #
    # @!attribute [rw] image_os_version_override
    #   Specifies the operating system version for the base image. Use this
    #   property only when the base image is a container image from a
    #   registry. When the base image is an Image Builder image, the
    #   operating system version comes from the parent image.
    #   @return [String]
    #
    # @!attribute [rw] parent_image
    #   The base image for the container recipe. This can be an Image
    #   Builder image resource ARN or a container image URI from a registry,
    #   for example `amazonlinux:latest`.
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
    #   The destination repository for the container image. The Amazon ECR
    #   repository must already exist in the Amazon Web Services Region
    #   where the build runs.
    #   @return [Types::TargetContainerRepository]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies which KMS
    #   key is used to encrypt the Dockerfile template. This can be either
    #   the Key ARN or the Alias ARN. For more information, see [Key
    #   identifiers (KeyId)][1] in the *Key Management Service Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
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
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   Returns the Amazon Resource Name (ARN) of the container recipe that
    #   the request created.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateContainerRecipeResponse AWS API Documentation
    #
    class CreateContainerRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :container_recipe_arn,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the distribution configuration. Distribution
    #   configuration names must be unique to your account in each Amazon
    #   Web Services Region. Image Builder generates the distribution
    #   configuration ARN from a normalized form of the name, so names that
    #   differ only in case, spaces, or underscores count as the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the distribution configuration.
    #   @return [String]
    #
    # @!attribute [rw] distributions
    #   The distribution settings for the configuration. Each entry defines
    #   how output images are distributed in one target Amazon Web Services
    #   Region. A Region can appear at most once in the list.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] tags
    #   The tags of the distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateDistributionConfigurationRequest AWS API Documentation
    #
    class CreateDistributionConfigurationRequest < Struct.new(
      :name,
      :description,
      :distributions,
      :tags,
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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
    #   The name of the image pipeline. Pipeline names must be unique to
    #   your account in each Amazon Web Services Region. Image Builder
    #   generates the pipeline ARN from a normalized form of the name, so
    #   names that differ only in case, spaces, or underscores count as the
    #   same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that configures
    #   images created by this image pipeline. You must specify either this
    #   property or `containerRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used
    #   to configure images created by this container pipeline. You must
    #   specify either this property or `imageRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that builds images created by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that configures and distributes images created by this image
    #   pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   Specifies the test settings that Image Builder applies to images
    #   that this pipeline creates. If you don't provide test settings,
    #   Image Builder stores a default configuration with image tests
    #   enabled.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and
    #   package list. Defaults to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline. If you don't provide a
    #   schedule, the pipeline runs only when you call
    #   StartImagePipelineExecution.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline. If you don't specify a status, it
    #   defaults to `ENABLED`. A disabled pipeline doesn't run on its
    #   schedule, but you can still start builds manually.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the image pipeline.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] image_tags
    #   The tags that Image Builder applies to the Image Builder image
    #   resource that this pipeline's scheduled executions create. These
    #   tags don't apply to the output AMI. To tag output AMIs, use
    #   `amiTags` in the pipeline's distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans that Amazon Inspector runs
    #   against the test instance during image creation.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] workflows
    #   The array of workflow configuration objects for builds that this
    #   pipeline starts. You must also specify `executionRole` when you
    #   provide workflows.
    #   @return [Array<Types::WorkflowConfiguration>]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Specifies the logging configuration for the image pipeline. Use this
    #   to define custom CloudWatch Logs log groups for your pipeline
    #   execution logs and image build logs. The service manages log groups
    #   with names starting with `/aws/imagebuilder/` using the
    #   service-linked role. For custom log group names outside of this
    #   prefix, you must also provide an `executionRole`.
    #   @return [Types::PipelineLoggingConfiguration]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
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
      :image_tags,
      :client_token,
      :image_scanning_configuration,
      :workflows,
      :execution_role,
      :logging_configuration,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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
    #   The name of the image recipe. The recipe name, combined with the
    #   semantic version, must be unique to your account in each Amazon Web
    #   Services Region. Image Builder generates the image recipe ARN from a
    #   normalized form of the name, so names that differ only in case,
    #   spaces, or underscores count as the same name.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   The components included in the image recipe. Components are
    #   optional. A recipe with no components bakes the base image without
    #   additional customization. You can specify each component only one
    #   time in a recipe. Components with a status of `DEPRECATED` or
    #   `DISABLED` can't be added to new recipes.
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The base image for customizations specified in the image recipe. You
    #   can specify the parent image using one of the following options:
    #
    #   * AMI ID
    #
    #   * Image Builder image Amazon Resource Name (ARN)
    #
    #   * Amazon Web Services Systems Manager (SSM) Parameter Store
    #     Parameter, prefixed by `ssm:`, followed by the parameter name or
    #     ARN.
    #
    #   * Amazon Web Services Marketplace product ID
    #
    #   If you enter an AMI ID or an SSM parameter that contains the AMI ID,
    #   you must have access to the AMI. The AMI must also be in the Region
    #   where you're creating the recipe.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   The block device mappings that Image Builder applies to the build
    #   instance and the output AMI. For example, you can override the size
    #   of the base image's root volume or attach additional EBS volumes.
    #   @return [Array<Types::InstanceBlockDeviceMapping>]
    #
    # @!attribute [rw] tags
    #   The tags of the image recipe.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] working_directory
    #   The working directory used during build and test workflows. If you
    #   don't specify a working directory, Image Builder uses `/tmp` for
    #   Linux and macOS build instances, and `C:/` for Windows build
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] additional_instance_configuration
    #   The additional settings and launch scripts for your build instances.
    #   @return [Types::AdditionalInstanceConfiguration]
    #
    # @!attribute [rw] ami_tags
    #   Tags that are applied to the AMI that Image Builder creates during
    #   the Build phase prior to image distribution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ami_watermarks
    #   The AMI watermark names to attach to the output AMI from this
    #   recipe. AMI watermarks are lineage markers. They automatically
    #   propagate to derivative AMIs when the source AMI is copied or
    #   distributed across Regions or accounts.
    #
    #   <note markdown="1"> AMI watermarks are supported only for image recipes. AMIs with
    #   watermarks cannot be made public.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
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
      :ami_tags,
      :ami_watermarks,
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that was created
    #   by this request.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageRecipeResponse AWS API Documentation
    #
    class CreateImageRecipeResponse < Struct.new(
      :request_id,
      :client_token,
      :image_recipe_arn,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_recipe_arn
    #   The Amazon Resource Name (ARN) of the image recipe that defines how
    #   images are configured, tested, and assessed. You must specify either
    #   this property or `containerRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that defines
    #   how images are configured and tested. You must specify either this
    #   property or `imageRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that defines and configures the outputs of the image build. If you
    #   don't specify a distribution configuration, Image Builder creates
    #   the output image only in the account and Amazon Web Services Region
    #   where the build runs.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that defines the environment in which your image will be built and
    #   tested.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   Settings that determine whether Image Builder runs tests on the
    #   image after building it. Image tests are enabled by default.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and
    #   package list. Defaults to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags of the image.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   Settings for vulnerability scans that Amazon Inspector runs during
    #   image creation. For AMI output, Amazon Inspector scans the test
    #   instance. For container output, Amazon Inspector scans the container
    #   image that Image Builder pushes to the Amazon ECR repository
    #   specified in `ecrConfiguration`.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] workflows
    #   The array of workflow configuration objects for the build. If you
    #   specify workflows, they replace the default workflows that Image
    #   Builder otherwise runs for the build, and you must also provide an
    #   `executionRole`.
    #   @return [Array<Types::WorkflowConfiguration>]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions. This
    #   property is required if you specify `workflows`. If you don't
    #   provide a role, Image Builder uses the Image Builder service-linked
    #   role in your account, and creates it if it doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the image
    #   build logs. If you specify a log group name outside of the
    #   `/aws/imagebuilder/` namespace, you must also provide an
    #   `executionRole` that has permission to write to that log group.
    #   @return [Types::ImageLoggingConfiguration]
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
      :image_scanning_configuration,
      :workflows,
      :execution_role,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that the request
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateImageResponse AWS API Documentation
    #
    class CreateImageResponse < Struct.new(
      :request_id,
      :client_token,
      :image_build_version_arn,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the infrastructure configuration. Infrastructure
    #   configuration names must be unique to your account in each Amazon
    #   Web Services Region. Image Builder generates the infrastructure
    #   configuration ARN from a normalized form of the name, so names that
    #   differ only in case, spaces, or underscores count as the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] instance_types
    #   The instance types of the infrastructure configuration. You can
    #   specify one or more instance types to use for this build. Image
    #   Builder picks one of these instance types based on availability. If
    #   you don't specify instance types, Image Builder selects compatible
    #   instance types automatically. If you specify a Dedicated Host, Image
    #   Builder uses only instance types that the host supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your Amazon EC2 AMI. The instance profile must exist in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI. If you specify `subnetId`, you must also specify one
    #   or more security group IDs in `securityGroupIds`. Otherwise, the
    #   request fails.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration. When
    #   you configure S3 logs, Image Builder writes logs from the build and
    #   test process to the specified bucket under the key prefix.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. You can use this
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   Specifies whether to terminate the instance on failure. Set to false
    #   if you want Image Builder to retain the instance used to configure
    #   your AMI if the build or test phase of your workflow fails. Defaults
    #   to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to which Image
    #   Builder sends image build event notifications. Specify a standard
    #   topic. Image Builder doesn't support FIFO topics. Image Builder
    #   validates the topic when you create or update the configuration. You
    #   must have permission to publish to the topic.
    #
    #   <note markdown="1"> EC2 Image Builder can't send notifications to SNS topics that are
    #   encrypted using keys from other accounts. If your SNS topic is
    #   encrypted, the key must be owned by the same account that owns your
    #   Image Builder resources.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The metadata tags to assign to the Amazon EC2 instance that Image
    #   Builder launches during the build process. Tags are formatted as key
    #   value pairs. Tag keys can't begin with `aws:` or match one of the
    #   following reserved keys: `CreatedBy`, `Ec2ImageBuilderArn`, `Name`,
    #   or `Tags`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_metadata_options
    #   The instance metadata service (IMDS) settings that Image Builder
    #   applies to the EC2 build and test instances it launches during image
    #   creation. If you don't set these options, the EC2 launch defaults
    #   for the instance apply. For more information about instance metadata
    #   options, see one of the following links:
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
    # @!attribute [rw] tags
    #   The metadata tags to assign to the infrastructure configuration
    #   resource that Image Builder creates as output. Tags are formatted as
    #   key value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] placement
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run.
    #   These settings don't affect instances that you launch from the
    #   output image.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
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
      :placement,
      :client_token,
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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

    # @!attribute [rw] name
    #   The name of the lifecycle policy to create. Policy names must be
    #   unique to your account in each Amazon Web Services Region. Image
    #   Builder generates the policy ARN from a normalized form of the name,
    #   so names that differ only in case, spaces, or underscores count as
    #   the same name. You can't change the name after creation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the lifecycle policy resource is enabled. If you
    #   don't specify a status, it defaults to `ENABLED`. Only enabled
    #   policies run on their schedule.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to run lifecycle actions. You must
    #   have permission to pass the role, and the role's trust policy must
    #   allow the Image Builder service principal to assume it.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Image Builder resource that the lifecycle policy applies
    #   to. The resource type determines the allowed rule actions: policies
    #   for AMI-based Image Builder images support `DELETE`, `DEPRECATE`,
    #   and `DISABLE`, and policies for container-based Image Builder images
    #   support only `DELETE`. You can't change the resource type after
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   Configuration details for the lifecycle policy rules. A policy can
    #   contain at most one rule per action type: one `DELETE`, one
    #   `DEPRECATE`, and one `DISABLE`.
    #   @return [Array<Types::LifecyclePolicyDetail>]
    #
    # @!attribute [rw] resource_selection
    #   Selection criteria for the resources that the lifecycle policy
    #   applies to. You must specify exactly one selection criteria: either
    #   recipes or a tag map, not both.
    #   @return [Types::LifecyclePolicyResourceSelection]
    #
    # @!attribute [rw] tags
    #   Tags to apply to the lifecycle policy resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateLifecyclePolicyRequest AWS API Documentation
    #
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
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy that the
    #   request created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateLifecyclePolicyResponse AWS API Documentation
    #
    class CreateLifecyclePolicyResponse < Struct.new(
      :client_token,
      :lifecycle_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow to create. Image Builder generates the
    #   workflow ARN from a normalized form of the name, so names that
    #   differ only in case, spaces, or underscores count as the same name.
    #   If a workflow with the same name and semantic version already exists
    #   in your account in the same Amazon Web Services Region, the request
    #   creates a new build version for it. If the content is also identical
    #   to the latest build version, the request fails because the workflow
    #   already exists.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version of this workflow resource. The semantic version
    #   syntax adheres to the following rules.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   Describes the workflow.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   Describes what change has been made in this version of the workflow,
    #   or what makes this version different from other versions of the
    #   workflow.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   The UTF-8 encoded YAML document content for the workflow, up to
    #   16,000 characters. For larger documents, store the document in
    #   Amazon S3 and specify the `uri` property instead. You must specify
    #   exactly one of the `data` or `uri` properties.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The `uri` of a YAML workflow document file stored in Amazon S3. This
    #   must be an S3 URL (`s3://bucket/key`), and you must have permission
    #   to access the S3 bucket it points to. A workflow document that you
    #   provide from Amazon S3 can be up to your service quota for workflow
    #   size.
    #
    #   Alternatively, you can specify the YAML document inline, using the
    #   workflow `data` property. You must specify exactly one of the `data`
    #   or `uri` properties.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   used to encrypt this workflow resource. This can be either the Key
    #   ARN or the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*. If you
    #   don't specify a key, Image Builder encrypts the workflow document
    #   with a KMS key that Image Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags that apply to the workflow resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The image creation stage that this workflow applies to. Image
    #   Builder validates the workflow document steps against the stage you
    #   specify.
    #   @return [String]
    #
    # @!attribute [rw] dry_run
    #   Validates the required permissions and request parameters without
    #   performing the operation. If validation succeeds, the operation
    #   returns a `DryRunOperationException` error response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateWorkflowRequest AWS API Documentation
    #
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
      :dry_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that the
    #   request created.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :client_token,
      :workflow_build_version_arn,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # A CVSS score for the vulnerability, as published by the vulnerability
    # source. Sources include the National Vulnerability Database (NVD) and
    # the operating system vendor's security feed. A finding can include
    # CVSS scores from multiple sources and CVSS versions.
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
    #   The source of the CVSS data that the Amazon Inspector score for the
    #   finding is based on, for example NVD or a vendor security feed.
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
    #   The adjustments that Amazon Inspector applied to the base CVSS score
    #   to produce its own score for the finding. The list is empty when
    #   Amazon Inspector made no adjustments.
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
    #   The Amazon Resource Name (ARN) of the component build version that
    #   this request deleted.
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
    #   The Amazon Resource Name (ARN) of the Image Builder image resource
    #   that this request deleted.
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

    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteLifecyclePolicyRequest AWS API Documentation
    #
    class DeleteLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy that was
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteLifecyclePolicyResponse AWS API Documentation
    #
    class DeleteLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :workflow_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that this
    #   request deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DeleteWorkflowResponse AWS API Documentation
    #
    class DeleteWorkflowResponse < Struct.new(
      :workflow_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_image
    #   The source image to distribute. You can specify the source in any of
    #   the following formats:
    #
    #   * An AMI ID.
    #
    #   * An Amazon Web Services Systems Manager Parameter Store reference,
    #     prefixed by `ssm:`, followed by the parameter name or ARN.
    #
    #   * An Image Builder image Amazon Resource Name (ARN). An image
    #     version ARN resolves to the latest available build version.
    #
    #   Whichever format you use, the source must resolve to an AMI in the
    #   current Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration.
    #   The configuration defines target Regions, accounts, and AMI
    #   settings. The distribution configuration must be in the same Region
    #   as this operation.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that Image
    #   Builder assumes to distribute the image.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to apply to the new Image Builder image resource that this
    #   operation creates. To tag the output AMIs, use `amiTags` in the
    #   distribution configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration for the distribution.
    #   @return [Types::ImageLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributeImageRequest AWS API Documentation
    #
    class DistributeImageRequest < Struct.new(
      :source_image,
      :distribution_configuration_arn,
      :execution_role,
      :tags,
      :client_token,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the new Image Builder image
    #   resource that this operation creates to track the distribution. Use
    #   this ARN with GetImage to monitor distribution progress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributeImageResponse AWS API Documentation
    #
    class DistributeImageResponse < Struct.new(
      :client_token,
      :image_build_version_arn)
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
    # @!attribute [rw] ssm_parameter_configurations
    #   Contains settings to update Amazon Web Services Systems Manager
    #   (SSM) Parameter Store Parameters with output AMI IDs from the build
    #   by target Region.
    #   @return [Array<Types::SsmParameterConfiguration>]
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
      :fast_launch_configurations,
      :ssm_parameter_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how Image Builder distributes the output of an image build.
    # You can configure:
    #
    # * The Regions to distribute the image to.
    #
    # * The Region-specific settings to apply, such as output AMI names,
    #   launch permissions for other Amazon Web Services accounts, and
    #   target container repositories.
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
    #   A property that Image Builder doesn't use. You can't set this
    #   property when you create or update a distribution configuration, and
    #   it has no effect on distribution behavior.
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
    #   A list of the Regions that the distribution configuration
    #   distributes images to.
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

    # Contains details about a failure that occurred while Image Builder
    # distributed the image or applied configuration to the distributed
    # image.
    #
    # @!attribute [rw] error_message
    #   The error message for the distribution failure.
    #   @return [String]
    #
    # @!attribute [rw] region_failures
    #   The details about the failure for each Region where the image
    #   didn't finish distribution or configuration.
    #   @return [Array<Types::RegionFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DistributionFailureContext AWS API Documentation
    #
    class DistributionFailureContext < Struct.new(
      :error_message,
      :region_failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dry run operation of the resource was successful, and no resources
    # or mutations were actually performed due to the dry run flag in the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/DryRunOperationException AWS API Documentation
    #
    class DryRunOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon EBS-specific block device mapping specifications.
    #
    # @!attribute [rw] encrypted
    #   Specifies whether to encrypt the device.
    #   @return [Boolean]
    #
    # @!attribute [rw] delete_on_termination
    #   Specifies whether to delete the associated device on termination.
    #   @return [Boolean]
    #
    # @!attribute [rw] iops
    #   The IOPS value for the device. Required only when volumeType is io1
    #   or io2.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) that uniquely identifies the KMS key
    #   to use when encrypting the device. This can be either the Key ARN or
    #   the Alias ARN. For more information, see [Key identifiers
    #   (KeyId)][1] in the *Key Management Service Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The snapshot that defines the device contents.
    #   @return [String]
    #
    # @!attribute [rw] volume_size
    #   Overrides the volume size for the device.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_type
    #   Overrides the volume type for the device.
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
    #   The name of the container repository where Image Builder pushes the
    #   container image for the vulnerability scan. Provide the repository
    #   name only (a namespace path is allowed, but not the registry
    #   hostname); the repository must already exist in your account. If you
    #   don't specify a repository name, Image Builder creates the default
    #   repository `image-builder-image-scanning-repository` in your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] container_tags
    #   Tags for Image Builder to apply to the output container image that
    #   Amazon Inspector scans. Tags can help you identify and manage your
    #   scanned images.
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

    # Defines and configures EC2 Fast Launch for output Windows AMIs.
    #
    # @!attribute [rw] enabled
    #   Specifies whether to enable Windows fast launch on the output AMI
    #   during distribution. A value of `false` means Image Builder takes no
    #   fast-launch action for this configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshot_configuration
    #   Configuration settings for managing the number of snapshots that are
    #   created from pre-provisioned instances for the Windows AMI when
    #   Windows fast launch is enabled.
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
    # for launching an instance when Windows fast launch is enabled.
    #
    # <note markdown="1"> You can specify either the `launchTemplateName` or the
    # `launchTemplateId`, but not both.
    #
    #  </note>
    #
    # @!attribute [rw] launch_template_id
    #   The ID of the launch template to use for Windows fast launch for a
    #   Windows AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_name
    #   The name of the launch template to use for Windows fast launch for a
    #   Windows AMI.
    #   @return [String]
    #
    # @!attribute [rw] launch_template_version
    #   The version of the launch template to use for Windows fast launch
    #   for a Windows AMI.
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
    #   get. You can specify a build version ARN, or a component version
    #   ARN. The version can use the `x` wildcard in trailing positions, for
    #   example `1.0.x` or `1.x.x`. Version ARNs resolve to the latest
    #   available matching component build version.
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
    #   The component object specified in the request.
    #   @return [Types::Component]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetComponentResponse AWS API Documentation
    #
    class GetComponentResponse < Struct.new(
      :request_id,
      :component,
      :latest_version_references)
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
    #   The resource policy for the container recipe, as a JSON policy
    #   document. If no policy has been applied, the response contains an
    #   empty JSON object (`{}`).
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
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetContainerRecipeResponse AWS API Documentation
    #
    class GetContainerRecipeResponse < Struct.new(
      :request_id,
      :container_recipe,
      :latest_version_references)
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
    #   The resource policy for the image, as a JSON policy document. If the
    #   image has no policy applied, the response contains an empty JSON
    #   object (`{}`).
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
    #   The resource policy for the image recipe, as a JSON policy document.
    #   If no policy has been applied, the response contains an empty JSON
    #   object (`{}`).
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
    #   retrieve. You can use the `x` wildcard in trailing version positions
    #   to retrieve the latest matching version, for example `x.x.x` or
    #   `1.x.x`.
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
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageRecipeResponse AWS API Documentation
    #
    class GetImageRecipeResponse < Struct.new(
      :request_id,
      :image_recipe,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that you want to get.
    #   You can specify a full build version ARN, or a version ARN with or
    #   without wildcards (`x.x.x`, `1.x.x`, or `1.0.x`). A version or
    #   wildcard ARN resolves to the latest matching build version that has
    #   reached `AVAILABLE` status. Builds that were later deprecated,
    #   disabled, or deleted don't resolve. To get an image in any other
    #   state, such as a failed or in-progress build, specify the full build
    #   version ARN.
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
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetImageResponse AWS API Documentation
    #
    class GetImageResponse < Struct.new(
      :request_id,
      :image,
      :latest_version_references)
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

    # @!attribute [rw] lifecycle_execution_id
    #   The unique identifier for a runtime instance of the lifecycle
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecycleExecutionRequest AWS API Documentation
    #
    class GetLifecycleExecutionRequest < Struct.new(
      :lifecycle_execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_execution
    #   Runtime details for the specified runtime instance of the lifecycle
    #   policy.
    #   @return [Types::LifecycleExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecycleExecutionResponse AWS API Documentation
    #
    class GetLifecycleExecutionResponse < Struct.new(
      :lifecycle_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy_arn
    #   Specifies the Amazon Resource Name (ARN) of the image lifecycle
    #   policy resource to get.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecyclePolicyRequest AWS API Documentation
    #
    class GetLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy
    #   The details of the lifecycle policy that the request retrieved.
    #   @return [Types::LifecyclePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetLifecyclePolicyResponse AWS API Documentation
    #
    class GetLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_type
    #   Specifies which type of Amazon Web Services Marketplace resource
    #   Image Builder retrieves.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies an Amazon
    #   Web Services Marketplace resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_location
    #   The Amazon S3 location of the component artifact to retrieve, in
    #   `s3://bucket/key` form.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetMarketplaceResourceRequest AWS API Documentation
    #
    class GetMarketplaceResourceRequest < Struct.new(
      :resource_type,
      :resource_arn,
      :resource_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the Amazon Web Services
    #   Marketplace resource that was requested.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   A time-limited presigned URL for downloading the component artifact
    #   from Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Returns obfuscated data that contains the YAML content of the
    #   component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetMarketplaceResourceResponse AWS API Documentation
    #
    class GetMarketplaceResourceResponse < Struct.new(
      :resource_arn,
      :url,
      :data)
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
    #   The Amazon Resource Name (ARN) of the image build version that owns
    #   the specified runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of workflow that Image Builder ran for the specified
    #   runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current runtime status for the specified runtime instance of the
    #   workflow. `COMPLETED`, `FAILED`, `ROLLBACK_COMPLETED`, `CANCELLED`,
    #   and `SKIPPED` are terminal states.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the specified runtime instance of the
    #   workflow, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] total_step_count
    #   The total number of steps that the workflow document defines for
    #   this runtime instance of the workflow. Image Builder sets this count
    #   before any steps run. The sum of succeeded, skipped, and failed
    #   steps only reaches this total if every step finishes in one of those
    #   states.
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
    # @!attribute [rw] parallel_group
    #   The name of the parallel group that this runtime instance of the
    #   workflow ran in, if configured. Parallel groups apply only to test
    #   workflows.
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
      :end_time,
      :parallel_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that you
    #   want to get. You can specify a build version ARN, or a version ARN
    #   with or without wildcards (`x`) in its version segments. Image
    #   Builder resolves version and wildcard ARNs to the most recent
    #   matching build version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :workflow_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow
    #   The workflow resource specified in the request.
    #   @return [Types::Workflow]
    #
    # @!attribute [rw] latest_version_references
    #   A set of wildcard version ARNs that always reference the latest
    #   version of the resource. ARNs are included for the latest version
    #   overall, and for the latest versions within the same major, minor,
    #   and patch levels.
    #   @return [Types::LatestVersionReferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
      :workflow,
      :latest_version_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_execution_id
    #   The unique identifier for the runtime instance of the workflow step
    #   that you want to get runtime details for. To get the identifiers for
    #   the steps that ran in a workflow, call ListWorkflowStepExecutions.
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
    #   The unique identifier for the runtime instance of the workflow step
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
    #   The Amazon Resource Name (ARN) of the image build version that owns
    #   the specified runtime instance of the workflow step.
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
    #   The current status for the specified runtime instance of the
    #   workflow step.
    #   @return [String]
    #
    # @!attribute [rw] rollback_status
    #   Reports on the rollback status of the specified runtime instance of
    #   the workflow step, if applicable. Rollback runs when the workflow
    #   execution fails, and undoes the work that completed steps performed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the specified runtime instance of the
    #   workflow step, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] inputs
    #   Input parameters that Image Builder provided for the specified
    #   runtime instance of the workflow step, as a JSON-encoded string.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The output values that the specified runtime instance of the
    #   workflow step produced, as a JSON-encoded string. For example, a
    #   step that launches an instance outputs the instance ID. If the step
    #   failed, this field contains the error message.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the specified runtime instance of the workflow
    #   step started.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the specified runtime instance of the workflow
    #   step finished.
    #   @return [String]
    #
    # @!attribute [rw] on_failure
    #   The action that the workflow takes if this step fails, as configured
    #   in the workflow document. `Abort` fails the workflow and rolls back
    #   completed steps. `Continue` proceeds to the next step. If the step
    #   doesn't set a value, it defaults to `Abort`.
    #   @return [String]
    #
    # @!attribute [rw] timeout_seconds
    #   The maximum duration in seconds for this step to complete its
    #   action. If the workflow document doesn't set a timeout for the
    #   step, Image Builder applies the default timeout for the step's
    #   action. This field returns that value.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt_number
    #   The current attempt number for the specified runtime instance of the
    #   workflow step. The first run is attempt one. The number increases by
    #   one for each retry.
    #   @return [Integer]
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of attempts allowed for the specified runtime
    #   instance of the workflow step, based on the retry configuration in
    #   the workflow document. If the step doesn't configure retries, the
    #   maximum is one attempt.
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
      :timeout_seconds,
      :attempt_number,
      :max_attempts)
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

    # An Image Builder image resource that keeps track of all of the
    # settings used to create, configure, and distribute output for that
    # image. An image that Image Builder built from a recipe contains
    # exactly one recipe – either a container recipe (`containerRecipe`),
    # which creates a container image, or an image recipe (`imageRecipe`),
    # which creates an AMI. Imported images don't contain a recipe.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** You can use wildcards (x) to specify the most recent
    #   versions or nodes when selecting the base image or components for
    #   your recipe. When you use a wildcard in any node, all nodes to the
    #   right of the first wildcard must also be wildcards.
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
    #   The name of the image pipeline that created this image. Image
    #   Builder doesn't return this field for new images. Use
    #   `sourcePipelineArn` instead.
    #   @return [String]
    #
    # @!attribute [rw] source_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that created
    #   this image. This field is only present for images that a pipeline
    #   execution created.
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
    #   The image test settings that Image Builder used when it created this
    #   image.
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
    #
    #   * **IMPORT\_ISO** – An ISO disk import created the image.
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
    #   Settings for the vulnerability scans that Amazon Inspector runs for
    #   this image. For AMI output, Amazon Inspector scans the test instance
    #   during image creation. For container output, Amazon Inspector scans
    #   the container image in its Amazon ECR repository.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] deprecation_time
    #   The time when deprecation occurs for an image resource. This can be
    #   a past or future date.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_execution_id
    #   Identifies the last runtime instance of the lifecycle policy to take
    #   action on the image.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   The build, test, and distribution workflow configurations that are
    #   associated with the image.
    #   @return [Array<Types::WorkflowConfiguration>]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration that's defined for the image. Image
    #   Builder uses the defined settings to direct execution log output
    #   during image creation.
    #   @return [Types::ImageLoggingConfiguration]
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
      :image_scanning_configuration,
      :deprecation_time,
      :lifecycle_execution_id,
      :execution_role,
      :workflows,
      :logging_configuration)
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

    # Contains details about the failure when the image creation process
    # fails. Properties appear in the failure context when the related
    # information is available for the failure.
    #
    # @!attribute [rw] image_status
    #   The status that the image had when the failure occurred. This
    #   indicates the stage of the image creation process where the image
    #   failed, for example `BUILDING` or `DISTRIBUTING`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier of the workflow execution that was running
    #   when the image failed.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow build version that
    #   was running when the image failed.
    #   @return [String]
    #
    # @!attribute [rw] step_execution_id
    #   The unique identifier of the workflow step execution that failed.
    #   @return [String]
    #
    # @!attribute [rw] failed_step
    #   The name of the workflow step that failed, as it appears in the
    #   workflow document.
    #   @return [String]
    #
    # @!attribute [rw] component_failure
    #   The details about the component that failed, if the failure occurred
    #   while a component was running.
    #   @return [Types::ComponentFailureContext]
    #
    # @!attribute [rw] distribution_failure
    #   The details about the distribution failure, if the failure occurred
    #   while Image Builder distributed or configured the image.
    #   @return [Types::DistributionFailureContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageFailureContext AWS API Documentation
    #
    class ImageFailureContext < Struct.new(
      :image_status,
      :workflow_execution_id,
      :workflow_arn,
      :step_execution_id,
      :failed_step,
      :component_failure,
      :distribution_failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # The logging configuration that's defined for the image. Image Builder
    # uses the defined settings to direct execution log output during image
    # creation.
    #
    # @!attribute [rw] log_group_name
    #   The log group name that Image Builder uses for image creation. If
    #   not specified, the log group name defaults to
    #   `/aws/imagebuilder/image-name`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageLoggingConfiguration AWS API Documentation
    #
    class ImageLoggingConfiguration < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A software package that's installed on an image, as detected by
    # Amazon Web Services Systems Manager Inventory at build time. The list
    # includes packages that shipped with the base image.
    #
    # @!attribute [rw] package_name
    #   The name of the package that's reported to the operating system
    #   package manager.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The version of the package that's reported to the operating system
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

    # Defines the automation configuration for building, testing, and
    # distributing images. A pipeline references the resources that its
    # builds use, such as the recipe and infrastructure configuration. It
    # also holds the settings that control its builds, such as the schedule
    # and custom workflows.
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
    #   The platform of the image pipeline, inherited from the recipe that
    #   the pipeline uses.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and
    #   package list. Defaults to `true`.
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
    #   The status of the image pipeline. A disabled pipeline doesn't run
    #   on its schedule, but you can still start builds manually. Image
    #   Builder can also disable a pipeline automatically when consecutive
    #   scheduled builds fail.
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
    # @!attribute [rw] last_run_status
    #   The status of the last image that this pipeline built, such as
    #   `BUILDING`, `TESTING`, `FAILED`, or `AVAILABLE`.
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
    #   Contains settings for vulnerability scans that Amazon Inspector runs
    #   against the test instance during image creation.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] image_tags
    #   The tags that Image Builder applies to the Image Builder image
    #   resource that this pipeline's scheduled executions create. These
    #   tags don't apply to the output AMI. Builds that you start manually
    #   use the tags from the [StartImagePipelineExecution][1] request
    #   instead.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_StartImagePipelineExecution.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions.
    #   @return [String]
    #
    # @!attribute [rw] workflows
    #   Contains the workflows that run for the image pipeline.
    #   @return [Array<Types::WorkflowConfiguration>]
    #
    # @!attribute [rw] logging_configuration
    #   The CloudWatch Logs configuration for the pipeline: the log group
    #   for image build logs and the log group for pipeline execution logs.
    #   @return [Types::PipelineLoggingConfiguration]
    #
    # @!attribute [rw] consecutive_failures
    #   Image Builder tracks the number of consecutive failures for
    #   scheduled pipeline executions and takes one of the following actions
    #   each time it runs on a schedule:
    #
    #   * If the pipeline execution is successful, the number of consecutive
    #     failures resets to zero.
    #
    #   * If the pipeline execution fails, Image Builder increments the
    #     number of consecutive failures. If the failure count reaches the
    #     limit defined in the AutoDisablePolicy, Image Builder disables the
    #     pipeline.
    #
    #   The consecutive failure count is also reset to zero under the
    #   following conditions:
    #
    #   * The pipeline runs manually and succeeds.
    #
    #   * The pipeline configuration is updated.
    #
    #   If the pipeline runs manually and fails, the count remains the same.
    #   The next scheduled run continues to increment where it left off
    #   before.
    #   @return [Integer]
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
      :last_run_status,
      :date_next_run,
      :tags,
      :image_scanning_configuration,
      :image_tags,
      :execution_role,
      :workflows,
      :logging_configuration,
      :consecutive_failures)
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
    #   The output image type. For an image recipe, this is always AMI.
    #   Container images are built from container recipes, a separate
    #   resource. This field isn't currently returned in responses.
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
    #   The components that are included in the image recipe. A recipe can
    #   contain a maximum of 20 build and test components in any
    #   combination, by default. This maximum is an adjustable quota. For
    #   more information, see [EC2 Image Builder endpoints and quotas][1] in
    #   the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/imagebuilder.html
    #   @return [Array<Types::ComponentConfiguration>]
    #
    # @!attribute [rw] parent_image
    #   The base image for customizations specified in the image recipe. You
    #   can specify the parent image using one of the following options:
    #
    #   * AMI ID
    #
    #   * Image Builder image Amazon Resource Name (ARN)
    #
    #   * Amazon Web Services Systems Manager (SSM) Parameter Store
    #     Parameter, prefixed by `ssm:`, followed by the parameter name or
    #     ARN.
    #
    #   * Amazon Web Services Marketplace product ID
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
    #   The working directory used during build and test workflows. If you
    #   don't specify a working directory, Image Builder uses `/tmp` for
    #   Linux and macOS build instances, and `C:/` for Windows build
    #   instances.
    #   @return [String]
    #
    # @!attribute [rw] additional_instance_configuration
    #   Before you create a new AMI, Image Builder launches temporary Amazon
    #   EC2 instances to build and test your image configuration. Instance
    #   configuration adds a layer of control over those instances. You can
    #   define settings and add scripts to run when Image Builder launches
    #   your build instance.
    #   @return [Types::AdditionalInstanceConfiguration]
    #
    # @!attribute [rw] ami_tags
    #   Tags that are applied to the AMI that Image Builder creates during
    #   the Build phase prior to image distribution.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] ami_watermarks
    #   The AMI watermark names attached to the output AMI from this recipe.
    #   AMI watermarks are lineage markers that automatically propagate to
    #   derivative AMIs when the source AMI is copied or distributed.
    #   @return [Array<String>]
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
      :additional_instance_configuration,
      :ami_tags,
      :ami_watermarks)
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

    # Contains details about a vulnerability scan finding that Amazon
    # Inspector generated for an image.
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
    #   The severity of the finding. For more information, see [Severity
    #   levels for Amazon Inspector findings][1] in the *Amazon Inspector
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/inspector/latest/user/findings-understanding-severity.html
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
    #   that are identified in the finding through a version update. Valid
    #   values include:
    #
    #   * `YES` – A fix is available for all of the packages identified in
    #     the finding.
    #
    #   * `NO` – No fix is available.
    #
    #   * `PARTIAL` – A fix is available for some, but not all, of the
    #     packages identified in the finding.
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
    #   case-sensitive. Valid filter names are:
    #
    #   * `imageBuildVersionArn` – Filters findings by the image build
    #     version that was scanned.
    #
    #   * `imagePipelineArn` – Filters findings by the pipeline that created
    #     the scanned image.
    #
    #   * `vulnerabilityId` – Filters findings by vulnerability ID, for
    #     example a CVE ID.
    #
    #   * `severity` – Filters findings by severity level.
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
    #   The current state of vulnerability scans for the image. The scan
    #   starts as `PENDING` and moves through `SCANNING` and `COLLECTING` to
    #   `COMPLETED`. Image Builder sets the status to `ABANDONED` if the
    #   image reaches a terminal state before the scan finding collection
    #   completes. A scan can also end as `FAILED` or `TIMED_OUT`.
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
    #   Specifies whether Amazon Inspector scans for vulnerabilities when
    #   you create a new image, and whether Image Builder saves the
    #   findings. Amazon Inspector must be enabled in the account. Image
    #   tests must also be enabled. For AMI output, Amazon Inspector scans
    #   the test instance. For container output, Amazon Inspector scans the
    #   container image that Image Builder pushes to the Amazon ECR
    #   repository from your `ecrConfiguration` settings.
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
    #   The status of the image. A new image moves through build, test, and
    #   distribution statuses during creation, and ends in the `AVAILABLE`,
    #   `FAILED`, or `CANCELLED` state. The `DEPRECATED`, `DISABLED`, and
    #   `DELETED` statuses come from later resource management actions.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the status of the image.
    #   @return [String]
    #
    # @!attribute [rw] failure_context
    #   The details about the failure, for images that failed to complete.
    #   Image Builder only sets this property when the image status is
    #   `FAILED`.
    #   @return [Types::ImageFailureContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImageState AWS API Documentation
    #
    class ImageState < Struct.new(
      :status,
      :reason,
      :failure_context)
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
    #
    #   * **IMPORT\_ISO** – An ISO disk import created the image.
    #   @return [String]
    #
    # @!attribute [rw] image_source
    #   The origin of the base image that Image Builder used to build this
    #   image.
    #   @return [String]
    #
    # @!attribute [rw] deprecation_time
    #   The time when deprecation occurs for an image resource. This can be
    #   a past or future date.
    #   @return [Time]
    #
    # @!attribute [rw] lifecycle_execution_id
    #   Identifies the last runtime instance of the lifecycle policy to take
    #   action on the image.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration that's defined for the image.
    #   @return [Types::ImageLoggingConfiguration]
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
      :image_source,
      :deprecation_time,
      :lifecycle_execution_id,
      :logging_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configure image tests for your pipeline build. Tests run after
    # building the image, to verify that the AMI or container image is valid
    # before distributing it.
    #
    # @!attribute [rw] image_tests_enabled
    #   Specifies whether tests run after building the image. When enabled,
    #   tests run after the image build and before image distribution.
    #   Defaults to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] timeout_minutes
    #   The maximum time in minutes that tests are permitted to run. If you
    #   don't specify a value, Image Builder stores and returns 720.
    #
    #   <note markdown="1"> The timeout property is not currently active. This value is ignored.
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
    #   The semantic version of the image. This version follows the semantic
    #   version syntax.
    #
    #   <note markdown="1"> The semantic version has four nodes:
    #   &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;/&lt;build&gt;. You can
    #   assign values for the first three, and can filter on all of them.
    #
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
    #
    #    **Patterns:** You can use any numeric pattern that adheres to the
    #   assignment requirements for the nodes that you can assign. For
    #   example, you might choose a software version pattern, such as 1.0.0,
    #   or a date, such as 2021.01.01.
    #
    #    **Filtering:** You can use wildcards (x) to specify the most recent
    #   versions or nodes when selecting the base image or components for
    #   your recipe. When you use a wildcard in any node, all nodes to the
    #   right of the first wildcard must also be wildcards.
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
    #   The operating system version of the image. For example, Amazon Linux
    #   2023 or Microsoft Windows Server 2022.
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
    #
    #   * **IMPORT\_ISO** – An ISO disk import created the image.
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
    #   The name of the component. Image Builder generates the component ARN
    #   from a normalized form of the name, so names that differ only in
    #   case, spaces, or underscores count as the same name. If a component
    #   with the same name and semantic version already exists in your
    #   account in the same Amazon Web Services Region, the request creates
    #   a new build version for it. If the content is also identical to the
    #   latest build version, the request fails because the component
    #   already exists.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   The change description of the component. This description indicates
    #   the change that has been made in this version, or what makes this
    #   version different from other versions of the component.
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
    #   The data of the component. For the `SHELL` format, this is the plain
    #   script content. You must specify exactly one of the `data` or `uri`
    #   properties. For scripts that exceed the inline length constraint,
    #   use the `uri` property.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The uri of the component. Must be an Amazon S3 URL and you must have
    #   permission to access the Amazon S3 bucket. If you use Amazon S3, you
    #   can specify component content up to your service quota. Either
    #   `data` or `uri` can be used to specify the data within the
    #   component.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Resource Name (ARN) of the KMS key that is used to
    #   encrypt this component. This can be either the Key ARN or the Alias
    #   ARN. For more information, see [Key identifiers (KeyId)][1] in the
    #   *Key Management Service Developer Guide*. If you don't specify a
    #   key, Image Builder encrypts the component data with a KMS key that
    #   Image Builder owns.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the component.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
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
    #   The client token that uniquely identifies the request.
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
    #   The name of the image resource that's created from the import.
    #   Image Builder generates the image ARN from a normalized form of the
    #   name, so names that differ only in case, spaces, or underscores
    #   count as the same name. If an image with the same name and semantic
    #   version already exists in your account in the same Amazon Web
    #   Services Region, the import creates a new build version for it.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The semantic version to attach to the image that's created during
    #   the import process. This version follows the semantic version
    #   syntax.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for your disk image import.
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform for the imported image. Allowed values
    #   include the following: `Windows`.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   The operating system version for the imported image. The only
    #   supported value is `Microsoft Windows 11`.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions to
    #   import an image from a Microsoft ISO file. If you don't provide a
    #   role, Image Builder uses the Image Builder service-linked role in
    #   your account, and creates it if it doesn't exist.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   resource that's used for launching the EC2 instance on which the
    #   ISO image is built.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The `uri` of the ISO disk file that's stored in Amazon S3, in
    #   `s3://bucket/key` format. The key must end with the `.iso`, `.ISO`,
    #   or `.Iso` extension, and the bucket must be owned by the account
    #   that makes the request.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the import
    #   logs. If you specify a log group name outside of the
    #   `/aws/imagebuilder/` namespace, you must also provide an
    #   `executionRole` that has permission to write to that log group.
    #   @return [Types::ImageLoggingConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to image resources created from the import.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] register_image_options
    #   Configures Secure Boot and UEFI settings for the imported image.
    #   @return [Types::RegisterImageOptions]
    #
    # @!attribute [rw] windows_configuration
    #   Specifies Windows settings for ISO imports.
    #   @return [Types::WindowsConfiguration]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportDiskImageRequest AWS API Documentation
    #
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
      :register_image_options,
      :windows_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the Image Builder image resource
    #   that this request created. The AMI doesn't exist yet when the
    #   response returns. The import runs asynchronously, and the output AMI
    #   appears in the image's output resources when the import completes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ImportDiskImageResponse AWS API Documentation
    #
    class ImportDiskImageResponse < Struct.new(
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the base image that is created by the import process.
    #   Image Builder generates the image ARN from a normalized form of the
    #   name, so names that differ only in case, spaces, or underscores
    #   count as the same name. If an image with the same name and semantic
    #   version already exists in your account in the same Amazon Web
    #   Services Region, the import creates a new build version for it.
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
    #    **Assignment:** For the first three nodes, you can assign any
    #   positive integer value, including zero. The upper limit is 2^30-1,
    #   or 1073741823, for each node. Image Builder automatically assigns
    #   the build number to the fourth node.
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
    #   VM import process. The import task doesn't need to be complete when
    #   you call ImportVmImage - Image Builder monitors the task and
    #   finishes creating the image when the task completes.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The CloudWatch Logs log group where Image Builder sends the import
    #   logs. For ImportVmImage, the log group name must be within the
    #   `/aws/imagebuilder/` namespace.
    #   @return [Types::ImageLoggingConfiguration]
    #
    # @!attribute [rw] tags
    #   Tags that are attached to the import resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
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
      :logging_configuration,
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
    #   The Amazon Resource Name (ARN) of the Image Builder image resource
    #   that this request created. Image Builder records the AMI from the VM
    #   import task in the image's output resources after the task
    #   completes.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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
    #   The logging configuration of the infrastructure configuration. When
    #   you configure S3 logs, Image Builder writes logs from the build and
    #   test process to the specified bucket under the key prefix.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The Amazon EC2 key pair of the infrastructure configuration.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   Indicates whether Image Builder terminates the build and test
    #   instances when the image build fails. When `false`, Image Builder
    #   retains the instance so that you can debug it.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to which Image
    #   Builder sends image build event notifications. Specify a standard
    #   topic. Image Builder doesn't support FIFO topics.
    #
    #   <note markdown="1"> EC2 Image Builder can't send notifications to SNS topics that are
    #   encrypted using keys from other accounts. If your SNS topic is
    #   encrypted, the key must be owned by the same account that owns your
    #   Image Builder resources.
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
    #   The metadata tags assigned to the Amazon EC2 build and test
    #   instances that Image Builder launches during image creation.
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
    # @!attribute [rw] placement
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run.
    #   These settings don't affect instances that you launch from the
    #   output image.
    #   @return [Types::Placement]
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
      :tags,
      :placement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a high-level summary of an infrastructure configuration,
    # including the environment settings that Image Builder uses to build
    # and test images.
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
    #   The metadata tags assigned to the Amazon EC2 build and test
    #   instances that Image Builder launches during image creation.
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
    # @!attribute [rw] placement
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run.
    #   These settings don't affect instances that you launch from the
    #   output image.
    #   @return [Types::Placement]
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
      :instance_profile_name,
      :placement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the factors that influenced the score that Amazon
    # Inspector assigned for a finding.
    #
    # @!attribute [rw] adjusted_cvss
    #   The CVSS score that Amazon Inspector assigned to the finding after
    #   applying its adjustments. It includes the score source, CVSS
    #   version, scoring vector, and the adjustments applied.
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
    #   The Amazon EBS-specific configuration for this mapping.
    #   @return [Types::EbsInstanceBlockDeviceSpecification]
    #
    # @!attribute [rw] virtual_name
    #   The virtual device name for instance ephemeral devices.
    #   @return [String]
    #
    # @!attribute [rw] no_device
    #   Specifies a mapping to remove from the base image.
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
    #   The base image for a container build and test instance. This can
    #   contain an AMI ID or it can specify an Amazon Web Services Systems
    #   Manager (SSM) Parameter Store Parameter, prefixed by `ssm:`,
    #   followed by the parameter name or ARN.
    #
    #   If not specified, Image Builder uses the appropriate ECS-optimized
    #   AMI as a base image.
    #   @return [String]
    #
    # @!attribute [rw] block_device_mappings
    #   Defines the block device mappings for the EC2 instance that Image
    #   Builder launches to build and test your container image.
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

    # The instance metadata service (IMDS) settings that Image Builder
    # applies to the EC2 build and test instances it launches. These
    # settings control how software on those instances retrieves instance
    # metadata and IAM role credentials.
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
    #   If you don't set a value, the EC2 launch default applies to the
    #   build and test instances. That default depends on the base AMI and
    #   any account-level instance metadata defaults. For more information,
    #   see [Configure the instance metadata options][1] in the <i>
    #   <i>Amazon EC2 User Guide</i> </i>.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-options.html
    #   @return [String]
    #
    # @!attribute [rw] http_put_response_hop_limit
    #   Limit the number of hops that an instance metadata request can
    #   traverse to reach its destination. If you don't set a value, the
    #   EC2 launch default for the instance applies. If HTTP tokens are
    #   required, container image builds need a minimum of two hops.
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

    # You have specified a combination of parameters that isn't valid. For
    # example, two mutually exclusive parameters, or a parameter without its
    # required companion parameter. Review the error message for details.
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

    # The request is malformed or otherwise invalid. Verify the request and
    # try again.
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

    # A set of wildcard version ARNs that always reference the latest
    # version of the resource. ARNs are included for the latest version
    # overall, and for the latest versions within the same major, minor, and
    # patch levels.
    #
    # @!attribute [rw] latest_version_arn
    #   The latest version Amazon Resource Name (ARN) of the Image Builder
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_major_version_arn
    #   The latest version Amazon Resource Name (ARN) with the same `major`
    #   version of the Image Builder resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_minor_version_arn
    #   The latest version Amazon Resource Name (ARN) with the same `minor`
    #   version of the Image Builder resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_patch_version_arn
    #   The latest version Amazon Resource Name (ARN) with the same `patch`
    #   version of the Image Builder resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LatestVersionReferences AWS API Documentation
    #
    class LatestVersionReferences < Struct.new(
      :latest_version_arn,
      :latest_major_version_arn,
      :latest_minor_version_arn,
      :latest_patch_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the configuration for a launch permission. The launch
    # permission modification request is sent to the [Amazon EC2
    # ModifyImageAttribute][1] API on behalf of the user for each Region
    # they have selected to distribute the AMI. To make an AMI public, set
    # `userGroups` to the value `all`. See the examples for making an AMI
    # public at [Amazon EC2 ModifyImageAttribute][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyImageAttribute.html
    #
    # @!attribute [rw] user_ids
    #   The Amazon Web Services account IDs to grant launch permission to.
    #   Each listed account can use the distributed AMI to launch instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   The name of the group that you want to grant launch permission to.
    #   The only supported value is `all`, which makes the distributed AMI
    #   public.
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
    #   Specifies whether to make the new launch template version that Image
    #   Builder creates the default version of the launch template. If you
    #   don't set a value, Image Builder treats it as `true`.
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

    # Contains metadata from a runtime instance of a lifecycle policy.
    #
    # @!attribute [rw] lifecycle_execution_id
    #   Identifies the lifecycle policy runtime instance.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy that ran.
    #   @return [String]
    #
    # @!attribute [rw] resources_impacted_summary
    #   A summary flag that indicates whether the lifecycle execution
    #   identified any resources to take lifecycle actions on.
    #   @return [Types::LifecycleExecutionResourcesImpactedSummary]
    #
    # @!attribute [rw] state
    #   Runtime state that reports whether the lifecycle execution is in
    #   progress, succeeded, or failed.
    #   @return [Types::LifecycleExecutionState]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the lifecycle runtime instance started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the lifecycle runtime instance completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecution AWS API Documentation
    #
    class LifecycleExecution < Struct.new(
      :lifecycle_execution_id,
      :lifecycle_policy_arn,
      :resources_impacted_summary,
      :state,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details for a resource that the runtime instance of the
    # lifecycle policy identified for action.
    #
    # @!attribute [rw] account_id
    #   The account that owns the impacted resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Identifies the impacted resource. The resource ID depends on the
    #   type of resource, as follows.
    #
    #   * Image Builder image resources: Amazon Resource Name (ARN)
    #
    #   * Distributed AMIs: AMI ID
    #
    #   * Container images distributed to an ECR repository: image URI or
    #     SHA Digest
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The runtime state of the lifecycle action for this resource.
    #   @return [Types::LifecycleExecutionResourceState]
    #
    # @!attribute [rw] action
    #   The action to take for the identified resource.
    #   @return [Types::LifecycleExecutionResourceAction]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Region where the lifecycle execution
    #   resource is stored.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of associated resource snapshots for the impacted resource if
    #   it’s an AMI.
    #   @return [Array<Types::LifecycleExecutionSnapshotResource>]
    #
    # @!attribute [rw] image_uris
    #   For an impacted container image, this identifies a list of URIs for
    #   associated container images distributed to ECR repositories.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The starting timestamp from the lifecycle action that was applied to
    #   the resource.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The ending timestamp from the lifecycle action that was applied to
    #   the resource.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionResource AWS API Documentation
    #
    class LifecycleExecutionResource < Struct.new(
      :account_id,
      :resource_id,
      :state,
      :action,
      :region,
      :snapshots,
      :image_uris,
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The lifecycle policy action that was identified for the impacted
    # resource.
    #
    # @!attribute [rw] name
    #   The name of the lifecycle action that was identified for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the lifecycle policy action is taken.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionResourceAction AWS API Documentation
    #
    class LifecycleExecutionResourceAction < Struct.new(
      :name,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the state of an impacted resource that the runtime instance
    # of the lifecycle policy identified for action.
    #
    # @!attribute [rw] status
    #   The runtime status of the lifecycle action taken for the impacted
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Messaging that clarifies the reason for the assigned status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionResourceState AWS API Documentation
    #
    class LifecycleExecutionResourceState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an indicator that shows whether the lifecycle execution
    # identified any resources to take lifecycle actions on.
    #
    # @!attribute [rw] has_impacted_resources
    #   Indicates whether the lifecycle execution identified any resources
    #   to take lifecycle actions on.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionResourcesImpactedSummary AWS API Documentation
    #
    class LifecycleExecutionResourcesImpactedSummary < Struct.new(
      :has_impacted_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the state of an impacted snapshot resource that the runtime
    # instance of the lifecycle policy identified for action.
    #
    # @!attribute [rw] snapshot_id
    #   Identifies the impacted snapshot resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The runtime status of the lifecycle action taken for the snapshot.
    #   @return [Types::LifecycleExecutionResourceState]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionSnapshotResource AWS API Documentation
    #
    class LifecycleExecutionSnapshotResource < Struct.new(
      :snapshot_id,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current state of the runtime instance of the lifecycle policy.
    #
    # @!attribute [rw] status
    #   The runtime status of the lifecycle execution.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecycleExecutionState AWS API Documentation
    #
    class LifecycleExecutionState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a lifecycle policy resource: its identity, status, execution
    # role, resource type, rules, resource selection, timestamps, and tags.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the lifecycle policy resource is enabled. Only
    #   enabled policies run on their schedule. Disabling or deleting a
    #   policy removes its schedule and cancels any in-flight lifecycle
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that Image
    #   Builder uses to run the lifecycle policy. This is a custom role that
    #   you create.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resources the lifecycle policy targets.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The list of rules for the lifecycle policy. Each rule pairs an
    #   action with a filter and optional exclusion rules. A policy can
    #   contain at most one rule per action type.
    #   @return [Array<Types::LifecyclePolicyDetail>]
    #
    # @!attribute [rw] resource_selection
    #   Resource selection criteria used to run the lifecycle policy.
    #   @return [Types::LifecyclePolicyResourceSelection]
    #
    # @!attribute [rw] date_created
    #   The timestamp when Image Builder created the lifecycle policy
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The timestamp when Image Builder updated the lifecycle policy
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] date_last_run
    #   The timestamp for the last time Image Builder ran the lifecycle
    #   policy.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   To help manage your lifecycle policy resources, you can assign your
    #   own metadata to each resource in the form of tags. Each tag consists
    #   of a key and an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicy AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines one lifecycle policy rule: the action to take, the filter that
    # determines which resources the rule applies to, and optional exclusion
    # rules.
    #
    # @!attribute [rw] action
    #   Configuration details for the policy action.
    #   @return [Types::LifecyclePolicyDetailAction]
    #
    # @!attribute [rw] filter
    #   Specifies the resources that the lifecycle policy applies to.
    #   @return [Types::LifecyclePolicyDetailFilter]
    #
    # @!attribute [rw] exclusion_rules
    #   Additional rules to specify resources that should be exempt from
    #   policy actions.
    #   @return [Types::LifecyclePolicyDetailExclusionRules]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetail AWS API Documentation
    #
    class LifecyclePolicyDetail < Struct.new(
      :action,
      :filter,
      :exclusion_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the action configuration for a lifecycle policy rule: the
    # action to take, and which underlying resources the action extends to.
    #
    # @!attribute [rw] type
    #   Specifies the lifecycle action to take. `DELETE` deletes the image
    #   resource and, with `includeResources`, also removes distributed
    #   AMIs, snapshots, or container images. `DEPRECATE` and `DISABLE` set
    #   the corresponding status on the image resource and, if
    #   `includeResources.amis` is set, on its distributed AMIs.
    #   @return [String]
    #
    # @!attribute [rw] include_resources
    #   Specifies which underlying resources the action extends to beyond
    #   the Image Builder image resource itself: distributed AMIs, their
    #   snapshots, or distributed container images. `DELETE` rules can
    #   include all three, `DEPRECATE` and `DISABLE` rules can include AMIs
    #   only, and you can only include snapshots together with AMIs.
    #   @return [Types::LifecyclePolicyDetailActionIncludeResources]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailAction AWS API Documentation
    #
    class LifecyclePolicyDetailAction < Struct.new(
      :type,
      :include_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how the lifecycle policy should apply actions to selected
    # resources.
    #
    # @!attribute [rw] amis
    #   Specifies whether the lifecycle action should apply to distributed
    #   AMIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshots
    #   Specifies whether the lifecycle action should apply to snapshots
    #   associated with distributed AMIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] containers
    #   Specifies whether the lifecycle action should apply to distributed
    #   containers.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailActionIncludeResources AWS API Documentation
    #
    class LifecyclePolicyDetailActionIncludeResources < Struct.new(
      :amis,
      :snapshots,
      :containers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies resources that lifecycle policy actions should not apply to.
    #
    # @!attribute [rw] tag_map
    #   Contains a list of tags that Image Builder uses to skip lifecycle
    #   actions for Image Builder image resources that have them.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] amis
    #   Lists configuration values that apply to AMIs that Image Builder
    #   should exclude from the lifecycle action.
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmis]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailExclusionRules AWS API Documentation
    #
    class LifecyclePolicyDetailExclusionRules < Struct.new(
      :tag_map,
      :amis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines criteria for AMIs that are excluded from lifecycle actions.
    #
    # @!attribute [rw] is_public
    #   Configures whether public AMIs are excluded from the lifecycle
    #   action.
    #   @return [Boolean]
    #
    # @!attribute [rw] regions
    #   Configures Amazon Web Services Regions that are excluded from the
    #   lifecycle action.
    #   @return [Array<String>]
    #
    # @!attribute [rw] shared_accounts
    #   The lifecycle action doesn't apply to AMIs that are shared with any
    #   of the specified Amazon Web Services accounts.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_launched
    #   Configures Image Builder to exclude AMIs that were launched within
    #   the specified time period from lifecycle actions. AMIs with no
    #   recorded last-launched time aren't excluded by this rule.
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched]
    #
    # @!attribute [rw] tag_map
    #   Lifecycle actions don't apply to AMIs that have any of these tags.
    #   Both the key and the value must match.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailExclusionRulesAmis AWS API Documentation
    #
    class LifecyclePolicyDetailExclusionRulesAmis < Struct.new(
      :is_public,
      :regions,
      :shared_accounts,
      :last_launched,
      :tag_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines criteria to exclude AMIs from lifecycle actions based on the
    # last time they were used to launch an instance.
    #
    # @!attribute [rw] value
    #   The integer number of units for the time period. For example `6`
    #   (months).
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   Defines the unit of time that the lifecycle policy uses to calculate
    #   elapsed time since the last launch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailExclusionRulesAmisLastLaunched AWS API Documentation
    #
    class LifecyclePolicyDetailExclusionRulesAmisLastLaunched < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines filters that the lifecycle policy uses to determine impacted
    # resource.
    #
    # @!attribute [rw] type
    #   Filter resources based on either `AGE` or `COUNT`. You can only use
    #   the count filter with the `DELETE` action type.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The number of units for the time period or for the count. For
    #   example, a value of `6` might refer to six months or six AMIs.
    #
    #   <note markdown="1"> For count-based filters, this value represents the minimum number of
    #   resources to keep on hand. If you have fewer resources than this
    #   number, the resource is excluded from lifecycle actions.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   Defines the unit of time that the lifecycle policy uses to determine
    #   impacted resources. This is required for age-based rules.
    #   @return [String]
    #
    # @!attribute [rw] retain_at_least
    #   For age-based filters, this is the number of resources to keep on
    #   hand after the lifecycle `DELETE` action is applied. Impacted
    #   resources are only deleted if you have more than this number of
    #   resources. If you have fewer resources than this number, the
    #   impacted resource is not deleted.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyDetailFilter AWS API Documentation
    #
    class LifecyclePolicyDetailFilter < Struct.new(
      :type,
      :value,
      :unit,
      :retain_at_least)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource selection criteria for the lifecycle policy. You must provide
    # exactly one selection criteria: either recipes or a tag map, not both.
    #
    # @!attribute [rw] recipes
    #   A list of recipes that are used as selection criteria for the output
    #   images that the lifecycle policy applies to.
    #   @return [Array<Types::LifecyclePolicyResourceSelectionRecipe>]
    #
    # @!attribute [rw] tag_map
    #   A list of tags that are used as selection criteria for the Image
    #   Builder image resources that the lifecycle policy applies to.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyResourceSelection AWS API Documentation
    #
    class LifecyclePolicyResourceSelection < Struct.new(
      :recipes,
      :tag_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Image Builder recipe that the lifecycle policy uses for
    # resource selection.
    #
    # @!attribute [rw] name
    #   The name of an Image Builder recipe that the lifecycle policy uses
    #   for resource selection.
    #   @return [String]
    #
    # @!attribute [rw] semantic_version
    #   The version of the Image Builder recipe specified by the `name`
    #   field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicyResourceSelectionRecipe AWS API Documentation
    #
    class LifecyclePolicyResourceSelectionRecipe < Struct.new(
      :name,
      :semantic_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a summary of lifecycle policy resources.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The lifecycle policy resource status.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that Image
    #   Builder uses to run the lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resources the lifecycle policy targets.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The timestamp when Image Builder created the lifecycle policy
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] date_updated
    #   The timestamp when Image Builder updated the lifecycle policy
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] date_last_run
    #   The timestamp for the last time Image Builder ran the lifecycle
    #   policy.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   To help manage your lifecycle policy resources, you can assign your
    #   own metadata to each resource in the form of tags. Each tag consists
    #   of a key and an optional value, both of which you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/LifecyclePolicySummary AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_version_arn
    #   The component version ARN whose build versions you want to list. The
    #   ARN must specify an exact version, without a build number suffix. If
    #   you don't specify an ARN, Image Builder returns build versions for
    #   the components that your account owns.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   The list of component summaries. Each summary represents one build
    #   version of the specified component version, or of the components
    #   that your account owns if you didn't specify an ARN. Deprecated
    #   build versions aren't included.
    #   @return [Array<Types::ComponentSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
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
    #   components that Amazon manages, components from the Amazon Web
    #   Services Marketplace, third party components, or components that
    #   other accounts have shared with you.
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
    #   * `productCodes`
    #
    #   * `status`
    #
    #   * `supportedOsVersion`
    #
    #   * `type`
    #
    #   * `version`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] by_name
    #   Specifies whether to return one entry per component name, with all
    #   versions of each component aggregated. Defaults to `false`, which
    #   returns one entry per component version. You can't combine this
    #   option with the `version` filter.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   container recipes belonging to your account. For container recipes,
    #   the valid owner values are `Self`, `Shared`, and `Amazon`.
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   The Amazon Resource Name (ARN) of the image version whose build
    #   versions you want to retrieve. The ARN must specify an exact version
    #   (`<major>.<minor>.<patch>`) - wildcards aren't allowed. This
    #   parameter is optional. If you don't specify it, Image Builder
    #   returns build versions for all of the images in your account.
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   The Amazon Resource Name (ARN) of the image build version whose
    #   packages you want to list. The value must be a full build version
    #   ARN.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   You can specify the recipe owner to filter results by that owner. By
    #   default, this request will only show image recipes owned by your
    #   account. To filter by a different owner, specify one of the `Valid
    #   Values` that are listed for this parameter.
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   A list of `ImageRecipeSummary` objects that contain identifying
    #   characteristics for the image recipe, such as the name, the Amazon
    #   Resource Name (ARN), and the date created, along with other key
    #   details.
    #   @return [Array<Types::ImageRecipeSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
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
    #   A filter name and value pair that determines the type of aggregation
    #   that Image Builder returns. Use one of the following filter names:
    #
    #   * `imageBuildVersionArn`
    #
    #   * `imagePipelineArn`
    #
    #   * `vulnerabilityId`
    #
    #   If you don't specify a filter, Image Builder returns an aggregation
    #   for your account.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   * `imageBuildVersionArn` – Filters findings by the image build
    #     version that was scanned.
    #
    #   * `imagePipelineArn` – Filters findings by the pipeline that created
    #     the scanned image.
    #
    #   * `vulnerabilityId` – Filters findings by vulnerability ID, for
    #     example a CVE ID.
    #
    #   * `severity` – Filters findings by severity level.
    #
    #   If you don't request a filter, then all findings in your account
    #   are listed.
    #   @return [Array<Types::ImageScanFindingsFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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
    #   Filters the list to images owned by you, by Amazon, or shared with
    #   you by other accounts. By default, only your account's images are
    #   returned.
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
    #   Specifies whether to return one entry per image name, with all
    #   versions of each image aggregated. Defaults to `false`, which
    #   returns one entry per image version. You can't combine this option
    #   with the `version` filter.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] include_deprecated
    #   Specifies whether to include deprecated Amazon-managed images in the
    #   results. Deprecated images that you own are always returned.
    #   Defaults to `false`.
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
    #    **Filtering:** You can use wildcards (x) to specify the most recent
    #   versions or nodes when selecting the base image or components for
    #   your recipe. When you use a wildcard in any node, all nodes to the
    #   right of the first wildcard must also be wildcards.
    #
    #    </note>
    #   @return [Array<Types::ImageVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   empty, there are additional elements that the service hasn't
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

    # @!attribute [rw] lifecycle_execution_id
    #   The unique identifier for a runtime instance of the lifecycle
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] parent_resource_id
    #   The Amazon Resource Name (ARN) of an image build version to get the
    #   output resources for, such as AMIs or container images in Amazon
    #   ECR. You can get this value from the `resourceId` in the top-level
    #   response. If you leave this property empty, the response lists the
    #   Image Builder resources that the lifecycle execution identified for
    #   lifecycle actions. If the image build version that you specify in
    #   `parentResourceId` wasn't part of this lifecycle execution, the
    #   response contains an empty list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutionResourcesRequest AWS API Documentation
    #
    class ListLifecycleExecutionResourcesRequest < Struct.new(
      :lifecycle_execution_id,
      :parent_resource_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_execution_id
    #   The unique identifier for the runtime instance of the lifecycle
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_execution_state
    #   The current state of the lifecycle runtime instance.
    #   @return [Types::LifecycleExecutionState]
    #
    # @!attribute [rw] resources
    #   A list of resources that were identified for lifecycle actions.
    #   @return [Array<Types::LifecycleExecutionResource>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutionResourcesResponse AWS API Documentation
    #
    class ListLifecycleExecutionResourcesResponse < Struct.new(
      :lifecycle_execution_id,
      :lifecycle_execution_state,
      :resources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   lifecycle executions. Specify a lifecycle policy ARN to list its
    #   executions, or an image build version ARN to list the executions
    #   that StartResourceStateUpdate started for that image. Other ARN
    #   types aren't valid for this request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutionsRequest AWS API Documentation
    #
    class ListLifecycleExecutionsRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_executions
    #   A list of lifecycle runtime instances for the specified resource.
    #   @return [Array<Types::LifecycleExecution>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecycleExecutionsResponse AWS API Documentation
    #
    class ListLifecycleExecutionsResponse < Struct.new(
      :lifecycle_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Use the following filters to streamline results: `name`,
    #   `resourceType`, and `status`. Filter names are matched exactly as
    #   shown.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecyclePoliciesRequest AWS API Documentation
    #
    class ListLifecyclePoliciesRequest < Struct.new(
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy_summary_list
    #   A list of lifecycle policies in your Amazon Web Services account
    #   that meet the criteria specified in the request.
    #   @return [Array<Types::LifecyclePolicySummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListLifecyclePoliciesResponse AWS API Documentation
    #
    class ListLifecyclePoliciesResponse < Struct.new(
      :lifecycle_policy_summary_list,
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWaitingWorkflowStepsRequest AWS API Documentation
    #
    class ListWaitingWorkflowStepsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] steps
    #   An array of the workflow steps that are waiting for action in your
    #   Amazon Web Services account. Each step is paused at a
    #   `WaitForAction` step, and remains in the list until you respond with
    #   SendWorkflowStepAction or the wait times out.
    #   @return [Array<Types::WorkflowStepExecution>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWaitingWorkflowStepsResponse AWS API Documentation
    #
    class ListWaitingWorkflowStepsResponse < Struct.new(
      :steps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource for which to
    #   get a list of build versions. The version segments can contain
    #   wildcards (`x`) to match multiple versions of the workflow. If you
    #   don't specify an ARN, the response lists build versions for all of
    #   the workflows in your account.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowBuildVersionsRequest AWS API Documentation
    #
    class ListWorkflowBuildVersionsRequest < Struct.new(
      :workflow_version_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_summary_list
    #   A list that contains metadata for the build versions of the workflow
    #   resource specified in the request.
    #   @return [Array<Types::WorkflowSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowBuildVersionsResponse AWS API Documentation
    #
    class ListWorkflowBuildVersionsResponse < Struct.new(
      :workflow_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   An array of runtime details that represents each time a workflow ran
    #   for the requested image build version. Image Builder retains
    #   workflow execution records for a limited time, so this array can be
    #   empty for older image build versions.
    #   @return [Array<Types::WorkflowExecutionMetadata>]
    #
    # @!attribute [rw] image_build_version_arn
    #   The resource Amazon Resource Name (ARN) of the image build version
    #   for which you requested a list of workflow runtime details.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The failure reason for the image build version, if it's in a failed
    #   state. This comes from the image itself, not from an individual
    #   workflow, so it's available even when no workflow executions remain
    #   for the image.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
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
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
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
    #   The build version Amazon Resource Name (ARN) for the Image Builder
    #   workflow resource that defines the steps for this runtime instance
    #   of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   The unique identifier that Image Builder assigned to keep track of
    #   runtime details when it ran the workflow.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The image build version resource Amazon Resource Name (ARN) that's
    #   associated with the specified runtime instance of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The output message from the list action, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
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

    # @!attribute [rw] owner
    #   Filters results based on the workflow owner. By default, this
    #   request returns the workflows that your account owns (`Self`).
    #   Specify `Amazon` to list the workflows that Image Builder manages.
    #   Image Builder rejects the `Shared` and `ThirdParty` owner values for
    #   workflows, and `AWSMarketplace` returns no results.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters to narrow the list of workflows. You can filter on `name`,
    #   `version`, `description`, and `type`.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] by_name
    #   Specifies whether to return one entry per workflow name, with all
    #   versions of each workflow aggregated. Defaults to `false`, which
    #   returns one entry per workflow version. You can't combine this
    #   option with the `version` filter.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to return in a single request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. Use the `nextToken`
    #   value from a previously truncated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :owner,
      :filters,
      :by_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_version_list
    #   A list of workflow versions that match the request criteria.
    #   @return [Array<Types::WorkflowVersion>]
    #
    # @!attribute [rw] next_token
    #   The next token used for paginated responses. When this field isn't
    #   empty, there are additional elements that the service hasn't
    #   included in this request. Use this token with the next request to
    #   retrieve additional objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :workflow_version_list,
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
    #   The Amazon EC2 AMIs created by this image. The list contains one
    #   entry per AMI, including copies that distribution created in each
    #   target Amazon Web Services Region and account.
    #   @return [Array<Types::Ami>]
    #
    # @!attribute [rw] containers
    #   The container images that Image Builder created when it built this
    #   image, stored in the output Amazon ECR repository.
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
    #   The CVSS scores for the vulnerability in this finding, as published
    #   by the vulnerability sources. Sources include NVD and the operating
    #   system vendor, and scores can span CVSS versions.
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

    # The logging configuration that's defined for pipeline execution.
    #
    # @!attribute [rw] image_log_group_name
    #   Specifies the CloudWatch Logs log group name for image build logs.
    #   The log group name can contain alphanumeric characters, hyphens,
    #   underscores, forward slashes, and periods, up to 512 characters. Log
    #   group names not starting with `/aws/imagebuilder/` require an
    #   `executionRole` with CloudWatch Logs write permissions. If not
    #   specified, defaults to `/aws/imagebuilder/image-name`.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_log_group_name
    #   Specifies the CloudWatch Logs log group name for pipeline execution
    #   logs. The log group name can contain alphanumeric characters,
    #   hyphens, underscores, forward slashes, and periods, up to 512
    #   characters. Log group names not starting with `/aws/imagebuilder/`
    #   require an `executionRole` with CloudWatch Logs write permissions.
    #   If not specified, defaults to
    #   `/aws/imagebuilder/pipeline/pipeline-name`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/PipelineLoggingConfiguration AWS API Documentation
    #
    class PipelineLoggingConfiguration < Struct.new(
      :image_log_group_name,
      :pipeline_log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # By default, EC2 instances run on shared tenancy hardware. This means
    # that multiple Amazon Web Services accounts might share the same
    # physical hardware. When you use dedicated hardware, the physical
    # server that hosts your instances is dedicated to your Amazon Web
    # Services account. Instance placement settings contain the details for
    # the physical hardware where instances that Image Builder launches
    # during image creation will run.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where your build and test instances will
    #   launch.
    #   @return [String]
    #
    # @!attribute [rw] tenancy
    #   The tenancy of the instance. An instance with a tenancy of
    #   `dedicated` runs on single-tenant hardware. An instance with a
    #   tenancy of `host` runs on a Dedicated Host.
    #
    #   If tenancy is set to `host`, then you can optionally specify one
    #   target for placement – either host ID or host resource group ARN. If
    #   automatic placement is enabled for your host, and you don't specify
    #   any placement target, Amazon EC2 will try to find an available host
    #   for your build and test instances.
    #   @return [String]
    #
    # @!attribute [rw] host_id
    #   The ID of the Dedicated Host on which build and test instances run.
    #   This only applies if `tenancy` is `host`.
    #   @return [String]
    #
    # @!attribute [rw] host_resource_group_arn
    #   The Amazon Resource Name (ARN) of the host resource group in which
    #   to launch build and test instances. This only applies if `tenancy`
    #   is `host`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Placement AWS API Documentation
    #
    class Placement < Struct.new(
      :availability_zone,
      :tenancy,
      :host_id,
      :host_resource_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a single product code.
    #
    # @!attribute [rw] product_code_id
    #   For Amazon Web Services Marketplace components, this contains the
    #   product code ID that can be stamped onto an EC2 AMI to ensure that
    #   components are billed correctly. If this property is empty, it might
    #   mean that the component is not published.
    #   @return [String]
    #
    # @!attribute [rw] product_code_type
    #   The owner of the product code that's billed. If this property is
    #   empty, it might mean that the component is not published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ProductCodeListItem AWS API Documentation
    #
    class ProductCodeListItem < Struct.new(
      :product_code_id,
      :product_code_type)
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
    #   The resource policy to apply to the image, as a JSON policy
    #   document. Image Builder validates the policy with Amazon Web
    #   Services RAM before applying it, and rejects invalid policies with
    #   `InvalidParameterValueException`.
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

    # Contains details about a distribution or image configuration failure
    # for a single Region.
    #
    # @!attribute [rw] region
    #   The Region where the failure occurred.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The failure status for the Region. Indicates whether the process
    #   failed, was canceled, or timed out.
    #   @return [String]
    #
    # @!attribute [rw] image_configuration_step
    #   The image configuration step where the failure occurred. Image
    #   Builder sets this property when the failure happened during
    #   post-distribution configuration, such as launch template updates or
    #   virtual machine (VM) export. This property doesn't appear for
    #   failures that occurred while Image Builder copied the image to the
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message for the failure in the Region.
    #   @return [String]
    #
    # @!attribute [rw] target_account_id
    #   The account ID of the account that the image was distributed to in
    #   the Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RegionFailure AWS API Documentation
    #
    class RegionFailure < Struct.new(
      :region,
      :status,
      :image_configuration_step,
      :error_message,
      :target_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls Secure Boot and UEFI data settings for the resulting image
    # during ISO imports. For more information, see [UEFI Secure Boot for
    # Amazon EC2 instances][1] in the <i> <i>Amazon EC2 User Guide</i> </i>.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html
    #
    # @!attribute [rw] secure_boot_enabled
    #   Specifies whether Secure Boot is enabled for the output AMI. The
    #   default value is `true`. To disable Secure Boot for custom unsigned
    #   drivers, set this value to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] uefi_data
    #   A Base64-encoded representation of the non-volatile UEFI variable
    #   store. You can specify this parameter only when `secureBootEnabled`
    #   is `true` or unspecified. You can inspect and modify the UEFI data
    #   by using the [python-uefivars tool on GitHub][1].
    #
    #   For more information, see [UEFI variables for Amazon EC2
    #   instances][2].
    #
    #
    #
    #   [1]: https://github.com/awslabs/python-uefivars
    #   [2]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-variables.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RegisterImageOptions AWS API Documentation
    #
    class RegisterImageOptions < Struct.new(
      :secure_boot_enabled,
      :uefi_data)
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

    # The state to apply to the image resource in a resource state update
    # request.
    #
    # @!attribute [rw] status
    #   The status to which you want to move the image resource. Set the
    #   status to `AVAILABLE` to restore an image that's currently
    #   deprecated or disabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceState AWS API Documentation
    #
    class ResourceState < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional rules to specify resources that should be exempt from
    # ad-hoc lifecycle actions.
    #
    # @!attribute [rw] amis
    #   Defines criteria for AMIs that Image Builder should exclude from the
    #   resource state update.
    #   @return [Types::LifecyclePolicyDetailExclusionRulesAmis]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceStateUpdateExclusionRules AWS API Documentation
    #
    class ResourceStateUpdateExclusionRules < Struct.new(
      :amis)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which underlying resources the resource state update applies
    # to, in addition to the Image Builder image resource itself:
    # distributed AMIs and their snapshots for AMI images, or distributed
    # container images for container images.
    #
    # @!attribute [rw] amis
    #   Specifies whether the lifecycle action should apply to distributed
    #   AMIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] snapshots
    #   Specifies whether the lifecycle action should apply to snapshots
    #   associated with distributed AMIs.
    #   @return [Boolean]
    #
    # @!attribute [rw] containers
    #   Specifies whether the lifecycle action should apply to distributed
    #   containers.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/ResourceStateUpdateIncludeResources AWS API Documentation
    #
    class ResourceStateUpdateIncludeResources < Struct.new(
      :amis,
      :snapshots,
      :containers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version that you
    #   want to retry. The image must be in the `FAILED` or `CANCELLED`
    #   state.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RetryImageRequest AWS API Documentation
    #
    class RetryImageRequest < Struct.new(
      :image_build_version_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The ARN of the image to be retried.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/RetryImageResponse AWS API Documentation
    #
    class RetryImageResponse < Struct.new(
      :client_token,
      :image_build_version_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties that configure exporting the output image to a disk image
    # file in an Amazon S3 bucket, in a format that's compatible with your
    # VMs.
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
    #   The name of an existing Amazon S3 bucket where Image Builder saves
    #   build logs. The bucket isn't validated when you create or update
    #   the configuration, and Image Builder doesn't create it. The
    #   instance profile associated with this infrastructure configuration
    #   must have permission to write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The Amazon S3 key prefix under which Image Builder writes build and
    #   test logs in the bucket.
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

    # A schedule configures when and how often a pipeline will automatically
    # create a new image.
    #
    # @!attribute [rw] schedule_expression
    #   The expression determines how often EC2 Image Builder evaluates your
    #   `pipelineExecutionStartCondition`. You can specify a cron
    #   expression, or a rate expression such as `rate(1 day)`.
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
    #   The timezone that applies to the scheduling expression. Specify a
    #   value in [IANA timezone format][1], for example `Etc/UTC` or
    #   `America/Los_Angeles`. If not specified, this defaults to UTC.
    #
    #
    #
    #   [1]: https://www.joda.org/joda-time/timezones.html
    #   @return [String]
    #
    # @!attribute [rw] pipeline_execution_start_condition
    #   The start condition configures when the pipeline should trigger a
    #   new image build, as follows. If no value is set Image Builder
    #   defaults to `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE`.
    #
    #   * `EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE` (default) –
    #     When you use semantic version filters on the base image or
    #     components in your image recipe, EC2 Image Builder builds a new
    #     image only when there are new versions of the base image or
    #     components in your recipe that match the filter.
    #
    #     <note markdown="1"> For semantic version syntax, see [CreateComponent][1].
    #
    #      </note>
    #
    #   * `EXPRESSION_MATCH_ONLY` – This condition builds a new image every
    #     time the CRON expression matches the current time.
    #
    #   <note markdown="1"> If the recipe references its base image through an Amazon Web
    #   Services Systems Manager Parameter Store parameter, a change in the
    #   parameter's value also counts as an available dependency update.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/imagebuilder/latest/APIReference/API_CreateComponent.html
    #   @return [String]
    #
    # @!attribute [rw] auto_disable_policy
    #   The policy that configures when Image Builder should automatically
    #   disable a pipeline that is failing.
    #   @return [Types::AutoDisablePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :timezone,
      :pipeline_execution_start_condition,
      :auto_disable_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_execution_id
    #   Uniquely identifies the waiting workflow step that you send the
    #   action to. To get this identifier, call ListWaitingWorkflowSteps.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version associated
    #   with the workflow step execution. This value must match the image
    #   that owns the waiting step. If the ARN does not correspond to the
    #   image running the workflow, then the request fails with a validation
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to perform on the paused workflow step. `RESUME`
    #   completes the waiting step, and the workflow continues. `STOP` fails
    #   the step, and the step's `onFailure` setting determines whether the
    #   workflow continues or aborts. The workflow step must be in a waiting
    #   state to accept an action. The request fails if the step has already
    #   timed out or been actioned.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the action. This value is stored with the step
    #   execution record and is accessible in subsequent workflow steps via
    #   step output references.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SendWorkflowStepActionRequest AWS API Documentation
    #
    class SendWorkflowStepActionRequest < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :action,
      :reason,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_execution_id
    #   The unique identifier for the workflow step that received the
    #   action, as specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version that
    #   received the action request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SendWorkflowStepActionResponse AWS API Documentation
    #
    class SendWorkflowStepActionResponse < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred while Image Builder processed the
    # request. Retrying the request may succeed.
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

    # Configuration for a single Parameter in the Amazon Web Services
    # Systems Manager (SSM) Parameter Store in a given Region.
    #
    # @!attribute [rw] ami_account_id
    #   Specify the account that will own the Parameter in a given Region.
    #   During distribution, this account must be specified in distribution
    #   settings as a target account for the Region.
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   This is the name of the Parameter in the target Region or account.
    #   The image distribution creates the Parameter if it doesn't already
    #   exist. Otherwise, it updates the parameter.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The type of value the parameter contains. We recommend the
    #   `aws:ec2:image` data type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/SsmParameterConfiguration AWS API Documentation
    #
    class SsmParameterConfiguration < Struct.new(
      :ami_account_id,
      :parameter_name,
      :data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] image_pipeline_arn
    #   The Amazon Resource Name (ARN) of the image pipeline that you want
    #   to manually invoke.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags for Image Builder to apply to the image resource that's
    #   created when pipeline execution starts.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartImagePipelineExecutionRequest AWS API Documentation
    #
    class StartImagePipelineExecutionRequest < Struct.new(
      :image_pipeline_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image that the request
    #   created.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the image build version to update.
    #   The image must be in one of these terminal states: `AVAILABLE`,
    #   `DEPRECATED`, `DISABLED`, `FAILED`, or `CANCELLED`. Images with
    #   `FAILED` or `CANCELLED` status can transition only to `DELETED`.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Specifies the lifecycle action to take for this request. For
    #   AMI-based images, valid values are `AVAILABLE`, `DEPRECATED`,
    #   `DISABLED`, and `DELETED`. For container-based images, only
    #   `DELETED` is supported.
    #   @return [Types::ResourceState]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) of the IAM role that's used
    #   to update image state. You must provide this property together with
    #   `includeResources`. Neither is valid without the other.
    #   @return [String]
    #
    # @!attribute [rw] include_resources
    #   Specifies which underlying resources to update, in addition to the
    #   Image Builder image resource itself. Snapshots and containers are
    #   only valid for the `DELETED` state. To set an image to `DELETED`,
    #   you must include its underlying resources. To delete only the Image
    #   Builder image record, use the DeleteImage operation instead.
    #   @return [Types::ResourceStateUpdateIncludeResources]
    #
    # @!attribute [rw] exclusion_rules
    #   Rules that Image Builder evaluates against each of the image's
    #   AMIs. Matching AMIs and their snapshots are skipped. Exclusion rules
    #   only take effect when the request includes AMIs. If the target state
    #   is `DELETED` and any resource was skipped, the Image Builder image
    #   resource itself is also retained. For the `DEPRECATED` and
    #   `DISABLED` target states, Image Builder updates the image
    #   resource's state regardless of exclusions.
    #   @return [Types::ResourceStateUpdateExclusionRules]
    #
    # @!attribute [rw] update_at
    #   The timestamp that indicates when resources are updated by a
    #   lifecycle action. This property is valid only when the target status
    #   is `DEPRECATED`, and the value must be a future time. If you don't
    #   specify a value, Image Builder begins the state update right away.
    #   For a scheduled deprecation, included AMIs get their EC2 deprecation
    #   time set immediately, and Image Builder schedules the image resource
    #   to transition to `DEPRECATED` at that time.
    #   @return [Time]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartResourceStateUpdateRequest AWS API Documentation
    #
    class StartResourceStateUpdateRequest < Struct.new(
      :resource_arn,
      :state,
      :execution_role,
      :include_resources,
      :exclusion_rules,
      :update_at,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_execution_id
    #   Identifies the lifecycle execution that performs the resource state
    #   update. Image Builder only returns this field when it started a
    #   lifecycle execution for the update. Use it with
    #   GetLifecycleExecution to track progress.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The requested Amazon Resource Name (ARN) of the Image Builder
    #   resource for the asynchronous update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/StartResourceStateUpdateResponse AWS API Documentation
    #
    class StartResourceStateUpdateResponse < Struct.new(
      :lifecycle_execution_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings for the Systems Manager agent on your build
    # instance. This setting applies to Linux and macOS build instances
    # only. Requests that set it for a recipe with a Windows base image are
    # rejected.
    #
    # @!attribute [rw] uninstall_after_build
    #   Specifies whether the Systems Manager agent is removed from your
    #   final build image before Image Builder creates the new AMI. If
    #   `true`, the agent is removed. If `false`, the agent is kept, so that
    #   it's included in the AMI. If you don't set this property, Image
    #   Builder removes the agent only if Image Builder installed the agent
    #   during the build. An agent that was pre-installed on the base image
    #   is kept.
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
    #   image is stored. Provide the repository name only (a namespace path
    #   such as `team-a/my-repo` is allowed, but not the registry hostname).
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

    # You have attempted too many requests for the specific operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
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
    #   The distribution settings for the configuration. Each entry defines
    #   how output images are distributed in one target Amazon Web Services
    #   Region. A Region can appear at most once in the list. This list
    #   replaces the configuration's existing distributions entirely.
    #   @return [Array<Types::Distribution>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
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
    #   The client token that uniquely identifies the request.
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
    #   The Amazon Resource Name (ARN) of the image recipe that configures
    #   images created by this image pipeline. You must specify either this
    #   property or `containerRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] container_recipe_arn
    #   The Amazon Resource Name (ARN) of the container recipe that is used
    #   to configure images created by this container pipeline. You must
    #   specify either this property or `imageRecipeArn`, but not both.
    #   @return [String]
    #
    # @!attribute [rw] infrastructure_configuration_arn
    #   The Amazon Resource Name (ARN) of the infrastructure configuration
    #   that Image Builder uses to build images created by this image
    #   pipeline.
    #   @return [String]
    #
    # @!attribute [rw] distribution_configuration_arn
    #   The Amazon Resource Name (ARN) of the distribution configuration
    #   that Image Builder uses to configure and distribute images created
    #   by this image pipeline.
    #   @return [String]
    #
    # @!attribute [rw] image_tests_configuration
    #   Specifies the test settings that Image Builder applies to images
    #   that this pipeline creates. If you don't provide test settings,
    #   Image Builder stores a default configuration with image tests
    #   enabled.
    #   @return [Types::ImageTestsConfiguration]
    #
    # @!attribute [rw] enhanced_image_metadata_enabled
    #   Specifies whether to collect additional information about the image
    #   being created, including the operating system (OS) version and
    #   package list. Defaults to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] schedule
    #   The schedule of the image pipeline. Because the update replaces the
    #   entire configuration, omitting this property removes any existing
    #   schedule. The pipeline then runs only when you call
    #   StartImagePipelineExecution.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] status
    #   The status of the image pipeline. Defaults to `ENABLED` when
    #   omitted. To keep a pipeline disabled, include this property set to
    #   `DISABLED` in your update request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @!attribute [rw] image_scanning_configuration
    #   Contains settings for vulnerability scans that Amazon Inspector runs
    #   against the test instance during image creation.
    #   @return [Types::ImageScanningConfiguration]
    #
    # @!attribute [rw] workflows
    #   The array of workflow configuration objects for builds that this
    #   pipeline starts. You must also specify `executionRole` when you
    #   provide workflows.
    #   @return [Array<Types::WorkflowConfiguration>]
    #
    # @!attribute [rw] logging_configuration
    #   Specifies the logging configuration for the image pipeline. Use this
    #   to define custom CloudWatch Logs log groups for your pipeline
    #   execution logs and image build logs. The service manages log groups
    #   with names starting with `/aws/imagebuilder/` using the
    #   service-linked role. For custom log group names outside of this
    #   prefix, you must also provide an `executionRole`.
    #   @return [Types::PipelineLoggingConfiguration]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to perform workflow actions. If you
    #   omit this property, the pipeline reverts to the Image Builder
    #   service-linked role.
    #   @return [String]
    #
    # @!attribute [rw] image_tags
    #   The tags that Image Builder applies to the Image Builder image
    #   resource that this pipeline's scheduled executions create. These
    #   tags don't apply to the output AMI. To tag output AMIs, use
    #   `amiTags` in the pipeline's distribution configuration.
    #   @return [Hash<String,String>]
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
      :image_scanning_configuration,
      :workflows,
      :logging_configuration,
      :execution_role,
      :image_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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
    #   specify one or more instance types to use for this build. Image
    #   Builder picks one of these instance types based on availability. If
    #   you don't specify instance types, Image Builder selects compatible
    #   instance types automatically. If you specify a Dedicated Host, Image
    #   Builder uses only instance types that the host supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] instance_profile_name
    #   The instance profile to associate with the instance used to
    #   customize your Amazon EC2 AMI. The instance profile must exist in
    #   your account.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security group IDs to associate with the instance used to
    #   customize your Amazon EC2 AMI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID in which to place the instance used to customize your
    #   Amazon EC2 AMI. If you specify `subnetId`, you must also specify one
    #   or more security group IDs in `securityGroupIds`. Otherwise, the
    #   request fails.
    #   @return [String]
    #
    # @!attribute [rw] logging
    #   The logging configuration of the infrastructure configuration. When
    #   you configure S3 logs, Image Builder writes logs from the build and
    #   test process to the specified bucket under the key prefix.
    #   @return [Types::Logging]
    #
    # @!attribute [rw] key_pair
    #   The key pair of the infrastructure configuration. You can use this
    #   to log on to and debug the instance used to create your image.
    #   @return [String]
    #
    # @!attribute [rw] terminate_instance_on_failure
    #   Specifies whether to terminate the instance on failure. Set to false
    #   if you want Image Builder to retain the instance used to configure
    #   your AMI if the build or test phase of your workflow fails. Defaults
    #   to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to which Image
    #   Builder sends image build event notifications. Specify a standard
    #   topic. Image Builder doesn't support FIFO topics. Image Builder
    #   validates the topic when you create or update the configuration. You
    #   must have permission to publish to the topic.
    #
    #   <note markdown="1"> EC2 Image Builder can't send notifications to SNS topics that are
    #   encrypted using keys from other accounts. If your SNS topic is
    #   encrypted, the key must be owned by the same account that owns your
    #   Image Builder resources.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The metadata tags to assign to the Amazon EC2 instance that Image
    #   Builder launches during the build process. Tags are formatted as key
    #   value pairs. Tag keys can't begin with `aws:` or match one of the
    #   following reserved keys: `CreatedBy`, `Ec2ImageBuilderArn`, `Name`,
    #   or `Tags`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] instance_metadata_options
    #   The instance metadata service (IMDS) settings that Image Builder
    #   applies to the EC2 build and test instances it launches during image
    #   creation. If you don't set these options, the EC2 launch defaults
    #   for the instance apply. For more information about instance metadata
    #   options, see one of the following links:
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
    # @!attribute [rw] placement
    #   The instance placement settings that define where the build and test
    #   instances that Image Builder launches during image creation run.
    #   These settings don't affect instances that you launch from the
    #   output image.
    #   @return [Types::Placement]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
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
      :resource_tags,
      :instance_metadata_options,
      :placement,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The request ID that uniquely identifies this request.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token that uniquely identifies the request.
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

    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the lifecycle policy resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Optional description for the lifecycle policy. Because the update
    #   replaces the entire configuration, omitting this property removes
    #   any existing description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Indicates whether the lifecycle policy resource is enabled. Defaults
    #   to `ENABLED` when omitted, so updating a disabled policy without
    #   setting this property re-enables it.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   The name or Amazon Resource Name (ARN) for the IAM role you create
    #   that grants Image Builder access to run lifecycle actions.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of image resource that the lifecycle policy applies to. The
    #   value must match the policy's existing resource type. You can't
    #   change the resource type of an existing lifecycle policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_details
    #   The configuration details for a lifecycle policy resource.
    #   @return [Array<Types::LifecyclePolicyDetail>]
    #
    # @!attribute [rw] resource_selection
    #   Selection criteria for resources that the lifecycle policy applies
    #   to. You must specify exactly one selection criteria: either recipes
    #   or a tag map, not both.
    #   @return [Types::LifecyclePolicyResourceSelection]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure that the
    #   operation runs no more than one time. If you retry a request with
    #   the same client token, Image Builder returns the original response
    #   without running the operation again. For more information, see
    #   [Ensuring idempotency][1] in the *Amazon EC2 API Reference*.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateLifecyclePolicyRequest AWS API Documentation
    #
    class UpdateLifecyclePolicyRequest < Struct.new(
      :lifecycle_policy_arn,
      :description,
      :status,
      :execution_role,
      :resource_type,
      :policy_details,
      :resource_selection,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lifecycle_policy_arn
    #   The Amazon Resource Name (ARN) of the image lifecycle policy
    #   resource that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/UpdateLifecyclePolicyResponse AWS API Documentation
    #
    class UpdateLifecyclePolicyResponse < Struct.new(
      :lifecycle_policy_arn)
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

    # Windows-specific configuration settings for an ISO import, including
    # the edition to install from a multi-edition Windows ISO file.
    #
    # @!attribute [rw] image_index
    #   The 1-based index that specifies which Windows edition to install
    #   from a multi-edition Windows ISO file. A Windows ISO can contain a
    #   `.wim` file with multiple image indexes, each representing a
    #   different edition.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WindowsConfiguration AWS API Documentation
    #
    class WindowsConfiguration < Struct.new(
      :image_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a process that Image Builder runs during the build, test, or
    # distribution stage of the image creation process.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The workflow resource version. Workflow resources are immutable. To
    #   make a change, you can clone a workflow or create a new version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   Describes what change has been made in this version of the workflow,
    #   or what makes this version different from other versions of the
    #   workflow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The image creation stage that the workflow applies to.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the current status of the workflow and the reason for that
    #   status.
    #   @return [Types::WorkflowState]
    #
    # @!attribute [rw] owner
    #   The owner of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Contains the YAML document content for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier used to encrypt the workflow resource. This
    #   can be either the Key ARN or the Alias ARN. For more information,
    #   see [Key identifiers (KeyId)][1] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The timestamp when Image Builder created the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that apply to the workflow resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] parameters
    #   An array of input parameters that the image workflow uses to control
    #   actions or configure settings.
    #   @return [Array<Types::WorkflowParameterDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/Workflow AWS API Documentation
    #
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
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains control settings and configurable inputs for a workflow
    # resource.
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Contains parameter values for each of the parameters that the
    #   workflow document defined for the workflow resource.
    #   @return [Array<Types::WorkflowParameter>]
    #
    # @!attribute [rw] parallel_group
    #   Test workflows are defined within named runtime groups called
    #   parallel groups. The parallel group is the named group that contains
    #   this test workflow. Test workflows within a parallel group can run
    #   at the same time. Image Builder starts up to five test workflows in
    #   the group at the same time, and starts additional workflows as
    #   others complete, until all workflows in the group have completed.
    #   This field only applies for test workflows.
    #   @return [String]
    #
    # @!attribute [rw] on_failure
    #   The action to take if the workflow fails. With `CONTINUE`, a failed
    #   workflow is logged and image creation proceeds to the next workflow.
    #   If you don't set a value, the image build fails when the workflow
    #   fails. You can only set this property for test workflows.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowConfiguration AWS API Documentation
    #
    class WorkflowConfiguration < Struct.new(
      :workflow_arn,
      :parameters,
      :parallel_group,
      :on_failure)
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
    #   The total number of steps that the workflow document defines for
    #   this runtime instance of the workflow. Image Builder sets this count
    #   before any steps run. The sum of succeeded, skipped, and failed
    #   steps only reaches this total if every step finishes in one of those
    #   states.
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
    # @!attribute [rw] parallel_group
    #   The name of the test group that included the test workflow resource
    #   at runtime.
    #   @return [String]
    #
    # @!attribute [rw] retried
    #   Indicates whether a retry of the image build superseded this runtime
    #   instance of the workflow. When you retry a failed image build, Image
    #   Builder sets this flag to `true` on the original workflow executions
    #   that the retry re-ran.
    #   @return [Boolean]
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
      :end_time,
      :parallel_group,
      :retried)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a key/value pair that sets the named workflow parameter.
    #
    # @!attribute [rw] name
    #   The name of the workflow parameter to set.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Sets the value for the named workflow parameter.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowParameter AWS API Documentation
    #
    class WorkflowParameter < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a parameter that's used to provide configuration details for
    # the workflow.
    #
    # @!attribute [rw] name
    #   The name of this input parameter.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of input this parameter provides. Supported values are
    #   `string`, `integer`, `boolean`, and `stringList`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowParameterDetail AWS API Documentation
    #
    class WorkflowParameterDetail < Struct.new(
      :name,
      :type,
      :default_value,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A group of fields that describe the current status of the workflow.
    #
    # @!attribute [rw] status
    #   The current state of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Describes how or why the workflow changed state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowState AWS API Documentation
    #
    class WorkflowState < Struct.new(
      :status,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains runtime details for a workflow step that has paused at a
    # `WaitForAction` step, and is waiting for you to send an action.
    #
    # @!attribute [rw] step_execution_id
    #   Uniquely identifies the workflow step that ran for the associated
    #   image build version.
    #   @return [String]
    #
    # @!attribute [rw] image_build_version_arn
    #   The Amazon Resource Name (ARN) of the image build version that ran
    #   the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_execution_id
    #   Uniquely identifies the runtime instance of the workflow that
    #   contains the workflow step that ran for the associated image build
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] workflow_build_version_arn
    #   The Amazon Resource Name (ARN) of the workflow resource that ran.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow step.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The name of the step action.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the workflow step started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowStepExecution AWS API Documentation
    #
    class WorkflowStepExecution < Struct.new(
      :step_execution_id,
      :image_build_version_arn,
      :workflow_execution_id,
      :workflow_build_version_arn,
      :name,
      :action,
      :start_time)
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
    #   Input parameters that Image Builder provides for the workflow step,
    #   as a JSON-encoded string.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The output values that the workflow step produced for this runtime
    #   instance of the workflow, as a JSON-encoded string. For example, a
    #   step that launches an instance outputs the instance ID. If the step
    #   failed, this field contains the error message.
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
    # @!attribute [rw] attempt_number
    #   The current attempt number for the workflow step. The first run is
    #   attempt one. The number increases by one for each retry.
    #   @return [Integer]
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of attempts allowed for the workflow step, based
    #   on the retry configuration in the workflow document. If the step
    #   doesn't configure retries, the maximum is one attempt.
    #   @return [Integer]
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
      :end_time,
      :attempt_number,
      :max_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about the workflow resource.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes the workflow.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   The change description for the current version of the workflow
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The image creation stage that this workflow applies to.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   Describes the current state of the workflow resource.
    #   @return [Types::WorkflowState]
    #
    # @!attribute [rw] date_created
    #   The original creation date of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Contains a list of tags that are defined for the workflow.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowSummary AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about this version of the workflow.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The semantic version of the workflow resource. The format includes
    #   three nodes: &lt;major&gt;.&lt;minor&gt;.&lt;patch&gt;.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Describes the workflow.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The image creation stage that this workflow applies to.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] date_created
    #   The timestamp when Image Builder created the workflow version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/imagebuilder-2019-12-02/WorkflowVersion AWS API Documentation
    #
    class WorkflowVersion < Struct.new(
      :arn,
      :name,
      :version,
      :description,
      :type,
      :owner,
      :date_created)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

