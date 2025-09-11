# frozen_string_literal: true

# This is generated code!

module Aws::GreengrassV2
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permission to perform the action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a request to associate a client device with a core device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html">BatchAssociateClientDeviceWithCoreDevice</a> operation consumes a list of these
    #       requests.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the client device to associate.</p>
    #   @return [String]
    class AssociateClientDeviceWithCoreDeviceEntry < Struct.new(
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an error that occurs from a request to associate a client device with a core
    #       device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html">BatchAssociateClientDeviceWithCoreDevice</a> operation returns a list of these
    #       errors.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing whose associate request failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code for the request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that provides additional information about the error.</p>
    #   @return [String]
    class AssociateClientDeviceWithCoreDeviceErrorEntry < Struct.new(
      :thing_name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role to associate with IoT Greengrass for your
    #         Amazon Web Services account in this Amazon Web Services Region.</p>
    #   @return [String]
    class AssociateServiceRoleToAccountRequest < Struct.new(
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   <p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #   @return [String]
    class AssociateServiceRoleToAccountResponse < Struct.new(
      :associated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a client device that is associated to a core device for cloud
    #       discovery.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the associated client device.</p>
    #   @return [String]
    # @!attribute association_timestamp
    #   <p>The time that the client device was associated, expressed in ISO 8601 format.</p>
    #   @return [Time]
    class AssociatedClientDevice < Struct.new(
      :thing_name,
      :association_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The list of client devices to associate.</p>
    #   @return [Array<Types::AssociateClientDeviceWithCoreDeviceEntry>]
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    class BatchAssociateClientDeviceWithCoreDeviceRequest < Struct.new(
      :entries,
      :core_device_thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>The list of any errors for the entries in the request. Each error entry contains the name
    #         of the IoT thing that failed to associate.</p>
    #   @return [Array<Types::AssociateClientDeviceWithCoreDeviceErrorEntry>]
    class BatchAssociateClientDeviceWithCoreDeviceResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entries
    #   <p>The list of client devices to disassociate.</p>
    #   @return [Array<Types::DisassociateClientDeviceFromCoreDeviceEntry>]
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    class BatchDisassociateClientDeviceFromCoreDeviceRequest < Struct.new(
      :entries,
      :core_device_thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>The list of any errors for the entries in the request. Each error entry contains the name
    #         of the IoT thing that failed to disassociate.</p>
    #   @return [Array<Types::DisassociateClientDeviceFromCoreDeviceErrorEntry>]
    class BatchDisassociateClientDeviceFromCoreDeviceResponse < Struct.new(
      :error_entries,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class CancelDeploymentRequest < Struct.new(
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that communicates if the cancel was successful.</p>
    #   @return [String]
    class CancelDeploymentResponse < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the status of a component version in the IoT Greengrass service.</p>
    # @!attribute component_state
    #   <p>The state of the component version.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that communicates details, such as errors, about the status of the component
    #         version.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>A dictionary of errors that communicate why the component version is in an error state.
    #         For example, if IoT Greengrass can't access an artifact for the component version, then
    #           <code>errors</code> contains the artifact's URI as a key, and the error message as the value
    #         for that key.</p>
    #   @return [Hash<String, String>]
    # @!attribute vendor_guidance
    #   <p>The vendor guidance state for the component version. This state indicates whether
    #         the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – This component version is available and recommended for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.
    #             You can deploy this component version, but we recommend that you use a different version of this component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> – This component version has been deleted by its publisher, so you can't
    #             deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vendor_guidance_message
    #   <p>A message that communicates details about the vendor guidance state
    #       of the component version. This message communicates why a component version is discontinued or deleted.</p>
    #   @return [String]
    class CloudComponentStatus < Struct.new(
      :component_state,
      :message,
      :errors,
      :vendor_guidance,
      :vendor_guidance_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component.</p>
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the component and its details.</p>
    #   @return [Types::ComponentLatestVersion]
    class Component < Struct.new(
      :arn,
      :component_name,
      :latest_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component that is a candidate to deploy to a Greengrass core
    #       device.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute version_requirements
    #   <p>The version requirements for the component's dependencies. Greengrass core devices get the
    #         version requirements from component recipes.</p>
    #            <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href="https://semver.org/">Semantic Versioning</a>.</p>
    #   @return [Hash<String, String>]
    class ComponentCandidate < Struct.new(
      :component_name,
      :component_version,
      :version_requirements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a deployment's update to a component's configuration on
    #       Greengrass core devices. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html">Update component
    #         configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @!attribute merge
    #   <p>A serialized JSON string that contains the configuration object to merge to target
    #         devices. The core device merges this configuration with the component's existing
    #         configuration. If this is the first time a component deploys on a device, the core device
    #         merges this configuration with the component's default configuration. This means that the core
    #         device keeps it's existing configuration for keys and values that you don't specify in this
    #         object. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#merge-configuration-update">Merge configuration updates</a> in the <i>IoT Greengrass V2 Developer
    #         Guide</i>.</p>
    #   @return [String]
    # @!attribute reset
    #   <p>The list of configuration nodes to reset to default values on target devices. Use JSON
    #         pointers to specify each node to reset. JSON pointers start with a forward slash
    #           (<code>/</code>) and use forward slashes to separate the key for each level in the object.
    #         For more information, see the <a href="https://tools.ietf.org/html/rfc6901">JSON pointer
    #           specification</a> and <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#reset-configuration-update">Reset configuration updates</a> in the <i>IoT Greengrass V2 Developer
    #         Guide</i>.</p>
    #   @return [Array<String>]
    class ComponentConfigurationUpdate < Struct.new(
      :merge,
      :reset,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component dependency for a Lambda function component.</p>
    # @!attribute version_requirement
    #   <p>The component version requirement for the component dependency.</p>
    #            <p>IoT Greengrass V2 uses semantic version constraints. For more information, see <a href="https://semver.org/">Semantic Versioning</a>.</p>
    #   @return [String]
    # @!attribute dependency_type
    #   <p>The type of this dependency. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SOFT</code> – The component doesn't restart if the dependency changes
    #             state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>HARD</code> – The component restarts if the dependency changes
    #             state.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>HARD</code>
    #            </p>
    #   @return [String]
    class ComponentDependencyRequirement < Struct.new(
      :version_requirement,
      :dependency_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component to deploy.</p>
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute configuration_update
    #   <p>The configuration updates to deploy for the component. You can define
    #           <i>reset</i> updates and <i>merge</i> updates. A reset updates
    #         the keys that you specify to the default configuration for the component. A merge updates the
    #         core device's component configuration with the keys and values that you specify. The IoT Greengrass Core
    #         software applies reset updates before it applies merge updates. For more information, see
    #           <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html">Update component
    #           configurations</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Types::ComponentConfigurationUpdate]
    # @!attribute run_with
    #   <p>The system user and group that the IoT Greengrass Core software uses to run component processes on the
    #         core device. If you omit this parameter, the IoT Greengrass Core software uses the system user and group
    #         that you configure for the core device. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
    #           Guide</i>.</p>
    #   @return [Types::ComponentRunWith]
    class ComponentDeploymentSpecification < Struct.new(
      :component_version,
      :configuration_update,
      :run_with,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the latest version of a component.</p>
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the component version.</p>
    #   @return [String]
    # @!attribute publisher
    #   <p>The publisher of the component version.</p>
    #   @return [String]
    # @!attribute platforms
    #   <p>The platforms that the component version supports.</p>
    #   @return [Array<Types::ComponentPlatform>]
    class ComponentLatestVersion < Struct.new(
      :arn,
      :component_version,
      :creation_timestamp,
      :description,
      :publisher,
      :platforms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a platform that a component supports.</p>
    # @!attribute name
    #   <p>The friendly name of the platform. This name helps you identify the platform.</p>
    #            <p>If you omit this parameter, IoT Greengrass creates a friendly name from the <code>os</code> and
    #           <code>architecture</code> of the platform.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A dictionary of attributes for the platform. The IoT Greengrass Core software defines the
    #           <code>os</code> and <code>architecture</code> by default. You can specify additional
    #         platform attributes for a core device when you deploy the Greengrass nucleus component. For more
    #         information, see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html">Greengrass nucleus
    #           component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ComponentPlatform < Struct.new(
      :name,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information system user and group that the IoT Greengrass Core software uses to run component
    #       processes on the core device. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user">Configure the user and group that run components</a> in the <i>IoT Greengrass V2 Developer
    #         Guide</i>.</p>
    # @!attribute posix_user
    #   <p>The POSIX system user and, optionally, group to use to run this component on Linux core
    #         devices. The user, and group if specified, must exist on each Linux core device. Specify the
    #         user and group separated by a colon (<code>:</code>) in the following format:
    #           <code>user:group</code>. The group is optional. If you don't specify a group, the IoT Greengrass Core
    #         software uses the primary user for the group.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default system user and group that
    #         you configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user">Configure the user and group that run components</a>.</p>
    #   @return [String]
    # @!attribute system_resource_limits
    #   <p>The system resource limits to apply to this component's process on the core device. IoT Greengrass
    #         currently supports this feature on only Linux core devices.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default system resource limits
    #         that you configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits">Configure system resource limits for components</a>.</p>
    #   @return [Types::SystemResourceLimits]
    # @!attribute windows_user
    #   <p>The Windows user to use to run this component on Windows core devices. The user must exist
    #         on each Windows core device, and its name and password must be in the LocalSystem account's
    #         Credentials Manager instance.</p>
    #            <p>If you omit this parameter, the IoT Greengrass Core software uses the default Windows user that you
    #         configure on the Greengrass nucleus component. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user">Configure the user and group that run components</a>.</p>
    #   @return [String]
    class ComponentRunWith < Struct.new(
      :posix_user,
      :system_resource_limits,
      :windows_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component version in a list.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    class ComponentVersionListItem < Struct.new(
      :component_name,
      :component_version,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that conflicts with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that conflicts with the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an endpoint and port where client devices can connect to an
    #       MQTT broker on a Greengrass core device.</p>
    # @!attribute id
    #   <p>An ID for the connectivity information.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS address where client devices can connect to an MQTT broker on the
    #         Greengrass core device.</p>
    #   @return [String]
    # @!attribute port_number
    #   <p>The port where the MQTT broker operates on the core device. This port is typically 8883,
    #         which is the default port for the MQTT broker component that runs on core devices.</p>
    #   @return [Integer]
    # @!attribute metadata
    #   <p>Additional metadata to provide to client devices that connect to this core device.</p>
    #   @return [String]
    class ConnectivityInfo < Struct.new(
      :id,
      :host_address,
      :port_number,
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:port_number] = 0 unless options.key?(:port_number)
        super
      end
    end

    # <p>Contains information about a Greengrass core device, which is an IoT thing that runs the IoT Greengrass
    #       Core software.</p>
    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the core device. Core devices can have the following
    #         statuses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_status_update_timestamp
    #   <p>The time at which the core device's status last updated, expressed in ISO 8601
    #         format.</p>
    #   @return [Time]
    # @!attribute platform
    #   <p>The operating system platform that the core device runs.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The computer architecture of the core device.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime for the core device. The runtime can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_classic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_lite</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CoreDevice < Struct.new(
      :core_device_thing_name,
      :status,
      :last_status_update_timestamp,
      :platform,
      :architecture,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute inline_recipe
    #   <p>The recipe to use to create the component. The recipe defines the component's metadata,
    #         parameters, dependencies, lifecycle, artifacts, and platform compatibility.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #   @return [String]
    # @!attribute lambda_function
    #   <p>The parameters to create a component from a Lambda function.</p>
    #            <p>You must specify either <code>inlineRecipe</code> or <code>lambdaFunction</code>.</p>
    #   @return [Types::LambdaFunctionRecipeSource]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    #       idempotent requests for up to 8 hours.</p>
    #   @return [String]
    class CreateComponentVersionRequest < Struct.new(
      :inline_recipe,
      :lambda_function,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the component version in IoT Greengrass V2. This status
    #         is different from the status of the component on a core device.</p>
    #   @return [Types::CloudComponentStatus]
    class CreateComponentVersionResponse < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group. When creating a subdeployment, the targetARN can only be a thing group.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    #   @return [Hash<String, Types::ComponentDeploymentSpecification>]
    # @!attribute iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    #   @return [Types::DeploymentIoTJobConfiguration]
    # @!attribute deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    #   @return [Types::DeploymentPolicies]
    # @!attribute parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you can provide to ensure that the request is idempotent. 
    #       Idempotency means that the request is successfully processed only once, even if you send the request multiple times. 
    #       When a request succeeds, and you specify the same client token for subsequent successful requests, the IoT Greengrass V2 service 
    #       returns the successful response that it caches from the previous request. IoT Greengrass V2 caches successful responses for 
    #       idempotent requests for up to 8 hours.</p>
    #   @return [String]
    class CreateDeploymentRequest < Struct.new(
      :target_arn,
      :deployment_name,
      :components,
      :iot_job_configuration,
      :deployment_policies,
      :parent_target_arn,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    class CreateDeploymentResponse < Struct.new(
      :deployment_id,
      :iot_job_id,
      :iot_job_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    class DeleteComponentRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    class DeleteCoreDeviceRequest < Struct.new(
      :core_device_thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class DeleteDeploymentRequest < Struct.new(
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a deployment.</p>
    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group. When creating a subdeployment, the targetARN can only be a thing group.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision number of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute deployment_status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute is_latest_for_target
    #   <p>Whether or not the deployment is the latest revision for its target.</p>
    #   @return [Boolean]
    # @!attribute parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    #   @return [String]
    class Deployment < Struct.new(
      :target_arn,
      :revision_id,
      :deployment_id,
      :deployment_name,
      :creation_timestamp,
      :deployment_status,
      :is_latest_for_target,
      :parent_target_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_latest_for_target] = false unless options.key?(:is_latest_for_target)
        super
      end
    end

    # <p>Contains information about a deployment's policy that defines when components are safe to
    #       update.</p>
    #          <p>Each component on a device can report whether or not it's ready to update. After a
    #       component and its dependencies are ready, they can apply the update in the deployment. You can
    #       configure whether or not the deployment notifies components of an update and waits for a
    #       response. You specify the amount of time each component has to respond to the update
    #       notification.</p>
    # @!attribute timeout_in_seconds
    #   <p>The amount of time in seconds that each component on a device has to report that it's safe
    #         to update. If the component waits for longer than this timeout, then the deployment proceeds
    #         on the device.</p>
    #            <p>Default: <code>60</code>
    #            </p>
    #   @return [Integer]
    # @!attribute action
    #   <p>Whether or not to notify components and wait for components to become safe to update.
    #         Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NOTIFY_COMPONENTS</code> – The deployment notifies each component before
    #             it stops and updates that component. Components can use the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetocomponentupdates">SubscribeToComponentUpdates</a> IPC operation to receive these notifications. Then,
    #             components can respond with the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-defercomponentupdate">DeferComponentUpdate</a> IPC operation. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create
    #               deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIP_NOTIFY_COMPONENTS</code> – The deployment doesn't notify components
    #             or wait for them to be safe to update.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>NOTIFY_COMPONENTS</code>
    #            </p>
    #   @return [String]
    class DeploymentComponentUpdatePolicy < Struct.new(
      :timeout_in_seconds,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        super
      end
    end

    # <p>Contains information about how long a component on a core device can validate its
    #       configuration updates before it times out. Components can use the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetovalidateconfigurationupdates">SubscribeToValidateConfigurationUpdates</a> IPC operation to receive notifications when
    #       a deployment specifies a configuration update. Then, components can respond with the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-sendconfigurationvalidityreport">SendConfigurationValidityReport</a> IPC operation. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html">Create
    #         deployments</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    # @!attribute timeout_in_seconds
    #   <p>The amount of time in seconds that a component can validate its configuration updates. If
    #         the validation time exceeds this timeout, then the deployment proceeds for the device.</p>
    #            <p>Default: <code>30</code>
    #            </p>
    #   @return [Integer]
    class DeploymentConfigurationValidationPolicy < Struct.new(
      :timeout_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        super
      end
    end

    # <p>Contains information about an IoT job configuration.</p>
    # @!attribute job_executions_rollout_config
    #   <p>The rollout configuration for the job. This configuration defines the rate at which the
    #         job rolls out to the fleet of target devices.</p>
    #   @return [Types::IoTJobExecutionsRolloutConfig]
    # @!attribute abort_config
    #   <p>The stop configuration for the job. This configuration defines when and how to stop a job
    #         rollout.</p>
    #   @return [Types::IoTJobAbortConfig]
    # @!attribute timeout_config
    #   <p>The timeout configuration for the job. This configuration defines the amount of time each
    #         device has to complete the job.</p>
    #   @return [Types::IoTJobTimeoutConfig]
    class DeploymentIoTJobConfiguration < Struct.new(
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about policies that define how a deployment updates components and
    #       handles failure.</p>
    # @!attribute failure_handling_policy
    #   <p>The failure handling policy for the configuration deployment. This policy defines what to
    #         do if the deployment fails.</p>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    #   @return [String]
    # @!attribute component_update_policy
    #   <p>The component update policy for the configuration deployment. This policy defines when
    #         it's safe to deploy the configuration to devices.</p>
    #   @return [Types::DeploymentComponentUpdatePolicy]
    # @!attribute configuration_validation_policy
    #   <p>The configuration validation policy for the configuration deployment. This policy defines
    #         how long each component has to validate its configure updates.</p>
    #   @return [Types::DeploymentConfigurationValidationPolicy]
    class DeploymentPolicies < Struct.new(
      :failure_handling_policy,
      :component_update_policy,
      :configuration_validation_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    class DescribeComponentRequest < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the component was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute publisher
    #   <p>The publisher of the component version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the component version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the component version in IoT Greengrass V2. This status
    #         is different from the status of the component on a core device.</p>
    #   @return [Types::CloudComponentStatus]
    # @!attribute platforms
    #   <p>The platforms that the component version supports.</p>
    #   @return [Array<Types::ComponentPlatform>]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class DescribeComponentResponse < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :publisher,
      :description,
      :status,
      :platforms,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a request to disassociate a client device from a core device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html">BatchDisassociateClientDeviceWithCoreDevice</a> operation consumes a list of these
    #       requests.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing that represents the client device to disassociate.</p>
    #   @return [String]
    class DisassociateClientDeviceFromCoreDeviceEntry < Struct.new(
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains an error that occurs from a request to disassociate a client device from a core
    #       device. The <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html">BatchDisassociateClientDeviceWithCoreDevice</a> operation returns a list of these
    #       errors.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing whose disassociate request failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code for the request.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that provides additional information about the error.</p>
    #   @return [String]
    class DisassociateClientDeviceFromCoreDeviceErrorEntry < Struct.new(
      :thing_name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateServiceRoleFromAccountRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute disassociated_at
    #   <p>The time when the service role was disassociated from IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #   @return [String]
    class DisassociateServiceRoleFromAccountResponse < Struct.new(
      :disassociated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a deployment job that IoT Greengrass sends to a Greengrass core device.</p>
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the deployment job.</p>
    #   @return [String]
    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #   @return [String]
    # @!attribute core_device_execution_status
    #   <p>The status of the deployment job on the Greengrass core device.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> – The deployment job is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUED</code> – The deployment job is in the job queue and waiting to
    #             run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> – The deployment failed. For more information, see the
    #               <code>statusDetails</code> field.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code> – The deployment to an IoT thing was completed
    #             successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TIMED_OUT</code> – The deployment didn't complete in the allotted time.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CANCELED</code> – The deployment was canceled by the user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REJECTED</code> – The deployment was rejected. For more information, see
    #             the <code>statusDetails</code> field.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> – The deployment to an IoT thing group was completed
    #             successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason code for the update, if the job was updated.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute modified_timestamp
    #   <p>The time at which the deployment job was last modified, expressed in ISO 8601
    #         format.</p>
    #   @return [Time]
    # @!attribute status_details
    #   <p>The status details that explain why a deployment has an error. This response will be null
    #         if the deployment is in a success state.</p>
    #   @return [Types::EffectiveDeploymentStatusDetails]
    class EffectiveDeployment < Struct.new(
      :deployment_id,
      :deployment_name,
      :iot_job_id,
      :iot_job_arn,
      :description,
      :target_arn,
      :core_device_execution_status,
      :reason,
      :creation_timestamp,
      :modified_timestamp,
      :status_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all error-related information for the deployment record. The status details will
    #       be null if the deployment is in a success state.</p>
    #          <note>
    #             <p>Greengrass nucleus v2.8.0 or later is required to get an accurate <code>errorStack</code> and
    #           <code>errorTypes</code> response. This field will not be returned for earlier Greengrass nucleus
    #         versions.</p>
    #          </note>
    # @!attribute error_stack
    #   <p>Contains an ordered list of short error codes that range from the most generic error to
    #         the most specific one. The error codes describe the reason for failure whenever the
    #           <code>coreDeviceExecutionStatus</code> is in a failed state. The response will be an empty
    #         list if there is no error.</p>
    #   @return [Array<String>]
    # @!attribute error_types
    #   <p>Contains tags which describe the error. You can use the error types to classify errors to
    #         assist with remediating the failure. The response will be an empty list if there is no
    #         error.</p>
    #   @return [Array<String>]
    class EffectiveDeploymentStatusDetails < Struct.new(
      :error_stack,
      :error_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipe_output_format
    #   <p>The format of the recipe.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    class GetComponentRequest < Struct.new(
      :recipe_output_format,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recipe_output_format
    #   <p>The format of the recipe.</p>
    #   @return [String]
    # @!attribute recipe
    #   <p>The recipe of the component version.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class GetComponentResponse < Struct.new(
      :recipe_output_format,
      :recipe,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version. Specify the ARN of a public or a Lambda component version.</p>
    #   @return [String]
    # @!attribute artifact_name
    #   <p>The name of the artifact.</p>
    #            <p>You can use the <a href="https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html">GetComponent</a> operation to
    #         download the component recipe, which includes the URI of the artifact. The artifact name is
    #         the section of the URI after the scheme. For example, in the artifact URI
    #           <code>greengrass:SomeArtifact.zip</code>, the artifact name is
    #         <code>SomeArtifact.zip</code>.</p>
    #   @return [String]
    # @!attribute s3_endpoint_type
    #   <p>Specifies the endpoint to use when getting Amazon S3 pre-signed URLs.</p>
    #            <p>All Amazon Web Services Regions except US East (N. Virginia) use <code>REGIONAL</code> in all cases.
    #         In the US East (N. Virginia) Region the default is <code>GLOBAL</code>, but you can change it
    #         to <code>REGIONAL</code> with this parameter.</p>
    #   @return [String]
    # @!attribute iot_endpoint_type
    #   <p>Determines if the Amazon S3 URL returned is a FIPS pre-signed URL endpoint. 
    #         Specify <code>fips</code> if you want the returned Amazon S3 pre-signed URL to point to 
    #         an Amazon S3 FIPS endpoint. If you don't specify a value, the default is <code>standard</code>.</p>
    #   @return [String]
    class GetComponentVersionArtifactRequest < Struct.new(
      :arn,
      :artifact_name,
      :s3_endpoint_type,
      :iot_endpoint_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pre_signed_url
    #   <p>The URL of the artifact.</p>
    #   @return [String]
    class GetComponentVersionArtifactResponse < Struct.new(
      :pre_signed_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    class GetConnectivityInfoRequest < Struct.new(
      :thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connectivity_info
    #   <p>The connectivity information for the core device.</p>
    #   @return [Array<Types::ConnectivityInfo>]
    # @!attribute message
    #   <p>A message about the connectivity information request.</p>
    #   @return [String]
    class GetConnectivityInfoResponse < Struct.new(
      :connectivity_info,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    class GetCoreDeviceRequest < Struct.new(
      :core_device_thing_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute core_version
    #   <p>The version of the IoT Greengrass Core software that the core device runs. This version is equivalent to
    #         the version of the Greengrass nucleus component that runs on the core device. For more information,
    #         see the <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html">Greengrass nucleus
    #           component</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The operating system platform that the core device runs.</p>
    #   @return [String]
    # @!attribute architecture
    #   <p>The computer architecture of the core device.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime for the core device. The runtime can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_classic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_lite</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the core device. The core device status can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_status_update_timestamp
    #   <p>The time at which the core device's status last updated, expressed in ISO 8601
    #         format.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class GetCoreDeviceResponse < Struct.new(
      :core_device_thing_name,
      :core_version,
      :platform,
      :architecture,
      :runtime,
      :status,
      :last_status_update_timestamp,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    class GetDeploymentRequest < Struct.new(
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #   @return [String]
    # @!attribute revision_id
    #   <p>The revision number of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_id
    #   <p>The ID of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute iot_job_id
    #   <p>The ID of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    # @!attribute iot_job_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT job that applies the deployment to target devices.</p>
    #   @return [String]
    # @!attribute components
    #   <p>The components to deploy. This is a dictionary, where each key is the name of a component,
    #           and each key's value is the version and configuration to deploy for that component.</p>
    #   @return [Hash<String, Types::ComponentDeploymentSpecification>]
    # @!attribute deployment_policies
    #   <p>The deployment policies for the deployment. These policies define how the deployment
    #         updates components and handles failure.</p>
    #   @return [Types::DeploymentPolicies]
    # @!attribute iot_job_configuration
    #   <p>The job configuration for the deployment configuration. The job configuration specifies
    #         the rollout, timeout, and stop configurations for the deployment configuration.</p>
    #   @return [Types::DeploymentIoTJobConfiguration]
    # @!attribute creation_timestamp
    #   <p>The time at which the deployment was created, expressed in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute is_latest_for_target
    #   <p>Whether or not the deployment is the latest revision for its target.</p>
    #   @return [Boolean]
    # @!attribute parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class GetDeploymentResponse < Struct.new(
      :target_arn,
      :revision_id,
      :deployment_id,
      :deployment_name,
      :deployment_status,
      :iot_job_id,
      :iot_job_arn,
      :components,
      :deployment_policies,
      :iot_job_configuration,
      :creation_timestamp,
      :is_latest_for_target,
      :parent_target_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_latest_for_target] = false unless options.key?(:is_latest_for_target)
        super
      end
    end

    class GetServiceRoleForAccountRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   <p>The time when the service role was associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the service role that is associated with IoT Greengrass for your Amazon Web Services account in this
    #         Amazon Web Services Region.</p>
    #   @return [String]
    class GetServiceRoleForAccountResponse < Struct.new(
      :associated_at,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component on a Greengrass core device.</p>
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute lifecycle_state
    #   <p>The lifecycle state of the component.</p>
    #   @return [String]
    # @!attribute lifecycle_state_details
    #   <p>A detailed response about the lifecycle state of the component that explains the reason
    #         why a component has an error or is broken.</p>
    #   @return [String]
    # @!attribute is_root
    #   <p>Whether or not the component is a root component.</p>
    #   @return [Boolean]
    # @!attribute last_status_change_timestamp
    #   <p>The status of how current the data is.</p>
    #            <p>This response is based off of component state changes. The status reflects component
    #         disruptions and deployments. If a component only sees a configuration update during a
    #         deployment, it might not undergo a state change and this status would not be updated.</p>
    #   @return [Time]
    # @!attribute last_reported_timestamp
    #   <p>The last time the Greengrass core device sent a message containing a component's state to the
    #         Amazon Web Services Cloud.</p>
    #            <p>A component does not need to see a state change for this field to update.</p>
    #   @return [Time]
    # @!attribute last_installation_source
    #   <p>The most recent deployment source that brought the component to the Greengrass core device. For
    #         a thing group deployment or thing deployment, the source will be the ID of the last deployment
    #         that contained the component. For local deployments it will be <code>LOCAL</code>.</p>
    #            <note>
    #               <p>Any deployment will attempt to reinstall currently broken components on the device,
    #           which will update the last installation source.</p>
    #            </note>
    #   @return [String]
    # @!attribute lifecycle_status_codes
    #   <p>The status codes that indicate the reason for failure whenever the
    #           <code>lifecycleState</code> has an error or is in a broken state.</p>
    #            <note>
    #               <p>Greengrass nucleus v2.8.0 or later is required to get an accurate
    #             <code>lifecycleStatusCodes</code> response. This response can be inaccurate in earlier
    #           Greengrass nucleus versions.</p>
    #            </note>
    #   @return [Array<String>]
    class InstalledComponent < Struct.new(
      :component_name,
      :component_version,
      :lifecycle_state,
      :lifecycle_state_details,
      :is_root,
      :last_status_change_timestamp,
      :last_reported_timestamp,
      :last_installation_source,
      :lifecycle_status_codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_root] = false unless options.key?(:is_root)
        super
      end
    end

    # <p>IoT Greengrass can't process your request right now. Try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The amount of time to wait before you retry the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>Contains a list of criteria that define when and how to cancel a configuration
    #       deployment.</p>
    # @!attribute criteria_list
    #   <p>The list of criteria that define when and how to cancel the configuration
    #         deployment.</p>
    #   @return [Array<Types::IoTJobAbortCriteria>]
    class IoTJobAbortConfig < Struct.new(
      :criteria_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains criteria that define when and how to cancel a job.</p>
    #          <p>The deployment stops if the following conditions are true:</p>
    #          <ol>
    #             <li>
    #                <p>The number of things that receive the deployment exceeds the
    #             <code>minNumberOfExecutedThings</code>.</p>
    #             </li>
    #             <li>
    #                <p>The percentage of failures with type <code>failureType</code> exceeds the
    #             <code>thresholdPercentage</code>.</p>
    #             </li>
    #          </ol>
    # @!attribute failure_type
    #   <p>The type of job deployment failure that can cancel a job.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action to perform when the criteria are met.</p>
    #   @return [String]
    # @!attribute threshold_percentage
    #   <p>The minimum percentage of <code>failureType</code> failures that occur before the job can
    #         cancel.</p>
    #            <p>This parameter supports up to two digits after the decimal (for example, you can specify
    #           <code>10.9</code> or <code>10.99</code>, but not <code>10.999</code>).</p>
    #   @return [Float]
    # @!attribute min_number_of_executed_things
    #   <p>The minimum number of things that receive the configuration before the job can
    #         cancel.</p>
    #   @return [Integer]
    class IoTJobAbortCriteria < Struct.new(
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:threshold_percentage] = 0 unless options.key?(:threshold_percentage)
        super
      end
    end

    # <p>Contains information about the rollout configuration for a job. This configuration defines
    #       the rate at which the job deploys a configuration to a fleet of target devices.</p>
    # @!attribute exponential_rate
    #   <p>The exponential rate to increase the job rollout rate.</p>
    #   @return [Types::IoTJobExponentialRolloutRate]
    # @!attribute maximum_per_minute
    #   <p>The maximum number of devices that receive a pending job notification, per minute.</p>
    #   @return [Integer]
    class IoTJobExecutionsRolloutConfig < Struct.new(
      :exponential_rate,
      :maximum_per_minute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an exponential rollout rate for a configuration deployment
    #       job.</p>
    # @!attribute base_rate_per_minute
    #   <p>The minimum number of devices that receive a pending job notification, per minute, when
    #         the job starts. This parameter defines the initial rollout rate of the job.</p>
    #   @return [Integer]
    # @!attribute increment_factor
    #   <p>The exponential factor to increase the rollout rate for the job.</p>
    #            <p>This parameter supports up to one digit after the decimal (for example, you can specify
    #           <code>1.5</code>, but not <code>1.55</code>).</p>
    #   @return [Float]
    # @!attribute rate_increase_criteria
    #   <p>The criteria to increase the rollout rate for the job.</p>
    #   @return [Types::IoTJobRateIncreaseCriteria]
    class IoTJobExponentialRolloutRate < Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about criteria to meet before a job increases its rollout rate.
    #       Specify either <code>numberOfNotifiedThings</code> or
    #       <code>numberOfSucceededThings</code>.</p>
    # @!attribute number_of_notified_things
    #   <p>The number of devices to receive the job notification before the rollout rate
    #         increases.</p>
    #   @return [Integer]
    # @!attribute number_of_succeeded_things
    #   <p>The number of devices to successfully run the configuration job before the rollout rate
    #         increases.</p>
    #   @return [Integer]
    class IoTJobRateIncreaseCriteria < Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the timeout configuration for a job.</p>
    # @!attribute in_progress_timeout_in_minutes
    #   <p>The amount of time, in minutes, that devices have to complete the job. The timer starts
    #         when the job status is set to <code>IN_PROGRESS</code>. If the job status doesn't change to a
    #         terminal state before the time expires, then the job status is set to
    #         <code>TIMED_OUT</code>.</p>
    #            <p>The timeout interval must be between 1 minute and 7 days (10080 minutes).</p>
    #   @return [Integer]
    class IoTJobTimeoutConfig < Struct.new(
      :in_progress_timeout_in_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:in_progress_timeout_in_minutes] = nil unless options.key?(:in_progress_timeout_in_minutes)
        super
      end
    end

    # <p>Contains information about a container in which Lambda functions run on Greengrass core
    #       devices.</p>
    # @!attribute memory_size_in_kb
    #   <p>The memory size of the container, expressed in kilobytes.</p>
    #            <p>Default: <code>16384</code> (16 MB)</p>
    #   @return [Integer]
    # @!attribute mount_ro_sysfs
    #   <p>Whether or not the container can read information from the device's <code>/sys</code>
    #         folder.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute volumes
    #   <p>The list of volumes that the container can access.</p>
    #   @return [Array<Types::LambdaVolumeMount>]
    # @!attribute devices
    #   <p>The list of system devices that the container can access.</p>
    #   @return [Array<Types::LambdaDeviceMount>]
    class LambdaContainerParams < Struct.new(
      :memory_size_in_kb,
      :mount_ro_sysfs,
      :volumes,
      :devices,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:memory_size_in_kb] = nil unless options.key?(:memory_size_in_kb)
        options[:mount_ro_sysfs] = nil unless options.key?(:mount_ro_sysfs)
        super
      end
    end

    # <p>Contains information about a device that Linux processes in a container can access.</p>
    # @!attribute path
    #   <p>The mount path for the device in the file system.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>The permission to access the device: read/only (<code>ro</code>) or read/write
    #           (<code>rw</code>).</p>
    #            <p>Default: <code>ro</code>
    #            </p>
    #   @return [String]
    # @!attribute add_group_owner
    #   <p>Whether or not to add the component's system user as an owner of the device.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class LambdaDeviceMount < Struct.new(
      :path,
      :permission,
      :add_group_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:add_group_owner] = nil unless options.key?(:add_group_owner)
        super
      end
    end

    # <p>Contains information about an event source for an Lambda function. The event source
    #       defines the topics on which this Lambda function subscribes to receive messages that run the
    #       function.</p>
    # @!attribute topic
    #   <p>The topic to which to subscribe to receive event messages.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of event source. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUB_SUB</code> – Subscribe to local publish/subscribe messages. This
    #             event source type doesn't support MQTT wildcards (<code>+</code> and <code>#</code>) in
    #             the event source topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IOT_CORE</code> – Subscribe to Amazon Web Services IoT Core MQTT messages. This event source
    #             type supports MQTT wildcards (<code>+</code> and <code>#</code>) in the event source
    #             topic.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class LambdaEventSource < Struct.new(
      :topic,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains parameters for a Lambda function that runs on IoT Greengrass.</p>
    # @!attribute event_sources
    #   <p>The list of event sources to which to subscribe to receive work messages. The Lambda
    #         function runs when it receives a message from an event source. You can subscribe this function
    #         to local publish/subscribe messages and Amazon Web Services IoT Core MQTT messages.</p>
    #   @return [Array<Types::LambdaEventSource>]
    # @!attribute max_queue_size
    #   <p>The maximum size of the message queue for the Lambda function component. The IoT Greengrass core
    #         stores messages in a FIFO (first-in-first-out) queue until it can run the Lambda function to
    #         consume each message.</p>
    #   @return [Integer]
    # @!attribute max_instances_count
    #   <p>The maximum number of instances that a non-pinned Lambda function can run at the same
    #         time.</p>
    #   @return [Integer]
    # @!attribute max_idle_time_in_seconds
    #   <p>The maximum amount of time in seconds that a non-pinned Lambda function can idle before the
    #         IoT Greengrass Core software stops its process.</p>
    #   @return [Integer]
    # @!attribute timeout_in_seconds
    #   <p>The maximum amount of time in seconds that the Lambda function can process a work
    #         item.</p>
    #   @return [Integer]
    # @!attribute status_timeout_in_seconds
    #   <p>The interval in seconds at which a pinned (also known as long-lived) Lambda function
    #         component sends status updates to the Lambda manager component.</p>
    #   @return [Integer]
    # @!attribute pinned
    #   <p>Whether or not the Lambda function is pinned, or long-lived.</p>
    #            <ul>
    #               <li>
    #                  <p>A pinned Lambda function starts when IoT Greengrass starts and keeps running in its own
    #             container.</p>
    #               </li>
    #               <li>
    #                  <p>A non-pinned Lambda function starts only when it receives a work item and exists after
    #             it idles for <code>maxIdleTimeInSeconds</code>. If the function has multiple work items,
    #             the IoT Greengrass Core software creates multiple instances of the function.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute input_payload_encoding_type
    #   <p>The encoding type that the Lambda function supports.</p>
    #            <p>Default: <code>json</code>
    #            </p>
    #   @return [String]
    # @!attribute exec_args
    #   <p>The list of arguments to pass to the Lambda function when it runs.</p>
    #   @return [Array<String>]
    # @!attribute environment_variables
    #   <p>The map of environment variables that are available to the Lambda function when it
    #         runs.</p>
    #   @return [Hash<String, String>]
    # @!attribute linux_process_params
    #   <p>The parameters for the Linux process that contains the Lambda function.</p>
    #   @return [Types::LambdaLinuxProcessParams]
    class LambdaExecutionParameters < Struct.new(
      :event_sources,
      :max_queue_size,
      :max_instances_count,
      :max_idle_time_in_seconds,
      :timeout_in_seconds,
      :status_timeout_in_seconds,
      :pinned,
      :input_payload_encoding_type,
      :exec_args,
      :environment_variables,
      :linux_process_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_queue_size] = nil unless options.key?(:max_queue_size)
        options[:max_instances_count] = nil unless options.key?(:max_instances_count)
        options[:max_idle_time_in_seconds] = nil unless options.key?(:max_idle_time_in_seconds)
        options[:timeout_in_seconds] = nil unless options.key?(:timeout_in_seconds)
        options[:status_timeout_in_seconds] = nil unless options.key?(:status_timeout_in_seconds)
        options[:pinned] = nil unless options.key?(:pinned)
        super
      end
    end

    # <p>Contains information about an Lambda function to import to create a component.</p>
    # @!attribute lambda_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the Lambda function. The ARN must include the version of the function to
    #         import. You can't use version aliases like <code>$LATEST</code>.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #            <p>Defaults to the name of the Lambda function.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #            <p>Defaults to the version of the Lambda function as a semantic version. For example, if your
    #         function version is <code>3</code>, the component version becomes <code>3.0.0</code>.</p>
    #   @return [String]
    # @!attribute component_platforms
    #   <p>The platforms that the component version supports.</p>
    #   @return [Array<Types::ComponentPlatform>]
    # @!attribute component_dependencies
    #   <p>The component versions on which this Lambda function component depends.</p>
    #   @return [Hash<String, Types::ComponentDependencyRequirement>]
    # @!attribute component_lambda_parameters
    #   <p>The system and runtime parameters for the Lambda function as it runs on the Greengrass core
    #         device.</p>
    #   @return [Types::LambdaExecutionParameters]
    class LambdaFunctionRecipeSource < Struct.new(
      :lambda_arn,
      :component_name,
      :component_version,
      :component_platforms,
      :component_dependencies,
      :component_lambda_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains parameters for a Linux process that contains an Lambda function.</p>
    # @!attribute isolation_mode
    #   <p>The isolation mode for the process that contains the Lambda function. The process can run
    #         in an isolated runtime environment inside the IoT Greengrass container, or as a regular process outside
    #         any container.</p>
    #            <p>Default: <code>GreengrassContainer</code>
    #            </p>
    #   @return [String]
    # @!attribute container_params
    #   <p>The parameters for the container in which the Lambda function runs.</p>
    #   @return [Types::LambdaContainerParams]
    class LambdaLinuxProcessParams < Struct.new(
      :isolation_mode,
      :container_params,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a volume that Linux processes in a container can access. When
    #       you define a volume, the IoT Greengrass Core software mounts the source files to the destination inside the
    #       container.</p>
    # @!attribute source_path
    #   <p>The path to the physical volume in the file system.</p>
    #   @return [String]
    # @!attribute destination_path
    #   <p>The path to the logical volume in the file system.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>The permission to access the volume: read/only (<code>ro</code>) or read/write
    #           (<code>rw</code>).</p>
    #            <p>Default: <code>ro</code>
    #            </p>
    #   @return [String]
    # @!attribute add_group_owner
    #   <p>Whether or not to add the IoT Greengrass user group as an owner of the volume.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #   @return [Boolean]
    class LambdaVolumeMount < Struct.new(
      :source_path,
      :destination_path,
      :permission,
      :add_group_owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:add_group_owner] = nil unless options.key?(:add_group_owner)
        super
      end
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListClientDevicesAssociatedWithCoreDeviceRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_client_devices
    #   <p>A list that describes the client devices that are associated with the core device.</p>
    #   @return [Array<Types::AssociatedClientDevice>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListClientDevicesAssociatedWithCoreDeviceResponse < Struct.new(
      :associated_client_devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListComponentVersionsRequest < Struct.new(
      :arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute component_versions
    #   <p>A list of versions that exist for the component.</p>
    #   @return [Array<Types::ComponentVersionListItem>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListComponentVersionsResponse < Struct.new(
      :component_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope
    #   <p>The scope of the components to list.</p>
    #            <p>Default: <code>PRIVATE</code>
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListComponentsRequest < Struct.new(
      :scope,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute components
    #   <p>A list that summarizes each component.</p>
    #   @return [Array<Types::Component>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListComponentsResponse < Struct.new(
      :components,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the IoT thing group by which to filter. If you specify this parameter,
    #         the list includes only core devices that have successfully deployed a deployment that targets
    #         the thing group. When you remove a core device from a thing group, the list continues to
    #         include that core device.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The core device status by which to filter. If you specify this parameter, the list
    #         includes only core devices that have this status. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HEALTHY</code> – The IoT Greengrass Core software and all components run on the core device without issue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The IoT Greengrass Core software or a component is in a failed state
    #             on the core device.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime to be used by the core device. The runtime can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_classic</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>aws_nucleus_lite</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ListCoreDevicesRequest < Struct.new(
      :thing_group_arn,
      :status,
      :max_results,
      :next_token,
      :runtime,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_devices
    #   <p>A list that summarizes each core device.</p>
    #   @return [Array<Types::CoreDevice>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListCoreDevicesResponse < Struct.new(
      :core_devices,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the target IoT thing or thing group.</p>
    #   @return [String]
    # @!attribute history_filter
    #   <p>The filter for the list of deployments. Choose one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all deployments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LATEST_ONLY</code> – The list includes only the latest revision of each
    #             deployment.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>LATEST_ONLY</code>
    #            </p>
    #   @return [String]
    # @!attribute parent_target_arn
    #   <p>The parent deployment's target <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> within a subdeployment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #            <p>Default: <code>50</code>
    #            </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListDeploymentsRequest < Struct.new(
      :target_arn,
      :history_filter,
      :parent_target_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   <p>A list that summarizes each deployment.</p>
    #   @return [Array<Types::Deployment>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListDeploymentsResponse < Struct.new(
      :deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    class ListEffectiveDeploymentsRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute effective_deployments
    #   <p>A list that summarizes each deployment on the core device.</p>
    #   @return [Array<Types::EffectiveDeployment>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListEffectiveDeploymentsResponse < Struct.new(
      :effective_deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute core_device_thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be returned per paginated request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to be used for the next set of paginated results.</p>
    #   @return [String]
    # @!attribute topology_filter
    #   <p>The filter for the list of components. Choose from the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – The list includes all components installed on the core
    #             device.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROOT</code> – The list includes only <i>root</i>
    #             components, which are components that you specify in a deployment. When you choose this
    #             option, the list doesn't include components that the core device installs as dependencies
    #             of other components.</p>
    #               </li>
    #            </ul>
    #            <p>Default: <code>ROOT</code>
    #            </p>
    #   @return [String]
    class ListInstalledComponentsRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      :topology_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute installed_components
    #   <p>A list that summarizes each component on the core device.</p>
    #            <note>
    #               <p>Greengrass nucleus v2.7.0 or later is required to get an accurate
    #             <code>lastStatusChangeTimestamp</code> response. This response can be inaccurate in
    #           earlier Greengrass nucleus versions.</p>
    #            </note>
    #            <note>
    #               <p>Greengrass nucleus v2.8.0 or later is required to get an accurate
    #             <code>lastInstallationSource</code> and <code>lastReportedTimestamp</code> response. This
    #           response can be inaccurate or null in earlier Greengrass nucleus versions.</p>
    #            </note>
    #   @return [Array<Types::InstalledComponent>]
    # @!attribute next_token
    #   <p>The token for the next set of results, or null if there are no additional results.</p>
    #   @return [String]
    class ListInstalledComponentsResponse < Struct.new(
      :installed_components,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is already in progress. This exception occurs when you use a client token for
    #       multiple requests while IoT Greengrass is still processing an earlier request that uses the same client
    #       token.</p>
    # @!attribute message
    #   @return [String]
    class RequestAlreadyInProgressException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute platform
    #   <p>The platform to use to resolve compatible components.</p>
    #   @return [Types::ComponentPlatform]
    # @!attribute component_candidates
    #   <p>The list of components to resolve.</p>
    #   @return [Array<Types::ComponentCandidate>]
    class ResolveComponentCandidatesRequest < Struct.new(
      :platform,
      :component_candidates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resolved_component_versions
    #   <p>A list of components that meet the requirements that you specify in the request. This list
    #         includes each component's recipe that you can use to install the component.</p>
    #   @return [Array<Types::ResolvedComponentVersion>]
    class ResolveComponentCandidatesResponse < Struct.new(
      :resolved_component_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a component version that is compatible to run on a Greengrass core
    #       device.</p>
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the component version.</p>
    #   @return [String]
    # @!attribute component_name
    #   <p>The name of the component.</p>
    #   @return [String]
    # @!attribute component_version
    #   <p>The version of the component.</p>
    #   @return [String]
    # @!attribute recipe
    #   <p>The recipe of the component version.</p>
    #   @return [String]
    # @!attribute vendor_guidance
    #   <p>The vendor guidance state for the component version. This state indicates whether
    #         the component version has any issues that you should consider before you deploy it. The vendor guidance state can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – This component version is available and recommended for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISCONTINUED</code> – This component version has been discontinued by its publisher.
    #             You can deploy this component version, but we recommend that you use a different version of this component.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> – This component version has been deleted by its publisher, so you can't
    #             deploy it. If you have any existing deployments that specify this component version, those deployments will fail.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A message that communicates details about the vendor guidance state
    #       of the component version. This message communicates why a component version is discontinued or deleted.</p>
    #   @return [String]
    class ResolvedComponentVersion < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :recipe,
      :vendor_guidance,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that isn't found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that isn't found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your request exceeds a service quota. For example, you might have the maximum number of
    #       components that you can create.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeds the service quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about system resource limits that the IoT Greengrass Core software applies to a
    #       component's processes. For more information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits">Configure system resource limits for components</a>.</p>
    # @!attribute memory
    #   <p>The maximum amount of RAM, expressed in kilobytes, that a component's processes can use on
    #         the core device.</p>
    #   @return [Integer]
    # @!attribute cpus
    #   <p>The maximum amount of CPU time that a component's processes can use on the core device. A
    #         core device's total CPU time is equivalent to the device's number of CPU cores. For example,
    #         on a core device with 4 CPU cores, you can set this value to <code>2</code> to limit the
    #         component's processes to 50 percent usage of each CPU core. On a device with 1 CPU core, you
    #         can set this value to <code>0.25</code> to limit the component's processes to 25 percent usage
    #         of the CPU. If you set this value to a number greater than the number of CPU cores, the IoT Greengrass Core
    #         software doesn't limit the component's CPU usage.</p>
    #   @return [Float]
    class SystemResourceLimits < Struct.new(
      :memory,
      :cpus,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:memory] = 0 unless options.key?(:memory)
        options[:cpus] = 0 unless options.key?(:cpus)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that contain metadata for the resource. For more
    #         information, see <a href="https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html">Tag your
    #           resources</a> in the <i>IoT Greengrass V2 Developer Guide</i>.</p>
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

    # <p>Your request exceeded a request rate quota. For example, you might have exceeded the
    #       amount of times that you can retrieve device or deployment status per second.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The amount of time to wait before you retry the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">ARN</a> of the resource to untag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of keys for tags to remove from the resource.</p>
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

    # @!attribute thing_name
    #   <p>The name of the core device. This is also the name of the IoT thing.</p>
    #   @return [String]
    # @!attribute connectivity_info
    #   <p>The connectivity information for the core device.</p>
    #   @return [Array<Types::ConnectivityInfo>]
    class UpdateConnectivityInfoRequest < Struct.new(
      :thing_name,
      :connectivity_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>The new version of the connectivity information for the core device.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the connectivity information update request.</p>
    #   @return [String]
    class UpdateConnectivityInfoResponse < Struct.new(
      :version,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The list of fields that failed to validate.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a validation exception field.</p>
    # @!attribute name
    #   <p>The name of the exception field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message of the exception field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
