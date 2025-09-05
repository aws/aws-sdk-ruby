# frozen_string_literal: true

# This is generated code!

module Aws::Panorama
  # This module contains the types returned by client operations.
  module Types

    # <p>The requestor does not have permission to access the target action or resource.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a beta appliance software update.</p>
    # @!attribute version
    #   <p>The appliance software version.</p>
    #   @return [String]
    class AlternateSoftwareMetadata < Struct.new(
      :version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An application instance on a device.</p>
    # @!attribute name
    #   <p>The application instance's name.</p>
    #   @return [String]
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device_name
    #   <p>The device's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The application instance's description.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The application instance's status.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The application instance's health status.</p>
    #   @return [String]
    # @!attribute status_description
    #   <p>The application instance's status description.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #   @return [Time]
    # @!attribute arn
    #   <p>The application instance's ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The application instance's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute runtime_context_states
    #   <p>The application's state.</p>
    #   @return [Array<Types::ReportedRuntimeContextState>]
    class ApplicationInstance < Struct.new(
      :name,
      :application_instance_id,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :description,
      :status,
      :health_status,
      :status_description,
      :created_time,
      :arn,
      :tags,
      :runtime_context_states,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target resource is in use.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource's ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource's type.</p>
    #   @return [String]
    # @!attribute error_id
    #   <p>A unique ID for the error.</p>
    #   @return [String]
    # @!attribute error_arguments
    #   <p>A list of attributes that led to the exception and their values.</p>
    #   @return [Array<Types::ConflictExceptionErrorArgument>]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :error_id,
      :error_arguments,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A conflict exception error argument.</p>
    # @!attribute name
    #   <p>The error argument's name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The error argument's value.</p>
    #   @return [String]
    class ConflictExceptionErrorArgument < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the application instance.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the application instance.</p>
    #   @return [String]
    # @!attribute manifest_payload
    #   <p>The application's manifest document.</p>
    #   @return [Types::ManifestPayload]
    # @!attribute manifest_overrides_payload
    #   <p>Setting overrides for the application manifest.</p>
    #   @return [Types::ManifestOverridesPayload]
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of an application instance to replace with the new instance.</p>
    #   @return [String]
    # @!attribute runtime_role_arn
    #   <p>The ARN of a runtime role for the application instance.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device
    #   <p>A device's ID.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the application instance.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationInstanceInput < Struct.new(
      :name,
      :description,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :runtime_role_arn,
      :default_runtime_context_device,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    class CreateApplicationInstanceOutput < Struct.new(
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_ids
    #   <p>ID of target device.</p>
    #   @return [Array<String>]
    # @!attribute device_job_config
    #   <p>Configuration settings for a software update job.</p>
    #   @return [Types::DeviceJobConfig]
    # @!attribute job_type
    #   <p>The type of job to run.</p>
    #   @return [String]
    class CreateJobForDevicesInput < Struct.new(
      :device_ids,
      :device_job_config,
      :job_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::Job>]
    class CreateJobForDevicesOutput < Struct.new(
      :jobs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_type
    #   <p>The type of node.</p>
    #   @return [String]
    # @!attribute output_package_name
    #   <p>An output package name for the node.</p>
    #   @return [String]
    # @!attribute output_package_version
    #   <p>An output package version for the node.</p>
    #   @return [String]
    # @!attribute node_name
    #   <p>A name for the node.</p>
    #   @return [String]
    # @!attribute node_description
    #   <p>A description for the node.</p>
    #   @return [String]
    # @!attribute template_parameters
    #   <p>Template parameters for the node.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_tags
    #   <p>Tags for the job.</p>
    #   @return [Array<Types::JobResourceTags>]
    class CreateNodeFromTemplateJobInput < Struct.new(
      :template_type,
      :output_package_name,
      :output_package_version,
      :node_name,
      :node_description,
      :template_parameters,
      :job_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class CreateNodeFromTemplateJobOutput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_type
    #   <p>A job type for the package import job.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>An input config for the package import job.</p>
    #   @return [Types::PackageImportJobInputConfig]
    # @!attribute output_config
    #   <p>An output config for the package import job.</p>
    #   @return [Types::PackageImportJobOutputConfig]
    # @!attribute client_token
    #   <p>A client token for the package import job.</p>
    #   @return [String]
    # @!attribute job_tags
    #   <p>Tags for the package import job.</p>
    #   @return [Array<Types::JobResourceTags>]
    class CreatePackageImportJobInput < Struct.new(
      :job_type,
      :input_config,
      :output_config,
      :client_token,
      :job_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class CreatePackageImportJobOutput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_name
    #   <p>A name for the package.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the package.</p>
    #   @return [Hash<String, String>]
    class CreatePackageInput < Struct.new(
      :package_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The package's storage location.</p>
    #   @return [Types::StorageLocation]
    class CreatePackageOutput < Struct.new(
      :package_id,
      :arn,
      :storage_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    class DeleteDeviceInput < Struct.new(
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    class DeleteDeviceOutput < Struct.new(
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    # @!attribute force_delete
    #   <p>Delete the package even if it has artifacts stored in its access point. Deletes the package's artifacts from
    #         Amazon S3.</p>
    #   @return [Boolean]
    class DeletePackageInput < Struct.new(
      :package_id,
      :force_delete,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePackageOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_account
    #   <p>An owner account.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>A package ID.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>A package version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>A patch version.</p>
    #   @return [String]
    # @!attribute updated_latest_patch_version
    #   <p>If the version was marked latest, the new version to maker as latest.</p>
    #   @return [String]
    class DeregisterPackageVersionInput < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :updated_latest_patch_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterPackageVersionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    class DescribeApplicationInstanceDetailsInput < Struct.new(
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The application instance's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The application instance's description.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device
    #   <p>The application instance's default runtime context device.</p>
    #   @return [String]
    # @!attribute manifest_payload
    #   <p>The application instance's configuration manifest.</p>
    #   @return [Types::ManifestPayload]
    # @!attribute manifest_overrides_payload
    #   <p>Parameter overrides for the configuration manifest.</p>
    #   @return [Types::ManifestOverridesPayload]
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of the application instance that this instance replaced.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #   @return [Time]
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    class DescribeApplicationInstanceDetailsOutput < Struct.new(
      :name,
      :description,
      :default_runtime_context_device,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :created_time,
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    class DescribeApplicationInstanceInput < Struct.new(
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The application instance's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The application instance's description.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute default_runtime_context_device_name
    #   <p>The device's bane.</p>
    #   @return [String]
    # @!attribute application_instance_id_to_replace
    #   <p>The ID of the application instance that this instance replaced.</p>
    #   @return [String]
    # @!attribute runtime_role_arn
    #   <p>The application instance's runtime role ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The application instance's status.</p>
    #   @return [String]
    # @!attribute health_status
    #   <p>The application instance's health status.</p>
    #   @return [String]
    # @!attribute status_description
    #   <p>The application instance's status description.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the application instance was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The application instance was updated.</p>
    #   @return [Time]
    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The application instance's ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The application instance's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute runtime_context_states
    #   <p>The application instance's state.</p>
    #   @return [Array<Types::ReportedRuntimeContextState>]
    class DescribeApplicationInstanceOutput < Struct.new(
      :name,
      :description,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :application_instance_id_to_replace,
      :runtime_role_arn,
      :status,
      :health_status,
      :status_description,
      :created_time,
      :last_updated_time,
      :application_instance_id,
      :arn,
      :tags,
      :runtime_context_states,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    class DescribeDeviceInput < Struct.new(
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class DescribeDeviceJobInput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute device_arn
    #   <p>The device's ARN.</p>
    #   @return [String]
    # @!attribute device_name
    #   <p>The device's name.</p>
    #   @return [String]
    # @!attribute device_type
    #   <p>The device's type.</p>
    #   @return [String]
    # @!attribute image_version
    #   <p>For an OTA job, the target version of the device software.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute job_type
    #   <p>The job's type.</p>
    #   @return [String]
    class DescribeDeviceJobOutput < Struct.new(
      :job_id,
      :device_id,
      :device_arn,
      :device_name,
      :device_type,
      :image_version,
      :status,
      :created_time,
      :job_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The device's name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The device's ARN.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The device's description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The device's type.</p>
    #   @return [String]
    # @!attribute device_connection_status
    #   <p>The device's connection status.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the device was created.</p>
    #   @return [Time]
    # @!attribute provisioning_status
    #   <p>The device's provisioning status.</p>
    #   @return [String]
    # @!attribute latest_software
    #   <p>The latest software version available for the device.</p>
    #   @return [String]
    # @!attribute current_software
    #   <p>The device's current software version.</p>
    #   @return [String]
    # @!attribute serial_number
    #   <p>The device's serial number.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The device's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute networking_configuration
    #   <p>The device's networking configuration.</p>
    #   @return [Types::NetworkPayload]
    # @!attribute current_networking_status
    #   <p>The device's networking status.</p>
    #   @return [Types::NetworkStatus]
    # @!attribute lease_expiration_time
    #   <p>The device's lease expiration time.</p>
    #   @return [Time]
    # @!attribute alternate_softwares
    #   <p>Beta software releases available for the device.</p>
    #   @return [Array<Types::AlternateSoftwareMetadata>]
    # @!attribute latest_alternate_software
    #   <p>The most recent beta software release.</p>
    #   @return [String]
    # @!attribute brand
    #   <p>The device's maker.</p>
    #   @return [String]
    # @!attribute latest_device_job
    #   <p>A device's latest job. Includes the target image version, and the job status.</p>
    #   @return [Types::LatestDeviceJob]
    # @!attribute device_aggregated_status
    #   <p>A device's aggregated status. Including the device's connection status, provisioning status, and lease status.</p>
    #   @return [String]
    class DescribeDeviceOutput < Struct.new(
      :device_id,
      :name,
      :arn,
      :description,
      :type,
      :device_connection_status,
      :created_time,
      :provisioning_status,
      :latest_software,
      :current_software,
      :serial_number,
      :tags,
      :networking_configuration,
      :current_networking_status,
      :lease_expiration_time,
      :alternate_softwares,
      :latest_alternate_software,
      :brand,
      :latest_device_job,
      :device_aggregated_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class DescribeNodeFromTemplateJobInput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute output_package_name
    #   <p>The job's output package name.</p>
    #   @return [String]
    # @!attribute output_package_version
    #   <p>The job's output package version.</p>
    #   @return [String]
    # @!attribute node_name
    #   <p>The node's name.</p>
    #   @return [String]
    # @!attribute node_description
    #   <p>The node's description.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The job's template type.</p>
    #   @return [String]
    # @!attribute template_parameters
    #   <p>The job's template parameters.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_tags
    #   <p>The job's tags.</p>
    #   @return [Array<Types::JobResourceTags>]
    class DescribeNodeFromTemplateJobOutput < Struct.new(
      :job_id,
      :status,
      :status_message,
      :created_time,
      :last_updated_time,
      :output_package_name,
      :output_package_version,
      :node_name,
      :node_description,
      :template_type,
      :template_parameters,
      :job_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_id
    #   <p>The node's ID.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #   @return [String]
    class DescribeNodeInput < Struct.new(
      :node_id,
      :owner_account,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_id
    #   <p>The node's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The node's name.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The node's category.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The node's package name.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>The node's package ID.</p>
    #   @return [String]
    # @!attribute package_arn
    #   <p>The node's ARN.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The node's package version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The node's patch version.</p>
    #   @return [String]
    # @!attribute node_interface
    #   <p>The node's interface.</p>
    #   @return [Types::NodeInterface]
    # @!attribute asset_name
    #   <p>The node's asset name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The node's description.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the node was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>When the node was updated.</p>
    #   @return [Time]
    class DescribeNodeOutput < Struct.new(
      :node_id,
      :name,
      :category,
      :owner_account,
      :package_name,
      :package_id,
      :package_arn,
      :package_version,
      :patch_version,
      :node_interface,
      :asset_name,
      :description,
      :created_time,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    class DescribePackageImportJobInput < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The job's client token.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The job's type.</p>
    #   @return [String]
    # @!attribute input_config
    #   <p>The job's input config.</p>
    #   @return [Types::PackageImportJobInputConfig]
    # @!attribute output_config
    #   <p>The job's output config.</p>
    #   @return [Types::PackageImportJobOutputConfig]
    # @!attribute output
    #   <p>The job's output.</p>
    #   @return [Types::PackageImportJobOutput]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute job_tags
    #   <p>The job's tags.</p>
    #   @return [Array<Types::JobResourceTags>]
    class DescribePackageImportJobOutput < Struct.new(
      :job_id,
      :client_token,
      :job_type,
      :input_config,
      :output_config,
      :output,
      :created_time,
      :last_updated_time,
      :status,
      :status_message,
      :job_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    class DescribePackageInput < Struct.new(
      :package_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The package's name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #   @return [String]
    # @!attribute storage_location
    #   <p>The package's storage location.</p>
    #   @return [Types::StorageLocation]
    # @!attribute read_access_principal_arns
    #   <p>ARNs of accounts that have read access to the package.</p>
    #   @return [Array<String>]
    # @!attribute write_access_principal_arns
    #   <p>ARNs of accounts that have write access to the package.</p>
    #   @return [Array<String>]
    # @!attribute created_time
    #   <p>When the package was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The package's tags.</p>
    #   @return [Hash<String, String>]
    class DescribePackageOutput < Struct.new(
      :package_id,
      :package_name,
      :arn,
      :storage_location,
      :read_access_principal_arns,
      :write_access_principal_arns,
      :created_time,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_account
    #   <p>The version's owner account.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>The version's ID.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The version's version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The version's patch version.</p>
    #   @return [String]
    class DescribePackageVersionInput < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_account
    #   <p>The account ID of the version's owner.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>The version's ID.</p>
    #   @return [String]
    # @!attribute package_arn
    #   <p>The ARN of the package.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The version's name.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The version's version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The version's patch version.</p>
    #   @return [String]
    # @!attribute is_latest_patch
    #   <p>Whether the version is the latest available.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The version's status.</p>
    #   @return [String]
    # @!attribute status_description
    #   <p>The version's status description.</p>
    #   @return [String]
    # @!attribute registered_time
    #   <p>The version's registered time.</p>
    #   @return [Time]
    class DescribePackageVersionOutput < Struct.new(
      :owner_account,
      :package_id,
      :package_arn,
      :package_name,
      :package_version,
      :patch_version,
      :is_latest_patch,
      :status,
      :status_description,
      :registered_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_latest_patch] = false unless options.key?(:is_latest_patch)
        super
      end
    end

    # <p>A device.</p>
    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The device's name.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the device was created.</p>
    #   @return [Time]
    # @!attribute provisioning_status
    #   <p>The device's provisioning status.</p>
    #   @return [String]
    # @!attribute last_updated_time
    #   <p>When the device was updated.</p>
    #   @return [Time]
    # @!attribute lease_expiration_time
    #   <p>The device's lease expiration time.</p>
    #   @return [Time]
    # @!attribute brand
    #   <p>The device's maker.</p>
    #   @return [String]
    # @!attribute current_software
    #   <p>A device's current software.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the device.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The device's tags.</p>
    #   @return [Hash<String, String>]
    # @!attribute type
    #   <p>The device's type.</p>
    #   @return [String]
    # @!attribute latest_device_job
    #   <p>A device's latest job. Includes the target image version, and the update job status.</p>
    #   @return [Types::LatestDeviceJob]
    # @!attribute device_aggregated_status
    #   <p>A device's aggregated status. Including the device's connection status, provisioning status, and lease status.</p>
    #   @return [String]
    class Device < Struct.new(
      :device_id,
      :name,
      :created_time,
      :provisioning_status,
      :last_updated_time,
      :lease_expiration_time,
      :brand,
      :current_software,
      :description,
      :tags,
      :type,
      :latest_device_job,
      :device_aggregated_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A job that runs on a device.</p>
    # @!attribute device_name
    #   <p>The name of the target device</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The ID of the target device.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute job_type
    #   <p>The job's type.</p>
    #   @return [String]
    class DeviceJob < Struct.new(
      :device_name,
      :device_id,
      :job_id,
      :created_time,
      :job_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A job's configuration.</p>
    # @!attribute ota_job_config
    #   <p>A configuration for an over-the-air (OTA) upgrade. Required for OTA jobs.</p>
    #   @return [Types::OTAJobConfig]
    class DeviceJobConfig < Struct.new(
      :ota_job_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A device's network configuration.</p>
    # @!attribute connection_type
    #   <p>How the device gets an IP address.</p>
    #   @return [String]
    # @!attribute static_ip_connection_info
    #   <p>Network configuration for a static IP connection.</p>
    #   @return [Types::StaticIpConnectionInfo]
    class EthernetPayload < Struct.new(
      :connection_type,
      :static_ip_connection_info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A device's Ethernet status.</p>
    # @!attribute ip_address
    #   <p>The device's IP address.</p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The device's connection status.</p>
    #   @return [String]
    # @!attribute hw_address
    #   <p>The device's physical address.</p>
    #   @return [String]
    class EthernetStatus < Struct.new(
      :ip_address,
      :connection_status,
      :hw_address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal error occurred.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds a client should wait before retrying the call.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>A job for a device.</p>
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p>The target device's ID.</p>
    #   @return [String]
    class Job < Struct.new(
      :job_id,
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tags for a job.</p>
    # @!attribute resource_type
    #   <p>The job's type.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The job's tags.</p>
    #   @return [Hash<String, String>]
    class JobResourceTags < Struct.new(
      :resource_type,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the latest device job.</p>
    # @!attribute image_version
    #   <p>The target version of the device software.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the latest device job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The job's type.</p>
    #   @return [String]
    class LatestDeviceJob < Struct.new(
      :image_version,
      :status,
      :job_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>The application instance's ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of application instance dependencies to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListApplicationInstanceDependenciesInput < Struct.new(
      :application_instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_objects
    #   <p>A list of package objects.</p>
    #   @return [Array<Types::PackageObject>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListApplicationInstanceDependenciesOutput < Struct.new(
      :package_objects,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>The node instances' application instance ID.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of node instances to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListApplicationInstanceNodeInstancesInput < Struct.new(
      :application_instance_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_instances
    #   <p>A list of node instances.</p>
    #   @return [Array<Types::NodeInstance>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListApplicationInstanceNodeInstancesOutput < Struct.new(
      :node_instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The application instances' device ID.</p>
    #   @return [String]
    # @!attribute status_filter
    #   <p>Only include instances with a specific status.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of application instances to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListApplicationInstancesInput < Struct.new(
      :device_id,
      :status_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instances
    #   <p>A list of application instances.</p>
    #   @return [Array<Types::ApplicationInstance>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListApplicationInstancesOutput < Struct.new(
      :application_instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of devices to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute sort_by
    #   <p>The target column to be sorted on. Default column sort is CREATED_TIME.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The sorting order for the returned list. SortOrder is DESCENDING by default based on CREATED_TIME. Otherwise, SortOrder is ASCENDING.</p>
    #   @return [String]
    # @!attribute name_filter
    #   <p>Filter based on device's name. Prefixes supported.</p>
    #   @return [String]
    # @!attribute device_aggregated_status_filter
    #   <p>Filter based on a device's status.</p>
    #   @return [String]
    class ListDevicesInput < Struct.new(
      :next_token,
      :max_results,
      :sort_by,
      :sort_order,
      :name_filter,
      :device_aggregated_status_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>Filter results by the job's target device ID.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of device jobs to return in one page of results.</p>
    #   @return [Integer]
    class ListDevicesJobsInput < Struct.new(
      :device_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::DeviceJob>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListDevicesJobsOutput < Struct.new(
      :device_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute devices
    #   <p>A list of devices.</p>
    #   @return [Array<Types::Device>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListDevicesOutput < Struct.new(
      :devices,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of node from template jobs to return in one page of results.</p>
    #   @return [Integer]
    class ListNodeFromTemplateJobsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute node_from_template_jobs
    #   <p>A list of jobs.</p>
    #   @return [Array<Types::NodeFromTemplateJob>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListNodeFromTemplateJobsOutput < Struct.new(
      :node_from_template_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute category
    #   <p>Search for nodes by category.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>Search for nodes by the account ID of the nodes' owner.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>Search for nodes by name.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>Search for nodes by version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>Search for nodes by patch version.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of nodes to return in one page of results.</p>
    #   @return [Integer]
    class ListNodesInput < Struct.new(
      :category,
      :owner_account,
      :package_name,
      :package_version,
      :patch_version,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p>A list of nodes.</p>
    #   @return [Array<Types::Node>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListNodesOutput < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of package import jobs to return in one page of results.</p>
    #   @return [Integer]
    class ListPackageImportJobsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_import_jobs
    #   <p>A list of package import jobs.</p>
    #   @return [Array<Types::PackageImportJob>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListPackageImportJobsOutput < Struct.new(
      :package_import_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of packages to return in one page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListPackagesInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute packages
    #   <p>A list of packages.</p>
    #   @return [Array<Types::PackageListItem>]
    # @!attribute next_token
    #   <p>A pagination token that's included if more results are available.</p>
    #   @return [String]
    class ListPackagesOutput < Struct.new(
      :packages,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Parameter overrides for an application instance. This is a JSON document that has a single key
    #         (<code>PayloadData</code>) where the value is an escaped string representation of the overrides document.</p>
    # @!attribute payload_data
    #   <p>The overrides document.</p>
    #   @return [String]
    class ManifestOverridesPayload < Struct.new(
      :payload_data,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PayloadData < ManifestOverridesPayload; end
      class Unknown < ManifestOverridesPayload; end
    end

    # <p>A application verion's manifest file. This is a JSON document that has a single key (<code>PayloadData</code>)
    #       where the value is an escaped string representation of the application manifest (<code>graph.json</code>). This
    #       file is located in the <code>graphs</code> folder in your application source.</p>
    # @!attribute payload_data
    #   <p>The application manifest.</p>
    #   @return [String]
    class ManifestPayload < Struct.new(
      :payload_data,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PayloadData < ManifestPayload; end
      class Unknown < ManifestPayload; end
    end

    # <p>The network configuration for a device.</p>
    # @!attribute ethernet0
    #   <p>Settings for Ethernet port 0.</p>
    #   @return [Types::EthernetPayload]
    # @!attribute ethernet1
    #   <p>Settings for Ethernet port 1.</p>
    #   @return [Types::EthernetPayload]
    # @!attribute ntp
    #   <p>Network time protocol (NTP) server settings.</p>
    #   @return [Types::NtpPayload]
    class NetworkPayload < Struct.new(
      :ethernet0,
      :ethernet1,
      :ntp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The network status of a device.</p>
    # @!attribute ethernet0_status
    #   <p>The status of Ethernet port 0.</p>
    #   @return [Types::EthernetStatus]
    # @!attribute ethernet1_status
    #   <p>The status of Ethernet port 1.</p>
    #   @return [Types::EthernetStatus]
    # @!attribute ntp_status
    #   <p>Details about a network time protocol (NTP) server connection.</p>
    #   @return [Types::NtpStatus]
    # @!attribute last_updated_time
    #   <p>When the network status changed.</p>
    #   @return [Time]
    class NetworkStatus < Struct.new(
      :ethernet0_status,
      :ethernet1_status,
      :ntp_status,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An application node that represents a camera stream, a model, code, or output.</p>
    # @!attribute node_id
    #   <p>The node's ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The node's name.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The node's category.</p>
    #   @return [String]
    # @!attribute owner_account
    #   <p>The account ID of the node's owner.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The node's package name.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>The node's package ID.</p>
    #   @return [String]
    # @!attribute package_arn
    #   <p>The node's ARN.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The node's package version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The node's patch version.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The node's description.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the node was created.</p>
    #   @return [Time]
    class Node < Struct.new(
      :node_id,
      :name,
      :category,
      :owner_account,
      :package_name,
      :package_id,
      :package_arn,
      :package_version,
      :patch_version,
      :description,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A job to create a camera stream node.</p>
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute template_type
    #   <p>The job's template type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute node_name
    #   <p>The node's name.</p>
    #   @return [String]
    class NodeFromTemplateJob < Struct.new(
      :job_id,
      :template_type,
      :status,
      :status_message,
      :created_time,
      :node_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A node input port.</p>
    # @!attribute name
    #   <p>The input port's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The input port's description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The input port's type.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The input port's default value.</p>
    #   @return [String]
    # @!attribute max_connections
    #   <p>The input port's max connections.</p>
    #   @return [Integer]
    class NodeInputPort < Struct.new(
      :name,
      :description,
      :type,
      :default_value,
      :max_connections,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_connections] = 0 unless options.key?(:max_connections)
        super
      end
    end

    # <p>A node instance.</p>
    # @!attribute node_instance_id
    #   <p>The instance's ID.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>The node's ID.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The instance's package name.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The instance's package version.</p>
    #   @return [String]
    # @!attribute package_patch_version
    #   <p>The instance's package patch version.</p>
    #   @return [String]
    # @!attribute node_name
    #   <p>The instance's name.</p>
    #   @return [String]
    # @!attribute current_status
    #   <p>The instance's current status.</p>
    #   @return [String]
    class NodeInstance < Struct.new(
      :node_instance_id,
      :node_id,
      :package_name,
      :package_version,
      :package_patch_version,
      :node_name,
      :current_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A node interface.</p>
    # @!attribute inputs
    #   <p>The node interface's inputs.</p>
    #   @return [Array<Types::NodeInputPort>]
    # @!attribute outputs
    #   <p>The node interface's outputs.</p>
    #   @return [Array<Types::NodeOutputPort>]
    class NodeInterface < Struct.new(
      :inputs,
      :outputs,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A node output port.</p>
    # @!attribute name
    #   <p>The output port's name.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The output port's description.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The output port's type.</p>
    #   @return [String]
    class NodeOutputPort < Struct.new(
      :name,
      :description,
      :type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A signal to a camera node to start or stop processing video.</p>
    # @!attribute node_instance_id
    #   <p>The camera node's name, from the application manifest.</p>
    #   @return [String]
    # @!attribute signal
    #   <p>The signal value.</p>
    #   @return [String]
    class NodeSignal < Struct.new(
      :node_instance_id,
      :signal,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Network time protocol (NTP) server settings. Use this option to connect to local NTP servers instead of
    #         <code>pool.ntp.org</code>.</p>
    # @!attribute ntp_servers
    #   <p>NTP servers to use, in order of preference.</p>
    #   @return [Array<String>]
    class NtpPayload < Struct.new(
      :ntp_servers,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an NTP server connection.</p>
    # @!attribute connection_status
    #   <p>The connection's status.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the server.</p>
    #   @return [String]
    # @!attribute ntp_server_name
    #   <p>The domain name of the server.</p>
    #   @return [String]
    class NtpStatus < Struct.new(
      :connection_status,
      :ip_address,
      :ntp_server_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An over-the-air update (OTA) job configuration.</p>
    # @!attribute image_version
    #   <p>The target version of the device software.</p>
    #   @return [String]
    # @!attribute allow_major_version_update
    #   <p>Whether to apply the update if it is a major version change.</p>
    #   @return [Boolean]
    class OTAJobConfig < Struct.new(
      :image_version,
      :allow_major_version_update,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_major_version_update] = false unless options.key?(:allow_major_version_update)
        super
      end
    end

    # <p>The location of an output object in Amazon S3.</p>
    # @!attribute bucket_name
    #   <p>The object's bucket.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>The object's key.</p>
    #   @return [String]
    class OutPutS3Location < Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A job to import a package version.</p>
    # @!attribute job_id
    #   <p>The job's ID.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The job's type.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The job's status.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The job's status message.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the job was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>When the job was updated.</p>
    #   @return [Time]
    class PackageImportJob < Struct.new(
      :job_id,
      :job_type,
      :status,
      :status_message,
      :created_time,
      :last_updated_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for a package import job.</p>
    # @!attribute package_version_input_config
    #   <p>The package version's input configuration.</p>
    #   @return [Types::PackageVersionInputConfig]
    class PackageImportJobInputConfig < Struct.new(
      :package_version_input_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Results of a package import job.</p>
    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The package's version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The package's patch version.</p>
    #   @return [String]
    # @!attribute output_s3_location
    #   <p>The package's output location.</p>
    #   @return [Types::OutPutS3Location]
    class PackageImportJobOutput < Struct.new(
      :package_id,
      :package_version,
      :patch_version,
      :output_s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An output configuration for a package import job.</p>
    # @!attribute package_version_output_config
    #   <p>The package version's output configuration.</p>
    #   @return [Types::PackageVersionOutputConfig]
    class PackageImportJobOutputConfig < Struct.new(
      :package_version_output_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A package summary.</p>
    # @!attribute package_id
    #   <p>The package's ID.</p>
    #   @return [String]
    # @!attribute package_name
    #   <p>The package's name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The package's ARN.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>When the package was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The package's tags.</p>
    #   @return [Hash<String, String>]
    class PackageListItem < Struct.new(
      :package_id,
      :package_name,
      :arn,
      :created_time,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A package object.</p>
    # @!attribute name
    #   <p>The object's name.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The object's package version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>The object's patch version.</p>
    #   @return [String]
    class PackageObject < Struct.new(
      :name,
      :package_version,
      :patch_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A package version input configuration.</p>
    # @!attribute s3_location
    #   <p>A location in Amazon S3.</p>
    #   @return [Types::S3Location]
    class PackageVersionInputConfig < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A package version output configuration.</p>
    # @!attribute package_name
    #   <p>The output's package name.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The output's package version.</p>
    #   @return [String]
    # @!attribute mark_latest
    #   <p>Indicates that the version is recommended for all users.</p>
    #   @return [Boolean]
    class PackageVersionOutputConfig < Struct.new(
      :package_name,
      :package_version,
      :mark_latest,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:mark_latest] = false unless options.key?(:mark_latest)
        super
      end
    end

    # @!attribute name
    #   <p>A name for the device.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the device.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the device.</p>
    #   @return [Hash<String, String>]
    # @!attribute networking_configuration
    #   <p>A networking configuration for the device.</p>
    #   @return [Types::NetworkPayload]
    class ProvisionDeviceInput < Struct.new(
      :name,
      :description,
      :tags,
      :networking_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The device's ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The device's status.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The device's configuration bundle.</p>
    #   @return [String]
    # @!attribute iot_thing_name
    #   <p>The device's IoT thing name.</p>
    #   @return [String]
    class ProvisionDeviceOutput < Struct.new(
      :device_id,
      :arn,
      :status,
      :certificates,
      :iot_thing_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute owner_account
    #   <p>An owner account.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>A package ID.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>A package version.</p>
    #   @return [String]
    # @!attribute patch_version
    #   <p>A patch version.</p>
    #   @return [String]
    # @!attribute mark_latest
    #   <p>Whether to mark the new version as the latest version.</p>
    #   @return [Boolean]
    class RegisterPackageVersionInput < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :mark_latest,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RegisterPackageVersionOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>An application instance ID.</p>
    #   @return [String]
    class RemoveApplicationInstanceInput < Struct.new(
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RemoveApplicationInstanceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An application instance's state.</p>
    # @!attribute desired_state
    #   <p>The application's desired state.</p>
    #   @return [String]
    # @!attribute runtime_context_name
    #   <p>The device's name.</p>
    #   @return [String]
    # @!attribute device_reported_status
    #   <p>The application's reported status.</p>
    #   @return [String]
    # @!attribute device_reported_time
    #   <p>When the device reported the application's state.</p>
    #   @return [Time]
    class ReportedRuntimeContextState < Struct.new(
      :desired_state,
      :runtime_context_name,
      :device_reported_status,
      :device_reported_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The target resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource's ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource's type.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A location in Amazon S3.</p>
    # @!attribute region
    #   <p>The bucket's Region.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>A bucket name.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>An object key.</p>
    #   @return [String]
    class S3Location < Struct.new(
      :region,
      :bucket_name,
      :object_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a limit to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The target resource's ID.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The target resource's type.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The name of the limit.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The name of the service.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>An application instance ID.</p>
    #   @return [String]
    # @!attribute node_signals
    #   <p>A list of signals.</p>
    #   @return [Array<Types::NodeSignal>]
    class SignalApplicationInstanceNodeInstancesInput < Struct.new(
      :application_instance_id,
      :node_signals,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_instance_id
    #   <p>An application instance ID.</p>
    #   @return [String]
    class SignalApplicationInstanceNodeInstancesOutput < Struct.new(
      :application_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A static IP configuration.</p>
    # @!attribute ip_address
    #   <p>The connection's IP address.</p>
    #   @return [String]
    # @!attribute mask
    #   <p>The connection's DNS mask.</p>
    #   @return [String]
    # @!attribute dns
    #   <p>The connection's DNS address.</p>
    #   @return [Array<String>]
    # @!attribute default_gateway
    #   <p>The connection's default gateway.</p>
    #   @return [String]
    class StaticIpConnectionInfo < Struct.new(
      :ip_address,
      :mask,
      :dns,
      :default_gateway,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A storage location.</p>
    # @!attribute bucket
    #   <p>The location's bucket.</p>
    #   @return [String]
    # @!attribute repo_prefix_location
    #   <p>The location's repo prefix.</p>
    #   @return [String]
    # @!attribute generated_prefix_location
    #   <p>The location's generated prefix.</p>
    #   @return [String]
    # @!attribute binary_prefix_location
    #   <p>The location's binary prefix.</p>
    #   @return [String]
    # @!attribute manifest_prefix_location
    #   <p>The location's manifest prefix.</p>
    #   @return [String]
    class StorageLocation < Struct.new(
      :bucket,
      :repo_prefix_location,
      :generated_prefix_location,
      :binary_prefix_location,
      :manifest_prefix_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource's ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the device.</p>
    #   @return [String]
    class UpdateDeviceMetadataInput < Struct.new(
      :device_id,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_id
    #   <p>The device's ID.</p>
    #   @return [String]
    class UpdateDeviceMetadataOutput < Struct.new(
      :device_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request contains an invalid parameter value.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that validation failed.</p>
    #   @return [String]
    # @!attribute error_id
    #   <p>A unique ID for the error.</p>
    #   @return [String]
    # @!attribute error_arguments
    #   <p>A list of attributes that led to the exception and their values.</p>
    #   @return [Array<Types::ValidationExceptionErrorArgument>]
    # @!attribute fields
    #   <p>A list of request parameters that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :error_id,
      :error_arguments,
      :fields,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A validation exception error argument.</p>
    # @!attribute name
    #   <p>The argument's name.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The argument's value.</p>
    #   @return [String]
    class ValidationExceptionErrorArgument < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A validation exception field.</p>
    # @!attribute name
    #   <p>The field's name.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The field's message.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
