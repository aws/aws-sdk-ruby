# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityAgent
  module Types

    # The AWS resources associated with an agent space, including VPCs, log
    # groups, S3 buckets, secrets, Lambda functions, and IAM roles.
    #
    # @!attribute [rw] vpcs
    #   The VPC configurations associated with the agent space.
    #   @return [Array<Types::VpcConfig>]
    #
    # @!attribute [rw] log_groups
    #   The Amazon Resource Names (ARNs) of the CloudWatch log groups
    #   associated with the agent space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] s3_buckets
    #   The Amazon Resource Names (ARNs) of the S3 buckets associated with
    #   the agent space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] secret_arns
    #   The Amazon Resource Names (ARNs) of the Secrets Manager secrets
    #   associated with the agent space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] lambda_function_arns
    #   The Amazon Resource Names (ARNs) of the Lambda functions associated
    #   with the agent space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] iam_roles
    #   The IAM roles associated with the agent space.
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

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an actor used during penetration testing. An actor defines
    # a user or entity that interacts with the target application, including
    # authentication credentials and target URIs.
    #
    # @!attribute [rw] identifier
    #   The unique identifier for the actor.
    #   @return [String]
    #
    # @!attribute [rw] uris
    #   The list of URIs that the actor targets during testing.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authentication
    #   The authentication configuration for the actor.
    #   @return [Types::Authentication]
    #
    # @!attribute [rw] description
    #   A description of the actor.
    #   @return [String]
    #
    # @!attribute [rw] enable_email_mfa
    #   Whether email-based MFA is enabled for this actor.
    #   @return [Boolean]
    #
    # @!attribute [rw] mfa_forwarding_address
    #   Server-generated email forwarding address for receiving MFA codes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Actor AWS API Documentation
    #
    class Actor < Struct.new(
      :identifier,
      :uris,
      :authentication,
      :description,
      :enable_email_mfa,
      :mfa_forwarding_address)
      SENSITIVE = [:mfa_forwarding_address]
      include Aws::Structure
    end

    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to add the artifact to.
    #   @return [String]
    #
    # @!attribute [rw] artifact_content
    #   The binary content of the artifact to upload.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   The file type of the artifact. Valid values include TXT, PNG, JPEG,
    #   MD, PDF, DOCX, DOC, JSON, and YAML.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The file name of the artifact.
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
    #   The unique identifier assigned to the uploaded artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/AddArtifactOutput AWS API Documentation
    #
    class AddArtifactOutput < Struct.new(
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an agent space, which is a dedicated workspace for securing
    # a specific application. An agent space contains the configuration,
    # resources, and settings needed for security testing.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   The AWS resources associated with the agent space.
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   The list of target domain identifiers associated with the agent
    #   space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   The code review settings for the agent space.
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt data in the agent
    #   space.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the agent space was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the agent space was last updated, in UTC format.
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

    # Contains summary information about an agent space.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the agent space was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the agent space was last updated, in UTC format.
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

    # Contains summary information about an application.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   The identifier of the default AWS KMS key used to encrypt data for
    #   the application.
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

    # Represents an artifact that provides context for security testing,
    # such as documentation, diagrams, or configuration files.
    #
    # @!attribute [rw] contents
    #   The content of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The file type of the artifact.
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

    # Contains metadata about an artifact.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The file name of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the artifact was last updated, in UTC format.
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

    # Contains summary information about an artifact.
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The file name of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   The file type of the artifact.
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

    # The collection of assets used in a pentest configuration, including
    # endpoints, actors, documents, source code repositories, and integrated
    # repositories.
    #
    # @!attribute [rw] endpoints
    #   The list of endpoints to test during the pentest.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] actors
    #   The list of actors used during penetration testing.
    #   @return [Array<Types::Actor>]
    #
    # @!attribute [rw] documents
    #   The list of documents that provide context for the pentest.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] source_code
    #   The list of source code repositories to analyze during the pentest.
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] integrated_repositories
    #   The list of integrated repositories associated with the pentest.
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

    # The authentication configuration for an actor, specifying the provider
    # type and credentials.
    #
    # @!attribute [rw] provider_type
    #   The type of authentication provider. Valid values include
    #   SECRETS\_MANAGER, AWS\_LAMBDA, AWS\_IAM\_ROLE, and AWS\_INTERNAL.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The authentication value, such as a secret ARN, Lambda function ARN,
    #   or IAM role ARN, depending on the provider type.
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

    # Contains information about a successfully created security
    # requirement.
    #
    # @!attribute [rw] pack_id
    #   The unique identifier of the pack containing the security
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The security domain the requirement belongs to.
    #   @return [String]
    #
    # @!attribute [rw] evaluation
    #   The evaluation criteria used to assess compliance with this
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The recommended remediation steps when the requirement is not met.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the security requirement was created, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the security requirement was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchCreateSecurityRequirementResult AWS API Documentation
    #
    class BatchCreateSecurityRequirementResult < Struct.new(
      :pack_id,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to add
    #   requirements to.
    #   @return [String]
    #
    # @!attribute [rw] security_requirements
    #   The list of security requirements to create.
    #   @return [Array<Types::CreateSecurityRequirementEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchCreateSecurityRequirementsInput AWS API Documentation
    #
    class BatchCreateSecurityRequirementsInput < Struct.new(
      :pack_id,
      :security_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_requirements
    #   The list of security requirements that were successfully created.
    #   @return [Array<Types::BatchCreateSecurityRequirementResult>]
    #
    # @!attribute [rw] errors
    #   The list of errors for security requirements that failed to be
    #   created.
    #   @return [Array<Types::BatchSecurityRequirementError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchCreateSecurityRequirementsOutput AWS API Documentation
    #
    class BatchCreateSecurityRequirementsOutput < Struct.new(
      :security_requirements,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting multiple code reviews.
    #
    # @!attribute [rw] code_review_ids
    #   The list of code review identifiers to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   reviews to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteCodeReviewsInput AWS API Documentation
    #
    class BatchDeleteCodeReviewsInput < Struct.new(
      :code_review_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchDeleteCodeReviews operation.
    #
    # @!attribute [rw] deleted
    #   The list of identifiers of the code reviews that were successfully
    #   deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   The list of code reviews that failed to delete, including the reason
    #   for each failure.
    #   @return [Array<Types::DeleteCodeReviewFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteCodeReviewsOutput AWS API Documentation
    #
    class BatchDeleteCodeReviewsOutput < Struct.new(
      :deleted,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting multiple pentests.
    #
    # @!attribute [rw] pentest_ids
    #   The list of pentest identifiers to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentests
    #   to delete.
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

    # Output for the BatchDeletePentests operation.
    #
    # @!attribute [rw] deleted
    #   The list of pentests that were successfully deleted.
    #   @return [Array<Types::Pentest>]
    #
    # @!attribute [rw] failed
    #   The list of pentests that failed to delete, including the reason for
    #   each failure.
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

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to remove
    #   requirements from.
    #   @return [String]
    #
    # @!attribute [rw] security_requirement_names
    #   The list of security requirement names to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteSecurityRequirementsInput AWS API Documentation
    #
    class BatchDeleteSecurityRequirementsInput < Struct.new(
      :pack_id,
      :security_requirement_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted_security_requirement_names
    #   The list of security requirement names that were successfully
    #   deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   The list of errors for security requirements that failed to be
    #   deleted.
    #   @return [Array<Types::BatchSecurityRequirementError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteSecurityRequirementsOutput AWS API Documentation
    #
    class BatchDeleteSecurityRequirementsOutput < Struct.new(
      :deleted_security_requirement_names,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for deleting multiple threat models.
    #
    # @!attribute [rw] threat_model_ids
    #   The list of threat model identifiers to delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   models to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteThreatModelsInput AWS API Documentation
    #
    class BatchDeleteThreatModelsInput < Struct.new(
      :threat_model_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchDeleteThreatModels operation.
    #
    # @!attribute [rw] deleted
    #   The list of threat model identifiers that were successfully deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] failed
    #   The list of threat models that failed to delete, including the
    #   reason for each failure.
    #   @return [Array<Types::DeleteThreatModelFailure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchDeleteThreatModelsOutput AWS API Documentation
    #
    class BatchDeleteThreatModelsOutput < Struct.new(
      :deleted,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for batch retrieving agent spaces.
    #
    # @!attribute [rw] agent_space_ids
    #   The list of agent space identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetAgentSpacesInput AWS API Documentation
    #
    class BatchGetAgentSpacesInput < Struct.new(
      :agent_space_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetAgentSpaces operation.
    #
    # @!attribute [rw] agent_spaces
    #   The list of agent spaces that were found.
    #   @return [Array<Types::AgentSpace>]
    #
    # @!attribute [rw] not_found
    #   The list of agent space identifiers that were not found.
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
    #   The unique identifier of the agent space that contains the
    #   artifacts.
    #   @return [String]
    #
    # @!attribute [rw] artifact_ids
    #   The list of artifact identifiers to retrieve metadata for.
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
    #   The list of artifact metadata items that were found.
    #   @return [Array<Types::ArtifactMetadataItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetArtifactMetadataOutput AWS API Documentation
    #
    class BatchGetArtifactMetadataOutput < Struct.new(
      :artifact_metadata_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple tasks associated with a code review job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_task_ids
    #   The list of task identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobTasksInput AWS API Documentation
    #
    class BatchGetCodeReviewJobTasksInput < Struct.new(
      :agent_space_id,
      :code_review_job_task_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetCodeReviewJobTasks operation.
    #
    # @!attribute [rw] code_review_job_tasks
    #   The list of code review job tasks that were found.
    #   @return [Array<Types::CodeReviewJobTask>]
    #
    # @!attribute [rw] not_found
    #   The list of task identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobTasksOutput AWS API Documentation
    #
    class BatchGetCodeReviewJobTasksOutput < Struct.new(
      :code_review_job_tasks,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchGetCodeReviewJobs operation.
    #
    # @!attribute [rw] code_review_job_ids
    #   The list of code review job identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobsInput AWS API Documentation
    #
    class BatchGetCodeReviewJobsInput < Struct.new(
      :code_review_job_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetCodeReviewJobs operation.
    #
    # @!attribute [rw] code_review_jobs
    #   The list of code review jobs that were found.
    #   @return [Array<Types::CodeReviewJob>]
    #
    # @!attribute [rw] not_found
    #   The list of code review job identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewJobsOutput AWS API Documentation
    #
    class BatchGetCodeReviewJobsOutput < Struct.new(
      :code_review_jobs,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple code reviews by their IDs.
    #
    # @!attribute [rw] code_review_ids
    #   The list of code review identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   reviews.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewsInput AWS API Documentation
    #
    class BatchGetCodeReviewsInput < Struct.new(
      :code_review_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetCodeReviews operation.
    #
    # @!attribute [rw] code_reviews
    #   The list of code reviews that were found.
    #   @return [Array<Types::CodeReview>]
    #
    # @!attribute [rw] not_found
    #   The list of code review identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetCodeReviewsOutput AWS API Documentation
    #
    class BatchGetCodeReviewsOutput < Struct.new(
      :code_reviews,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchGetFindings operation.
    #
    # @!attribute [rw] finding_ids
    #   The list of finding identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the findings.
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

    # Output for the BatchGetFindings operation.
    #
    # @!attribute [rw] findings
    #   The list of findings that were found.
    #   @return [Array<Types::Finding>]
    #
    # @!attribute [rw] not_found
    #   The list of finding identifiers that were not found.
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

    # Input for retrieving multiple tasks associated with a pentest job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #   @return [String]
    #
    # @!attribute [rw] task_ids
    #   The list of task identifiers to retrieve.
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

    # Output for the BatchGetPentestJobTasks operation.
    #
    # @!attribute [rw] tasks
    #   The list of tasks that were found.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] not_found
    #   The list of task identifiers that were not found.
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

    # Input for BatchGetPentestJobs operation.
    #
    # @!attribute [rw] pentest_job_ids
    #   The list of pentest job identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest
    #   jobs.
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

    # Output for the BatchGetPentestJobs operation.
    #
    # @!attribute [rw] pentest_jobs
    #   The list of pentest jobs that were found.
    #   @return [Array<Types::PentestJob>]
    #
    # @!attribute [rw] not_found
    #   The list of pentest job identifiers that were not found.
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

    # Input for retrieving multiple pentests by their IDs.
    #
    # @!attribute [rw] pentest_ids
    #   The list of pentest identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentests.
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

    # Output for the BatchGetPentests operation.
    #
    # @!attribute [rw] pentests
    #   The list of pentests that were found.
    #   @return [Array<Types::Pentest>]
    #
    # @!attribute [rw] not_found
    #   The list of pentest identifiers that were not found.
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

    # Contains information about a successfully retrieved security
    # requirement.
    #
    # @!attribute [rw] pack_id
    #   The unique identifier of the pack containing the security
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The security domain the requirement belongs to.
    #   @return [String]
    #
    # @!attribute [rw] evaluation
    #   The evaluation criteria used to assess compliance with this
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The recommended remediation steps when the requirement is not met.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the security requirement was created, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the security requirement was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetSecurityRequirementResult AWS API Documentation
    #
    class BatchGetSecurityRequirementResult < Struct.new(
      :pack_id,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to retrieve
    #   requirements from.
    #   @return [String]
    #
    # @!attribute [rw] security_requirement_names
    #   The list of security requirement names to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetSecurityRequirementsInput AWS API Documentation
    #
    class BatchGetSecurityRequirementsInput < Struct.new(
      :pack_id,
      :security_requirement_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_requirements
    #   The list of security requirements that were successfully retrieved.
    #   @return [Array<Types::BatchGetSecurityRequirementResult>]
    #
    # @!attribute [rw] errors
    #   The list of errors for security requirements that failed to be
    #   retrieved.
    #   @return [Array<Types::BatchSecurityRequirementError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetSecurityRequirementsOutput AWS API Documentation
    #
    class BatchGetSecurityRequirementsOutput < Struct.new(
      :security_requirements,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for batch retrieving target domains.
    #
    # @!attribute [rw] target_domain_ids
    #   The list of target domain identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetTargetDomainsInput AWS API Documentation
    #
    class BatchGetTargetDomainsInput < Struct.new(
      :target_domain_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetTargetDomains operation.
    #
    # @!attribute [rw] target_domains
    #   The list of target domains that were found.
    #   @return [Array<Types::TargetDomain>]
    #
    # @!attribute [rw] not_found
    #   The list of target domain identifiers that were not found.
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

    # Input for retrieving multiple tasks associated with a threat model
    # job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the tasks.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_job_task_ids
    #   The list of task identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobTasksInput AWS API Documentation
    #
    class BatchGetThreatModelJobTasksInput < Struct.new(
      :agent_space_id,
      :threat_model_job_task_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetThreatModelJobTasks operation.
    #
    # @!attribute [rw] threat_model_job_tasks
    #   The list of threat model job tasks that were found.
    #   @return [Array<Types::ThreatModelJobTask>]
    #
    # @!attribute [rw] not_found
    #   The list of task identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobTasksOutput AWS API Documentation
    #
    class BatchGetThreatModelJobTasksOutput < Struct.new(
      :threat_model_job_tasks,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for BatchGetThreatModelJobs operation.
    #
    # @!attribute [rw] threat_model_job_ids
    #   The list of threat model job identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobsInput AWS API Documentation
    #
    class BatchGetThreatModelJobsInput < Struct.new(
      :threat_model_job_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetThreatModelJobs operation.
    #
    # @!attribute [rw] threat_model_jobs
    #   The list of threat model jobs that were found.
    #   @return [Array<Types::ThreatModelJob>]
    #
    # @!attribute [rw] not_found
    #   The list of threat model job identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelJobsOutput AWS API Documentation
    #
    class BatchGetThreatModelJobsOutput < Struct.new(
      :threat_model_jobs,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple threat models by their IDs.
    #
    # @!attribute [rw] threat_model_ids
    #   The list of threat model identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   models.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelsInput AWS API Documentation
    #
    class BatchGetThreatModelsInput < Struct.new(
      :threat_model_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetThreatModels operation.
    #
    # @!attribute [rw] threat_models
    #   The list of threat models that were found.
    #   @return [Array<Types::ThreatModel>]
    #
    # @!attribute [rw] not_found
    #   The list of threat model identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatModelsOutput AWS API Documentation
    #
    class BatchGetThreatModelsOutput < Struct.new(
      :threat_models,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for retrieving multiple threats.
    #
    # @!attribute [rw] threat_ids
    #   The list of threat identifiers to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatsInput AWS API Documentation
    #
    class BatchGetThreatsInput < Struct.new(
      :threat_ids,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the BatchGetThreats operation.
    #
    # @!attribute [rw] threats
    #   The list of threats that were found.
    #   @return [Array<Types::Threat>]
    #
    # @!attribute [rw] not_found
    #   The list of threat identifiers that were not found.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchGetThreatsOutput AWS API Documentation
    #
    class BatchGetThreatsOutput < Struct.new(
      :threats,
      :not_found)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an error that occurred for a specific
    # security requirement during a batch operation.
    #
    # @!attribute [rw] security_requirement_name
    #   The name of the security requirement that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchSecurityRequirementError AWS API Documentation
    #
    class BatchSecurityRequirementError < Struct.new(
      :security_requirement_name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack containing
    #   the requirements to update.
    #   @return [String]
    #
    # @!attribute [rw] security_requirements
    #   The list of security requirement updates to apply.
    #   @return [Array<Types::UpdateSecurityRequirementEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchUpdateSecurityRequirementsInput AWS API Documentation
    #
    class BatchUpdateSecurityRequirementsInput < Struct.new(
      :pack_id,
      :security_requirements)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] updated_security_requirement_names
    #   The list of security requirement names that were successfully
    #   updated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   The list of errors for security requirements that failed to be
    #   updated.
    #   @return [Array<Types::BatchSecurityRequirementError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BatchUpdateSecurityRequirementsOutput AWS API Documentation
    #
    class BatchUpdateSecurityRequirementsOutput < Struct.new(
      :updated_security_requirement_names,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for creating a Bitbucket integration.
    #
    # @!attribute [rw] installation_id
    #   The Atlassian installation identifier, available from the Atlassian
    #   administration console.
    #   @return [String]
    #
    # @!attribute [rw] workspace
    #   The Bitbucket workspace slug that identifies the workspace to
    #   integrate, for example acme-corp.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The OAuth 2.0 authorization code returned from the consent redirect.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The CSRF state token echoed back from the OAuth redirect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BitbucketIntegrationInput AWS API Documentation
    #
    class BitbucketIntegrationInput < Struct.new(
      :installation_id,
      :workspace,
      :code,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for an integrated Bitbucket repository.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   Provider Id of the resource e.g. GitHub repository id, etc.
    #   @return [String]
    #
    # @!attribute [rw] workspace
    #   The workspace slug that owns the repository.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   Defines the visibility level of provider resources. PRIVATE
    #   indicates restricted access, while PUBLIC indicates open access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BitbucketRepositoryMetadata AWS API Documentation
    #
    class BitbucketRepositoryMetadata < Struct.new(
      :name,
      :provider_resource_id,
      :workspace,
      :access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Bitbucket repository integrated as a resource.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] workspace
    #   The workspace slug that owns the repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BitbucketRepositoryResource AWS API Documentation
    #
    class BitbucketRepositoryResource < Struct.new(
      :name,
      :workspace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capabilities for an integrated Bitbucket repository.
    #
    # @!attribute [rw] leave_comments
    #   Whether to post code review comments on pull requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediate_code
    #   Whether to create pull requests with automated fixes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/BitbucketResourceCapabilities AWS API Documentation
    #
    class BitbucketResourceCapabilities < Struct.new(
      :leave_comments,
      :remediate_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a category assigned to a security testing task.
    #
    # @!attribute [rw] name
    #   The name of the category.
    #   @return [String]
    #
    # @!attribute [rw] is_primary
    #   Indicates whether this is the primary category for the task.
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

    # The Amazon CloudWatch Logs configuration for pentest job logging.
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch log group.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The name of the CloudWatch log stream.
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

    # Represents a location in source code associated with a security
    # finding.
    #
    # @!attribute [rw] file_path
    #   The absolute path to the file containing the code location.
    #   @return [String]
    #
    # @!attribute [rw] line_start
    #   The starting line number of the code location.
    #   @return [Integer]
    #
    # @!attribute [rw] line_end
    #   The ending line number of the code location.
    #   @return [Integer]
    #
    # @!attribute [rw] label
    #   The role of this location in the vulnerability, such as source or
    #   sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeLocation AWS API Documentation
    #
    class CodeLocation < Struct.new(
      :file_path,
      :line_start,
      :line_end,
      :label)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a code remediation task that was initiated to fix a
    # security finding.
    #
    # @!attribute [rw] status
    #   The current status of the code remediation task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the code remediation task.
    #   @return [String]
    #
    # @!attribute [rw] task_details
    #   The list of details for the code remediation task, including
    #   repository name, code diff link, and pull request link.
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

    # Contains details about a code remediation task, including links to the
    # code diff and pull request.
    #
    # @!attribute [rw] repo_name
    #   The name of the repository where the remediation was applied.
    #   @return [String]
    #
    # @!attribute [rw] code_diff_link
    #   The link to the code diff for the remediation.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_link
    #   The link to the pull request created for the remediation.
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

    # Represents a code review configuration that defines the parameters for
    # automated security-focused code analysis, including target assets and
    # logging configuration.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets included in the code review.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the code review.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the code review.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the code review.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the code review. Valid values are SIMULATED
    #   and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for jobs started
    #   from this code review. If a job reaches the configured limit, it is
    #   gracefully stopped. If not set, jobs run to completion with no
    #   budget cap.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReview AWS API Documentation
    #
    class CodeReview < Struct.new(
      :code_review_id,
      :agent_space_id,
      :title,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a code review job, which is an execution instance of a code
    # review. A code review job progresses through preflight, static
    # analysis, and finalizing steps.
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] overview
    #   An overview of the code review job results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   The list of documents providing context for the code review job.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] source_code
    #   The list of source code repositories analyzed during the code review
    #   job.
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] steps
    #   The list of steps in the code review job execution.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] execution_context
    #   The execution context messages for the code review job.
    #   @return [Array<Types::ExecutionContext>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the code review job.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the code review job.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] error_information
    #   Error information if the code review job encountered an error.
    #   @return [Types::ErrorInformation]
    #
    # @!attribute [rw] integrated_repositories
    #   The list of integrated repositories associated with the code review
    #   job.
    #   @return [Array<Types::IntegratedRepository>]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the code review job.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for this code
    #   review job. If the cumulative task hours reach this limit, the job
    #   is gracefully stopped.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewJob AWS API Documentation
    #
    class CodeReviewJob < Struct.new(
      :code_review_job_id,
      :code_review_id,
      :title,
      :overview,
      :status,
      :documents,
      :source_code,
      :steps,
      :execution_context,
      :service_role,
      :log_config,
      :error_information,
      :integrated_repositories,
      :code_remediation_strategy,
      :max_task_hours,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a code review job.
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewJobSummary AWS API Documentation
    #
    class CodeReviewJobSummary < Struct.new(
      :code_review_job_id,
      :code_review_id,
      :title,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an individual security test task within a code review job.
    # Each task targets a specific risk type and executes independently.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job that contains the task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the task.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The list of categories assigned to the task.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk the task is testing for.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] logs_location
    #   The location of the task execution logs.
    #   @return [Types::LogLocation]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewJobTask AWS API Documentation
    #
    class CodeReviewJobTask < Struct.new(
      :task_id,
      :code_review_id,
      :code_review_job_id,
      :agent_space_id,
      :title,
      :description,
      :categories,
      :risk_type,
      :execution_status,
      :logs_location,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a code review job task.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job that contains the task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk the task is testing for.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewJobTaskSummary AWS API Documentation
    #
    class CodeReviewJobTaskSummary < Struct.new(
      :task_id,
      :code_review_id,
      :code_review_job_id,
      :agent_space_id,
      :title,
      :risk_type,
      :execution_status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The code review settings for an agent space, controlling which types
    # of scanning are enabled.
    #
    # @!attribute [rw] controls_scanning
    #   Indicates whether controls scanning is enabled for code reviews.
    #   @return [Boolean]
    #
    # @!attribute [rw] general_purpose_scanning
    #   Indicates whether general-purpose scanning is enabled for code
    #   reviews.
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

    # Contains summary information about a code review.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CodeReviewSummary AWS API Documentation
    #
    class CodeReviewSummary < Struct.new(
      :code_review_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata for an integrated Confluence document.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   Provider Id of the resource e.g. GitHub repository id, etc.
    #   @return [String]
    #
    # @!attribute [rw] space_key
    #   The Confluence space key containing the document.
    #   @return [String]
    #
    # @!attribute [rw] page_id
    #   The Confluence page identifier.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The display title of the Confluence page.
    #   @return [String]
    #
    # @!attribute [rw] space_title
    #   The display title of the Confluence space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConfluenceDocumentMetadata AWS API Documentation
    #
    class ConfluenceDocumentMetadata < Struct.new(
      :name,
      :provider_resource_id,
      :space_key,
      :page_id,
      :title,
      :space_title)
      SENSITIVE = []
      include Aws::Structure
    end

    # A Confluence document (page) integrated as a resource.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] space_key
    #   The Confluence space key containing the document.
    #   @return [String]
    #
    # @!attribute [rw] page_id
    #   The Confluence page identifier.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The display title of the Confluence page.
    #   @return [String]
    #
    # @!attribute [rw] space_title
    #   The display title of the Confluence space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConfluenceDocumentResource AWS API Documentation
    #
    class ConfluenceDocumentResource < Struct.new(
      :name,
      :space_key,
      :page_id,
      :title,
      :space_title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for creating a Confluence integration.
    #
    # @!attribute [rw] installation_id
    #   The Atlassian installation identifier, available from the Atlassian
    #   administration console.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The OAuth 2.0 authorization code returned from the consent redirect.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The CSRF state token echoed back from the OAuth redirect.
    #   @return [String]
    #
    # @!attribute [rw] site_url
    #   The Confluence Cloud site URL, for example
    #   https://mysite.atlassian.net.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConfluenceIntegrationInput AWS API Documentation
    #
    class ConfluenceIntegrationInput < Struct.new(
      :installation_id,
      :code,
      :state,
      :site_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capabilities for an integrated Confluence space.
    #
    # @!attribute [rw] fetch_document
    #   Whether to fetch documents from this space.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_document
    #   Whether to create documents in this space.
    #   @return [Boolean]
    #
    # @!attribute [rw] update_document
    #   Whether to update documents in this space.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ConfluenceResourceCapabilities AWS API Documentation
    #
    class ConfluenceResourceCapabilities < Struct.new(
      :fetch_document,
      :create_document,
      :update_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new agent space.
    #
    # @!attribute [rw] name
    #   The name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   The AWS resources to associate with the agent space.
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   The list of target domain identifiers to associate with the agent
    #   space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   The code review settings for the agent space.
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key to use for encrypting data in the
    #   agent space.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the agent space.
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

    # Output for the CreateAgentSpace operation.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the created agent space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   The AWS resources associated with the agent space.
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   The list of target domain identifiers associated with the agent
    #   space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   The code review settings for the agent space.
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt data in the agent
    #   space.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the agent space was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the agent space was last updated, in UTC format.
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
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   to associate with the application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role to associate with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   The identifier of the default AWS KMS key to use for encrypting data
    #   in the application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the application.
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
    #   The unique identifier of the created application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new code review.
    #
    # @!attribute [rw] title
    #   The title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to create the code review
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets to include in the code review, such as documents and
    #   source code.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] service_role
    #   The IAM service role to use for the code review.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the code review.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the code review. Valid values are
    #   AUTOMATIC and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the code review. Valid values are SIMULATED
    #   and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for jobs started
    #   from this code review. Must be a positive number. If not set, jobs
    #   run to completion with no budget cap.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateCodeReviewInput AWS API Documentation
    #
    class CreateCodeReviewInput < Struct.new(
      :title,
      :agent_space_id,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreateCodeReview operation.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the created code review.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   The assets included in the code review.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the code review.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the code review.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the code review.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the code review.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours configured for jobs
    #   started from this code review. Null if no budget cap is set.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateCodeReviewOutput AWS API Documentation
    #
    class CreateCodeReviewOutput < Struct.new(
      :code_review_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :service_role,
      :log_config,
      :agent_space_id,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] provider
    #   The integration provider. Currently, only GITHUB is supported.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The provider-specific input required to create the integration.
    #   @return [Types::ProviderInput]
    #
    # @!attribute [rw] integration_display_name
    #   The display name for the integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key to use for encrypting data
    #   associated with the integration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the integration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] private_connection_name
    #   The name of an active private connection used to reach a self-hosted
    #   provider instance over private networking. Specify this when the
    #   instance is not publicly reachable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateIntegrationInput AWS API Documentation
    #
    class CreateIntegrationInput < Struct.new(
      :provider,
      :input,
      :integration_display_name,
      :kms_key_id,
      :tags,
      :private_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_id
    #   The unique identifier of the created integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateIntegrationOutput AWS API Documentation
    #
    class CreateIntegrationOutput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request structure for adding a single member to an agent space.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to grant access to.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique identifier for the membership.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of member. Currently, only USER is supported.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The configuration for the membership, such as the user role.
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

    # Response structure for adding a single member to an agent space.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateMembershipResponse AWS API Documentation
    #
    class CreateMembershipResponse < Aws::EmptyStructure; end

    # Input for creating a new pentest.
    #
    # @!attribute [rw] title
    #   The title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to create the pentest in.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets to include in the pentest, such as endpoints, actors,
    #   documents, and source code.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   The list of risk types to exclude from the pentest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role to use for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the pentest.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the pentest.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   The network traffic configuration for the pentest, including custom
    #   headers and traffic rules.
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the pentest. Valid values are
    #   AUTOMATIC and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] disable_managed_skills
    #   A list of managed skills to disable for this pentest. Valid values
    #   include FINDING\_PERSONALIZATION and LOGIN\_OPTIMIZATION.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for jobs started
    #   from this pentest. Must be a positive number. If not set, jobs run
    #   to completion with no budget cap.
    #   @return [Float]
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
      :code_remediation_strategy,
      :disable_managed_skills,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreatePentest operation.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the created pentest.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   The assets included in the pentest.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   The list of risk types excluded from the pentest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the pentest.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
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

    # @!attribute [rw] private_connection_name
    #   A unique name for the private connection within your account.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The configuration for the private connection. Specify either a
    #   service-managed or a self-managed mode.
    #   @return [Types::PrivateConnectionMode]
    #
    # @!attribute [rw] tags
    #   The tags to attach to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePrivateConnectionInput AWS API Documentation
    #
    class CreatePrivateConnectionInput < Struct.new(
      :private_connection_name,
      :mode,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the private connection, indicating whether it is
    #   service-managed or self-managed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The identifier or ARN of the VPC Lattice resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the resource gateway is created in.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The date and time the connection's certificate expires, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   A message describing why the private connection entered a failed
    #   state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreatePrivateConnectionOutput AWS API Documentation
    #
    class CreatePrivateConnectionOutput < Struct.new(
      :name,
      :type,
      :status,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for a security requirement to create within a
    # pack.
    #
    # @!attribute [rw] name
    #   The name of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The security domain the requirement belongs to.
    #   @return [String]
    #
    # @!attribute [rw] evaluation
    #   The evaluation criteria used to assess compliance with this
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The recommended remediation steps when the requirement is not met.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateSecurityRequirementEntry AWS API Documentation
    #
    class CreateSecurityRequirementEntry < Struct.new(
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the pack. Defaults to ENABLED if not provided.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt pack contents.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the security requirement pack.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateSecurityRequirementPackInput AWS API Documentation
    #
    class CreateSecurityRequirementPackInput < Struct.new(
      :name,
      :description,
      :status,
      :kms_key_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the created security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the created security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt pack contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateSecurityRequirementPackOutput AWS API Documentation
    #
    class CreateSecurityRequirementPackOutput < Struct.new(
      :pack_id,
      :status,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new target domain.
    #
    # @!attribute [rw] target_domain_name
    #   The domain name to register as a target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_method
    #   The method to use for verifying domain ownership. Valid values are
    #   DNS\_TXT, HTTP\_ROUTE, and PRIVATE\_VPC.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the target domain.
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

    # Output for the CreateTargetDomain operation.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the created target domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The current verification status of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   The reason for the current target domain verification status.
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   The verification details for the target domain, including the
    #   verification token and instructions.
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   The date and time the target domain was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   The date and time the target domain was verified, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateTargetDomainOutput AWS API Documentation
    #
    class CreateTargetDomainOutput < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new threat.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job the threat belongs to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional customer comment on the threat.
    #   @return [String]
    #
    # @!attribute [rw] stride
    #   The STRIDE categories applicable to this threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] threat_source
    #   The actor or origin of the threat.
    #   @return [String]
    #
    # @!attribute [rw] prerequisites
    #   The conditions required for the threat to be exploitable.
    #   @return [String]
    #
    # @!attribute [rw] threat_action
    #   What the threat source can do.
    #   @return [String]
    #
    # @!attribute [rw] threat_impact
    #   The direct consequence of the threat action.
    #   @return [String]
    #
    # @!attribute [rw] impacted_goal
    #   The security goals affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_assets
    #   The specific assets affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anchor
    #   The DFD element this threat is anchored to.
    #   @return [Types::ThreatAnchorShape]
    #
    # @!attribute [rw] evidence
    #   The source code files supporting the threat.
    #   @return [Array<Types::ThreatEvidenceShape>]
    #
    # @!attribute [rw] recommendation
    #   The recommended mitigation guidance for this threat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreatInput AWS API Documentation
    #
    class CreateThreatInput < Struct.new(
      :agent_space_id,
      :threat_job_id,
      :title,
      :statement,
      :severity,
      :comments,
      :stride,
      :threat_source,
      :prerequisites,
      :threat_action,
      :threat_impact,
      :impacted_goal,
      :impacted_assets,
      :anchor,
      :evidence,
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for creating a new threat model.
    #
    # @!attribute [rw] title
    #   The title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to create the threat model
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application or system being threat modeled.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets to include in the threat model.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] scope_docs
    #   The scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role to use for the threat model.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the threat model.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] report_destination
    #   The destination for publishing scan reports to an integrated
    #   document provider.
    #   @return [Types::ReportDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreatModelInput AWS API Documentation
    #
    class CreateThreatModelInput < Struct.new(
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :report_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreateThreatModel operation.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the created threat model.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application or system being threat modeled.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets included in the threat model.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] scope_docs
    #   The scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the threat model.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the threat model.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreatModelOutput AWS API Documentation
    #
    class CreateThreatModelOutput < Struct.new(
      :threat_model_id,
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the CreateThreat operation.
    #
    # @!attribute [rw] threat_id
    #   The unique identifier of the created threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job the threat belongs to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional customer comment on the threat.
    #   @return [String]
    #
    # @!attribute [rw] stride
    #   The STRIDE categories applicable to this threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] threat_source
    #   The actor or origin of the threat.
    #   @return [String]
    #
    # @!attribute [rw] prerequisites
    #   The conditions required for the threat to be exploitable.
    #   @return [String]
    #
    # @!attribute [rw] threat_action
    #   What the threat source can do.
    #   @return [String]
    #
    # @!attribute [rw] threat_impact
    #   The direct consequence of the threat action.
    #   @return [String]
    #
    # @!attribute [rw] impacted_goal
    #   The security goals affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_assets
    #   The specific assets affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anchor
    #   The DFD element this threat is anchored to.
    #   @return [Types::ThreatAnchorShape]
    #
    # @!attribute [rw] evidence
    #   The source code files supporting the threat.
    #   @return [Array<Types::ThreatEvidenceShape>]
    #
    # @!attribute [rw] recommendation
    #   The recommended mitigation guidance for this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Who created this threat.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   Who last updated this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/CreateThreatOutput AWS API Documentation
    #
    class CreateThreatOutput < Struct.new(
      :threat_id,
      :threat_job_id,
      :title,
      :statement,
      :severity,
      :status,
      :comments,
      :stride,
      :threat_source,
      :prerequisites,
      :threat_action,
      :threat_impact,
      :impacted_goal,
      :impacted_assets,
      :anchor,
      :evidence,
      :recommendation,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom HTTP header to include in network traffic during penetration
    # testing.
    #
    # @!attribute [rw] name
    #   The name of the custom header.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the custom header.
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

    # Input for deleting an agent space.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteAgentSpaceInput AWS API Documentation
    #
    class DeleteAgentSpaceInput < Struct.new(
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the DeleteAgentSpace operation.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the deleted agent space.
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
    #   The unique identifier of the application to delete.
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
    #   The unique identifier of the agent space that contains the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact to delete.
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

    # Contains information about a code review that failed to delete.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review that failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the code review failed to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteCodeReviewFailure AWS API Documentation
    #
    class DeleteCodeReviewFailure < Struct.new(
      :code_review_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] integration_id
    #   The unique identifier of the integration to delete.
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

    # Request structure for removing a single member from an agent space.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to revoke access from.
    #   @return [String]
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership to delete.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of member to remove.
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

    # Response structure for removing a single member from an agent space.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteMembershipResponse AWS API Documentation
    #
    class DeleteMembershipResponse < Aws::EmptyStructure; end

    # Contains information about a pentest that failed to delete.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest that failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the pentest failed to delete.
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

    # @!attribute [rw] private_connection_name
    #   The name of the private connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeletePrivateConnectionInput AWS API Documentation
    #
    class DeletePrivateConnectionInput < Struct.new(
      :private_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the private connection, indicating whether it is
    #   service-managed or self-managed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The identifier or ARN of the VPC Lattice resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the resource gateway is created in.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The date and time the connection's certificate expires, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   A message describing why the private connection entered a failed
    #   state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeletePrivateConnectionOutput AWS API Documentation
    #
    class DeletePrivateConnectionOutput < Struct.new(
      :name,
      :type,
      :status,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteSecurityRequirementPackInput AWS API Documentation
    #
    class DeleteSecurityRequirementPackInput < Struct.new(
      :pack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteSecurityRequirementPackOutput AWS API Documentation
    #
    class DeleteSecurityRequirementPackOutput < Aws::EmptyStructure; end

    # Input for deleting a target domain.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteTargetDomainInput AWS API Documentation
    #
    class DeleteTargetDomainInput < Struct.new(
      :target_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the DeleteTargetDomain operation.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the deleted target domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteTargetDomainOutput AWS API Documentation
    #
    class DeleteTargetDomainOutput < Struct.new(
      :target_domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a threat model that failed to delete.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model that failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the threat model failed to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DeleteThreatModelFailure AWS API Documentation
    #
    class DeleteThreatModelFailure < Struct.new(
      :threat_model_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] private_connection_name
    #   The name of the private connection to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DescribePrivateConnectionInput AWS API Documentation
    #
    class DescribePrivateConnectionInput < Struct.new(
      :private_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the private connection, indicating whether it is
    #   service-managed or self-managed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The identifier or ARN of the VPC Lattice resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the resource gateway is created in.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The date and time the connection's certificate expires, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   A message describing why the private connection entered a failed
    #   state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DescribePrivateConnectionOutput AWS API Documentation
    #
    class DescribePrivateConnectionOutput < Struct.new(
      :name,
      :type,
      :status,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source of the diff for a differential code scan.
    #
    # @note DiffSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3_uri
    #   S3 URI pointing to a unified diff file. The file must be in standard
    #   unified diff format and stored in an S3 bucket connected to your
    #   Agent Space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DiffSource AWS API Documentation
    #
    class DiffSource < Struct.new(
      :s3_uri,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Uri < DiffSource; end
      class Unknown < DiffSource; end
    end

    # Represents an endpoint discovered during a pentest job.
    #
    # @!attribute [rw] uri
    #   The URI of the discovered endpoint.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that discovered the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task that discovered the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space associated with the
    #   discovered endpoint.
    #   @return [String]
    #
    # @!attribute [rw] evidence
    #   The evidence that led to the discovery of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] operation
    #   The HTTP operation associated with the discovered endpoint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the discovered endpoint.
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

    # Contains DNS verification details for a target domain, including the
    # DNS record to create for domain ownership verification.
    #
    # @!attribute [rw] token
    #   The verification token to include in the DNS record value.
    #   @return [String]
    #
    # @!attribute [rw] dns_record_name
    #   The name of the DNS record to create for verification.
    #   @return [String]
    #
    # @!attribute [rw] dns_record_type
    #   The type of DNS record to create. Currently, only TXT is supported.
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

    # Represents a document that provides context for security testing.
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location of the document.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact associated with the document.
    #   @return [String]
    #
    # @!attribute [rw] integrated_document
    #   A reference to a document in an integrated third-party provider.
    #   @return [Types::IntegratedDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/DocumentInfo AWS API Documentation
    #
    class DocumentInfo < Struct.new(
      :s3_location,
      :artifact_id,
      :integrated_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a target endpoint for penetration testing.
    #
    # @!attribute [rw] uri
    #   The URI of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains error information for a pentest job that encountered an
    # error.
    #
    # @!attribute [rw] code
    #   The error code. Valid values include CLIENT\_ERROR, INTERNAL\_ERROR,
    #   and STOPPED\_BY\_USER.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the error.
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

    # Contains contextual information about the execution of a pentest job,
    # such as errors, warnings, or informational messages.
    #
    # @!attribute [rw] context_type
    #   The type of context. Valid values include ERROR, CLIENT\_ERROR,
    #   WARNING, and INFO.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The context message.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The date and time the context was recorded, in UTC format.
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

    # Represents a security finding discovered during a pentest job. A
    # finding contains details about a vulnerability, including its risk
    # level, confidence, and remediation status.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space associated with the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job that produced the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the finding. Valid values include ACTIVE,
    #   RESOLVED, ACCEPTED, and FALSE\_POSITIVE.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk identified by the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   The risk level of the finding. Valid values include UNKNOWN,
    #   INFORMATIONAL, LOW, MEDIUM, HIGH, and CRITICAL.
    #   @return [String]
    #
    # @!attribute [rw] risk_score
    #   The numerical risk score of the finding.
    #   @return [String]
    #
    # @!attribute [rw] reasoning
    #   The reasoning behind the finding, explaining why it was identified
    #   as a vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence level of the finding. Valid values include
    #   FALSE\_POSITIVE, UNCONFIRMED, LOW, MEDIUM, and HIGH.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The simulated validation status of the finding. Valid values are
    #   NOT\_VALIDATED, VALIDATING, CONFIRMED, NOT\_REPRODUCED, and
    #   VALIDATION\_FAILED.
    #   @return [String]
    #
    # @!attribute [rw] attack_script
    #   The attack script used to reproduce the finding.
    #   @return [String]
    #
    # @!attribute [rw] code_remediation_task
    #   The code remediation task associated with the finding, if code
    #   remediation was initiated.
    #   @return [Types::CodeRemediationTask]
    #
    # @!attribute [rw] last_updated_by
    #   The identifier of the entity that last updated the finding.
    #   @return [String]
    #
    # @!attribute [rw] customer_note
    #   A customer-provided note on the finding.
    #   @return [String]
    #
    # @!attribute [rw] code_locations
    #   The file locations involved in the vulnerability, as reported by the
    #   code scanner.
    #   @return [Array<Types::CodeLocation>]
    #
    # @!attribute [rw] verification_script
    #   The verification script metadata for reproducing the finding,
    #   including download URL, instructions, and required environment
    #   variables.
    #   @return [Types::VerificationScript]
    #
    # @!attribute [rw] alignment_rationale
    #   The rationale provided by the alignment agent explaining how the
    #   finding was adjusted based on customer preferences.
    #   @return [String]
    #
    # @!attribute [rw] revalidation_job_ids
    #   The list of pentest job identifiers for revalidation jobs that
    #   retested this finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] original_finding_id
    #   The identifier of the original finding that this revalidation
    #   finding was produced from.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the finding was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the finding was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Finding AWS API Documentation
    #
    class Finding < Struct.new(
      :finding_id,
      :agent_space_id,
      :pentest_id,
      :pentest_job_id,
      :code_review_id,
      :code_review_job_id,
      :task_id,
      :name,
      :description,
      :status,
      :risk_type,
      :risk_level,
      :risk_score,
      :reasoning,
      :confidence,
      :validation_status,
      :attack_script,
      :code_remediation_task,
      :last_updated_by,
      :customer_note,
      :code_locations,
      :verification_script,
      :alignment_rationale,
      :revalidation_job_ids,
      :original_finding_id,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a security finding.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space associated with the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the finding.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review associated with the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job that produced the
    #   finding.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk identified by the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   The risk level of the finding.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence level of the finding.
    #   @return [String]
    #
    # @!attribute [rw] validation_status
    #   The simulated validation status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the finding was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the finding was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/FindingSummary AWS API Documentation
    #
    class FindingSummary < Struct.new(
      :finding_id,
      :agent_space_id,
      :pentest_id,
      :pentest_job_id,
      :code_review_id,
      :code_review_job_id,
      :name,
      :status,
      :risk_type,
      :risk_level,
      :confidence,
      :validation_status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application to retrieve.
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
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The domain associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] application_name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] idc_configuration
    #   The IAM Identity Center configuration for the application.
    #   @return [Types::IdCConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   The identifier of the default AWS KMS key used to encrypt data for
    #   the application.
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
    #   The unique identifier of the agent space that contains the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact to retrieve.
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
    #   The unique identifier of the agent space that contains the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact
    #   The artifact content and type.
    #   @return [Types::Artifact]
    #
    # @!attribute [rw] file_name
    #   The file name of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the artifact was last updated, in UTC format.
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
    #   The unique identifier of the integration to retrieve.
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
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   The installation identifier from the integration provider.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The integration provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of the integration provider.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt data associated
    #   with the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   The HTTPS URL of the customer self-hosted instance, such as a GitHub
    #   Enterprise Server or self-managed GitLab instance. This value is
    #   absent for SaaS integrations.
    #   @return [String]
    #
    # @!attribute [rw] private_connection_name
    #   The name of the private connection used to reach the integration's
    #   self-hosted instance over private networking, if one is configured.
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
      :kms_key_id,
      :target_url,
      :private_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetSecurityRequirementPackInput AWS API Documentation
    #
    class GetSecurityRequirementPackInput < Struct.new(
      :pack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] vendor_name
    #   The vendor name for AWS managed packs, such as ISO or NIST.
    #   @return [String]
    #
    # @!attribute [rw] management_type
    #   The management type of the pack. Valid values are AWS\_MANAGED and
    #   CUSTOMER\_MANAGED.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the security requirements import workflow for this
    #   pack.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the security requirement pack was created, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the security requirement pack was last updated, in
    #   UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt pack contents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GetSecurityRequirementPackOutput AWS API Documentation
    #
    class GetSecurityRequirementPackOutput < Struct.new(
      :pack_id,
      :name,
      :description,
      :vendor_name,
      :management_type,
      :status,
      :import_status,
      :created_at,
      :updated_at,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input required to create a GitHub integration, including the OAuth
    # authorization code and CSRF state.
    #
    # @!attribute [rw] code
    #   The OAuth authorization code received from GitHub.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The CSRF state token for validating the OAuth flow.
    #   @return [String]
    #
    # @!attribute [rw] organization_name
    #   The name of the GitHub organization to integrate with.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   The HTTPS URL of a self-hosted GitHub Enterprise Server instance.
    #   Omit this value for GitHub.com.
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   The installation identifier provided by GitHub Enterprise Server on
    #   the install callback. Required for GitHub Enterprise Server
    #   integrations and ignored for GitHub.com.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitHubIntegrationInput AWS API Documentation
    #
    class GitHubIntegrationInput < Struct.new(
      :code,
      :state,
      :organization_name,
      :target_url,
      :installation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a GitHub repository that is integrated with
    # the service.
    #
    # @!attribute [rw] name
    #   The name of the GitHub repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   The provider-specific resource identifier for the GitHub repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the GitHub repository.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   The access type of the GitHub repository. Valid values are PRIVATE
    #   and PUBLIC.
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

    # Represents a GitHub repository resource used in an integration.
    #
    # @!attribute [rw] name
    #   The name of the GitHub repository.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the GitHub repository.
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

    # The capabilities enabled for a GitHub resource integration.
    #
    # @!attribute [rw] leave_comments
    #   Indicates whether the integration can leave comments on pull
    #   requests.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediate_code
    #   Indicates whether the integration can create code remediation pull
    #   requests.
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

    # The configuration for creating a GitLab integration.
    #
    # @!attribute [rw] access_token
    #   The GitLab access token used to authenticate. This can be a personal
    #   access token or a group access token.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   The HTTPS URL of a self-managed GitLab instance. Omit this value for
    #   GitLab SaaS (gitlab.com).
    #   @return [String]
    #
    # @!attribute [rw] token_type
    #   The type of GitLab access token provided in accessToken.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The identifier of the GitLab group. Required when tokenType is group
    #   and ignored for personal tokens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitLabIntegrationInput AWS API Documentation
    #
    class GitLabIntegrationInput < Struct.new(
      :access_token,
      :target_url,
      :token_type,
      :group_id)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Metadata for an integrated GitLab repository.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   Provider Id of the resource e.g. GitHub repository id, etc.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (group or user path) that owns the project.
    #   @return [String]
    #
    # @!attribute [rw] access_type
    #   Defines the visibility level of provider resources. PRIVATE
    #   indicates restricted access, while PUBLIC indicates open access.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitLabRepositoryMetadata AWS API Documentation
    #
    class GitLabRepositoryMetadata < Struct.new(
      :name,
      :provider_resource_id,
      :namespace,
      :access_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A GitLab repository integrated as a resource.
    #
    # @!attribute [rw] name
    #   Name of the resource e.g. repository name, etc.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace (group or user path) that owns the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitLabRepositoryResource AWS API Documentation
    #
    class GitLabRepositoryResource < Struct.new(
      :name,
      :namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Capabilities for an integrated GitLab repository.
    #
    # @!attribute [rw] leave_comments
    #   Whether to post code review comments on merge request discussions.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediate_code
    #   Whether to create merge requests with automated fixes.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/GitLabResourceCapabilities AWS API Documentation
    #
    class GitLabResourceCapabilities < Struct.new(
      :leave_comments,
      :remediate_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains HTTP route verification details for a target domain,
    # including the route path and token to serve for domain ownership
    # verification.
    #
    # @!attribute [rw] token
    #   The verification token to serve at the specified route path.
    #   @return [String]
    #
    # @!attribute [rw] route_path
    #   The HTTP route path where the verification token must be served.
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

    # The IAM Identity Center configuration for an application.
    #
    # @!attribute [rw] idc_application_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] idc_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance.
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

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to import
    #   requirements into.
    #   @return [String]
    #
    # @!attribute [rw] input
    #   The import source containing the documents to extract security
    #   requirements from.
    #   @return [Types::ImportSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ImportSecurityRequirementsInput AWS API Documentation
    #
    class ImportSecurityRequirementsInput < Struct.new(
      :pack_id,
      :input)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ImportSecurityRequirementsOutput AWS API Documentation
    #
    class ImportSecurityRequirementsOutput < Struct.new(
      :pack_id,
      :import_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source from which to import security requirements. Currently
    # supports document uploads.
    #
    # @note ImportSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] documents
    #   The list of documents to extract security requirements from.
    #   @return [Array<Types::SecurityRequirementArtifact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ImportSource AWS API Documentation
    #
    class ImportSource < Struct.new(
      :documents,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Documents < ImportSource; end
      class Unknown < ImportSource; end
    end

    # @!attribute [rw] provider
    #   The provider to initiate registration with. Currently, only GITHUB
    #   is supported.
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
    #   The URL to redirect the user to for completing the OAuth
    #   authorization.
    #   @return [String]
    #
    # @!attribute [rw] csrf_state
    #   The CSRF state token to use when completing the OAuth flow.
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

    # A reference to a document in a third-party provider, such as a
    # Confluence page linked via an integration.
    #
    # @!attribute [rw] integration_id
    #   The identifier of the integration that provides access to the
    #   document.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The provider-specific resource identifier for the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedDocument AWS API Documentation
    #
    class IntegratedDocument < Struct.new(
      :integration_id,
      :resource_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a code repository that is integrated with the service
    # through a third-party provider.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration that provides access to the
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] provider_resource_id
    #   The provider-specific resource identifier for the repository.
    #   @return [String]
    #
    # @!attribute [rw] branch
    #   An optional override for the repository branch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedRepository AWS API Documentation
    #
    class IntegratedRepository < Struct.new(
      :integration_id,
      :provider_resource_id,
      :branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an integrated resource from a third-party provider. This is
    # a union type that contains provider-specific resource information.
    #
    # @note IntegratedResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] github_repository
    #   The GitHub repository resource information.
    #   @return [Types::GitHubRepositoryResource]
    #
    # @!attribute [rw] gitlab_repository
    #   A GitLab repository integrated as a resource.
    #   @return [Types::GitLabRepositoryResource]
    #
    # @!attribute [rw] bitbucket_repository
    #   A Bitbucket repository integrated as a resource.
    #   @return [Types::BitbucketRepositoryResource]
    #
    # @!attribute [rw] confluence_document
    #   A Confluence document (page) integrated as a resource.
    #   @return [Types::ConfluenceDocumentResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResource AWS API Documentation
    #
    class IntegratedResource < Struct.new(
      :github_repository,
      :gitlab_repository,
      :bitbucket_repository,
      :confluence_document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GithubRepository < IntegratedResource; end
      class GitlabRepository < IntegratedResource; end
      class BitbucketRepository < IntegratedResource; end
      class ConfluenceDocument < IntegratedResource; end
      class Unknown < IntegratedResource; end
    end

    # Represents an input item for updating integrated resources, including
    # the resource and its capabilities.
    #
    # @!attribute [rw] resource
    #   The integrated resource to update.
    #   @return [Types::IntegratedResource]
    #
    # @!attribute [rw] capabilities
    #   The capabilities to enable for the integrated resource.
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

    # Contains metadata about an integrated resource. This is a union type
    # that contains provider-specific metadata.
    #
    # @note IntegratedResourceMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IntegratedResourceMetadata corresponding to the set member.
    #
    # @!attribute [rw] github_repository
    #   The GitHub repository metadata.
    #   @return [Types::GitHubRepositoryMetadata]
    #
    # @!attribute [rw] gitlab_repository
    #   Metadata for an integrated GitLab repository.
    #   @return [Types::GitLabRepositoryMetadata]
    #
    # @!attribute [rw] bitbucket_repository
    #   Metadata for an integrated Bitbucket repository.
    #   @return [Types::BitbucketRepositoryMetadata]
    #
    # @!attribute [rw] confluence_document
    #   Metadata for an integrated Confluence document.
    #   @return [Types::ConfluenceDocumentMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegratedResourceMetadata AWS API Documentation
    #
    class IntegratedResourceMetadata < Struct.new(
      :github_repository,
      :gitlab_repository,
      :bitbucket_repository,
      :confluence_document,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class GithubRepository < IntegratedResourceMetadata; end
      class GitlabRepository < IntegratedResourceMetadata; end
      class BitbucketRepository < IntegratedResourceMetadata; end
      class ConfluenceDocument < IntegratedResourceMetadata; end
      class Unknown < IntegratedResourceMetadata; end
    end

    # Contains summary information about an integrated resource.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration that provides access to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] resource
    #   The metadata for the integrated resource.
    #   @return [Types::IntegratedResourceMetadata]
    #
    # @!attribute [rw] capabilities
    #   The capabilities enabled for the integrated resource.
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

    # A filter for listing integrations. This is a union type where you can
    # filter by provider or provider type.
    #
    # @note IntegrationFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] provider
    #   Filter integrations by provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   Filter integrations by provider type.
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

    # Contains summary information about an integration.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] installation_id
    #   The installation identifier from the integration provider.
    #   @return [String]
    #
    # @!attribute [rw] provider
    #   The integration provider.
    #   @return [String]
    #
    # @!attribute [rw] provider_type
    #   The type of the integration provider.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   The HTTPS URL of the customer self-hosted instance, such as a GitHub
    #   Enterprise Server or self-managed GitLab instance. This value is
    #   absent for SaaS integrations.
    #   @return [String]
    #
    # @!attribute [rw] private_connection_name
    #   The name of the private connection used to reach the integration's
    #   self-hosted instance over private networking, if one is configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :integration_id,
      :installation_id,
      :provider,
      :provider_type,
      :display_name,
      :target_url,
      :private_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of your request.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing agent spaces.
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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

    # Output for the ListAgentSpaces operation.
    #
    # @!attribute [rw] agent_space_summaries
    #   The list of agent space summaries.
    #   @return [Array<Types::AgentSpaceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The list of application summaries.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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
    #   The unique identifier of the agent space to list artifacts for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The list of artifact summaries.
    #   @return [Array<Types::ArtifactSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for listing tasks associated with a code review job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job to list tasks for.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   Filter tasks by step name.
    #   @return [String]
    #
    # @!attribute [rw] category_name
    #   Filter tasks by category name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobTasksInput AWS API Documentation
    #
    class ListCodeReviewJobTasksInput < Struct.new(
      :agent_space_id,
      :max_results,
      :code_review_job_id,
      :step_name,
      :category_name,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListCodeReviewJobTasks operation.
    #
    # @!attribute [rw] code_review_job_task_summaries
    #   The list of code review job task summaries.
    #   @return [Array<Types::CodeReviewJobTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobTasksOutput AWS API Documentation
    #
    class ListCodeReviewJobTasksOutput < Struct.new(
      :code_review_job_task_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListCodeReviewJobsForCodeReview operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review to list jobs for.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobsForCodeReviewInput AWS API Documentation
    #
    class ListCodeReviewJobsForCodeReviewInput < Struct.new(
      :max_results,
      :code_review_id,
      :agent_space_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListCodeReviewJobsForCodeReview operation.
    #
    # @!attribute [rw] code_review_job_summaries
    #   The list of code review job summaries.
    #   @return [Array<Types::CodeReviewJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewJobsForCodeReviewOutput AWS API Documentation
    #
    class ListCodeReviewJobsForCodeReviewOutput < Struct.new(
      :code_review_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing code reviews with optional filtering.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to list code reviews for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewsInput AWS API Documentation
    #
    class ListCodeReviewsInput < Struct.new(
      :max_results,
      :next_token,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListCodeReviews operation.
    #
    # @!attribute [rw] code_review_summaries
    #   The list of code review summaries.
    #   @return [Array<Types::CodeReviewSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListCodeReviewsOutput AWS API Documentation
    #
    class ListCodeReviewsOutput < Struct.new(
      :code_review_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListDiscoveredEndpoints operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job to list discovered
    #   endpoints for.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   A prefix to filter discovered endpoints by URI.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Output for the ListDiscoveredEndpoints operation.
    #
    # @!attribute [rw] discovered_endpoints
    #   The list of discovered endpoints.
    #   @return [Array<Types::DiscoveredEndpoint>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for ListFindings operation with filtering support.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job to list findings for.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job to list findings for.
    #   Mutually exclusive with pentestJobId.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   Filter findings by risk type.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   Filter findings by risk level.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter findings by status.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Filter findings by confidence level.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filter findings by name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListFindingsInput AWS API Documentation
    #
    class ListFindingsInput < Struct.new(
      :max_results,
      :pentest_job_id,
      :code_review_job_id,
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

    # Output for the ListFindings operation.
    #
    # @!attribute [rw] findings_summaries
    #   The list of finding summaries.
    #   @return [Array<Types::FindingSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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
    #   The unique identifier of the agent space to list integrated
    #   resources for.
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration to filter by.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to filter by.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The list of integrated resource summaries.
    #   @return [Array<Types::IntegratedResourceSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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
    #   A filter to apply to the list of integrations.
    #   @return [Types::IntegrationFilter]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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
    #   The list of integration summaries.
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Request structure for listing agent space members.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application that contains the agent
    #   space.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to list memberships for.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   Filter memberships by member type.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Response structure for listing members associated to an agent space.
    #
    # @!attribute [rw] membership_summaries
    #   The list of membership summaries.
    #   @return [Array<Types::MembershipSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for listing tasks associated with a pentest job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job to list tasks for.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   Filter tasks by step name. Valid values include PREFLIGHT,
    #   STATIC\_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.
    #   @return [String]
    #
    # @!attribute [rw] category_name
    #   Filter tasks by category name.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Output for the ListPentestJobTasks operation.
    #
    # @!attribute [rw] task_summaries
    #   The list of task summaries.
    #   @return [Array<Types::TaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for ListPentestJobsForPentest operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest to list jobs for.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Output for the ListPentestJobsForPentest operation.
    #
    # @!attribute [rw] pentest_job_summaries
    #   The list of pentest job summaries.
    #   @return [Array<Types::PentestJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for listing pentests with optional filtering.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to list pentests for.
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

    # Output for the ListPentests operation.
    #
    # @!attribute [rw] pentest_summaries
    #   The list of pentest summaries.
    #   @return [Array<Types::PentestSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # @!attribute [rw] max_results
    #   The maximum number of private connections to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPrivateConnectionsInput AWS API Documentation
    #
    class ListPrivateConnectionsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] private_connections
    #   The list of private connections.
    #   @return [Array<Types::PrivateConnectionSummary>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next page of results, if more
    #   results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListPrivateConnectionsOutput AWS API Documentation
    #
    class ListPrivateConnectionsOutput < Struct.new(
      :private_connections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria for listing security requirement packs.
    #
    # @!attribute [rw] management_type
    #   Filter packs by management type. Valid values are AWS\_MANAGED and
    #   CUSTOMER\_MANAGED.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filter packs by status. Valid values are ENABLED and DISABLED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementPackFilter AWS API Documentation
    #
    class ListSecurityRequirementPackFilter < Struct.new(
      :management_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   The filter criteria for listing security requirement packs.
    #   @return [Types::ListSecurityRequirementPackFilter]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementPacksInput AWS API Documentation
    #
    class ListSecurityRequirementPacksInput < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_requirement_pack_summaries
    #   The list of security requirement pack summaries.
    #   @return [Array<Types::SecurityRequirementPackSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementPacksOutput AWS API Documentation
    #
    class ListSecurityRequirementPacksOutput < Struct.new(
      :security_requirement_pack_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to list
    #   requirements for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous request to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementsInput AWS API Documentation
    #
    class ListSecurityRequirementsInput < Struct.new(
      :pack_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] security_requirement_summaries
    #   The list of security requirement summaries.
    #   @return [Array<Types::SecurityRequirementSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in a subsequent request to retrieve the
    #   next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListSecurityRequirementsOutput AWS API Documentation
    #
    class ListSecurityRequirementsOutput < Struct.new(
      :security_requirement_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListTagsForResource operation.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for ListTagsForResource operation.
    #
    # @!attribute [rw] tags
    #   The tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing target domains.
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
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

    # Output for the ListTargetDomains operation.
    #
    # @!attribute [rw] target_domain_summaries
    #   The list of target domain summaries.
    #   @return [Array<Types::TargetDomainSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response. Set the value of this parameter to null for the first
    #   request. For subsequent calls, use the nextToken value returned from
    #   the previous request.
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

    # Input for listing tasks associated with a threat model job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job to list tasks for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobTasksInput AWS API Documentation
    #
    class ListThreatModelJobTasksInput < Struct.new(
      :agent_space_id,
      :max_results,
      :threat_model_job_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListThreatModelJobTasks operation.
    #
    # @!attribute [rw] threat_model_job_task_summaries
    #   The list of threat model job task summaries.
    #   @return [Array<Types::ThreatModelJobTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobTasksOutput AWS API Documentation
    #
    class ListThreatModelJobTasksOutput < Struct.new(
      :threat_model_job_task_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for ListThreatModelJobs operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model to list jobs for.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobsInput AWS API Documentation
    #
    class ListThreatModelJobsInput < Struct.new(
      :max_results,
      :threat_model_id,
      :agent_space_id,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListThreatModelJobs operation.
    #
    # @!attribute [rw] threat_model_job_summaries
    #   The list of threat model job summaries.
    #   @return [Array<Types::ThreatModelJobSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelJobsOutput AWS API Documentation
    #
    class ListThreatModelJobsOutput < Struct.new(
      :threat_model_job_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing threat models.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to list threat models for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelsInput AWS API Documentation
    #
    class ListThreatModelsInput < Struct.new(
      :max_results,
      :next_token,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListThreatModels operation.
    #
    # @!attribute [rw] threat_model_summaries
    #   The list of threat model summaries.
    #   @return [Array<Types::ThreatModelSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatModelsOutput AWS API Documentation
    #
    class ListThreatModelsOutput < Struct.new(
      :threat_model_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for listing threats.
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job to list threats for.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatsInput AWS API Documentation
    #
    class ListThreatsInput < Struct.new(
      :threat_job_id,
      :agent_space_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the ListThreats operation.
    #
    # @!attribute [rw] threats
    #   The list of threat summaries.
    #   @return [Array<Types::ThreatSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to use for paginating results that are returned in the
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ListThreatsOutput AWS API Documentation
    #
    class ListThreatsOutput < Struct.new(
      :threats,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The log location for a task, specifying where task execution logs are
    # stored.
    #
    # @!attribute [rw] log_type
    #   The type of log storage. Currently, only CLOUDWATCH is supported.
    #   @return [String]
    #
    # @!attribute [rw] cloud_watch_log
    #   The CloudWatch Logs location for the task logs.
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

    # Contains metadata about a member. This is a union type that contains
    # member-type-specific metadata.
    #
    # @note MemberMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MemberMetadata corresponding to the set member.
    #
    # @!attribute [rw] user
    #   The user metadata for the member.
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

    # The configuration for a membership. This is a union type that contains
    # member-type-specific configuration.
    #
    # @note MembershipConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MembershipConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MembershipConfig corresponding to the set member.
    #
    # @!attribute [rw] user
    #   The user configuration for the membership.
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

    # Contains summary information about a membership.
    #
    # @!attribute [rw] membership_id
    #   The unique identifier of the membership.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] member_type
    #   The type of member.
    #   @return [String]
    #
    # @!attribute [rw] config
    #   The configuration for the membership.
    #   @return [Types::MembershipConfig]
    #
    # @!attribute [rw] metadata
    #   The metadata for the member.
    #   @return [Types::MemberMetadata]
    #
    # @!attribute [rw] created_at
    #   The date and time the membership was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the membership was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The identifier of the entity that created the membership.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   The identifier of the entity that last updated the membership.
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

    # The network traffic configuration for a pentest, including custom
    # headers and traffic rules.
    #
    # @!attribute [rw] rules
    #   The list of network traffic rules that control which URLs are
    #   allowed or denied during testing.
    #   @return [Array<Types::NetworkTrafficRule>]
    #
    # @!attribute [rw] custom_headers
    #   The list of custom HTTP headers to include in network traffic during
    #   testing.
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

    # A rule that controls network traffic during penetration testing by
    # allowing or denying traffic to specific URL patterns.
    #
    # @!attribute [rw] effect
    #   The effect of the rule. Valid values are ALLOW and DENY.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The URL pattern to match for the rule.
    #   @return [String]
    #
    # @!attribute [rw] network_traffic_rule_type
    #   The type of the network traffic rule. Currently, only URL is
    #   supported.
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

    # Represents a pentest configuration that defines the parameters for
    # security testing, including target assets, risk type exclusions, and
    # infrastructure settings.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets included in the pentest.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   The list of risk types excluded from the pentest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the pentest.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the pentest.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   The network traffic configuration for the pentest.
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] clean_up_strategy
    #   Strategy for cleaning up resources after pentest job completion.
    #   @return [String]
    #
    # @!attribute [rw] disable_managed_skills
    #   A list of managed skills to disable for this pentest. Valid values
    #   include FINDING\_PERSONALIZATION and LOGIN\_OPTIMIZATION.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for jobs started
    #   from this pentest. If a job reaches the configured limit, it is
    #   gracefully stopped. If not set, jobs run to completion with no
    #   budget cap.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest was last updated, in UTC format.
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
      :clean_up_strategy,
      :disable_managed_skills,
      :max_task_hours,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a pentest job, which is an execution instance of a pentest.
    # A pentest job progresses through preflight, static analysis, pentest,
    # and finalizing steps.
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] overview
    #   An overview of the pentest job results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   The list of endpoints being tested in the pentest job.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] actors
    #   The list of actors used during the pentest job.
    #   @return [Array<Types::Actor>]
    #
    # @!attribute [rw] documents
    #   The list of documents providing context for the pentest job.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] source_code
    #   The list of source code repositories analyzed during the pentest
    #   job.
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] exclude_paths
    #   The list of paths excluded from the pentest job.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] allowed_domains
    #   The list of domains allowed during the pentest job.
    #   @return [Array<Types::Endpoint>]
    #
    # @!attribute [rw] exclude_risk_types
    #   The list of risk types excluded from the pentest job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] steps
    #   The list of steps in the pentest job execution.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] execution_context
    #   The execution context messages for the pentest job.
    #   @return [Array<Types::ExecutionContext>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the pentest job.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   The VPC configuration for the pentest job.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   The network traffic configuration for the pentest job.
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] error_information
    #   Error information if the pentest job encountered an error.
    #   @return [Types::ErrorInformation]
    #
    # @!attribute [rw] integrated_repositories
    #   The list of integrated repositories associated with the pentest job.
    #   @return [Array<Types::IntegratedRepository>]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] clean_up_strategy
    #   Strategy for cleaning up resources after pentest job completion.
    #   @return [String]
    #
    # @!attribute [rw] disable_managed_skills
    #   A list of managed skills disabled for this pentest job. Valid values
    #   include FINDING\_PERSONALIZATION and LOGIN\_OPTIMIZATION.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours allowed for this pentest
    #   job. If the cumulative task hours reach this limit, the job is
    #   gracefully stopped.
    #   @return [Float]
    #
    # @!attribute [rw] job_type
    #   The type of the pentest job. Valid values are FULL and REVALIDATION.
    #   @return [String]
    #
    # @!attribute [rw] selected_finding_ids
    #   The list of finding identifiers selected for revalidation. Present
    #   only when jobType is REVALIDATION.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest job was last updated, in UTC format.
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
      :clean_up_strategy,
      :disable_managed_skills,
      :max_task_hours,
      :job_type,
      :selected_finding_ids,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a pentest job.
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest job was last updated, in UTC format.
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

    # Contains summary information about a pentest.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest was last updated, in UTC format.
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

    # The configuration for a private connection. Specify either a
    # service-managed or a self-managed mode.
    #
    # @note PrivateConnectionMode is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] service_managed
    #   The configuration for a service-managed private connection, where
    #   the service manages the resource gateway lifecycle.
    #   @return [Types::ServiceManagedInput]
    #
    # @!attribute [rw] self_managed
    #   The configuration for a self-managed private connection, where you
    #   manage your own resource configuration.
    #   @return [Types::SelfManagedInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/PrivateConnectionMode AWS API Documentation
    #
    class PrivateConnectionMode < Struct.new(
      :service_managed,
      :self_managed,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ServiceManaged < PrivateConnectionMode; end
      class SelfManaged < PrivateConnectionMode; end
      class Unknown < PrivateConnectionMode; end
    end

    # Summarizes a private connection.
    #
    # @!attribute [rw] name
    #   The name of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the private connection, indicating whether it is
    #   service-managed or self-managed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The identifier or ARN of the VPC Lattice resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the resource gateway is created in.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The date and time the connection's certificate expires, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   A message describing why the private connection entered a failed
    #   state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/PrivateConnectionSummary AWS API Documentation
    #
    class PrivateConnectionSummary < Struct.new(
      :name,
      :type,
      :status,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The provider-specific input for creating an integration. This is a
    # union type that contains provider-specific configuration.
    #
    # @note ProviderInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] github
    #   The GitHub-specific input for creating an integration.
    #   @return [Types::GitHubIntegrationInput]
    #
    # @!attribute [rw] gitlab
    #   The configuration for a GitLab integration.
    #   @return [Types::GitLabIntegrationInput]
    #
    # @!attribute [rw] bitbucket
    #   The configuration for a Bitbucket integration.
    #   @return [Types::BitbucketIntegrationInput]
    #
    # @!attribute [rw] confluence
    #   The configuration for a Confluence integration.
    #   @return [Types::ConfluenceIntegrationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ProviderInput AWS API Documentation
    #
    class ProviderInput < Struct.new(
      :github,
      :gitlab,
      :bitbucket,
      :confluence,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderInput; end
      class Gitlab < ProviderInput; end
      class Bitbucket < ProviderInput; end
      class Confluence < ProviderInput; end
      class Unknown < ProviderInput; end
    end

    # The capabilities for an integrated resource from a third-party
    # provider. This is a union type that contains provider-specific
    # capabilities.
    #
    # @note ProviderResourceCapabilities is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProviderResourceCapabilities is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProviderResourceCapabilities corresponding to the set member.
    #
    # @!attribute [rw] github
    #   The GitHub-specific resource capabilities.
    #   @return [Types::GitHubResourceCapabilities]
    #
    # @!attribute [rw] gitlab
    #   Capabilities for an integrated GitLab repository.
    #   @return [Types::GitLabResourceCapabilities]
    #
    # @!attribute [rw] bitbucket
    #   Capabilities for an integrated Bitbucket repository.
    #   @return [Types::BitbucketResourceCapabilities]
    #
    # @!attribute [rw] confluence
    #   Capabilities for an integrated Confluence space.
    #   @return [Types::ConfluenceResourceCapabilities]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ProviderResourceCapabilities AWS API Documentation
    #
    class ProviderResourceCapabilities < Struct.new(
      :github,
      :gitlab,
      :bitbucket,
      :confluence,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderResourceCapabilities; end
      class Gitlab < ProviderResourceCapabilities; end
      class Bitbucket < ProviderResourceCapabilities; end
      class Confluence < ProviderResourceCapabilities; end
      class Unknown < ProviderResourceCapabilities; end
    end

    # Destination for publishing scan reports to an integrated document
    # provider.
    #
    # @!attribute [rw] integration_id
    #   The integration identifier for the document provider.
    #   @return [String]
    #
    # @!attribute [rw] container_id
    #   The container identifier where the report will be published.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The parent document identifier under which the report will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The existing document identifier to update instead of creating a new
    #   document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ReportDestination AWS API Documentation
    #
    class ReportDestination < Struct.new(
      :integration_id,
      :container_id,
      :parent_id,
      :document_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found. Verify that the resource
    # identifier is correct and that the resource exists in the specified
    # agent space or account.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document used as source material for importing security
    # requirements.
    #
    # @!attribute [rw] name
    #   The file name of the document.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the document. Valid values are MD, PDF, TXT, DOCX, and
    #   DOC.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The binary content of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SecurityRequirementArtifact AWS API Documentation
    #
    class SecurityRequirementArtifact < Struct.new(
      :name,
      :format,
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Contains summary information about a security requirement pack.
    #
    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] vendor_name
    #   The vendor name for AWS managed packs.
    #   @return [String]
    #
    # @!attribute [rw] management_type
    #   The management type of the pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the security requirement pack was created, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the security requirement pack was last updated, in
    #   UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SecurityRequirementPackSummary AWS API Documentation
    #
    class SecurityRequirementPackSummary < Struct.new(
      :pack_id,
      :name,
      :description,
      :vendor_name,
      :management_type,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a security requirement.
    #
    # @!attribute [rw] pack_id
    #   The unique identifier of the pack containing the security
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the security requirement was created, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the security requirement was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SecurityRequirementSummary AWS API Documentation
    #
    class SecurityRequirementSummary < Struct.new(
      :pack_id,
      :name,
      :description,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a self-managed private connection.
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The certificate for the private connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SelfManagedInput AWS API Documentation
    #
    class SelfManagedInput < Struct.new(
      :resource_configuration_id,
      :certificate)
      SENSITIVE = [:certificate]
      include Aws::Structure
    end

    # The configuration for a service-managed private connection.
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC to create the service-managed resource gateway in.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnets that the service-managed resource gateway spans.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups to attach to the service-managed resource
    #   gateway.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the service-managed resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] ipv4_addresses_per_eni
    #   The number of IPv4 addresses in each elastic network interface for
    #   the service-managed resource gateway.
    #   @return [Integer]
    #
    # @!attribute [rw] port_ranges
    #   The TCP port ranges that a consumer can use to access the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate
    #   The certificate for the private connection.
    #   @return [String]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway. Defaults to PUBLIC
    #   when not set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ServiceManagedInput AWS API Documentation
    #
    class ServiceManagedInput < Struct.new(
      :host_address,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :port_ranges,
      :certificate,
      :dns_resolution)
      SENSITIVE = [:certificate]
      include Aws::Structure
    end

    # The request exceeds a service quota. Review your current usage and
    # request a quota increase if needed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a source code repository used for security analysis during
    # a pentest.
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location of the source code repository archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/SourceCodeRepository AWS API Documentation
    #
    class SourceCodeRepository < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for the StartCodeRemediation operation.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that produced the findings.
    #   Mutually exclusive with `codeReviewJobId`.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job that produced the
    #   findings. Mutually exclusive with `pentestJobId`.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The list of finding identifiers to initiate code remediation for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeRemediationInput AWS API Documentation
    #
    class StartCodeRemediationInput < Struct.new(
      :agent_space_id,
      :pentest_job_id,
      :code_review_job_id,
      :finding_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartCodeRemediation operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeRemediationOutput AWS API Documentation
    #
    class StartCodeRemediationOutput < Aws::EmptyStructure; end

    # Input for starting the execution of a code review.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review to start a job for.
    #   @return [String]
    #
    # @!attribute [rw] diff_source
    #   Source of the diff for a differential scan. When present, the job
    #   analyzes only the changed lines instead of performing a full scan.
    #   @return [Types::DiffSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeReviewJobInput AWS API Documentation
    #
    class StartCodeReviewJobInput < Struct.new(
      :agent_space_id,
      :code_review_id,
      :diff_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartCodeReviewJob operation.
    #
    # @!attribute [rw] title
    #   The title of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the code review job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the started code review job.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartCodeReviewJobOutput AWS API Documentation
    #
    class StartCodeReviewJobOutput < Struct.new(
      :title,
      :status,
      :created_at,
      :updated_at,
      :code_review_id,
      :code_review_job_id,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for starting the execution of a pentest.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest to start a job for.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of pentest job to start. Valid values are FULL and
    #   REVALIDATION. When set to REVALIDATION, the selectedFindingIds
    #   parameter is required.
    #   @return [String]
    #
    # @!attribute [rw] selected_finding_ids
    #   The list of finding identifiers to revalidate. Required when jobType
    #   is REVALIDATION. Each finding must belong to the same agent space
    #   and pentest.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartPentestJobInput AWS API Documentation
    #
    class StartPentestJobInput < Struct.new(
      :agent_space_id,
      :pentest_id,
      :job_type,
      :selected_finding_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartPentestJob operation.
    #
    # @!attribute [rw] title
    #   The title of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the pentest job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest job was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the started pentest job.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
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

    # Input for starting a threat model job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model to start a job for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartThreatModelJobInput AWS API Documentation
    #
    class StartThreatModelJobInput < Struct.new(
      :agent_space_id,
      :threat_model_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StartThreatModelJob operation.
    #
    # @!attribute [rw] title
    #   The title of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the started threat model job.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StartThreatModelJobOutput AWS API Documentation
    #
    class StartThreatModelJobOutput < Struct.new(
      :title,
      :status,
      :created_at,
      :updated_at,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a step in the pentest job execution pipeline. Steps include
    # preflight, static analysis, pentest, and finalizing.
    #
    # @!attribute [rw] name
    #   The name of the step. Valid values include PREFLIGHT,
    #   STATIC\_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the step.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the step was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the step was last updated, in UTC format.
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

    # Input for stopping the execution of a code review job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] code_review_job_id
    #   The unique identifier of the code review job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopCodeReviewJobInput AWS API Documentation
    #
    class StopCodeReviewJobInput < Struct.new(
      :agent_space_id,
      :code_review_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StopCodeReviewJob operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopCodeReviewJobOutput AWS API Documentation
    #
    class StopCodeReviewJobOutput < Aws::EmptyStructure; end

    # Input for stopping the execution of a pentest.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job to stop.
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

    # Output for the StopPentestJob operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopPentestJobOutput AWS API Documentation
    #
    class StopPentestJobOutput < Aws::EmptyStructure; end

    # Input for stopping a threat model job.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopThreatModelJobInput AWS API Documentation
    #
    class StopThreatModelJobInput < Struct.new(
      :agent_space_id,
      :threat_model_job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the StopThreatModelJob operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/StopThreatModelJobOutput AWS API Documentation
    #
    class StopThreatModelJobOutput < Aws::EmptyStructure; end

    # Input for TagResource operation.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
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

    # Output for TagResource operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # Represents a target domain registered for penetration testing. A
    # target domain must be verified through DNS TXT or HTTP route
    # verification before it can be used in pentests.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The current verification status of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   The reason for the current target domain verification status.
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   The verification details for the target domain.
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   The date and time the target domain was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   The date and time the target domain was verified, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/TargetDomain AWS API Documentation
    #
    class TargetDomain < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a target domain.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The current verification status of the target domain.
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

    # Represents an individual security test task within a pentest job. Each
    # task targets a specific risk type or endpoint and executes
    # independently.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that contains the task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the task.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The list of categories assigned to the task.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk the task is testing for.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint
    #   The target endpoint being tested by the task.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] logs_location
    #   The location of the task execution logs.
    #   @return [Types::LogLocation]
    #
    # @!attribute [rw] task_hours
    #   The number of active work hours consumed by the task during
    #   execution.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
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
      :task_hours,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a task.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] pentest_job_id
    #   The unique identifier of the pentest job that contains the task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   The type of security risk the task is testing for.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] task_hours
    #   The number of active work hours consumed by the task during
    #   execution.
    #   @return [Float]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
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
      :task_hours,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a threat identified during threat modeling.
    #
    # @!attribute [rw] threat_id
    #   The unique identifier of the threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job that produced the
    #   threat.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional customer comment on the threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_source
    #   The actor or origin of the threat.
    #   @return [String]
    #
    # @!attribute [rw] prerequisites
    #   The conditions required for the threat to be exploitable.
    #   @return [String]
    #
    # @!attribute [rw] threat_action
    #   What the threat source can do.
    #   @return [String]
    #
    # @!attribute [rw] threat_impact
    #   The direct consequence of the threat action.
    #   @return [String]
    #
    # @!attribute [rw] impacted_goal
    #   The security goals affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_assets
    #   The specific assets affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anchor
    #   The DFD element this threat is anchored to.
    #   @return [Types::ThreatAnchorShape]
    #
    # @!attribute [rw] evidence
    #   The source code files supporting the threat.
    #   @return [Array<Types::ThreatEvidenceShape>]
    #
    # @!attribute [rw] stride
    #   The STRIDE categories applicable to this threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] recommendation
    #   The recommended mitigation guidance for this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Who created this threat.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   Who last updated this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/Threat AWS API Documentation
    #
    class Threat < Struct.new(
      :threat_id,
      :threat_job_id,
      :title,
      :statement,
      :severity,
      :status,
      :comments,
      :threat_source,
      :prerequisites,
      :threat_action,
      :threat_impact,
      :impacted_goal,
      :impacted_assets,
      :anchor,
      :evidence,
      :stride,
      :recommendation,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # DFD element that a threat is anchored to.
    #
    # @!attribute [rw] kind
    #   The kind of DFD element.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the DFD element.
    #   @return [String]
    #
    # @!attribute [rw] package_id
    #   The package identifier containing the DFD element.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatAnchorShape AWS API Documentation
    #
    class ThreatAnchorShape < Struct.new(
      :kind,
      :id,
      :package_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source code file supporting a threat.
    #
    # @!attribute [rw] package_id
    #   The package identifier containing the evidence file.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The file path of the evidence.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatEvidenceShape AWS API Documentation
    #
    class ThreatEvidenceShape < Struct.new(
      :package_id,
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a threat model configuration that defines the parameters
    # for automated threat analysis, including target assets and logging
    # configuration.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application or system being threat modeled.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets included in the threat model.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] scope_docs
    #   The scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the threat model.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the threat model.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModel AWS API Documentation
    #
    class ThreatModel < Struct.new(
      :threat_model_id,
      :agent_space_id,
      :title,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a threat model job, which is an execution instance of a
    # threat model.
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] execution_start_time
    #   The date and time the threat model job execution started, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] execution_end_time
    #   The date and time the threat model job execution ended, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] source_code
    #   The list of source code repositories used for threat modeling.
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] integrated_repositories
    #   The list of integrated repositories used for threat modeling.
    #   @return [Array<Types::IntegratedRepository>]
    #
    # @!attribute [rw] documents
    #   The list of documents used for threat modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] scope_docs
    #   The scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] error_information
    #   Error information if the threat model job encountered an error.
    #   @return [Types::ErrorInformation]
    #
    # @!attribute [rw] system_overview
    #   The system overview generated during threat modeling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModelJob AWS API Documentation
    #
    class ThreatModelJob < Struct.new(
      :threat_model_job_id,
      :threat_model_id,
      :agent_space_id,
      :title,
      :status,
      :created_at,
      :updated_at,
      :execution_start_time,
      :execution_end_time,
      :source_code,
      :integrated_repositories,
      :documents,
      :scope_docs,
      :error_information,
      :system_overview)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a threat model job.
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model associated with the job.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat model job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model job was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model job was last updated, in UTC
    #   format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModelJobSummary AWS API Documentation
    #
    class ThreatModelJobSummary < Struct.new(
      :threat_model_job_id,
      :threat_model_id,
      :agent_space_id,
      :title,
      :status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an individual task within a threat model job.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job that contains the
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the task.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] logs_location
    #   The location of the task execution logs.
    #   @return [Types::LogLocation]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModelJobTask AWS API Documentation
    #
    class ThreatModelJobTask < Struct.new(
      :task_id,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id,
      :title,
      :description,
      :execution_status,
      :logs_location,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a threat model job task.
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model associated with the task.
    #   @return [String]
    #
    # @!attribute [rw] threat_model_job_id
    #   The unique identifier of the threat model job that contains the
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the task.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The current execution status of the task.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the task was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the task was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModelJobTaskSummary AWS API Documentation
    #
    class ThreatModelJobTaskSummary < Struct.new(
      :task_id,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id,
      :title,
      :execution_status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a threat model.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatModelSummary AWS API Documentation
    #
    class ThreatModelSummary < Struct.new(
      :threat_model_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a threat.
    #
    # @!attribute [rw] threat_id
    #   The unique identifier of the threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job that produced the
    #   threat.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat.
    #   @return [String]
    #
    # @!attribute [rw] stride
    #   The STRIDE categories applicable to this threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_by
    #   Who created this threat.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   Who last updated this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/ThreatSummary AWS API Documentation
    #
    class ThreatSummary < Struct.new(
      :threat_id,
      :threat_job_id,
      :title,
      :statement,
      :severity,
      :status,
      :stride,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   Service code for throttling limit.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Quota code for throttling limit.
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

    # Input for UntagResource operation.
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
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

    # Output for UntagResource operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # Input for updating an agent space.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   The updated AWS resources to associate with the agent space.
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   The updated list of target domain identifiers to associate with the
    #   agent space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   The updated code review settings for the agent space.
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

    # Output for the UpdateAgentSpace operation.
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the updated agent space.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] aws_resources
    #   The AWS resources associated with the agent space.
    #   @return [Types::AWSResources]
    #
    # @!attribute [rw] target_domain_ids
    #   The list of target domain identifiers associated with the agent
    #   space.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code_review_settings
    #   The code review settings for the agent space.
    #   @return [Types::CodeReviewSettings]
    #
    # @!attribute [rw] created_at
    #   The date and time the agent space was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the agent space was last updated, in UTC format.
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
    #   The unique identifier of the application to update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The updated Amazon Resource Name (ARN) of the IAM role for the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] default_kms_key_id
    #   The updated identifier of the default AWS KMS key for the
    #   application.
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
    #   The unique identifier of the updated application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing code review.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The updated title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The updated assets for the code review.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] service_role
    #   The updated IAM service role for the code review.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The updated CloudWatch Logs configuration for the code review.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The updated code remediation strategy for the code review.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The updated validation mode for the code review. Valid values are
    #   SIMULATED and DISABLED.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The updated maximum number of billable task hours allowed for jobs
    #   started from this code review.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateCodeReviewInput AWS API Documentation
    #
    class UpdateCodeReviewInput < Struct.new(
      :code_review_id,
      :agent_space_id,
      :title,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateCodeReview operation.
    #
    # @!attribute [rw] code_review_id
    #   The unique identifier of the code review.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the code review.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the code review was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the code review was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   The assets included in the code review.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the code review.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the code review.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the code
    #   review.
    #   @return [String]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The code remediation strategy for the code review.
    #   @return [String]
    #
    # @!attribute [rw] validation_mode
    #   The validation mode for the code review.
    #   @return [String]
    #
    # @!attribute [rw] max_task_hours
    #   The maximum number of billable task hours configured for jobs
    #   started from this code review. Null if no budget cap is set.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateCodeReviewOutput AWS API Documentation
    #
    class UpdateCodeReviewOutput < Struct.new(
      :code_review_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :service_role,
      :log_config,
      :agent_space_id,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing security finding.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the finding.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name for the finding.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description for the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_type
    #   The updated risk type for the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_level
    #   The updated risk level for the finding.
    #   @return [String]
    #
    # @!attribute [rw] risk_score
    #   The updated numerical risk score for the finding.
    #   @return [String]
    #
    # @!attribute [rw] attack_script
    #   The updated attack script for the finding.
    #   @return [String]
    #
    # @!attribute [rw] reasoning
    #   The updated reasoning for the finding.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status for the finding.
    #   @return [String]
    #
    # @!attribute [rw] customer_note
    #   A customer-provided note on the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateFindingInput AWS API Documentation
    #
    class UpdateFindingInput < Struct.new(
      :finding_id,
      :agent_space_id,
      :name,
      :description,
      :risk_type,
      :risk_level,
      :risk_score,
      :attack_script,
      :reasoning,
      :status,
      :customer_note)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateFinding operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateFindingOutput AWS API Documentation
    #
    class UpdateFindingOutput < Aws::EmptyStructure; end

    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of integrated resource items to update.
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

    # Input for updating an existing pentest.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The updated title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The updated assets for the pentest.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   The updated list of risk types to exclude from the pentest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The updated IAM service role for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The updated CloudWatch Logs configuration for the pentest.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] vpc_config
    #   The updated VPC configuration for the pentest.
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] network_traffic_config
    #   The updated network traffic configuration for the pentest.
    #   @return [Types::NetworkTrafficConfig]
    #
    # @!attribute [rw] code_remediation_strategy
    #   The updated code remediation strategy for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] disable_managed_skills
    #   The updated list of managed skills to disable for this pentest.
    #   Valid values include FINDING\_PERSONALIZATION and
    #   LOGIN\_OPTIMIZATION.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_task_hours
    #   The updated maximum number of billable task hours allowed for jobs
    #   started from this pentest.
    #   @return [Float]
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
      :code_remediation_strategy,
      :disable_managed_skills,
      :max_task_hours)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdatePentest operation.
    #
    # @!attribute [rw] pentest_id
    #   The unique identifier of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the pentest.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the pentest was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the pentest was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] assets
    #   The assets included in the pentest.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] exclude_risk_types
    #   The list of risk types excluded from the pentest.
    #   @return [Array<String>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the pentest.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the pentest.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the pentest.
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

    # @!attribute [rw] private_connection_name
    #   The name of the private connection to update.
    #   @return [String]
    #
    # @!attribute [rw] certificate
    #   The PEM-encoded certificate chain for the private connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePrivateConnectionCertificateInput AWS API Documentation
    #
    class UpdatePrivateConnectionCertificateInput < Struct.new(
      :private_connection_name,
      :certificate)
      SENSITIVE = [:certificate]
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the private connection, indicating whether it is
    #   service-managed or self-managed.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the private connection.
    #   @return [String]
    #
    # @!attribute [rw] resource_gateway_id
    #   The identifier or ARN of the VPC Lattice resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] host_address
    #   The IP address or DNS name of the target resource.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the resource gateway is created in.
    #   @return [String]
    #
    # @!attribute [rw] resource_configuration_id
    #   The identifier or ARN of the VPC Lattice resource configuration.
    #   @return [String]
    #
    # @!attribute [rw] certificate_expiry_time
    #   The date and time the connection's certificate expires, in UTC
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] dns_resolution
    #   The DNS resolution mode for the resource gateway.
    #   @return [String]
    #
    # @!attribute [rw] failure_message
    #   A message describing why the private connection entered a failed
    #   state, if applicable.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the private connection.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdatePrivateConnectionCertificateOutput AWS API Documentation
    #
    class UpdatePrivateConnectionCertificateOutput < Struct.new(
      :name,
      :type,
      :status,
      :resource_gateway_id,
      :host_address,
      :vpc_id,
      :resource_configuration_id,
      :certificate_expiry_time,
      :dns_resolution,
      :failure_message,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the details for updating an existing security requirement
    # within a pack. The name is an immutable identifier used to locate the
    # requirement and cannot be modified.
    #
    # @!attribute [rw] name
    #   The name of the security requirement to update. This is an immutable
    #   identifier and cannot be changed once the requirement is created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the security requirement.
    #   @return [String]
    #
    # @!attribute [rw] domain
    #   The updated security domain the requirement belongs to.
    #   @return [String]
    #
    # @!attribute [rw] evaluation
    #   The updated evaluation criteria used to assess compliance with this
    #   requirement.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   The updated remediation steps when the requirement is not met.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateSecurityRequirementEntry AWS API Documentation
    #
    class UpdateSecurityRequirementEntry < Struct.new(
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated name of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the security requirement pack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateSecurityRequirementPackInput AWS API Documentation
    #
    class UpdateSecurityRequirementPackInput < Struct.new(
      :pack_id,
      :name,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pack_id
    #   The unique identifier of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the security requirement pack.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the security requirement pack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateSecurityRequirementPackOutput AWS API Documentation
    #
    class UpdateSecurityRequirementPackOutput < Struct.new(
      :pack_id,
      :name,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating a target domain.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain to update.
    #   @return [String]
    #
    # @!attribute [rw] verification_method
    #   The updated verification method for the target domain.
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

    # Output for the UpdateTargetDomain operation.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status
    #   The current verification status of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   The reason for the current target domain verification status.
    #   @return [String]
    #
    # @!attribute [rw] verification_details
    #   The updated verification details for the target domain.
    #   @return [Types::VerificationDetails]
    #
    # @!attribute [rw] created_at
    #   The date and time the target domain was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   The date and time the target domain was verified, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateTargetDomainOutput AWS API Documentation
    #
    class UpdateTargetDomainOutput < Struct.new(
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing threat.
    #
    # @!attribute [rw] threat_id
    #   The unique identifier of the threat to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The updated status of the threat.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional customer comment.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The updated natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The updated severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_source
    #   The updated actor or origin of the threat.
    #   @return [String]
    #
    # @!attribute [rw] prerequisites
    #   The updated conditions required for the threat to be exploitable.
    #   @return [String]
    #
    # @!attribute [rw] threat_action
    #   The updated description of what the threat source can do.
    #   @return [String]
    #
    # @!attribute [rw] threat_impact
    #   The updated direct consequence of the threat action.
    #   @return [String]
    #
    # @!attribute [rw] impacted_goal
    #   The updated security goals affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_assets
    #   The updated list of specific assets affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anchor
    #   The updated DFD element this threat is anchored to.
    #   @return [Types::ThreatAnchorShape]
    #
    # @!attribute [rw] evidence
    #   The updated source code files supporting the threat.
    #   @return [Array<Types::ThreatEvidenceShape>]
    #
    # @!attribute [rw] recommendation
    #   The updated recommended mitigation guidance for this threat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreatInput AWS API Documentation
    #
    class UpdateThreatInput < Struct.new(
      :threat_id,
      :agent_space_id,
      :title,
      :status,
      :comments,
      :statement,
      :severity,
      :threat_source,
      :prerequisites,
      :threat_action,
      :threat_impact,
      :impacted_goal,
      :impacted_assets,
      :anchor,
      :evidence,
      :recommendation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for updating an existing threat model.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model to update.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The updated title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the application or system being threat
    #   modeled.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The updated assets for the threat model.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] scope_docs
    #   The updated scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] service_role
    #   The updated IAM service role for the threat model.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The updated CloudWatch Logs configuration for the threat model.
    #   @return [Types::CloudWatchLog]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreatModelInput AWS API Documentation
    #
    class UpdateThreatModelInput < Struct.new(
      :threat_model_id,
      :agent_space_id,
      :title,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateThreatModel operation.
    #
    # @!attribute [rw] threat_model_id
    #   The unique identifier of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the threat model.
    #   @return [String]
    #
    # @!attribute [rw] agent_space_id
    #   The unique identifier of the agent space that contains the threat
    #   model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the application or system being threat modeled.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The assets included in the threat model.
    #   @return [Types::Assets]
    #
    # @!attribute [rw] scope_docs
    #   The scoped documents for the agent to focus on during threat
    #   modeling.
    #   @return [Array<Types::DocumentInfo>]
    #
    # @!attribute [rw] service_role
    #   The IAM service role used for the threat model.
    #   @return [String]
    #
    # @!attribute [rw] log_config
    #   The CloudWatch Logs configuration for the threat model.
    #   @return [Types::CloudWatchLog]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat model was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat model was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreatModelOutput AWS API Documentation
    #
    class UpdateThreatModelOutput < Struct.new(
      :threat_model_id,
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output for the UpdateThreat operation.
    #
    # @!attribute [rw] threat_id
    #   The unique identifier of the threat.
    #   @return [String]
    #
    # @!attribute [rw] threat_job_id
    #   The unique identifier of the threat model job the threat belongs to.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   A short title summarizing the threat.
    #   @return [String]
    #
    # @!attribute [rw] statement
    #   The natural-language threat statement.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity level of the threat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the threat.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   Optional customer comment on the threat.
    #   @return [String]
    #
    # @!attribute [rw] stride
    #   The STRIDE categories applicable to this threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] threat_source
    #   The actor or origin of the threat.
    #   @return [String]
    #
    # @!attribute [rw] prerequisites
    #   The conditions required for the threat to be exploitable.
    #   @return [String]
    #
    # @!attribute [rw] threat_action
    #   What the threat source can do.
    #   @return [String]
    #
    # @!attribute [rw] threat_impact
    #   The direct consequence of the threat action.
    #   @return [String]
    #
    # @!attribute [rw] impacted_goal
    #   The security goals affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] impacted_assets
    #   The specific assets affected by the threat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] anchor
    #   The DFD element this threat is anchored to.
    #   @return [Types::ThreatAnchorShape]
    #
    # @!attribute [rw] evidence
    #   The source code files supporting the threat.
    #   @return [Array<Types::ThreatEvidenceShape>]
    #
    # @!attribute [rw] recommendation
    #   The recommended mitigation guidance for this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   Who created this threat.
    #   @return [String]
    #
    # @!attribute [rw] updated_by
    #   Who last updated this threat.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the threat was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the threat was last updated, in UTC format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UpdateThreatOutput AWS API Documentation
    #
    class UpdateThreatOutput < Struct.new(
      :threat_id,
      :threat_job_id,
      :title,
      :statement,
      :severity,
      :status,
      :comments,
      :stride,
      :threat_source,
      :prerequisites,
      :threat_action,
      :threat_impact,
      :impacted_goal,
      :impacted_assets,
      :anchor,
      :evidence,
      :recommendation,
      :created_by,
      :updated_by,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a user membership, including the role assigned
    # to the user within the agent space.
    #
    # @!attribute [rw] role
    #   The role assigned to the user. Currently, only MEMBER is supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/UserConfig AWS API Documentation
    #
    class UserConfig < Struct.new(
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata about a user member, including the username and
    # email address.
    #
    # @!attribute [rw] username
    #   The username of the user.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address of the user.
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

    # The input fails to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   A summary of the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of specific failures encountered during validation.
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
    #   to satisfy the modeled constraint.
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

    # Contains the verification details for a target domain, including the
    # verification method and provider-specific details.
    #
    # @!attribute [rw] method
    #   The verification method used for the target domain.
    #   @return [String]
    #
    # @!attribute [rw] dns_txt
    #   The DNS TXT verification details.
    #   @return [Types::DnsVerification]
    #
    # @!attribute [rw] http_route
    #   The HTTP route verification details.
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

    # Contains metadata for a verification script that can be used to
    # reproduce a security finding.
    #
    # @!attribute [rw] script_type
    #   The type of script. Valid values are python and bash.
    #   @return [String]
    #
    # @!attribute [rw] script_url
    #   URL to download the verification script.
    #   @return [String]
    #
    # @!attribute [rw] instructions
    #   Instructions for running the verification script, including
    #   prerequisites and how to interpret results.
    #   @return [String]
    #
    # @!attribute [rw] env_vars
    #   The list of environment variables required to run the verification
    #   script.
    #   @return [Array<Types::VerificationScriptEnvVar>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerificationScript AWS API Documentation
    #
    class VerificationScript < Struct.new(
      :script_type,
      :script_url,
      :instructions,
      :env_vars)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an environment variable required to run a verification
    # script.
    #
    # @!attribute [rw] name
    #   The name of the environment variable.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the environment variable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securityagent-2025-09-06/VerificationScriptEnvVar AWS API Documentation
    #
    class VerificationScriptEnvVar < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input for verifying ownership for a registered target domain in an
    # agent space.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain to verify.
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
    # agent space.
    #
    # @!attribute [rw] target_domain_id
    #   The unique identifier of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The domain name of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the target domain was created, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time the target domain was last updated, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] verified_at
    #   The date and time the target domain was verified, in UTC format.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The verification status of the target domain.
    #   @return [String]
    #
    # @!attribute [rw] verification_status_reason
    #   The reason for the current target domain verification status.
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
      :status,
      :verification_status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The VPC configuration for a pentest, specifying the VPC, security
    # groups, and subnets to use during testing.
    #
    # @!attribute [rw] vpc_arn
    #   The Amazon Resource Name (ARN) of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] security_group_arns
    #   The Amazon Resource Names (ARNs) of the security groups for the VPC
    #   configuration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_arns
    #   The Amazon Resource Names (ARNs) of the subnets for the VPC
    #   configuration.
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

