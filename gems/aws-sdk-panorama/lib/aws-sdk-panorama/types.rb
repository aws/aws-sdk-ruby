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

    # An application instance on a device.
    #
    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
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
    # @!attribute [rw] status
    #   The application instance's status.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The application instance's health status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The application instance's status description.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] arn
    #   The application instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The application instance's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ApplicationInstance AWS API Documentation
    #
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target resource is in use.
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
    # @!attribute [rw] error_id
    #   A unique ID for the error.
    #   @return [String]
    #
    # @!attribute [rw] error_arguments
    #   A list of attributes that led to the exception and their values.
    #   @return [Array<Types::ConflictExceptionErrorArgument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :error_id,
      :error_arguments)
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

    # @note When making an API call, you may pass CreateApplicationInstanceRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApplicationInstanceName",
    #         description: "Description",
    #         manifest_payload: { # required
    #           payload_data: "ManifestPayloadData",
    #         },
    #         manifest_overrides_payload: {
    #           payload_data: "ManifestOverridesPayloadData",
    #         },
    #         application_instance_id_to_replace: "ApplicationInstanceId",
    #         runtime_role_arn: "RuntimeRoleArn",
    #         default_runtime_context_device: "DefaultRuntimeContextDevice", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A name for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] manifest_payload
    #   The application's manifest document.
    #   @return [Types::ManifestPayload]
    #
    # @!attribute [rw] manifest_overrides_payload
    #   Setting overrides for the application manifest.
    #   @return [Types::ManifestOverridesPayload]
    #
    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of an application instance to replace with the new instance.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   The ARN of a runtime role for the application instance.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device
    #   A device's ID.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the application instance.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateApplicationInstanceRequest AWS API Documentation
    #
    class CreateApplicationInstanceRequest < Struct.new(
      :name,
      :description,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :runtime_role_arn,
      :default_runtime_context_device,
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

    # @note When making an API call, you may pass CreateJobForDevicesRequest
    #   data as a hash:
    #
    #       {
    #         device_ids: ["DeviceId"], # required
    #         device_job_config: { # required
    #           ota_job_config: {
    #             image_version: "ImageVersion", # required
    #           },
    #         },
    #         job_type: "OTA", # required, accepts OTA
    #       }
    #
    # @!attribute [rw] device_ids
    #   IDs of target devices.
    #   @return [Array<String>]
    #
    # @!attribute [rw] device_job_config
    #   Configuration settings for the job.
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

    # @note When making an API call, you may pass CreateNodeFromTemplateJobRequest
    #   data as a hash:
    #
    #       {
    #         template_type: "RTSP_CAMERA_STREAM", # required, accepts RTSP_CAMERA_STREAM
    #         output_package_name: "NodePackageName", # required
    #         output_package_version: "NodePackageVersion", # required
    #         node_name: "NodeName", # required
    #         node_description: "Description",
    #         template_parameters: { # required
    #           "TemplateKey" => "TemplateValue",
    #         },
    #         job_tags: [
    #           {
    #             resource_type: "PACKAGE", # required, accepts PACKAGE
    #             tags: { # required
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] template_type
    #   The type of node.
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
    # @!attribute [rw] node_name
    #   A name for the node.
    #   @return [String]
    #
    # @!attribute [rw] node_description
    #   A description for the node.
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   Template parameters for the node.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_tags
    #   Tags for the job.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreateNodeFromTemplateJobRequest AWS API Documentation
    #
    class CreateNodeFromTemplateJobRequest < Struct.new(
      :template_type,
      :output_package_name,
      :output_package_version,
      :node_name,
      :node_description,
      :template_parameters,
      :job_tags)
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

    # @note When making an API call, you may pass CreatePackageImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_type: "NODE_PACKAGE_VERSION", # required, accepts NODE_PACKAGE_VERSION
    #         input_config: { # required
    #           package_version_input_config: {
    #             s3_location: { # required
    #               region: "Region",
    #               bucket_name: "BucketName", # required
    #               object_key: "ObjectKey", # required
    #             },
    #           },
    #         },
    #         output_config: { # required
    #           package_version_output_config: {
    #             package_name: "NodePackageName", # required
    #             package_version: "NodePackageVersion", # required
    #             mark_latest: false,
    #           },
    #         },
    #         client_token: "ClientToken", # required
    #         job_tags: [
    #           {
    #             resource_type: "PACKAGE", # required, accepts PACKAGE
    #             tags: { # required
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] job_type
    #   A job type for the package import job.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   An input config for the package import job.
    #   @return [Types::PackageImportJobInputConfig]
    #
    # @!attribute [rw] output_config
    #   An output config for the package import job.
    #   @return [Types::PackageImportJobOutputConfig]
    #
    # @!attribute [rw] client_token
    #   A client token for the package import job.
    #   @return [String]
    #
    # @!attribute [rw] job_tags
    #   Tags for the package import job.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageImportJobRequest AWS API Documentation
    #
    class CreatePackageImportJobRequest < Struct.new(
      :job_type,
      :input_config,
      :output_config,
      :client_token,
      :job_tags)
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

    # @note When making an API call, you may pass CreatePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_name: "NodePackageName", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   The package's storage location.
    #   @return [Types::StorageLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/CreatePackageResponse AWS API Documentation
    #
    class CreatePackageResponse < Struct.new(
      :package_id,
      :arn,
      :storage_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "DeviceId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeletePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "NodePackageId", # required
    #         force_delete: false,
    #       }
    #
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] force_delete
    #   Delete the package even if it has artifacts stored in its access
    #   point. Deletes the package's artifacts from Amazon S3.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeletePackageRequest AWS API Documentation
    #
    class DeletePackageRequest < Struct.new(
      :package_id,
      :force_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeletePackageResponse AWS API Documentation
    #
    class DeletePackageResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeregisterPackageVersionRequest
    #   data as a hash:
    #
    #       {
    #         owner_account: "PackageOwnerAccount",
    #         package_id: "NodePackageId", # required
    #         package_version: "NodePackageVersion", # required
    #         patch_version: "NodePackagePatchVersion", # required
    #         updated_latest_patch_version: "NodePackagePatchVersion",
    #       }
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

    # @note When making an API call, you may pass DescribeApplicationInstanceDetailsRequest
    #   data as a hash:
    #
    #       {
    #         application_instance_id: "ApplicationInstanceId", # required
    #       }
    #
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

    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application instance's description.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device
    #   The application instance's default runtime context device.
    #   @return [String]
    #
    # @!attribute [rw] manifest_payload
    #   The application instance's configuration manifest.
    #   @return [Types::ManifestPayload]
    #
    # @!attribute [rw] manifest_overrides_payload
    #   Parameter overrides for the configuration manifest.
    #   @return [Types::ManifestOverridesPayload]
    #
    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of the application instance that this instance replaced.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceDetailsResponse AWS API Documentation
    #
    class DescribeApplicationInstanceDetailsResponse < Struct.new(
      :name,
      :description,
      :default_runtime_context_device,
      :manifest_payload,
      :manifest_overrides_payload,
      :application_instance_id_to_replace,
      :created_time,
      :application_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeApplicationInstanceRequest
    #   data as a hash:
    #
    #       {
    #         application_instance_id: "ApplicationInstanceId", # required
    #       }
    #
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

    # @!attribute [rw] name
    #   The application instance's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application instance's description.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] default_runtime_context_device_name
    #   The device's bane.
    #   @return [String]
    #
    # @!attribute [rw] application_instance_id_to_replace
    #   The ID of the application instance that this instance replaced.
    #   @return [String]
    #
    # @!attribute [rw] runtime_role_arn
    #   The application instance's runtime role ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The application instance's status.
    #   @return [String]
    #
    # @!attribute [rw] health_status
    #   The application instance's health status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The application instance's status description.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the application instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The application instance was updated.
    #   @return [Time]
    #
    # @!attribute [rw] application_instance_id
    #   The application instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The application instance's ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The application instance's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeApplicationInstanceResponse AWS API Documentation
    #
    class DescribeApplicationInstanceResponse < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeviceJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
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

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] device_arn
    #   The device's ARN.
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
    # @!attribute [rw] status
    #   The job's status.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceJobResponse AWS API Documentation
    #
    class DescribeDeviceJobResponse < Struct.new(
      :job_id,
      :device_id,
      :device_arn,
      :device_name,
      :device_type,
      :image_version,
      :status,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDeviceRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "DeviceId", # required
    #       }
    #
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

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The device's ARN.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The device's description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The device's type.
    #   @return [String]
    #
    # @!attribute [rw] device_connection_status
    #   The device's connection status.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioning_status
    #   The device's provisioning status.
    #   @return [String]
    #
    # @!attribute [rw] latest_software
    #   The latest software version available for the device.
    #   @return [String]
    #
    # @!attribute [rw] current_software
    #   The device's current software version.
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
    # @!attribute [rw] networking_configuration
    #   The device's networking configuration.
    #   @return [Types::NetworkPayload]
    #
    # @!attribute [rw] current_networking_status
    #   The device's networking status.
    #   @return [Types::NetworkStatus]
    #
    # @!attribute [rw] lease_expiration_time
    #   The device's lease expiration time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeDeviceResponse AWS API Documentation
    #
    class DescribeDeviceResponse < Struct.new(
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
      :lease_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNodeFromTemplateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
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

    # @!attribute [rw] job_id
    #   The job's ID.
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
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @!attribute [rw] output_package_name
    #   The job's output package name.
    #   @return [String]
    #
    # @!attribute [rw] output_package_version
    #   The job's output package version.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] node_description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The job's template type.
    #   @return [String]
    #
    # @!attribute [rw] template_parameters
    #   The job's template parameters.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_tags
    #   The job's tags.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeFromTemplateJobResponse AWS API Documentation
    #
    class DescribeNodeFromTemplateJobResponse < Struct.new(
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
      :job_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeNodeRequest
    #   data as a hash:
    #
    #       {
    #         node_id: "NodeId", # required
    #         owner_account: "PackageOwnerAccount",
    #       }
    #
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

    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The node's category.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the node's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The node's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The node's package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The node's ARN.
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
    # @!attribute [rw] node_interface
    #   The node's interface.
    #   @return [Types::NodeInterface]
    #
    # @!attribute [rw] asset_name
    #   The node's asset name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the node was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   When the node was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribeNodeResponse AWS API Documentation
    #
    class DescribeNodeResponse < Struct.new(
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
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePackageImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
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

    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The job's client token.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The job's type.
    #   @return [String]
    #
    # @!attribute [rw] input_config
    #   The job's input config.
    #   @return [Types::PackageImportJobInputConfig]
    #
    # @!attribute [rw] output_config
    #   The job's output config.
    #   @return [Types::PackageImportJobOutputConfig]
    #
    # @!attribute [rw] output
    #   The job's output.
    #   @return [Types::PackageImportJobOutput]
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
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
    # @!attribute [rw] job_tags
    #   The job's tags.
    #   @return [Array<Types::JobResourceTags>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageImportJobResponse AWS API Documentation
    #
    class DescribePackageImportJobResponse < Struct.new(
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
      :job_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePackageRequest
    #   data as a hash:
    #
    #       {
    #         package_id: "NodePackageId", # required
    #       }
    #
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

    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The package's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] storage_location
    #   The package's storage location.
    #   @return [Types::StorageLocation]
    #
    # @!attribute [rw] read_access_principal_arns
    #   ARNs of accounts that have read access to the package.
    #   @return [Array<String>]
    #
    # @!attribute [rw] write_access_principal_arns
    #   ARNs of accounts that have write access to the package.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_time
    #   When the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The package's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageResponse AWS API Documentation
    #
    class DescribePackageResponse < Struct.new(
      :package_id,
      :package_name,
      :arn,
      :storage_location,
      :read_access_principal_arns,
      :write_access_principal_arns,
      :created_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePackageVersionRequest
    #   data as a hash:
    #
    #       {
    #         owner_account: "PackageOwnerAccount",
    #         package_id: "NodePackageId", # required
    #         package_version: "NodePackageVersion", # required
    #         patch_version: "NodePackagePatchVersion",
    #       }
    #
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

    # @!attribute [rw] owner_account
    #   The account ID of the version's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The version's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The ARN of the package.
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
    # @!attribute [rw] is_latest_patch
    #   Whether the version is the latest available.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The version's status.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   The version's status description.
    #   @return [String]
    #
    # @!attribute [rw] registered_time
    #   The version's registered time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DescribePackageVersionResponse AWS API Documentation
    #
    class DescribePackageVersionResponse < Struct.new(
      :owner_account,
      :package_id,
      :package_arn,
      :package_name,
      :package_version,
      :patch_version,
      :is_latest_patch,
      :status,
      :status_description,
      :registered_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A device.
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The device's name.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the device was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioning_status
    #   The device's provisioning status.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   When the device was updated.
    #   @return [Time]
    #
    # @!attribute [rw] lease_expiration_time
    #   The device's lease expiration time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Device AWS API Documentation
    #
    class Device < Struct.new(
      :device_id,
      :name,
      :created_time,
      :provisioning_status,
      :last_updated_time,
      :lease_expiration_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job that runs on a device.
    #
    # @!attribute [rw] device_name
    #   The name of the target device
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The ID of the target device.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/DeviceJob AWS API Documentation
    #
    class DeviceJob < Struct.new(
      :device_name,
      :device_id,
      :job_id,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job's configuration.
    #
    # @note When making an API call, you may pass DeviceJobConfig
    #   data as a hash:
    #
    #       {
    #         ota_job_config: {
    #           image_version: "ImageVersion", # required
    #         },
    #       }
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
    # @note When making an API call, you may pass EthernetPayload
    #   data as a hash:
    #
    #       {
    #         connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #         static_ip_connection_info: {
    #           ip_address: "IpAddress", # required
    #           mask: "Mask", # required
    #           dns: ["Dns"], # required
    #           default_gateway: "DefaultGateway", # required
    #         },
    #       }
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
    # @!attribute [rw] ip_address
    #   The device's IP address.
    #   @return [String]
    #
    # @!attribute [rw] connection_status
    #   The device's connection status.
    #   @return [String]
    #
    # @!attribute [rw] hw_address
    #   The device's physical address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/EthernetStatus AWS API Documentation
    #
    class EthernetStatus < Struct.new(
      :ip_address,
      :connection_status,
      :hw_address)
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
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The target device's ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Job AWS API Documentation
    #
    class Job < Struct.new(
      :job_id,
      :device_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tags for a job.
    #
    # @note When making an API call, you may pass JobResourceTags
    #   data as a hash:
    #
    #       {
    #         resource_type: "PACKAGE", # required, accepts PACKAGE
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
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

    # @note When making an API call, you may pass ListApplicationInstanceDependenciesRequest
    #   data as a hash:
    #
    #       {
    #         application_instance_id: "ApplicationInstanceId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @!attribute [rw] package_objects
    #   A list of package objects.
    #   @return [Array<Types::PackageObject>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceDependenciesResponse AWS API Documentation
    #
    class ListApplicationInstanceDependenciesResponse < Struct.new(
      :package_objects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationInstanceNodeInstancesRequest
    #   data as a hash:
    #
    #       {
    #         application_instance_id: "ApplicationInstanceId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @!attribute [rw] node_instances
    #   A list of node instances.
    #   @return [Array<Types::NodeInstance>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstanceNodeInstancesResponse AWS API Documentation
    #
    class ListApplicationInstanceNodeInstancesResponse < Struct.new(
      :node_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationInstancesRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "DeviceId",
    #         status_filter: "DEPLOYMENT_SUCCEEDED", # accepts DEPLOYMENT_SUCCEEDED, DEPLOYMENT_ERROR, REMOVAL_SUCCEEDED, REMOVAL_FAILED, PROCESSING_DEPLOYMENT, PROCESSING_REMOVAL
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] device_id
    #   The application instances' device ID.
    #   @return [String]
    #
    # @!attribute [rw] status_filter
    #   Only include instances with a specific status.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListApplicationInstancesRequest AWS API Documentation
    #
    class ListApplicationInstancesRequest < Struct.new(
      :device_id,
      :status_filter,
      :max_results,
      :next_token)
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

    # @note When making an API call, you may pass ListDevicesJobsRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "DeviceId",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] device_id
    #   Filter results by the job's target device ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of device jobs to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesJobsRequest AWS API Documentation
    #
    class ListDevicesJobsRequest < Struct.new(
      :device_id,
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListDevicesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of devices to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListDevicesRequest AWS API Documentation
    #
    class ListDevicesRequest < Struct.new(
      :next_token,
      :max_results)
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

    # @note When making an API call, you may pass ListNodeFromTemplateJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of node from template jobs to return in one page
    #   of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodeFromTemplateJobsRequest AWS API Documentation
    #
    class ListNodeFromTemplateJobsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] node_from_template_jobs
    #   A list of jobs.
    #   @return [Array<Types::NodeFromTemplateJob>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodeFromTemplateJobsResponse AWS API Documentation
    #
    class ListNodeFromTemplateJobsResponse < Struct.new(
      :node_from_template_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNodesRequest
    #   data as a hash:
    #
    #       {
    #         category: "BUSINESS_LOGIC", # accepts BUSINESS_LOGIC, ML_MODEL, MEDIA_SOURCE, MEDIA_SINK
    #         owner_account: "PackageOwnerAccount",
    #         package_name: "NodePackageName",
    #         package_version: "NodePackageVersion",
    #         patch_version: "NodePackagePatchVersion",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] category
    #   Search for nodes by category.
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
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of nodes to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodesRequest AWS API Documentation
    #
    class ListNodesRequest < Struct.new(
      :category,
      :owner_account,
      :package_name,
      :package_version,
      :patch_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodes
    #   A list of nodes.
    #   @return [Array<Types::Node>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListNodesResponse AWS API Documentation
    #
    class ListNodesResponse < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPackageImportJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   Specify the pagination token from a previous request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of package import jobs to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackageImportJobsRequest AWS API Documentation
    #
    class ListPackageImportJobsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package_import_jobs
    #   A list of package import jobs.
    #   @return [Array<Types::PackageImportJob>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackageImportJobsResponse AWS API Documentation
    #
    class ListPackageImportJobsResponse < Struct.new(
      :package_import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPackagesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
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

    # @!attribute [rw] packages
    #   A list of packages.
    #   @return [Array<Types::PackageListItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's included if more results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ListPackagesResponse AWS API Documentation
    #
    class ListPackagesResponse < Struct.new(
      :packages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
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
    # @note When making an API call, you may pass NetworkPayload
    #   data as a hash:
    #
    #       {
    #         ethernet_0: {
    #           connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #           static_ip_connection_info: {
    #             ip_address: "IpAddress", # required
    #             mask: "Mask", # required
    #             dns: ["Dns"], # required
    #             default_gateway: "DefaultGateway", # required
    #           },
    #         },
    #         ethernet_1: {
    #           connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #           static_ip_connection_info: {
    #             ip_address: "IpAddress", # required
    #             mask: "Mask", # required
    #             dns: ["Dns"], # required
    #             default_gateway: "DefaultGateway", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] ethernet_0
    #   Settings for Ethernet port 0.
    #   @return [Types::EthernetPayload]
    #
    # @!attribute [rw] ethernet_1
    #   Settings for Ethernet port 1.
    #   @return [Types::EthernetPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NetworkPayload AWS API Documentation
    #
    class NetworkPayload < Struct.new(
      :ethernet_0,
      :ethernet_1)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NetworkStatus AWS API Documentation
    #
    class NetworkStatus < Struct.new(
      :ethernet_0_status,
      :ethernet_1_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An application node that represents a camera stream, a model, code, or
    # output.
    #
    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The node's name.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The node's category.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The account ID of the node's owner.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The node's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The node's package ID.
    #   @return [String]
    #
    # @!attribute [rw] package_arn
    #   The node's ARN.
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
    # @!attribute [rw] description
    #   The node's description.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the node was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/Node AWS API Documentation
    #
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
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A job to create a camera stream node.
    #
    # @!attribute [rw] job_id
    #   The job's ID.
    #   @return [String]
    #
    # @!attribute [rw] template_type
    #   The job's template type.
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
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] node_name
    #   The node's name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeFromTemplateJob AWS API Documentation
    #
    class NodeFromTemplateJob < Struct.new(
      :job_id,
      :template_type,
      :status,
      :status_message,
      :created_time,
      :node_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node input port.
    #
    # @!attribute [rw] name
    #   The input port's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The input port's description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The input port's type.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The input port's default value.
    #   @return [String]
    #
    # @!attribute [rw] max_connections
    #   The input port's max connections.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeInputPort AWS API Documentation
    #
    class NodeInputPort < Struct.new(
      :name,
      :description,
      :type,
      :default_value,
      :max_connections)
      SENSITIVE = []
      include Aws::Structure
    end

    # A node instance.
    #
    # @!attribute [rw] node_instance_id
    #   The instance's ID.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   The node's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The instance's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The instance's package version.
    #   @return [String]
    #
    # @!attribute [rw] package_patch_version
    #   The instance's package patch version.
    #   @return [String]
    #
    # @!attribute [rw] node_name
    #   The instance's name.
    #   @return [String]
    #
    # @!attribute [rw] current_status
    #   The instance's current status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeInstance AWS API Documentation
    #
    class NodeInstance < Struct.new(
      :node_instance_id,
      :node_id,
      :package_name,
      :package_version,
      :package_patch_version,
      :node_name,
      :current_status)
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
    # @!attribute [rw] name
    #   The output port's name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The output port's description.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The output port's type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/NodeOutputPort AWS API Documentation
    #
    class NodeOutputPort < Struct.new(
      :name,
      :description,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An over-the-air update (OTA) job configuration.
    #
    # @note When making an API call, you may pass OTAJobConfig
    #   data as a hash:
    #
    #       {
    #         image_version: "ImageVersion", # required
    #       }
    #
    # @!attribute [rw] image_version
    #   The target version of the device software.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/OTAJobConfig AWS API Documentation
    #
    class OTAJobConfig < Struct.new(
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
    # @!attribute [rw] status_message
    #   The job's status message.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   When the job was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJob AWS API Documentation
    #
    class PackageImportJob < Struct.new(
      :job_id,
      :job_type,
      :status,
      :status_message,
      :created_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for a package import job.
    #
    # @note When making an API call, you may pass PackageImportJobInputConfig
    #   data as a hash:
    #
    #       {
    #         package_version_input_config: {
    #           s3_location: { # required
    #             region: "Region",
    #             bucket_name: "BucketName", # required
    #             object_key: "ObjectKey", # required
    #           },
    #         },
    #       }
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
    # @!attribute [rw] output_s3_location
    #   The package's output location.
    #   @return [Types::OutPutS3Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageImportJobOutput AWS API Documentation
    #
    class PackageImportJobOutput < Struct.new(
      :package_id,
      :package_version,
      :patch_version,
      :output_s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output configuration for a package import job.
    #
    # @note When making an API call, you may pass PackageImportJobOutputConfig
    #   data as a hash:
    #
    #       {
    #         package_version_output_config: {
    #           package_name: "NodePackageName", # required
    #           package_version: "NodePackageVersion", # required
    #           mark_latest: false,
    #         },
    #       }
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
    # @!attribute [rw] package_id
    #   The package's ID.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The package's name.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The package's ARN.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   When the package was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The package's tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageListItem AWS API Documentation
    #
    class PackageListItem < Struct.new(
      :package_id,
      :package_name,
      :arn,
      :created_time,
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
    # @note When making an API call, you may pass PackageVersionInputConfig
    #   data as a hash:
    #
    #       {
    #         s3_location: { # required
    #           region: "Region",
    #           bucket_name: "BucketName", # required
    #           object_key: "ObjectKey", # required
    #         },
    #       }
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
    # @note When making an API call, you may pass PackageVersionOutputConfig
    #   data as a hash:
    #
    #       {
    #         package_name: "NodePackageName", # required
    #         package_version: "NodePackageVersion", # required
    #         mark_latest: false,
    #       }
    #
    # @!attribute [rw] package_name
    #   The output's package name.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The output's package version.
    #   @return [String]
    #
    # @!attribute [rw] mark_latest
    #   Indicates that the version is recommended for all users.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/PackageVersionOutputConfig AWS API Documentation
    #
    class PackageVersionOutputConfig < Struct.new(
      :package_name,
      :package_version,
      :mark_latest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ProvisionDeviceRequest
    #   data as a hash:
    #
    #       {
    #         name: "DeviceName", # required
    #         description: "Description",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         networking_configuration: {
    #           ethernet_0: {
    #             connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #             static_ip_connection_info: {
    #               ip_address: "IpAddress", # required
    #               mask: "Mask", # required
    #               dns: ["Dns"], # required
    #               default_gateway: "DefaultGateway", # required
    #             },
    #           },
    #           ethernet_1: {
    #             connection_type: "STATIC_IP", # required, accepts STATIC_IP, DHCP
    #             static_ip_connection_info: {
    #               ip_address: "IpAddress", # required
    #               mask: "Mask", # required
    #               dns: ["Dns"], # required
    #               default_gateway: "DefaultGateway", # required
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   A name for the device.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the device.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the device.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] networking_configuration
    #   A networking configuration for the device.
    #   @return [Types::NetworkPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ProvisionDeviceRequest AWS API Documentation
    #
    class ProvisionDeviceRequest < Struct.new(
      :name,
      :description,
      :tags,
      :networking_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The device's ARN.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The device's status.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The device's configuration bundle.
    #   @return [String]
    #
    # @!attribute [rw] iot_thing_name
    #   The device's IoT thing name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ProvisionDeviceResponse AWS API Documentation
    #
    class ProvisionDeviceResponse < Struct.new(
      :device_id,
      :arn,
      :status,
      :certificates,
      :iot_thing_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterPackageVersionRequest
    #   data as a hash:
    #
    #       {
    #         owner_account: "PackageOwnerAccount",
    #         package_id: "NodePackageId", # required
    #         package_version: "NodePackageVersion", # required
    #         patch_version: "NodePackagePatchVersion", # required
    #         mark_latest: false,
    #       }
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
    # @!attribute [rw] mark_latest
    #   Whether to mark the new version as the latest version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RegisterPackageVersionRequest AWS API Documentation
    #
    class RegisterPackageVersionRequest < Struct.new(
      :owner_account,
      :package_id,
      :package_version,
      :patch_version,
      :mark_latest)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/RegisterPackageVersionResponse AWS API Documentation
    #
    class RegisterPackageVersionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass RemoveApplicationInstanceRequest
    #   data as a hash:
    #
    #       {
    #         application_instance_id: "ApplicationInstanceId", # required
    #       }
    #
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
    # @note When making an API call, you may pass S3Location
    #   data as a hash:
    #
    #       {
    #         region: "Region",
    #         bucket_name: "BucketName", # required
    #         object_key: "ObjectKey", # required
    #       }
    #
    # @!attribute [rw] region
    #   The bucket's Region.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   A bucket name.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   An object key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/S3Location AWS API Documentation
    #
    class S3Location < Struct.new(
      :region,
      :bucket_name,
      :object_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a limit to be exceeded.
    #
    # @!attribute [rw] message
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
    # @!attribute [rw] quota_code
    #   The name of the limit.
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
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A static IP configuration.
    #
    # @note When making an API call, you may pass StaticIpConnectionInfo
    #   data as a hash:
    #
    #       {
    #         ip_address: "IpAddress", # required
    #         mask: "Mask", # required
    #         dns: ["Dns"], # required
    #         default_gateway: "DefaultGateway", # required
    #       }
    #
    # @!attribute [rw] ip_address
    #   The connection's IP address.
    #   @return [String]
    #
    # @!attribute [rw] mask
    #   The connection's DNS mask.
    #   @return [String]
    #
    # @!attribute [rw] dns
    #   The connection's DNS address.
    #   @return [Array<String>]
    #
    # @!attribute [rw] default_gateway
    #   The connection's default gateway.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/StaticIpConnectionInfo AWS API Documentation
    #
    class StaticIpConnectionInfo < Struct.new(
      :ip_address,
      :mask,
      :dns,
      :default_gateway)
      SENSITIVE = []
      include Aws::Structure
    end

    # A storage location.
    #
    # @!attribute [rw] bucket
    #   The location's bucket.
    #   @return [String]
    #
    # @!attribute [rw] repo_prefix_location
    #   The location's repo prefix.
    #   @return [String]
    #
    # @!attribute [rw] generated_prefix_location
    #   The location's generated prefix.
    #   @return [String]
    #
    # @!attribute [rw] binary_prefix_location
    #   The location's binary prefix.
    #   @return [String]
    #
    # @!attribute [rw] manifest_prefix_location
    #   The location's manifest prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/StorageLocation AWS API Documentation
    #
    class StorageLocation < Struct.new(
      :bucket,
      :repo_prefix_location,
      :generated_prefix_location,
      :binary_prefix_location,
      :manifest_prefix_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateDeviceMetadataRequest
    #   data as a hash:
    #
    #       {
    #         device_id: "DeviceId", # required
    #         description: "Description",
    #       }
    #
    # @!attribute [rw] device_id
    #   The device's ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the device.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/UpdateDeviceMetadataRequest AWS API Documentation
    #
    class UpdateDeviceMetadataRequest < Struct.new(
      :device_id,
      :description)
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
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that validation failed.
    #   @return [String]
    #
    # @!attribute [rw] error_id
    #   A unique ID for the error.
    #   @return [String]
    #
    # @!attribute [rw] error_arguments
    #   A list of attributes that led to the exception and their values.
    #   @return [Array<Types::ValidationExceptionErrorArgument>]
    #
    # @!attribute [rw] fields
    #   A list of request parameters that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :error_id,
      :error_arguments,
      :fields)
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
    # @!attribute [rw] name
    #   The field's name.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The field's message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/panorama-2019-07-24/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
