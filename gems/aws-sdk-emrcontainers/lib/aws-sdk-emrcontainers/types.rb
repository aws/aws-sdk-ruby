# frozen_string_literal: true

# This is generated code!

module Aws::EMRcontainers
  # This module contains the types returned by client operations.
  module Types

    # <p>Authorization-related configuration inputs for the security configuration.</p>
    # @!attribute lake_formation_configuration
    #   <p>Lake Formation related configuration inputs for the security
    #            configuration.</p>
    #   @return [Types::LakeFormationConfiguration]
    # @!attribute encryption_configuration
    #   <p>Encryption-related configuration input for the security configuration.</p>
    #   @return [Types::EncryptionConfiguration]
    class AuthorizationConfiguration < Struct.new(
      :lake_formation_configuration,
      :encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the job run to cancel.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run will be canceled.</p>
    #   @return [String]
    class CancelJobRunRequest < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The output contains the ID of the cancelled job run.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The output contains the virtual cluster ID for which the job run is cancelled.</p>
    #   @return [String]
    class CancelJobRunResponse < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity representing certificate data generated for managed endpoint.</p>
    # @!attribute certificate_arn
    #   <p>The ARN of the certificate generated for managed endpoint.</p>
    #   @return [String]
    # @!attribute certificate_data
    #   <p>The base64 encoded PEM certificate data generated for managed endpoint.</p>
    #   @return [String]
    class Certificate < Struct.new(
      :certificate_arn,
      :certificate_data,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration for CloudWatch monitoring. You can configure your jobs to send log
    #          information to CloudWatch Logs.</p>
    # @!attribute log_group_name
    #   <p>The name of the log group for log publishing.</p>
    #   @return [String]
    # @!attribute log_stream_name_prefix
    #   <p>The specified name prefix for log streams.</p>
    #   @return [String]
    class CloudWatchMonitoringConfiguration < Struct.new(
      :log_group_name,
      :log_stream_name_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration specification to be used when provisioning virtual clusters, which can
    #          include configurations for applications and software bundled with Amazon EMR on EKS. A
    #          configuration consists of a classification, properties, and optional nested configurations.
    #          A classification refers to an application-specific configuration file. Properties are the
    #          settings you want to change in that file.</p>
    # @!attribute classification
    #   <p>The classification within a configuration.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #   @return [Hash<String, String>]
    # @!attribute configurations
    #   <p>A list of additional configurations to apply within a configuration object.</p>
    #   @return [Array<Types::Configuration>]
    class Configuration < Struct.new(
      :classification,
      :properties,
      :configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration specification to be used to override existing configurations.</p>
    # @!attribute application_configuration
    #   <p>The configurations for the application running by the job run. </p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p>The configurations for monitoring.</p>
    #   @return [Types::MonitoringConfiguration]
    class ConfigurationOverrides < Struct.new(
      :application_configuration,
      :monitoring_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the container used for a job run or a managed endpoint.</p>
    # @!attribute eks_info
    #   <p>The information about the Amazon EKS cluster.</p>
    #   @return [Types::EksInfo]
    class ContainerInfo < Struct.new(
      :eks_info,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class EksInfo < ContainerInfo; end
      class Unknown < ContainerInfo; end
    end

    # <p>The settings for container log rotation.</p>
    # @!attribute rotation_size
    #   <p>The file size at which to rotate logs. Minimum of 2KB, Maximum of 2GB.</p>
    #   @return [String]
    # @!attribute max_files_to_keep
    #   <p>The number of files to keep in container after rotation.</p>
    #   @return [Integer]
    class ContainerLogRotationConfiguration < Struct.new(
      :rotation_size,
      :max_files_to_keep,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the container provider.</p>
    # @!attribute type
    #   <p>The type of the container provider. Amazon EKS is the only supported type as of
    #            now.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the container cluster.</p>
    #   @return [String]
    # @!attribute info
    #   <p>The information about the container cluster.</p>
    #   @return [Types::ContainerInfo]
    class ContainerProvider < Struct.new(
      :type,
      :id,
      :info,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The specified name of the job template.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token of the job template.</p>
    #   @return [String]
    # @!attribute job_template_data
    #   <p>The job template data which holds values of StartJobRun API request.</p>
    #   @return [Types::JobTemplateData]
    # @!attribute tags
    #   <p>The tags that are associated with the job template.</p>
    #   @return [Hash<String, String>]
    # @!attribute kms_key_arn
    #   <p>The KMS key ARN used to encrypt the job template.</p>
    #   @return [String]
    class CreateJobTemplateRequest < Struct.new(
      :name,
      :client_token,
      :job_template_data,
      :tags,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output display the created job template ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This output displays the name of the created job template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>This output display the ARN of the created job template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>This output displays the date and time when the job template was created.</p>
    #   @return [Time]
    class CreateJobTemplateResponse < Struct.new(
      :id,
      :name,
      :arn,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the managed endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which a managed endpoint is created.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the managed endpoint.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release version.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The ARN of the execution role.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The certificate ARN provided by users for the managed endpoint. This field is under
    #            deprecation and will be removed in future releases.</p>
    #   @deprecated
    #     Customer provided certificate-arn is deprecated and would be removed in future.
    #   @return [String]
    # @!attribute configuration_overrides
    #   <p>The configuration settings that will be used to override existing configurations.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute client_token
    #   <p>The client idempotency token for this create call.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the managed endpoint. </p>
    #   @return [Hash<String, String>]
    class CreateManagedEndpointRequest < Struct.new(
      :name,
      :virtual_cluster_id,
      :type,
      :release_label,
      :execution_role_arn,
      :certificate_arn,
      :configuration_overrides,
      :client_token,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The output contains the ID of the managed endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The output contains the name of the managed endpoint.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The output contains the ARN of the managed endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The output contains the ID of the virtual cluster.</p>
    #   @return [String]
    class CreateManagedEndpointResponse < Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>The client idempotency token to use when creating the security configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    # @!attribute security_configuration_data
    #   <p>Security configuration input for the request.</p>
    #   @return [Types::SecurityConfigurationData]
    # @!attribute tags
    #   <p>The tags to add to the security configuration.</p>
    #   @return [Hash<String, String>]
    class CreateSecurityConfigurationRequest < Struct.new(
      :client_token,
      :name,
      :security_configuration_data,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the security configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the security configuration.</p>
    #   @return [String]
    class CreateSecurityConfigurationResponse < Struct.new(
      :id,
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The specified name of the virtual cluster.</p>
    #   @return [String]
    # @!attribute container_provider
    #   <p>The container provider of the virtual cluster.</p>
    #   @return [Types::ContainerProvider]
    # @!attribute client_token
    #   <p>The client token of the virtual cluster.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the virtual cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute security_configuration_id
    #   <p>The ID of the security configuration.</p>
    #   @return [String]
    class CreateVirtualClusterRequest < Struct.new(
      :name,
      :container_provider,
      :client_token,
      :tags,
      :security_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output contains the virtual cluster ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This output contains the name of the virtual cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>This output contains the ARN of virtual cluster.</p>
    #   @return [String]
    class CreateVirtualClusterResponse < Struct.new(
      :id,
      :name,
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure containing the session token being returned.</p>
    # @!attribute token
    #   <p>The actual session token being returned.</p>
    #   @return [String]
    class Credentials < Struct.new(
      :token,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Token < Credentials; end
      class Unknown < Credentials; end
    end

    # @!attribute id
    #   <p>The ID of the job template that will be deleted.</p>
    #   @return [String]
    class DeleteJobTemplateRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output contains the ID of the job template that was deleted.</p>
    #   @return [String]
    class DeleteJobTemplateResponse < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the managed endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #   @return [String]
    class DeleteManagedEndpointRequest < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The output displays the ID of the managed endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The output displays the ID of the endpoint's virtual cluster.</p>
    #   @return [String]
    class DeleteManagedEndpointResponse < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the virtual cluster that will be deleted.</p>
    #   @return [String]
    class DeleteVirtualClusterRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output contains the ID of the virtual cluster that will be deleted. </p>
    #   @return [String]
    class DeleteVirtualClusterResponse < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the job run request. </p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run is submitted.</p>
    #   @return [String]
    class DescribeJobRunRequest < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_run
    #   <p>The output displays information about a job run.</p>
    #   @return [Types::JobRun]
    class DescribeJobRunResponse < Struct.new(
      :job_run,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the job template that will be described.</p>
    #   @return [String]
    class DescribeJobTemplateRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_template
    #   <p>This output displays information about the specified job template.</p>
    #   @return [Types::JobTemplate]
    class DescribeJobTemplateResponse < Struct.new(
      :job_template,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output displays ID of the managed endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #   @return [String]
    class DescribeManagedEndpointRequest < Struct.new(
      :id,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>This output displays information about a managed endpoint.</p>
    #   @return [Types::Endpoint]
    class DescribeManagedEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the security configuration.</p>
    #   @return [String]
    class DescribeSecurityConfigurationRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_configuration
    #   <p>Details of the security configuration.</p>
    #   @return [Types::SecurityConfiguration]
    class DescribeSecurityConfigurationResponse < Struct.new(
      :security_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the virtual cluster that will be described.</p>
    #   @return [String]
    class DescribeVirtualClusterRequest < Struct.new(
      :id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_cluster
    #   <p>This output displays information about the specified virtual cluster.</p>
    #   @return [Types::VirtualCluster]
    class DescribeVirtualClusterResponse < Struct.new(
      :virtual_cluster,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeded the Amazon EKS API operation limits.</p>
    # @!attribute message
    #   @return [String]
    class EKSRequestThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the Amazon EKS cluster.</p>
    # @!attribute namespace
    #   <p>The namespaces of the Amazon EKS cluster.</p>
    #   @return [String]
    class EksInfo < Struct.new(
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations related to encryption for the security configuration.</p>
    # @!attribute in_transit_encryption_configuration
    #   <p>In-transit encryption-related input for the security configuration.</p>
    #   @return [Types::InTransitEncryptionConfiguration]
    class EncryptionConfiguration < Struct.new(
      :in_transit_encryption_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This entity represents the endpoint that is managed by Amazon EMR on EKS.</p>
    # @!attribute id
    #   <p>The ID of the endpoint.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the endpoint.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the endpoint.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the endpoint.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the endpoint.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The EMR release version to be used for the endpoint.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The execution role ARN of the endpoint.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The certificate ARN of the endpoint. This field is under deprecation and will be removed
    #            in future.</p>
    #   @deprecated
    #     Customer provided certificate-arn is deprecated and would be removed in future.
    #   @return [String]
    # @!attribute certificate_authority
    #   <p>The certificate generated by emr control plane on customer behalf to secure the managed
    #            endpoint.</p>
    #   @return [Types::Certificate]
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override existing configurations for
    #            endpoints.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute server_url
    #   <p>The server URL of the endpoint.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the endpoint was created.</p>
    #   @return [Time]
    # @!attribute security_group
    #   <p>The security group configuration of the endpoint. </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs of the endpoint. </p>
    #   @return [Array<String>]
    # @!attribute state_details
    #   <p> Additional details of the endpoint state. </p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p> The reasons why the endpoint has failed. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the endpoint. </p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_identifier
    #   <p>The ARN of the managed endpoint for which the request is submitted. </p>
    #   @return [String]
    # @!attribute virtual_cluster_identifier
    #   <p>The ARN of the Virtual Cluster which the Managed Endpoint belongs to. </p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The IAM Execution Role ARN that will be used by the job run. </p>
    #   @return [String]
    # @!attribute credential_type
    #   <p>Type of the token requested. Currently supported and default value of this field is
    #            “TOKEN.”</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>Duration in seconds for which the session token is valid. The default duration is 15
    #            minutes and the maximum is 12 hours.</p>
    #   @return [Integer]
    # @!attribute log_context
    #   <p>String identifier used to separate sections of the execution logs uploaded to S3.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client idempotency token of the job run request.</p>
    #   @return [String]
    class GetManagedEndpointSessionCredentialsRequest < Struct.new(
      :endpoint_identifier,
      :virtual_cluster_identifier,
      :execution_role_arn,
      :credential_type,
      :duration_in_seconds,
      :log_context,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The identifier of the session token returned.</p>
    #   @return [String]
    # @!attribute credentials
    #   <p>The structure containing the session credentials.</p>
    #   @return [Types::Credentials]
    # @!attribute expires_at
    #   <p>The date and time when the session token will expire.</p>
    #   @return [Time]
    class GetManagedEndpointSessionCredentialsResponse < Struct.new(
      :id,
      :credentials,
      :expires_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations related to in-transit encryption for the security configuration.</p>
    # @!attribute tls_certificate_configuration
    #   <p>TLS certificate-related configuration input for the security configuration.</p>
    #   @return [Types::TLSCertificateConfiguration]
    class InTransitEncryptionConfiguration < Struct.new(
      :tls_certificate_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is an internal server exception.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specify the driver that the job runs on. Exactly one of the two available job drivers is
    #          required, either sparkSqlJobDriver or sparkSubmitJobDriver.</p>
    # @!attribute spark_submit_job_driver
    #   <p>The job driver parameters specified for spark submit.</p>
    #   @return [Types::SparkSubmitJobDriver]
    # @!attribute spark_sql_job_driver
    #   <p>The job driver for job type.</p>
    #   @return [Types::SparkSqlJobDriver]
    class JobDriver < Struct.new(
      :spark_submit_job_driver,
      :spark_sql_job_driver,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This entity describes a job run. A job run is a unit of work, such as a Spark jar,
    #          PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS. </p>
    # @!attribute id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the job run.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The ID of the job run's virtual cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of job run.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job run. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token used to start a job run.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The execution role ARN of the job run.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The release version of Amazon EMR.</p>
    #   @return [String]
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override default configuration.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute job_driver
    #   <p>Parameters of job driver for the job run.</p>
    #   @return [Types::JobDriver]
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute finished_at
    #   <p>The date and time when the job run has finished.</p>
    #   @return [Time]
    # @!attribute state_details
    #   <p>Additional details of the job run state.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The reasons why the job run has failed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The assigned tags of the job run.</p>
    #   @return [Hash<String, String>]
    # @!attribute retry_policy_configuration
    #   <p>The configuration of the retry policy that the job runs on.</p>
    #   @return [Types::RetryPolicyConfiguration]
    # @!attribute retry_policy_execution
    #   <p>The current status of the retry policy executed on the job.</p>
    #   @return [Types::RetryPolicyExecution]
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
      :retry_policy_execution,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This entity describes a job template. Job template stores values of StartJobRun API
    #          request in a template and can be used to start a job run. Job template allows two use
    #          cases: avoid repeating recurring StartJobRun API request values, enforcing certain values
    #          in StartJobRun API request.</p>
    # @!attribute name
    #   <p>The name of the job template.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the job template.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the job template.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p> The date and time when the job template was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p> The user who created the job template.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the job template.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_template_data
    #   <p>The job template data which holds values of StartJobRun API request.</p>
    #   @return [Types::JobTemplateData]
    # @!attribute kms_key_arn
    #   <p> The KMS key ARN used to encrypt the job template.</p>
    #   @return [String]
    # @!attribute decryption_error
    #   <p>The error message in case the decryption of job template fails.</p>
    #   @return [String]
    class JobTemplate < Struct.new(
      :name,
      :id,
      :arn,
      :created_at,
      :created_by,
      :tags,
      :job_template_data,
      :kms_key_arn,
      :decryption_error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The values of StartJobRun API requests used in job runs started using the job
    #          template.</p>
    # @!attribute execution_role_arn
    #   <p>The execution role ARN of the job run.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p> The release version of Amazon EMR.</p>
    #   @return [String]
    # @!attribute configuration_overrides
    #   <p> The configuration settings that are used to override defaults configuration.</p>
    #   @return [Types::ParametricConfigurationOverrides]
    # @!attribute job_driver
    #   <p>Specify the driver that the job runs on. Exactly one of the two available job drivers is
    #            required, either sparkSqlJobDriver or sparkSubmitJobDriver.</p>
    #   @return [Types::JobDriver]
    # @!attribute parameter_configuration
    #   <p>The configuration of parameters existing in the job template.</p>
    #   @return [Hash<String, Types::TemplateParameterConfiguration>]
    # @!attribute job_tags
    #   <p>The tags assigned to jobs started using the job template.</p>
    #   @return [Hash<String, String>]
    class JobTemplateData < Struct.new(
      :execution_role_arn,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :parameter_configuration,
      :job_tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Lake Formation related configuration inputs for the security
    #          configuration.</p>
    # @!attribute authorized_session_tag_value
    #   <p>The session tag to authorize Amazon EMR on EKS for API calls to Lake Formation.</p>
    #   @return [String]
    # @!attribute secure_namespace_info
    #   <p>The namespace input of the system job.</p>
    #   @return [Types::SecureNamespaceInfo]
    # @!attribute query_engine_role_arn
    #   <p>The query engine IAM role ARN that is tied to the secure Spark job. The
    #            <code>QueryEngine</code> role assumes the <code>JobExecutionRole</code> to execute all
    #            the Lake Formation calls.</p>
    #   @return [String]
    class LakeFormationConfiguration < Struct.new(
      :authorized_session_tag_value,
      :secure_namespace_info,
      :query_engine_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster for which to list the job run. </p>
    #   @return [String]
    # @!attribute created_before
    #   <p>The date and time before which the job runs were submitted.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>The date and time after which the job runs were submitted.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>The name of the job run.</p>
    #   @return [String]
    # @!attribute states
    #   <p>The states of the job run.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of job runs to return.</p>
    #   @return [String]
    class ListJobRunsRequest < Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :name,
      :states,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_runs
    #   <p>This output lists information about the specified job runs.</p>
    #   @return [Array<Types::JobRun>]
    # @!attribute next_token
    #   <p>This output displays the token for the next set of job runs.</p>
    #   @return [String]
    class ListJobRunsResponse < Struct.new(
      :job_runs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_after
    #   <p>The date and time after which the job templates were created.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p> The date and time before which the job templates were created.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p> The maximum number of job templates that can be listed.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of job templates to return.</p>
    #   @return [String]
    class ListJobTemplatesRequest < Struct.new(
      :created_after,
      :created_before,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute templates
    #   <p>This output lists information about the specified job templates.</p>
    #   @return [Array<Types::JobTemplate>]
    # @!attribute next_token
    #   <p> This output displays the token for the next set of job templates.</p>
    #   @return [String]
    class ListJobTemplatesResponse < Struct.new(
      :templates,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_cluster_id
    #   <p>The ID of the virtual cluster.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>The date and time before which the endpoints are created.</p>
    #   @return [Time]
    # @!attribute created_after
    #   <p> The date and time after which the endpoints are created.</p>
    #   @return [Time]
    # @!attribute types
    #   <p>The types of the managed endpoints.</p>
    #   @return [Array<String>]
    # @!attribute states
    #   <p>The states of the managed endpoints.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of managed endpoints that can be listed.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token for the next set of managed endpoints to return. </p>
    #   @return [String]
    class ListManagedEndpointsRequest < Struct.new(
      :virtual_cluster_id,
      :created_before,
      :created_after,
      :types,
      :states,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>The managed endpoints to be listed.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute next_token
    #   <p> The token for the next set of endpoints to return. </p>
    #   @return [String]
    class ListManagedEndpointsResponse < Struct.new(
      :endpoints,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_after
    #   <p>The date and time after which the security configuration was created.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The date and time before which the security configuration was created.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of security configurations the operation can list.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of security configurations to return.</p>
    #   @return [String]
    class ListSecurityConfigurationsRequest < Struct.new(
      :created_after,
      :created_before,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_configurations
    #   <p>The list of returned security configurations.</p>
    #   @return [Array<Types::SecurityConfiguration>]
    # @!attribute next_token
    #   <p>The token for the next set of security configurations to return.</p>
    #   @return [String]
    class ListSecurityConfigurationsResponse < Struct.new(
      :security_configurations,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of tagged resources.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags assigned to resources.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute container_provider_id
    #   <p>The container provider ID of the virtual cluster.</p>
    #   @return [String]
    # @!attribute container_provider_type
    #   <p>The container provider type of the virtual cluster. Amazon EKS is the only
    #            supported type as of now.</p>
    #   @return [String]
    # @!attribute created_after
    #   <p>The date and time after which the virtual clusters are created.</p>
    #   @return [Time]
    # @!attribute created_before
    #   <p>The date and time before which the virtual clusters are created.</p>
    #   @return [Time]
    # @!attribute states
    #   <p>The states of the requested virtual clusters.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of virtual clusters that can be listed.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of virtual clusters to return. </p>
    #   @return [String]
    # @!attribute eks_access_entry_integrated
    #   <p>Optional Boolean that specifies whether the operation should return the 
    #            virtual clusters that have the access entry integration enabled or disabled. If not specified,
    #         the operation returns all applicable virtual clusters.</p>
    #   @return [Boolean]
    class ListVirtualClustersRequest < Struct.new(
      :container_provider_id,
      :container_provider_type,
      :created_after,
      :created_before,
      :states,
      :max_results,
      :next_token,
      :eks_access_entry_integrated,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute virtual_clusters
    #   <p>This output lists the specified virtual clusters.</p>
    #   @return [Array<Types::VirtualCluster>]
    # @!attribute next_token
    #   <p>This output displays the token for the next set of virtual clusters.</p>
    #   @return [String]
    class ListVirtualClustersResponse < Struct.new(
      :virtual_clusters,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The entity that provides configuration control over managed logs.</p>
    # @!attribute allow_aws_to_retain_logs
    #   <p>Determines whether Amazon Web Services can retain logs.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Amazon resource name (ARN) of the encryption key for logs.</p>
    #   @return [String]
    class ManagedLogs < Struct.new(
      :allow_aws_to_retain_logs,
      :encryption_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration setting for monitoring.</p>
    # @!attribute managed_logs
    #   <p>The entity that controls configuration for managed logs.</p>
    #   @return [Types::ManagedLogs]
    # @!attribute persistent_app_ui
    #   <p>Monitoring configurations for the persistent application UI. </p>
    #   @return [String]
    # @!attribute cloud_watch_monitoring_configuration
    #   <p>Monitoring configurations for CloudWatch.</p>
    #   @return [Types::CloudWatchMonitoringConfiguration]
    # @!attribute s3_monitoring_configuration
    #   <p>Amazon S3 configuration for monitoring log publishing.</p>
    #   @return [Types::S3MonitoringConfiguration]
    # @!attribute container_log_rotation_configuration
    #   <p>Enable or disable container log rotation.</p>
    #   @return [Types::ContainerLogRotationConfiguration]
    class MonitoringConfiguration < Struct.new(
      :managed_logs,
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration,
      :container_log_rotation_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> A configuration for CloudWatch monitoring. You can configure your jobs to send log
    #          information to CloudWatch Logs. This data type allows job template parameters to be
    #          specified within.</p>
    # @!attribute log_group_name
    #   <p> The name of the log group for log publishing.</p>
    #   @return [String]
    # @!attribute log_stream_name_prefix
    #   <p> The specified name prefix for log streams.</p>
    #   @return [String]
    class ParametricCloudWatchMonitoringConfiguration < Struct.new(
      :log_group_name,
      :log_stream_name_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> A configuration specification to be used to override existing configurations. This data
    #          type allows job template parameters to be specified within.</p>
    # @!attribute application_configuration
    #   <p> The configurations for the application running by the job run.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p> The configurations for monitoring. </p>
    #   @return [Types::ParametricMonitoringConfiguration]
    class ParametricConfigurationOverrides < Struct.new(
      :application_configuration,
      :monitoring_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Configuration setting for monitoring. This data type allows job template parameters to
    #          be specified within.</p>
    # @!attribute persistent_app_ui
    #   <p> Monitoring configurations for the persistent application UI.</p>
    #   @return [String]
    # @!attribute cloud_watch_monitoring_configuration
    #   <p> Monitoring configurations for CloudWatch.</p>
    #   @return [Types::ParametricCloudWatchMonitoringConfiguration]
    # @!attribute s3_monitoring_configuration
    #   <p> Amazon S3 configuration for monitoring log publishing.</p>
    #   @return [Types::ParametricS3MonitoringConfiguration]
    class ParametricMonitoringConfiguration < Struct.new(
      :persistent_app_ui,
      :cloud_watch_monitoring_configuration,
      :s3_monitoring_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Amazon S3 configuration for monitoring log publishing. You can configure your jobs to
    #          send log information to Amazon S3. This data type allows job template parameters to be
    #          specified within.</p>
    # @!attribute log_uri
    #   <p>Amazon S3 destination URI for log publishing.</p>
    #   @return [String]
    class ParametricS3MonitoringConfiguration < Struct.new(
      :log_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request throttled.</p>
    # @!attribute message
    #   @return [String]
    class RequestThrottledException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the retry policy that the job runs on.</p>
    # @!attribute max_attempts
    #   <p>The maximum number of attempts on the job's driver.</p>
    #   @return [Integer]
    class RetryPolicyConfiguration < Struct.new(
      :max_attempts,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of the retry policy executed on the job.</p>
    # @!attribute current_attempt_count
    #   <p>The current number of attempts made on the driver of the job.</p>
    #   @return [Integer]
    class RetryPolicyExecution < Struct.new(
      :current_attempt_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Amazon S3 configuration for monitoring log publishing. You can configure your jobs to
    #          send log information to Amazon S3.</p>
    # @!attribute log_uri
    #   <p>Amazon S3 destination URI for log publishing.</p>
    #   @return [String]
    class S3MonitoringConfiguration < Struct.new(
      :log_uri,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Namespace inputs for the system job.</p>
    # @!attribute cluster_id
    #   <p>The ID of the Amazon EKS cluster where Amazon EMR on EKS jobs run.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the Amazon EKS cluster where the system jobs run.</p>
    #   @return [String]
    class SecureNamespaceInfo < Struct.new(
      :cluster_id,
      :namespace,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Inputs related to the security configuration. Security configurations in Amazon EMR on EKS are templates for different security setups. You can use security
    #          configurations to configure the Lake Formation integration setup. You can also
    #          create a security configuration to re-use a security setup each time you create a virtual
    #          cluster.</p>
    # @!attribute id
    #   <p>The ID of the security configuration.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security configuration.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN (Amazon Resource Name) of the security configuration.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the job run was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute security_configuration_data
    #   <p>Security configuration inputs for the request.</p>
    #   @return [Types::SecurityConfigurationData]
    # @!attribute tags
    #   <p>The tags to assign to the security configuration.</p>
    #   @return [Hash<String, String>]
    class SecurityConfiguration < Struct.new(
      :id,
      :name,
      :arn,
      :created_at,
      :created_by,
      :security_configuration_data,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations related to the security configuration for the request.</p>
    # @!attribute authorization_configuration
    #   <p>Authorization-related configuration input for the security configuration.</p>
    #   @return [Types::AuthorizationConfiguration]
    class SecurityConfigurationData < Struct.new(
      :authorization_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The job driver for job type.</p>
    # @!attribute entry_point
    #   <p>The SQL file to be executed.</p>
    #   @return [String]
    # @!attribute spark_sql_parameters
    #   <p>The Spark parameters to be included in the Spark SQL command.</p>
    #   @return [String]
    class SparkSqlJobDriver < Struct.new(
      :entry_point,
      :spark_sql_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The information about job driver for Spark submit.</p>
    # @!attribute entry_point
    #   <p>The entry point of job application.</p>
    #   @return [String]
    # @!attribute entry_point_arguments
    #   <p>The arguments for job application.</p>
    #   @return [Array<String>]
    # @!attribute spark_submit_parameters
    #   <p>The Spark submit parameters that are used for job runs.</p>
    #   @return [String]
    class SparkSubmitJobDriver < Struct.new(
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the job run.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>The virtual cluster ID for which the job run request is submitted.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client idempotency token of the job run request. </p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release version to use for the job run.</p>
    #   @return [String]
    # @!attribute job_driver
    #   <p>The job driver for the job run.</p>
    #   @return [Types::JobDriver]
    # @!attribute configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute tags
    #   <p>The tags assigned to job runs.</p>
    #   @return [Hash<String, String>]
    # @!attribute job_template_id
    #   <p>The job template ID to be used to start the job run.</p>
    #   @return [String]
    # @!attribute job_template_parameters
    #   <p>The values of job template parameters to start a job run.</p>
    #   @return [Hash<String, String>]
    # @!attribute retry_policy_configuration
    #   <p>The retry policy configuration for the job run.</p>
    #   @return [Types::RetryPolicyConfiguration]
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
      :retry_policy_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>This output displays the started job run ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>This output displays the name of the started job run.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>This output lists the ARN of job run.</p>
    #   @return [String]
    # @!attribute virtual_cluster_id
    #   <p>This output displays the virtual cluster ID for which the job run was submitted.</p>
    #   @return [String]
    class StartJobRunResponse < Struct.new(
      :id,
      :name,
      :arn,
      :virtual_cluster_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Configurations related to the TLS certificate for the security configuration.</p>
    # @!attribute certificate_provider_type
    #   <p>The TLS certificate type. Acceptable values: <code>PEM</code> or
    #            <code>Custom</code>.</p>
    #   @return [String]
    # @!attribute public_certificate_secret_arn
    #   <p>Secrets Manager ARN that contains the public TLS certificate contents, used for
    #            communication between the user job and the system job.</p>
    #   @return [String]
    # @!attribute private_certificate_secret_arn
    #   <p>Secrets Manager ARN that contains the private TLS certificate contents, used for
    #            communication between the user job and the system job.</p>
    #   @return [String]
    class TLSCertificateConfiguration < Struct.new(
      :certificate_provider_type,
      :public_certificate_secret_arn,
      :private_certificate_secret_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of resources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to resources.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of a job template parameter.</p>
    # @!attribute type
    #   <p>The type of the job template parameter. Allowed values are: ‘STRING’, ‘NUMBER’.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value for the job template parameter.</p>
    #   @return [String]
    class TemplateParameterConfiguration < Struct.new(
      :type,
      :default_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of resources.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>There are invalid parameters in the client request.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This entity describes a virtual cluster. A virtual cluster is a Kubernetes namespace
    #          that Amazon EMR is registered with. Amazon EMR uses virtual clusters to run
    #          jobs and host endpoints. Multiple virtual clusters can be backed by the same physical
    #          cluster. However, each virtual cluster maps to one namespace on an Amazon EKS
    #          cluster. Virtual clusters do not create any active resources that contribute to your bill
    #          or that require lifecycle management outside the service.</p>
    # @!attribute id
    #   <p>The ID of the virtual cluster.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the virtual cluster.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the virtual cluster.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the virtual cluster.</p>
    #   @return [String]
    # @!attribute container_provider
    #   <p>The container provider of the virtual cluster.</p>
    #   @return [Types::ContainerProvider]
    # @!attribute created_at
    #   <p>The date and time when the virtual cluster is created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The assigned tags of the virtual cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute security_configuration_id
    #   <p>The ID of the security configuration.</p>
    #   @return [String]
    class VirtualCluster < Struct.new(
      :id,
      :name,
      :arn,
      :state,
      :container_provider,
      :created_at,
      :tags,
      :security_configuration_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
