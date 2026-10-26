# frozen_string_literal: true

# This is generated code!

module Aws::SecurityAgent
  # This module contains the types returned by client operations.
  module Types

    # <p>The AWS resources associated with an agent space, including VPCs, log groups, S3 buckets, secrets, Lambda functions, and IAM roles.</p>
    # @!attribute vpcs
    #   <p>The VPC configurations associated with the agent space.</p>
    #   @return [Array<Types::VpcConfig>]
    # @!attribute log_groups
    #   <p>The Amazon Resource Names (ARNs) of the CloudWatch log groups associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute s3_buckets
    #   <p>The Amazon Resource Names (ARNs) of the S3 buckets associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute secret_arns
    #   <p>The Amazon Resource Names (ARNs) of the Secrets Manager secrets associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute lambda_function_arns
    #   <p>The Amazon Resource Names (ARNs) of the Lambda functions associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute iam_roles
    #   <p>The IAM roles associated with the agent space.</p>
    #   @return [Array<String>]
    class AWSResources < Struct.new(
      nil,
      :vpcs,
      :log_groups,
      :s3_buckets,
      :secret_arns,
      :lambda_function_arns,
      :iam_roles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   <p>Error description.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an actor used during penetration testing. An actor defines a user or entity that interacts with the target application, including authentication credentials and target URIs.</p>
    # @!attribute identifier
    #   <p>The unique identifier for the actor.</p>
    #   @return [String]
    # @!attribute uris
    #   <p>The list of URIs that the actor targets during testing.</p>
    #   @return [Array<String>]
    # @!attribute authentication
    #   <p>The authentication configuration for the actor.</p>
    #   @return [Types::Authentication]
    # @!attribute description
    #   <p>A description of the actor.</p>
    #   @return [String]
    # @!attribute enable_email_mfa
    #   <p>Whether email-based MFA is enabled for this actor.</p>
    #   @return [Boolean]
    # @!attribute mfa_forwarding_address
    #   <p>Server-generated email forwarding address for receiving MFA codes.</p>
    #   @return [String]
    class Actor < Struct.new(
      nil,
      :identifier,
      :uris,
      :authentication,
      :description,
      :enable_email_mfa,
      :mfa_forwarding_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A message received at an actor's server-generated email MFA address.</p>
    # @!attribute sender
    #   <p>The address the message was sent from.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject line of the message.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The plain-text body of the message, containing the MFA code or verification link.</p>
    #   @return [String]
    # @!attribute received_at
    #   <p>The time the message was received.</p>
    #   @return [Time]
    class ActorMessage < Struct.new(
      nil,
      :sender,
      :subject,
      :body,
      :received_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to add the artifact to.</p>
    #   @return [String]
    # @!attribute artifact_content
    #   <p>The binary content of the artifact to upload.</p>
    #   @return [String]
    # @!attribute artifact_type
    #   <p>The file type of the artifact. Valid values include TXT, PNG, JPEG, MD, PDF, DOCX, DOC, JSON, and YAML.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The file name of the artifact.</p>
    #   @return [String]
    class AddArtifactInput < Struct.new(
      nil,
      :agent_space_id,
      :artifact_content,
      :artifact_type,
      :file_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute artifact_id
    #   <p>The unique identifier assigned to the uploaded artifact.</p>
    #   @return [String]
    class AddArtifactOutput < Struct.new(
      nil,
      :artifact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an agent space, which is a dedicated workspace for securing a specific application. An agent space contains the configuration, resources, and settings needed for security testing.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the agent space.</p>
    #   @return [String]
    # @!attribute aws_resources
    #   <p>The AWS resources associated with the agent space.</p>
    #   @return [Types::AWSResources]
    # @!attribute target_domain_ids
    #   <p>The list of target domain identifiers associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute code_review_settings
    #   <p>The code review settings for the agent space.</p>
    #   @return [Types::CodeReviewSettings]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt data in the agent space.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the agent space was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the agent space was last updated, in UTC format.</p>
    #   @return [Time]
    class AgentSpace < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an agent space.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent space.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the agent space was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the agent space was last updated, in UTC format.</p>
    #   @return [Time]
    class AgentSpaceSummary < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an application.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the application.</p>
    #   @return [String]
    # @!attribute default_kms_key_id
    #   <p>The identifier of the default AWS KMS key used to encrypt data for the application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :application_id,
      :application_name,
      :domain,
      :default_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an artifact that provides context for security testing, such as documentation, diagrams, or configuration files.</p>
    # @!attribute contents
    #   <p>The content of the artifact.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The file type of the artifact.</p>
    #   @return [String]
    class Artifact < Struct.new(
      nil,
      :contents,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about an artifact.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The file name of the artifact.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the artifact was last updated, in UTC format.</p>
    #   @return [Time]
    class ArtifactMetadataItem < Struct.new(
      nil,
      :agent_space_id,
      :artifact_id,
      :file_name,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about an artifact.</p>
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The file name of the artifact.</p>
    #   @return [String]
    # @!attribute artifact_type
    #   <p>The file type of the artifact.</p>
    #   @return [String]
    class ArtifactSummary < Struct.new(
      nil,
      :artifact_id,
      :file_name,
      :artifact_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of assets used in a pentest configuration, including endpoints, actors, documents, source code repositories, and integrated repositories.</p>
    # @!attribute endpoints
    #   <p>The list of endpoints to test during the pentest.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute actors
    #   <p>The list of actors used during penetration testing.</p>
    #   @return [Array<Types::Actor>]
    # @!attribute documents
    #   <p>The list of documents that provide context for the pentest.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute source_code
    #   <p>The list of source code repositories to analyze during the pentest.</p>
    #   @return [Array<Types::SourceCodeRepository>]
    # @!attribute integrated_repositories
    #   <p>The list of integrated repositories associated with the pentest.</p>
    #   @return [Array<Types::IntegratedRepository>]
    # @!attribute trusted_ca_certificates
    #   <p>The trust anchors used to validate target endpoint TLS certificates. Provide these for endpoints served by a private or internal certificate authority (CA), an intermediate CA, or a self-signed certificate.</p>
    #   @return [Array<Types::TrustedCaCertificate>]
    class Assets < Struct.new(
      nil,
      :endpoints,
      :actors,
      :documents,
      :source_code,
      :integrated_repositories,
      :trusted_ca_certificates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication configuration for an actor, specifying the provider type and credentials.</p>
    # @!attribute provider_type
    #   <p>The type of authentication provider. Valid values include SECRETS_MANAGER, AWS_LAMBDA, AWS_IAM_ROLE, and AWS_INTERNAL.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The authentication value, such as a secret ARN, Lambda function ARN, or IAM role ARN, depending on the provider type.</p>
    #   @return [String]
    class Authentication < Struct.new(
      nil,
      :provider_type,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection details for an Azure DevOps integration.</p>
    # @!attribute code
    #   <p>The OAuth 2.0 authorization code returned to your redirect URL after the connection is authorized.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state value returned by <code>InitiateProviderRegistration</code> and echoed back on the authorization redirect.</p>
    #   @return [String]
    # @!attribute organization_name
    #   <p>The name of the Azure DevOps organization to connect, for example <code>my-org</code>.</p>
    #   @return [String]
    class AzureDevOpsIntegrationInput < Struct.new(
      nil,
      :code,
      :state,
      :organization_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an integrated Azure DevOps repository.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>Provider Id of the resource e.g. GitHub repository id, etc.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The name of the Azure DevOps organization that owns the repository.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name of the Azure DevOps project that contains the repository.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The GUID of the Azure DevOps project that contains the repository.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>Defines the visibility level of provider resources. PRIVATE indicates restricted access, while PUBLIC indicates open access.</p>
    #   @return [String]
    class AzureDevOpsRepositoryMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :organization,
      :project,
      :project_id,
      :access_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Azure DevOps repository integrated as a resource.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute organization
    #   <p>The name of the Azure DevOps organization that owns the repository.</p>
    #   @return [String]
    # @!attribute project
    #   <p>The name of the Azure DevOps project that contains the repository.</p>
    #   @return [String]
    class AzureDevOpsRepositoryResource < Struct.new(
      nil,
      :name,
      :organization,
      :project,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capabilities for an integrated Azure DevOps repository.</p>
    # @!attribute trigger_filter_groups
    #   <p>The filter groups that control which pull request events start an automatic code review when <code>leaveComments</code> is enabled. A review starts when any group matches. If you omit this, a review starts on <code>PULL_REQUEST_READY_FOR_REVIEW</code> events.</p>
    #   @return [Array<Types::TriggerFilterGroup>]
    # @!attribute leave_comments
    #   <p>Whether to post code review comments on pull requests.</p>
    #   @return [Boolean]
    # @!attribute remediate_code
    #   <p>Whether to create pull requests with automated fixes.</p>
    #   @return [Boolean]
    class AzureDevOpsResourceCapabilities < Struct.new(
      nil,
      :trigger_filter_groups,
      :leave_comments,
      :remediate_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a successfully created security requirement.</p>
    # @!attribute pack_id
    #   <p>The unique identifier of the pack containing the security requirement.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The security domain the requirement belongs to.</p>
    #   @return [String]
    # @!attribute evaluation
    #   <p>The evaluation criteria used to assess compliance with this requirement.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The recommended remediation steps when the requirement is not met.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the security requirement was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the security requirement was last updated, in UTC format.</p>
    #   @return [Time]
    class BatchCreateSecurityRequirementResult < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to add requirements to.</p>
    #   @return [String]
    # @!attribute security_requirements
    #   <p>The list of security requirements to create.</p>
    #   @return [Array<Types::CreateSecurityRequirementEntry>]
    class BatchCreateSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :security_requirements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_requirements
    #   <p>The list of security requirements that were successfully created.</p>
    #   @return [Array<Types::BatchCreateSecurityRequirementResult>]
    # @!attribute errors
    #   <p>The list of errors for security requirements that failed to be created.</p>
    #   @return [Array<Types::BatchSecurityRequirementError>]
    class BatchCreateSecurityRequirementsOutput < Struct.new(
      nil,
      :security_requirements,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting multiple code reviews.</p>
    # @!attribute code_review_ids
    #   <p>The list of code review identifiers to delete.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code reviews to delete.</p>
    #   @return [String]
    class BatchDeleteCodeReviewsInput < Struct.new(
      nil,
      :code_review_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchDeleteCodeReviews operation.</p>
    # @!attribute deleted
    #   <p>The list of identifiers of the code reviews that were successfully deleted.</p>
    #   @return [Array<String>]
    # @!attribute failed
    #   <p>The list of code reviews that failed to delete, including the reason for each failure.</p>
    #   @return [Array<Types::DeleteCodeReviewFailure>]
    class BatchDeleteCodeReviewsOutput < Struct.new(
      nil,
      :deleted,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting multiple pentests.</p>
    # @!attribute pentest_ids
    #   <p>The list of pentest identifiers to delete.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentests to delete.</p>
    #   @return [String]
    class BatchDeletePentestsInput < Struct.new(
      nil,
      :pentest_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchDeletePentests operation.</p>
    # @!attribute deleted
    #   <p>The list of pentests that were successfully deleted.</p>
    #   @return [Array<Types::Pentest>]
    # @!attribute failed
    #   <p>The list of pentests that failed to delete, including the reason for each failure.</p>
    #   @return [Array<Types::DeletePentestFailure>]
    class BatchDeletePentestsOutput < Struct.new(
      nil,
      :deleted,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to remove requirements from.</p>
    #   @return [String]
    # @!attribute security_requirement_names
    #   <p>The list of security requirement names to delete.</p>
    #   @return [Array<String>]
    class BatchDeleteSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :security_requirement_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deleted_security_requirement_names
    #   <p>The list of security requirement names that were successfully deleted.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>The list of errors for security requirements that failed to be deleted.</p>
    #   @return [Array<Types::BatchSecurityRequirementError>]
    class BatchDeleteSecurityRequirementsOutput < Struct.new(
      nil,
      :deleted_security_requirement_names,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting multiple threat models.</p>
    # @!attribute threat_model_ids
    #   <p>The list of threat model identifiers to delete.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat models to delete.</p>
    #   @return [String]
    class BatchDeleteThreatModelsInput < Struct.new(
      nil,
      :threat_model_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchDeleteThreatModels operation.</p>
    # @!attribute deleted
    #   <p>The list of threat model identifiers that were successfully deleted.</p>
    #   @return [Array<String>]
    # @!attribute failed
    #   <p>The list of threat models that failed to delete, including the reason for each failure.</p>
    #   @return [Array<Types::DeleteThreatModelFailure>]
    class BatchDeleteThreatModelsOutput < Struct.new(
      nil,
      :deleted,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A finding that failed to disassociate, with the cause of the failure.</p>
    # @!attribute finding_id
    #   <p>The identifier of the finding that failed to disassociate.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The machine-readable failure category.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A customer-facing explanation of the failure.</p>
    #   @return [String]
    class BatchDisassociateFindingIssueError < Struct.new(
      nil,
      :finding_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the BatchDisassociateFindingIssue operation.</p>
    # @!attribute agent_space_id
    #   <p>The identifier of the agent space where the job exists.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The identifier of the penetration test job. This parameter is mutually exclusive with <code>codeReviewJobId</code>.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The identifier of the code review job. This parameter is mutually exclusive with <code>pentestJobId</code>.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The identifiers of the findings to disassociate from their issues. Each must belong to the specified job.</p>
    #   @return [Array<String>]
    class BatchDisassociateFindingIssueInput < Struct.new(
      nil,
      :agent_space_id,
      :pentest_job_id,
      :code_review_job_id,
      :finding_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the BatchDisassociateFindingIssue operation.</p>
    # @!attribute errors
    #   <p>The findings whose issue could not be disassociated.</p>
    #   @return [Array<Types::BatchDisassociateFindingIssueError>]
    class BatchDisassociateFindingIssueOutput < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A finding whose issue could not be created, with the cause of the failure.</p>
    # @!attribute finding_id
    #   <p>The identifier of the finding this error corresponds to.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The machine-readable failure category.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A customer-facing explanation of why the issue could not be created.</p>
    #   @return [String]
    class BatchExportFindingError < Struct.new(
      nil,
      :finding_id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A finding whose issue was created.</p>
    # @!attribute finding_id
    #   <p>The identifier of the finding this result corresponds to.</p>
    #   @return [String]
    # @!attribute linked_issue
    #   <p>The issue that was created for the finding.</p>
    #   @return [Types::LinkedIssue]
    class BatchExportFindingResult < Struct.new(
      nil,
      :finding_id,
      :linked_issue,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input for the BatchExportFindings operation.</p>
    # @!attribute agent_space_id
    #   <p>The identifier of the agent space where the job exists.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The identifier of the penetration test job. This parameter is mutually exclusive with <code>codeReviewJobId</code>.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The identifier of the code review job. This parameter is mutually exclusive with <code>pentestJobId</code>.</p>
    #   @return [String]
    # @!attribute issue_destination
    #   <p>The destination issue-tracker project the findings are exported to. Must be a connected capability of the agent space.</p>
    #   @return [Types::IssueDestination]
    # @!attribute finding_ids
    #   <p>The identifiers of the findings to export. Each must belong to the specified job.</p>
    #   @return [Array<String>]
    class BatchExportFindingsInput < Struct.new(
      nil,
      :agent_space_id,
      :pentest_job_id,
      :code_review_job_id,
      :issue_destination,
      :finding_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output for the BatchExportFindings operation.</p>
    # @!attribute results
    #   <p>The findings whose issue was created, each with its linked issue.</p>
    #   @return [Array<Types::BatchExportFindingResult>]
    # @!attribute errors
    #   <p>The findings whose issue could not be created, each with a customer-facing reason.</p>
    #   @return [Array<Types::BatchExportFindingError>]
    class BatchExportFindingsOutput < Struct.new(
      nil,
      :results,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for batch retrieving agent spaces.</p>
    # @!attribute agent_space_ids
    #   <p>The list of agent space identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetAgentSpacesInput < Struct.new(
      nil,
      :agent_space_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetAgentSpaces operation.</p>
    # @!attribute agent_spaces
    #   <p>The list of agent spaces that were found.</p>
    #   @return [Array<Types::AgentSpace>]
    # @!attribute not_found
    #   <p>The list of agent space identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetAgentSpacesOutput < Struct.new(
      nil,
      :agent_spaces,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifacts.</p>
    #   @return [String]
    # @!attribute artifact_ids
    #   <p>The list of artifact identifiers to retrieve metadata for.</p>
    #   @return [Array<String>]
    class BatchGetArtifactMetadataInput < Struct.new(
      nil,
      :agent_space_id,
      :artifact_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute artifact_metadata_list
    #   <p>The list of artifact metadata items that were found.</p>
    #   @return [Array<Types::ArtifactMetadataItem>]
    class BatchGetArtifactMetadataOutput < Struct.new(
      nil,
      :artifact_metadata_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple tasks associated with a code review job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    #   @return [String]
    # @!attribute code_review_job_task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetCodeReviewJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :code_review_job_task_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetCodeReviewJobTasks operation.</p>
    # @!attribute code_review_job_tasks
    #   <p>The list of code review job tasks that were found.</p>
    #   @return [Array<Types::CodeReviewJobTask>]
    # @!attribute not_found
    #   <p>The list of task identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetCodeReviewJobTasksOutput < Struct.new(
      nil,
      :code_review_job_tasks,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for BatchGetCodeReviewJobs operation.</p>
    # @!attribute code_review_job_ids
    #   <p>The list of code review job identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review jobs.</p>
    #   @return [String]
    class BatchGetCodeReviewJobsInput < Struct.new(
      nil,
      :code_review_job_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetCodeReviewJobs operation.</p>
    # @!attribute code_review_jobs
    #   <p>The list of code review jobs that were found.</p>
    #   @return [Array<Types::CodeReviewJob>]
    # @!attribute not_found
    #   <p>The list of code review job identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetCodeReviewJobsOutput < Struct.new(
      nil,
      :code_review_jobs,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple code reviews by their IDs.</p>
    # @!attribute code_review_ids
    #   <p>The list of code review identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code reviews.</p>
    #   @return [String]
    class BatchGetCodeReviewsInput < Struct.new(
      nil,
      :code_review_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetCodeReviews operation.</p>
    # @!attribute code_reviews
    #   <p>The list of code reviews that were found.</p>
    #   @return [Array<Types::CodeReview>]
    # @!attribute not_found
    #   <p>The list of code review identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetCodeReviewsOutput < Struct.new(
      nil,
      :code_reviews,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for BatchGetFindings operation.</p>
    # @!attribute finding_ids
    #   <p>The list of finding identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the findings.</p>
    #   @return [String]
    class BatchGetFindingsInput < Struct.new(
      nil,
      :finding_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetFindings operation.</p>
    # @!attribute findings
    #   <p>The list of findings that were found.</p>
    #   @return [Array<Types::Finding>]
    # @!attribute not_found
    #   <p>The list of finding identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetFindingsOutput < Struct.new(
      nil,
      :findings,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple tasks associated with a pentest job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    #   @return [String]
    # @!attribute task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetPentestJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :task_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetPentestJobTasks operation.</p>
    # @!attribute tasks
    #   <p>The list of tasks that were found.</p>
    #   @return [Array<Types::Task>]
    # @!attribute not_found
    #   <p>The list of task identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetPentestJobTasksOutput < Struct.new(
      nil,
      :tasks,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for BatchGetPentestJobs operation.</p>
    # @!attribute pentest_job_ids
    #   <p>The list of pentest job identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest jobs.</p>
    #   @return [String]
    class BatchGetPentestJobsInput < Struct.new(
      nil,
      :pentest_job_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetPentestJobs operation.</p>
    # @!attribute pentest_jobs
    #   <p>The list of pentest jobs that were found.</p>
    #   @return [Array<Types::PentestJob>]
    # @!attribute not_found
    #   <p>The list of pentest job identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetPentestJobsOutput < Struct.new(
      nil,
      :pentest_jobs,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple pentests by their IDs.</p>
    # @!attribute pentest_ids
    #   <p>The list of pentest identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentests.</p>
    #   @return [String]
    class BatchGetPentestsInput < Struct.new(
      nil,
      :pentest_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetPentests operation.</p>
    # @!attribute pentests
    #   <p>The list of pentests that were found.</p>
    #   @return [Array<Types::Pentest>]
    # @!attribute not_found
    #   <p>The list of pentest identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetPentestsOutput < Struct.new(
      nil,
      :pentests,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a successfully retrieved security requirement.</p>
    # @!attribute pack_id
    #   <p>The unique identifier of the pack containing the security requirement.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The security domain the requirement belongs to.</p>
    #   @return [String]
    # @!attribute evaluation
    #   <p>The evaluation criteria used to assess compliance with this requirement.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The recommended remediation steps when the requirement is not met.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the security requirement was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the security requirement was last updated, in UTC format.</p>
    #   @return [Time]
    class BatchGetSecurityRequirementResult < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to retrieve requirements from.</p>
    #   @return [String]
    # @!attribute security_requirement_names
    #   <p>The list of security requirement names to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :security_requirement_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_requirements
    #   <p>The list of security requirements that were successfully retrieved.</p>
    #   @return [Array<Types::BatchGetSecurityRequirementResult>]
    # @!attribute errors
    #   <p>The list of errors for security requirements that failed to be retrieved.</p>
    #   @return [Array<Types::BatchSecurityRequirementError>]
    class BatchGetSecurityRequirementsOutput < Struct.new(
      nil,
      :security_requirements,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for batch retrieving target domains.</p>
    # @!attribute target_domain_ids
    #   <p>The list of target domain identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetTargetDomainsInput < Struct.new(
      nil,
      :target_domain_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetTargetDomains operation.</p>
    # @!attribute target_domains
    #   <p>The list of target domains that were found.</p>
    #   @return [Array<Types::TargetDomain>]
    # @!attribute not_found
    #   <p>The list of target domain identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetTargetDomainsOutput < Struct.new(
      nil,
      :target_domains,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple tasks associated with a threat model job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the tasks.</p>
    #   @return [String]
    # @!attribute threat_model_job_task_ids
    #   <p>The list of task identifiers to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetThreatModelJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :threat_model_job_task_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetThreatModelJobTasks operation.</p>
    # @!attribute threat_model_job_tasks
    #   <p>The list of threat model job tasks that were found.</p>
    #   @return [Array<Types::ThreatModelJobTask>]
    # @!attribute not_found
    #   <p>The list of task identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetThreatModelJobTasksOutput < Struct.new(
      nil,
      :threat_model_job_tasks,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for BatchGetThreatModelJobs operation.</p>
    # @!attribute threat_model_job_ids
    #   <p>The list of threat model job identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model jobs.</p>
    #   @return [String]
    class BatchGetThreatModelJobsInput < Struct.new(
      nil,
      :threat_model_job_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetThreatModelJobs operation.</p>
    # @!attribute threat_model_jobs
    #   <p>The list of threat model jobs that were found.</p>
    #   @return [Array<Types::ThreatModelJob>]
    # @!attribute not_found
    #   <p>The list of threat model job identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetThreatModelJobsOutput < Struct.new(
      nil,
      :threat_model_jobs,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple threat models by their IDs.</p>
    # @!attribute threat_model_ids
    #   <p>The list of threat model identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat models.</p>
    #   @return [String]
    class BatchGetThreatModelsInput < Struct.new(
      nil,
      :threat_model_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetThreatModels operation.</p>
    # @!attribute threat_models
    #   <p>The list of threat models that were found.</p>
    #   @return [Array<Types::ThreatModel>]
    # @!attribute not_found
    #   <p>The list of threat model identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetThreatModelsOutput < Struct.new(
      nil,
      :threat_models,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for retrieving multiple threats.</p>
    # @!attribute threat_ids
    #   <p>The list of threat identifiers to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    class BatchGetThreatsInput < Struct.new(
      nil,
      :threat_ids,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the BatchGetThreats operation.</p>
    # @!attribute threats
    #   <p>The list of threats that were found.</p>
    #   @return [Array<Types::Threat>]
    # @!attribute not_found
    #   <p>The list of threat identifiers that were not found.</p>
    #   @return [Array<String>]
    class BatchGetThreatsOutput < Struct.new(
      nil,
      :threats,
      :not_found,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an error that occurred for a specific security requirement during a batch operation.</p>
    # @!attribute security_requirement_name
    #   <p>The name of the security requirement that caused the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class BatchSecurityRequirementError < Struct.new(
      nil,
      :security_requirement_name,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack containing the requirements to update.</p>
    #   @return [String]
    # @!attribute security_requirements
    #   <p>The list of security requirement updates to apply.</p>
    #   @return [Array<Types::UpdateSecurityRequirementEntry>]
    class BatchUpdateSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :security_requirements,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute updated_security_requirement_names
    #   <p>The list of security requirement names that were successfully updated.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>The list of errors for security requirements that failed to be updated.</p>
    #   @return [Array<Types::BatchSecurityRequirementError>]
    class BatchUpdateSecurityRequirementsOutput < Struct.new(
      nil,
      :updated_security_requirement_names,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection details for a self-managed Bitbucket Data Center integration.</p>
    # @!attribute target_url
    #   <p>The HTTPS URL of your Bitbucket Data Center instance, for example <code>https://bitbucket.example.com</code>.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The OAuth 2.0 authorization code returned to your redirect URL after the connection is authorized.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state value returned by <code>InitiateProviderRegistration</code> and echoed back on the authorization redirect.</p>
    #   @return [String]
    class BitbucketDataCenterIntegrationInput < Struct.new(
      nil,
      :target_url,
      :code,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for creating a Bitbucket integration.</p>
    # @!attribute installation_id
    #   <p>The Atlassian installation identifier, available from the Atlassian administration console.</p>
    #   @return [String]
    # @!attribute workspace
    #   <p>The Bitbucket workspace slug that identifies the workspace to integrate, for example acme-corp.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The OAuth 2.0 authorization code returned from the consent redirect.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state token echoed back from the OAuth redirect.</p>
    #   @return [String]
    class BitbucketIntegrationInput < Struct.new(
      nil,
      :installation_id,
      :workspace,
      :code,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an integrated Bitbucket repository.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>Provider Id of the resource e.g. GitHub repository id, etc.</p>
    #   @return [String]
    # @!attribute workspace
    #   <p>The workspace slug that owns the repository.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>Defines the visibility level of provider resources. PRIVATE indicates restricted access, while PUBLIC indicates open access.</p>
    #   @return [String]
    class BitbucketRepositoryMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :workspace,
      :access_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Bitbucket repository integrated as a resource.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute workspace
    #   <p>The workspace slug that owns the repository.</p>
    #   @return [String]
    class BitbucketRepositoryResource < Struct.new(
      nil,
      :name,
      :workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capabilities for an integrated Bitbucket repository.</p>
    # @!attribute trigger_filter_groups
    #   <p>The filter groups that control which pull request events start an automatic code review when <code>leaveComments</code> is enabled. A review starts when any group matches. If you omit this, a review starts on <code>PULL_REQUEST_READY_FOR_REVIEW</code> events.</p>
    #   @return [Array<Types::TriggerFilterGroup>]
    # @!attribute leave_comments
    #   <p>Whether to post code review comments on pull requests.</p>
    #   @return [Boolean]
    # @!attribute remediate_code
    #   <p>Whether to create pull requests with automated fixes.</p>
    #   @return [Boolean]
    class BitbucketResourceCapabilities < Struct.new(
      nil,
      :trigger_filter_groups,
      :leave_comments,
      :remediate_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source of a trusted CA certificate. Exactly one member must be set.</p>
    # @!attribute inline_pem
    #   <p>A PEM-encoded X.509 certificate supplied inline.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The artifact ID of an uploaded certificate file.</p>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The Amazon S3 location URI of a customer-staged certificate.</p>
    #   @return [String]
    class CaCertificateSource < Struct.new(
      :inline_pem,
      :artifact_id,
      :s3_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class InlinePem < CaCertificateSource; end
      class ArtifactId < CaCertificateSource; end
      class S3Location < CaCertificateSource; end
      class Unknown < CaCertificateSource; end
    end

    # <p>Represents a category assigned to a security testing task.</p>
    # @!attribute name
    #   <p>The name of the category.</p>
    #   @return [String]
    # @!attribute is_primary
    #   <p>Indicates whether this is the primary category for the task.</p>
    #   @return [Boolean]
    class Category < Struct.new(
      nil,
      :name,
      :is_primary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that enables a pentest to run as part of a CI/CD pipeline, scoped to the code changes in each pipeline run.</p>
    # @!attribute enabled
    #   <p>Whether CI/CD pentesting is enabled for this pentest.</p>
    #   @return [Boolean]
    class CiCdConfiguration < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch Logs configuration for pentest job logging.</p>
    # @!attribute log_group
    #   <p>The name of the CloudWatch log group.</p>
    #   @return [String]
    # @!attribute log_stream
    #   <p>The name of the CloudWatch log stream.</p>
    #   @return [String]
    class CloudWatchLog < Struct.new(
      nil,
      :log_group,
      :log_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a location in source code associated with a security finding.</p>
    # @!attribute file_path
    #   <p>The absolute path to the file containing the code location.</p>
    #   @return [String]
    # @!attribute line_start
    #   <p>The starting line number of the code location.</p>
    #   @return [Integer]
    # @!attribute line_end
    #   <p>The ending line number of the code location.</p>
    #   @return [Integer]
    # @!attribute label
    #   <p>The role of this location in the vulnerability, such as source or sink.</p>
    #   @return [String]
    class CodeLocation < Struct.new(
      nil,
      :file_path,
      :line_start,
      :line_end,
      :label,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a code remediation task that was initiated to fix a security finding.</p>
    # @!attribute status
    #   <p>The current status of the code remediation task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the code remediation task.</p>
    #   @return [String]
    # @!attribute task_details
    #   <p>The list of details for the code remediation task, including repository name, code diff link, and pull request link.</p>
    #   @return [Array<Types::CodeRemediationTaskDetails>]
    class CodeRemediationTask < Struct.new(
      nil,
      :status,
      :status_reason,
      :task_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details about a code remediation task, including links to the code diff and pull request.</p>
    # @!attribute repo_name
    #   <p>The name of the repository where the remediation was applied.</p>
    #   @return [String]
    # @!attribute code_diff_link
    #   <p>The link to the code diff for the remediation.</p>
    #   @return [String]
    # @!attribute pull_request_link
    #   <p>The link to the pull request created for the remediation.</p>
    #   @return [String]
    class CodeRemediationTaskDetails < Struct.new(
      nil,
      :repo_name,
      :code_diff_link,
      :pull_request_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a code review configuration that defines the parameters for automated security-focused code analysis, including target assets and logging configuration.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the code review.</p>
    #   @return [Types::Assets]
    # @!attribute service_role
    #   <p>The IAM service role used for the code review.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the code review.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the code review.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The validation mode for the code review. Valid values are SIMULATED and DISABLED.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this code review. If a job reaches the configured limit, it is gracefully stopped. If not set, jobs run to completion with no budget cap.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute created_at
    #   <p>The date and time the code review was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReview < Struct.new(
      nil,
      :code_review_id,
      :agent_space_id,
      :title,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours,
      :report_destination,
      :report_filters,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a code review job, which is an execution instance of a code review. A code review job progresses through preflight, static analysis, and finalizing steps.</p>
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the job.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review job.</p>
    #   @return [String]
    # @!attribute overview
    #   <p>An overview of the code review job results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code review job.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>The list of documents providing context for the code review job.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute source_code
    #   <p>The list of source code repositories analyzed during the code review job.</p>
    #   @return [Array<Types::SourceCodeRepository>]
    # @!attribute steps
    #   <p>The list of steps in the code review job execution.</p>
    #   @return [Array<Types::Step>]
    # @!attribute execution_context
    #   <p>The execution context messages for the code review job.</p>
    #   @return [Array<Types::ExecutionContext>]
    # @!attribute service_role
    #   <p>The IAM service role used for the code review job.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the code review job.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute error_information
    #   <p>Error information if the code review job encountered an error.</p>
    #   @return [Types::ErrorInformation]
    # @!attribute integrated_repositories
    #   <p>The list of integrated repositories associated with the code review job.</p>
    #   @return [Array<Types::IntegratedRepository>]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the code review job.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for this code review job. If the cumulative task hours reach this limit, the job is gracefully stopped.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute created_at
    #   <p>The date and time the code review job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review job was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReviewJob < Struct.new(
      nil,
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
      :report_destination,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a code review job.</p>
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the job.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code review job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the code review job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review job was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReviewJobSummary < Struct.new(
      nil,
      :code_review_job_id,
      :code_review_id,
      :title,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual security test task within a code review job. Each task targets a specific risk type and executes independently.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the task.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the task.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The list of categories assigned to the task.</p>
    #   @return [Array<Types::Category>]
    # @!attribute risk_type
    #   <p>The type of security risk the task is testing for.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute logs_location
    #   <p>The location of the task execution logs.</p>
    #   @return [Types::LogLocation]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReviewJobTask < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a code review job task.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the task.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>The type of security risk the task is testing for.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReviewJobTaskSummary < Struct.new(
      nil,
      :task_id,
      :code_review_id,
      :code_review_job_id,
      :agent_space_id,
      :title,
      :risk_type,
      :execution_status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The code review settings for an agent space, controlling which types of scanning are enabled.</p>
    # @!attribute controls_scanning
    #   <p>Indicates whether controls scanning is enabled for code reviews.</p>
    #   @return [Boolean]
    # @!attribute general_purpose_scanning
    #   <p>Indicates whether general-purpose scanning is enabled for code reviews.</p>
    #   @return [Boolean]
    class CodeReviewSettings < Struct.new(
      nil,
      :controls_scanning,
      :general_purpose_scanning,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a code review.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the code review was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review was last updated, in UTC format.</p>
    #   @return [Time]
    class CodeReviewSummary < Struct.new(
      nil,
      :code_review_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be completed due to a conflict with the current state of the resource.</p>
    # @!attribute message
    #   <p>Error description.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an integrated Confluence document.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>Provider Id of the resource e.g. GitHub repository id, etc.</p>
    #   @return [String]
    # @!attribute space_key
    #   <p>The Confluence space key containing the document.</p>
    #   @return [String]
    # @!attribute page_id
    #   <p>The Confluence page identifier.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The display title of the Confluence page.</p>
    #   @return [String]
    # @!attribute space_title
    #   <p>The display title of the Confluence space.</p>
    #   @return [String]
    class ConfluenceDocumentMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :space_key,
      :page_id,
      :title,
      :space_title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A Confluence document (page) integrated as a resource.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute space_key
    #   <p>The Confluence space key containing the document.</p>
    #   @return [String]
    # @!attribute page_id
    #   <p>The Confluence page identifier.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The display title of the Confluence page.</p>
    #   @return [String]
    # @!attribute space_title
    #   <p>The display title of the Confluence space.</p>
    #   @return [String]
    class ConfluenceDocumentResource < Struct.new(
      nil,
      :name,
      :space_key,
      :page_id,
      :title,
      :space_title,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for creating a Confluence integration.</p>
    # @!attribute installation_id
    #   <p>The Atlassian installation identifier, available from the Atlassian administration console.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The OAuth 2.0 authorization code returned from the consent redirect.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state token echoed back from the OAuth redirect.</p>
    #   @return [String]
    # @!attribute site_url
    #   <p>The Confluence Cloud site URL, for example https://mysite.atlassian.net.</p>
    #   @return [String]
    class ConfluenceIntegrationInput < Struct.new(
      nil,
      :installation_id,
      :code,
      :state,
      :site_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capabilities for an integrated Confluence space.</p>
    # @!attribute fetch_document
    #   <p>Whether to fetch documents from this space.</p>
    #   @return [Boolean]
    # @!attribute create_document
    #   <p>Whether to create documents in this space.</p>
    #   @return [Boolean]
    # @!attribute update_document
    #   <p>Whether to update documents in this space.</p>
    #   @return [Boolean]
    class ConfluenceResourceCapabilities < Struct.new(
      nil,
      :fetch_document,
      :create_document,
      :update_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new agent space.</p>
    # @!attribute name
    #   <p>The name of the agent space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the agent space.</p>
    #   @return [String]
    # @!attribute aws_resources
    #   <p>The AWS resources to associate with the agent space.</p>
    #   @return [Types::AWSResources]
    # @!attribute target_domain_ids
    #   <p>The list of target domain identifiers to associate with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute code_review_settings
    #   <p>The code review settings for the agent space.</p>
    #   @return [Types::CodeReviewSettings]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key to use for encrypting data in the agent space.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the agent space.</p>
    #   @return [Hash<String, String>]
    class CreateAgentSpaceInput < Struct.new(
      nil,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreateAgentSpace operation.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the created agent space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent space.</p>
    #   @return [String]
    # @!attribute aws_resources
    #   <p>The AWS resources associated with the agent space.</p>
    #   @return [Types::AWSResources]
    # @!attribute target_domain_ids
    #   <p>The list of target domain identifiers associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute code_review_settings
    #   <p>The code review settings for the agent space.</p>
    #   @return [Types::CodeReviewSettings]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt data in the agent space.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the agent space was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the agent space was last updated, in UTC format.</p>
    #   @return [Time]
    class CreateAgentSpaceOutput < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :kms_key_id,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute idc_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center instance to associate with the application.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to associate with the application.</p>
    #   @return [String]
    # @!attribute default_kms_key_id
    #   <p>The identifier of the default AWS KMS key to use for encrypting data in the application.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the application.</p>
    #   @return [Hash<String, String>]
    class CreateApplicationRequest < Struct.new(
      nil,
      :idc_instance_arn,
      :role_arn,
      :default_kms_key_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the created application.</p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new code review.</p>
    # @!attribute title
    #   <p>The title of the code review.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to create the code review in.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets to include in the code review, such as documents and source code.</p>
    #   @return [Types::Assets]
    # @!attribute service_role
    #   <p>The IAM service role to use for the code review.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the code review.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the code review. Valid values are AUTOMATIC and DISABLED.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The validation mode for the code review. Valid values are SIMULATED and DISABLED.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this code review. Must be a positive number. If not set, jobs run to completion with no budget cap.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    class CreateCodeReviewInput < Struct.new(
      nil,
      :title,
      :agent_space_id,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours,
      :report_destination,
      :report_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreateCodeReview operation.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the created code review.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the code review was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute assets
    #   <p>The assets included in the code review.</p>
    #   @return [Types::Assets]
    # @!attribute service_role
    #   <p>The IAM service role used for the code review.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the code review.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    #   @return [String]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the code review.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The validation mode for the code review.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours configured for jobs started from this code review. Null if no budget cap is set.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    class CreateCodeReviewOutput < Struct.new(
      nil,
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
      :max_task_hours,
      :report_destination,
      :report_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute provider
    #   <p>The integration provider.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The provider-specific input required to create the integration.</p>
    #   @return [Types::ProviderInput]
    # @!attribute integration_display_name
    #   <p>The display name for the integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key to use for encrypting data associated with the integration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the integration.</p>
    #   @return [Hash<String, String>]
    # @!attribute private_connection_name
    #   <p>The name of an active private connection used to reach a self-hosted provider instance over private networking. Specify this when the instance is not publicly reachable.</p>
    #   @return [String]
    class CreateIntegrationInput < Struct.new(
      nil,
      :provider,
      :input,
      :integration_display_name,
      :kms_key_id,
      :tags,
      :private_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_id
    #   <p>The unique identifier of the created integration.</p>
    #   @return [String]
    class CreateIntegrationOutput < Struct.new(
      nil,
      :integration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for adding a single member to an agent space.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to grant access to.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier for the membership.</p>
    #   @return [String]
    # @!attribute member_type
    #   <p>The type of member. Currently, only USER is supported.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The configuration for the membership, such as the user role.</p>
    #   @return [Types::MembershipConfig]
    class CreateMembershipRequest < Struct.new(
      nil,
      :application_id,
      :agent_space_id,
      :membership_id,
      :member_type,
      :config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for adding a single member to an agent space.</p>
    class CreateMembershipResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new pentest.</p>
    # @!attribute title
    #   <p>The title of the pentest.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to create the pentest in.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets to include in the pentest, such as endpoints, actors, documents, and source code.</p>
    #   @return [Types::Assets]
    # @!attribute exclude_risk_types
    #   <p>The list of risk types to exclude from the pentest.</p>
    #   @return [Array<String>]
    # @!attribute service_role
    #   <p>The IAM service role to use for the pentest.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the pentest.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the pentest.</p>
    #   @return [Types::VpcConfig]
    # @!attribute network_traffic_config
    #   <p>The network traffic configuration for the pentest, including custom headers and traffic rules.</p>
    #   @return [Types::NetworkTrafficConfig]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the pentest. Valid values are AUTOMATIC and DISABLED.</p>
    #   @return [String]
    # @!attribute disable_managed_skills
    #   <p>A list of managed skills to disable for this pentest. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    #   @return [Array<String>]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this pentest. Must be a positive number. If not set, jobs run to completion with no budget cap.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute cicd_configuration
    #   <p>The CI/CD pentesting configuration to apply to the pentest.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    class CreatePentestInput < Struct.new(
      nil,
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
      :max_task_hours,
      :report_destination,
      :report_filters,
      :cicd_configuration,
      :test_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreatePentest operation.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the created pentest.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the pentest was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute assets
    #   <p>The assets included in the pentest.</p>
    #   @return [Types::Assets]
    # @!attribute exclude_risk_types
    #   <p>The list of risk types excluded from the pentest.</p>
    #   @return [Array<String>]
    # @!attribute service_role
    #   <p>The IAM service role used for the pentest.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the pentest.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    #   @return [String]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute cicd_configuration
    #   <p>The CI/CD pentesting configuration applied to the pentest.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    class CreatePentestOutput < Struct.new(
      nil,
      :pentest_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :agent_space_id,
      :report_destination,
      :report_filters,
      :cicd_configuration,
      :test_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_connection_name
    #   <p>A unique name for the private connection within your account.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The configuration for the private connection. Specify either a service-managed or a self-managed mode.</p>
    #   @return [Types::PrivateConnectionMode]
    # @!attribute tags
    #   <p>The tags to attach to the private connection.</p>
    #   @return [Hash<String, String>]
    class CreatePrivateConnectionInput < Struct.new(
      nil,
      :private_connection_name,
      :mode,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the private connection, indicating whether it is service-managed or self-managed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the private connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The identifier or ARN of the VPC Lattice resource gateway.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the resource gateway is created in.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the VPC Lattice resource configuration.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The date and time the connection's certificate expires, in UTC format.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message describing why the private connection entered a failed state, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the private connection.</p>
    #   @return [Hash<String, String>]
    class CreatePrivateConnectionOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for a security requirement to create within a pack.</p>
    # @!attribute name
    #   <p>The name of the security requirement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The security domain the requirement belongs to.</p>
    #   @return [String]
    # @!attribute evaluation
    #   <p>The evaluation criteria used to assess compliance with this requirement.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The recommended remediation steps when the requirement is not met.</p>
    #   @return [String]
    class CreateSecurityRequirementEntry < Struct.new(
      nil,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the security requirement pack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the pack. Defaults to ENABLED if not provided.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt pack contents.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the security requirement pack.</p>
    #   @return [Hash<String, String>]
    class CreateSecurityRequirementPackInput < Struct.new(
      nil,
      :name,
      :description,
      :status,
      :kms_key_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the created security requirement pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the created security requirement pack.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt pack contents.</p>
    #   @return [String]
    class CreateSecurityRequirementPackOutput < Struct.new(
      nil,
      :pack_id,
      :status,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new target domain.</p>
    # @!attribute target_domain_name
    #   <p>The domain name to register as a target domain.</p>
    #   @return [String]
    # @!attribute verification_method
    #   <p>The method to use for verifying domain ownership. Valid values are DNS_TXT, HTTP_ROUTE, and PRIVATE_VPC.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the target domain.</p>
    #   @return [Hash<String, String>]
    class CreateTargetDomainInput < Struct.new(
      nil,
      :target_domain_name,
      :verification_method,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreateTargetDomain operation.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the created target domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The current verification status of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>The reason for the current target domain verification status.</p>
    #   @return [String]
    # @!attribute verification_details
    #   <p>The verification details for the target domain, including the verification token and instructions.</p>
    #   @return [Types::VerificationDetails]
    # @!attribute created_at
    #   <p>The date and time the target domain was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute verified_at
    #   <p>The date and time the target domain was verified, in UTC format.</p>
    #   @return [Time]
    class CreateTargetDomainOutput < Struct.new(
      nil,
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new threat.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job the threat belongs to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of the threat.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Optional customer comment on the threat.</p>
    #   @return [String]
    # @!attribute stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    #   @return [Array<String>]
    # @!attribute threat_source
    #   <p>The actor or origin of the threat.</p>
    #   @return [String]
    # @!attribute prerequisites
    #   <p>The conditions required for the threat to be exploitable.</p>
    #   @return [String]
    # @!attribute threat_action
    #   <p>What the threat source can do.</p>
    #   @return [String]
    # @!attribute threat_impact
    #   <p>The direct consequence of the threat action.</p>
    #   @return [String]
    # @!attribute impacted_goal
    #   <p>The security goals affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute impacted_assets
    #   <p>The specific assets affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute anchor
    #   <p>The DFD element this threat is anchored to.</p>
    #   @return [Types::ThreatAnchorShape]
    # @!attribute evidence
    #   <p>The source code files supporting the threat.</p>
    #   @return [Array<Types::ThreatEvidenceShape>]
    # @!attribute recommendation
    #   <p>The recommended mitigation guidance for this threat.</p>
    #   @return [String]
    class CreateThreatInput < Struct.new(
      nil,
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
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating a new threat model.</p>
    # @!attribute title
    #   <p>The title of the threat model.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to create the threat model in.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application or system being threat modeled.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets to include in the threat model.</p>
    #   @return [Types::Assets]
    # @!attribute scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute service_role
    #   <p>The IAM service role to use for the threat model.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the threat model.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    class CreateThreatModelInput < Struct.new(
      nil,
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreateThreatModel operation.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the created threat model.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application or system being threat modeled.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the threat model.</p>
    #   @return [Types::Assets]
    # @!attribute scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute service_role
    #   <p>The IAM service role used for the threat model.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the threat model.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute created_at
    #   <p>The date and time the threat model was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    class CreateThreatModelOutput < Struct.new(
      nil,
      :threat_model_id,
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :created_at,
      :updated_at,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the CreateThreat operation.</p>
    # @!attribute threat_id
    #   <p>The unique identifier of the created threat.</p>
    #   @return [String]
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job the threat belongs to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of the threat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Optional customer comment on the threat.</p>
    #   @return [String]
    # @!attribute stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    #   @return [Array<String>]
    # @!attribute threat_source
    #   <p>The actor or origin of the threat.</p>
    #   @return [String]
    # @!attribute prerequisites
    #   <p>The conditions required for the threat to be exploitable.</p>
    #   @return [String]
    # @!attribute threat_action
    #   <p>What the threat source can do.</p>
    #   @return [String]
    # @!attribute threat_impact
    #   <p>The direct consequence of the threat action.</p>
    #   @return [String]
    # @!attribute impacted_goal
    #   <p>The security goals affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute impacted_assets
    #   <p>The specific assets affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute anchor
    #   <p>The DFD element this threat is anchored to.</p>
    #   @return [Types::ThreatAnchorShape]
    # @!attribute evidence
    #   <p>The source code files supporting the threat.</p>
    #   @return [Array<Types::ThreatEvidenceShape>]
    # @!attribute recommendation
    #   <p>The recommended mitigation guidance for this threat.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Who created this threat.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>Who last updated this threat.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat was last updated, in UTC format.</p>
    #   @return [Time]
    class CreateThreatOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A custom HTTP header to include in network traffic during penetration testing.</p>
    # @!attribute name
    #   <p>The name of the custom header.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the custom header.</p>
    #   @return [String]
    class CustomHeader < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting an agent space.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to delete.</p>
    #   @return [String]
    class DeleteAgentSpaceInput < Struct.new(
      nil,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the DeleteAgentSpace operation.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the deleted agent space.</p>
    #   @return [String]
    class DeleteAgentSpaceOutput < Struct.new(
      nil,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application to delete.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact to delete.</p>
    #   @return [String]
    class DeleteArtifactInput < Struct.new(
      nil,
      :agent_space_id,
      :artifact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteArtifactOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a code review that failed to delete.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review that failed to delete.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the code review failed to delete.</p>
    #   @return [String]
    class DeleteCodeReviewFailure < Struct.new(
      nil,
      :code_review_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_id
    #   <p>The unique identifier of the integration to delete.</p>
    #   @return [String]
    class DeleteIntegrationInput < Struct.new(
      nil,
      :integration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIntegrationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for removing a single member from an agent space.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to revoke access from.</p>
    #   @return [String]
    # @!attribute membership_id
    #   <p>The unique identifier of the membership to delete.</p>
    #   @return [String]
    # @!attribute member_type
    #   <p>The type of member to remove.</p>
    #   @return [String]
    class DeleteMembershipRequest < Struct.new(
      nil,
      :application_id,
      :agent_space_id,
      :membership_id,
      :member_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for removing a single member from an agent space.</p>
    class DeleteMembershipResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a pentest that failed to delete.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest that failed to delete.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the pentest failed to delete.</p>
    #   @return [String]
    class DeletePentestFailure < Struct.new(
      nil,
      :pentest_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_connection_name
    #   <p>The name of the private connection to delete.</p>
    #   @return [String]
    class DeletePrivateConnectionInput < Struct.new(
      nil,
      :private_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the private connection, indicating whether it is service-managed or self-managed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the private connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The identifier or ARN of the VPC Lattice resource gateway.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the resource gateway is created in.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the VPC Lattice resource configuration.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The date and time the connection's certificate expires, in UTC format.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message describing why the private connection entered a failed state, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the private connection.</p>
    #   @return [Hash<String, String>]
    class DeletePrivateConnectionOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to delete.</p>
    #   @return [String]
    class DeleteSecurityRequirementPackInput < Struct.new(
      nil,
      :pack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSecurityRequirementPackOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for deleting a target domain.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain to delete.</p>
    #   @return [String]
    class DeleteTargetDomainInput < Struct.new(
      nil,
      :target_domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the DeleteTargetDomain operation.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the deleted target domain.</p>
    #   @return [String]
    class DeleteTargetDomainOutput < Struct.new(
      nil,
      :target_domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a threat model that failed to delete.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model that failed to delete.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason the threat model failed to delete.</p>
    #   @return [String]
    class DeleteThreatModelFailure < Struct.new(
      nil,
      :threat_model_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_connection_name
    #   <p>The name of the private connection to describe.</p>
    #   @return [String]
    class DescribePrivateConnectionInput < Struct.new(
      nil,
      :private_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the private connection, indicating whether it is service-managed or self-managed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the private connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The identifier or ARN of the VPC Lattice resource gateway.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the resource gateway is created in.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the VPC Lattice resource configuration.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The date and time the connection's certificate expires, in UTC format.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message describing why the private connection entered a failed state, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the private connection.</p>
    #   @return [Hash<String, String>]
    class DescribePrivateConnectionOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source of the diff for a differential code scan.</p>
    # @!attribute s3_uri
    #   <p>S3 URI pointing to a unified diff file. The file must be in standard unified diff format and stored in an S3 bucket connected to your Agent Space.</p>
    #   @return [String]
    class DiffSource < Struct.new(
      :s3_uri,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Uri < DiffSource; end
      class Unknown < DiffSource; end
    end

    # <p>Represents an endpoint discovered during a pentest job.</p>
    # @!attribute uri
    #   <p>The URI of the discovered endpoint.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that discovered the endpoint.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task that discovered the endpoint.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space associated with the discovered endpoint.</p>
    #   @return [String]
    # @!attribute evidence
    #   <p>The evidence that led to the discovery of the endpoint.</p>
    #   @return [String]
    # @!attribute operation
    #   <p>The HTTP operation associated with the discovered endpoint.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the discovered endpoint.</p>
    #   @return [String]
    class DiscoveredEndpoint < Struct.new(
      nil,
      :uri,
      :pentest_job_id,
      :task_id,
      :agent_space_id,
      :evidence,
      :operation,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains DNS verification details for a target domain, including the DNS record to create for domain ownership verification.</p>
    # @!attribute token
    #   <p>The verification token to include in the DNS record value.</p>
    #   @return [String]
    # @!attribute dns_record_name
    #   <p>The name of the DNS record to create for verification.</p>
    #   @return [String]
    # @!attribute dns_record_type
    #   <p>The type of DNS record to create. Currently, only TXT is supported.</p>
    #   @return [String]
    class DnsVerification < Struct.new(
      nil,
      :token,
      :dns_record_name,
      :dns_record_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a document that provides context for security testing.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the document.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact associated with the document.</p>
    #   @return [String]
    # @!attribute integrated_document
    #   <p>A reference to a document in an integrated third-party provider.</p>
    #   @return [Types::IntegratedDocument]
    class DocumentInfo < Struct.new(
      nil,
      :s3_location,
      :artifact_id,
      :integrated_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a target endpoint for penetration testing.</p>
    # @!attribute uri
    #   <p>The URI of the endpoint.</p>
    #   @return [String]
    class Endpoint < Struct.new(
      nil,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains error information for a pentest job that encountered an error.</p>
    # @!attribute code
    #   <p>The error code. Valid values include CLIENT_ERROR, INTERNAL_ERROR, and STOPPED_BY_USER.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class ErrorInformation < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains contextual information about the execution of a pentest job, such as errors, warnings, or informational messages.</p>
    # @!attribute context_type
    #   <p>The type of context. Valid values include ERROR, CLIENT_ERROR, WARNING, and INFO.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The context message.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time the context was recorded, in UTC format.</p>
    #   @return [Time]
    class ExecutionContext < Struct.new(
      nil,
      :context_type,
      :context,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a security finding discovered during a pentest job. A finding contains details about a vulnerability, including its risk level, confidence, and remediation status.</p>
    # @!attribute finding_id
    #   <p>The unique identifier of the finding.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space associated with the finding.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the finding.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that produced the finding.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the finding.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job that produced the finding.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the task that produced the finding.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the finding.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the finding.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the finding. Valid values include ACTIVE, RESOLVED, ACCEPTED, and FALSE_POSITIVE.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>The type of security risk identified by the finding.</p>
    #   @return [String]
    # @!attribute risk_level
    #   <p>The risk level of the finding. Valid values include UNKNOWN, INFORMATIONAL, LOW, MEDIUM, HIGH, and CRITICAL.</p>
    #   @return [String]
    # @!attribute risk_score
    #   <p>The numerical risk score of the finding.</p>
    #   @return [String]
    # @!attribute reasoning
    #   <p>The reasoning behind the finding, explaining why it was identified as a vulnerability.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence level of the finding. Valid values include FALSE_POSITIVE, UNCONFIRMED, LOW, MEDIUM, and HIGH.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The simulated validation status of the finding. Valid values are NOT_VALIDATED, VALIDATING, CONFIRMED, NOT_REPRODUCED, and VALIDATION_FAILED.</p>
    #   @return [String]
    # @!attribute attack_script
    #   <p>The attack script used to reproduce the finding.</p>
    #   @return [String]
    # @!attribute remediation_code
    #   <p>The suggested fix for the finding, describing the changes recommended to remediate the vulnerability, with example code or configuration.</p>
    #   @return [String]
    # @!attribute code_remediation_task
    #   <p>The code remediation task associated with the finding, if code remediation was initiated.</p>
    #   @return [Types::CodeRemediationTask]
    # @!attribute last_updated_by
    #   <p>The identifier of the entity that last updated the finding.</p>
    #   @return [String]
    # @!attribute customer_note
    #   <p>A customer-provided note on the finding.</p>
    #   @return [String]
    # @!attribute code_locations
    #   <p>The file locations involved in the vulnerability, as reported by the code scanner.</p>
    #   @return [Array<Types::CodeLocation>]
    # @!attribute verification_script
    #   <p>The verification script metadata for reproducing the finding, including download URL, instructions, and required environment variables.</p>
    #   @return [Types::VerificationScript]
    # @!attribute alignment_rationale
    #   <p>The rationale provided by the alignment agent explaining how the finding was adjusted based on customer preferences.</p>
    #   @return [String]
    # @!attribute revalidation_job_ids
    #   <p>The list of pentest job identifiers for revalidation jobs that retested this finding.</p>
    #   @return [Array<String>]
    # @!attribute original_finding_id
    #   <p>The identifier of the original finding that this revalidation finding was produced from.</p>
    #   @return [String]
    # @!attribute linked_issue
    #   <p>The issue in a third-party issue tracker that this finding has been exported to.</p>
    #   @return [Types::LinkedIssue]
    # @!attribute created_at
    #   <p>The date and time the finding was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the finding was last updated, in UTC format.</p>
    #   @return [Time]
    class Finding < Struct.new(
      nil,
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
      :remediation_code,
      :code_remediation_task,
      :last_updated_by,
      :customer_note,
      :code_locations,
      :verification_script,
      :alignment_rationale,
      :revalidation_job_ids,
      :original_finding_id,
      :linked_issue,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a security finding.</p>
    # @!attribute finding_id
    #   <p>The unique identifier of the finding.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space associated with the finding.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the finding.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that produced the finding.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review associated with the finding.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job that produced the finding.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the finding.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the finding.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>The type of security risk identified by the finding.</p>
    #   @return [String]
    # @!attribute risk_level
    #   <p>The risk level of the finding.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>The confidence level of the finding.</p>
    #   @return [String]
    # @!attribute validation_status
    #   <p>The simulated validation status of the finding.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the finding was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the finding was last updated, in UTC format.</p>
    #   @return [Time]
    class FindingSummary < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application to retrieve.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The domain associated with the application.</p>
    #   @return [String]
    # @!attribute application_name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute idc_configuration
    #   <p>The IAM Identity Center configuration for the application.</p>
    #   @return [Types::IdCConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the application.</p>
    #   @return [String]
    # @!attribute default_kms_key_id
    #   <p>The identifier of the default AWS KMS key used to encrypt data for the application.</p>
    #   @return [String]
    class GetApplicationResponse < Struct.new(
      nil,
      :application_id,
      :domain,
      :application_name,
      :idc_configuration,
      :role_arn,
      :default_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact to retrieve.</p>
    #   @return [String]
    class GetArtifactInput < Struct.new(
      nil,
      :agent_space_id,
      :artifact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the artifact.</p>
    #   @return [String]
    # @!attribute artifact_id
    #   <p>The unique identifier of the artifact.</p>
    #   @return [String]
    # @!attribute artifact
    #   <p>The artifact content and type.</p>
    #   @return [Types::Artifact]
    # @!attribute file_name
    #   <p>The file name of the artifact.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the artifact was last updated, in UTC format.</p>
    #   @return [Time]
    class GetArtifactOutput < Struct.new(
      nil,
      :agent_space_id,
      :artifact_id,
      :artifact,
      :file_name,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_id
    #   <p>The unique identifier of the integration to retrieve.</p>
    #   @return [String]
    class GetIntegrationInput < Struct.new(
      nil,
      :integration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_id
    #   <p>The unique identifier of the integration.</p>
    #   @return [String]
    # @!attribute installation_id
    #   <p>The installation identifier from the integration provider.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The integration provider.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of the integration provider.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the integration.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt data associated with the integration.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The HTTPS URL of the customer self-hosted instance, such as a GitHub Enterprise Server or self-managed GitLab instance. This value is absent for SaaS integrations.</p>
    #   @return [String]
    # @!attribute site_url
    #   <p>The Atlassian Cloud site URL for Atlassian integrations.</p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The payload URL of the integration's webhook, once it has been created. The signing secret is never returned on a read.</p>
    #   @return [String]
    # @!attribute private_connection_name
    #   <p>The name of the private connection used to reach the integration's self-hosted instance over private networking, if one is configured.</p>
    #   @return [String]
    class GetIntegrationOutput < Struct.new(
      nil,
      :integration_id,
      :installation_id,
      :provider,
      :provider_type,
      :display_name,
      :kms_key_id,
      :target_url,
      :site_url,
      :webhook_url,
      :private_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to retrieve.</p>
    #   @return [String]
    class GetSecurityRequirementPackInput < Struct.new(
      nil,
      :pack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement pack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement pack.</p>
    #   @return [String]
    # @!attribute vendor_name
    #   <p>The vendor name for AWS managed packs, such as ISO or NIST.</p>
    #   @return [String]
    # @!attribute management_type
    #   <p>The management type of the pack. Valid values are AWS_MANAGED and CUSTOMER_MANAGED.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the security requirement pack.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The status of the security requirements import workflow for this pack.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the security requirement pack was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the security requirement pack was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute kms_key_id
    #   <p>The identifier of the AWS KMS key used to encrypt pack contents.</p>
    #   @return [String]
    class GetSecurityRequirementPackOutput < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :vendor_name,
      :management_type,
      :status,
      :import_status,
      :created_at,
      :updated_at,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input required to create a GitHub integration, including the OAuth authorization code and CSRF state.</p>
    # @!attribute code
    #   <p>The OAuth authorization code received from GitHub.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state token for validating the OAuth flow.</p>
    #   @return [String]
    # @!attribute organization_name
    #   <p>The name of the GitHub organization to integrate with.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The HTTPS URL of a self-hosted GitHub Enterprise Server instance. Omit this value for GitHub.com.</p>
    #   @return [String]
    # @!attribute installation_id
    #   <p>The installation identifier provided by GitHub Enterprise Server on the install callback. Required for GitHub Enterprise Server integrations and ignored for GitHub.com.</p>
    #   @return [String]
    class GitHubIntegrationInput < Struct.new(
      nil,
      :code,
      :state,
      :organization_name,
      :target_url,
      :installation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a GitHub repository that is integrated with the service.</p>
    # @!attribute name
    #   <p>The name of the GitHub repository.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>The provider-specific resource identifier for the GitHub repository.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the GitHub repository.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>The access type of the GitHub repository. Valid values are PRIVATE and PUBLIC.</p>
    #   @return [String]
    class GitHubRepositoryMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :owner,
      :access_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a GitHub repository resource used in an integration.</p>
    # @!attribute name
    #   <p>The name of the GitHub repository.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the GitHub repository.</p>
    #   @return [String]
    class GitHubRepositoryResource < Struct.new(
      nil,
      :name,
      :owner,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The capabilities enabled for a GitHub resource integration.</p>
    # @!attribute trigger_filter_groups
    #   <p>The filter groups that control which pull request events start an automatic code review when <code>leaveComments</code> is enabled. A review starts when any group matches. If you omit this, a review starts on <code>PULL_REQUEST_READY_FOR_REVIEW</code> events.</p>
    #   @return [Array<Types::TriggerFilterGroup>]
    # @!attribute leave_comments
    #   <p>Indicates whether the integration can leave comments on pull requests.</p>
    #   @return [Boolean]
    # @!attribute remediate_code
    #   <p>Indicates whether the integration can create code remediation pull requests.</p>
    #   @return [Boolean]
    class GitHubResourceCapabilities < Struct.new(
      nil,
      :trigger_filter_groups,
      :leave_comments,
      :remediate_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for creating a GitLab integration.</p>
    # @!attribute access_token
    #   <p>The GitLab access token used to authenticate. This can be a personal access token or a group access token.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The HTTPS URL of a self-managed GitLab instance. Omit this value for GitLab SaaS (gitlab.com).</p>
    #   @return [String]
    # @!attribute token_type
    #   <p>The type of GitLab access token provided in accessToken.</p>
    #   @return [String]
    # @!attribute group_id
    #   <p>The identifier of the GitLab group. Required when tokenType is group and ignored for personal tokens.</p>
    #   @return [String]
    class GitLabIntegrationInput < Struct.new(
      nil,
      :access_token,
      :target_url,
      :token_type,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata for an integrated GitLab repository.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>Provider Id of the resource e.g. GitHub repository id, etc.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace (group or user path) that owns the project.</p>
    #   @return [String]
    # @!attribute access_type
    #   <p>Defines the visibility level of provider resources. PRIVATE indicates restricted access, while PUBLIC indicates open access.</p>
    #   @return [String]
    class GitLabRepositoryMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :namespace,
      :access_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A GitLab repository integrated as a resource.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace (group or user path) that owns the project.</p>
    #   @return [String]
    class GitLabRepositoryResource < Struct.new(
      nil,
      :name,
      :namespace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capabilities for an integrated GitLab repository.</p>
    # @!attribute trigger_filter_groups
    #   <p>The filter groups that control which merge request events start an automatic code review when <code>leaveComments</code> is enabled. A review starts when any group matches. If you omit this, a review starts on <code>PULL_REQUEST_READY_FOR_REVIEW</code> events.</p>
    #   @return [Array<Types::TriggerFilterGroup>]
    # @!attribute leave_comments
    #   <p>Whether to post code review comments on merge request discussions.</p>
    #   @return [Boolean]
    # @!attribute remediate_code
    #   <p>Whether to create merge requests with automated fixes.</p>
    #   @return [Boolean]
    class GitLabResourceCapabilities < Struct.new(
      nil,
      :trigger_filter_groups,
      :leave_comments,
      :remediate_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains HTTP route verification details for a target domain, including the route path and token to serve for domain ownership verification.</p>
    # @!attribute token
    #   <p>The verification token to serve at the specified route path.</p>
    #   @return [String]
    # @!attribute route_path
    #   <p>The HTTP route path where the verification token must be served.</p>
    #   @return [String]
    class HttpVerification < Struct.new(
      nil,
      :token,
      :route_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IAM Identity Center configuration for an application.</p>
    # @!attribute idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center application.</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center instance.</p>
    #   @return [String]
    class IdCConfiguration < Struct.new(
      nil,
      :idc_application_arn,
      :idc_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to import requirements into.</p>
    #   @return [String]
    # @!attribute input
    #   <p>The import source containing the documents to extract security requirements from.</p>
    #   @return [Types::ImportSource]
    class ImportSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack.</p>
    #   @return [String]
    # @!attribute import_status
    #   <p>The status of the import workflow.</p>
    #   @return [String]
    class ImportSecurityRequirementsOutput < Struct.new(
      nil,
      :pack_id,
      :import_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source from which to import security requirements. Currently supports document uploads.</p>
    # @!attribute documents
    #   <p>The list of documents to extract security requirements from.</p>
    #   @return [Array<Types::SecurityRequirementArtifact>]
    class ImportSource < Struct.new(
      :documents,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Documents < ImportSource; end
      class Unknown < ImportSource; end
    end

    # @!attribute provider
    #   <p>The provider to initiate registration with.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The HTTPS URL of a self-managed provider instance. Omit for SaaS providers.</p>
    #   @return [String]
    # @!attribute organization_name
    #   <p>The name of the organization to connect.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The client ID of the OAuth application registered on your self-managed provider instance.</p>
    #   @return [String]
    # @!attribute client_secret
    #   <p>The client secret of the OAuth application registered on your self-managed provider instance.</p>
    #   @return [String]
    class InitiateProviderRegistrationInput < Struct.new(
      nil,
      :provider,
      :target_url,
      :organization_name,
      :client_id,
      :client_secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute redirect_to
    #   <p>The URL to redirect the user to for completing the OAuth authorization.</p>
    #   @return [String]
    # @!attribute csrf_state
    #   <p>The CSRF state token to use when completing the OAuth flow.</p>
    #   @return [String]
    class InitiateProviderRegistrationOutput < Struct.new(
      nil,
      :redirect_to,
      :csrf_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a document in a third-party provider, such as a Confluence page linked via an integration.</p>
    # @!attribute integration_id
    #   <p>The identifier of the integration that provides access to the document.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The provider-specific resource identifier for the document.</p>
    #   @return [String]
    class IntegratedDocument < Struct.new(
      nil,
      :integration_id,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a code repository that is integrated with the service through a third-party provider.</p>
    # @!attribute integration_id
    #   <p>The unique identifier of the integration that provides access to the repository.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>The provider-specific resource identifier for the repository.</p>
    #   @return [String]
    # @!attribute branch
    #   <p>An optional override for the repository branch.</p>
    #   @return [String]
    class IntegratedRepository < Struct.new(
      nil,
      :integration_id,
      :provider_resource_id,
      :branch,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an integrated resource from a third-party provider. This is a union type that contains provider-specific resource information.</p>
    # @!attribute github_repository
    #   <p>The GitHub repository resource information.</p>
    #   @return [Types::GitHubRepositoryResource]
    # @!attribute gitlab_repository
    #   <p>A GitLab repository integrated as a resource.</p>
    #   @return [Types::GitLabRepositoryResource]
    # @!attribute bitbucket_repository
    #   <p>A Bitbucket repository integrated as a resource.</p>
    #   @return [Types::BitbucketRepositoryResource]
    # @!attribute confluence_document
    #   <p>A Confluence document (page) integrated as a resource.</p>
    #   @return [Types::ConfluenceDocumentResource]
    # @!attribute azure_dev_ops_repository
    #   <p>The Azure DevOps repository resource information.</p>
    #   @return [Types::AzureDevOpsRepositoryResource]
    # @!attribute jira_project
    #   <p>The Jira project resource information.</p>
    #   @return [Types::JiraProjectResource]
    class IntegratedResource < Struct.new(
      :github_repository,
      :gitlab_repository,
      :bitbucket_repository,
      :confluence_document,
      :azure_dev_ops_repository,
      :jira_project,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GithubRepository < IntegratedResource; end
      class GitlabRepository < IntegratedResource; end
      class BitbucketRepository < IntegratedResource; end
      class ConfluenceDocument < IntegratedResource; end
      class AzureDevOpsRepository < IntegratedResource; end
      class JiraProject < IntegratedResource; end
      class Unknown < IntegratedResource; end
    end

    # <p>Represents an input item for updating integrated resources, including the resource and its capabilities.</p>
    # @!attribute resource
    #   <p>The integrated resource to update.</p>
    #   @return [Types::IntegratedResource]
    # @!attribute capabilities
    #   <p>The capabilities to enable for the integrated resource.</p>
    #   @return [Types::ProviderResourceCapabilities]
    class IntegratedResourceInputItem < Struct.new(
      nil,
      :resource,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about an integrated resource. This is a union type that contains provider-specific metadata.</p>
    # @!attribute github_repository
    #   <p>The GitHub repository metadata.</p>
    #   @return [Types::GitHubRepositoryMetadata]
    # @!attribute gitlab_repository
    #   <p>Metadata for an integrated GitLab repository.</p>
    #   @return [Types::GitLabRepositoryMetadata]
    # @!attribute bitbucket_repository
    #   <p>Metadata for an integrated Bitbucket repository.</p>
    #   @return [Types::BitbucketRepositoryMetadata]
    # @!attribute confluence_document
    #   <p>Metadata for an integrated Confluence document.</p>
    #   @return [Types::ConfluenceDocumentMetadata]
    # @!attribute azure_dev_ops_repository
    #   <p>The Azure DevOps repository metadata.</p>
    #   @return [Types::AzureDevOpsRepositoryMetadata]
    # @!attribute jira_project
    #   <p>The Jira project metadata.</p>
    #   @return [Types::JiraProjectMetadata]
    class IntegratedResourceMetadata < Struct.new(
      :github_repository,
      :gitlab_repository,
      :bitbucket_repository,
      :confluence_document,
      :azure_dev_ops_repository,
      :jira_project,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class GithubRepository < IntegratedResourceMetadata; end
      class GitlabRepository < IntegratedResourceMetadata; end
      class BitbucketRepository < IntegratedResourceMetadata; end
      class ConfluenceDocument < IntegratedResourceMetadata; end
      class AzureDevOpsRepository < IntegratedResourceMetadata; end
      class JiraProject < IntegratedResourceMetadata; end
      class Unknown < IntegratedResourceMetadata; end
    end

    # <p>Contains summary information about an integrated resource.</p>
    # @!attribute integration_id
    #   <p>The unique identifier of the integration that provides access to the resource.</p>
    #   @return [String]
    # @!attribute resource
    #   <p>The metadata for the integrated resource.</p>
    #   @return [Types::IntegratedResourceMetadata]
    # @!attribute capabilities
    #   <p>The capabilities enabled for the integrated resource.</p>
    #   @return [Types::ProviderResourceCapabilities]
    class IntegratedResourceSummary < Struct.new(
      nil,
      :integration_id,
      :resource,
      :capabilities,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for listing integrations. This is a union type where you can filter by provider or provider type.</p>
    # @!attribute provider
    #   <p>Filter integrations by provider.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>Filter integrations by provider type.</p>
    #   @return [String]
    class IntegrationFilter < Struct.new(
      :provider,
      :provider_type,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Provider < IntegrationFilter; end
      class ProviderType < IntegrationFilter; end
      class Unknown < IntegrationFilter; end
    end

    # <p>Contains summary information about an integration.</p>
    # @!attribute integration_id
    #   <p>The unique identifier of the integration.</p>
    #   @return [String]
    # @!attribute installation_id
    #   <p>The installation identifier from the integration provider.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The integration provider.</p>
    #   @return [String]
    # @!attribute provider_type
    #   <p>The type of the integration provider.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the integration.</p>
    #   @return [String]
    # @!attribute target_url
    #   <p>The HTTPS URL of the customer self-hosted instance, such as a GitHub Enterprise Server or self-managed GitLab instance. This value is absent for SaaS integrations.</p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The payload URL of the integration's webhook, once it has been created. The signing secret is never returned on a read.</p>
    #   @return [String]
    # @!attribute private_connection_name
    #   <p>The name of the private connection used to reach the integration's self-hosted instance over private networking, if one is configured.</p>
    #   @return [String]
    class IntegrationSummary < Struct.new(
      nil,
      :integration_id,
      :installation_id,
      :provider,
      :provider_type,
      :display_name,
      :target_url,
      :webhook_url,
      :private_connection_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of your request.</p>
    # @!attribute message
    #   <p>Error description.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destination for filing findings as issues in an integrated issue tracker.</p>
    # @!attribute integration_id
    #   <p>The integration identifier for the issue-tracker provider.</p>
    #   @return [String]
    # @!attribute project_key
    #   <p>The identifier of the project the issues are filed under.</p>
    #   @return [String]
    class IssueDestination < Struct.new(
      nil,
      :integration_id,
      :project_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for creating a Jira integration.</p>
    # @!attribute installation_id
    #   <p>The Atlassian installation identifier, available from the Atlassian administration console.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The OAuth 2.0 authorization code returned from the consent redirect.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The CSRF state token echoed back from the OAuth redirect.</p>
    #   @return [String]
    # @!attribute site_url
    #   <p>The Jira Cloud site URL, for example https://mysite.atlassian.net.</p>
    #   @return [String]
    class JiraIntegrationInput < Struct.new(
      nil,
      :installation_id,
      :code,
      :state,
      :site_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a Jira project that is integrated with the service.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>Provider Id of the resource e.g. GitHub repository id, etc.</p>
    #   @return [String]
    # @!attribute project_key
    #   <p>The Jira project key, for example PROJ.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The Jira project identifier.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The display name of the Jira project.</p>
    #   @return [String]
    class JiraProjectMetadata < Struct.new(
      nil,
      :name,
      :provider_resource_id,
      :project_key,
      :project_id,
      :project_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a Jira project resource used in an integration.</p>
    # @!attribute name
    #   <p>Name of the resource e.g. repository name, etc.</p>
    #   @return [String]
    # @!attribute project_key
    #   <p>The Jira project key, for example PROJ.</p>
    #   @return [String]
    # @!attribute project_id
    #   <p>The Jira project identifier.</p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The display name of the Jira project.</p>
    #   @return [String]
    class JiraProjectResource < Struct.new(
      nil,
      :name,
      :project_key,
      :project_id,
      :project_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Capabilities for an integrated Jira project.</p>
    # @!attribute create_issue
    #   <p>Whether to create issues in the integrated jira project.</p>
    #   @return [Boolean]
    # @!attribute comment_issue
    #   <p>Whether to post comments on issues in the integrated jira project.</p>
    #   @return [Boolean]
    class JiraResourceCapabilities < Struct.new(
      nil,
      :create_issue,
      :comment_issue,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to an issue created for a finding in a third-party issue tracker.</p>
    # @!attribute provider
    #   <p>The issue-tracker provider.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The integration identifier for the issue-tracker provider.</p>
    #   @return [String]
    # @!attribute project_key
    #   <p>The key of the project the issue belongs to.</p>
    #   @return [String]
    # @!attribute issue_key
    #   <p>The issue key.</p>
    #   @return [String]
    # @!attribute issue_id
    #   <p>The stable numeric issue identifier.</p>
    #   @return [String]
    # @!attribute issue_url
    #   <p>The issue URL.</p>
    #   @return [String]
    # @!attribute site_url
    #   <p>The Atlassian Cloud site URL.</p>
    #   @return [String]
    class LinkedIssue < Struct.new(
      nil,
      :provider,
      :integration_id,
      :project_key,
      :issue_key,
      :issue_id,
      :issue_url,
      :site_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that owns the pentest.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest that the actor belongs to.</p>
    #   @return [String]
    # @!attribute actor_identifier
    #   <p>The identifier of the actor whose messages to list. The identifier is case-insensitive.</p>
    #   @return [String]
    class ListActorMessagesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :agent_space_id,
      :pentest_id,
      :actor_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>The list of messages received for the actor, most recent first.</p>
    #   @return [Array<Types::ActorMessage>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListActorMessagesOutput < Struct.new(
      nil,
      :messages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing agent spaces.</p>
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListAgentSpacesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListAgentSpaces operation.</p>
    # @!attribute agent_space_summaries
    #   <p>The list of agent space summaries.</p>
    #   @return [Array<Types::AgentSpaceSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListAgentSpacesOutput < Struct.new(
      nil,
      :agent_space_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_summaries
    #   <p>The list of application summaries.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :application_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list artifacts for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListArtifactsInput < Struct.new(
      nil,
      :agent_space_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute artifact_summaries
    #   <p>The list of artifact summaries.</p>
    #   @return [Array<Types::ArtifactSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListArtifactsOutput < Struct.new(
      nil,
      :artifact_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing tasks associated with a code review job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job to list tasks for.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>Filter tasks by step name.</p>
    #   @return [String]
    # @!attribute category_name
    #   <p>Filter tasks by category name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListCodeReviewJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :max_results,
      :code_review_job_id,
      :step_name,
      :category_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListCodeReviewJobTasks operation.</p>
    # @!attribute code_review_job_task_summaries
    #   <p>The list of code review job task summaries.</p>
    #   @return [Array<Types::CodeReviewJobTaskSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListCodeReviewJobTasksOutput < Struct.new(
      nil,
      :code_review_job_task_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListCodeReviewJobsForCodeReview operation.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review to list jobs for.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListCodeReviewJobsForCodeReviewInput < Struct.new(
      nil,
      :max_results,
      :code_review_id,
      :agent_space_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListCodeReviewJobsForCodeReview operation.</p>
    # @!attribute code_review_job_summaries
    #   <p>The list of code review job summaries.</p>
    #   @return [Array<Types::CodeReviewJobSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListCodeReviewJobsForCodeReviewOutput < Struct.new(
      nil,
      :code_review_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing code reviews with optional filtering.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list code reviews for.</p>
    #   @return [String]
    class ListCodeReviewsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListCodeReviews operation.</p>
    # @!attribute code_review_summaries
    #   <p>The list of code review summaries.</p>
    #   @return [Array<Types::CodeReviewSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListCodeReviewsOutput < Struct.new(
      nil,
      :code_review_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListDiscoveredEndpoints operation.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job to list discovered endpoints for.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>A prefix to filter discovered endpoints by URI.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListDiscoveredEndpointsInput < Struct.new(
      nil,
      :max_results,
      :pentest_job_id,
      :agent_space_id,
      :prefix,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListDiscoveredEndpoints operation.</p>
    # @!attribute discovered_endpoints
    #   <p>The list of discovered endpoints.</p>
    #   @return [Array<Types::DiscoveredEndpoint>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListDiscoveredEndpointsOutput < Struct.new(
      nil,
      :discovered_endpoints,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListFindings operation with filtering support.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job to list findings for.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job to list findings for. Mutually exclusive with pentestJobId.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>Filter findings by risk type.</p>
    #   @return [String]
    # @!attribute risk_level
    #   <p>Filter findings by risk level.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter findings by status.</p>
    #   @return [String]
    # @!attribute confidence
    #   <p>Filter findings by confidence level.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Filter findings by name.</p>
    #   @return [String]
    class ListFindingsInput < Struct.new(
      nil,
      :max_results,
      :pentest_job_id,
      :code_review_job_id,
      :agent_space_id,
      :next_token,
      :risk_type,
      :risk_level,
      :status,
      :confidence,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListFindings operation.</p>
    # @!attribute findings_summaries
    #   <p>The list of finding summaries.</p>
    #   @return [Array<Types::FindingSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListFindingsOutput < Struct.new(
      nil,
      :findings_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list integrated resources for.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The unique identifier of the integration to filter by.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource to filter by.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListIntegratedResourcesInput < Struct.new(
      nil,
      :agent_space_id,
      :integration_id,
      :resource_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integrated_resource_summaries
    #   <p>The list of integrated resource summaries.</p>
    #   @return [Array<Types::IntegratedResourceSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListIntegratedResourcesOutput < Struct.new(
      nil,
      :integrated_resource_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>A filter to apply to the list of integrations.</p>
    #   @return [Types::IntegrationFilter]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListIntegrationsInput < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute integration_summaries
    #   <p>The list of integration summaries.</p>
    #   @return [Array<Types::IntegrationSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListIntegrationsOutput < Struct.new(
      nil,
      :integration_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request structure for listing agent space members.</p>
    # @!attribute application_id
    #   <p>The unique identifier of the application that contains the agent space.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list memberships for.</p>
    #   @return [String]
    # @!attribute member_type
    #   <p>Filter memberships by member type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListMembershipsRequest < Struct.new(
      nil,
      :application_id,
      :agent_space_id,
      :member_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response structure for listing members associated to an agent space.</p>
    # @!attribute membership_summaries
    #   <p>The list of membership summaries.</p>
    #   @return [Array<Types::MembershipSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListMembershipsResponse < Struct.new(
      nil,
      :membership_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing tasks associated with a pentest job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job to list tasks for.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>Filter tasks by step name. Valid values include PREFLIGHT, STATIC_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.</p>
    #   @return [String]
    # @!attribute category_name
    #   <p>Filter tasks by category name.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListPentestJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :max_results,
      :pentest_job_id,
      :step_name,
      :category_name,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListPentestJobTasks operation.</p>
    # @!attribute task_summaries
    #   <p>The list of task summaries.</p>
    #   @return [Array<Types::TaskSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListPentestJobTasksOutput < Struct.new(
      nil,
      :task_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListPentestJobsForPentest operation.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest to list jobs for.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>Filters the returned pentest jobs to only those of the specified job type.</p>
    #   @return [String]
    class ListPentestJobsForPentestInput < Struct.new(
      nil,
      :max_results,
      :pentest_id,
      :agent_space_id,
      :next_token,
      :job_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListPentestJobsForPentest operation.</p>
    # @!attribute pentest_job_summaries
    #   <p>The list of pentest job summaries.</p>
    #   @return [Array<Types::PentestJobSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListPentestJobsForPentestOutput < Struct.new(
      nil,
      :pentest_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing pentests with optional filtering.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list pentests for.</p>
    #   @return [String]
    class ListPentestsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListPentests operation.</p>
    # @!attribute pentest_summaries
    #   <p>The list of pentest summaries.</p>
    #   @return [Array<Types::PentestSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListPentestsOutput < Struct.new(
      nil,
      :pentest_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of private connections to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListPrivateConnectionsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_connections
    #   <p>The list of private connections.</p>
    #   @return [Array<Types::PrivateConnectionSummary>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results, if more results are available.</p>
    #   @return [String]
    class ListPrivateConnectionsOutput < Struct.new(
      nil,
      :private_connections,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter criteria for listing security requirement packs.</p>
    # @!attribute management_type
    #   <p>Filter packs by management type. Valid values are AWS_MANAGED and CUSTOMER_MANAGED.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filter packs by status. Valid values are ENABLED and DISABLED.</p>
    #   @return [String]
    class ListSecurityRequirementPackFilter < Struct.new(
      nil,
      :management_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>The filter criteria for listing security requirement packs.</p>
    #   @return [Types::ListSecurityRequirementPackFilter]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single request.</p>
    #   @return [Integer]
    class ListSecurityRequirementPacksInput < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_requirement_pack_summaries
    #   <p>The list of security requirement pack summaries.</p>
    #   @return [Array<Types::SecurityRequirementPackSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class ListSecurityRequirementPacksOutput < Struct.new(
      nil,
      :security_requirement_pack_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to list requirements for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single request.</p>
    #   @return [Integer]
    class ListSecurityRequirementsInput < Struct.new(
      nil,
      :pack_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute security_requirement_summaries
    #   <p>The list of security requirement summaries.</p>
    #   @return [Array<Types::SecurityRequirementSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in a subsequent request to retrieve the next page of results.</p>
    #   @return [String]
    class ListSecurityRequirementsOutput < Struct.new(
      nil,
      :security_requirement_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListTagsForResource operation.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for ListTagsForResource operation.</p>
    # @!attribute tags
    #   <p>The tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing target domains.</p>
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListTargetDomainsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListTargetDomains operation.</p>
    # @!attribute target_domain_summaries
    #   <p>The list of target domain summaries.</p>
    #   @return [Array<Types::TargetDomainSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response. Set the value of this parameter to null for the first request. For subsequent calls, use the nextToken value returned from the previous request.</p>
    #   @return [String]
    class ListTargetDomainsOutput < Struct.new(
      nil,
      :target_domain_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing tasks associated with a threat model job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job to list tasks for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatModelJobTasksInput < Struct.new(
      nil,
      :agent_space_id,
      :max_results,
      :threat_model_job_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListThreatModelJobTasks operation.</p>
    # @!attribute threat_model_job_task_summaries
    #   <p>The list of threat model job task summaries.</p>
    #   @return [Array<Types::ThreatModelJobTaskSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatModelJobTasksOutput < Struct.new(
      nil,
      :threat_model_job_task_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for ListThreatModelJobs operation.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model to list jobs for.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatModelJobsInput < Struct.new(
      nil,
      :max_results,
      :threat_model_id,
      :agent_space_id,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListThreatModelJobs operation.</p>
    # @!attribute threat_model_job_summaries
    #   <p>The list of threat model job summaries.</p>
    #   @return [Array<Types::ThreatModelJobSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatModelJobsOutput < Struct.new(
      nil,
      :threat_model_job_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing threat models.</p>
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to list threat models for.</p>
    #   @return [String]
    class ListThreatModelsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListThreatModels operation.</p>
    # @!attribute threat_model_summaries
    #   <p>The list of threat model summaries.</p>
    #   @return [Array<Types::ThreatModelSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatModelsOutput < Struct.new(
      nil,
      :threat_model_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for listing threats.</p>
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job to list threats for.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListThreatsInput < Struct.new(
      nil,
      :threat_job_id,
      :agent_space_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the ListThreats operation.</p>
    # @!attribute threats
    #   <p>The list of threat summaries.</p>
    #   @return [Array<Types::ThreatSummary>]
    # @!attribute next_token
    #   <p>A token to use for paginating results that are returned in the response.</p>
    #   @return [String]
    class ListThreatsOutput < Struct.new(
      nil,
      :threats,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The log location for a task, specifying where task execution logs are stored.</p>
    # @!attribute log_type
    #   <p>The type of log storage. Currently, only CLOUDWATCH is supported.</p>
    #   @return [String]
    # @!attribute cloud_watch_log
    #   <p>The CloudWatch Logs location for the task logs.</p>
    #   @return [Types::CloudWatchLog]
    class LogLocation < Struct.new(
      nil,
      :log_type,
      :cloud_watch_log,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a member. This is a union type that contains member-type-specific metadata.</p>
    # @!attribute user
    #   <p>The user metadata for the member.</p>
    #   @return [Types::UserMetadata]
    class MemberMetadata < Struct.new(
      :user,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class User < MemberMetadata; end
      class Unknown < MemberMetadata; end
    end

    # <p>The configuration for a membership. This is a union type that contains member-type-specific configuration.</p>
    # @!attribute user
    #   <p>The user configuration for the membership.</p>
    #   @return [Types::UserConfig]
    class MembershipConfig < Struct.new(
      :user,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class User < MembershipConfig; end
      class Unknown < MembershipConfig; end
    end

    # <p>Contains summary information about a membership.</p>
    # @!attribute membership_id
    #   <p>The unique identifier of the membership.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute member_type
    #   <p>The type of member.</p>
    #   @return [String]
    # @!attribute config
    #   <p>The configuration for the membership.</p>
    #   @return [Types::MembershipConfig]
    # @!attribute metadata
    #   <p>The metadata for the member.</p>
    #   @return [Types::MemberMetadata]
    # @!attribute created_at
    #   <p>The date and time the membership was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the membership was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The identifier of the entity that created the membership.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>The identifier of the entity that last updated the membership.</p>
    #   @return [String]
    class MembershipSummary < Struct.new(
      nil,
      :membership_id,
      :application_id,
      :agent_space_id,
      :member_type,
      :config,
      :metadata,
      :created_at,
      :updated_at,
      :created_by,
      :updated_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network traffic configuration for a pentest, including custom headers and traffic rules.</p>
    # @!attribute rules
    #   <p>The list of network traffic rules that control which URLs are allowed or denied during testing.</p>
    #   @return [Array<Types::NetworkTrafficRule>]
    # @!attribute custom_headers
    #   <p>The list of custom HTTP headers to include in network traffic during testing.</p>
    #   @return [Array<Types::CustomHeader>]
    class NetworkTrafficConfig < Struct.new(
      nil,
      :rules,
      :custom_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that controls network traffic during penetration testing by allowing or denying traffic to specific URL patterns.</p>
    # @!attribute effect
    #   <p>The effect of the rule. Valid values are ALLOW and DENY.</p>
    #   @return [String]
    # @!attribute pattern
    #   <p>The URL pattern to match for the rule.</p>
    #   @return [String]
    # @!attribute network_traffic_rule_type
    #   <p>The type of the network traffic rule. Currently, only URL is supported.</p>
    #   @return [String]
    class NetworkTrafficRule < Struct.new(
      nil,
      :effect,
      :pattern,
      :network_traffic_rule_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a pentest configuration that defines the parameters for security testing, including target assets, risk type exclusions, and infrastructure settings.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the pentest.</p>
    #   @return [Types::Assets]
    # @!attribute exclude_risk_types
    #   <p>The list of risk types excluded from the pentest.</p>
    #   @return [Array<String>]
    # @!attribute service_role
    #   <p>The IAM service role used for the pentest.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the pentest.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the pentest.</p>
    #   @return [Types::VpcConfig]
    # @!attribute network_traffic_config
    #   <p>The network traffic configuration for the pentest.</p>
    #   @return [Types::NetworkTrafficConfig]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the pentest.</p>
    #   @return [String]
    # @!attribute clean_up_strategy
    #   <p>Strategy for cleaning up resources after pentest job completion.</p>
    #   @return [String]
    # @!attribute disable_managed_skills
    #   <p>A list of managed skills to disable for this pentest. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    #   @return [Array<String>]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for jobs started from this pentest. If a job reaches the configured limit, it is gracefully stopped. If not set, jobs run to completion with no budget cap.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute cicd_configuration
    #   <p>The CI/CD pentesting configuration for this pentest. Present when the pentest is set up to run from a CI/CD pipeline.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    # @!attribute created_at
    #   <p>The date and time the pentest was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest was last updated, in UTC format.</p>
    #   @return [Time]
    class Pentest < Struct.new(
      nil,
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
      :report_destination,
      :report_filters,
      :cicd_configuration,
      :test_scope,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a pentest job, which is an execution instance of a pentest. A pentest job progresses through preflight, static analysis, pentest, and finalizing steps.</p>
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the job.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest job.</p>
    #   @return [String]
    # @!attribute overview
    #   <p>An overview of the pentest job results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pentest job.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The list of endpoints being tested in the pentest job.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute actors
    #   <p>The list of actors used during the pentest job.</p>
    #   @return [Array<Types::Actor>]
    # @!attribute documents
    #   <p>The list of documents providing context for the pentest job.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute source_code
    #   <p>The list of source code repositories analyzed during the pentest job.</p>
    #   @return [Array<Types::SourceCodeRepository>]
    # @!attribute exclude_paths
    #   <p>The list of paths excluded from the pentest job.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute allowed_domains
    #   <p>The list of domains allowed during the pentest job.</p>
    #   @return [Array<Types::Endpoint>]
    # @!attribute exclude_risk_types
    #   <p>The list of risk types excluded from the pentest job.</p>
    #   @return [Array<String>]
    # @!attribute steps
    #   <p>The list of steps in the pentest job execution.</p>
    #   @return [Array<Types::Step>]
    # @!attribute execution_context
    #   <p>The execution context messages for the pentest job.</p>
    #   @return [Array<Types::ExecutionContext>]
    # @!attribute service_role
    #   <p>The IAM service role used for the pentest job.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the pentest job.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute vpc_config
    #   <p>The VPC configuration for the pentest job.</p>
    #   @return [Types::VpcConfig]
    # @!attribute network_traffic_config
    #   <p>The network traffic configuration for the pentest job.</p>
    #   @return [Types::NetworkTrafficConfig]
    # @!attribute error_information
    #   <p>Error information if the pentest job encountered an error.</p>
    #   @return [Types::ErrorInformation]
    # @!attribute integrated_repositories
    #   <p>The list of integrated repositories associated with the pentest job.</p>
    #   @return [Array<Types::IntegratedRepository>]
    # @!attribute trusted_ca_certificates
    #   <p>The trust anchors used to validate target endpoint TLS certificates during the pentest job.</p>
    #   @return [Array<Types::TrustedCaCertificate>]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the pentest job.</p>
    #   @return [String]
    # @!attribute clean_up_strategy
    #   <p>Strategy for cleaning up resources after pentest job completion.</p>
    #   @return [String]
    # @!attribute disable_managed_skills
    #   <p>A list of managed skills disabled for this pentest job. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    #   @return [Array<String>]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours allowed for this pentest job. If the cumulative task hours reach this limit, the job is gracefully stopped.</p>
    #   @return [Float]
    # @!attribute job_type
    #   <p>The type of the pentest job. Valid values are FULL, REVALIDATION, and CICD.</p>
    #   @return [String]
    # @!attribute selected_finding_ids
    #   <p>The list of finding identifiers selected for revalidation. Present only when jobType is REVALIDATION.</p>
    #   @return [Array<String>]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_url
    #   <p>The URL to view this pentest job's findings report in the console.</p>
    #   @return [String]
    # @!attribute scope_result
    #   <p>The scoping outcome for this CI/CD pentest job. Present only for jobs of type CICD.</p>
    #   @return [Types::ScopeResult]
    # @!attribute scope_changes
    #   <p>The code changes that defined the scope of this CI/CD pentest job. Present only for jobs of type CICD.</p>
    #   @return [Array<Types::ScopeChange>]
    # @!attribute cicd_configuration
    #   <p>The configuration that enables a pentest to run as part of a CI/CD pipeline, scoped to the code changes in each pipeline run.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    # @!attribute created_at
    #   <p>The date and time the pentest job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest job was last updated, in UTC format.</p>
    #   @return [Time]
    class PentestJob < Struct.new(
      nil,
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
      :trusted_ca_certificates,
      :code_remediation_strategy,
      :clean_up_strategy,
      :disable_managed_skills,
      :max_task_hours,
      :job_type,
      :selected_finding_ids,
      :report_destination,
      :report_url,
      :scope_result,
      :scope_changes,
      :cicd_configuration,
      :test_scope,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a pentest job.</p>
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the job.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pentest job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the pentest job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest job was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute job_type
    #   <p>The type of the pentest job. Valid values are FULL, REVALIDATION, and CICD.</p>
    #   @return [String]
    # @!attribute report_url
    #   <p>The URL to view this pentest job's findings report in the console.</p>
    #   @return [String]
    class PentestJobSummary < Struct.new(
      nil,
      :pentest_job_id,
      :pentest_id,
      :title,
      :status,
      :created_at,
      :updated_at,
      :job_type,
      :report_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a pentest.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the pentest was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest was last updated, in UTC format.</p>
    #   @return [Time]
    class PentestSummary < Struct.new(
      nil,
      :pentest_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a private connection. Specify either a service-managed or a self-managed mode.</p>
    # @!attribute service_managed
    #   <p>The configuration for a service-managed private connection, where the service manages the resource gateway lifecycle.</p>
    #   @return [Types::ServiceManagedInput]
    # @!attribute self_managed
    #   <p>The configuration for a self-managed private connection, where you manage your own resource configuration.</p>
    #   @return [Types::SelfManagedInput]
    class PrivateConnectionMode < Struct.new(
      :service_managed,
      :self_managed,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ServiceManaged < PrivateConnectionMode; end
      class SelfManaged < PrivateConnectionMode; end
      class Unknown < PrivateConnectionMode; end
    end

    # <p>Summarizes a private connection.</p>
    # @!attribute name
    #   <p>The name of the private connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the private connection, indicating whether it is service-managed or self-managed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the private connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The identifier or ARN of the VPC Lattice resource gateway.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the resource gateway is created in.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the VPC Lattice resource configuration.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The date and time the connection's certificate expires, in UTC format.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message describing why the private connection entered a failed state, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the private connection.</p>
    #   @return [Hash<String, String>]
    class PrivateConnectionSummary < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The provider-specific input for creating an integration. This is a union type that contains provider-specific configuration.</p>
    # @!attribute github
    #   <p>The GitHub-specific input for creating an integration.</p>
    #   @return [Types::GitHubIntegrationInput]
    # @!attribute gitlab
    #   <p>The configuration for a GitLab integration.</p>
    #   @return [Types::GitLabIntegrationInput]
    # @!attribute bitbucket
    #   <p>The configuration for a Bitbucket integration.</p>
    #   @return [Types::BitbucketIntegrationInput]
    # @!attribute confluence
    #   <p>The configuration for a Confluence integration.</p>
    #   @return [Types::ConfluenceIntegrationInput]
    # @!attribute azure_dev_ops
    #   <p>The Azure DevOps-specific input for creating an integration.</p>
    #   @return [Types::AzureDevOpsIntegrationInput]
    # @!attribute bitbucket_data_center
    #   <p>The Bitbucket Data Center-specific input for creating an integration.</p>
    #   @return [Types::BitbucketDataCenterIntegrationInput]
    # @!attribute jira
    #   <p>The configuration for a Jira integration.</p>
    #   @return [Types::JiraIntegrationInput]
    class ProviderInput < Struct.new(
      :github,
      :gitlab,
      :bitbucket,
      :confluence,
      :azure_dev_ops,
      :bitbucket_data_center,
      :jira,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Github < ProviderInput; end
      class Gitlab < ProviderInput; end
      class Bitbucket < ProviderInput; end
      class Confluence < ProviderInput; end
      class AzureDevOps < ProviderInput; end
      class BitbucketDataCenter < ProviderInput; end
      class Jira < ProviderInput; end
      class Unknown < ProviderInput; end
    end

    # <p>The capabilities for an integrated resource from a third-party provider. This is a union type that contains provider-specific capabilities.</p>
    # @!attribute github
    #   <p>The GitHub-specific resource capabilities.</p>
    #   @return [Types::GitHubResourceCapabilities]
    # @!attribute gitlab
    #   <p>Capabilities for an integrated GitLab repository.</p>
    #   @return [Types::GitLabResourceCapabilities]
    # @!attribute bitbucket
    #   <p>Capabilities for an integrated Bitbucket repository.</p>
    #   @return [Types::BitbucketResourceCapabilities]
    # @!attribute confluence
    #   <p>Capabilities for an integrated Confluence space.</p>
    #   @return [Types::ConfluenceResourceCapabilities]
    # @!attribute azure_dev_ops
    #   <p>The Azure DevOps-specific resource capabilities.</p>
    #   @return [Types::AzureDevOpsResourceCapabilities]
    # @!attribute jira
    #   <p>The Jira-specific resource capabilities.</p>
    #   @return [Types::JiraResourceCapabilities]
    class ProviderResourceCapabilities < Struct.new(
      :github,
      :gitlab,
      :bitbucket,
      :confluence,
      :azure_dev_ops,
      :jira,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Github < ProviderResourceCapabilities; end
      class Gitlab < ProviderResourceCapabilities; end
      class Bitbucket < ProviderResourceCapabilities; end
      class Confluence < ProviderResourceCapabilities; end
      class AzureDevOps < ProviderResourceCapabilities; end
      class Jira < ProviderResourceCapabilities; end
      class Unknown < ProviderResourceCapabilities; end
    end

    # <p>Destination for publishing scan reports to an integrated document provider.</p>
    # @!attribute integration_id
    #   <p>The integration identifier for the document provider.</p>
    #   @return [String]
    # @!attribute container_id
    #   <p>The container identifier where the report will be published.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The parent document identifier under which the report will be created.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The existing document identifier to update instead of creating a new document.</p>
    #   @return [String]
    class ReportDestination < Struct.new(
      nil,
      :integration_id,
      :container_id,
      :parent_id,
      :document_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The report-generation filters applied when a pentest or code review report is exported.</p>
    # @!attribute risk_levels
    #   <p>The severity levels to include in the report.</p>
    #   @return [Array<String>]
    # @!attribute confidence_levels
    #   <p>The confidence levels to include in the report.</p>
    #   @return [Array<String>]
    # @!attribute statuses
    #   <p>The finding statuses to include in the report.</p>
    #   @return [Array<String>]
    # @!attribute risk_types
    #   <p>The risk types to include in the report.</p>
    #   @return [Array<String>]
    # @!attribute finding_types
    #   <p>The finding types to include in the report.</p>
    #   @return [Array<String>]
    # @!attribute task_statuses
    #   <p>The task execution statuses to include in the report's task table.</p>
    #   @return [Array<String>]
    # @!attribute annotation_notes
    #   <p>Whether to include reviewer annotation notes under each finding.</p>
    #   @return [Boolean]
    # @!attribute compliance_report
    #   <p>Whether to include the compliance-ready report additions.</p>
    #   @return [Boolean]
    class ReportFilters < Struct.new(
      nil,
      :risk_levels,
      :confidence_levels,
      :statuses,
      :risk_types,
      :finding_types,
      :task_statuses,
      :annotation_notes,
      :compliance_report,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found. Verify that the resource identifier is correct and that the resource exists in the specified agent space or account.</p>
    # @!attribute message
    #   <p>Error description.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A code change in a CI/CD pipeline run that defines what a CI/CD pentest job tests. Each scope change identifies an integrated repository and the commit range for the change.</p>
    # @!attribute integration_id
    #   <p>The identifier of the integration for the source-code provider that hosts the repository.</p>
    #   @return [String]
    # @!attribute provider_resource_id
    #   <p>The provider-specific identifier of the repository the change belongs to.</p>
    #   @return [String]
    # @!attribute base_commit_sha
    #   <p>The commit SHA that the change is compared against. When omitted, the change is evaluated against the head commit alone.</p>
    #   @return [String]
    # @!attribute head_commit_sha
    #   <p>The commit SHA at the tip of the change to be tested.</p>
    #   @return [String]
    # @!attribute trigger_run_id
    #   <p>The identifier of the CI/CD pipeline run that triggered this pentest job.</p>
    #   @return [String]
    class ScopeChange < Struct.new(
      nil,
      :integration_id,
      :provider_resource_id,
      :base_commit_sha,
      :head_commit_sha,
      :trigger_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The outcome of scoping a CI/CD pentest job's code changes, including the decision and the reason for it.</p>
    # @!attribute decision
    #   <p>The scoping decision for the job's code changes.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A human-readable explanation of the scoping decision.</p>
    #   @return [String]
    class ScopeResult < Struct.new(
      nil,
      :decision,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A document used as source material for importing security requirements.</p>
    # @!attribute name
    #   <p>The file name of the document.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the document. Valid values are MD, PDF, TXT, DOCX, and DOC.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The binary content of the document.</p>
    #   @return [String]
    class SecurityRequirementArtifact < Struct.new(
      nil,
      :name,
      :format,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a security requirement pack.</p>
    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement pack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement pack.</p>
    #   @return [String]
    # @!attribute vendor_name
    #   <p>The vendor name for AWS managed packs.</p>
    #   @return [String]
    # @!attribute management_type
    #   <p>The management type of the pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the security requirement pack.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the security requirement pack was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the security requirement pack was last updated, in UTC format.</p>
    #   @return [Time]
    class SecurityRequirementPackSummary < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :vendor_name,
      :management_type,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a security requirement.</p>
    # @!attribute pack_id
    #   <p>The unique identifier of the pack containing the security requirement.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the security requirement.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the security requirement was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the security requirement was last updated, in UTC format.</p>
    #   @return [Time]
    class SecurityRequirementSummary < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a self-managed private connection.</p>
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the resource configuration.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The certificate for the private connection.</p>
    #   @return [String]
    class SelfManagedInput < Struct.new(
      nil,
      :resource_configuration_id,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a service-managed private connection.</p>
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The VPC to create the service-managed resource gateway in.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnets that the service-managed resource gateway spans.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security groups to attach to the service-managed resource gateway.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type of the service-managed resource gateway.</p>
    #   @return [String]
    # @!attribute ipv4_addresses_per_eni
    #   <p>The number of IPv4 addresses in each elastic network interface for the service-managed resource gateway.</p>
    #   @return [Integer]
    # @!attribute port_ranges
    #   <p>The TCP port ranges that a consumer can use to access the resource.</p>
    #   @return [Array<String>]
    # @!attribute certificate
    #   <p>The certificate for the private connection.</p>
    #   @return [String]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway. Defaults to PUBLIC when not set.</p>
    #   @return [String]
    class ServiceManagedInput < Struct.new(
      nil,
      :host_address,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :ip_address_type,
      :ipv4_addresses_per_eni,
      :port_ranges,
      :certificate,
      :dns_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds a service quota. Review your current usage and request a quota increase if needed.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a source code repository used for security analysis during a pentest.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the source code repository archive.</p>
    #   @return [String]
    class SourceCodeRepository < Struct.new(
      nil,
      :s3_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the StartCodeRemediation operation.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that produced the findings. Mutually exclusive with <code>codeReviewJobId</code>.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job that produced the findings. Mutually exclusive with <code>pentestJobId</code>.</p>
    #   @return [String]
    # @!attribute finding_ids
    #   <p>The list of finding identifiers to initiate code remediation for.</p>
    #   @return [Array<String>]
    class StartCodeRemediationInput < Struct.new(
      nil,
      :agent_space_id,
      :pentest_job_id,
      :code_review_job_id,
      :finding_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StartCodeRemediation operation.</p>
    class StartCodeRemediationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for starting the execution of a code review.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review to start a job for.</p>
    #   @return [String]
    # @!attribute diff_source
    #   <p>Source of the diff for a differential scan. When present, the job analyzes only the changed lines instead of performing a full scan.</p>
    #   @return [Types::DiffSource]
    class StartCodeReviewJobInput < Struct.new(
      nil,
      :agent_space_id,
      :code_review_id,
      :diff_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StartCodeReviewJob operation.</p>
    # @!attribute title
    #   <p>The title of the code review job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the code review job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the code review job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review job was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the started code review job.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    class StartCodeReviewJobOutput < Struct.new(
      nil,
      :title,
      :status,
      :created_at,
      :updated_at,
      :code_review_id,
      :code_review_job_id,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for starting the execution of a pentest.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest to start a job for.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of pentest job to start. Valid values are FULL, REVALIDATION, and CICD. When set to REVALIDATION, the selectedFindingIds parameter is required. When set to CICD, the scopeChanges parameter defines the code changes to test.</p>
    #   @return [String]
    # @!attribute selected_finding_ids
    #   <p>The list of finding identifiers to revalidate. Required when jobType is REVALIDATION. Each finding must belong to the same agent space and pentest.</p>
    #   @return [Array<String>]
    # @!attribute scope_changes
    #   <p>The code changes that define the scope of a CI/CD pentest job. Provide this when starting a job with jobType CICD to test only the changes in the current pipeline run.</p>
    #   @return [Array<Types::ScopeChange>]
    class StartPentestJobInput < Struct.new(
      nil,
      :agent_space_id,
      :pentest_id,
      :job_type,
      :selected_finding_ids,
      :scope_changes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StartPentestJob operation.</p>
    # @!attribute title
    #   <p>The title of the pentest job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the pentest job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the pentest job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest job was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the started pentest job.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    class StartPentestJobOutput < Struct.new(
      nil,
      :title,
      :status,
      :created_at,
      :updated_at,
      :pentest_id,
      :pentest_job_id,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for starting a threat model job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model to start a job for.</p>
    #   @return [String]
    class StartThreatModelJobInput < Struct.new(
      nil,
      :agent_space_id,
      :threat_model_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StartThreatModelJob operation.</p>
    # @!attribute title
    #   <p>The title of the threat model job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat model job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat model job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model job was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model.</p>
    #   @return [String]
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the started threat model job.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    class StartThreatModelJobOutput < Struct.new(
      nil,
      :title,
      :status,
      :created_at,
      :updated_at,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a step in the pentest job execution pipeline. Steps include preflight, static analysis, pentest, and finalizing.</p>
    # @!attribute name
    #   <p>The name of the step. Valid values include PREFLIGHT, STATIC_ANALYSIS, PENTEST, VALIDATION, and FINALIZING.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the step.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the step was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the step was last updated, in UTC format.</p>
    #   @return [Time]
    class Step < Struct.new(
      nil,
      :name,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for stopping the execution of a code review job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute code_review_job_id
    #   <p>The unique identifier of the code review job to stop.</p>
    #   @return [String]
    class StopCodeReviewJobInput < Struct.new(
      nil,
      :agent_space_id,
      :code_review_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StopCodeReviewJob operation.</p>
    class StopCodeReviewJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for stopping the execution of a pentest.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job to stop.</p>
    #   @return [String]
    class StopPentestJobInput < Struct.new(
      nil,
      :agent_space_id,
      :pentest_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StopPentestJob operation.</p>
    class StopPentestJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for stopping a threat model job.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job to stop.</p>
    #   @return [String]
    class StopThreatModelJobInput < Struct.new(
      nil,
      :agent_space_id,
      :threat_model_job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the StopThreatModelJob operation.</p>
    class StopThreatModelJobOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for TagResource operation.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for TagResource operation.</p>
    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a target domain registered for penetration testing. A target domain must be verified through DNS TXT or HTTP route verification before it can be used in pentests.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The current verification status of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>The reason for the current target domain verification status.</p>
    #   @return [String]
    # @!attribute verification_details
    #   <p>The verification details for the target domain.</p>
    #   @return [Types::VerificationDetails]
    # @!attribute created_at
    #   <p>The date and time the target domain was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute verified_at
    #   <p>The date and time the target domain was verified, in UTC format.</p>
    #   @return [Time]
    class TargetDomain < Struct.new(
      nil,
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a target domain.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The current verification status of the target domain.</p>
    #   @return [String]
    class TargetDomainSummary < Struct.new(
      nil,
      :target_domain_id,
      :domain_name,
      :verification_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual security test task within a pentest job. Each task targets a specific risk type or endpoint and executes independently.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the task.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the task.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The list of categories assigned to the task.</p>
    #   @return [Array<Types::Category>]
    # @!attribute risk_type
    #   <p>The type of security risk the task is testing for.</p>
    #   @return [String]
    # @!attribute target_endpoint
    #   <p>The target endpoint being tested by the task.</p>
    #   @return [Types::Endpoint]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute logs_location
    #   <p>The location of the task execution logs.</p>
    #   @return [Types::LogLocation]
    # @!attribute task_hours
    #   <p>The number of active work hours consumed by the task during execution.</p>
    #   @return [Float]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class Task < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a task.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest associated with the task.</p>
    #   @return [String]
    # @!attribute pentest_job_id
    #   <p>The unique identifier of the pentest job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>The type of security risk the task is testing for.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute task_hours
    #   <p>The number of active work hours consumed by the task during execution.</p>
    #   @return [Float]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class TaskSummary < Struct.new(
      nil,
      :task_id,
      :pentest_id,
      :pentest_job_id,
      :agent_space_id,
      :title,
      :risk_type,
      :execution_status,
      :task_hours,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The category of application a pentest targets.</p>
    # @!attribute type
    #   <p>The category of application under test.</p>
    #   @return [String]
    class TestScope < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a threat identified during threat modeling.</p>
    # @!attribute threat_id
    #   <p>The unique identifier of the threat.</p>
    #   @return [String]
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job that produced the threat.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of the threat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Optional customer comment on the threat.</p>
    #   @return [String]
    # @!attribute threat_source
    #   <p>The actor or origin of the threat.</p>
    #   @return [String]
    # @!attribute prerequisites
    #   <p>The conditions required for the threat to be exploitable.</p>
    #   @return [String]
    # @!attribute threat_action
    #   <p>What the threat source can do.</p>
    #   @return [String]
    # @!attribute threat_impact
    #   <p>The direct consequence of the threat action.</p>
    #   @return [String]
    # @!attribute impacted_goal
    #   <p>The security goals affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute impacted_assets
    #   <p>The specific assets affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute anchor
    #   <p>The DFD element this threat is anchored to.</p>
    #   @return [Types::ThreatAnchorShape]
    # @!attribute evidence
    #   <p>The source code files supporting the threat.</p>
    #   @return [Array<Types::ThreatEvidenceShape>]
    # @!attribute stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    #   @return [Array<String>]
    # @!attribute recommendation
    #   <p>The recommended mitigation guidance for this threat.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Who created this threat.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>Who last updated this threat.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat was last updated, in UTC format.</p>
    #   @return [Time]
    class Threat < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>DFD element that a threat is anchored to.</p>
    # @!attribute kind
    #   <p>The kind of DFD element.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The identifier of the DFD element.</p>
    #   @return [String]
    # @!attribute package_id
    #   <p>The package identifier containing the DFD element.</p>
    #   @return [String]
    class ThreatAnchorShape < Struct.new(
      nil,
      :kind,
      :id,
      :package_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Source code file supporting a threat.</p>
    # @!attribute package_id
    #   <p>The package identifier containing the evidence file.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The file path of the evidence.</p>
    #   @return [String]
    class ThreatEvidenceShape < Struct.new(
      nil,
      :package_id,
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a threat model configuration that defines the parameters for automated threat analysis, including target assets and logging configuration.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application or system being threat modeled.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the threat model.</p>
    #   @return [Types::Assets]
    # @!attribute scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute service_role
    #   <p>The IAM service role used for the threat model.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the threat model.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute created_at
    #   <p>The date and time the threat model was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatModel < Struct.new(
      nil,
      :threat_model_id,
      :agent_space_id,
      :title,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :report_destination,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a threat model job, which is an execution instance of a threat model.</p>
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job.</p>
    #   @return [String]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model associated with the job.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat model job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat model job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model job was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute execution_start_time
    #   <p>The date and time the threat model job execution started, in UTC format.</p>
    #   @return [Time]
    # @!attribute execution_end_time
    #   <p>The date and time the threat model job execution ended, in UTC format.</p>
    #   @return [Time]
    # @!attribute source_code
    #   <p>The list of source code repositories used for threat modeling.</p>
    #   @return [Array<Types::SourceCodeRepository>]
    # @!attribute integrated_repositories
    #   <p>The list of integrated repositories used for threat modeling.</p>
    #   @return [Array<Types::IntegratedRepository>]
    # @!attribute documents
    #   <p>The list of documents used for threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute error_information
    #   <p>Error information if the threat model job encountered an error.</p>
    #   @return [Types::ErrorInformation]
    # @!attribute system_overview
    #   <p>The system overview generated during threat modeling.</p>
    #   @return [String]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    class ThreatModelJob < Struct.new(
      nil,
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
      :system_overview,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a threat model job.</p>
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job.</p>
    #   @return [String]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model associated with the job.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat model job.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat model job was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model job was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatModelJobSummary < Struct.new(
      nil,
      :threat_model_job_id,
      :threat_model_id,
      :agent_space_id,
      :title,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an individual task within a threat model job.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model associated with the task.</p>
    #   @return [String]
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the task.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute logs_location
    #   <p>The location of the task execution logs.</p>
    #   @return [Types::LogLocation]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatModelJobTask < Struct.new(
      nil,
      :task_id,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id,
      :title,
      :description,
      :execution_status,
      :logs_location,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a threat model job task.</p>
    # @!attribute task_id
    #   <p>The unique identifier of the task.</p>
    #   @return [String]
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model associated with the task.</p>
    #   @return [String]
    # @!attribute threat_model_job_id
    #   <p>The unique identifier of the threat model job that contains the task.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the task.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The current execution status of the task.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the task was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the task was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatModelJobTaskSummary < Struct.new(
      nil,
      :task_id,
      :threat_model_id,
      :threat_model_job_id,
      :agent_space_id,
      :title,
      :execution_status,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a threat model.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat model was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatModelSummary < Struct.new(
      nil,
      :threat_model_id,
      :agent_space_id,
      :title,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a threat.</p>
    # @!attribute threat_id
    #   <p>The unique identifier of the threat.</p>
    #   @return [String]
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job that produced the threat.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of the threat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat.</p>
    #   @return [String]
    # @!attribute stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    #   @return [Array<String>]
    # @!attribute created_by
    #   <p>Who created this threat.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>Who last updated this threat.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat was last updated, in UTC format.</p>
    #   @return [Time]
    class ThreatSummary < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   <p>Error description.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>Service code for throttling limit.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Quota code for throttling limit.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A condition on a pull request value.</p>
    # @!attribute type
    #   <p>The pull request value to match.</p>
    #   @return [String]
    # @!attribute patterns
    #   <p>The regular expressions to match against the value.</p>
    #   @return [Array<String>]
    # @!attribute match_mode
    #   <p>Whether the value must match the patterns. The default is <code>INCLUDE</code>.</p>
    #   @return [String]
    class TriggerFilter < Struct.new(
      nil,
      :type,
      :patterns,
      :match_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of conditions that start an automatic code review when they all pass. A filter group must include <code>events</code>, <code>filters</code>, or both.</p>
    # @!attribute events
    #   <p>Passes when the pull request event is one of the listed events. If you omit this, the group matches <code>PULL_REQUEST_READY_FOR_REVIEW</code> and <code>PULL_REQUEST_DRAFT</code> events only.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Passes when every filter passes. If you omit this, the group matches its events on any target branch and with any labels.</p>
    #   @return [Array<Types::TriggerFilter>]
    class TriggerFilterGroup < Struct.new(
      nil,
      :events,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A trust anchor used when validating a target endpoint's TLS certificate.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute source
    #   <p>The source that Security Agent reads the certificate from.</p>
    #   @return [Types::CaCertificateSource]
    class TrustedCaCertificate < Struct.new(
      nil,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for UntagResource operation.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for UntagResource operation.</p>
    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an agent space.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the agent space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the agent space.</p>
    #   @return [String]
    # @!attribute aws_resources
    #   <p>The updated AWS resources to associate with the agent space.</p>
    #   @return [Types::AWSResources]
    # @!attribute target_domain_ids
    #   <p>The updated list of target domain identifiers to associate with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute code_review_settings
    #   <p>The updated code review settings for the agent space.</p>
    #   @return [Types::CodeReviewSettings]
    class UpdateAgentSpaceInput < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateAgentSpace operation.</p>
    # @!attribute agent_space_id
    #   <p>The unique identifier of the updated agent space.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the agent space.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the agent space.</p>
    #   @return [String]
    # @!attribute aws_resources
    #   <p>The AWS resources associated with the agent space.</p>
    #   @return [Types::AWSResources]
    # @!attribute target_domain_ids
    #   <p>The list of target domain identifiers associated with the agent space.</p>
    #   @return [Array<String>]
    # @!attribute code_review_settings
    #   <p>The code review settings for the agent space.</p>
    #   @return [Types::CodeReviewSettings]
    # @!attribute created_at
    #   <p>The date and time the agent space was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the agent space was last updated, in UTC format.</p>
    #   @return [Time]
    class UpdateAgentSpaceOutput < Struct.new(
      nil,
      :agent_space_id,
      :name,
      :description,
      :aws_resources,
      :target_domain_ids,
      :code_review_settings,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application to update.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The updated Amazon Resource Name (ARN) of the IAM role for the application.</p>
    #   @return [String]
    # @!attribute default_kms_key_id
    #   <p>The updated identifier of the default AWS KMS key for the application.</p>
    #   @return [String]
    class UpdateApplicationRequest < Struct.new(
      nil,
      :application_id,
      :role_arn,
      :default_kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the updated application.</p>
    #   @return [String]
    class UpdateApplicationResponse < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing code review.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review to update.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The updated title of the code review.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The updated assets for the code review.</p>
    #   @return [Types::Assets]
    # @!attribute service_role
    #   <p>The updated IAM service role for the code review.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The updated CloudWatch Logs configuration for the code review.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute code_remediation_strategy
    #   <p>The updated code remediation strategy for the code review.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The updated validation mode for the code review. Valid values are SIMULATED and DISABLED.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The updated maximum number of billable task hours allowed for jobs started from this code review.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    class UpdateCodeReviewInput < Struct.new(
      nil,
      :code_review_id,
      :agent_space_id,
      :title,
      :assets,
      :service_role,
      :log_config,
      :code_remediation_strategy,
      :validation_mode,
      :max_task_hours,
      :report_destination,
      :report_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateCodeReview operation.</p>
    # @!attribute code_review_id
    #   <p>The unique identifier of the code review.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the code review.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the code review was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the code review was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute assets
    #   <p>The assets included in the code review.</p>
    #   @return [Types::Assets]
    # @!attribute service_role
    #   <p>The IAM service role used for the code review.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the code review.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the code review.</p>
    #   @return [String]
    # @!attribute code_remediation_strategy
    #   <p>The code remediation strategy for the code review.</p>
    #   @return [String]
    # @!attribute validation_mode
    #   <p>The validation mode for the code review.</p>
    #   @return [String]
    # @!attribute max_task_hours
    #   <p>The maximum number of billable task hours configured for jobs started from this code review. Null if no budget cap is set.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    class UpdateCodeReviewOutput < Struct.new(
      nil,
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
      :max_task_hours,
      :report_destination,
      :report_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing security finding.</p>
    # @!attribute finding_id
    #   <p>The unique identifier of the finding to update.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the finding.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the finding.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description for the finding.</p>
    #   @return [String]
    # @!attribute risk_type
    #   <p>The updated risk type for the finding.</p>
    #   @return [String]
    # @!attribute risk_level
    #   <p>The updated risk level for the finding.</p>
    #   @return [String]
    # @!attribute risk_score
    #   <p>The updated numerical risk score for the finding.</p>
    #   @return [String]
    # @!attribute attack_script
    #   <p>The updated attack script for the finding.</p>
    #   @return [String]
    # @!attribute reasoning
    #   <p>The updated reasoning for the finding.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status for the finding.</p>
    #   @return [String]
    # @!attribute customer_note
    #   <p>A customer-provided note on the finding.</p>
    #   @return [String]
    class UpdateFindingInput < Struct.new(
      nil,
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
      :customer_note,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateFinding operation.</p>
    class UpdateFindingOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute integration_id
    #   <p>The unique identifier of the integration.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of integrated resource items to update.</p>
    #   @return [Array<Types::IntegratedResourceInputItem>]
    class UpdateIntegratedResourcesInput < Struct.new(
      nil,
      :agent_space_id,
      :integration_id,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateIntegratedResourcesOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for creating or rotating an integration's webhook.</p>
    # @!attribute integration_id
    #   <p>The ID of the integration whose webhook you want to create or rotate.</p>
    #   @return [String]
    # @!attribute webhook_action
    #   <p>The action to perform on the integration's webhook.</p>
    #   @return [String]
    class UpdateIntegrationInput < Struct.new(
      nil,
      :integration_id,
      :webhook_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateIntegration operation.</p>
    # @!attribute integration_id
    #   <p>The ID of the integration.</p>
    #   @return [String]
    # @!attribute webhook_url
    #   <p>The payload URL to configure on your provider instance. Returned when a webhook is created; unchanged by a rotate.</p>
    #   @return [String]
    # @!attribute secret
    #   <p>The HMAC signing secret for the webhook. Returned only once, in this response; it is never returned again.</p>
    #   @return [String]
    class UpdateIntegrationOutput < Struct.new(
      nil,
      :integration_id,
      :webhook_url,
      :secret,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing pentest.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest to update.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The updated title of the pentest.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The updated assets for the pentest.</p>
    #   @return [Types::Assets]
    # @!attribute exclude_risk_types
    #   <p>The updated list of risk types to exclude from the pentest.</p>
    #   @return [Array<String>]
    # @!attribute service_role
    #   <p>The updated IAM service role for the pentest.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The updated CloudWatch Logs configuration for the pentest.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute vpc_config
    #   <p>The updated VPC configuration for the pentest.</p>
    #   @return [Types::VpcConfig]
    # @!attribute network_traffic_config
    #   <p>The updated network traffic configuration for the pentest.</p>
    #   @return [Types::NetworkTrafficConfig]
    # @!attribute code_remediation_strategy
    #   <p>The updated code remediation strategy for the pentest.</p>
    #   @return [String]
    # @!attribute disable_managed_skills
    #   <p>The updated list of managed skills to disable for this pentest. Valid values include FINDING_PERSONALIZATION and LOGIN_OPTIMIZATION.</p>
    #   @return [Array<String>]
    # @!attribute max_task_hours
    #   <p>The updated maximum number of billable task hours allowed for jobs started from this pentest.</p>
    #   @return [Float]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute cicd_configuration
    #   <p>The updated CI/CD pentesting configuration to apply to the pentest.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    class UpdatePentestInput < Struct.new(
      nil,
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
      :max_task_hours,
      :report_destination,
      :report_filters,
      :cicd_configuration,
      :test_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdatePentest operation.</p>
    # @!attribute pentest_id
    #   <p>The unique identifier of the pentest.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the pentest.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the pentest was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the pentest was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute assets
    #   <p>The assets included in the pentest.</p>
    #   @return [Types::Assets]
    # @!attribute exclude_risk_types
    #   <p>The list of risk types excluded from the pentest.</p>
    #   @return [Array<String>]
    # @!attribute service_role
    #   <p>The IAM service role used for the pentest.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the pentest.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the pentest.</p>
    #   @return [String]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    # @!attribute report_filters
    #   <p>The report-generation filters applied when the report is exported.</p>
    #   @return [Types::ReportFilters]
    # @!attribute cicd_configuration
    #   <p>The CI/CD pentesting configuration applied to the pentest.</p>
    #   @return [Types::CiCdConfiguration]
    # @!attribute test_scope
    #   <p>The category of application a pentest targets.</p>
    #   @return [Types::TestScope]
    class UpdatePentestOutput < Struct.new(
      nil,
      :pentest_id,
      :title,
      :created_at,
      :updated_at,
      :assets,
      :exclude_risk_types,
      :service_role,
      :log_config,
      :agent_space_id,
      :report_destination,
      :report_filters,
      :cicd_configuration,
      :test_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_connection_name
    #   <p>The name of the private connection to update.</p>
    #   @return [String]
    # @!attribute certificate
    #   <p>The PEM-encoded certificate chain for the private connection.</p>
    #   @return [String]
    class UpdatePrivateConnectionCertificateInput < Struct.new(
      nil,
      :private_connection_name,
      :certificate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the private connection.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the private connection, indicating whether it is service-managed or self-managed.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the private connection.</p>
    #   @return [String]
    # @!attribute resource_gateway_id
    #   <p>The identifier or ARN of the VPC Lattice resource gateway.</p>
    #   @return [String]
    # @!attribute host_address
    #   <p>The IP address or DNS name of the target resource.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The identifier of the VPC the resource gateway is created in.</p>
    #   @return [String]
    # @!attribute resource_configuration_id
    #   <p>The identifier or ARN of the VPC Lattice resource configuration.</p>
    #   @return [String]
    # @!attribute certificate_expiry_time
    #   <p>The date and time the connection's certificate expires, in UTC format.</p>
    #   @return [Time]
    # @!attribute dns_resolution
    #   <p>The DNS resolution mode for the resource gateway.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>A message describing why the private connection entered a failed state, if applicable.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the private connection.</p>
    #   @return [Hash<String, String>]
    class UpdatePrivateConnectionCertificateOutput < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the details for updating an existing security requirement within a pack. The name is an immutable identifier used to locate the requirement and cannot be modified.</p>
    # @!attribute name
    #   <p>The name of the security requirement to update. This is an immutable identifier and cannot be changed once the requirement is created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the security requirement.</p>
    #   @return [String]
    # @!attribute domain
    #   <p>The updated security domain the requirement belongs to.</p>
    #   @return [String]
    # @!attribute evaluation
    #   <p>The updated evaluation criteria used to assess compliance with this requirement.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>The updated remediation steps when the requirement is not met.</p>
    #   @return [String]
    class UpdateSecurityRequirementEntry < Struct.new(
      nil,
      :name,
      :description,
      :domain,
      :evaluation,
      :remediation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name of the security requirement pack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the security requirement pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the security requirement pack.</p>
    #   @return [String]
    class UpdateSecurityRequirementPackInput < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pack_id
    #   <p>The unique identifier of the security requirement pack.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the security requirement pack.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the security requirement pack.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the security requirement pack.</p>
    #   @return [String]
    class UpdateSecurityRequirementPackOutput < Struct.new(
      nil,
      :pack_id,
      :name,
      :description,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating a target domain.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain to update.</p>
    #   @return [String]
    # @!attribute verification_method
    #   <p>The updated verification method for the target domain.</p>
    #   @return [String]
    class UpdateTargetDomainInput < Struct.new(
      nil,
      :target_domain_id,
      :verification_method,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateTargetDomain operation.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status
    #   <p>The current verification status of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>The reason for the current target domain verification status.</p>
    #   @return [String]
    # @!attribute verification_details
    #   <p>The updated verification details for the target domain.</p>
    #   @return [Types::VerificationDetails]
    # @!attribute created_at
    #   <p>The date and time the target domain was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute verified_at
    #   <p>The date and time the target domain was verified, in UTC format.</p>
    #   @return [Time]
    class UpdateTargetDomainOutput < Struct.new(
      nil,
      :target_domain_id,
      :domain_name,
      :verification_status,
      :verification_status_reason,
      :verification_details,
      :created_at,
      :verified_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing threat.</p>
    # @!attribute threat_id
    #   <p>The unique identifier of the threat to update.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The updated status of the threat.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Optional customer comment.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The updated natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The updated severity level of the threat.</p>
    #   @return [String]
    # @!attribute threat_source
    #   <p>The updated actor or origin of the threat.</p>
    #   @return [String]
    # @!attribute prerequisites
    #   <p>The updated conditions required for the threat to be exploitable.</p>
    #   @return [String]
    # @!attribute threat_action
    #   <p>The updated description of what the threat source can do.</p>
    #   @return [String]
    # @!attribute threat_impact
    #   <p>The updated direct consequence of the threat action.</p>
    #   @return [String]
    # @!attribute impacted_goal
    #   <p>The updated security goals affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute impacted_assets
    #   <p>The updated list of specific assets affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute anchor
    #   <p>The updated DFD element this threat is anchored to.</p>
    #   @return [Types::ThreatAnchorShape]
    # @!attribute evidence
    #   <p>The updated source code files supporting the threat.</p>
    #   @return [Array<Types::ThreatEvidenceShape>]
    # @!attribute recommendation
    #   <p>The updated recommended mitigation guidance for this threat.</p>
    #   @return [String]
    class UpdateThreatInput < Struct.new(
      nil,
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
      :recommendation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for updating an existing threat model.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model to update.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The updated title of the threat model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated description of the application or system being threat modeled.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The updated assets for the threat model.</p>
    #   @return [Types::Assets]
    # @!attribute scope_docs
    #   <p>The updated scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute service_role
    #   <p>The updated IAM service role for the threat model.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The updated CloudWatch Logs configuration for the threat model.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    class UpdateThreatModelInput < Struct.new(
      nil,
      :threat_model_id,
      :agent_space_id,
      :title,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateThreatModel operation.</p>
    # @!attribute threat_model_id
    #   <p>The unique identifier of the threat model.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the threat model.</p>
    #   @return [String]
    # @!attribute agent_space_id
    #   <p>The unique identifier of the agent space that contains the threat model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the application or system being threat modeled.</p>
    #   @return [String]
    # @!attribute assets
    #   <p>The assets included in the threat model.</p>
    #   @return [Types::Assets]
    # @!attribute scope_docs
    #   <p>The scoped documents for the agent to focus on during threat modeling.</p>
    #   @return [Array<Types::DocumentInfo>]
    # @!attribute service_role
    #   <p>The IAM service role used for the threat model.</p>
    #   @return [String]
    # @!attribute log_config
    #   <p>The CloudWatch Logs configuration for the threat model.</p>
    #   @return [Types::CloudWatchLog]
    # @!attribute created_at
    #   <p>The date and time the threat model was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat model was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute report_destination
    #   <p>The destination for publishing scan reports to an integrated document provider.</p>
    #   @return [Types::ReportDestination]
    class UpdateThreatModelOutput < Struct.new(
      nil,
      :threat_model_id,
      :title,
      :agent_space_id,
      :description,
      :assets,
      :scope_docs,
      :service_role,
      :log_config,
      :created_at,
      :updated_at,
      :report_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the UpdateThreat operation.</p>
    # @!attribute threat_id
    #   <p>The unique identifier of the threat.</p>
    #   @return [String]
    # @!attribute threat_job_id
    #   <p>The unique identifier of the threat model job the threat belongs to.</p>
    #   @return [String]
    # @!attribute title
    #   <p>A short title summarizing the threat.</p>
    #   @return [String]
    # @!attribute statement
    #   <p>The natural-language threat statement.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity level of the threat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the threat.</p>
    #   @return [String]
    # @!attribute comments
    #   <p>Optional customer comment on the threat.</p>
    #   @return [String]
    # @!attribute stride
    #   <p>The STRIDE categories applicable to this threat.</p>
    #   @return [Array<String>]
    # @!attribute threat_source
    #   <p>The actor or origin of the threat.</p>
    #   @return [String]
    # @!attribute prerequisites
    #   <p>The conditions required for the threat to be exploitable.</p>
    #   @return [String]
    # @!attribute threat_action
    #   <p>What the threat source can do.</p>
    #   @return [String]
    # @!attribute threat_impact
    #   <p>The direct consequence of the threat action.</p>
    #   @return [String]
    # @!attribute impacted_goal
    #   <p>The security goals affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute impacted_assets
    #   <p>The specific assets affected by the threat.</p>
    #   @return [Array<String>]
    # @!attribute anchor
    #   <p>The DFD element this threat is anchored to.</p>
    #   @return [Types::ThreatAnchorShape]
    # @!attribute evidence
    #   <p>The source code files supporting the threat.</p>
    #   @return [Array<Types::ThreatEvidenceShape>]
    # @!attribute recommendation
    #   <p>The recommended mitigation guidance for this threat.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>Who created this threat.</p>
    #   @return [String]
    # @!attribute updated_by
    #   <p>Who last updated this threat.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the threat was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the threat was last updated, in UTC format.</p>
    #   @return [Time]
    class UpdateThreatOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for a user membership, including the role assigned to the user within the agent space.</p>
    # @!attribute role
    #   <p>The role assigned to the user. Currently, only MEMBER is supported.</p>
    #   @return [String]
    class UserConfig < Struct.new(
      nil,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata about a user member, including the username and email address.</p>
    # @!attribute username
    #   <p>The username of the user.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address of the user.</p>
    #   @return [String]
    class UserMetadata < Struct.new(
      nil,
      :username,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   <p>A summary of the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of specific failures encountered during validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes one specific validation failure for an input member.</p>
    # @!attribute path
    #   <p>A JSONPointer expression to the structure member whose value failed to satisfy the modeled constraint.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed description of the validation failure.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :path,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the verification details for a target domain, including the verification method and provider-specific details.</p>
    # @!attribute method
    #   <p>The verification method used for the target domain.</p>
    #   @return [String]
    # @!attribute dns_txt
    #   <p>The DNS TXT verification details.</p>
    #   @return [Types::DnsVerification]
    # @!attribute http_route
    #   <p>The HTTP route verification details.</p>
    #   @return [Types::HttpVerification]
    class VerificationDetails < Struct.new(
      nil,
      :method,
      :dns_txt,
      :http_route,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metadata for a verification script that can be used to reproduce a security finding.</p>
    # @!attribute script_type
    #   <p>The type of script. Valid values are python and bash.</p>
    #   @return [String]
    # @!attribute script_url
    #   <p>URL to download the verification script.</p>
    #   @return [String]
    # @!attribute instructions
    #   <p>Instructions for running the verification script, including prerequisites and how to interpret results.</p>
    #   @return [String]
    # @!attribute env_vars
    #   <p>The list of environment variables required to run the verification script.</p>
    #   @return [Array<Types::VerificationScriptEnvVar>]
    class VerificationScript < Struct.new(
      nil,
      :script_type,
      :script_url,
      :instructions,
      :env_vars,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an environment variable required to run a verification script.</p>
    # @!attribute name
    #   <p>The name of the environment variable.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the environment variable.</p>
    #   @return [String]
    class VerificationScriptEnvVar < Struct.new(
      nil,
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for verifying ownership for a registered target domain in an agent space.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain to verify.</p>
    #   @return [String]
    class VerifyTargetDomainInput < Struct.new(
      nil,
      :target_domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for verifying ownership for a registered target domain in an agent space.</p>
    # @!attribute target_domain_id
    #   <p>The unique identifier of the target domain.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The domain name of the target domain.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the target domain was created, in UTC format.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time the target domain was last updated, in UTC format.</p>
    #   @return [Time]
    # @!attribute verified_at
    #   <p>The date and time the target domain was verified, in UTC format.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The verification status of the target domain.</p>
    #   @return [String]
    # @!attribute verification_status_reason
    #   <p>The reason for the current target domain verification status.</p>
    #   @return [String]
    class VerifyTargetDomainOutput < Struct.new(
      nil,
      :target_domain_id,
      :domain_name,
      :created_at,
      :updated_at,
      :verified_at,
      :status,
      :verification_status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The VPC configuration for a pentest, specifying the VPC, security groups, and subnets to use during testing.</p>
    # @!attribute vpc_arn
    #   <p>The Amazon Resource Name (ARN) or ID of the VPC.</p>
    #   @return [String]
    # @!attribute security_group_arns
    #   <p>The Amazon Resource Names (ARNs) or IDs of the security groups for the VPC configuration.</p>
    #   @return [Array<String>]
    # @!attribute subnet_arns
    #   <p>The Amazon Resource Names (ARNs) or IDs of the subnets for the VPC configuration.</p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      nil,
      :vpc_arn,
      :security_group_arns,
      :subnet_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
