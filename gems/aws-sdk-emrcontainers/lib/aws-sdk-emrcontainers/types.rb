# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRContainers
  module Types

    # @!attribute [rw] id
    #   The ID of the job run to cancel.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the virtual cluster for which the job run will be
    #   canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CancelJobRunRequest AWS API Documentation
    #
    class CancelJobRunRequest < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The output contains the ID of the cancelled job run.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The output contains the virtual cluster ID for which the job run is
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CancelJobRunResponse AWS API Documentation
    #
    class CancelJobRunResponse < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity representing certificate data generated for managed
    # endpoint.
    #
    # @!attribute [rw] certificate_arn
    #   The ARN of the certificate generated for managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] certificate_data
    #   The base64 encoded PEM certificate data generated for managed
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_arn,
      :certificate_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for CloudWatch monitoring. You can configure your jobs
    # to send log information to CloudWatch Logs.
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group for log publishing.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   The specified name prefix for log streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CloudWatchMonitoringConfiguration AWS API Documentation
    #
    class CloudWatchMonitoringConfiguration < Struct.new(
      :log_group_name,
      :log_stream_name_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration specification to be used when provisioning virtual
    # clusters, which can include configurations for applications and
    # software bundled with Amazon EMR on EKS. A configuration consists of a
    # classification, properties, and optional nested configurations. A
    # classification refers to an application-specific configuration file.
    # Properties are the settings you want to change in that file.
    #
    # @!attribute [rw] classification
    #   The classification within a configuration.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A set of properties specified within a configuration classification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configurations
    #   A list of additional configurations to apply within a configuration
    #   object.
    #   @return [Array<Types::Configuration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :classification,
      :properties,
      :configurations)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

    # A configuration specification to be used to override existing
    # configurations.
    #
    # @!attribute [rw] application_configuration
    #   The configurations for the application running by the job run.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The configurations for monitoring.
    #   @return [Types::MonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ConfigurationOverrides AWS API Documentation
    #
    class ConfigurationOverrides < Struct.new(
      :application_configuration,
      :monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the container used for a job run or a managed
    # endpoint.
    #
    # @note ContainerInfo is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ContainerInfo is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ContainerInfo corresponding to the set member.
    #
    # @!attribute [rw] eks_info
    #   The information about the Amazon EKS cluster.
    #   @return [Types::EksInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ContainerInfo AWS API Documentation
    #
    class ContainerInfo < Struct.new(
      :eks_info,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EksInfo < ContainerInfo; end
      class Unknown < ContainerInfo; end
    end

    # The settings for container log rotation.
    #
    # @!attribute [rw] rotation_size
    #   The file size at which to rotate logs. Minimum of 2KB, Maximum of
    #   2GB.
    #   @return [String]
    #
    # @!attribute [rw] max_files_to_keep
    #   The number of files to keep in container after rotation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ContainerLogRotationConfiguration AWS API Documentation
    #
    class ContainerLogRotationConfiguration < Struct.new(
      :rotation_size,
      :max_files_to_keep)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the container provider.
    #
    # @!attribute [rw] type
    #   The type of the container provider. Amazon EKS is the only supported
    #   type as of now.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the container cluster.
    #   @return [String]
    #
    # @!attribute [rw] info
    #   The information about the container cluster.
    #   @return [Types::ContainerInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ContainerProvider AWS API Documentation
    #
    class ContainerProvider < Struct.new(
      :type,
      :id,
      :info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The specified name of the job template.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token of the job template.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] job_template_data
    #   The job template data which holds values of StartJobRun API request.
    #   @return [Types::JobTemplateData]
    #
    # @!attribute [rw] tags
    #   The tags that are associated with the job template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN used to encrypt the job template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateJobTemplateRequest AWS API Documentation
    #
    class CreateJobTemplateRequest < Struct.new(
      :name,
      :client_token,
      :job_template_data,
      :tags,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output display the created job template ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This output displays the name of the created job template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   This output display the ARN of the created job template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   This output displays the date and time when the job template was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateJobTemplateResponse AWS API Documentation
    #
    class CreateJobTemplateResponse < Struct.new(
      :id,
      :name,
      :arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the virtual cluster for which a managed endpoint is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release version.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The ARN of the execution role.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN provided by users for the managed endpoint. This
    #   field is under deprecation and will be removed in future releases.
    #   @return [String]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration settings that will be used to override existing
    #   configurations.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token for this create call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the managed endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateManagedEndpointRequest AWS API Documentation
    #
    class CreateManagedEndpointRequest < Struct.new(
      :name,
      :virtual_cluster_id,
      :type,
      :release_label,
      :execution_role_arn,
      :certificate_arn,
      :configuration_overrides,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The output contains the ID of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The output contains the name of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The output contains the ARN of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The output contains the ID of the virtual cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateManagedEndpointResponse AWS API Documentation
    #
    class CreateManagedEndpointResponse < Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The specified name of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_provider
    #   The container provider of the virtual cluster.
    #   @return [Types::ContainerProvider]
    #
    # @!attribute [rw] client_token
    #   The client token of the virtual cluster.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the virtual cluster.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateVirtualClusterRequest AWS API Documentation
    #
    class CreateVirtualClusterRequest < Struct.new(
      :name,
      :container_provider,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output contains the virtual cluster ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This output contains the name of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   This output contains the ARN of virtual cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/CreateVirtualClusterResponse AWS API Documentation
    #
    class CreateVirtualClusterResponse < Struct.new(
      :id,
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure containing the session token being returned.
    #
    # @note Credentials is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Credentials corresponding to the set member.
    #
    # @!attribute [rw] token
    #   The actual session token being returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/Credentials AWS API Documentation
    #
    class Credentials < Struct.new(
      :token,
      :unknown)
      SENSITIVE = [:token]
      include Aws::Structure
      include Aws::Structure::Union

      class Token < Credentials; end
      class Unknown < Credentials; end
    end

    # @!attribute [rw] id
    #   The ID of the job template that will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteJobTemplateRequest AWS API Documentation
    #
    class DeleteJobTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output contains the ID of the job template that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteJobTemplateResponse AWS API Documentation
    #
    class DeleteJobTemplateResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the endpoint's virtual cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteManagedEndpointRequest AWS API Documentation
    #
    class DeleteManagedEndpointRequest < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The output displays the ID of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The output displays the ID of the endpoint's virtual cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteManagedEndpointResponse AWS API Documentation
    #
    class DeleteManagedEndpointResponse < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the virtual cluster that will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteVirtualClusterRequest AWS API Documentation
    #
    class DeleteVirtualClusterRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output contains the ID of the virtual cluster that will be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DeleteVirtualClusterResponse AWS API Documentation
    #
    class DeleteVirtualClusterResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the job run request.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the virtual cluster for which the job run is submitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobRunRequest AWS API Documentation
    #
    class DescribeJobRunRequest < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_run
    #   The output displays information about a job run.
    #   @return [Types::JobRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobRunResponse AWS API Documentation
    #
    class DescribeJobRunResponse < Struct.new(
      :job_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the job template that will be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobTemplateRequest AWS API Documentation
    #
    class DescribeJobTemplateRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_template
    #   This output displays information about the specified job template.
    #   @return [Types::JobTemplate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeJobTemplateResponse AWS API Documentation
    #
    class DescribeJobTemplateResponse < Struct.new(
      :job_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output displays ID of the managed endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the endpoint's virtual cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeManagedEndpointRequest AWS API Documentation
    #
    class DescribeManagedEndpointRequest < Struct.new(
      :id,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   This output displays information about a managed endpoint.
    #   @return [Types::Endpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeManagedEndpointResponse AWS API Documentation
    #
    class DescribeManagedEndpointResponse < Struct.new(
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the virtual cluster that will be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeVirtualClusterRequest AWS API Documentation
    #
    class DescribeVirtualClusterRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_cluster
    #   This output displays information about the specified virtual
    #   cluster.
    #   @return [Types::VirtualCluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/DescribeVirtualClusterResponse AWS API Documentation
    #
    class DescribeVirtualClusterResponse < Struct.new(
      :virtual_cluster)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the Amazon EKS cluster.
    #
    # @!attribute [rw] namespace
    #   The namespaces of the Amazon EKS cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/EksInfo AWS API Documentation
    #
    class EksInfo < Struct.new(
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # This entity represents the endpoint that is managed by Amazon EMR on
    # EKS.
    #
    # @!attribute [rw] id
    #   The ID of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the endpoint's virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The EMR release version to be used for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN of the endpoint. This field is under deprecation
    #   and will be removed in future.
    #   @return [String]
    #
    # @!attribute [rw] certificate_authority
    #   The certificate generated by emr control plane on customer behalf to
    #   secure the managed endpoint.
    #   @return [Types::Certificate]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration settings that are used to override existing
    #   configurations for endpoints.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] server_url
    #   The server URL of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] security_group
    #   The security group configuration of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs of the endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] state_details
    #   Additional details of the endpoint state.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reasons why the endpoint has failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the endpoint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      :type,
      :state,
      :release_label,
      :execution_role_arn,
      :certificate_arn,
      :certificate_authority,
      :configuration_overrides,
      :server_url,
      :created_at,
      :security_group,
      :subnet_ids,
      :state_details,
      :failure_reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_identifier
    #   The ARN of the managed endpoint for which the request is submitted.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_identifier
    #   The ARN of the Virtual Cluster which the Managed Endpoint belongs
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The IAM Execution Role ARN that will be used by the job run.
    #   @return [String]
    #
    # @!attribute [rw] credential_type
    #   Type of the token requested. Currently supported and default value
    #   of this field is “TOKEN.”
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   Duration in seconds for which the session token is valid. The
    #   default duration is 15 minutes and the maximum is 12 hours.
    #   @return [Integer]
    #
    # @!attribute [rw] log_context
    #   String identifier used to separate sections of the execution logs
    #   uploaded to S3.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token of the job run request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/GetManagedEndpointSessionCredentialsRequest AWS API Documentation
    #
    class GetManagedEndpointSessionCredentialsRequest < Struct.new(
      :endpoint_identifier,
      :virtual_cluster_identifier,
      :execution_role_arn,
      :credential_type,
      :duration_in_seconds,
      :log_context,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The identifier of the session token returned.
    #   @return [String]
    #
    # @!attribute [rw] credentials
    #   The structure containing the session credentials.
    #   @return [Types::Credentials]
    #
    # @!attribute [rw] expires_at
    #   The date and time when the session token will expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/GetManagedEndpointSessionCredentialsResponse AWS API Documentation
    #
    class GetManagedEndpointSessionCredentialsResponse < Struct.new(
      :id,
      :credentials,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is an internal server exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specify the driver that the job runs on. Exactly one of the two
    # available job drivers is required, either sparkSqlJobDriver or
    # sparkSubmitJobDriver.
    #
    # @!attribute [rw] spark_submit_job_driver
    #   The job driver parameters specified for spark submit.
    #   @return [Types::SparkSubmitJobDriver]
    #
    # @!attribute [rw] spark_sql_job_driver
    #   The job driver for job type.
    #   @return [Types::SparkSqlJobDriver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/JobDriver AWS API Documentation
    #
    class JobDriver < Struct.new(
      :spark_submit_job_driver,
      :spark_sql_job_driver)
      SENSITIVE = []
      include Aws::Structure
    end

    # This entity describes a job run. A job run is a unit of work, such as
    # a Spark jar, PySpark script, or SparkSQL query, that you submit to
    # Amazon EMR on EKS.
    #
    # @!attribute [rw] id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job run.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The ID of the job run's virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of job run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job run.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token used to start a job run.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The release version of Amazon EMR.
    #   @return [String]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration settings that are used to override default
    #   configuration.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] job_driver
    #   Parameters of job driver for the job run.
    #   @return [Types::JobDriver]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] finished_at
    #   The date and time when the job run has finished.
    #   @return [Time]
    #
    # @!attribute [rw] state_details
    #   Additional details of the job run state.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reasons why the job run has failed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The assigned tags of the job run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] retry_policy_configuration
    #   The configuration of the retry policy that the job runs on.
    #   @return [Types::RetryPolicyConfiguration]
    #
    # @!attribute [rw] retry_policy_execution
    #   The current status of the retry policy executed on the job.
    #   @return [Types::RetryPolicyExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :id,
      :name,
      :virtual_cluster_id,
      :arn,
      :state,
      :client_token,
      :execution_role_arn,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :created_at,
      :created_by,
      :finished_at,
      :state_details,
      :failure_reason,
      :tags,
      :retry_policy_configuration,
      :retry_policy_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # This entity describes a job template. Job template stores values of
    # StartJobRun API request in a template and can be used to start a job
    # run. Job template allows two use cases: avoid repeating recurring
    # StartJobRun API request values, enforcing certain values in
    # StartJobRun API request.
    #
    # @!attribute [rw] name
    #   The name of the job template.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the job template.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the job template.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job template was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the job template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the job template.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_template_data
    #   The job template data which holds values of StartJobRun API request.
    #   @return [Types::JobTemplateData]
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN used to encrypt the job template.
    #   @return [String]
    #
    # @!attribute [rw] decryption_error
    #   The error message in case the decryption of job template fails.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/JobTemplate AWS API Documentation
    #
    class JobTemplate < Struct.new(
      :name,
      :id,
      :arn,
      :created_at,
      :created_by,
      :tags,
      :job_template_data,
      :kms_key_arn,
      :decryption_error)
      SENSITIVE = []
      include Aws::Structure
    end

    # The values of StartJobRun API requests used in job runs started using
    # the job template.
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The release version of Amazon EMR.
    #   @return [String]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration settings that are used to override defaults
    #   configuration.
    #   @return [Types::ParametricConfigurationOverrides]
    #
    # @!attribute [rw] job_driver
    #   Specify the driver that the job runs on. Exactly one of the two
    #   available job drivers is required, either sparkSqlJobDriver or
    #   sparkSubmitJobDriver.
    #   @return [Types::JobDriver]
    #
    # @!attribute [rw] parameter_configuration
    #   The configuration of parameters existing in the job template.
    #   @return [Hash<String,Types::TemplateParameterConfiguration>]
    #
    # @!attribute [rw] job_tags
    #   The tags assigned to jobs started using the job template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/JobTemplateData AWS API Documentation
    #
    class JobTemplateData < Struct.new(
      :execution_role_arn,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :parameter_configuration,
      :job_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_cluster_id
    #   The ID of the virtual cluster for which to list the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   The date and time before which the job runs were submitted.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   The date and time after which the job runs were submitted.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the job run.
    #   @return [String]
    #
    # @!attribute [rw] states
    #   The states of the job run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of job runs that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of job runs to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobRunsRequest AWS API Documentation
    #
    class ListJobRunsRequest < Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :name,
      :states,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   This output lists information about the specified job runs.
    #   @return [Array<Types::JobRun>]
    #
    # @!attribute [rw] next_token
    #   This output displays the token for the next set of job runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobRunsResponse AWS API Documentation
    #
    class ListJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_after
    #   The date and time after which the job templates were created.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The date and time before which the job templates were created.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of job templates that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of job templates to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobTemplatesRequest AWS API Documentation
    #
    class ListJobTemplatesRequest < Struct.new(
      :created_after,
      :created_before,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] templates
    #   This output lists information about the specified job templates.
    #   @return [Array<Types::JobTemplate>]
    #
    # @!attribute [rw] next_token
    #   This output displays the token for the next set of job templates.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListJobTemplatesResponse AWS API Documentation
    #
    class ListJobTemplatesResponse < Struct.new(
      :templates,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_cluster_id
    #   The ID of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   The date and time before which the endpoints are created.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   The date and time after which the endpoints are created.
    #   @return [Time]
    #
    # @!attribute [rw] types
    #   The types of the managed endpoints.
    #   @return [Array<String>]
    #
    # @!attribute [rw] states
    #   The states of the managed endpoints.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of managed endpoints that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of managed endpoints to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListManagedEndpointsRequest AWS API Documentation
    #
    class ListManagedEndpointsRequest < Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :types,
      :states,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   The managed endpoints to be listed.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of endpoints to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListManagedEndpointsResponse AWS API Documentation
    #
    class ListManagedEndpointsResponse < Struct.new(
      :endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of tagged resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags assigned to resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] container_provider_id
    #   The container provider ID of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_provider_type
    #   The container provider type of the virtual cluster. Amazon EKS is
    #   the only supported type as of now.
    #   @return [String]
    #
    # @!attribute [rw] created_after
    #   The date and time after which the virtual clusters are created.
    #   @return [Time]
    #
    # @!attribute [rw] created_before
    #   The date and time before which the virtual clusters are created.
    #   @return [Time]
    #
    # @!attribute [rw] states
    #   The states of the requested virtual clusters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of virtual clusters that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of virtual clusters to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListVirtualClustersRequest AWS API Documentation
    #
    class ListVirtualClustersRequest < Struct.new(
      :container_provider_id,
      :container_provider_type,
      :created_after,
      :created_before,
      :states,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] virtual_clusters
    #   This output lists the specified virtual clusters.
    #   @return [Array<Types::VirtualCluster>]
    #
    # @!attribute [rw] next_token
    #   This output displays the token for the next set of virtual clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ListVirtualClustersResponse AWS API Documentation
    #
    class ListVirtualClustersResponse < Struct.new(
      :virtual_clusters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration setting for monitoring.
    #
    # @!attribute [rw] persistent_app_ui
    #   Monitoring configurations for the persistent application UI.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_monitoring_configuration
    #   Monitoring configurations for CloudWatch.
    #   @return [Types::CloudWatchMonitoringConfiguration]
    #
    # @!attribute [rw] s3_monitoring_configuration
    #   Amazon S3 configuration for monitoring log publishing.
    #   @return [Types::S3MonitoringConfiguration]
    #
    # @!attribute [rw] container_log_rotation_configuration
    #   Enable or disable container log rotation.
    #   @return [Types::ContainerLogRotationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/MonitoringConfiguration AWS API Documentation
    #
    class MonitoringConfiguration < Struct.new(
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration,
      :container_log_rotation_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration for CloudWatch monitoring. You can configure your jobs
    # to send log information to CloudWatch Logs. This data type allows job
    # template parameters to be specified within.
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group for log publishing.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   The specified name prefix for log streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ParametricCloudWatchMonitoringConfiguration AWS API Documentation
    #
    class ParametricCloudWatchMonitoringConfiguration < Struct.new(
      :log_group_name,
      :log_stream_name_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration specification to be used to override existing
    # configurations. This data type allows job template parameters to be
    # specified within.
    #
    # @!attribute [rw] application_configuration
    #   The configurations for the application running by the job run.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The configurations for monitoring.
    #   @return [Types::ParametricMonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ParametricConfigurationOverrides AWS API Documentation
    #
    class ParametricConfigurationOverrides < Struct.new(
      :application_configuration,
      :monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration setting for monitoring. This data type allows job
    # template parameters to be specified within.
    #
    # @!attribute [rw] persistent_app_ui
    #   Monitoring configurations for the persistent application UI.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_monitoring_configuration
    #   Monitoring configurations for CloudWatch.
    #   @return [Types::ParametricCloudWatchMonitoringConfiguration]
    #
    # @!attribute [rw] s3_monitoring_configuration
    #   Amazon S3 configuration for monitoring log publishing.
    #   @return [Types::ParametricS3MonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ParametricMonitoringConfiguration AWS API Documentation
    #
    class ParametricMonitoringConfiguration < Struct.new(
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 configuration for monitoring log publishing. You can
    # configure your jobs to send log information to Amazon S3. This data
    # type allows job template parameters to be specified within.
    #
    # @!attribute [rw] log_uri
    #   Amazon S3 destination URI for log publishing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ParametricS3MonitoringConfiguration AWS API Documentation
    #
    class ParametricS3MonitoringConfiguration < Struct.new(
      :log_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request throttled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/RequestThrottledException AWS API Documentation
    #
    class RequestThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the retry policy that the job runs on.
    #
    # @!attribute [rw] max_attempts
    #   The maximum number of attempts on the job's driver.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/RetryPolicyConfiguration AWS API Documentation
    #
    class RetryPolicyConfiguration < Struct.new(
      :max_attempts)
      SENSITIVE = []
      include Aws::Structure
    end

    # The current status of the retry policy executed on the job.
    #
    # @!attribute [rw] current_attempt_count
    #   The current number of attempts made on the driver of the job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/RetryPolicyExecution AWS API Documentation
    #
    class RetryPolicyExecution < Struct.new(
      :current_attempt_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon S3 configuration for monitoring log publishing. You can
    # configure your jobs to send log information to Amazon S3.
    #
    # @!attribute [rw] log_uri
    #   Amazon S3 destination URI for log publishing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/S3MonitoringConfiguration AWS API Documentation
    #
    class S3MonitoringConfiguration < Struct.new(
      :log_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The job driver for job type.
    #
    # @!attribute [rw] entry_point
    #   The SQL file to be executed.
    #   @return [String]
    #
    # @!attribute [rw] spark_sql_parameters
    #   The Spark parameters to be included in the Spark SQL command.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/SparkSqlJobDriver AWS API Documentation
    #
    class SparkSqlJobDriver < Struct.new(
      :entry_point,
      :spark_sql_parameters)
      SENSITIVE = [:entry_point, :spark_sql_parameters]
      include Aws::Structure
    end

    # The information about job driver for Spark submit.
    #
    # @!attribute [rw] entry_point
    #   The entry point of job application.
    #   @return [String]
    #
    # @!attribute [rw] entry_point_arguments
    #   The arguments for job application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] spark_submit_parameters
    #   The Spark submit parameters that are used for job runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/SparkSubmitJobDriver AWS API Documentation
    #
    class SparkSubmitJobDriver < Struct.new(
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters)
      SENSITIVE = [:entry_point, :spark_submit_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the job run.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   The virtual cluster ID for which the job run request is submitted.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token of the job run request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN for the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release version to use for the job run.
    #   @return [String]
    #
    # @!attribute [rw] job_driver
    #   The job driver for the job run.
    #   @return [Types::JobDriver]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration overrides for the job run.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] tags
    #   The tags assigned to job runs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] job_template_id
    #   The job template ID to be used to start the job run.
    #   @return [String]
    #
    # @!attribute [rw] job_template_parameters
    #   The values of job template parameters to start a job run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] retry_policy_configuration
    #   The retry policy configuration for the job run.
    #   @return [Types::RetryPolicyConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :name,
      :virtual_cluster_id,
      :client_token,
      :execution_role_arn,
      :release_label,
      :job_driver,
      :configuration_overrides,
      :tags,
      :job_template_id,
      :job_template_parameters,
      :retry_policy_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   This output displays the started job run ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   This output displays the name of the started job run.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   This output lists the ARN of job run.
    #   @return [String]
    #
    # @!attribute [rw] virtual_cluster_id
    #   This output displays the virtual cluster ID for which the job run
    #   was submitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of resources.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to resources.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The configuration of a job template parameter.
    #
    # @!attribute [rw] type
    #   The type of the job template parameter. Allowed values are:
    #   ‘STRING’, ‘NUMBER’.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the job template parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/TemplateParameterConfiguration AWS API Documentation
    #
    class TemplateParameterConfiguration < Struct.new(
      :type,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of resources.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # There are invalid parameters in the client request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This entity describes a virtual cluster. A virtual cluster is a
    # Kubernetes namespace that Amazon EMR is registered with. Amazon EMR
    # uses virtual clusters to run jobs and host endpoints. Multiple virtual
    # clusters can be backed by the same physical cluster. However, each
    # virtual cluster maps to one namespace on an Amazon EKS cluster.
    # Virtual clusters do not create any active resources that contribute to
    # your bill or that require lifecycle management outside the service.
    #
    # @!attribute [rw] id
    #   The ID of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_provider
    #   The container provider of the virtual cluster.
    #   @return [Types::ContainerProvider]
    #
    # @!attribute [rw] created_at
    #   The date and time when the virtual cluster is created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The assigned tags of the virtual cluster.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/VirtualCluster AWS API Documentation
    #
    class VirtualCluster < Struct.new(
      :id,
      :name,
      :arn,
      :state,
      :container_provider,
      :created_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
