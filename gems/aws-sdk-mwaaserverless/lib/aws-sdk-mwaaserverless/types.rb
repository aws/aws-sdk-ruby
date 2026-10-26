# frozen_string_literal: true

# This is generated code!

module Aws::MWAAServerless
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Amazon S3 location of code artifacts that workflows use during execution.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the code artifacts that your workflow tasks use during execution.</p>
    #   @return [Types::S3Location]
    class Code < Struct.new(
      :s3_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Location < Code; end
      class Unknown < Code; end
    end

    # <p>You cannot create a resource that already exists, or the resource is in a state that prevents the requested operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the workflow. You must use unique workflow names within your Amazon Web Services account. The service generates a unique identifier that is appended to ensure temporal uniqueness across the account lifecycle.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token prevents duplicate workflow creation requests.</p>
    #   @return [String]
    # @!attribute definition_s3_location
    #   <p>The Amazon S3 location where the workflow definition file is stored. This must point to a valid YAML file that defines the workflow structure using supported Amazon Web Services operators and tasks. Amazon Managed Workflows for Apache Airflow Serverless takes a snapshot of the definition at creation time, so subsequent changes to the Amazon S3 object will not affect the workflow unless you create a new version. In your YAML definition, include task dependencies, scheduling information, and operator configurations that are compatible with the Amazon Managed Workflows for Apache Airflow Serverless execution environment.</p>
    #   @return [Types::DefinitionS3Location]
    # @!attribute code
    #   <p>The location of code artifacts in Amazon S3 for the workflow. The service copies the code from this location at the time of the request.</p>
    #   @return [Types::Code]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon Managed Workflows for Apache Airflow Serverless assumes when executing the workflow. This role must have the necessary permissions to access the required Amazon Web Services services and resources that your workflow tasks will interact with. The role is used for task execution in the isolated, multi-tenant environment and should follow the principle of least privilege. Amazon Managed Workflows for Apache Airflow Serverless validates role access during workflow creation but runtime permission checks are performed by the target services.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An optional description of the workflow that you can use to provide additional context about the workflow's purpose and functionality.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The configuration for encrypting workflow data at rest and in transit. Specifies the encryption type and optional KMS key for customer-managed encryption.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute logging_configuration
    #   <p>The configuration for workflow logging. Specifies the CloudWatch log group where workflow execution logs are stored. Amazon Managed Workflows for Apache Airflow Serverless automatically exports worker logs and task-level information to the specified log group in your account using remote logging functionality. This provides comprehensive observability for debugging and monitoring workflow execution across the distributed, serverless environment.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute engine_version
    #   <p>The version of the Amazon Managed Workflows for Apache Airflow Serverless engine that you want to use for this workflow. This determines the feature set, supported operators, and execution environment capabilities available to your workflow. Amazon Managed Workflows for Apache Airflow Serverless maintains backward compatibility across versions while introducing new features and improvements. Currently supports version 1 with plans for additional versions as the service evolves.</p>
    #   @return [Integer]
    # @!attribute network_configuration
    #   <p>Network configuration for the workflow execution environment, including VPC security groups and subnets for secure network access. When specified, Amazon Managed Workflows for Apache Airflow Serverless deploys ECS worker tasks in your customer VPC to provide secure connectivity to your resources. If not specified, tasks run in the service's default worker VPC with network isolation from other customers. This configuration enables secure access to VPC-only resources like RDS databases or private endpoints.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute tags
    #   <p>A map of tags to assign to the workflow resource. Tags are key-value pairs that are used for resource organization and cost allocation.</p>
    #   @return [Hash<String, String>]
    # @!attribute trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    #   @return [String]
    class CreateWorkflowRequest < Struct.new(
      nil,
      :name,
      :client_token,
      :definition_s3_location,
      :code,
      :role_arn,
      :description,
      :encryption_configuration,
      :logging_configuration,
      :engine_version,
      :network_configuration,
      :tags,
      :trigger_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created workflow. This ARN uniquely identifies the workflow resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the workflow was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute revision_id
    #   <p>A unique identifier for this revision of the workflow configuration. This ID changes when the workflow is updated and you can use it for optimistic concurrency control in update operations. The revision ID helps prevent conflicting updates and ensures that updates are applied to the expected version of the workflow configuration.</p>
    #   @return [String]
    # @!attribute workflow_status
    #   <p>The current status of the workflow. Possible values are <code>READY</code> (workflow is ready to run) and <code>DELETING</code> (workflow is being deleted).</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version identifier of the workflow. This is a service-generated alphanumeric string that uniquely identifies this version of the workflow. Amazon Managed Workflows for Apache Airflow Serverless uses a version-first approach where each workflow can have multiple immutable versions, which allows you to maintain different configurations and roll back to previous versions as needed. The version identifier is used in ARNs and API operations to reference specific workflow versions.</p>
    #   @return [String]
    # @!attribute is_latest_version
    #   <p>A Boolean flag that indicates whether this workflow version is the latest version of the workflow.</p>
    #   @return [Boolean]
    # @!attribute warnings
    #   <p>Warning messages generated during workflow creation.</p>
    #   @return [Array<String>]
    class CreateWorkflowResponse < Struct.new(
      nil,
      :workflow_arn,
      :created_at,
      :revision_id,
      :workflow_status,
      :workflow_version,
      :is_latest_version,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Amazon S3 location of a workflow definition file. This structure contains the bucket name, object key, and optional version ID for the workflow definition. Amazon Managed Workflows for Apache Airflow Serverless takes a snapshot of the definition file at the time of workflow creation or update, ensuring that the workflow behavior remains consistent even if the source file is modified. The definition must be a valid YAML file that uses supported Amazon Web Services operators and Amazon Managed Workflows for Apache Airflow Serverless syntax.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket that contains the workflow definition file.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>The key (name) of the workflow definition file within the S3 bucket.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Optional. The version ID of the workflow definition file in Amazon S3. If not specified, the latest version is used.</p>
    #   @return [String]
    class DefinitionS3Location < Struct.new(
      nil,
      :bucket,
      :object_key,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to delete.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>Optional. The specific version of the workflow to delete. If not specified, all versions of the workflow are deleted.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the deleted workflow.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow that was deleted.</p>
    #   @return [String]
    class DeleteWorkflowResponse < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for encrypting workflow data at rest and in transit. Amazon Managed Workflows for Apache Airflow Serverless provides comprehensive encryption capabilities to protect sensitive workflow data, parameters, and execution logs. When using customer-managed keys, the service integrates with Amazon Web Services KMS to provide fine-grained access control and audit capabilities. Encryption is applied consistently across the distributed execution environment including task containers, metadata storage, and log streams.</p>
    # @!attribute type
    #   <p>The type of encryption to use. Values are <code>AWS_MANAGED_KEY</code> (Amazon Web Services manages the encryption key) or <code>CUSTOMER_MANAGED_KEY</code> (you provide a KMS key).</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The ID or ARN of the Amazon Web Services KMS key to use for encryption. Required when <code>Type</code> is <code>CUSTOMER_MANAGED_KEY</code>.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      nil,
      :type,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the task instance.</p>
    #   @return [String]
    # @!attribute task_instance_id
    #   <p>The unique identifier of the task instance to retrieve.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run that contains the task instance.</p>
    #   @return [String]
    class GetTaskInstanceRequest < Struct.new(
      nil,
      :workflow_arn,
      :task_instance_id,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this task instance.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run that contains this task instance.</p>
    #   @return [String]
    # @!attribute task_instance_id
    #   <p>The unique identifier of this task instance.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow that contains this task instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the task instance.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The duration of the task instance execution in seconds. This value is null if the task is not complete.</p>
    #   @return [Integer]
    # @!attribute operator_name
    #   <p>The name of the Apache Airflow operator used for this task instance.</p>
    #   @return [String]
    # @!attribute modified_at
    #   <p>The timestamp when the task instance was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the task instance completed execution, in ISO 8601 date-time format. This value is null if the task is not complete.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp when the task instance started execution, in ISO 8601 date-time format. This value is null if the task has not started.</p>
    #   @return [Time]
    # @!attribute attempt_number
    #   <p>The attempt number for this task instance.</p>
    #   @return [Integer]
    # @!attribute error_message
    #   <p>The error message if the task instance failed. This value is null if the task completed successfully.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task definition within the workflow.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The CloudWatch log stream name for this task instance execution.</p>
    #   @return [String]
    # @!attribute xcom
    #   <p>Cross-communication data exchanged between tasks in the workflow execution.</p>
    #   @return [Hash<String, String>]
    class GetTaskInstanceResponse < Struct.new(
      nil,
      :workflow_arn,
      :run_id,
      :task_instance_id,
      :workflow_version,
      :status,
      :duration_in_seconds,
      :operator_name,
      :modified_at,
      :ended_at,
      :started_at,
      :attempt_number,
      :error_message,
      :task_id,
      :log_stream,
      :xcom,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to retrieve.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>Optional. The specific version of the workflow to retrieve. If not specified, the latest version is returned.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version identifier of the workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the workflow was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the workflow was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute encryption_configuration
    #   <p>The encryption configuration for the workflow.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute logging_configuration
    #   <p>The logging configuration for the workflow.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute engine_version
    #   <p>The version of the Amazon Managed Workflows for Apache Airflow Serverless engine that this workflow uses.</p>
    #   @return [Integer]
    # @!attribute workflow_status
    #   <p>The current status of the workflow.</p>
    #   @return [String]
    # @!attribute definition_s3_location
    #   <p>The Amazon S3 location of the workflow definition file.</p>
    #   @return [Types::DefinitionS3Location]
    # @!attribute code
    #   <p>The Amazon S3 location of the code artifacts provided during workflow creation or update.</p>
    #   @return [Types::Code]
    # @!attribute code_snapshotted_at
    #   <p>The time at which the code artifacts were copied for this workflow, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for the workflow, including cron expressions for automated execution. Amazon Managed Workflows for Apache Airflow Serverless uses EventBridge Scheduler for cost-effective, timezone-aware scheduling. When a workflow includes schedule information in its YAML definition, the service automatically configures the appropriate triggers for automated execution. Only one version of a workflow can have an active schedule at any given time.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for workflow execution.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The network configuration for the workflow execution environment.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    #   @return [String]
    # @!attribute workflow_definition
    #   <p>The workflow definition content.</p>
    #   @return [String]
    class GetWorkflowResponse < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :name,
      :description,
      :created_at,
      :modified_at,
      :encryption_configuration,
      :logging_configuration,
      :engine_version,
      :workflow_status,
      :definition_s3_location,
      :code,
      :code_snapshotted_at,
      :schedule_configuration,
      :role_arn,
      :network_configuration,
      :trigger_mode,
      :workflow_definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run to retrieve.</p>
    #   @return [String]
    class GetWorkflowRunRequest < Struct.new(
      nil,
      :workflow_arn,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this run.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow that is used for this run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of this workflow run.</p>
    #   @return [String]
    # @!attribute run_type
    #   <p>The type of workflow run. Values are <code>ON_DEMAND</code> (manually triggered) or <code>SCHEDULED</code> (automatically triggered by schedule).</p>
    #   @return [String]
    # @!attribute override_parameters
    #   <p>Parameters that were overridden for this specific workflow run.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute run_detail
    #   <p>Detailed information about the workflow run execution, including timing, status, and task instances.</p>
    #   @return [Types::WorkflowRunDetail]
    class GetWorkflowRunResponse < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :run_id,
      :run_type,
      :override_parameters,
      :run_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected server-side error occurred during request processing.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of tags that are associated with the resource, where each tag consists of a key-value pair.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run for which you want a list of task instances.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of task instances to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListTaskInstances</code>.</p>
    #   @return [String]
    class ListTaskInstancesRequest < Struct.new(
      nil,
      :workflow_arn,
      :run_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_instances
    #   <p>A list of task instance summaries for the specified workflow run.</p>
    #   @return [Array<Types::TaskInstanceSummary>]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is null if there are no more results.</p>
    #   @return [String]
    class ListTaskInstancesResponse < Struct.new(
      nil,
      :task_instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workflow runs to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflowRuns</code>.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow for which you want a list of runs.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>Optional. The specific version of the workflow for which you want a list of runs. If not specified, runs for all versions are returned.</p>
    #   @return [String]
    class ListWorkflowRunsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :workflow_arn,
      :workflow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_runs
    #   <p>A list of workflow run summaries for the specified workflow.</p>
    #   @return [Array<Types::WorkflowRunSummary>]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is null if there are no more results.</p>
    #   @return [String]
    class ListWorkflowRunsResponse < Struct.new(
      nil,
      :workflow_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workflow versions to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflowVersions</code>.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow for which you want to list versions.</p>
    #   @return [String]
    class ListWorkflowVersionsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :workflow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_versions
    #   <p>A list of workflow version summaries for the specified workflow.</p>
    #   @return [Array<Types::WorkflowVersionSummary>]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is null if there are no more results.</p>
    #   @return [String]
    class ListWorkflowVersionsResponse < Struct.new(
      nil,
      :workflow_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workflows you want to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflows</code>.</p>
    #   @return [String]
    class ListWorkflowsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflows
    #   <p>A list of workflow summaries for all workflows in your account.</p>
    #   @return [Array<Types::WorkflowSummary>]
    # @!attribute next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is null if there are no more results.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      nil,
      :workflows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for workflow logging that specifies where you should store your workflow execution logs. Amazon Managed Workflows for Apache Airflow Serverless provides comprehensive logging capabilities that capture workflow execution details, task-level information, and system events. Logs are automatically exported to your specified CloudWatch log group using remote logging functionality, providing centralized observability across the distributed, multi-tenant execution environment. This enables effective debugging, monitoring, and compliance auditing of workflow executions.</p>
    # @!attribute log_group_name
    #   <p>The name of the CloudWatch log group where workflow execution logs are stored.</p>
    #   @return [String]
    class LoggingConfiguration < Struct.new(
      nil,
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Network configuration for workflow execution. Specifies VPC security groups and subnets for secure network access. When provided, Amazon Managed Workflows for Apache Airflow Serverless deploys ECS worker tasks in your specified VPC configuration, enabling secure access to VPC-only resources. The service uses a proxy API container architecture where one container handles external communication while the worker container connects to your VPC for task execution. This design provides both security isolation and connectivity flexibility.</p>
    # @!attribute security_group_ids
    #   <p>A list of VPC security group IDs to associate with the workflow execution environment.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>A list of VPC subnet IDs where the workflow execution environment is deployed.</p>
    #   @return [Array<String>]
    class NetworkConfiguration < Struct.new(
      nil,
      :security_group_ids,
      :subnet_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation timed out.</p>
    # @!attribute message
    #   @return [String]
    class OperationTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found. You can only access or modify a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow run's execution details, including status and timing information.</p>
    # @!attribute status
    #   <p>The current status of the workflow run.</p>
    #   @return [String]
    # @!attribute created_on
    #   <p>The timestamp when the workflow run was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The timestamp when the workflow run started execution, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The timestamp when the workflow run completed execution, in ISO 8601 date-time format. This value is null if the run is not complete.</p>
    #   @return [Time]
    class RunDetailSummary < Struct.new(
      nil,
      :status,
      :created_on,
      :started_at,
      :ended_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the Amazon S3 location of code artifacts that workflows use during execution.</p>
    # @!attribute bucket
    #   <p>The name of the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute object_key
    #   <p>The key of the code artifact within the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the object in Amazon S3. If not specified, the latest version is used.</p>
    #   @return [String]
    class S3Location < Struct.new(
      nil,
      :bucket,
      :object_key,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration to use to schedule automated workflow execution using cron expressions. Amazon Managed Workflows for Apache Airflow Serverless integrates with EventBridge Scheduler to provide cost-effective, timezone-aware scheduling capabilities. The service supports both time-based and event-based scheduling (event-based scheduling available post-GA). When a workflow definition includes scheduling information, Amazon Managed Workflows for Apache Airflow Serverless automatically configures the appropriate triggers and ensures only one version of a workflow has an active schedule at any time.</p>
    # @!attribute cron_expression
    #   <p>A cron expression that defines when the workflow is automatically executed. Uses standard cron syntax.</p>
    #   @return [String]
    class ScheduleConfiguration < Struct.new(
      nil,
      :cron_expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the service quota for Amazon Managed Workflows for Apache Airflow Serverless resources. This can occur when you attempt to create more workflows than allowed, exceed concurrent workflow run limits, or surpass task execution limits. Amazon Managed Workflows for Apache Airflow Serverless implements admission control using DynamoDB-based counters to manage resource utilization across the multi-tenant environment. Contact Amazon Web Services Support to request quota increases if you need higher limits for your use case.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource affected.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to run.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token prevents duplicate workflow run requests.</p>
    #   @return [String]
    # @!attribute override_parameters
    #   <p>Optional parameters to override default workflow parameters for this specific run. These parameters are passed to the workflow during execution and can be used to customize behavior without modifying the workflow definition. Parameters are made available as environment variables to tasks and you can reference them within the YAML workflow definition using standard parameter substitution syntax.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute workflow_version
    #   <p>Optional. The specific version of the workflow to execute. If not specified, the latest version is used.</p>
    #   @return [String]
    class StartWorkflowRunRequest < Struct.new(
      nil,
      :workflow_arn,
      :client_token,
      :override_parameters,
      :workflow_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute run_id
    #   <p>The unique identifier of the newly started workflow run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The initial status of the workflow run. This is typically <code>STARTING</code> when you first create the run.</p>
    #   @return [String]
    # @!attribute started_at
    #   <p>The timestamp when the workflow run was started, in ISO 8601 date-time format.</p>
    #   @return [Time]
    class StartWorkflowRunResponse < Struct.new(
      nil,
      :run_id,
      :status,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run you want to stop.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run to stop.</p>
    #   @return [String]
    class StopWorkflowRunRequest < Struct.new(
      nil,
      :workflow_arn,
      :run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the stopped run.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow that was stopped.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the stopped workflow run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the workflow run after the stop operation. This is typically <code>STOPPING</code> or <code>STOPPED</code>.</p>
    #   @return [String]
    class StopWorkflowRunResponse < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :run_id,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tags to add to the resource. Each tag consists of a key-value pair.</p>
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

    # <p>Summary information about a task instance within a workflow run, including its status and execution details.</p>
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this task instance.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow that contains this task instance.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run that contains this task instance.</p>
    #   @return [String]
    # @!attribute task_instance_id
    #   <p>The unique identifier of this task instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the task instance.</p>
    #   @return [String]
    # @!attribute duration_in_seconds
    #   <p>The duration of the task instance execution in seconds. This value is null if the task is not complete.</p>
    #   @return [Integer]
    # @!attribute operator_name
    #   <p>The name of the Apache Airflow operator used for this task instance.</p>
    #   @return [String]
    class TaskInstanceSummary < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :run_id,
      :task_instance_id,
      :status,
      :duration_in_seconds,
      :operator_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because too many requests were made in a short period, exceeding the service rate limits. Amazon Managed Workflows for Apache Airflow Serverless implements throttling controls to ensure fair resource allocation across all customers in the multi-tenant environment. This helps maintain service stability and performance. If you encounter throttling, implement exponential backoff and retry logic in your applications, or consider distributing your API calls over a longer time period.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource. Only the keys are required; the values are ignored.</p>
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

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to update.</p>
    #   @return [String]
    # @!attribute definition_s3_location
    #   <p>The Amazon S3 location where the updated workflow definition file is stored.</p>
    #   @return [Types::DefinitionS3Location]
    # @!attribute code
    #   <p>The location of code artifacts in Amazon S3 for the updated workflow. The service copies the code from this location at the time of the request.</p>
    #   @return [Types::Code]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon Managed Workflows for Apache Airflow Serverless assumes when it executes the updated workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>An updated description for the workflow.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Updated logging configuration for the workflow.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute engine_version
    #   <p>The version of the Amazon Managed Workflows for Apache Airflow Serverless engine that you want to use for the updated workflow.</p>
    #   @return [Integer]
    # @!attribute network_configuration
    #   <p>Updated network configuration for the workflow execution environment.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    #   @return [String]
    class UpdateWorkflowRequest < Struct.new(
      nil,
      :workflow_arn,
      :definition_s3_location,
      :code,
      :role_arn,
      :description,
      :logging_configuration,
      :engine_version,
      :network_configuration,
      :trigger_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the updated workflow.</p>
    #   @return [String]
    # @!attribute modified_at
    #   <p>The timestamp when the workflow was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute workflow_version
    #   <p>The version identifier of the updated workflow.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>Warning messages generated during workflow update.</p>
    #   @return [Array<String>]
    class UpdateWorkflowResponse < Struct.new(
      nil,
      :workflow_arn,
      :modified_at,
      :workflow_version,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified request parameters are invalid, missing, or inconsistent with Amazon Managed Workflows for Apache Airflow Serverless service requirements. This can occur when workflow definitions contain unsupported operators, when required IAM permissions are missing, when S3 locations are inaccessible, or when network configurations are invalid. The service validates workflow definitions, execution roles, and resource configurations to ensure compatibility with the managed Airflow environment and security requirements.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The fields that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a field that failed validation, including the field name and a descriptive error message.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message that describes why the field failed validation.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed information about a workflow run execution, including timing, status, error information, and associated task instances. This structure provides comprehensive visibility into the workflow execution lifecycle within the Amazon Managed Workflows for Apache Airflow Serverless serverless environment. The service tracks execution across distributed ECS worker tasks and provides detailed timing information, error diagnostics, and task instance relationships to support effective monitoring and troubleshooting of complex workflow executions.</p>
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this run.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow used for this run.</p>
    #   @return [String]
    # @!attribute run_id
    #   <p>The unique identifier of this workflow run.</p>
    #   @return [String]
    # @!attribute run_type
    #   <p>The type of workflow run.</p>
    #   @return [String]
    # @!attribute started_on
    #   <p>The timestamp when the workflow run started execution, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp when the workflow run was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute completed_on
    #   <p>The timestamp when the workflow run completed execution, in ISO 8601 date-time format. This value is null if the run is not complete.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the workflow run was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The total duration of the workflow run execution in seconds. This value is null if the run is not complete.</p>
    #   @return [Integer]
    # @!attribute error_message
    #   <p>The error message if the workflow run failed. This value is null if the run completed successfully.</p>
    #   @return [String]
    # @!attribute task_instances
    #   <p>A list of task instance IDs that are part of this workflow run.</p>
    #   @return [Array<String>]
    # @!attribute run_state
    #   <p>The current execution state of the workflow run.</p>
    #   @return [String]
    class WorkflowRunDetail < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :run_id,
      :run_type,
      :started_on,
      :created_at,
      :completed_on,
      :modified_at,
      :duration,
      :error_message,
      :task_instances,
      :run_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow run, including basic identification and status information.</p>
    # @!attribute run_id
    #   <p>The unique identifier of the workflow run.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this run.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version of the workflow used for this run.</p>
    #   @return [String]
    # @!attribute run_type
    #   <p>The type of workflow run.</p>
    #   @return [String]
    # @!attribute run_detail_summary
    #   <p>Summary details about the workflow run execution.</p>
    #   @return [Types::RunDetailSummary]
    class WorkflowRunSummary < Struct.new(
      nil,
      :run_id,
      :workflow_arn,
      :workflow_version,
      :run_type,
      :run_detail_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow, including basic identification and metadata.</p>
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow.</p>
    #   @return [String]
    # @!attribute workflow_version
    #   <p>The version identifier of the workflow.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the workflow.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the workflow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the workflow was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the workflow was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute workflow_status
    #   <p>The current status of the workflow.</p>
    #   @return [String]
    # @!attribute trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    #   @return [String]
    class WorkflowSummary < Struct.new(
      nil,
      :workflow_arn,
      :workflow_version,
      :name,
      :description,
      :created_at,
      :modified_at,
      :workflow_status,
      :trigger_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a workflow version, including identification and configuration details.</p>
    # @!attribute workflow_version
    #   <p>The version identifier of the workflow version.</p>
    #   @return [String]
    # @!attribute workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains this version.</p>
    #   @return [String]
    # @!attribute is_latest_version
    #   <p>Boolean flag that indicates whether this is the latest version of the workflow.</p>
    #   @return [Boolean]
    # @!attribute created_at
    #   <p>The timestamp when the workflow version was created, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute modified_at
    #   <p>The timestamp when the workflow version was last modified, in ISO 8601 date-time format.</p>
    #   @return [Time]
    # @!attribute definition_s3_location
    #   <p>The Amazon S3 location of the workflow definition file for this version.</p>
    #   @return [Types::DefinitionS3Location]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for this workflow version.</p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    #   @return [String]
    class WorkflowVersionSummary < Struct.new(
      nil,
      :workflow_version,
      :workflow_arn,
      :is_latest_version,
      :created_at,
      :modified_at,
      :definition_s3_location,
      :schedule_configuration,
      :trigger_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
