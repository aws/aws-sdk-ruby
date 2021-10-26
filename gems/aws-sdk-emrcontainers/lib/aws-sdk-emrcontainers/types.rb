# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRContainers
  module Types

    # @note When making an API call, you may pass CancelJobRunRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #         virtual_cluster_id: "ResourceIdString", # required
    #       }
    #
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
    # @note When making an API call, you may pass CloudWatchMonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         log_group_name: "LogGroupName", # required
    #         log_stream_name_prefix: "String256",
    #       }
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
    # @note When making an API call, you may pass Configuration
    #   data as a hash:
    #
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "String1024" => "String1024",
    #         },
    #         configurations: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024",
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #           },
    #         ],
    #       }
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
    # @note When making an API call, you may pass ConfigurationOverrides
    #   data as a hash:
    #
    #       {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024",
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #           },
    #         ],
    #         monitoring_configuration: {
    #           persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #           cloud_watch_monitoring_configuration: {
    #             log_group_name: "LogGroupName", # required
    #             log_stream_name_prefix: "String256",
    #           },
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString", # required
    #           },
    #         },
    #       }
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
    #   The information about the EKS cluster.
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

    # The information about the container provider.
    #
    # @note When making an API call, you may pass ContainerProvider
    #   data as a hash:
    #
    #       {
    #         type: "EKS", # required, accepts EKS
    #         id: "ClusterId", # required
    #         info: {
    #           eks_info: {
    #             namespace: "KubernetesNamespace",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   The type of the container provider. EKS is the only supported type
    #   as of now.
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

    # @note When making an API call, you may pass CreateManagedEndpointRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceNameString", # required
    #         virtual_cluster_id: "ResourceIdString", # required
    #         type: "EndpointType", # required
    #         release_label: "ReleaseLabel", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #         certificate_arn: "ACMCertArn",
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024",
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #             },
    #           ],
    #           monitoring_configuration: {
    #             persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #             cloud_watch_monitoring_configuration: {
    #               log_group_name: "LogGroupName", # required
    #               log_stream_name_prefix: "String256",
    #             },
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString", # required
    #             },
    #           },
    #         },
    #         client_token: "ClientToken", # required
    #         tags: {
    #           "String128" => "StringEmpty256",
    #         },
    #       }
    #
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
    #   fiedd is under deprecation and will be removed in future releases.
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

    # @note When making an API call, you may pass CreateVirtualClusterRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceNameString", # required
    #         container_provider: { # required
    #           type: "EKS", # required, accepts EKS
    #           id: "ClusterId", # required
    #           info: {
    #             eks_info: {
    #               namespace: "KubernetesNamespace",
    #             },
    #           },
    #         },
    #         client_token: "ClientToken", # required
    #         tags: {
    #           "String128" => "StringEmpty256",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass DeleteManagedEndpointRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #         virtual_cluster_id: "ResourceIdString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteVirtualClusterRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeJobRunRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #         virtual_cluster_id: "ResourceIdString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeManagedEndpointRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #         virtual_cluster_id: "ResourceIdString", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeVirtualClusterRequest
    #   data as a hash:
    #
    #       {
    #         id: "ResourceIdString", # required
    #       }
    #
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

    # The information about the EKS cluster.
    #
    # @note When making an API call, you may pass EksInfo
    #   data as a hash:
    #
    #       {
    #         namespace: "KubernetesNamespace",
    #       }
    #
    # @!attribute [rw] namespace
    #   The namespaces of the EKS cluster.
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

    # Specify the driver that the job runs on.
    #
    # @note When making an API call, you may pass JobDriver
    #   data as a hash:
    #
    #       {
    #         spark_submit_job_driver: {
    #           entry_point: "EntryPointPath", # required
    #           entry_point_arguments: ["EntryPointArgument"],
    #           spark_submit_parameters: "SparkSubmitParameters",
    #         },
    #       }
    #
    # @!attribute [rw] spark_submit_job_driver
    #   The job driver parameters specified for spark submit.
    #   @return [Types::SparkSubmitJobDriver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/JobDriver AWS API Documentation
    #
    class JobDriver < Struct.new(
      :spark_submit_job_driver)
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListJobRunsRequest
    #   data as a hash:
    #
    #       {
    #         virtual_cluster_id: "ResourceIdString", # required
    #         created_before: Time.now,
    #         created_after: Time.now,
    #         name: "ResourceNameString",
    #         states: ["PENDING"], # accepts PENDING, SUBMITTED, RUNNING, FAILED, CANCELLED, CANCEL_PENDING, COMPLETED
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListManagedEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         virtual_cluster_id: "ResourceIdString", # required
    #         created_before: Time.now,
    #         created_after: Time.now,
    #         types: ["EndpointType"],
    #         states: ["CREATING"], # accepts CREATING, ACTIVE, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "RsiArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListVirtualClustersRequest
    #   data as a hash:
    #
    #       {
    #         container_provider_id: "String1024",
    #         container_provider_type: "EKS", # accepts EKS
    #         created_after: Time.now,
    #         created_before: Time.now,
    #         states: ["RUNNING"], # accepts RUNNING, TERMINATING, TERMINATED, ARRESTED
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] container_provider_id
    #   The container provider ID of the virtual cluster.
    #   @return [String]
    #
    # @!attribute [rw] container_provider_type
    #   The container provider type of the virtual cluster. EKS is the only
    #   supported type as of now.
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
    # @note When making an API call, you may pass MonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: "LogGroupName", # required
    #           log_stream_name_prefix: "String256",
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString", # required
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-containers-2020-10-01/MonitoringConfiguration AWS API Documentation
    #
    class MonitoringConfiguration < Struct.new(
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration)
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

    # Amazon S3 configuration for monitoring log publishing. You can
    # configure your jobs to send log information to Amazon S3.
    #
    # @note When making an API call, you may pass S3MonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         log_uri: "UriString", # required
    #       }
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

    # The information about job driver for Spark submit.
    #
    # @note When making an API call, you may pass SparkSubmitJobDriver
    #   data as a hash:
    #
    #       {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters",
    #       }
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

    # @note When making an API call, you may pass StartJobRunRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceNameString",
    #         virtual_cluster_id: "ResourceIdString", # required
    #         client_token: "ClientToken", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #         release_label: "ReleaseLabel", # required
    #         job_driver: { # required
    #           spark_submit_job_driver: {
    #             entry_point: "EntryPointPath", # required
    #             entry_point_arguments: ["EntryPointArgument"],
    #             spark_submit_parameters: "SparkSubmitParameters",
    #           },
    #         },
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024",
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #             },
    #           ],
    #           monitoring_configuration: {
    #             persistent_app_ui: "ENABLED", # accepts ENABLED, DISABLED
    #             cloud_watch_monitoring_configuration: {
    #               log_group_name: "LogGroupName", # required
    #               log_stream_name_prefix: "String256",
    #             },
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString", # required
    #             },
    #           },
    #         },
    #         tags: {
    #           "String128" => "StringEmpty256",
    #         },
    #       }
    #
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
      :tags)
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "RsiArn", # required
    #         tags: { # required
    #           "String128" => "StringEmpty256",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "RsiArn", # required
    #         tag_keys: ["String128"], # required
    #       }
    #
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
    # virtual cluster maps to one namespace on an EKS cluster. Virtual
    # clusters do not create any active resources that contribute to your
    # bill or that require lifecycle management outside the service.
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
