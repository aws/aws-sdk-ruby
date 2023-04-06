# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GreengrassV2
  module Types

    # You don't have permission to perform the action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a request to associate a client device with a core device.
    # The [BatchAssociateClientDeviceWithCoreDevice][1] operation consumes a
    # list of these requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing that represents the client device to
    #   associate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AssociateClientDeviceWithCoreDeviceEntry AWS API Documentation
    #
    class AssociateClientDeviceWithCoreDeviceEntry < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an error that occurs from a request to associate a client
    # device with a core device. The
    # [BatchAssociateClientDeviceWithCoreDevice][1] operation returns a list
    # of these errors.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing whose associate request failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for the request.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides additional information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AssociateClientDeviceWithCoreDeviceErrorEntry AWS API Documentation
    #
    class AssociateClientDeviceWithCoreDeviceErrorEntry < Struct.new(
      :thing_name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the service role to associate with
    #   IoT Greengrass for your Amazon Web Services account in this Amazon
    #   Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AssociateServiceRoleToAccountRequest AWS API Documentation
    #
    class AssociateServiceRoleToAccountRequest < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_at
    #   The time when the service role was associated with IoT Greengrass
    #   for your Amazon Web Services account in this Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AssociateServiceRoleToAccountResponse AWS API Documentation
    #
    class AssociateServiceRoleToAccountResponse < Struct.new(
      :associated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a client device that is associated to a
    # core device for cloud discovery.
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing that represents the associated client
    #   device.
    #   @return [String]
    #
    # @!attribute [rw] association_timestamp
    #   The time that the client device was associated, expressed in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/AssociatedClientDevice AWS API Documentation
    #
    class AssociatedClientDevice < Struct.new(
      :thing_name,
      :association_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The list of client devices to associate.
    #   @return [Array<Types::AssociateClientDeviceWithCoreDeviceEntry>]
    #
    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/BatchAssociateClientDeviceWithCoreDeviceRequest AWS API Documentation
    #
    class BatchAssociateClientDeviceWithCoreDeviceRequest < Struct.new(
      :entries,
      :core_device_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   The list of any errors for the entries in the request. Each error
    #   entry contains the name of the IoT thing that failed to associate.
    #   @return [Array<Types::AssociateClientDeviceWithCoreDeviceErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/BatchAssociateClientDeviceWithCoreDeviceResponse AWS API Documentation
    #
    class BatchAssociateClientDeviceWithCoreDeviceResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entries
    #   The list of client devices to disassociate.
    #   @return [Array<Types::DisassociateClientDeviceFromCoreDeviceEntry>]
    #
    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/BatchDisassociateClientDeviceFromCoreDeviceRequest AWS API Documentation
    #
    class BatchDisassociateClientDeviceFromCoreDeviceRequest < Struct.new(
      :entries,
      :core_device_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   The list of any errors for the entries in the request. Each error
    #   entry contains the name of the IoT thing that failed to
    #   disassociate.
    #   @return [Array<Types::DisassociateClientDeviceFromCoreDeviceErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/BatchDisassociateClientDeviceFromCoreDeviceResponse AWS API Documentation
    #
    class BatchDisassociateClientDeviceFromCoreDeviceResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CancelDeploymentRequest AWS API Documentation
    #
    class CancelDeploymentRequest < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that communicates if the cancel was successful.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CancelDeploymentResponse AWS API Documentation
    #
    class CancelDeploymentResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the status of a component version in the IoT Greengrass
    # service.
    #
    # @!attribute [rw] component_state
    #   The state of the component version.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that communicates details, such as errors, about the
    #   status of the component version.
    #   @return [String]
    #
    # @!attribute [rw] errors
    #   A dictionary of errors that communicate why the component version is
    #   in an error state. For example, if IoT Greengrass can't access an
    #   artifact for the component version, then `errors` contains the
    #   artifact's URI as a key, and the error message as the value for
    #   that key.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vendor_guidance
    #   The vendor guidance state for the component version. This state
    #   indicates whether the component version has any issues that you
    #   should consider before you deploy it. The vendor guidance state can
    #   be:
    #
    #   * `ACTIVE` – This component version is available and recommended for
    #     use.
    #
    #   * `DISCONTINUED` – This component version has been discontinued by
    #     its publisher. You can deploy this component version, but we
    #     recommend that you use a different version of this component.
    #
    #   * `DELETED` – This component version has been deleted by its
    #     publisher, so you can't deploy it. If you have any existing
    #     deployments that specify this component version, those deployments
    #     will fail.
    #   @return [String]
    #
    # @!attribute [rw] vendor_guidance_message
    #   A message that communicates details about the vendor guidance state
    #   of the component version. This message communicates why a component
    #   version is discontinued or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CloudComponentStatus AWS API Documentation
    #
    class CloudComponentStatus < Struct.new(
      :component_state,
      :message,
      :errors,
      :vendor_guidance,
      :vendor_guidance_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component.
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the component and its details.
    #   @return [Types::ComponentLatestVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/Component AWS API Documentation
    #
    class Component < Struct.new(
      :arn,
      :component_name,
      :latest_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component that is a candidate to deploy
    # to a Greengrass core device.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] version_requirements
    #   The version requirements for the component's dependencies.
    #   Greengrass core devices get the version requirements from component
    #   recipes.
    #
    #   IoT Greengrass V2 uses semantic version constraints. For more
    #   information, see [Semantic Versioning][1].
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentCandidate AWS API Documentation
    #
    class ComponentCandidate < Struct.new(
      :component_name,
      :component_version,
      :version_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a deployment's update to a component's
    # configuration on Greengrass core devices. For more information, see
    # [Update component configurations][1] in the *IoT Greengrass V2
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html
    #
    # @!attribute [rw] merge
    #   A serialized JSON string that contains the configuration object to
    #   merge to target devices. The core device merges this configuration
    #   with the component's existing configuration. If this is the first
    #   time a component deploys on a device, the core device merges this
    #   configuration with the component's default configuration. This
    #   means that the core device keeps it's existing configuration for
    #   keys and values that you don't specify in this object. For more
    #   information, see [Merge configuration updates][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#merge-configuration-update
    #   @return [String]
    #
    # @!attribute [rw] reset
    #   The list of configuration nodes to reset to default values on target
    #   devices. Use JSON pointers to specify each node to reset. JSON
    #   pointers start with a forward slash (`/`) and use forward slashes to
    #   separate the key for each level in the object. For more information,
    #   see the [JSON pointer specification][1] and [Reset configuration
    #   updates][2] in the *IoT Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc6901
    #   [2]: https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html#reset-configuration-update
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentConfigurationUpdate AWS API Documentation
    #
    class ComponentConfigurationUpdate < Struct.new(
      :merge,
      :reset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component dependency for a Lambda
    # function component.
    #
    # @!attribute [rw] version_requirement
    #   The component version requirement for the component dependency.
    #
    #   IoT Greengrass V2 uses semantic version constraints. For more
    #   information, see [Semantic Versioning][1].
    #
    #
    #
    #   [1]: https://semver.org/
    #   @return [String]
    #
    # @!attribute [rw] dependency_type
    #   The type of this dependency. Choose from the following options:
    #
    #   * `SOFT` – The component doesn't restart if the dependency changes
    #     state.
    #
    #   * `HARD` – The component restarts if the dependency changes state.
    #
    #   Default: `HARD`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentDependencyRequirement AWS API Documentation
    #
    class ComponentDependencyRequirement < Struct.new(
      :version_requirement,
      :dependency_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component to deploy.
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] configuration_update
    #   The configuration updates to deploy for the component. You can
    #   define *reset* updates and *merge* updates. A reset updates the keys
    #   that you specify to the default configuration for the component. A
    #   merge updates the core device's component configuration with the
    #   keys and values that you specify. The IoT Greengrass Core software
    #   applies reset updates before it applies merge updates. For more
    #   information, see [Update component configurations][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/update-component-configurations.html
    #   @return [Types::ComponentConfigurationUpdate]
    #
    # @!attribute [rw] run_with
    #   The system user and group that the IoT Greengrass Core software uses
    #   to run component processes on the core device. If you omit this
    #   parameter, the IoT Greengrass Core software uses the system user and
    #   group that you configure for the core device. For more information,
    #   see [Configure the user and group that run components][1] in the
    #   *IoT Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user
    #   @return [Types::ComponentRunWith]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentDeploymentSpecification AWS API Documentation
    #
    class ComponentDeploymentSpecification < Struct.new(
      :component_version,
      :configuration_update,
      :run_with)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the latest version of a component.
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the component was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the component version.
    #   @return [String]
    #
    # @!attribute [rw] publisher
    #   The publisher of the component version.
    #   @return [String]
    #
    # @!attribute [rw] platforms
    #   The platforms that the component version supports.
    #   @return [Array<Types::ComponentPlatform>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentLatestVersion AWS API Documentation
    #
    class ComponentLatestVersion < Struct.new(
      :arn,
      :component_version,
      :creation_timestamp,
      :description,
      :publisher,
      :platforms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a platform that a component supports.
    #
    # @!attribute [rw] name
    #   The friendly name of the platform. This name helps you identify the
    #   platform.
    #
    #   If you omit this parameter, IoT Greengrass creates a friendly name
    #   from the `os` and `architecture` of the platform.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A dictionary of attributes for the platform. The IoT Greengrass Core
    #   software defines the `os` and `architecture` by default. You can
    #   specify additional platform attributes for a core device when you
    #   deploy the Greengrass nucleus component. For more information, see
    #   the [Greengrass nucleus component][1] in the *IoT Greengrass V2
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentPlatform AWS API Documentation
    #
    class ComponentPlatform < Struct.new(
      :name,
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information system user and group that the IoT Greengrass
    # Core software uses to run component processes on the core device. For
    # more information, see [Configure the user and group that run
    # components][1] in the *IoT Greengrass V2 Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user
    #
    # @!attribute [rw] posix_user
    #   The POSIX system user and, optionally, group to use to run this
    #   component on Linux core devices. The user, and group if specified,
    #   must exist on each Linux core device. Specify the user and group
    #   separated by a colon (`:`) in the following format: `user:group`.
    #   The group is optional. If you don't specify a group, the IoT
    #   Greengrass Core software uses the primary user for the group.
    #
    #   If you omit this parameter, the IoT Greengrass Core software uses
    #   the default system user and group that you configure on the
    #   Greengrass nucleus component. For more information, see [Configure
    #   the user and group that run components][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user
    #   @return [String]
    #
    # @!attribute [rw] system_resource_limits
    #   The system resource limits to apply to this component's process on
    #   the core device. IoT Greengrass currently supports this feature on
    #   only Linux core devices.
    #
    #   If you omit this parameter, the IoT Greengrass Core software uses
    #   the default system resource limits that you configure on the
    #   Greengrass nucleus component. For more information, see [Configure
    #   system resource limits for components][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits
    #   @return [Types::SystemResourceLimits]
    #
    # @!attribute [rw] windows_user
    #   The Windows user to use to run this component on Windows core
    #   devices. The user must exist on each Windows core device, and its
    #   name and password must be in the LocalSystem account's Credentials
    #   Manager instance.
    #
    #   If you omit this parameter, the IoT Greengrass Core software uses
    #   the default Windows user that you configure on the Greengrass
    #   nucleus component. For more information, see [Configure the user and
    #   group that run components][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-user
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentRunWith AWS API Documentation
    #
    class ComponentRunWith < Struct.new(
      :posix_user,
      :system_resource_limits,
      :windows_user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component version in a list.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ComponentVersionListItem AWS API Documentation
    #
    class ComponentVersionListItem < Struct.new(
      :component_name,
      :component_version,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has conflicting operations. This can occur if you're
    # trying to perform more than one operation on the same resource at the
    # same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that conflicts with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that conflicts with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an endpoint and port where client devices
    # can connect to an MQTT broker on a Greengrass core device.
    #
    # @!attribute [rw] id
    #   An ID for the connectivity information.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS address where client devices can connect to an
    #   MQTT broker on the Greengrass core device.
    #   @return [String]
    #
    # @!attribute [rw] port_number
    #   The port where the MQTT broker operates on the core device. This
    #   port is typically 8883, which is the default port for the MQTT
    #   broker component that runs on core devices.
    #   @return [Integer]
    #
    # @!attribute [rw] metadata
    #   Additional metadata to provide to client devices that connect to
    #   this core device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ConnectivityInfo AWS API Documentation
    #
    class ConnectivityInfo < Struct.new(
      :id,
      :host_address,
      :port_number,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a Greengrass core device, which is an IoT
    # thing that runs the IoT Greengrass Core software.
    #
    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the core device. Core devices can have the following
    #   statuses:
    #
    #   * `HEALTHY` – The IoT Greengrass Core software and all components
    #     run on the core device without issue.
    #
    #   * `UNHEALTHY` – The IoT Greengrass Core software or a component is
    #     in a failed state on the core device.
    #   @return [String]
    #
    # @!attribute [rw] last_status_update_timestamp
    #   The time at which the core device's status last updated, expressed
    #   in ISO 8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CoreDevice AWS API Documentation
    #
    class CoreDevice < Struct.new(
      :core_device_thing_name,
      :status,
      :last_status_update_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] inline_recipe
    #   The recipe to use to create the component. The recipe defines the
    #   component's metadata, parameters, dependencies, lifecycle,
    #   artifacts, and platform compatibility.
    #
    #   You must specify either `inlineRecipe` or `lambdaFunction`.
    #   @return [String]
    #
    # @!attribute [rw] lambda_function
    #   The parameters to create a component from a Lambda function.
    #
    #   You must specify either `inlineRecipe` or `lambdaFunction`.
    #   @return [Types::LambdaFunctionRecipeSource]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you can provide to ensure
    #   that the request is idempotent. Idempotency means that the request
    #   is successfully processed only once, even if you send the request
    #   multiple times. When a request succeeds, and you specify the same
    #   client token for subsequent successful requests, the IoT Greengrass
    #   V2 service returns the successful response that it caches from the
    #   previous request. IoT Greengrass V2 caches successful responses for
    #   idempotent requests for up to 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateComponentVersionRequest AWS API Documentation
    #
    class CreateComponentVersionRequest < Struct.new(
      :inline_recipe,
      :lambda_function,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the component was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the component version in IoT Greengrass V2. This
    #   status is different from the status of the component on a core
    #   device.
    #   @return [Types::CloudComponentStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateComponentVersionResponse AWS API Documentation
    #
    class CreateComponentVersionResponse < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The [ARN][1] of the target IoT thing or thing group. When creating a
    #   subdeployment, the targetARN can only be a thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components to deploy. This is a dictionary, where each key is
    #   the name of a component, and each key's value is the version and
    #   configuration to deploy for that component.
    #   @return [Hash<String,Types::ComponentDeploymentSpecification>]
    #
    # @!attribute [rw] iot_job_configuration
    #   The job configuration for the deployment configuration. The job
    #   configuration specifies the rollout, timeout, and stop
    #   configurations for the deployment configuration.
    #   @return [Types::DeploymentIoTJobConfiguration]
    #
    # @!attribute [rw] deployment_policies
    #   The deployment policies for the deployment. These policies define
    #   how the deployment updates components and handles failure.
    #   @return [Types::DeploymentPolicies]
    #
    # @!attribute [rw] parent_target_arn
    #   The parent deployment's target [ARN][1] within a subdeployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you can provide to ensure
    #   that the request is idempotent. Idempotency means that the request
    #   is successfully processed only once, even if you send the request
    #   multiple times. When a request succeeds, and you specify the same
    #   client token for subsequent successful requests, the IoT Greengrass
    #   V2 service returns the successful response that it caches from the
    #   previous request. IoT Greengrass V2 caches successful responses for
    #   idempotent requests for up to 8 hours.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :target_arn,
      :deployment_name,
      :components,
      :iot_job_configuration,
      :deployment_policies,
      :parent_target_arn,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_id
    #   The ID of the IoT job that applies the deployment to target devices.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_arn
    #   The [ARN][1] of the IoT job that applies the deployment to target
    #   devices.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/CreateDeploymentResponse AWS API Documentation
    #
    class CreateDeploymentResponse < Struct.new(
      :deployment_id,
      :iot_job_id,
      :iot_job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeleteComponentRequest AWS API Documentation
    #
    class DeleteComponentRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeleteCoreDeviceRequest AWS API Documentation
    #
    class DeleteCoreDeviceRequest < Struct.new(
      :core_device_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeleteDeploymentRequest AWS API Documentation
    #
    class DeleteDeploymentRequest < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a deployment.
    #
    # @!attribute [rw] target_arn
    #   The [ARN][1] of the target IoT thing or thing group. When creating a
    #   subdeployment, the targetARN can only be a thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision number of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the deployment was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_for_target
    #   Whether or not the deployment is the latest revision for its target.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_target_arn
    #   The parent deployment's target [ARN][1] within a subdeployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/Deployment AWS API Documentation
    #
    class Deployment < Struct.new(
      :target_arn,
      :revision_id,
      :deployment_id,
      :deployment_name,
      :creation_timestamp,
      :deployment_status,
      :is_latest_for_target,
      :parent_target_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a deployment's policy that defines when
    # components are safe to update.
    #
    # Each component on a device can report whether or not it's ready to
    # update. After a component and its dependencies are ready, they can
    # apply the update in the deployment. You can configure whether or not
    # the deployment notifies components of an update and waits for a
    # response. You specify the amount of time each component has to respond
    # to the update notification.
    #
    # @!attribute [rw] timeout_in_seconds
    #   The amount of time in seconds that each component on a device has to
    #   report that it's safe to update. If the component waits for longer
    #   than this timeout, then the deployment proceeds on the device.
    #
    #   Default: `60`
    #   @return [Integer]
    #
    # @!attribute [rw] action
    #   Whether or not to notify components and wait for components to
    #   become safe to update. Choose from the following options:
    #
    #   * `NOTIFY_COMPONENTS` – The deployment notifies each component
    #     before it stops and updates that component. Components can use the
    #     [SubscribeToComponentUpdates][1] IPC operation to receive these
    #     notifications. Then, components can respond with the
    #     [DeferComponentUpdate][2] IPC operation. For more information, see
    #     [Create deployments][3] in the *IoT Greengrass V2 Developer
    #     Guide*.
    #
    #   * `SKIP_NOTIFY_COMPONENTS` – The deployment doesn't notify
    #     components or wait for them to be safe to update.
    #
    #   Default: `NOTIFY_COMPONENTS`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetocomponentupdates
    #   [2]: https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-defercomponentupdate
    #   [3]: https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeploymentComponentUpdatePolicy AWS API Documentation
    #
    class DeploymentComponentUpdatePolicy < Struct.new(
      :timeout_in_seconds,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about how long a component on a core device can
    # validate its configuration updates before it times out. Components can
    # use the [SubscribeToValidateConfigurationUpdates][1] IPC operation to
    # receive notifications when a deployment specifies a configuration
    # update. Then, components can respond with the
    # [SendConfigurationValidityReport][2] IPC operation. For more
    # information, see [Create deployments][3] in the *IoT Greengrass V2
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-subscribetovalidateconfigurationupdates
    # [2]: https://docs.aws.amazon.com/greengrass/v2/developerguide/interprocess-communication.html#ipc-operation-sendconfigurationvalidityreport
    # [3]: https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html
    #
    # @!attribute [rw] timeout_in_seconds
    #   The amount of time in seconds that a component can validate its
    #   configuration updates. If the validation time exceeds this timeout,
    #   then the deployment proceeds for the device.
    #
    #   Default: `30`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeploymentConfigurationValidationPolicy AWS API Documentation
    #
    class DeploymentConfigurationValidationPolicy < Struct.new(
      :timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an IoT job configuration.
    #
    # @!attribute [rw] job_executions_rollout_config
    #   The rollout configuration for the job. This configuration defines
    #   the rate at which the job rolls out to the fleet of target devices.
    #   @return [Types::IoTJobExecutionsRolloutConfig]
    #
    # @!attribute [rw] abort_config
    #   The stop configuration for the job. This configuration defines when
    #   and how to stop a job rollout.
    #   @return [Types::IoTJobAbortConfig]
    #
    # @!attribute [rw] timeout_config
    #   The timeout configuration for the job. This configuration defines
    #   the amount of time each device has to complete the job.
    #   @return [Types::IoTJobTimeoutConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeploymentIoTJobConfiguration AWS API Documentation
    #
    class DeploymentIoTJobConfiguration < Struct.new(
      :job_executions_rollout_config,
      :abort_config,
      :timeout_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about policies that define how a deployment
    # updates components and handles failure.
    #
    # @!attribute [rw] failure_handling_policy
    #   The failure handling policy for the configuration deployment. This
    #   policy defines what to do if the deployment fails.
    #
    #   Default: `ROLLBACK`
    #   @return [String]
    #
    # @!attribute [rw] component_update_policy
    #   The component update policy for the configuration deployment. This
    #   policy defines when it's safe to deploy the configuration to
    #   devices.
    #   @return [Types::DeploymentComponentUpdatePolicy]
    #
    # @!attribute [rw] configuration_validation_policy
    #   The configuration validation policy for the configuration
    #   deployment. This policy defines how long each component has to
    #   validate its configure updates.
    #   @return [Types::DeploymentConfigurationValidationPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DeploymentPolicies AWS API Documentation
    #
    class DeploymentPolicies < Struct.new(
      :failure_handling_policy,
      :component_update_policy,
      :configuration_validation_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DescribeComponentRequest AWS API Documentation
    #
    class DescribeComponentRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the component was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] publisher
    #   The publisher of the component version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the component version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the component version in IoT Greengrass V2. This
    #   status is different from the status of the component on a core
    #   device.
    #   @return [Types::CloudComponentStatus]
    #
    # @!attribute [rw] platforms
    #   The platforms that the component version supports.
    #   @return [Array<Types::ComponentPlatform>]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DescribeComponentResponse AWS API Documentation
    #
    class DescribeComponentResponse < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :creation_timestamp,
      :publisher,
      :description,
      :status,
      :platforms,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a request to disassociate a client device from a core device.
    # The [BatchDisassociateClientDeviceWithCoreDevice][1] operation
    # consumes a list of these requests.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing that represents the client device to
    #   disassociate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DisassociateClientDeviceFromCoreDeviceEntry AWS API Documentation
    #
    class DisassociateClientDeviceFromCoreDeviceEntry < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains an error that occurs from a request to disassociate a client
    # device from a core device. The
    # [BatchDisassociateClientDeviceWithCoreDevice][1] operation returns a
    # list of these errors.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchDisassociateClientDeviceWithCoreDevice.html
    #
    # @!attribute [rw] thing_name
    #   The name of the IoT thing whose disassociate request failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code for the request.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that provides additional information about the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DisassociateClientDeviceFromCoreDeviceErrorEntry AWS API Documentation
    #
    class DisassociateClientDeviceFromCoreDeviceErrorEntry < Struct.new(
      :thing_name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DisassociateServiceRoleFromAccountRequest AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] disassociated_at
    #   The time when the service role was disassociated from IoT Greengrass
    #   for your Amazon Web Services account in this Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/DisassociateServiceRoleFromAccountResponse AWS API Documentation
    #
    class DisassociateServiceRoleFromAccountResponse < Struct.new(
      :disassociated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a deployment job that IoT Greengrass sends
    # to a Greengrass core device.
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_id
    #   The ID of the IoT job that applies the deployment to target devices.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_arn
    #   The [ARN][1] of the IoT job that applies the deployment to target
    #   devices.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the deployment job.
    #   @return [String]
    #
    # @!attribute [rw] target_arn
    #   The [ARN][1] of the target IoT thing or thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] core_device_execution_status
    #   The status of the deployment job on the Greengrass core device.
    #
    #   * `IN_PROGRESS` – The deployment job is running.
    #
    #   * `QUEUED` – The deployment job is in the job queue and waiting to
    #     run.
    #
    #   * `FAILED` – The deployment failed. For more information, see the
    #     `statusDetails` field.
    #
    #   * `COMPLETED` – The deployment to an IoT thing was completed
    #     successfully.
    #
    #   * `TIMED_OUT` – The deployment didn't complete in the allotted
    #     time.
    #
    #   * `CANCELED` – The deployment was canceled by the user.
    #
    #   * `REJECTED` – The deployment was rejected. For more information,
    #     see the `statusDetails` field.
    #
    #   * `SUCCEEDED` – The deployment to an IoT thing group was completed
    #     successfully.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason code for the update, if the job was updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the deployment was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] modified_timestamp
    #   The time at which the deployment job was last modified, expressed in
    #   ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] status_details
    #   The status details that explain why a deployment has an error. This
    #   response will be null if the deployment is in a success state.
    #   @return [Types::EffectiveDeploymentStatusDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/EffectiveDeployment AWS API Documentation
    #
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
      :status_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all error-related information for the deployment record. The
    # status details will be null if the deployment is in a success state.
    #
    # <note markdown="1"> Greengrass nucleus v2.8.0 or later is required to get an accurate
    # `errorStack` and `errorTypes` response. This field will not be
    # returned for earlier Greengrass nucleus versions.
    #
    #  </note>
    #
    # @!attribute [rw] error_stack
    #   Contains an ordered list of short error codes that range from the
    #   most generic error to the most specific one. The error codes
    #   describe the reason for failure whenever the
    #   `coreDeviceExecutionStatus` is in a failed state. The response will
    #   be an empty list if there is no error.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_types
    #   Contains tags which describe the error. You can use the error types
    #   to classify errors to assist with remediating the failure. The
    #   response will be an empty list if there is no error.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/EffectiveDeploymentStatusDetails AWS API Documentation
    #
    class EffectiveDeploymentStatusDetails < Struct.new(
      :error_stack,
      :error_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipe_output_format
    #   The format of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponentRequest AWS API Documentation
    #
    class GetComponentRequest < Struct.new(
      :recipe_output_format,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recipe_output_format
    #   The format of the recipe.
    #   @return [String]
    #
    # @!attribute [rw] recipe
    #   The recipe of the component version.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponentResponse AWS API Documentation
    #
    class GetComponentResponse < Struct.new(
      :recipe_output_format,
      :recipe,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component version. Specify the ARN of a public
    #   or a Lambda component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] artifact_name
    #   The name of the artifact.
    #
    #   You can use the [GetComponent][1] operation to download the
    #   component recipe, which includes the URI of the artifact. The
    #   artifact name is the section of the URI after the scheme. For
    #   example, in the artifact URI `greengrass:SomeArtifact.zip`, the
    #   artifact name is `SomeArtifact.zip`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/APIReference/API_GetComponent.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponentVersionArtifactRequest AWS API Documentation
    #
    class GetComponentVersionArtifactRequest < Struct.new(
      :arn,
      :artifact_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pre_signed_url
    #   The URL of the artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetComponentVersionArtifactResponse AWS API Documentation
    #
    class GetComponentVersionArtifactResponse < Struct.new(
      :pre_signed_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetConnectivityInfoRequest AWS API Documentation
    #
    class GetConnectivityInfoRequest < Struct.new(
      :thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connectivity_info
    #   The connectivity information for the core device.
    #   @return [Array<Types::ConnectivityInfo>]
    #
    # @!attribute [rw] message
    #   A message about the connectivity information request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetConnectivityInfoResponse AWS API Documentation
    #
    class GetConnectivityInfoResponse < Struct.new(
      :connectivity_info,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetCoreDeviceRequest AWS API Documentation
    #
    class GetCoreDeviceRequest < Struct.new(
      :core_device_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] core_version
    #   The version of the IoT Greengrass Core software that the core device
    #   runs. This version is equivalent to the version of the Greengrass
    #   nucleus component that runs on the core device. For more
    #   information, see the [Greengrass nucleus component][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-nucleus-component.html
    #   @return [String]
    #
    # @!attribute [rw] platform
    #   The operating system platform that the core device runs.
    #   @return [String]
    #
    # @!attribute [rw] architecture
    #   The computer architecture of the core device.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the core device. The core device status can be:
    #
    #   * `HEALTHY` – The IoT Greengrass Core software and all components
    #     run on the core device without issue.
    #
    #   * `UNHEALTHY` – The IoT Greengrass Core software or a component is
    #     in a failed state on the core device.
    #   @return [String]
    #
    # @!attribute [rw] last_status_update_timestamp
    #   The time at which the core device's status last updated, expressed
    #   in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetCoreDeviceResponse AWS API Documentation
    #
    class GetCoreDeviceResponse < Struct.new(
      :core_device_thing_name,
      :core_version,
      :platform,
      :architecture,
      :status,
      :last_status_update_timestamp,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetDeploymentRequest AWS API Documentation
    #
    class GetDeploymentRequest < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The [ARN][1] of the target IoT thing or thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The revision number of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The ID of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_id
    #   The ID of the IoT job that applies the deployment to target devices.
    #   @return [String]
    #
    # @!attribute [rw] iot_job_arn
    #   The [ARN][1] of the IoT job that applies the deployment to target
    #   devices.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] components
    #   The components to deploy. This is a dictionary, where each key is
    #   the name of a component, and each key's value is the version and
    #   configuration to deploy for that component.
    #   @return [Hash<String,Types::ComponentDeploymentSpecification>]
    #
    # @!attribute [rw] deployment_policies
    #   The deployment policies for the deployment. These policies define
    #   how the deployment updates components and handles failure.
    #   @return [Types::DeploymentPolicies]
    #
    # @!attribute [rw] iot_job_configuration
    #   The job configuration for the deployment configuration. The job
    #   configuration specifies the rollout, timeout, and stop
    #   configurations for the deployment configuration.
    #   @return [Types::DeploymentIoTJobConfiguration]
    #
    # @!attribute [rw] creation_timestamp
    #   The time at which the deployment was created, expressed in ISO 8601
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] is_latest_for_target
    #   Whether or not the deployment is the latest revision for its target.
    #   @return [Boolean]
    #
    # @!attribute [rw] parent_target_arn
    #   The parent deployment's target [ARN][1] within a subdeployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetDeploymentResponse AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetServiceRoleForAccountRequest AWS API Documentation
    #
    class GetServiceRoleForAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] associated_at
    #   The time when the service role was associated with IoT Greengrass
    #   for your Amazon Web Services account in this Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the service role that is associated with IoT Greengrass
    #   for your Amazon Web Services account in this Amazon Web Services
    #   Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/GetServiceRoleForAccountResponse AWS API Documentation
    #
    class GetServiceRoleForAccountResponse < Struct.new(
      :associated_at,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component on a Greengrass core device.
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_state
    #   The lifecycle state of the component.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_state_details
    #   A detailed response about the lifecycle state of the component that
    #   explains the reason why a component has an error or is broken.
    #   @return [String]
    #
    # @!attribute [rw] is_root
    #   Whether or not the component is a root component.
    #   @return [Boolean]
    #
    # @!attribute [rw] last_status_change_timestamp
    #   The status of how current the data is.
    #
    #   This response is based off of component state changes. The status
    #   reflects component disruptions and deployments. If a component only
    #   sees a configuration update during a deployment, it might not
    #   undergo a state change and this status would not be updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_reported_timestamp
    #   The last time the Greengrass core device sent a message containing a
    #   component's state to the Amazon Web Services Cloud.
    #
    #   A component does not need to see a state change for this field to
    #   update.
    #   @return [Time]
    #
    # @!attribute [rw] last_installation_source
    #   The most recent deployment source that brought the component to the
    #   Greengrass core device. For a thing group deployment or thing
    #   deployment, the source will be the The ID of the deployment. and for
    #   local deployments it will be `LOCAL`.
    #
    #   <note markdown="1"> Any deployment will attempt to reinstall currently broken components
    #   on the device, which will update the last installation source.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] lifecycle_status_codes
    #   The status codes that indicate the reason for failure whenever the
    #   `lifecycleState` has an error or is in a broken state.
    #
    #   <note markdown="1"> Greengrass nucleus v2.8.0 or later is required to get an accurate
    #   `lifecycleStatusCodes` response. This response can be inaccurate in
    #   earlier Greengrass nucleus versions.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/InstalledComponent AWS API Documentation
    #
    class InstalledComponent < Struct.new(
      :component_name,
      :component_version,
      :lifecycle_state,
      :lifecycle_state_details,
      :is_root,
      :last_status_change_timestamp,
      :last_reported_timestamp,
      :last_installation_source,
      :lifecycle_status_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # IoT Greengrass can't process your request right now. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The amount of time to wait before you retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a list of criteria that define when and how to cancel a
    # configuration deployment.
    #
    # @!attribute [rw] criteria_list
    #   The list of criteria that define when and how to cancel the
    #   configuration deployment.
    #   @return [Array<Types::IoTJobAbortCriteria>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobAbortConfig AWS API Documentation
    #
    class IoTJobAbortConfig < Struct.new(
      :criteria_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains criteria that define when and how to cancel a job.
    #
    # The deployment stops if the following conditions are true:
    #
    # 1.  The number of things that receive the deployment exceeds the
    #     `minNumberOfExecutedThings`.
    #
    # 2.  The percentage of failures with type `failureType` exceeds the
    #     `thresholdPercentage`.
    #
    # @!attribute [rw] failure_type
    #   The type of job deployment failure that can cancel a job.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action to perform when the criteria are met.
    #   @return [String]
    #
    # @!attribute [rw] threshold_percentage
    #   The minimum percentage of `failureType` failures that occur before
    #   the job can cancel.
    #
    #   This parameter supports up to two digits after the decimal (for
    #   example, you can specify `10.9` or `10.99`, but not `10.999`).
    #   @return [Float]
    #
    # @!attribute [rw] min_number_of_executed_things
    #   The minimum number of things that receive the configuration before
    #   the job can cancel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobAbortCriteria AWS API Documentation
    #
    class IoTJobAbortCriteria < Struct.new(
      :failure_type,
      :action,
      :threshold_percentage,
      :min_number_of_executed_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the rollout configuration for a job. This
    # configuration defines the rate at which the job deploys a
    # configuration to a fleet of target devices.
    #
    # @!attribute [rw] exponential_rate
    #   The exponential rate to increase the job rollout rate.
    #   @return [Types::IoTJobExponentialRolloutRate]
    #
    # @!attribute [rw] maximum_per_minute
    #   The maximum number of devices that receive a pending job
    #   notification, per minute.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobExecutionsRolloutConfig AWS API Documentation
    #
    class IoTJobExecutionsRolloutConfig < Struct.new(
      :exponential_rate,
      :maximum_per_minute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an exponential rollout rate for a
    # configuration deployment job.
    #
    # @!attribute [rw] base_rate_per_minute
    #   The minimum number of devices that receive a pending job
    #   notification, per minute, when the job starts. This parameter
    #   defines the initial rollout rate of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] increment_factor
    #   The exponential factor to increase the rollout rate for the job.
    #
    #   This parameter supports up to one digit after the decimal (for
    #   example, you can specify `1.5`, but not `1.55`).
    #   @return [Float]
    #
    # @!attribute [rw] rate_increase_criteria
    #   The criteria to increase the rollout rate for the job.
    #   @return [Types::IoTJobRateIncreaseCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobExponentialRolloutRate AWS API Documentation
    #
    class IoTJobExponentialRolloutRate < Struct.new(
      :base_rate_per_minute,
      :increment_factor,
      :rate_increase_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about criteria to meet before a job increases its
    # rollout rate. Specify either `numberOfNotifiedThings` or
    # `numberOfSucceededThings`.
    #
    # @!attribute [rw] number_of_notified_things
    #   The number of devices to receive the job notification before the
    #   rollout rate increases.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_succeeded_things
    #   The number of devices to successfully run the configuration job
    #   before the rollout rate increases.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobRateIncreaseCriteria AWS API Documentation
    #
    class IoTJobRateIncreaseCriteria < Struct.new(
      :number_of_notified_things,
      :number_of_succeeded_things)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the timeout configuration for a job.
    #
    # @!attribute [rw] in_progress_timeout_in_minutes
    #   The amount of time, in minutes, that devices have to complete the
    #   job. The timer starts when the job status is set to `IN_PROGRESS`.
    #   If the job status doesn't change to a terminal state before the
    #   time expires, then the job status is set to `TIMED_OUT`.
    #
    #   The timeout interval must be between 1 minute and 7 days (10080
    #   minutes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/IoTJobTimeoutConfig AWS API Documentation
    #
    class IoTJobTimeoutConfig < Struct.new(
      :in_progress_timeout_in_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a container in which Lambda functions run
    # on Greengrass core devices.
    #
    # @!attribute [rw] memory_size_in_kb
    #   The memory size of the container, expressed in kilobytes.
    #
    #   Default: `16384` (16 MB)
    #   @return [Integer]
    #
    # @!attribute [rw] mount_ro_sysfs
    #   Whether or not the container can read information from the device's
    #   `/sys` folder.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] volumes
    #   The list of volumes that the container can access.
    #   @return [Array<Types::LambdaVolumeMount>]
    #
    # @!attribute [rw] devices
    #   The list of system devices that the container can access.
    #   @return [Array<Types::LambdaDeviceMount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaContainerParams AWS API Documentation
    #
    class LambdaContainerParams < Struct.new(
      :memory_size_in_kb,
      :mount_ro_sysfs,
      :volumes,
      :devices)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a device that Linux processes in a
    # container can access.
    #
    # @!attribute [rw] path
    #   The mount path for the device in the file system.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The permission to access the device: read/only (`ro`) or read/write
    #   (`rw`).
    #
    #   Default: `ro`
    #   @return [String]
    #
    # @!attribute [rw] add_group_owner
    #   Whether or not to add the component's system user as an owner of
    #   the device.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaDeviceMount AWS API Documentation
    #
    class LambdaDeviceMount < Struct.new(
      :path,
      :permission,
      :add_group_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an event source for an Lambda function. The
    # event source defines the topics on which this Lambda function
    # subscribes to receive messages that run the function.
    #
    # @!attribute [rw] topic
    #   The topic to which to subscribe to receive event messages.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of event source. Choose from the following options:
    #
    #   * `PUB_SUB` – Subscribe to local publish/subscribe messages. This
    #     event source type doesn't support MQTT wildcards (`+` and `#`) in
    #     the event source topic.
    #
    #   * `IOT_CORE` – Subscribe to Amazon Web Services IoT Core MQTT
    #     messages. This event source type supports MQTT wildcards (`+` and
    #     `#`) in the event source topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaEventSource AWS API Documentation
    #
    class LambdaEventSource < Struct.new(
      :topic,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains parameters for a Lambda function that runs on IoT Greengrass.
    #
    # @!attribute [rw] event_sources
    #   The list of event sources to which to subscribe to receive work
    #   messages. The Lambda function runs when it receives a message from
    #   an event source. You can subscribe this function to local
    #   publish/subscribe messages and Amazon Web Services IoT Core MQTT
    #   messages.
    #   @return [Array<Types::LambdaEventSource>]
    #
    # @!attribute [rw] max_queue_size
    #   The maximum size of the message queue for the Lambda function
    #   component. The IoT Greengrass core stores messages in a FIFO
    #   (first-in-first-out) queue until it can run the Lambda function to
    #   consume each message.
    #   @return [Integer]
    #
    # @!attribute [rw] max_instances_count
    #   The maximum number of instances that a non-pinned Lambda function
    #   can run at the same time.
    #   @return [Integer]
    #
    # @!attribute [rw] max_idle_time_in_seconds
    #   The maximum amount of time in seconds that a non-pinned Lambda
    #   function can idle before the IoT Greengrass Core software stops its
    #   process.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The maximum amount of time in seconds that the Lambda function can
    #   process a work item.
    #   @return [Integer]
    #
    # @!attribute [rw] status_timeout_in_seconds
    #   The interval in seconds at which a pinned (also known as long-lived)
    #   Lambda function component sends status updates to the Lambda manager
    #   component.
    #   @return [Integer]
    #
    # @!attribute [rw] pinned
    #   Whether or not the Lambda function is pinned, or long-lived.
    #
    #   * A pinned Lambda function starts when IoT Greengrass starts and
    #     keeps running in its own container.
    #
    #   * A non-pinned Lambda function starts only when it receives a work
    #     item and exists after it idles for `maxIdleTimeInSeconds`. If the
    #     function has multiple work items, the IoT Greengrass Core software
    #     creates multiple instances of the function.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] input_payload_encoding_type
    #   The encoding type that the Lambda function supports.
    #
    #   Default: `json`
    #   @return [String]
    #
    # @!attribute [rw] exec_args
    #   The list of arguments to pass to the Lambda function when it runs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] environment_variables
    #   The map of environment variables that are available to the Lambda
    #   function when it runs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] linux_process_params
    #   The parameters for the Linux process that contains the Lambda
    #   function.
    #   @return [Types::LambdaLinuxProcessParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaExecutionParameters AWS API Documentation
    #
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
      :linux_process_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an Lambda function to import to create a
    # component.
    #
    # @!attribute [rw] lambda_arn
    #   The [ARN][1] of the Lambda function. The ARN must include the
    #   version of the function to import. You can't use version aliases
    #   like `$LATEST`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #
    #   Defaults to the name of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #
    #   Defaults to the version of the Lambda function as a semantic
    #   version. For example, if your function version is `3`, the component
    #   version becomes `3.0.0`.
    #   @return [String]
    #
    # @!attribute [rw] component_platforms
    #   The platforms that the component version supports.
    #   @return [Array<Types::ComponentPlatform>]
    #
    # @!attribute [rw] component_dependencies
    #   The component versions on which this Lambda function component
    #   depends.
    #   @return [Hash<String,Types::ComponentDependencyRequirement>]
    #
    # @!attribute [rw] component_lambda_parameters
    #   The system and runtime parameters for the Lambda function as it runs
    #   on the Greengrass core device.
    #   @return [Types::LambdaExecutionParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaFunctionRecipeSource AWS API Documentation
    #
    class LambdaFunctionRecipeSource < Struct.new(
      :lambda_arn,
      :component_name,
      :component_version,
      :component_platforms,
      :component_dependencies,
      :component_lambda_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains parameters for a Linux process that contains an Lambda
    # function.
    #
    # @!attribute [rw] isolation_mode
    #   The isolation mode for the process that contains the Lambda
    #   function. The process can run in an isolated runtime environment
    #   inside the IoT Greengrass container, or as a regular process outside
    #   any container.
    #
    #   Default: `GreengrassContainer`
    #   @return [String]
    #
    # @!attribute [rw] container_params
    #   The parameters for the container in which the Lambda function runs.
    #   @return [Types::LambdaContainerParams]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaLinuxProcessParams AWS API Documentation
    #
    class LambdaLinuxProcessParams < Struct.new(
      :isolation_mode,
      :container_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a volume that Linux processes in a
    # container can access. When you define a volume, the IoT Greengrass
    # Core software mounts the source files to the destination inside the
    # container.
    #
    # @!attribute [rw] source_path
    #   The path to the physical volume in the file system.
    #   @return [String]
    #
    # @!attribute [rw] destination_path
    #   The path to the logical volume in the file system.
    #   @return [String]
    #
    # @!attribute [rw] permission
    #   The permission to access the volume: read/only (`ro`) or read/write
    #   (`rw`).
    #
    #   Default: `ro`
    #   @return [String]
    #
    # @!attribute [rw] add_group_owner
    #   Whether or not to add the IoT Greengrass user group as an owner of
    #   the volume.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/LambdaVolumeMount AWS API Documentation
    #
    class LambdaVolumeMount < Struct.new(
      :source_path,
      :destination_path,
      :permission,
      :add_group_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListClientDevicesAssociatedWithCoreDeviceRequest AWS API Documentation
    #
    class ListClientDevicesAssociatedWithCoreDeviceRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_client_devices
    #   A list that describes the client devices that are associated with
    #   the core device.
    #   @return [Array<Types::AssociatedClientDevice>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListClientDevicesAssociatedWithCoreDeviceResponse AWS API Documentation
    #
    class ListClientDevicesAssociatedWithCoreDeviceResponse < Struct.new(
      :associated_client_devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The [ARN][1] of the component.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponentVersionsRequest AWS API Documentation
    #
    class ListComponentVersionsRequest < Struct.new(
      :arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] component_versions
    #   A list of versions that exist for the component.
    #   @return [Array<Types::ComponentVersionListItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponentVersionsResponse AWS API Documentation
    #
    class ListComponentVersionsResponse < Struct.new(
      :component_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope
    #   The scope of the components to list.
    #
    #   Default: `PRIVATE`
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponentsRequest AWS API Documentation
    #
    class ListComponentsRequest < Struct.new(
      :scope,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] components
    #   A list that summarizes each component.
    #   @return [Array<Types::Component>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListComponentsResponse AWS API Documentation
    #
    class ListComponentsResponse < Struct.new(
      :components,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_group_arn
    #   The [ARN][1] of the IoT thing group by which to filter. If you
    #   specify this parameter, the list includes only core devices that
    #   have successfully deployed a deployment that targets the thing
    #   group. When you remove a core device from a thing group, the list
    #   continues to include that core device.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The core device status by which to filter. If you specify this
    #   parameter, the list includes only core devices that have this
    #   status. Choose one of the following options:
    #
    #   * `HEALTHY` – The IoT Greengrass Core software and all components
    #     run on the core device without issue.
    #
    #   * `UNHEALTHY` – The IoT Greengrass Core software or a component is
    #     in a failed state on the core device.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListCoreDevicesRequest AWS API Documentation
    #
    class ListCoreDevicesRequest < Struct.new(
      :thing_group_arn,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_devices
    #   A list that summarizes each core device.
    #   @return [Array<Types::CoreDevice>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListCoreDevicesResponse AWS API Documentation
    #
    class ListCoreDevicesResponse < Struct.new(
      :core_devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_arn
    #   The [ARN][1] of the target IoT thing or thing group.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] history_filter
    #   The filter for the list of deployments. Choose one of the following
    #   options:
    #
    #   * `ALL` – The list includes all deployments.
    #
    #   * `LATEST_ONLY` – The list includes only the latest revision of each
    #     deployment.
    #
    #   Default: `LATEST_ONLY`
    #   @return [String]
    #
    # @!attribute [rw] parent_target_arn
    #   The parent deployment's target [ARN][1] within a subdeployment.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListDeploymentsRequest AWS API Documentation
    #
    class ListDeploymentsRequest < Struct.new(
      :target_arn,
      :history_filter,
      :parent_target_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   A list that summarizes each deployment.
    #   @return [Array<Types::Deployment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListDeploymentsResponse AWS API Documentation
    #
    class ListDeploymentsResponse < Struct.new(
      :deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListEffectiveDeploymentsRequest AWS API Documentation
    #
    class ListEffectiveDeploymentsRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] effective_deployments
    #   A list that summarizes each deployment on the core device.
    #   @return [Array<Types::EffectiveDeployment>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListEffectiveDeploymentsResponse AWS API Documentation
    #
    class ListEffectiveDeploymentsResponse < Struct.new(
      :effective_deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] core_device_thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be returned per paginated request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to be used for the next set of paginated results.
    #   @return [String]
    #
    # @!attribute [rw] topology_filter
    #   The filter for the list of components. Choose from the following
    #   options:
    #
    #   * `ALL` – The list includes all components installed on the core
    #     device.
    #
    #   * `ROOT` – The list includes only *root* components, which are
    #     components that you specify in a deployment. When you choose this
    #     option, the list doesn't include components that the core device
    #     installs as dependencies of other components.
    #
    #   Default: `ROOT`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListInstalledComponentsRequest AWS API Documentation
    #
    class ListInstalledComponentsRequest < Struct.new(
      :core_device_thing_name,
      :max_results,
      :next_token,
      :topology_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] installed_components
    #   A list that summarizes each component on the core device.
    #
    #   <note markdown="1"> Greengrass nucleus v2.7.0 or later is required to get an accurate
    #   `lastStatusChangeTimestamp` response. This response can be
    #   inaccurate in earlier Greengrass nucleus versions.
    #
    #    </note>
    #
    #   <note markdown="1"> Greengrass nucleus v2.8.0 or later is required to get an accurate
    #   `lastInstallationSource` and `lastReportedTimestamp` response. This
    #   response can be inaccurate or null in earlier Greengrass nucleus
    #   versions.
    #
    #    </note>
    #   @return [Array<Types::InstalledComponent>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results, or null if there are no
    #   additional results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListInstalledComponentsResponse AWS API Documentation
    #
    class ListInstalledComponentsResponse < Struct.new(
      :installed_components,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is already in progress. This exception occurs when you use
    # a client token for multiple requests while IoT Greengrass is still
    # processing an earlier request that uses the same client token.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/RequestAlreadyInProgressException AWS API Documentation
    #
    class RequestAlreadyInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] platform
    #   The platform to use to resolve compatible components.
    #   @return [Types::ComponentPlatform]
    #
    # @!attribute [rw] component_candidates
    #   The list of components to resolve.
    #   @return [Array<Types::ComponentCandidate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ResolveComponentCandidatesRequest AWS API Documentation
    #
    class ResolveComponentCandidatesRequest < Struct.new(
      :platform,
      :component_candidates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resolved_component_versions
    #   A list of components that meet the requirements that you specify in
    #   the request. This list includes each component's recipe that you
    #   can use to install the component.
    #   @return [Array<Types::ResolvedComponentVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ResolveComponentCandidatesResponse AWS API Documentation
    #
    class ResolveComponentCandidatesResponse < Struct.new(
      :resolved_component_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a component version that is compatible to
    # run on a Greengrass core device.
    #
    # @!attribute [rw] arn
    #   The [ARN][1] of the component version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] component_name
    #   The name of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_version
    #   The version of the component.
    #   @return [String]
    #
    # @!attribute [rw] recipe
    #   The recipe of the component version.
    #   @return [String]
    #
    # @!attribute [rw] vendor_guidance
    #   The vendor guidance state for the component version. This state
    #   indicates whether the component version has any issues that you
    #   should consider before you deploy it. The vendor guidance state can
    #   be:
    #
    #   * `ACTIVE` – This component version is available and recommended for
    #     use.
    #
    #   * `DISCONTINUED` – This component version has been discontinued by
    #     its publisher. You can deploy this component version, but we
    #     recommend that you use a different version of this component.
    #
    #   * `DELETED` – This component version has been deleted by its
    #     publisher, so you can't deploy it. If you have any existing
    #     deployments that specify this component version, those deployments
    #     will fail.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that communicates details about the vendor guidance state
    #   of the component version. This message communicates why a component
    #   version is discontinued or deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ResolvedComponentVersion AWS API Documentation
    #
    class ResolvedComponentVersion < Struct.new(
      :arn,
      :component_name,
      :component_version,
      :recipe,
      :vendor_guidance,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that isn't found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that isn't found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request exceeds a service quota. For example, you might have the
    # maximum number of components that you can create.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about system resource limits that the IoT
    # Greengrass Core software applies to a component's processes. For more
    # information, see [Configure system resource limits for components][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-greengrass-core-v2.html#configure-component-system-resource-limits
    #
    # @!attribute [rw] memory
    #   The maximum amount of RAM, expressed in kilobytes, that a
    #   component's processes can use on the core device.
    #   @return [Integer]
    #
    # @!attribute [rw] cpus
    #   The maximum amount of CPU time that a component's processes can use
    #   on the core device. A core device's total CPU time is equivalent to
    #   the device's number of CPU cores. For example, on a core device
    #   with 4 CPU cores, you can set this value to `2` to limit the
    #   component's processes to 50 percent usage of each CPU core. On a
    #   device with 1 CPU core, you can set this value to `0.25` to limit
    #   the component's processes to 25 percent usage of the CPU. If you
    #   set this value to a number greater than the number of CPU cores, the
    #   IoT Greengrass Core software doesn't limit the component's CPU
    #   usage.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/SystemResourceLimits AWS API Documentation
    #
    class SystemResourceLimits < Struct.new(
      :memory,
      :cpus)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource to tag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that contain metadata for the resource.
    #   For more information, see [Tag your resources][1] in the *IoT
    #   Greengrass V2 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Your request exceeded a request rate quota. For example, you might
    # have exceeded the amount of times that you can retrieve device or
    # deployment status per second.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code for the quota in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service in [Service Quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The amount of time to wait before you retry the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The [ARN][1] of the resource to untag.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of keys for tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] thing_name
    #   The name of the core device. This is also the name of the IoT thing.
    #   @return [String]
    #
    # @!attribute [rw] connectivity_info
    #   The connectivity information for the core device.
    #   @return [Array<Types::ConnectivityInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/UpdateConnectivityInfoRequest AWS API Documentation
    #
    class UpdateConnectivityInfoRequest < Struct.new(
      :thing_name,
      :connectivity_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   The new version of the connectivity information for the core device.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the connectivity information update request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/UpdateConnectivityInfoResponse AWS API Documentation
    #
    class UpdateConnectivityInfoResponse < Struct.new(
      :version,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. This can occur if your request contains
    # malformed JSON or unsupported characters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The list of fields that failed to validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a validation exception field.
    #
    # @!attribute [rw] name
    #   The name of the exception field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message of the exception field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/greengrassv2-2020-11-30/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
