# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Panorama
  module Types

    # The requestor does not have permission to access the target action or
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a beta appliance software update.
    #
    # @!attribute [rw] version
    #   The appliance software version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/AlternateSoftwareMetadata AWS API Documentation
    #
    class AlternateSoftwareMetadata < Struct.new(
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An application instance on a device.
    #
    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The application instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_runtime_context_device
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device_name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application instance's description.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The application instance's health status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @!attribute [rw] runtime_context_states
    #   The application's state.
    #   @return [Array<Types::ReportedRuntimeContextState>]
    #
    # @!attribute [rw] status
    #   The application instance's status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The application instance's status description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The application instance's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ApplicationInstance AWS API Documentation
    #
    class ApplicationInstance < Struct.new(
      :application_instance_id,
      :arn,
      :created_time,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :description,
      :health_status,
      :name,
      :runtime_context_states,
      :status,
      :status_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target resource is in use.
    #
    # @!attribute [rw] error_arguments
    #   A list of attributes that led to the exception and their values.
    #   @return [Array<Types::ConflictExceptionErrorArgument>]
    #
    # @!attribute [rw] error_id
    #   A unique ID for the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource's ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :error_arguments,
      :error_id,
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflict exception error argument.
    #
    # @!attribute [rw] name
    #   The error argument's name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The error argument's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ConflictExceptionErrorArgument AWS API Documentation
    #
    class ConflictExceptionErrorArgument < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of an application instance to replace with the new instance.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device
    #   A device's ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] manifest_overrides_payload
    #   Setting overrides for the application manifest.
    #   @return [Types::ManifestOverridesPayload]
    #
    # @!attribute [rw] manifest_payload
    #   The application's manifest document.
    #   @return [Types::ManifestPayload]
    #
    # @!attribute [rw] name
    #   A name for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   The ARN of a runtime role for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the application instance.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateApplicationInstanceRequest AWS API Documentation
    #
    class CreateApplicationInstanceRequest < Struct.new(
      :application_instance_id_to_replace,
      :default_runtime_context_device,
      :description,
      :manifest_overrides_payload,
      :manifest_payload,
      :name,
      :runtime_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateApplicationInstanceResponse AWS API Documentation
    #
    class CreateApplicationInstanceResponse < Struct.new(
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_ids
    #   ID of target device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] device_job_config
    #   Configuration settings for a software update job.
    #   @return [Types::DeviceJobConfig]
    #
    # @!attribute [rw] job_type
    #   The type of job to run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateJobForDevicesRequest AWS API Documentation
    #
    class CreateJobForDevicesRequest < Struct.new(
      :device_ids,
      :device_job_config,
      :job_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of jobs.
    #   @return [Array<Types::Job>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateJobForDevicesResponse AWS API Documentation
    #
    class CreateJobForDevicesResponse < Struct.new(
      :jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_tags
    #   Tags for the job.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @!attribute [rw] node_description
    #   A description for the node.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   A name for the node.
    #   @return [String]
    #
    # @!attribute [rw] output_package_name
    #   An output package name for the node.
    #   @return [String]
    #
    # @!attribute [rw] output_package_version
    #   An output package version for the node.
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   Template parameters for the node.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_type
    #   The type of node.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateNodeFromTemplateJobRequest AWS API Documentation
    #
    class CreateNodeFromTemplateJobRequest < Struct.new(
      :job_tags,
      :node_description,
      :node_name,
      :output_package_name,
      :output_package_version,
      :template_parameters,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateNodeFromTemplateJobResponse AWS API Documentation
    #
    class CreateNodeFromTemplateJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A client token for the package import job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   An input config for the package import job.
    #   @return [Types::PackageImportJobInputConfig]
    #
    # @!attribute [rw] job_tags
    #   Tags for the package import job.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @!attribute [rw] job_type
    #   A job type for the package import job.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   An output config for the package import job.
    #   @return [Types::PackageImportJobOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageImportJobRequest AWS API Documentation
    #
    class CreatePackageImportJobRequest < Struct.new(
      :client_token,
      :input_config,
      :job_tags,
      :job_type,
      :output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageImportJobResponse AWS API Documentation
    #
    class CreatePackageImportJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package_name
    #   A name for the package.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the package.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageRequest AWS API Documentation
    #
    class CreatePackageRequest < Struct.new(
      :package_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   The package's storage location.
    #   @return [Types::StorageLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageResponse AWS API Documentation
    #
    class CreatePackageResponse < Struct.new(
      :arn,
      :package_id,
      :storage_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeleteDeviceRequest AWS API Documentation
    #
    class DeleteDeviceRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeleteDeviceResponse AWS API Documentation
    #
    class DeleteDeviceResponse < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] force_delete
    #   Delete the package even if it has artifacts stored in its access
    #   point. Deletes the package's artifacts from Amazon S3.
    #   @return [Boolean]
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeletePackageRequest AWS API Documentation
    #
    class DeletePackageRequest < Struct.new(
      :force_delete,
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeletePackageResponse AWS API Documentation
    #
    class DeletePackageResponse < Aws::EmptyStructure; end

    # @!attribute [rw] owner_account
    #   An owner account.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   A package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A package version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   A patch version.
    #   @return [String]
    #
    # @!attribute [rw] updated_latest_patch_version
    #   If the version was marked latest, the new version to maker as
    #   latest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeregisterPackageVersionRequest AWS API Documentation
    #
    class DeregisterPackageVersionRequest < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :updated_latest_patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeregisterPackageVersionResponse AWS API Documentation
    #
    class DeregisterPackageVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceDetailsRequest AWS API Documentation
    #
    class DescribeApplicationInstanceDetailsRequest < Struct.new(
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of the application instance that this instance replaced.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_runtime_context_device
    #   The application instance's default runtime context device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application instance's description.
    #   @return [String]
    #
    # @!attribute [rw] manifest_overrides_payload
    #   Parameter overrides for the configuration manifest.
    #   @return [Types::ManifestOverridesPayload]
    #
    # @!attribute [rw] manifest_payload
    #   The application instance's configuration manifest.
    #   @return [Types::ManifestPayload]
    #
    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceDetailsResponse AWS API Documentation
    #
    class DescribeApplicationInstanceDetailsResponse < Struct.new(
      :application_instance_id,
      :application_instance_id_to_replace,
      :created_time,
      :default_runtime_context_device,
      :description,
      :manifest_overrides_payload,
      :manifest_payload,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceRequest AWS API Documentation
    #
    class DescribeApplicationInstanceRequest < Struct.new(
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of the application instance that this instance replaced.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The application instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_runtime_context_device
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device_name
    #   The device's bane.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application instance's description.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The application instance's health status.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The application instance was updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @!attribute [rw] runtime_context_states
    #   The application instance's state.
    #   @return [Array<Types::ReportedRuntimeContextState>]
    #
    # @!attribute [rw] runtime_role_arn
    #   The application instance's runtime role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The application instance's status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The application instance's status description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The application instance's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceResponse AWS API Documentation
    #
    class DescribeApplicationInstanceResponse < Struct.new(
      :application_instance_id,
      :application_instance_id_to_replace,
      :arn,
      :created_time,
      :default_runtime_context_device,
      :default_runtime_context_device_name,
      :description,
      :health_status,
      :last_updated_time,
      :name,
      :runtime_context_states,
      :runtime_role_arn,
      :status,
      :status_description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceJobRequest AWS API Documentation
    #
    class DescribeDeviceJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_arn
    #   The device's ARN.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] device_type
    #   The device's type.
    #   @return [String]
    #
    # @!attribute [rw] image_version
    #   For an OTA job, the target version of the device software.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceJobResponse AWS API Documentation
    #
    class DescribeDeviceJobResponse < Struct.new(
      :created_time,
      :device_arn,
      :device_id,
      :device_name,
      :device_type,
      :image_version,
      :job_id,
      :job_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceRequest AWS API Documentation
    #
    class DescribeDeviceRequest < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] alternate_softwares
    #   Beta software releases available for the device.
    #   @return [Array<Types::AlternateSoftwareMetadata>]
    #
    # @!attribute [rw] arn
    #   The device's ARN.
    #   @return [String]
    #
    # @!attribute [rw] brand
    #   The device's maker.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_networking_status
    #   The device's networking status.
    #   @return [Types::NetworkStatus]
    #
    # @!attribute [rw] current_software
    #   The device's current software version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The device's description.
    #   @return [String]
    #
    # @!attribute [rw] device_aggregated_status
    #   A device's aggregated status. Including the device's connection
    #   status, provisioning status, and lease status.
    #   @return [String]
    #
    # @!attribute [rw] device_connection_status
    #   The device's connection status.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] latest_alternate_software
    #   The most recent beta software release.
    #   @return [String]
    #
    # @!attribute [rw] latest_device_job
    #   A device's latest job. Includes the target image version, and the
    #   job status.
    #   @return [Types::LatestDeviceJob]
    #
    # @!attribute [rw] latest_software
    #   The latest software version available for the device.
    #   @return [String]
    #
    # @!attribute [rw] lease_expiration_time
    #   The device's lease expiration time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] networking_configuration
    #   The device's networking configuration.
    #   @return [Types::NetworkPayload]
    #
    # @!attribute [rw] provisioning_status
    #   The device's provisioning status.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The device's serial number.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The device's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The device's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceResponse AWS API Documentation
    #
    class DescribeDeviceResponse < Struct.new(
      :alternate_softwares,
      :arn,
      :brand,
      :created_time,
      :current_networking_status,
      :current_software,
      :description,
      :device_aggregated_status,
      :device_connection_status,
      :device_id,
      :latest_alternate_software,
      :latest_device_job,
      :latest_software,
      :lease_expiration_time,
      :name,
      :networking_configuration,
      :provisioning_status,
      :serial_number,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeFromTemplateJobRequest AWS API Documentation
    #
    class DescribeNodeFromTemplateJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_tags
    #   The job's tags.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @!attribute [rw] last_updated_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] node_description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] output_package_name
    #   The job's output package name.
    #   @return [String]
    #
    # @!attribute [rw] output_package_version
    #   The job's output package version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   The job's template parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_type
    #   The job's template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeFromTemplateJobResponse AWS API Documentation
    #
    class DescribeNodeFromTemplateJobResponse < Struct.new(
      :created_time,
      :job_id,
      :job_tags,
      :last_updated_time,
      :node_description,
      :node_name,
      :output_package_name,
      :output_package_version,
      :status,
      :status_message,
      :template_parameters,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the node's owner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeRequest AWS API Documentation
    #
    class DescribeNodeRequest < Struct.new(
      :node_id,
      :owner_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset_name
    #   The node's asset name.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The node's category.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the node was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the node was updated.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] node_interface
    #   The node's interface.
    #   @return [Types::NodeInterface]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the node's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The node's ARN.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The node's package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The node's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The node's package version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The node's patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeResponse AWS API Documentation
    #
    class DescribeNodeResponse < Struct.new(
      :asset_name,
      :category,
      :created_time,
      :description,
      :last_updated_time,
      :name,
      :node_id,
      :node_interface,
      :owner_account,
      :package_arn,
      :package_id,
      :package_name,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageImportJobRequest AWS API Documentation
    #
    class DescribePackageImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   The job's client token.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] input_config
    #   The job's input config.
    #   @return [Types::PackageImportJobInputConfig]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_tags
    #   The job's tags.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] output
    #   The job's output.
    #   @return [Types::PackageImportJobOutput]
    #
    # @!attribute [rw] output_config
    #   The job's output config.
    #   @return [Types::PackageImportJobOutputConfig]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageImportJobResponse AWS API Documentation
    #
    class DescribePackageImportJobResponse < Struct.new(
      :client_token,
      :created_time,
      :input_config,
      :job_id,
      :job_tags,
      :job_type,
      :last_updated_time,
      :output,
      :output_config,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageRequest AWS API Documentation
    #
    class DescribePackageRequest < Struct.new(
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The package's name.
    #   @return [String]
    #
    # @!attribute [rw] read_access_principal_arns
    #   ARNs of accounts that have read access to the package.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_location
    #   The package's storage location.
    #   @return [Types::StorageLocation]
    #
    # @!attribute [rw] tags
    #   The package's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] write_access_principal_arns
    #   ARNs of accounts that have write access to the package.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageResponse AWS API Documentation
    #
    class DescribePackageResponse < Struct.new(
      :arn,
      :created_time,
      :package_id,
      :package_name,
      :read_access_principal_arns,
      :storage_location,
      :tags,
      :write_access_principal_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] owner_account
    #   The version's owner account.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The version's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The version's version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The version's patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageVersionRequest AWS API Documentation
    #
    class DescribePackageVersionRequest < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_latest_patch
    #   Whether the version is the latest available.
    #   @return [Boolean]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the version's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The ARN of the package.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The version's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The version's name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The version's version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The version's patch version.
    #   @return [String]
    #
    # @!attribute [rw] registered_time
    #   The version's registered time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The version's status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The version's status description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageVersionResponse AWS API Documentation
    #
    class DescribePackageVersionResponse < Struct.new(
      :is_latest_patch,
      :owner_account,
      :package_arn,
      :package_id,
      :package_name,
      :package_version,
      :patch_version,
      :registered_time,
      :status,
      :status_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A device.
    #
    # @!attribute [rw] brand
    #   The device's maker.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] current_software
    #   A device's current software.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the device.
    #   @return [String]
    #
    # @!attribute [rw] device_aggregated_status
    #   A device's aggregated status. Including the device's connection
    #   status, provisioning status, and lease status.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_device_job
    #   A device's latest job. Includes the target image version, and the
    #   update job status.
    #   @return [Types::LatestDeviceJob]
    #
    # @!attribute [rw] lease_expiration_time
    #   The device's lease expiration time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] provisioning_status
    #   The device's provisioning status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The device's tags.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   The device's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Device AWS API Documentation
    #
    class Device < Struct.new(
      :brand,
      :created_time,
      :current_software,
      :description,
      :device_aggregated_status,
      :device_id,
      :last_updated_time,
      :latest_device_job,
      :lease_expiration_time,
      :name,
      :provisioning_status,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job that runs on a device.
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] device_id
    #   The ID of the target device.
    #   @return [String]
    #
    # @!attribute [rw] device_name
    #   The name of the target device
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeviceJob AWS API Documentation
    #
    class DeviceJob < Struct.new(
      :created_time,
      :device_id,
      :device_name,
      :job_id,
      :job_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job's configuration.
    #
    # @!attribute [rw] ota_job_config
    #   A configuration for an over-the-air (OTA) upgrade. Required for OTA
    #   jobs.
    #   @return [Types::OTAJobConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeviceJobConfig AWS API Documentation
    #
    class DeviceJobConfig < Struct.new(
      :ota_job_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A device's network configuration.
    #
    # @!attribute [rw] connection_type
    #   How the device gets an IP address.
    #   @return [String]
    #
    # @!attribute [rw] static_ip_connection_info
    #   Network configuration for a static IP connection.
    #   @return [Types::StaticIpConnectionInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/EthernetPayload AWS API Documentation
    #
    class EthernetPayload < Struct.new(
      :connection_type,
      :static_ip_connection_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # A device's Ethernet status.
    #
    # @!attribute [rw] connection_status
    #   The device's connection status.
    #   @return [String]
    #
    # @!attribute [rw] hw_address
    #   The device's physical address.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The device's IP address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/EthernetStatus AWS API Documentation
    #
    class EthernetStatus < Struct.new(
      :connection_status,
      :hw_address,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds a client should wait before retrying the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job for a device.
    #
    # @!attribute [rw] device_id
    #   The target device's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Job AWS API Documentation
    #
    class Job < Struct.new(
      :device_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tags for a job.
    #
    # @!attribute [rw] resource_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The job's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/JobResourceTags AWS API Documentation
    #
    class JobResourceTags < Struct.new(
      :resource_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns information about the latest device job.
    #
    # @!attribute [rw] image_version
    #   The target version of the device software.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the latest device job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/LatestDeviceJob AWS API Documentation
    #
    class LatestDeviceJob < Struct.new(
      :image_version,
      :job_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of application instance dependencies to return in
    #   one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceDependenciesRequest AWS API Documentation
    #
    class ListApplicationInstanceDependenciesRequest < Struct.new(
      :application_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] package_objects
    #   A list of package objects.
    #   @return [Array<Types::PackageObject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceDependenciesResponse AWS API Documentation
    #
    class ListApplicationInstanceDependenciesResponse < Struct.new(
      :next_token,
      :package_objects)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   The node instances' application instance ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of node instances to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceNodeInstancesRequest AWS API Documentation
    #
    class ListApplicationInstanceNodeInstancesRequest < Struct.new(
      :application_instance_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] node_instances
    #   A list of node instances.
    #   @return [Array<Types::NodeInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceNodeInstancesResponse AWS API Documentation
    #
    class ListApplicationInstanceNodeInstancesResponse < Struct.new(
      :next_token,
      :node_instances)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The application instances' device ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of application instances to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Only include instances with a specific status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstancesRequest AWS API Documentation
    #
    class ListApplicationInstancesRequest < Struct.new(
      :device_id,
      :max_results,
      :next_token,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instances
    #   A list of application instances.
    #   @return [Array<Types::ApplicationInstance>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstancesResponse AWS API Documentation
    #
    class ListApplicationInstancesResponse < Struct.new(
      :application_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   Filter results by the job's target device ID.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of device jobs to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesJobsRequest AWS API Documentation
    #
    class ListDevicesJobsRequest < Struct.new(
      :device_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_jobs
    #   A list of jobs.
    #   @return [Array<Types::DeviceJob>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesJobsResponse AWS API Documentation
    #
    class ListDevicesJobsResponse < Struct.new(
      :device_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_aggregated_status_filter
    #   Filter based on a device's status.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of devices to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] name_filter
    #   Filter based on device's name. Prefixes supported.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   The target column to be sorted on. Default column sort is
    #   CREATED\_TIME.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The sorting order for the returned list. SortOrder is DESCENDING by
    #   default based on CREATED\_TIME. Otherwise, SortOrder is ASCENDING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :device_aggregated_status_filter,
      :max_results,
      :name_filter,
      :next_token,
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] devices
    #   A list of devices.
    #   @return [Array<Types::Device>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesResponse AWS API Documentation
    #
    class ListDevicesResponse < Struct.new(
      :devices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of node from template jobs to return in one page
    #   of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodeFromTemplateJobsRequest AWS API Documentation
    #
    class ListNodeFromTemplateJobsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] node_from_template_jobs
    #   A list of jobs.
    #   @return [Array<Types::NodeFromTemplateJob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodeFromTemplateJobsResponse AWS API Documentation
    #
    class ListNodeFromTemplateJobsResponse < Struct.new(
      :next_token,
      :node_from_template_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category
    #   Search for nodes by category.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of nodes to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   Search for nodes by the account ID of the nodes' owner.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   Search for nodes by name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   Search for nodes by version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   Search for nodes by patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodesRequest AWS API Documentation
    #
    class ListNodesRequest < Struct.new(
      :category,
      :max_results,
      :next_token,
      :owner_account,
      :package_name,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] nodes
    #   A list of nodes.
    #   @return [Array<Types::Node>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodesResponse AWS API Documentation
    #
    class ListNodesResponse < Struct.new(
      :next_token,
      :nodes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of package import jobs to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackageImportJobsRequest AWS API Documentation
    #
    class ListPackageImportJobsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] package_import_jobs
    #   A list of package import jobs.
    #   @return [Array<Types::PackageImportJob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackageImportJobsResponse AWS API Documentation
    #
    class ListPackageImportJobsResponse < Struct.new(
      :next_token,
      :package_import_jobs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of packages to return in one page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackagesRequest AWS API Documentation
    #
    class ListPackagesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @!attribute [rw] packages
    #   A list of packages.
    #   @return [Array<Types::PackageListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackagesResponse AWS API Documentation
    #
    class ListPackagesResponse < Struct.new(
      :next_token,
      :packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Parameter overrides for an application instance. This is a JSON
    # document that has a single key (`PayloadData`) where the value is an
    # escaped string representation of the overrides document.
    #
    # @note ManifestOverridesPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ManifestOverridesPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ManifestOverridesPayload corresponding to the set member.
    #
    # @!attribute [rw] payload_data
    #   The overrides document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ManifestOverridesPayload AWS API Documentation
    #
    class ManifestOverridesPayload < Struct.new(
      :payload_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PayloadData < ManifestOverridesPayload; end
      class Unknown < ManifestOverridesPayload; end
    end

    # A application verion's manifest file. This is a JSON document that
    # has a single key (`PayloadData`) where the value is an escaped string
    # representation of the application manifest (`graph.json`). This file
    # is located in the `graphs` folder in your application source.
    #
    # @note ManifestPayload is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ManifestPayload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ManifestPayload corresponding to the set member.
    #
    # @!attribute [rw] payload_data
    #   The application manifest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ManifestPayload AWS API Documentation
    #
    class ManifestPayload < Struct.new(
      :payload_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PayloadData < ManifestPayload; end
      class Unknown < ManifestPayload; end
    end

    # The network configuration for a device.
    #
    # @!attribute [rw] ethernet_0
    #   Settings for Ethernet port 0.
    #   @return [Types::EthernetPayload]
    #
    # @!attribute [rw] ethernet_1
    #   Settings for Ethernet port 1.
    #   @return [Types::EthernetPayload]
    #
    # @!attribute [rw] ntp
    #   Network time protocol (NTP) server settings.
    #   @return [Types::NtpPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NetworkPayload AWS API Documentation
    #
    class NetworkPayload < Struct.new(
      :ethernet_0,
      :ethernet_1,
      :ntp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network status of a device.
    #
    # @!attribute [rw] ethernet_0_status
    #   The status of Ethernet port 0.
    #   @return [Types::EthernetStatus]
    #
    # @!attribute [rw] ethernet_1_status
    #   The status of Ethernet port 1.
    #   @return [Types::EthernetStatus]
    #
    # @!attribute [rw] last_updated_time
    #   When the network status changed.
    #   @return [Time]
    #
    # @!attribute [rw] ntp_status
    #   Details about a network time protocol (NTP) server connection.
    #   @return [Types::NtpStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NetworkStatus AWS API Documentation
    #
    class NetworkStatus < Struct.new(
      :ethernet_0_status,
      :ethernet_1_status,
      :last_updated_time,
      :ntp_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An application node that represents a camera stream, a model, code, or
    # output.
    #
    # @!attribute [rw] category
    #   The node's category.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the node was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the node's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The node's ARN.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The node's package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The node's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The node's package version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The node's patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Node AWS API Documentation
    #
    class Node < Struct.new(
      :category,
      :created_time,
      :description,
      :name,
      :node_id,
      :owner_account,
      :package_arn,
      :package_id,
      :package_name,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job to create a camera stream node.
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The job's template type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeFromTemplateJob AWS API Documentation
    #
    class NodeFromTemplateJob < Struct.new(
      :created_time,
      :job_id,
      :node_name,
      :status,
      :status_message,
      :template_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node input port.
    #
    # @!attribute [rw] default_value
    #   The input port's default value.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The input port's description.
    #   @return [String]
    #
    # @!attribute [rw] max_connections
    #   The input port's max connections.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The input port's name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The input port's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeInputPort AWS API Documentation
    #
    class NodeInputPort < Struct.new(
      :default_value,
      :description,
      :max_connections,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node instance.
    #
    # @!attribute [rw] current_status
    #   The instance's current status.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] node_instance_id
    #   The instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The instance's name.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The instance's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_patch_version
    #   The instance's package patch version.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The instance's package version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeInstance AWS API Documentation
    #
    class NodeInstance < Struct.new(
      :current_status,
      :node_id,
      :node_instance_id,
      :node_name,
      :package_name,
      :package_patch_version,
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node interface.
    #
    # @!attribute [rw] inputs
    #   The node interface's inputs.
    #   @return [Array<Types::NodeInputPort>]
    #
    # @!attribute [rw] outputs
    #   The node interface's outputs.
    #   @return [Array<Types::NodeOutputPort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeInterface AWS API Documentation
    #
    class NodeInterface < Struct.new(
      :inputs,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node output port.
    #
    # @!attribute [rw] description
    #   The output port's description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The output port's name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The output port's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeOutputPort AWS API Documentation
    #
    class NodeOutputPort < Struct.new(
      :description,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A signal to a camera node to start or stop processing video.
    #
    # @!attribute [rw] node_instance_id
    #   The camera node's name, from the application manifest.
    #   @return [String]
    #
    # @!attribute [rw] signal
    #   The signal value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeSignal AWS API Documentation
    #
    class NodeSignal < Struct.new(
      :node_instance_id,
      :signal)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network time protocol (NTP) server settings. Use this option to
    # connect to local NTP servers instead of `pool.ntp.org`.
    #
    # @!attribute [rw] ntp_servers
    #   NTP servers to use, in order of preference.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NtpPayload AWS API Documentation
    #
    class NtpPayload < Struct.new(
      :ntp_servers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an NTP server connection.
    #
    # @!attribute [rw] connection_status
    #   The connection's status.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the server.
    #   @return [String]
    #
    # @!attribute [rw] ntp_server_name
    #   The domain name of the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NtpStatus AWS API Documentation
    #
    class NtpStatus < Struct.new(
      :connection_status,
      :ip_address,
      :ntp_server_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An over-the-air update (OTA) job configuration.
    #
    # @!attribute [rw] allow_major_version_update
    #   Whether to apply the update if it is a major version change.
    #   @return [Boolean]
    #
    # @!attribute [rw] image_version
    #   The target version of the device software.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/OTAJobConfig AWS API Documentation
    #
    class OTAJobConfig < Struct.new(
      :allow_major_version_update,
      :image_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of an output object in Amazon S3.
    #
    # @!attribute [rw] bucket_name
    #   The object's bucket.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   The object's key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/OutPutS3Location AWS API Documentation
    #
    class OutPutS3Location < Struct.new(
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job to import a package version.
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJob AWS API Documentation
    #
    class PackageImportJob < Struct.new(
      :created_time,
      :job_id,
      :job_type,
      :last_updated_time,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a package import job.
    #
    # @!attribute [rw] package_version_input_config
    #   The package version's input configuration.
    #   @return [Types::PackageVersionInputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJobInputConfig AWS API Documentation
    #
    class PackageImportJobInputConfig < Struct.new(
      :package_version_input_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Results of a package import job.
    #
    # @!attribute [rw] output_s3_location
    #   The package's output location.
    #   @return [Types::OutPutS3Location]
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The package's version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The package's patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJobOutput AWS API Documentation
    #
    class PackageImportJobOutput < Struct.new(
      :output_s3_location,
      :package_id,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output configuration for a package import job.
    #
    # @!attribute [rw] package_version_output_config
    #   The package version's output configuration.
    #   @return [Types::PackageVersionOutputConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJobOutputConfig AWS API Documentation
    #
    class PackageImportJobOutputConfig < Struct.new(
      :package_version_output_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A package summary.
    #
    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The package's name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The package's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageListItem AWS API Documentation
    #
    class PackageListItem < Struct.new(
      :arn,
      :created_time,
      :package_id,
      :package_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A package object.
    #
    # @!attribute [rw] name
    #   The object's name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The object's package version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   The object's patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageObject AWS API Documentation
    #
    class PackageObject < Struct.new(
      :name,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A package version input configuration.
    #
    # @!attribute [rw] s3_location
    #   A location in Amazon S3.
    #   @return [Types::S3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageVersionInputConfig AWS API Documentation
    #
    class PackageVersionInputConfig < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # A package version output configuration.
    #
    # @!attribute [rw] mark_latest
    #   Indicates that the version is recommended for all users.
    #   @return [Boolean]
    #
    # @!attribute [rw] package_name
    #   The output's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The output's package version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageVersionOutputConfig AWS API Documentation
    #
    class PackageVersionOutputConfig < Struct.new(
      :mark_latest,
      :package_name,
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A description for the device.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name for the device.
    #   @return [String]
    #
    # @!attribute [rw] networking_configuration
    #   A networking configuration for the device.
    #   @return [Types::NetworkPayload]
    #
    # @!attribute [rw] tags
    #   Tags for the device.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ProvisionDeviceRequest AWS API Documentation
    #
    class ProvisionDeviceRequest < Struct.new(
      :description,
      :name,
      :networking_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The device's ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The device's configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] iot_thing_name
    #   The device's IoT thing name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The device's status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ProvisionDeviceResponse AWS API Documentation
    #
    class ProvisionDeviceResponse < Struct.new(
      :arn,
      :certificates,
      :device_id,
      :iot_thing_name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mark_latest
    #   Whether to mark the new version as the latest version.
    #   @return [Boolean]
    #
    # @!attribute [rw] owner_account
    #   An owner account.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   A package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A package version.
    #   @return [String]
    #
    # @!attribute [rw] patch_version
    #   A patch version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RegisterPackageVersionRequest AWS API Documentation
    #
    class RegisterPackageVersionRequest < Struct.new(
      :mark_latest,
      :owner_account,
      :package_id,
      :package_version,
      :patch_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RegisterPackageVersionResponse AWS API Documentation
    #
    class RegisterPackageVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_instance_id
    #   An application instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RemoveApplicationInstanceRequest AWS API Documentation
    #
    class RemoveApplicationInstanceRequest < Struct.new(
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RemoveApplicationInstanceResponse AWS API Documentation
    #
    class RemoveApplicationInstanceResponse < Aws::EmptyStructure; end

    # An application instance's state.
    #
    # @!attribute [rw] desired_state
    #   The application's desired state.
    #   @return [String]
    #
    # @!attribute [rw] device_reported_status
    #   The application's reported status.
    #   @return [String]
    #
    # @!attribute [rw] device_reported_time
    #   When the device reported the application's state.
    #   @return [Time]
    #
    # @!attribute [rw] runtime_context_name
    #   The device's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ReportedRuntimeContextState AWS API Documentation
    #
    class ReportedRuntimeContextState < Struct.new(
      :desired_state,
      :device_reported_status,
      :device_reported_time,
      :runtime_context_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource's ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A location in Amazon S3.
    #
    # @!attribute [rw] bucket_name
    #   A bucket name.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   An object key.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The bucket's Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :bucket_name,
      :object_key,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a limit to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The name of the limit.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The target resource's ID.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The target resource's type.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The name of the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   An application instance ID.
    #   @return [String]
    #
    # @!attribute [rw] node_signals
    #   A list of signals.
    #   @return [Array<Types::NodeSignal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/SignalApplicationInstanceNodeInstancesRequest AWS API Documentation
    #
    class SignalApplicationInstanceNodeInstancesRequest < Struct.new(
      :application_instance_id,
      :node_signals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_instance_id
    #   An application instance ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/SignalApplicationInstanceNodeInstancesResponse AWS API Documentation
    #
    class SignalApplicationInstanceNodeInstancesResponse < Struct.new(
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A static IP configuration.
    #
    # @!attribute [rw] default_gateway
    #   The connection's default gateway.
    #   @return [String]
    #
    # @!attribute [rw] dns
    #   The connection's DNS address.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address
    #   The connection's IP address.
    #   @return [String]
    #
    # @!attribute [rw] mask
    #   The connection's DNS mask.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/StaticIpConnectionInfo AWS API Documentation
    #
    class StaticIpConnectionInfo < Struct.new(
      :default_gateway,
      :dns,
      :ip_address,
      :mask)
      SENSITIVE = []
      include Aws::Structure
    end

    # A storage location.
    #
    # @!attribute [rw] binary_prefix_location
    #   The location's binary prefix.
    #   @return [String]
    #
    # @!attribute [rw] bucket
    #   The location's bucket.
    #   @return [String]
    #
    # @!attribute [rw] generated_prefix_location
    #   The location's generated prefix.
    #   @return [String]
    #
    # @!attribute [rw] manifest_prefix_location
    #   The location's manifest prefix.
    #   @return [String]
    #
    # @!attribute [rw] repo_prefix_location
    #   The location's repo prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/StorageLocation AWS API Documentation
    #
    class StorageLocation < Struct.new(
      :binary_prefix_location,
      :bucket,
      :generated_prefix_location,
      :manifest_prefix_location,
      :repo_prefix_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The resource's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A description for the device.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UpdateDeviceMetadataRequest AWS API Documentation
    #
    class UpdateDeviceMetadataRequest < Struct.new(
      :description,
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UpdateDeviceMetadataResponse AWS API Documentation
    #
    class UpdateDeviceMetadataResponse < Struct.new(
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains an invalid parameter value.
    #
    # @!attribute [rw] error_arguments
    #   A list of attributes that led to the exception and their values.
    #   @return [Array<Types::ValidationExceptionErrorArgument>]
    #
    # @!attribute [rw] error_id
    #   A unique ID for the error.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A list of request parameters that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_arguments,
      :error_id,
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation exception error argument.
    #
    # @!attribute [rw] name
    #   The argument's name.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The argument's value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ValidationExceptionErrorArgument AWS API Documentation
    #
    class ValidationExceptionErrorArgument < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validation exception field.
    #
    # @!attribute [rw] message
    #   The field's message.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
