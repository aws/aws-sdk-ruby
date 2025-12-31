# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MWAAServerless
  module Types

    # You do not have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You cannot create a resource that already exists, or the resource is
    # in a state that prevents the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the workflow. You must use unique workflow names within
    #   your Amazon Web Services account. The service generates a unique
    #   identifier that is appended to ensure temporal uniqueness across the
    #   account lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This token prevents duplicate workflow
    #   creation requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] definition_s3_location
    #   The Amazon S3 location where the workflow definition file is stored.
    #   This must point to a valid YAML file that defines the workflow
    #   structure using supported Amazon Web Services operators and tasks.
    #   Amazon Managed Workflows for Apache Airflow Serverless takes a
    #   snapshot of the definition at creation time, so subsequent changes
    #   to the Amazon S3 object will not affect the workflow unless you
    #   create a new version. In your YAML definition, include task
    #   dependencies, scheduling information, and operator configurations
    #   that are compatible with the Amazon Managed Workflows for Apache
    #   Airflow Serverless execution environment.
    #   @return [Types::DefinitionS3Location]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon Managed
    #   Workflows for Apache Airflow Serverless assumes when executing the
    #   workflow. This role must have the necessary permissions to access
    #   the required Amazon Web Services services and resources that your
    #   workflow tasks will interact with. The role is used for task
    #   execution in the isolated, multi-tenant environment and should
    #   follow the principle of least privilege. Amazon Managed Workflows
    #   for Apache Airflow Serverless validates role access during workflow
    #   creation but runtime permission checks are performed by the target
    #   services.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description of the workflow that you can use to provide
    #   additional context about the workflow's purpose and functionality.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The configuration for encrypting workflow data at rest and in
    #   transit. Specifies the encryption type and optional KMS key for
    #   customer-managed encryption.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] logging_configuration
    #   The configuration for workflow logging. Specifies the CloudWatch log
    #   group where workflow execution logs are stored. Amazon Managed
    #   Workflows for Apache Airflow Serverless automatically exports worker
    #   logs and task-level information to the specified log group in your
    #   account using remote logging functionality. This provides
    #   comprehensive observability for debugging and monitoring workflow
    #   execution across the distributed, serverless environment.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version of the Amazon Managed Workflows for Apache Airflow
    #   Serverless engine that you want to use for this workflow. This
    #   determines the feature set, supported operators, and execution
    #   environment capabilities available to your workflow. Amazon Managed
    #   Workflows for Apache Airflow Serverless maintains backward
    #   compatibility across versions while introducing new features and
    #   improvements. Currently supports version 1 with plans for additional
    #   versions as the service evolves.
    #   @return [Integer]
    #
    # @!attribute [rw] network_configuration
    #   Network configuration for the workflow execution environment,
    #   including VPC security groups and subnets for secure network access.
    #   When specified, Amazon Managed Workflows for Apache Airflow
    #   Serverless deploys ECS worker tasks in your customer VPC to provide
    #   secure connectivity to your resources. If not specified, tasks run
    #   in the service's default worker VPC with network isolation from
    #   other customers. This configuration enables secure access to
    #   VPC-only resources like RDS databases or private endpoints.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] tags
    #   A map of tags to assign to the workflow resource. Tags are key-value
    #   pairs that are used for resource organization and cost allocation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] trigger_mode
    #   The trigger mode for the workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/CreateWorkflowRequest AWS API Documentation
    #
    class CreateWorkflowRequest < Struct.new(
      :name,
      :client_token,
      :definition_s3_location,
      :role_arn,
      :description,
      :encryption_configuration,
      :logging_configuration,
      :engine_version,
      :network_configuration,
      :tags,
      :trigger_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the newly created workflow. This
    #   ARN uniquely identifies the workflow resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow was created, in ISO 8601 date-time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] revision_id
    #   A unique identifier for this revision of the workflow configuration.
    #   This ID changes when the workflow is updated and you can use it for
    #   optimistic concurrency control in update operations. The revision ID
    #   helps prevent conflicting updates and ensures that updates are
    #   applied to the expected version of the workflow configuration.
    #   @return [String]
    #
    # @!attribute [rw] workflow_status
    #   The current status of the workflow. Possible values are `READY`
    #   (workflow is ready to run) and `DELETING` (workflow is being
    #   deleted).
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version identifier of the workflow. This is a service-generated
    #   alphanumeric string that uniquely identifies this version of the
    #   workflow. Amazon Managed Workflows for Apache Airflow Serverless
    #   uses a version-first approach where each workflow can have multiple
    #   immutable versions, which allows you to maintain different
    #   configurations and roll back to previous versions as needed. The
    #   version identifier is used in ARNs and API operations to reference
    #   specific workflow versions.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_version
    #   A Boolean flag that indicates whether this workflow version is the
    #   latest version of the workflow.
    #   @return [Boolean]
    #
    # @!attribute [rw] warnings
    #   Warning messages generated during workflow creation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/CreateWorkflowResponse AWS API Documentation
    #
    class CreateWorkflowResponse < Struct.new(
      :workflow_arn,
      :created_at,
      :revision_id,
      :workflow_status,
      :workflow_version,
      :is_latest_version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Amazon S3 location of a workflow definition file. This
    # structure contains the bucket name, object key, and optional version
    # ID for the workflow definition. Amazon Managed Workflows for Apache
    # Airflow Serverless takes a snapshot of the definition file at the time
    # of workflow creation or update, ensuring that the workflow behavior
    # remains consistent even if the source file is modified. The definition
    # must be a valid YAML file that uses supported Amazon Web Services
    # operators and Amazon Managed Workflows for Apache Airflow Serverless
    # syntax.
    #
    # @!attribute [rw] bucket
    #   The name of the Amazon S3 bucket that contains the workflow
    #   definition file.
    #   @return [String]
    #
    # @!attribute [rw] object_key
    #   The key (name) of the workflow definition file within the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Optional. The version ID of the workflow definition file in Amazon
    #   S3. If not specified, the latest version is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/DefinitionS3Location AWS API Documentation
    #
    class DefinitionS3Location < Struct.new(
      :bucket,
      :object_key,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   Optional. The specific version of the workflow to delete. If not
    #   specified, all versions of the workflow are deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :workflow_arn,
      :workflow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the deleted workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/DeleteWorkflowResponse AWS API Documentation
    #
    class DeleteWorkflowResponse < Struct.new(
      :workflow_arn,
      :workflow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for encrypting workflow data at rest and in transit.
    # Amazon Managed Workflows for Apache Airflow Serverless provides
    # comprehensive encryption capabilities to protect sensitive workflow
    # data, parameters, and execution logs. When using customer-managed
    # keys, the service integrates with Amazon Web Services KMS to provide
    # fine-grained access control and audit capabilities. Encryption is
    # applied consistently across the distributed execution environment
    # including task containers, metadata storage, and log streams.
    #
    # @!attribute [rw] type
    #   The type of encryption to use. Values are `AWS_MANAGED_KEY` (Amazon
    #   Web Services manages the encryption key) or `CUSTOMER_MANAGED_KEY`
    #   (you provide a KMS key).
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The ID or ARN of the Amazon Web Services KMS key to use for
    #   encryption. Required when `Type` is `CUSTOMER_MANAGED_KEY`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :type,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the
    #   task instance.
    #   @return [String]
    #
    # @!attribute [rw] task_instance_id
    #   The unique identifier of the task instance to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run that contains the task
    #   instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetTaskInstanceRequest AWS API Documentation
    #
    class GetTaskInstanceRequest < Struct.new(
      :workflow_arn,
      :task_instance_id,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   task instance.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run that contains this task
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] task_instance_id
    #   The unique identifier of this task instance.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow that contains this task instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the task instance.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the task instance execution in seconds. This value
    #   is null if the task is not complete.
    #   @return [Integer]
    #
    # @!attribute [rw] operator_name
    #   The name of the Apache Airflow operator used for this task instance.
    #   @return [String]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the task instance was last modified, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the task instance completed execution, in ISO
    #   8601 date-time format. This value is null if the task is not
    #   complete.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the task instance started execution, in ISO 8601
    #   date-time format. This value is null if the task has not started.
    #   @return [Time]
    #
    # @!attribute [rw] attempt_number
    #   The attempt number for this task instance.
    #   @return [Integer]
    #
    # @!attribute [rw] error_message
    #   The error message if the task instance failed. This value is null if
    #   the task completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task definition within the workflow.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The CloudWatch log stream name for this task instance execution.
    #   @return [String]
    #
    # @!attribute [rw] xcom
    #   Cross-communication data exchanged between tasks in the workflow
    #   execution.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetTaskInstanceResponse AWS API Documentation
    #
    class GetTaskInstanceResponse < Struct.new(
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
      :xcom)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   Optional. The specific version of the workflow to retrieve. If not
    #   specified, the latest version is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :workflow_arn,
      :workflow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version identifier of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow was created, in ISO 8601 date-time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the workflow was last modified, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_configuration
    #   The encryption configuration for the workflow.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] logging_configuration
    #   The logging configuration for the workflow.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version of the Amazon Managed Workflows for Apache Airflow
    #   Serverless engine that this workflow uses.
    #   @return [Integer]
    #
    # @!attribute [rw] workflow_status
    #   The current status of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] definition_s3_location
    #   The Amazon S3 location of the workflow definition file.
    #   @return [Types::DefinitionS3Location]
    #
    # @!attribute [rw] schedule_configuration
    #   The schedule configuration for the workflow, including cron
    #   expressions for automated execution. Amazon Managed Workflows for
    #   Apache Airflow Serverless uses EventBridge Scheduler for
    #   cost-effective, timezone-aware scheduling. When a workflow includes
    #   schedule information in its YAML definition, the service
    #   automatically configures the appropriate triggers for automated
    #   execution. Only one version of a workflow can have an active
    #   schedule at any given time.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used for workflow
    #   execution.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for the workflow execution environment.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] trigger_mode
    #   The trigger mode for the workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] workflow_definition
    #   The workflow definition content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
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
      :schedule_configuration,
      :role_arn,
      :network_configuration,
      :trigger_mode,
      :workflow_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflowRunRequest AWS API Documentation
    #
    class GetWorkflowRunRequest < Struct.new(
      :workflow_arn,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow that is used for this run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of this workflow run.
    #   @return [String]
    #
    # @!attribute [rw] run_type
    #   The type of workflow run. Values are `ON_DEMAND` (manually
    #   triggered) or `SCHEDULED` (automatically triggered by schedule).
    #   @return [String]
    #
    # @!attribute [rw] override_parameters
    #   Parameters that were overridden for this specific workflow run.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] run_detail
    #   Detailed information about the workflow run execution, including
    #   timing, status, and task instances.
    #   @return [Types::WorkflowRunDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/GetWorkflowRunResponse AWS API Documentation
    #
    class GetWorkflowRunResponse < Struct.new(
      :workflow_arn,
      :workflow_version,
      :run_id,
      :run_type,
      :override_parameters,
      :run_detail)
      SENSITIVE = [:override_parameters]
      include Aws::Structure
    end

    # An unexpected server-side error occurred during request processing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource for which to list
    #   tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of tags that are associated with the resource, where each tag
    #   consists of a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run for which you want a list
    #   of task instances.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of task instances to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListTaskInstances`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTaskInstancesRequest AWS API Documentation
    #
    class ListTaskInstancesRequest < Struct.new(
      :workflow_arn,
      :run_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_instances
    #   A list of task instance summaries for the specified workflow run.
    #   @return [Array<Types::TaskInstanceSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is null if there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListTaskInstancesResponse AWS API Documentation
    #
    class ListTaskInstancesResponse < Struct.new(
      :task_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of workflow runs to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflowRuns`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow for which you want a
    #   list of runs.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   Optional. The specific version of the workflow for which you want a
    #   list of runs. If not specified, runs for all versions are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowRunsRequest AWS API Documentation
    #
    class ListWorkflowRunsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_arn,
      :workflow_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_runs
    #   A list of workflow run summaries for the specified workflow.
    #   @return [Array<Types::WorkflowRunSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is null if there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowRunsResponse AWS API Documentation
    #
    class ListWorkflowRunsResponse < Struct.new(
      :workflow_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of workflow versions to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflowVersions`.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow for which you want to
    #   list versions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowVersionsRequest AWS API Documentation
    #
    class ListWorkflowVersionsRequest < Struct.new(
      :max_results,
      :next_token,
      :workflow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_versions
    #   A list of workflow version summaries for the specified workflow.
    #   @return [Array<Types::WorkflowVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is null if there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowVersionsResponse AWS API Documentation
    #
    class ListWorkflowVersionsResponse < Struct.new(
      :workflow_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of workflows you want to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is returned from a previous call to
    #   `ListWorkflows`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflows
    #   A list of workflow summaries for all workflows in your account.
    #   @return [Array<Types::WorkflowSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token you need to use to retrieve the next set of
    #   results. This value is null if there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :workflows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for workflow logging that specifies where you should
    # store your workflow execution logs. Amazon Managed Workflows for
    # Apache Airflow Serverless provides comprehensive logging capabilities
    # that capture workflow execution details, task-level information, and
    # system events. Logs are automatically exported to your specified
    # CloudWatch log group using remote logging functionality, providing
    # centralized observability across the distributed, multi-tenant
    # execution environment. This enables effective debugging, monitoring,
    # and compliance auditing of workflow executions.
    #
    # @!attribute [rw] log_group_name
    #   The name of the CloudWatch log group where workflow execution logs
    #   are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :log_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network configuration for workflow execution. Specifies VPC security
    # groups and subnets for secure network access. When provided, Amazon
    # Managed Workflows for Apache Airflow Serverless deploys ECS worker
    # tasks in your specified VPC configuration, enabling secure access to
    # VPC-only resources. The service uses a proxy API container
    # architecture where one container handles external communication while
    # the worker container connects to your VPC for task execution. This
    # design provides both security isolation and connectivity flexibility.
    #
    # @!attribute [rw] security_group_ids
    #   A list of VPC security group IDs to associate with the workflow
    #   execution environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of VPC subnet IDs where the workflow execution environment is
    #   deployed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation timed out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/OperationTimeoutException AWS API Documentation
    #
    class OperationTimeoutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found. You can only access or modify a
    # resource that already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow run's execution details,
    # including status and timing information.
    #
    # @!attribute [rw] status
    #   The current status of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The timestamp when the workflow run was created, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the workflow run started execution, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The timestamp when the workflow run completed execution, in ISO 8601
    #   date-time format. This value is null if the run is not complete.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/RunDetailSummary AWS API Documentation
    #
    class RunDetailSummary < Struct.new(
      :status,
      :created_on,
      :started_at,
      :ended_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration to use to schedule automated workflow execution
    # using cron expressions. Amazon Managed Workflows for Apache Airflow
    # Serverless integrates with EventBridge Scheduler to provide
    # cost-effective, timezone-aware scheduling capabilities. The service
    # supports both time-based and event-based scheduling (event-based
    # scheduling available post-GA). When a workflow definition includes
    # scheduling information, Amazon Managed Workflows for Apache Airflow
    # Serverless automatically configures the appropriate triggers and
    # ensures only one version of a workflow has an active schedule at any
    # time.
    #
    # @!attribute [rw] cron_expression
    #   A cron expression that defines when the workflow is automatically
    #   executed. Uses standard cron syntax.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ScheduleConfiguration AWS API Documentation
    #
    class ScheduleConfiguration < Struct.new(
      :cron_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the service quota for Amazon Managed Workflows for
    # Apache Airflow Serverless resources. This can occur when you attempt
    # to create more workflows than allowed, exceed concurrent workflow run
    # limits, or surpass task execution limits. Amazon Managed Workflows for
    # Apache Airflow Serverless implements admission control using
    # DynamoDB-based counters to manage resource utilization across the
    # multi-tenant environment. Contact Amazon Web Services Support to
    # request quota increases if you need higher limits for your use case.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource affected.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to run.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. This token prevents duplicate workflow
    #   run requests.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] override_parameters
    #   Optional parameters to override default workflow parameters for this
    #   specific run. These parameters are passed to the workflow during
    #   execution and can be used to customize behavior without modifying
    #   the workflow definition. Parameters are made available as
    #   environment variables to tasks and you can reference them within the
    #   YAML workflow definition using standard parameter substitution
    #   syntax.
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] workflow_version
    #   Optional. The specific version of the workflow to execute. If not
    #   specified, the latest version is used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StartWorkflowRunRequest AWS API Documentation
    #
    class StartWorkflowRunRequest < Struct.new(
      :workflow_arn,
      :client_token,
      :override_parameters,
      :workflow_version)
      SENSITIVE = [:override_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] run_id
    #   The unique identifier of the newly started workflow run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The initial status of the workflow run. This is typically `STARTING`
    #   when you first create the run.
    #   @return [String]
    #
    # @!attribute [rw] started_at
    #   The timestamp when the workflow run was started, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StartWorkflowRunResponse AWS API Documentation
    #
    class StartWorkflowRunResponse < Struct.new(
      :run_id,
      :status,
      :started_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the run
    #   you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StopWorkflowRunRequest AWS API Documentation
    #
    class StopWorkflowRunRequest < Struct.new(
      :workflow_arn,
      :run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains the
    #   stopped run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow that was stopped.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the stopped workflow run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the workflow run after the stop operation. This is
    #   typically `STOPPING` or `STOPPED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/StopWorkflowRunResponse AWS API Documentation
    #
    class StopWorkflowRunResponse < Struct.new(
      :workflow_arn,
      :workflow_version,
      :run_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of tags to add to the resource. Each tag consists of a
    #   key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Summary information about a task instance within a workflow run,
    # including its status and execution details.
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   task instance.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow that contains this task instance.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run that contains this task
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] task_instance_id
    #   The unique identifier of this task instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the task instance.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   The duration of the task instance execution in seconds. This value
    #   is null if the task is not complete.
    #   @return [Integer]
    #
    # @!attribute [rw] operator_name
    #   The name of the Apache Airflow operator used for this task instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/TaskInstanceSummary AWS API Documentation
    #
    class TaskInstanceSummary < Struct.new(
      :workflow_arn,
      :workflow_version,
      :run_id,
      :task_instance_id,
      :status,
      :duration_in_seconds,
      :operator_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because too many requests were made in a short
    # period, exceeding the service rate limits. Amazon Managed Workflows
    # for Apache Airflow Serverless implements throttling controls to ensure
    # fair resource allocation across all customers in the multi-tenant
    # environment. This helps maintain service stability and performance. If
    # you encounter throttling, implement exponential backoff and retry
    # logic in your applications, or consider distributing your API calls
    # over a longer time period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource from which to remove
    #   tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource. Only the keys are
    #   required; the values are ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow you want to update.
    #   @return [String]
    #
    # @!attribute [rw] definition_s3_location
    #   The Amazon S3 location where the updated workflow definition file is
    #   stored.
    #   @return [Types::DefinitionS3Location]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that Amazon Managed
    #   Workflows for Apache Airflow Serverless assumes when it executes the
    #   updated workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An updated description for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Updated logging configuration for the workflow.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] engine_version
    #   The version of the Amazon Managed Workflows for Apache Airflow
    #   Serverless engine that you want to use for the updated workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] network_configuration
    #   Updated network configuration for the workflow execution
    #   environment.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] trigger_mode
    #   The trigger mode for the workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UpdateWorkflowRequest AWS API Documentation
    #
    class UpdateWorkflowRequest < Struct.new(
      :workflow_arn,
      :definition_s3_location,
      :role_arn,
      :description,
      :logging_configuration,
      :engine_version,
      :network_configuration,
      :trigger_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the updated workflow.
    #   @return [String]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the workflow was last modified, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_version
    #   The version identifier of the updated workflow.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   Warning messages generated during workflow update.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/UpdateWorkflowResponse AWS API Documentation
    #
    class UpdateWorkflowResponse < Struct.new(
      :workflow_arn,
      :modified_at,
      :workflow_version,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified request parameters are invalid, missing, or inconsistent
    # with Amazon Managed Workflows for Apache Airflow Serverless service
    # requirements. This can occur when workflow definitions contain
    # unsupported operators, when required IAM permissions are missing, when
    # S3 locations are inaccessible, or when network configurations are
    # invalid. The service validates workflow definitions, execution roles,
    # and resource configurations to ensure compatibility with the managed
    # Airflow environment and security requirements.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a field that failed validation, including
    # the field name and a descriptive error message.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message that describes why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a workflow run execution, including timing,
    # status, error information, and associated task instances. This
    # structure provides comprehensive visibility into the workflow
    # execution lifecycle within the Amazon Managed Workflows for Apache
    # Airflow Serverless serverless environment. The service tracks
    # execution across distributed ECS worker tasks and provides detailed
    # timing information, error diagnostics, and task instance relationships
    # to support effective monitoring and troubleshooting of complex
    # workflow executions.
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow used for this run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The unique identifier of this workflow run.
    #   @return [String]
    #
    # @!attribute [rw] run_type
    #   The type of workflow run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The timestamp when the workflow run started execution, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow run was created, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The timestamp when the workflow run completed execution, in ISO 8601
    #   date-time format. This value is null if the run is not complete.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the workflow run was last modified, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The total duration of the workflow run execution in seconds. This
    #   value is null if the run is not complete.
    #   @return [Integer]
    #
    # @!attribute [rw] error_message
    #   The error message if the workflow run failed. This value is null if
    #   the run completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] task_instances
    #   A list of task instance IDs that are part of this workflow run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] run_state
    #   The current execution state of the workflow run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/WorkflowRunDetail AWS API Documentation
    #
    class WorkflowRunDetail < Struct.new(
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
      :run_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow run, including basic
    # identification and status information.
    #
    # @!attribute [rw] run_id
    #   The unique identifier of the workflow run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version of the workflow used for this run.
    #   @return [String]
    #
    # @!attribute [rw] run_type
    #   The type of workflow run.
    #   @return [String]
    #
    # @!attribute [rw] run_detail_summary
    #   Summary details about the workflow run execution.
    #   @return [Types::RunDetailSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/WorkflowRunSummary AWS API Documentation
    #
    class WorkflowRunSummary < Struct.new(
      :run_id,
      :workflow_arn,
      :workflow_version,
      :run_type,
      :run_detail_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow, including basic identification
    # and metadata.
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_version
    #   The version identifier of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow was created, in ISO 8601 date-time
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the workflow was last modified, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] workflow_status
    #   The current status of the workflow.
    #   @return [String]
    #
    # @!attribute [rw] trigger_mode
    #   The trigger mode for the workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/WorkflowSummary AWS API Documentation
    #
    class WorkflowSummary < Struct.new(
      :workflow_arn,
      :workflow_version,
      :name,
      :description,
      :created_at,
      :modified_at,
      :workflow_status,
      :trigger_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a workflow version, including identification
    # and configuration details.
    #
    # @!attribute [rw] workflow_version
    #   The version identifier of the workflow version.
    #   @return [String]
    #
    # @!attribute [rw] workflow_arn
    #   The Amazon Resource Name (ARN) of the workflow that contains this
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_version
    #   Boolean flag that indicates whether this is the latest version of
    #   the workflow.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the workflow version was created, in ISO 8601
    #   date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] modified_at
    #   The timestamp when the workflow version was last modified, in ISO
    #   8601 date-time format.
    #   @return [Time]
    #
    # @!attribute [rw] definition_s3_location
    #   The Amazon S3 location of the workflow definition file for this
    #   version.
    #   @return [Types::DefinitionS3Location]
    #
    # @!attribute [rw] schedule_configuration
    #   The schedule configuration for this workflow version.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] trigger_mode
    #   The trigger mode for the workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-serverless-2024-07-26/WorkflowVersionSummary AWS API Documentation
    #
    class WorkflowVersionSummary < Struct.new(
      :workflow_version,
      :workflow_arn,
      :is_latest_version,
      :created_at,
      :modified_at,
      :definition_s3_location,
      :schedule_configuration,
      :trigger_mode)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

