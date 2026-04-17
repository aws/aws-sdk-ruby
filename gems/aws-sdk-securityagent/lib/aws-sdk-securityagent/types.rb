# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityAgent
  module Types

    # AWS resource configurations associated with the agent space
    #
    # @!attribute [rw] vpcs
    #   VPC configurations that the Security Agent accesses in the customer
    #   environment
    #   @return [Array<Types::VpcConfig>]
    #
    # @!attribute [rw] log_groups
    #   CloudWatch log group ARNs or names used to store Security Agent logs
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_buckets
    #   S3 bucket ARNs or names used to store Security Agent artifacts
    #   @return [Array<String>]
    #
    # @!attribute [rw] secret_arns
    #   SecretsManager secret ARNs or names used to store tester credentials
    #   for pentests
    #   @return [Array<String>]
    #
    # @!attribute [rw] lambda_function_arns
    #   Lambda function ARNs or names used to retrieve tester credentials
    #   for pentests
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_roles
    #   IAM role ARNs that the Security Agent can assume to access customer
    #   resources
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AWSResources AWS API Documentation
    #
    class AWSResources < Struct.new(
      :vpcs,
      :log_groups,
      :s3_buckets,
      :secret_arns,
      :lambda_function_arns,
      :iam_roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request denied due to insufficient permissions
    #
    # @!attribute [rw] message
    #   Error description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an entity that interacts with the system during security
    # testing
    #
    # @!attribute [rw] identifier
    #   Unique identifier for the actor (case-insensitive)
    #   @return [String]
    #
    # @!attribute [rw] uris
    #   List of URIs accessible with the actor's credentials
    #   @return [Array<String>]
    #
    # @!attribute [rw] authentication
    #   Authentication information used by the actor to access resources
    #   @return [Types::Authentication]
    #
    # @!attribute [rw] description
    #   Additional description or details about the actor
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Actor AWS API Documentation
    #
    class Actor < Struct.new(
      :identifier,
      :uris,
      :authentication,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_content
    #   Binary content of the artifact
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   Type of the artifact file
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   Name of the artifact file
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AddArtifactInput AWS API Documentation
    #
    class AddArtifactInput < Struct.new(
      :agent_space_id,
      :artifact_content,
      :artifact_type,
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] artifact_id
    #   Unique identifier of the created artifact
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AddArtifactOutput AWS API Documentation
    #
    class AddArtifactOutput < Struct.new(
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Agent space structure
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the agent space
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the agent space
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   AWS resource configurations
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   List of target domain IDs registered with the agent space
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   Configuration for code review analysis, including controls scanning
    #   and general purpose scanning settings
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   Identifier of the KMS key used to encrypt data. Can be a key ID, key
    #   ARN, alias name, or alias ARN. If not specified, an AWS managed key
    #   is used.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the agent space was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the agent space was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AgentSpace AWS API Documentation
    #
    class AgentSpace < Struct.new(
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an agent space
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the agent space
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the agent space was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the agent space was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AgentSpaceSummary AWS API Documentation
    #
    class AgentSpaceSummary < Struct.new(
      :agent_space_id,
      :name,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application summary for list operations
    #
    # @!attribute [rw] application_id
    #   Unique identifier of the application
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   Name of the application, automatically assigned by the service
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Domain where the application is available
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   Default KMS key identifier used to encrypt application data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_id,
      :application_name,
      :domain,
      :default_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Files containing relevant data for review
    #
    # @!attribute [rw] contents
    #   The content of the artifact
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The file type of the artifact
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Artifact AWS API Documentation
    #
    class Artifact < Struct.new(
      :contents,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata in relation to the artifact
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   Unique identifier of the artifact
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   Name of the artifact file
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the artifact was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ArtifactMetadataItem AWS API Documentation
    #
    class ArtifactMetadataItem < Struct.new(
      :agent_space_id,
      :artifact_id,
      :file_name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an artifact
    #
    # @!attribute [rw] artifact_id
    #   Unique identifier of the artifact
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   Name of the artifact file
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   Type of the artifact file
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ArtifactSummary AWS API Documentation
    #
    class ArtifactSummary < Struct.new(
      :artifact_id,
      :file_name,
      :artifact_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Collection of assets to be tested or used during a pentest
    #
    # @!attribute [rw] endpoints
    #   List of web application endpoints to test
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] actors
    #   List of actors that interact with the system
    #   @return [Array<Types::Actor>]
    #
    # @!attribute [rw] documents
    #   List of documents providing context for testing
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] source_code
    #   List of source code repositories for static analysis
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] integrated_repositories
    #   List of integrated code repositories
    #   @return [Array<Types::IntegratedRepository>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Assets AWS API Documentation
    #
    class Assets < Struct.new(
      :endpoints,
      :actors,
      :documents,
      :source_code,
      :integrated_repositories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication information used to access protected resources
    #
    # @!attribute [rw] provider_type
    #   Provider type for the authentication credentials
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Authentication credential value or reference
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Authentication AWS API Documentation
    #
    class Authentication < Struct.new(
      :provider_type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting multiple pentests
    #
    # @!attribute [rw] pentest_ids
    #   List of pentest IDs to delete
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentests exist
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeletePentestsInput AWS API Documentation
    #
    class BatchDeletePentestsInput < Struct.new(
      :pentest_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchDeletePentests operation
    #
    # @!attribute [rw] deleted
    #   List of successfully deleted pentests
    #   @return [Array<Types::Pentest>]
    #
    # @!attribute [rw] failed
    #   List of pentests that could not be deleted and the reasons for
    #   failure
    #   @return [Array<Types::DeletePentestFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeletePentestsOutput AWS API Documentation
    #
    class BatchDeletePentestsOutput < Struct.new(
      :deleted,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for batch retrieving agent spaces
    #
    # @!attribute [rw] agent_space_ids
    #   List of agent space IDs to retrieve
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetAgentSpacesInput AWS API Documentation
    #
    class BatchGetAgentSpacesInput < Struct.new(
      :agent_space_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetAgentSpaces operation
    #
    # @!attribute [rw] agent_spaces
    #   List of agent spaces that were successfully retrieved
    #   @return [Array<Types::AgentSpace>]
    #
    # @!attribute [rw] not_found
    #   List of agent space IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetAgentSpacesOutput AWS API Documentation
    #
    class BatchGetAgentSpacesOutput < Struct.new(
      :agent_spaces,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_ids
    #   List of artifact identifiers
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetArtifactMetadataInput AWS API Documentation
    #
    class BatchGetArtifactMetadataInput < Struct.new(
      :agent_space_id,
      :artifact_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] artifact_metadata_list
    #   List of artifact metadata
    #   @return [Array<Types::ArtifactMetadataItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetArtifactMetadataOutput AWS API Documentation
    #
    class BatchGetArtifactMetadataOutput < Struct.new(
      :artifact_metadata_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchGetFindings operation
    #
    # @!attribute [rw] finding_ids
    #   List of finding IDs to retrieve
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the findings exist
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetFindingsInput AWS API Documentation
    #
    class BatchGetFindingsInput < Struct.new(
      :finding_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetFindings operation
    #
    # @!attribute [rw] findings
    #   List of successfully retrieved findings
    #   @return [Array<Types::Finding>]
    #
    # @!attribute [rw] not_found
    #   List of finding IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetFindingsOutput AWS API Documentation
    #
    class BatchGetFindingsOutput < Struct.new(
      :findings,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple tasks by their IDs for a pentest job
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] task_ids
    #   List of task IDs to retrieve
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobTasksInput AWS API Documentation
    #
    class BatchGetPentestJobTasksInput < Struct.new(
      :agent_space_id,
      :task_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetPentestJobTasks operation
    #
    # @!attribute [rw] tasks
    #   List of successfully retrieved tasks
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] not_found
    #   List of task IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobTasksOutput AWS API Documentation
    #
    class BatchGetPentestJobTasksOutput < Struct.new(
      :tasks,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchGetPentestJobs operation
    #
    # @!attribute [rw] pentest_job_ids
    #   List of pentest job IDs to retrieve
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobsInput AWS API Documentation
    #
    class BatchGetPentestJobsInput < Struct.new(
      :pentest_job_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetPentestJobs operation
    #
    # @!attribute [rw] pentest_jobs
    #   List of successfully retrieved pentest jobs
    #   @return [Array<Types::PentestJob>]
    #
    # @!attribute [rw] not_found
    #   List of pentest job IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestJobsOutput AWS API Documentation
    #
    class BatchGetPentestJobsOutput < Struct.new(
      :pentest_jobs,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple pentests by their IDs
    #
    # @!attribute [rw] pentest_ids
    #   List of pentest IDs to retrieve
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestsInput AWS API Documentation
    #
    class BatchGetPentestsInput < Struct.new(
      :pentest_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetPentests operation
    #
    # @!attribute [rw] pentests
    #   List of successfully retrieved pentests
    #   @return [Array<Types::Pentest>]
    #
    # @!attribute [rw] not_found
    #   List of pentest IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetPentestsOutput AWS API Documentation
    #
    class BatchGetPentestsOutput < Struct.new(
      :pentests,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for batch retrieving target domains
    #
    # @!attribute [rw] target_domain_ids
    #   List of target domain IDs to retrieve
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetTargetDomainsInput AWS API Documentation
    #
    class BatchGetTargetDomainsInput < Struct.new(
      :target_domain_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetTargetDomains operation
    #
    # @!attribute [rw] target_domains
    #   List of target domains that were successfully retrieved
    #   @return [Array<Types::TargetDomain>]
    #
    # @!attribute [rw] not_found
    #   List of target domain IDs that could not be found
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetTargetDomainsOutput AWS API Documentation
    #
    class BatchGetTargetDomainsOutput < Struct.new(
      :target_domains,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a category classification for tasks
    #
    # @!attribute [rw] name
    #   Name of the category
    #   @return [String]
    #
    # @!attribute [rw] is_primary
    #   Whether this is the primary category for the task
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Category AWS API Documentation
    #
    class Category < Struct.new(
      :name,
      :is_primary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Reference to logs stored in CloudWatch
    #
    # @!attribute [rw] log_group
    #   Name of the CloudWatch log group
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   Name of the CloudWatch log stream
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CloudWatchLog AWS API Documentation
    #
    class CloudWatchLog < Struct.new(
      :log_group,
      :log_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about task for code remediation
    #
    # @!attribute [rw] status
    #   Current status of the code remediation task
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Reason for the current code remediation task status
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   Details of the code remediation for each repository
    #   @return [Array<Types::CodeRemediationTaskDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeRemediationTask AWS API Documentation
    #
    class CodeRemediationTask < Struct.new(
      :status,
      :status_reason,
      :task_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Code remediation details for a single repository
    #
    # @!attribute [rw] repo_name
    #   Name of the repository
    #   @return [String]
    #
    # @!attribute [rw] code_diff_link
    #   Link to the code diff for the remediation
    #   @return [String]
    #
    # @!attribute [rw] pull_request_link
    #   Link to the pull request for the remediation
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeRemediationTaskDetails AWS API Documentation
    #
    class CodeRemediationTaskDetails < Struct.new(
      :repo_name,
      :code_diff_link,
      :pull_request_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of code review settings
    #
    # @!attribute [rw] controls_scanning
    #   Whether Controls are utilized for code review analysis
    #   @return [Boolean]
    #
    # @!attribute [rw] general_purpose_scanning
    #   Whether general purpose analysis is performed for code review
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewSettings AWS API Documentation
    #
    class CodeReviewSettings < Struct.new(
      :controls_scanning,
      :general_purpose_scanning)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request conflicts with current resource state
    #
    # @!attribute [rw] message
    #   Error description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new agent space
    #
    # @!attribute [rw] name
    #   Name of the agent space
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the agent space
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   AWS resource configurations associated with the agent space
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   Target domain IDs to associate with the agent space
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   Configuration for code review analysis, including controls scanning
    #   and general purpose scanning settings
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   Identifier of the KMS key used to encrypt data. Can be a key ID, key
    #   ARN, alias name, or alias ARN. If not specified, an AWS managed key
    #   is used.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the agent space
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateAgentSpaceInput AWS API Documentation
    #
    class CreateAgentSpaceInput < Struct.new(
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreateAgentSpace operation
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the created agent space
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the created agent space
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the created agent space
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   AWS resource configurations associated with the agent space
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   List of target domain IDs registered with the agent space
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   Configuration for code review analysis, including controls scanning
    #   and general purpose scanning settings
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   Identifier of the KMS key used to encrypt data. Can be a key ID, key
    #   ARN, alias name, or alias ARN. If not specified, an AWS managed key
    #   is used.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the agent space was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the agent space was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateAgentSpaceOutput AWS API Documentation
    #
    class CreateAgentSpaceOutput < Struct.new(
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] idc_instance_arn
    #   ARN of the IAM Identity Center instance used for user
    #   authentication. Optional for non-IdC applications
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that the application uses to access AWS
    #   resources on your behalf
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   Default KMS key identifier used to encrypt application data
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the application
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :idc_instance_arn,
      :role_arn,
      :default_kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider
    #   Provider to integrate with
    #   @return [String]
    #
    # @!attribute [rw] input
    #   Provider-specific input parameters
    #   @return [Types::ProviderInput]
    #
    # @!attribute [rw] integration_display_name
    #   Display name for the integration
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for encrypting integration details
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the integration
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateIntegrationInput AWS API Documentation
    #
    class CreateIntegrationInput < Struct.new(
      :provider,
      :input,
      :integration_display_name,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_id
    #   Unique identifier of the created integration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateIntegrationOutput AWS API Documentation
    #
    class CreateIntegrationOutput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for adding a single member to an agent space
    #
    # @!attribute [rw] application_id
    #   Application identifier
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Agent space identifier
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   Member identifier (userId or agentSpaceId)
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   Type of member (USER or AGENT\_SPACE)
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Membership details (user or agent specific)
    #   @return [Types::MembershipConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateMembershipRequest AWS API Documentation
    #
    class CreateMembershipRequest < Struct.new(
      :application_id,
      :agent_space_id,
      :membership_id,
      :member_type,
      :config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for adding a single member to an agent space
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateMembershipResponse AWS API Documentation
    #
    class CreateMembershipResponse < Aws::EmptyStructure; end

    # Input for creating a new pentest
    #
    # @!attribute [rw] title
    #   Title of the pentest
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest should be created
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   Assets to be tested during the pentest
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest execution
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   Service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest execution logs
    #   are stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration that the Security Agent accesses
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   Configuration for network traffic filtering
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   Strategy for code remediation on findings
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePentestInput AWS API Documentation
    #
    class CreatePentestInput < Struct.new(
      :title,
      :agent_space_id,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :vpc_config,
      :network_traffic_config,
      :code_remediation_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreatePentest operation
    #
    # @!attribute [rw] pentest_id
    #   Unique identifier of the created pentest
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title of the created pentest
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest was last updated
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   Assets to be tested in the created pentest
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest execution
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   Service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest execution logs
    #   are stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest was created
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePentestOutput AWS API Documentation
    #
    class CreatePentestOutput < Struct.new(
      :pentest_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new target domain
    #
    # @!attribute [rw] target_domain_name
    #   Domain name of the target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_method
    #   Verification method for the target domain
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the target domain
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateTargetDomainInput AWS API Documentation
    #
    class CreateTargetDomainInput < Struct.new(
      :target_domain_name,
      :verification_method,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreateTargetDomain operation
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the created target domain
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the created target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   Current verification status of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   Verification details to verify registered target domain
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the target domain was registered
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   Timestamp when the target domain was last successfully verified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateTargetDomainOutput AWS API Documentation
    #
    class CreateTargetDomainOutput < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Custom headers to be set for network requests
    #
    # @!attribute [rw] name
    #   Name of header to set value for
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value to set for header
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CustomHeader AWS API Documentation
    #
    class CustomHeader < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting an agent space
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteAgentSpaceInput AWS API Documentation
    #
    class DeleteAgentSpaceInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the DeleteAgentSpace operation
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the deleted agent space
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteAgentSpaceOutput AWS API Documentation
    #
    class DeleteAgentSpaceOutput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   Unique identifier of the artifact
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteArtifactInput AWS API Documentation
    #
    class DeleteArtifactInput < Struct.new(
      :agent_space_id,
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteArtifactOutput AWS API Documentation
    #
    class DeleteArtifactOutput < Aws::EmptyStructure; end

    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteIntegrationInput AWS API Documentation
    #
    class DeleteIntegrationInput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteIntegrationOutput AWS API Documentation
    #
    class DeleteIntegrationOutput < Aws::EmptyStructure; end

    # Request structure for removing a single member from an agent space
    #
    # @!attribute [rw] application_id
    #   Application identifier
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Agent space identifier
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   Member identifier (userId or agentSpaceId)
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   Type of member (USER or AGENT\_SPACE)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteMembershipRequest AWS API Documentation
    #
    class DeleteMembershipRequest < Struct.new(
      :application_id,
      :agent_space_id,
      :membership_id,
      :member_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for removing a single member from an agent space
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteMembershipResponse AWS API Documentation
    #
    class DeleteMembershipResponse < Aws::EmptyStructure; end

    # Information about a failed pentest deletion attempt
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the pentest that failed to delete
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Reason for the deletion failure
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeletePentestFailure AWS API Documentation
    #
    class DeletePentestFailure < Struct.new(
      :pentest_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting a target domain
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain to delete
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteTargetDomainInput AWS API Documentation
    #
    class DeleteTargetDomainInput < Struct.new(
      :target_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the DeleteTargetDomain operation
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the deleted target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteTargetDomainOutput AWS API Documentation
    #
    class DeleteTargetDomainOutput < Struct.new(
      :target_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a discovered endpoint during pentest execution
    #
    # @!attribute [rw] uri
    #   The URI of the discovered endpoint
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job that discovered this endpoint
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   Identifier of the task that discovered this endpoint
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Identifier of the agent space where the endpoint was discovered
    #   @return [String]
    #
    # @!attribute [rw] evidence
    #   Optional evidence or additional information about the endpoint
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   Operation or action associated with the endpoint
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Additional description of the endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DiscoveredEndpoint AWS API Documentation
    #
    class DiscoveredEndpoint < Struct.new(
      :uri,
      :pentest_job_id,
      :task_id,
      :agent_space_id,
      :evidence,
      :operation,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents dns txt verification details
    #
    # @!attribute [rw] token
    #   Token used to verify domain ownership
    #   @return [String]
    #
    # @!attribute [rw] dns_record_name
    #   Record name to be added in DNS for target domain
    #   @return [String]
    #
    # @!attribute [rw] dns_record_type
    #   Type of record to be added in DNS for target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DnsVerification AWS API Documentation
    #
    class DnsVerification < Struct.new(
      :token,
      :dns_record_name,
      :dns_record_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a document relevant to security testing
    #
    # @!attribute [rw] s3_location
    #   S3 storage location of the document
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   Artifact ID of the document
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DocumentInfo AWS API Documentation
    #
    class DocumentInfo < Struct.new(
      :s3_location,
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a web application endpoint to be tested
    #
    # @!attribute [rw] uri
    #   URI of the endpoint to test
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information regarding the pentest job
    #
    # @!attribute [rw] code
    #   Pentest job failure error code
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Pentest job failure error message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ErrorInformation AWS API Documentation
    #
    class ErrorInformation < Struct.new(
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional context about a pentest or task execution
    #
    # @!attribute [rw] context_type
    #   The category of context
    #   @return [String]
    #
    # @!attribute [rw] context
    #   Context associated with a pentest or task execution
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   Timestamp associated with a pentest or task execution
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ExecutionContext AWS API Documentation
    #
    class ExecutionContext < Struct.new(
      :context_type,
      :context,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a security vulnerability or issue discovered during testing
    #
    # @!attribute [rw] finding_id
    #   Unique identifier for the finding
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Identifier of the agent space that created this finding
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   Identifier of the associated task
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name or title of the finding
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed description of the security vulnerability
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the finding
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   Type of security risk identified
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   Severity level of the identified risk
    #   @return [String]
    #
    # @!attribute [rw] risk_score
    #   Risk score associated with the finding
    #   @return [String]
    #
    # @!attribute [rw] reasoning
    #   Justification for the assigned risk score
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence level of the finding
    #   @return [String]
    #
    # @!attribute [rw] attack_script
    #   Proof-of-concept code demonstrating the vulnerability
    #   @return [String]
    #
    # @!attribute [rw] code_remediation_task
    #   Code remediation task associated with this finding
    #   @return [Types::CodeRemediationTask]
    #
    # @!attribute [rw] last_updated_by
    #   Identifier of the task or agent that last updated this finding
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the finding was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the finding was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :finding_id,
      :agent_space_id,
      :pentest_id,
      :pentest_job_id,
      :task_id,
      :name,
      :description,
      :status,
      :risk_type,
      :risk_level,
      :risk_score,
      :reasoning,
      :confidence,
      :attack_script,
      :code_remediation_task,
      :last_updated_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a security finding
    #
    # @!attribute [rw] finding_id
    #   Unique identifier for the finding
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Identifier of the agent space that created this finding
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name or title of the finding
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the finding
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   Type of security risk identified
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   Severity level of the identified risk
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence level of the finding
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the finding was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the finding was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/FindingSummary AWS API Documentation
    #
    class FindingSummary < Struct.new(
      :finding_id,
      :agent_space_id,
      :pentest_id,
      :pentest_job_id,
      :name,
      :status,
      :risk_type,
      :risk_level,
      :confidence,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   Domain where the application is available
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   Name of the application, automatically assigned by the service
    #   @return [String]
    #
    # @!attribute [rw] idc_configuration
    #   IAM Identity Center configuration for the application
    #   @return [Types::IdCConfiguration]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that the application uses to access AWS
    #   resources on your behalf
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   Default KMS key identifier used to encrypt application data
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :application_id,
      :domain,
      :application_name,
      :idc_configuration,
      :role_arn,
      :default_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   Unique identifier of the artifact
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetArtifactInput AWS API Documentation
    #
    class GetArtifactInput < Struct.new(
      :agent_space_id,
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   Unique identifier of the artifact
    #   @return [String]
    #
    # @!attribute [rw] artifact
    #   Artifact details
    #   @return [Types::Artifact]
    #
    # @!attribute [rw] file_name
    #   Name of the artifact file
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the artifact was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetArtifactOutput AWS API Documentation
    #
    class GetArtifactOutput < Struct.new(
      :agent_space_id,
      :artifact_id,
      :artifact,
      :file_name,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetIntegrationInput AWS API Documentation
    #
    class GetIntegrationInput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   Installation identifier from the provider
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Provider type
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   Type of provider integration
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for the integration
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   KMS key ID for encrypting integration details
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetIntegrationOutput AWS API Documentation
    #
    class GetIntegrationOutput < Struct.new(
      :integration_id,
      :installation_id,
      :provider,
      :provider_type,
      :display_name,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input parameters for GitHub integration
    #
    # @!attribute [rw] code
    #   Authorization code from OAuth flow
    #   @return [String]
    #
    # @!attribute [rw] state
    #   CSRF state token for OAuth security
    #   @return [String]
    #
    # @!attribute [rw] organization_name
    #   Name of the GitHub organization
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitHubIntegrationInput AWS API Documentation
    #
    class GitHubIntegrationInput < Struct.new(
      :code,
      :state,
      :organization_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata specific to a GitHub repository integrated resource
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   Unique resource identifier from the vendor
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the repository
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   Access / Visibility Type of the integrated resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitHubRepositoryMetadata AWS API Documentation
    #
    class GitHubRepositoryMetadata < Struct.new(
      :name,
      :provider_resource_id,
      :owner,
      :access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # GitHub repository resource details
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the repository
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitHubRepositoryResource AWS API Documentation
    #
    class GitHubRepositoryResource < Struct.new(
      :name,
      :owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capabilities for GitHub repositories
    #
    # @!attribute [rw] leave_comments
    #   Post code review comments on pull requests
    #   @return [Boolean]
    #
    # @!attribute [rw] remediate_code
    #   Create pull requests with automated fixes
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitHubResourceCapabilities AWS API Documentation
    #
    class GitHubResourceCapabilities < Struct.new(
      :leave_comments,
      :remediate_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents http route verification details
    #
    # @!attribute [rw] token
    #   Token used to verify domain ownership
    #   @return [String]
    #
    # @!attribute [rw] route_path
    #   Route path where verification token should be placed
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/HttpVerification AWS API Documentation
    #
    class HttpVerification < Struct.new(
      :token,
      :route_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # IdC configuration containing application and instance ARNs
    #
    # @!attribute [rw] idc_application_arn
    #   ARN of the IAM Identity Center application associated with this
    #   application
    #   @return [String]
    #
    # @!attribute [rw] idc_instance_arn
    #   ARN of the IAM Identity Center instance used for user authentication
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IdCConfiguration AWS API Documentation
    #
    class IdCConfiguration < Struct.new(
      :idc_application_arn,
      :idc_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider
    #   Provider to register with
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/InitiateProviderRegistrationInput AWS API Documentation
    #
    class InitiateProviderRegistrationInput < Struct.new(
      :provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] redirect_to
    #   OAuth redirect URL
    #   @return [String]
    #
    # @!attribute [rw] csrf_state
    #   CSRF state token for OAuth security
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/InitiateProviderRegistrationOutput AWS API Documentation
    #
    class InitiateProviderRegistrationOutput < Struct.new(
      :redirect_to,
      :csrf_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an integrated repository
    #
    # @!attribute [rw] integration_id
    #   Integration identifier
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   External provider resource identifier, e.g., Github repository
    #   identifier
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedRepository AWS API Documentation
    #
    class IntegratedRepository < Struct.new(
      :integration_id,
      :provider_resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Integrated resource details from a provider
    #
    # @note IntegratedResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] github_repository
    #   GitHub repository resource
    #   @return [Types::GitHubRepositoryResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResource AWS API Documentation
    #
    class IntegratedResource < Struct.new(
      :github_repository,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GithubRepository < IntegratedResource; end
      class Unknown < IntegratedResource; end
    end

    # Input item for updating an integrated resource
    #
    # @!attribute [rw] resource
    #   Configuration of the resource
    #   @return [Types::IntegratedResource]
    #
    # @!attribute [rw] capabilities
    #   Provider-specific capabilities for the resource
    #   @return [Types::ProviderResourceCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResourceInputItem AWS API Documentation
    #
    class IntegratedResourceInputItem < Struct.new(
      :resource,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata about an integrated resource
    #
    # @note IntegratedResourceMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IntegratedResourceMetadata corresponding to the set member.
    #
    # @!attribute [rw] github_repository
    #   Metadata for a GitHub repository resource
    #   @return [Types::GitHubRepositoryMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResourceMetadata AWS API Documentation
    #
    class IntegratedResourceMetadata < Struct.new(
      :github_repository,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GithubRepository < IntegratedResourceMetadata; end
      class Unknown < IntegratedResourceMetadata; end
    end

    # Summary information about an integrated resource
    #
    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The integrated resource details
    #   @return [Types::IntegratedResourceMetadata]
    #
    # @!attribute [rw] capabilities
    #   Capabilities of the integrated resource
    #   @return [Types::ProviderResourceCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResourceSummary AWS API Documentation
    #
    class IntegratedResourceSummary < Struct.new(
      :integration_id,
      :resource,
      :capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria for integrations
    #
    # @note IntegrationFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] provider
    #   Filter by provider
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   Filter by provider type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegrationFilter AWS API Documentation
    #
    class IntegrationFilter < Struct.new(
      :provider,
      :provider_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Provider < IntegrationFilter; end
      class ProviderType < IntegrationFilter; end
      class Unknown < IntegrationFilter; end
    end

    # Summary information about an integration
    #
    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   Installation identifier from the provider
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   Provider type
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   Type of provider integration
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name for the integration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :integration_id,
      :installation_id,
      :provider,
      :provider_type,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected server error occurred
    #
    # @!attribute [rw] message
    #   Error description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing agent spaces
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of agent spaces to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListAgentSpacesInput AWS API Documentation
    #
    class ListAgentSpacesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListAgentSpaces operation
    #
    # @!attribute [rw] agent_space_summaries
    #   List of agent space summaries
    #   @return [Array<Types::AgentSpaceSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListAgentSpacesOutput AWS API Documentation
    #
    class ListAgentSpacesOutput < Struct.new(
      :agent_space_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_summaries
    #   List of application summaries
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListArtifactsInput AWS API Documentation
    #
    class ListArtifactsInput < Struct.new(
      :agent_space_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] artifact_summaries
    #   List of artifact summaries
    #   @return [Array<Types::ArtifactSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListArtifactsOutput AWS API Documentation
    #
    class ListArtifactsOutput < Struct.new(
      :artifact_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListDiscoveredEndpoints operation
    #
    # @!attribute [rw] max_results
    #   Maximum number of discovered endpoints to return in a single request
    #   (default: 50)
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job for which to retrieve discovered
    #   endpoints
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest job exists
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   Optional URI prefix filter to narrow down results
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListDiscoveredEndpointsInput AWS API Documentation
    #
    class ListDiscoveredEndpointsInput < Struct.new(
      :max_results,
      :pentest_job_id,
      :agent_space_id,
      :prefix,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListDiscoveredEndpoints operation
    #
    # @!attribute [rw] discovered_endpoints
    #   List of discovered endpoints for the pentest job
    #   @return [Array<Types::DiscoveredEndpoint>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListDiscoveredEndpointsOutput AWS API Documentation
    #
    class ListDiscoveredEndpointsOutput < Struct.new(
      :discovered_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListFindings operation with filtering support
    #
    # @!attribute [rw] max_results
    #   Maximum number of findings to return in a single request (default:
    #   50)
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job for which to retrieve associated
    #   findings
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest job exists
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   Filter findings by risk type
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   Filter findings by risk level
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter findings by status
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Filter findings by confidence level
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filter findings by name (case-insensitive substring search)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListFindingsInput AWS API Documentation
    #
    class ListFindingsInput < Struct.new(
      :max_results,
      :pentest_job_id,
      :agent_space_id,
      :next_token,
      :risk_type,
      :risk_level,
      :status,
      :confidence,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListFindings operation
    #
    # @!attribute [rw] findings_summaries
    #   List of finding summaries matching the filter criteria
    #   @return [Array<Types::FindingSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListFindingsOutput AWS API Documentation
    #
    class ListFindingsOutput < Struct.new(
      :findings_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   Filter integrated resources by a specific integration
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Filter integrated resources by resource type
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegratedResourcesInput AWS API Documentation
    #
    class ListIntegratedResourcesInput < Struct.new(
      :agent_space_id,
      :integration_id,
      :resource_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integrated_resource_summaries
    #   List of integrated resources
    #   @return [Array<Types::IntegratedResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegratedResourcesOutput AWS API Documentation
    #
    class ListIntegratedResourcesOutput < Struct.new(
      :integrated_resource_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filter criteria for integrations
    #   @return [Types::IntegrationFilter]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegrationsInput AWS API Documentation
    #
    class ListIntegrationsInput < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_summaries
    #   List of integration summaries
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListIntegrationsOutput AWS API Documentation
    #
    class ListIntegrationsOutput < Struct.new(
      :integration_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for listing agent space members
    #
    # @!attribute [rw] application_id
    #   Application identifier
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Agent space identifier
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   Filter by member type
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListMembershipsRequest AWS API Documentation
    #
    class ListMembershipsRequest < Struct.new(
      :application_id,
      :agent_space_id,
      :member_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response structure for listing members associated to an agent space
    #
    # @!attribute [rw] membership_summaries
    #   List of membership summaries
    #   @return [Array<Types::MembershipSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListMembershipsResponse AWS API Documentation
    #
    class ListMembershipsResponse < Struct.new(
      :membership_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing tasks associated with a specific pentest job
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of tasks to return in a single request
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job whose tasks to list
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   Filter tasks by step name
    #   @return [String]
    #
    # @!attribute [rw] category_name
    #   Filter tasks by category name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobTasksInput AWS API Documentation
    #
    class ListPentestJobTasksInput < Struct.new(
      :agent_space_id,
      :max_results,
      :pentest_job_id,
      :step_name,
      :category_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListPentestJobTasks operation
    #
    # @!attribute [rw] task_summaries
    #   List of task summaries associated with the specified pentest job
    #   @return [Array<Types::TaskSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobTasksOutput AWS API Documentation
    #
    class ListPentestJobTasksOutput < Struct.new(
      :task_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListPentestJobsForPentest operation
    #
    # @!attribute [rw] max_results
    #   Maximum number of pentest jobs to return in a single request
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the pentest for which to retrieve associated jobs
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobsForPentestInput AWS API Documentation
    #
    class ListPentestJobsForPentestInput < Struct.new(
      :max_results,
      :pentest_id,
      :agent_space_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListPentestJobsForPentest operation
    #
    # @!attribute [rw] pentest_job_summaries
    #   List of pentest job summaries associated with the pentest
    #   @return [Array<Types::PentestJobSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestJobsForPentestOutput AWS API Documentation
    #
    class ListPentestJobsForPentestOutput < Struct.new(
      :pentest_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing pentests with optional filtering
    #
    # @!attribute [rw] max_results
    #   Maximum number of pentests to return in a single request
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestsInput AWS API Documentation
    #
    class ListPentestsInput < Struct.new(
      :max_results,
      :next_token,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListPentests operation
    #
    # @!attribute [rw] pentest_summaries
    #   List of pentest summaries matching the filter criteria
    #   @return [Array<Types::PentestSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for pagination to retrieve the next set of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPentestsOutput AWS API Documentation
    #
    class ListPentestsOutput < Struct.new(
      :pentest_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListTagsForResource operation
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource to list tags for
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListTagsForResource operation
    #
    # @!attribute [rw] tags
    #   Tags associated with the resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing target domains
    #
    # @!attribute [rw] next_token
    #   Token for pagination
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of target domains to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTargetDomainsInput AWS API Documentation
    #
    class ListTargetDomainsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListTargetDomains operation
    #
    # @!attribute [rw] target_domain_summaries
    #   List of target domain summaries
    #   @return [Array<Types::TargetDomainSummary>]
    #
    # @!attribute [rw] next_token
    #   Token for next page of results
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTargetDomainsOutput AWS API Documentation
    #
    class ListTargetDomainsOutput < Struct.new(
      :target_domain_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Location information for execution logs
    #
    # @!attribute [rw] log_type
    #   Type of log storage
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log
    #   CloudWatch log information if logs are stored in CloudWatch
    #   @return [Types::CloudWatchLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/LogLocation AWS API Documentation
    #
    class LogLocation < Struct.new(
      :log_type,
      :cloud_watch_log)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata associated with the member
    #
    # @note MemberMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MemberMetadata corresponding to the set member.
    #
    # @!attribute [rw] user
    #   User metadata for USER members
    #   @return [Types::UserMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/MemberMetadata AWS API Documentation
    #
    class MemberMetadata < Struct.new(
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class User < MemberMetadata; end
      class Unknown < MemberMetadata; end
    end

    # Member-specific configuration
    #
    # @note MembershipConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MembershipConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MembershipConfig corresponding to the set member.
    #
    # @!attribute [rw] user
    #   Configuration for user members
    #   @return [Types::UserConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/MembershipConfig AWS API Documentation
    #
    class MembershipConfig < Struct.new(
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class User < MembershipConfig; end
      class Unknown < MembershipConfig; end
    end

    # Membership summary for list operations
    #
    # @!attribute [rw] membership_id
    #   Member identifier (userId or agentSpaceId)
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   Application identifier
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Agent space identifier
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   Type of member
    #   @return [String]
    #
    # @!attribute [rw] config
    #   Configuration specific to the member type
    #   @return [Types::MembershipConfig]
    #
    # @!attribute [rw] metadata
    #   Member-specific metadata
    #   @return [Types::MemberMetadata]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the membership was created (ISO 8601)
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the membership was last updated (ISO 8601)
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   User ID who created the membership
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   User ID who last updated the membership
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/MembershipSummary AWS API Documentation
    #
    class MembershipSummary < Struct.new(
      :membership_id,
      :application_id,
      :agent_space_id,
      :member_type,
      :config,
      :metadata,
      :created_at,
      :updated_at,
      :created_by,
      :updated_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for network traffic filtering
    #
    # @!attribute [rw] rules
    #   Traffic filtering rules
    #   @return [Array<Types::NetworkTrafficRule>]
    #
    # @!attribute [rw] custom_headers
    #   Custom headers for requests
    #   @return [Array<Types::CustomHeader>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/NetworkTrafficConfig AWS API Documentation
    #
    class NetworkTrafficConfig < Struct.new(
      :rules,
      :custom_headers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network traffic filtering rule
    #
    # @!attribute [rw] effect
    #   Action to take when the rule matches
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   Pattern to match against
    #   @return [String]
    #
    # @!attribute [rw] network_traffic_rule_type
    #   Type of network traffic rule
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/NetworkTrafficRule AWS API Documentation
    #
    class NetworkTrafficRule < Struct.new(
      :effect,
      :pattern,
      :network_traffic_rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a pentest configuration and execution details
    #
    # @!attribute [rw] pentest_id
    #   Unique identifier for the pentest
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the pentest
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   Collection of assets to be tested or used during the pentest
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest execution
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   Service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest execution logs
    #   are stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration that the Security Agent accesses
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   Configuration for network traffic filtering
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   Strategy for code remediation on findings
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Pentest AWS API Documentation
    #
    class Pentest < Struct.new(
      :pentest_id,
      :agent_space_id,
      :title,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :vpc_config,
      :network_traffic_config,
      :code_remediation_strategy,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a pentest job
    #
    # @!attribute [rw] pentest_job_id
    #   Unique identifier of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the pentest
    #   @return [String]
    #
    # @!attribute [rw] overview
    #   Overview or description of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   List of web application endpoints to test
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] actors
    #   List of actors that interact with the system
    #   @return [Array<Types::Actor>]
    #
    # @!attribute [rw] documents
    #   List of documents providing context for testing
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] source_code
    #   List of source code repositories for static analysis
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] exclude_paths
    #   List of URL paths to exclude from testing
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] allowed_domains
    #   List of allowed domains for network access
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest job
    #   @return [Array<String>]
    #
    # @!attribute [rw] steps
    #   List of execution steps for the pentest job
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] execution_context
    #   A list of execution context messages associated with the pentest job
    #   @return [Array<Types::ExecutionContext>]
    #
    # @!attribute [rw] service_role
    #   Service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest job logs are
    #   stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration that the Security Agent accesses
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   Configuration for network traffic filtering
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] error_information
    #   Error information regarding the pentest job
    #   @return [Types::ErrorInformation]
    #
    # @!attribute [rw] integrated_repositories
    #   List of integrated code repositories
    #   @return [Array<Types::IntegratedRepository>]
    #
    # @!attribute [rw] code_remediation_strategy
    #   Strategy for code remediation on findings
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest job was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest job was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/PentestJob AWS API Documentation
    #
    class PentestJob < Struct.new(
      :pentest_job_id,
      :pentest_id,
      :title,
      :overview,
      :status,
      :endpoints,
      :actors,
      :documents,
      :source_code,
      :exclude_paths,
      :allowed_domains,
      :exclude_risk_types,
      :steps,
      :execution_context,
      :service_role,
      :log_config,
      :vpc_config,
      :network_traffic_config,
      :error_information,
      :integrated_repositories,
      :code_remediation_strategy,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a pentest job
    #
    # @!attribute [rw] pentest_job_id
    #   Unique identifier of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the pentest
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest job was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest job was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/PentestJobSummary AWS API Documentation
    #
    class PentestJobSummary < Struct.new(
      :pentest_job_id,
      :pentest_id,
      :title,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a pentest
    #
    # @!attribute [rw] pentest_id
    #   Unique identifier for the pentest
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the pentest
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/PentestSummary AWS API Documentation
    #
    class PentestSummary < Struct.new(
      :pentest_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provider-specific input parameters for integration
    #
    # @note ProviderInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] github
    #   GitHub integration input
    #   @return [Types::GitHubIntegrationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ProviderInput AWS API Documentation
    #
    class ProviderInput < Struct.new(
      :github,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderInput; end
      class Unknown < ProviderInput; end
    end

    # Provider-specific capabilities for integrated resources
    #
    # @note ProviderResourceCapabilities is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProviderResourceCapabilities is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProviderResourceCapabilities corresponding to the set member.
    #
    # @!attribute [rw] github
    #   Capabilities for GitHub repositories
    #   @return [Types::GitHubResourceCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ProviderResourceCapabilities AWS API Documentation
    #
    class ProviderResourceCapabilities < Struct.new(
      :github,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderResourceCapabilities; end
      class Unknown < ProviderResourceCapabilities; end
    end

    # Specified resource was not found
    #
    # @!attribute [rw] message
    #   Error description
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a source code repository for static analysis
    #
    # @!attribute [rw] s3_location
    #   S3 storage location of the repository
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SourceCodeRepository AWS API Documentation
    #
    class SourceCodeRepository < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for the StartCodeRemediation operation
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest job exists
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job to start code remediation for
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   Identifiers of the findings to start code remediation for
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeRemediationInput AWS API Documentation
    #
    class StartCodeRemediationInput < Struct.new(
      :agent_space_id,
      :pentest_job_id,
      :finding_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartCodeRemediation operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeRemediationOutput AWS API Documentation
    #
    class StartCodeRemediationOutput < Aws::EmptyStructure; end

    # Input for starting the execution of a pentest
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the pentest to execute
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartPentestJobInput AWS API Documentation
    #
    class StartPentestJobInput < Struct.new(
      :agent_space_id,
      :pentest_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartPentestJob operation
    #
    # @!attribute [rw] title
    #   Title of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest job was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest job was last updated
    #   @return [Time]
    #
    # @!attribute [rw] pentest_id
    #   Unique identifier of the pentest
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Unique identifier of the pentest job
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartPentestJobOutput AWS API Documentation
    #
    class StartPentestJobOutput < Struct.new(
      :title,
      :status,
      :created_at,
      :updated_at,
      :pentest_id,
      :pentest_job_id,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single step in pentest job execution
    #
    # @!attribute [rw] name
    #   Name of the execution step
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the step
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the step was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the step was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Step AWS API Documentation
    #
    class Step < Struct.new(
      :name,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for stopping the execution of a pentest
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job to stop
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopPentestJobInput AWS API Documentation
    #
    class StopPentestJobInput < Struct.new(
      :agent_space_id,
      :pentest_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StopPentestJob operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopPentestJobOutput AWS API Documentation
    #
    class StopPentestJobOutput < Aws::EmptyStructure; end

    # Input for TagResource operation
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource to tag
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to add to the resource
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for TagResource operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Represents a target domain
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   Current verification status of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   Verification details to verify registered target domain
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the target domain was registered
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   Timestamp when the target domain was last successfully verified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TargetDomain AWS API Documentation
    #
    class TargetDomain < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a target domain
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   Current verification status of the registered target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TargetDomainSummary AWS API Documentation
    #
    class TargetDomainSummary < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a task within a pentest job
    #
    # @!attribute [rw] task_id
    #   Unique identifier for the task
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job this task belongs to
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Identifier of the agent space this task belongs to
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the task
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Detailed description of the task's purpose and scope
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   List of categories associated with this task
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] risk_type
    #   Type of security risk this task is designed to test
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint
    #   Target endpoint for this security test
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] execution_status
    #   Current status of the task execution
    #   @return [String]
    #
    # @!attribute [rw] logs_location
    #   Location of execution logs for auditing and review
    #   @return [Types::LogLocation]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the task was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the task was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Task AWS API Documentation
    #
    class Task < Struct.new(
      :task_id,
      :pentest_id,
      :pentest_job_id,
      :agent_space_id,
      :title,
      :description,
      :categories,
      :risk_type,
      :target_endpoint,
      :execution_status,
      :logs_location,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for a task
    #
    # @!attribute [rw] task_id
    #   Unique identifier for the task
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the parent pentest
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   Identifier of the pentest job this task belongs to
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   Identifier of the agent space this task belongs to
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title or name of the task
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   Type of security risk this task is designed to test
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   Current status of the task execution
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the task was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the task was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TaskSummary AWS API Documentation
    #
    class TaskSummary < Struct.new(
      :task_id,
      :pentest_id,
      :pentest_job_id,
      :agent_space_id,
      :title,
      :risk_type,
      :execution_status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request denied due to throttling
    #
    # @!attribute [rw] message
    #   Error description
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service code for throttling limit
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Quota code for throttling limit
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for UntagResource operation
    #
    # @!attribute [rw] resource_arn
    #   ARN of the resource to untag
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys to remove from the resource
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for UntagResource operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Input for updating an agent space
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space to update
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the agent space
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the agent space
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   AWS resource configurations associated with the agent space
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   Target domain IDs to associate with the agent space
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   Configuration for code review analysis, including controls scanning
    #   and general purpose scanning settings
    #   @return [Types::CodeReviewSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateAgentSpaceInput AWS API Documentation
    #
    class UpdateAgentSpaceInput < Struct.new(
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateAgentSpace operation
    #
    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the agent space
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the agent space
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   AWS resource configurations associated with the agent space
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   List of target domain IDs registered with the agent space
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   Configuration for code review analysis, including controls scanning
    #   and general purpose scanning settings
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the agent space was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the agent space was last updated
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateAgentSpaceOutput AWS API Documentation
    #
    class UpdateAgentSpaceOutput < Struct.new(
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the IAM role that the application uses to access AWS
    #   resources on your behalf
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   Default KMS key identifier. Use an empty string to remove the
    #   default KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :role_arn,
      :default_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   Application ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing security finding
    #
    # @!attribute [rw] finding_id
    #   Identifier of the finding to update
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the finding exists
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   Updated severity level of the identified risk
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Updated status of the finding
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateFindingInput AWS API Documentation
    #
    class UpdateFindingInput < Struct.new(
      :finding_id,
      :agent_space_id,
      :risk_level,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateFinding operation
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateFindingOutput AWS API Documentation
    #
    class UpdateFindingOutput < Aws::EmptyStructure; end

    # @!attribute [rw] agent_space_id
    #   Unique identifier of the agent space
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   Unique identifier of the integration
    #   @return [String]
    #
    # @!attribute [rw] items
    #   List of integrated resources to update
    #   @return [Array<Types::IntegratedResourceInputItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateIntegratedResourcesInput AWS API Documentation
    #
    class UpdateIntegratedResourcesInput < Struct.new(
      :agent_space_id,
      :integration_id,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateIntegratedResourcesOutput AWS API Documentation
    #
    class UpdateIntegratedResourcesOutput < Aws::EmptyStructure; end

    # Input for updating an existing pentest
    #
    # @!attribute [rw] pentest_id
    #   Identifier of the pentest to update
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @!attribute [rw] title
    #   New title for the pentest
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   Updated assets to be tested
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest execution
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   Updated service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest execution logs
    #   are stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   VPC configuration that the Security Agent accesses
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   Configuration for network traffic filtering
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   Strategy for code remediation on findings
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePentestInput AWS API Documentation
    #
    class UpdatePentestInput < Struct.new(
      :pentest_id,
      :agent_space_id,
      :title,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :vpc_config,
      :network_traffic_config,
      :code_remediation_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdatePentest operation
    #
    # @!attribute [rw] pentest_id
    #   Unique identifier of the updated pentest
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Title of the updated pentest
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the pentest was created
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the pentest was last updated
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   Assets to be tested in the updated pentest
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   A list of risk types excluded from the pentest execution
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   Service role ARN for accessing customer resources
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   CloudWatch log group and stream prefix where pentest execution logs
    #   are stored
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   ID of the agent space where the pentest exists
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePentestOutput AWS API Documentation
    #
    class UpdatePentestOutput < Struct.new(
      :pentest_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating a target domain
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain to update
    #   @return [String]
    #
    # @!attribute [rw] verification_method
    #   Verification method for the target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateTargetDomainInput AWS API Documentation
    #
    class UpdateTargetDomainInput < Struct.new(
      :target_domain_id,
      :verification_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateTargetDomain operation
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   Current verification status of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   Verification details to verify registered target domain
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the target domain was registered
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   Timestamp when the target domain was last successfully verified
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateTargetDomainOutput AWS API Documentation
    #
    class UpdateTargetDomainOutput < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # User membership configuration
    #
    # @!attribute [rw] role
    #   Role of the user associated to the agent space
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UserConfig AWS API Documentation
    #
    class UserConfig < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # User-specific metadata
    #
    # @!attribute [rw] username
    #   User name/display name
    #   @return [String]
    #
    # @!attribute [rw] email
    #   User email address
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UserMetadata AWS API Documentation
    #
    class UserMetadata < Struct.new(
      :username,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # A standard error for input validation failures. This should be thrown
    # by services when a member of the input structure falls outside of the
    # modeled or documented constraints.
    #
    # @!attribute [rw] message
    #   A summary of the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of specific failures encountered while validating the input.
    #   A member can appear in this list more than once if it failed to
    #   satisfy multiple constraints.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes one specific validation failure for an input member.
    #
    # @!attribute [rw] path
    #   A JSONPointer expression to the structure member whose value failed
    #   to satisfy the modeled constraints.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed description of the validation failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Verification details to verify registered target domain
    #
    # @!attribute [rw] method
    #   Type of domain ownership verification method
    #   @return [String]
    #
    # @!attribute [rw] dns_txt
    #   Represents dns txt verification details
    #   @return [Types::DnsVerification]
    #
    # @!attribute [rw] http_route
    #   Represents http route verification details
    #   @return [Types::HttpVerification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerificationDetails AWS API Documentation
    #
    class VerificationDetails < Struct.new(
      :method,
      :dns_txt,
      :http_route)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for verifying ownership for a registered target domain in an
    # agent space
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerifyTargetDomainInput AWS API Documentation
    #
    class VerifyTargetDomainInput < Struct.new(
      :target_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for verifying ownership for a registered target domain in an
    # agent space
    #
    # @!attribute [rw] target_domain_id
    #   Unique identifier of the target domain
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   Name of the registered target domain
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp when the target domain was registered
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   Timestamp when the target domain was last updated
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   Timestamp when the target domain was last successfully verified
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Current verification status of the registered target domain
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerifyTargetDomainOutput AWS API Documentation
    #
    class VerifyTargetDomainOutput < Struct.new(
      :target_domain_id,
      :domain_name,
      :created_at,
      :updated_at,
      :verified_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer VPC configuration that the Security Agent accesses
    #
    # @!attribute [rw] vpc_arn
    #   ARN or ID of the customer VPC
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   List of security group ARNs or IDs in the customer VPC
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_arns
    #   List of subnet ARNs or IDs in the customer VPC
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :vpc_arn,
      :security_group_arns,
      :subnet_arns)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

