# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Continuum
  module Types

    # The request is not authorized. Verify that your credentials and
    # request signature are valid and that you have permission to perform
    # this action.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A software package implicated by a finding.
    #
    # @!attribute [rw] name
    #   The package name.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The affected version.
    #   @return [String]
    #
    # @!attribute [rw] fixed_in_version
    #   The earliest version that resolves the issue, when one is known.
    #   @return [String]
    #
    # @!attribute [rw] package_manager
    #   The ecosystem supplying the package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AffectedPackage AWS API Documentation
    #
    class AffectedPackage < Struct.new(
      :name,
      :version,
      :fixed_in_version,
      :package_manager)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Collector ARN and data-access role to associate with
    # this Environment.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the Environment making the association.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Caller-provided token that makes retried association requests
    #   idempotent. The first successful request binds the token to the
    #   complete Collector ARN, supplied role, and result for at least 24
    #   hours. During that retry window, reusing it with a different request
    #   fails with ConflictException. A matching replay still requires the
    #   supplied role to have current Collector access. Once authorized, a
    #   matching replay returns the stored result without changing
    #   association state. Revocation can deny a replay; it does not remove
    #   the stored association or its original result.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the Collector to associate with this Environment.
    #   @return [String]
    #
    # @!attribute [rw] collector_data_access_role_arn
    #   IAM role in the Environment account that Continuum assumes before
    #   authorizing access to associated Collector inventory. Every
    #   association, including a same-account association, requires this
    #   role. The supplied ARN replaces the Environment's previously stored
    #   role. The customer is responsible for granting the role access to
    #   every Collector that should contribute data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AssociateCollectorInput AWS API Documentation
    #
    class AssociateCollectorInput < Struct.new(
      :environment_id,
      :client_token,
      :collector_arn,
      :collector_data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the Environment and the Collector associated by this request.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the Environment making the association.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the Environment making the association.
    #   @return [String]
    #
    # @!attribute [rw] associated_collector
    #   The Collector identifier and ARN validated by this operation.
    #   @return [Types::AssociatedCollector]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AssociateCollectorOutput AWS API Documentation
    #
    class AssociateCollectorOutput < Struct.new(
      :environment_id,
      :environment_arn,
      :associated_collector)
      SENSITIVE = []
      include Aws::Structure
    end

    # One Collector associated with an Environment.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the associated Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the associated Collector. The account and Region encoded
    #   in this ARN identify cross-account and cross-Region associations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AssociatedCollector AWS API Documentation
    #
    class AssociatedCollector < Struct.new(
      :collector_id,
      :collector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of one Environment associated with a Collector. This shape
    # intentionally remains distinct from EnvironmentSummary so the two list
    # operations can evolve independently.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the associated Environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the associated Environment. The account encoded in this
    #   ARN identifies cross-account associations; association mutations
    #   require its Region to match the Collector's Region.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-visible name of the associated Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the associated Environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the associated Environment was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/AssociatedEnvironment AWS API Documentation
    #
    class AssociatedEnvironment < Struct.new(
      :environment_id,
      :environment_arn,
      :name,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Code-specific environment properties. GetEnvironment returns the
    # source and operating policy; UpdateEnvironment returns Collector
    # details and the latest scan.
    #
    # @!attribute [rw] collector_details
    #   Collector data access configuration. Omitted when no Collector data
    #   access role is configured.
    #   @return [Types::CollectorDetails]
    #
    # @!attribute [rw] source_configuration
    #   Sources in the shape accepted by CreateEnvironment and
    #   UpdateEnvironment.
    #   @return [Types::EnvironmentSourceConfiguration]
    #
    # @!attribute [rw] environment_configuration
    #   Operating policy in the shape accepted by CreateEnvironment and
    #   UpdateEnvironment.
    #   @return [Types::EnvironmentConfiguration]
    #
    # @!attribute [rw] latest_scan
    #   The newest scan requested for this environment, if one exists.
    #   @return [Types::CodeScanSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CodeConfigurationDetails AWS API Documentation
    #
    class CodeConfigurationDetails < Struct.new(
      :collector_details,
      :source_configuration,
      :environment_configuration,
      :latest_scan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete customer-visible data for one environment scan.
    #
    # Kept distinct from CodeScanSummary so GetCodeScan can grow
    # independently of ListCodeScans without changing its response contract.
    #
    # @!attribute [rw] scan_run_id
    #   The unique scan identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current customer-visible status.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Why the scan was created. Always present.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time at which Continuum accepted the scan request.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   Time at which a terminal result was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   Failure detail present for unsuccessful scans.
    #   @return [String]
    #
    # @!attribute [rw] failure_stage
    #   Phase this scan failed in. Present only when `status` is FAILED, and
    #   absent for a scan that failed before this field existed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CodeScanData AWS API Documentation
    #
    class CodeScanData < Struct.new(
      :scan_run_id,
      :status,
      :origin,
      :created_at,
      :completed_at,
      :failure_message,
      :failure_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer-visible summary of one environment scan.
    #
    # @!attribute [rw] scan_run_id
    #   The unique scan identifier.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current customer-visible status.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Why the scan was created. Always present.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Time at which Continuum accepted the scan request.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   Time at which a terminal result was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] failure_message
    #   Failure detail present for unsuccessful scans.
    #   @return [String]
    #
    # @!attribute [rw] failure_stage
    #   Phase this scan failed in. Present only when `status` is FAILED, and
    #   absent for a scan that failed before this field existed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CodeScanSummary AWS API Documentation
    #
    class CodeScanSummary < Struct.new(
      :scan_run_id,
      :status,
      :origin,
      :created_at,
      :completed_at,
      :failure_message,
      :failure_stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Collector data access configuration returned for an environment.
    #
    # @!attribute [rw] collector_data_access_role_arn
    #   IAM role that Continuum assumes to authorize its access to
    #   associated Collector inventory. Required for nonempty Collector
    #   inventory resolution, in the same account or across accounts. This
    #   is independent from any S3 source role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CollectorDetails AWS API Documentation
    #
    class CollectorDetails < Struct.new(
      :collector_data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a Collector returned in list responses.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the Collector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source collected by this Collector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Collector was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CollectorSummary AWS API Documentation
    #
    class CollectorSummary < Struct.new(
      :collector_id,
      :collector_arn,
      :type,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be completed due to a conflict with the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   Description of the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Source and operating-policy settings for a new code environment.
    #
    # @!attribute [rw] source_configuration
    #   Source configuration for the environment.
    #   @return [Types::EnvironmentSourceConfiguration]
    #
    # @!attribute [rw] environment_configuration
    #   Environment-level operating policy.
    #   @return [Types::EnvironmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeConfiguration AWS API Documentation
    #
    class CreateCodeConfiguration < Struct.new(
      :source_configuration,
      :environment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the environment and the finding document to ingest.
    #
    # @!attribute [rw] environment_id
    #   The environment to ingest the finding into.
    #   @return [String]
    #
    # @!attribute [rw] ocsf_document
    #   The OCSF finding document to ingest, verbatim. Must declare a
    #   class\_uid Continuum supports (2002 Vulnerability Finding, or 2007
    #   Application Security Posture Finding) and validate against the
    #   vendored OCSF JSON Schema for that class, including the Continuum
    #   overlay requirements that finding\_info.uid be present and that
    #   vulnerabilities\[0\].affected\_code\[0\].file identify the code
    #   location. With several repositories in the environment, the file
    #   path must begin with the repository name. Maximum size 256 KB.
    #   Stored verbatim and normalized into the typed Finding members
    #   returned by GetCodeFinding. GetCodeFinding does not return the
    #   document itself.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] client_token
    #   Caller-provided idempotency token. A retry with the same token and
    #   an identical finding document replays the original result; the same
    #   token with different content is rejected.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeFindingInput AWS API Documentation
    #
    class CreateCodeFindingInput < Struct.new(
      :environment_id,
      :ocsf_document,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the identifier, ARN, title, and initial status of the newly
    # ingested finding.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier assigned to the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_arn
    #   The ARN of the ingested finding.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title extracted from the submitted document. Always populated at
    #   ingestion.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The finding's current lifecycle status -- SUBMITTED for a newly
    #   ingested finding, or the finding's present status when an
    #   idempotent retry replays an already-processed finding.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the finding was ingested.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeFindingOutput AWS API Documentation
    #
    class CreateCodeFindingOutput < Struct.new(
      :finding_id,
      :finding_arn,
      :title,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   Environment to scan.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An optional token identifying one scan request for this environment.
    #   SDKs generate a token when omitted. If a request reaches the service
    #   without a token, the service generates one for that request, so each
    #   request without a token starts a new scan. To retry a request after
    #   a lost response, supply the same token on the same environment; once
    #   a request with that token has succeeded, a retry returns the
    #   original scan. Concurrent requests with the same token, or a retry
    #   after a request that failed partway through, can leave an additional
    #   scan, which may end FAILED as superseded. A token is bound to its
    #   scan for as long as the service retains the scan's build record,
    #   with no shorter expiry. Deleting the environment makes the binding
    #   inaccessible: a later request with the token returns
    #   ResourceNotFoundException.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeScanInput AWS API Documentation
    #
    class CreateCodeScanInput < Struct.new(
      :environment_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan
    #   The scan run this request created, or the scan run a previous
    #   request with the same clientToken already accepted.
    #   @return [Types::CodeScanSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCodeScanOutput AWS API Documentation
    #
    class CreateCodeScanOutput < Struct.new(
      :scan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a Collector for the authenticated caller.
    #
    # @!attribute [rw] type
    #   Source to collect. Defaults to AWS\_COLLECTOR when omitted.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_cluster_role
    #   IAM role configuration used to collect Kubernetes cluster metadata.
    #   The authenticated caller must be allowed to pass its exact roleArn
    #   to Continuum.
    #   @return [Types::KubernetesClusterRoleConfiguration]
    #
    # @!attribute [rw] client_token
    #   Caller-provided token that makes retried create requests return the
    #   original Collector rather than creating a duplicate.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCollectorInput AWS API Documentation
    #
    class CreateCollectorInput < Struct.new(
      :type,
      :kubernetes_cluster_role,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the identifier and ARN of the newly created Collector.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier assigned to the Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the created Collector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source collected by this Collector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Collector was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateCollectorOutput AWS API Documentation
    #
    class CreateCollectorOutput < Struct.new(
      :collector_id,
      :collector_arn,
      :type,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific configuration for a new environment. Omission creates a
    # code environment with the default operating policy and no sources.
    #
    # @!attribute [rw] code_configuration
    #   Configuration for a code-scanning environment.
    #   @return [Types::CreateCodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateEnvironmentConfiguration AWS API Documentation
    #
    class CreateEnvironmentConfiguration < Struct.new(
      :code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the name and type-specific configuration of the new
    # environment. Source and operating-policy settings belong to
    # configuration.codeConfiguration.
    #
    # @!attribute [rw] name
    #   The customer-visible name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Type-specific configuration. Omission creates a code environment
    #   with the default operating policy and no sources.
    #   @return [Types::CreateEnvironmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateEnvironmentInput AWS API Documentation
    #
    class CreateEnvironmentInput < Struct.new(
      :name,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the identifier and ARN of the newly created environment.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier assigned to the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the created environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The initial status of the environment. Always ACTIVE on successful
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the environment was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateEnvironmentOutput AWS API Documentation
    #
    class CreateEnvironmentOutput < Struct.new(
      :environment_id,
      :environment_arn,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the provider configuration and name for the new integration.
    #
    # @!attribute [rw] client_token
    #   An optional token identifying one create attempt within the
    #   caller's account, Region, and operation. SDKs generate a token when
    #   omitted. If a request reaches the service without a token, the
    #   service generates one for that request. Each request without a token
    #   starts a new attempt. To replay an attempt, supply the same token
    #   and identical input. Authorized users and roles in the same account
    #   can retry an attempt this way. Token records are retained for eight
    #   hours after success or terminal failure, including after deletion of
    #   a successfully created integration. Different input with the same
    #   token returns ValidationException.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the integration.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration
    #   The provider-specific configuration required to create the
    #   integration. Only one member may be specified.
    #   @return [Types::ProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateIntegrationInput AWS API Documentation
    #
    class CreateIntegrationInput < Struct.new(
      :client_token,
      :name,
      :provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the original identifier, ARN, and creation time of the new or
    # replayed integration. A replay can refer to an integration that has
    # since been deleted.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the created integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The ARN of the created integration.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the integration was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/CreateIntegrationOutput AWS API Documentation
    #
    class CreateIntegrationOutput < Struct.new(
      :integration_id,
      :integration_arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Collector to delete.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteCollectorInput AWS API Documentation
    #
    class DeleteCollectorInput < Struct.new(
      :collector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the environment to delete.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteEnvironmentInput AWS API Documentation
    #
    class DeleteEnvironmentInput < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the integration to delete.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DeleteIntegrationInput AWS API Documentation
    #
    class DeleteIntegrationInput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identity only. Future providers may add union members without
    # duplicating state.
    #
    # @note DestinationTarget is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DestinationTarget corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   The S3 object the patch is delivered to.
    #   @return [Types::S3Target]
    #
    # @!attribute [rw] github
    #   The GitHub repository the patch is delivered to, including the pull
    #   request once it is opened.
    #   @return [Types::GitHubTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DestinationTarget AWS API Documentation
    #
    class DestinationTarget < Struct.new(
      :s3,
      :github,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < DestinationTarget; end
      class Github < DestinationTarget; end
      class Unknown < DestinationTarget; end
    end

    # Specifies the Collector to disassociate from this Environment.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the Environment whose associations are
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the Collector to disassociate from this Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/DisassociateCollectorInput AWS API Documentation
    #
    class DisassociateCollectorInput < Struct.new(
      :environment_id,
      :collector_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Environment-level operating policy.
    #
    # @!attribute [rw] network
    #   Network policy for agent execution.
    #   @return [Types::EnvironmentNetworkConfiguration]
    #
    # @!attribute [rw] scan_frequency
    #   Recurring scan interval: P1D (1 day), P2D (2 days), or P7D (7 days).
    #   PT0H disables recurring scans. Defaults to P1D when creating an
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] patch_creation_policy
    #   Whether Continuum creates a patch for a proposed remediation.
    #   Defaults to DISABLED.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentConfiguration AWS API Documentation
    #
    class EnvironmentConfiguration < Struct.new(
      :network,
      :scan_frequency,
      :patch_creation_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific configuration and state returned by GetEnvironment and
    # UpdateEnvironment.
    #
    # @!attribute [rw] code_configuration
    #   Configuration and scan state for a code-scanning environment.
    #   @return [Types::CodeConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentConfigurationDetails AWS API Documentation
    #
    class EnvironmentConfigurationDetails < Struct.new(
      :code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of an environment returned in list responses.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-visible name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the environment was created. Preserve the
    #   existing EnvironmentSummary.createdAt date-time wire format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentListEntry AWS API Documentation
    #
    class EnvironmentListEntry < Struct.new(
      :environment_id,
      :environment_arn,
      :name,
      :status,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Network policy for agent execution.
    #
    # @!attribute [rw] allowed_domains
    #   Domains that an environment's agent execution may contact.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentNetworkConfiguration AWS API Documentation
    #
    class EnvironmentNetworkConfiguration < Struct.new(
      :allowed_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # One repository selected from a previously-created integration.
    #
    # @!attribute [rw] integration_id
    #   Integration that provides the selected repository.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   Repository selected from that integration in owner/repository form.
    #   @return [String]
    #
    # @!attribute [rw] default_branch
    #   Branch used when a scan does not choose a more specific revision.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentRepositorySource AWS API Documentation
    #
    class EnvironmentRepositorySource < Struct.new(
      :integration_id,
      :repository,
      :default_branch)
      SENSITIVE = []
      include Aws::Structure
    end

    # An S3 source for one environment, backed by a previously-created S3
    # integration.
    #
    # @!attribute [rw] integration_id
    #   Identifier of an S3 integration in the caller's account. The
    #   integration supplies the bucket, the read role, and the external ID
    #   Continuum uses to read the prefixes.
    #   @return [String]
    #
    # @!attribute [rw] code_prefix
    #   Prefix containing source code. Defaults to code/ when omitted.
    #   @return [String]
    #
    # @!attribute [rw] context_prefix
    #   Prefix containing customer-authored context. Defaults to context/
    #   when omitted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentS3IntegrationSource AWS API Documentation
    #
    class EnvironmentS3IntegrationSource < Struct.new(
      :integration_id,
      :code_prefix,
      :context_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # GA source configuration for code and customer-authored context.
    #
    # @!attribute [rw] s3_sources
    #   S3 sources backed by previously-created S3 integrations.
    #   @return [Array<Types::EnvironmentS3IntegrationSource>]
    #
    # @!attribute [rw] repository_sources
    #   Explicit repository selections from previously-created integrations.
    #   @return [Array<Types::EnvironmentRepositorySource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/EnvironmentSourceConfiguration AWS API Documentation
    #
    class EnvironmentSourceConfiguration < Struct.new(
      :s3_sources,
      :repository_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # One compliance check behind a posture finding.
    #
    # @!attribute [rw] uid
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-form prose about a finding (summary, detailed analysis,
    #   rationale, remediation guidance). Capped well below the finding
    #   document's own 256 KB limit, since several of these can appear on
    #   one finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingComplianceCheck AWS API Documentation
    #
    class FindingComplianceCheck < Struct.new(
      :uid,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # A code citation supporting a validation verdict.
    #
    # @!attribute [rw] file
    #   The file the evidence was found in.
    #   @return [String]
    #
    # @!attribute [rw] line
    #   The 1-indexed line, when known.
    #   @return [Integer]
    #
    # @!attribute [rw] snippet
    #   The cited excerpt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingEvidence AWS API Documentation
    #
    class FindingEvidence < Struct.new(
      :file,
      :line,
      :snippet)
      SENSITIVE = []
      include Aws::Structure
    end

    # A code location a finding points at.
    #
    # @!attribute [rw] file_path
    #   Repository-relative path.
    #   @return [String]
    #
    # @!attribute [rw] start_line
    #   1-indexed first line of the affected range.
    #   @return [Integer]
    #
    # @!attribute [rw] end_line
    #   1-indexed last line, when the producer reported a range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingLocation AWS API Documentation
    #
    class FindingLocation < Struct.new(
      :file_path,
      :start_line,
      :end_line)
      SENSITIVE = []
      include Aws::Structure
    end

    # The compliance posture a finding reports, for the Application Security
    # Posture Finding class. Absent for a vulnerability finding.
    #
    # @!attribute [rw] application
    #   The application the posture was assessed against.
    #   @return [String]
    #
    # @!attribute [rw] application_uid
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] control
    #   The control assessed, and the producer's description of it.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-form prose about a finding (summary, detailed analysis,
    #   rationale, remediation guidance). Capped well below the finding
    #   document's own 256 KB limit, since several of these can appear on
    #   one finding.
    #   @return [String]
    #
    # @!attribute [rw] standards
    #   Standards and requirements the control maps to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] requirements
    #   A free-form list of strings carried verbatim from a producer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] checks
    #   The individual checks performed.
    #   @return [Array<Types::FindingComplianceCheck>]
    #
    # @!attribute [rw] status
    #   The producer's compliance status, and the enum value behind it.
    #   @return [String]
    #
    # @!attribute [rw] status_id
    #   The producer's numeric enum value for `status`.
    #   @return [Integer]
    #
    # @!attribute [rw] remediation
    #   Free-form prose about a finding (summary, detailed analysis,
    #   rationale, remediation guidance). Capped well below the finding
    #   document's own 256 KB limit, since several of these can appear on
    #   one finding.
    #   @return [String]
    #
    # @!attribute [rw] remediation_references
    #   A free-form list of strings carried verbatim from a producer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingPosture AWS API Documentation
    #
    class FindingPosture < Struct.new(
      :application,
      :application_uid,
      :application_version,
      :control,
      :description,
      :standards,
      :requirements,
      :checks,
      :status,
      :status_id,
      :remediation,
      :remediation_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # A cloud or application resource a finding concerns.
    #
    # @!attribute [rw] uid
    #   A resource identifier -- a cloud ARN, a context-graph node id, or
    #   whatever identifier scheme the producer uses.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingResource AWS API Documentation
    #
    class FindingResource < Struct.new(
      :uid,
      :name,
      :type,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a finding returned in list responses. Shares
    # FindingLifecycleFields with the read operations so the list and get
    # projections cannot drift. Carries a lean content subset -- fetch the
    # finding for its full contents.
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_arn
    #   The ARN of the finding.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the finding.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The system that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] source_finding_id
    #   The producer's own identifier for the finding.
    #   @return [String]
    #
    # @!attribute [rw] reported_at
    #   When the producer reported the finding -- its own clock, which is
    #   not Continuum's ingestion time. `createdAt` is when Continuum
    #   accepted it; these are genuinely different instants and a reader
    #   usually wants this one.
    #
    #   For CreateCodeFinding, this is the submitted OCSF document's own
    #   top-level `time`. For findings Continuum's scanner produces, it is
    #   the finding's own creation time.
    #
    #   Continuum does not validate it for plausibility: a producer's value
    #   is echoed as given, so a `timestamp` here asserts the unit and
    #   format, not that the instant is genuine.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status last transitioned.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the finding was ingested.
    #   @return [Time]
    #
    # @!attribute [rw] scan_run_id
    #   The scan that produced the finding, when it came from one. For a
    #   finding Continuum's scanner produced, this is the Continuum scan
    #   run (see GetCodeScan). For a finding submitted with
    #   CreateCodeFinding, it is the OCSF document's
    #   `metadata.correlation_uid`, when that value is a valid ScanRunId.
    #   Absent when the finding did not come from a scan.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Human-readable context about the current status.
    #   @return [String]
    #
    # @!attribute [rw] discard_reason
    #   Why the finding was not escalated. Present only when status is
    #   DISCARDED.
    #   @return [String]
    #
    # @!attribute [rw] discard_reasoning
    #   Customer-facing explanation accompanying `discardReason`.
    #   @return [String]
    #
    # @!attribute [rw] duplicate_of_issue_id
    #   The existing issue this finding duplicates. Present only for the
    #   DUPLICATE\_OF\_* discard reasons.
    #   @return [String]
    #
    # @!attribute [rw] created_issue_id
    #   The issue Continuum created from this finding.
    #   @return [String]
    #
    # @!attribute [rw] completed_at
    #   When processing finished, whether by creating an issue or
    #   discarding. Absent while the finding is still in flight.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   What kind of finding this is.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The producer's title for the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The finding's severity.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The producer's vulnerability category.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file the finding is about, when it has a code location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingSummary AWS API Documentation
    #
    class FindingSummary < Struct.new(
      :finding_id,
      :finding_arn,
      :environment_id,
      :source,
      :source_finding_id,
      :reported_at,
      :status,
      :status_updated_at,
      :created_at,
      :scan_run_id,
      :status_message,
      :discard_reason,
      :discard_reasoning,
      :duplicate_of_issue_id,
      :created_issue_id,
      :completed_at,
      :type,
      :title,
      :severity,
      :category,
      :file_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A validator's assessment of a finding. Present only when validation
    # actually ran -- absent for finding types that are ingested untested,
    # rather than reporting a verdict Continuum did not reach.
    #
    # @!attribute [rw] verdict
    #   The validator's conclusion.
    #   @return [String]
    #
    # @!attribute [rw] blocking_reason
    #   Why the validator reached that verdict.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The validator's confidence, from 0.0 to 1.0 inclusive. Advisory: it
    #   does not drive Continuum's own routing decisions. The range is
    #   enforced server-side, not by a @range trait -- the smithy-rs server
    #   SDK does not support range constraints on double shapes
    #   (smithy-rs#2007).
    #   @return [Float]
    #
    # @!attribute [rw] rationale
    #   The validator's reasoning.
    #   @return [String]
    #
    # @!attribute [rw] severity_adjustment
    #   The validator's severity conclusion.
    #   @return [String]
    #
    # @!attribute [rw] mitigating_controls
    #   Controls the validator found that reduce exploitability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] preconditions
    #   Conditions exploitation depends on, which bound the severity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evidence
    #   Code citations supporting the verdict.
    #   @return [Array<Types::FindingEvidence>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingValidation AWS API Documentation
    #
    class FindingValidation < Struct.new(
      :verdict,
      :blocking_reason,
      :confidence,
      :rationale,
      :severity_adjustment,
      :mitigating_controls,
      :preconditions,
      :evidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # One vulnerability reported by a finding. A customer document may
    # report several; each carries its own identity, locations and
    # remediation.
    #
    # @!attribute [rw] title
    #   The title of a finding, from the producer's own title -- OCSF
    #   finding\_info.title, or the scanner's finding title. Length matches
    #   the OCSF title constraint.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Free-form prose about a finding (summary, detailed analysis,
    #   rationale, remediation guidance). Capped well below the finding
    #   document's own 256 KB limit, since several of these can appear on
    #   one finding.
    #   @return [String]
    #
    # @!attribute [rw] cwe_id
    #   Primary CWE for this vulnerability, e.g. "CWE-89".
    #   @return [String]
    #
    # @!attribute [rw] cwe_caption
    #   The producer's human-readable caption for `cweId`.
    #   @return [String]
    #
    # @!attribute [rw] additional_cwe_ids
    #   Further CWEs the producer attributed to this same vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cve_id
    #   A CVE identifier, e.g. "CVE-2020-8203".
    #   @return [String]
    #
    # @!attribute [rw] cvss_base_score
    #   The CVSS base score for `cveId`, when the producer supplies one,
    #   from 0.0 to 10.0.
    #   @return [Float]
    #
    # @!attribute [rw] fix_coverage
    #   The producer's description of how completely a fix is available.
    #   @return [String]
    #
    # @!attribute [rw] fix_coverage_id
    #   The producer's enum value behind `fixCoverage`.
    #   @return [Integer]
    #
    # @!attribute [rw] locations
    #   Every location this vulnerability was reported at.
    #   @return [Array<Types::FindingLocation>]
    #
    # @!attribute [rw] remediation
    #   Free-form prose about a finding (summary, detailed analysis,
    #   rationale, remediation guidance). Capped well below the finding
    #   document's own 256 KB limit, since several of these can appear on
    #   one finding.
    #   @return [String]
    #
    # @!attribute [rw] remediation_references
    #   A free-form list of strings carried verbatim from a producer.
    #   @return [Array<String>]
    #
    # @!attribute [rw] code
    #   The vulnerable fragment, when the producer supplied one.
    #   @return [String]
    #
    # @!attribute [rw] details
    #   The producer's extended analysis for this vulnerability.
    #   @return [String]
    #
    # @!attribute [rw] affected_packages
    #   Software packages implicated by a finding.
    #   @return [Array<Types::AffectedPackage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FindingVulnerability AWS API Documentation
    #
    class FindingVulnerability < Struct.new(
      :title,
      :description,
      :cwe_id,
      :cwe_caption,
      :additional_cwe_ids,
      :cve_id,
      :cvss_base_score,
      :fix_coverage,
      :fix_coverage_id,
      :locations,
      :remediation,
      :remediation_references,
      :code,
      :details,
      :affected_packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation's verdict for one attack flow.
    #
    # @!attribute [rw] flow_id
    #   Identifier of the attack flow assessed.
    #   @return [String]
    #
    # @!attribute [rw] verdict
    #   Outcome for this flow.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence in this flow's verdict. Absent when out of range.
    #   @return [Float]
    #
    # @!attribute [rw] evidence
    #   Citations supporting the verdict.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/FlowVerdict AWS API Documentation
    #
    class FlowVerdict < Struct.new(
      :flow_id,
      :verdict,
      :confidence,
      :evidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the finding to retrieve.
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeFindingInput AWS API Documentation
    #
    class GetCodeFindingInput < Struct.new(
      :environment_id,
      :finding_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state and details of the requested finding. Which
    # type-specific members are populated depends on `type`.
    #
    # @!attribute [rw] type
    #   What kind of finding this is. Determines which of the type-specific
    #   members below are populated.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The producer's title for the finding.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The finding's severity.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A one-paragraph description.
    #   @return [String]
    #
    # @!attribute [rw] detailed_description
    #   The full analysis.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The producer's vulnerability category. Not a stable filter key
    #   across finding types -- see FindingCategory.
    #   @return [String]
    #
    # @!attribute [rw] sub_category
    #   A more specific classification within `category`.
    #   @return [String]
    #
    # @!attribute [rw] cwe_ids
    #   CWE identifiers classifying the finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] owasp_category
    #   The OWASP Top 10 category, when the producer supplies one.
    #   @return [String]
    #
    # @!attribute [rw] mitigation
    #   How to fix the finding.
    #   @return [String]
    #
    # @!attribute [rw] file_path
    #   The file the finding is about.
    #   @return [String]
    #
    # @!attribute [rw] line_number
    #   The 1-indexed line the finding is about. Bounds are enforced
    #   server-side rather than by a constraint trait: a numeric constraint
    #   generates a distinct newtype per enclosing structure, so the same
    #   concept would not share a type across the create input and the read
    #   output.
    #   @return [Integer]
    #
    # @!attribute [rw] cve_id
    #   The CVE this finding reports, for software-composition findings.
    #   Both code types can carry one: a customer document supplies it under
    #   vulnerabilities\[\].cve, and Continuum's scanner reports CVEs for
    #   dependency-manifest findings.
    #   @return [String]
    #
    # @!attribute [rw] cvss_base_score
    #   The CVSS base score accompanying `cveId`, when the producer supplies
    #   one, from 0.0 to 10.0. Not computed by Continuum. The range is
    #   enforced server-side, not by a @range trait -- the smithy-rs server
    #   SDK does not support range constraints on double shapes
    #   (smithy-rs#2007).
    #   @return [Float]
    #
    # @!attribute [rw] affected_packages
    #   Packages implicated by the finding.
    #   @return [Array<Types::AffectedPackage>]
    #
    # @!attribute [rw] vulnerable_code
    #   The vulnerable code fragment.
    #   @return [String]
    #
    # @!attribute [rw] relevant_inputs
    #   User-controlled inputs that reach the vulnerability.
    #   @return [Array<String>]
    #
    # @!attribute [rw] steps_to_reproduce
    #   Steps to reproduce or exploit the finding.
    #   @return [Array<String>]
    #
    # @!attribute [rw] validation
    #   The validator's assessment. Absent when no validation ran.
    #   @return [Types::FindingValidation]
    #
    # @!attribute [rw] end_line
    #   The last line of the affected range, from the document's
    #   affected\_code\[\].end\_line.
    #   @return [Integer]
    #
    # @!attribute [rw] mitre_techniques
    #   MITRE ATT&amp;CK technique identifiers, from the document's
    #   finding\_info.attacks\[\].technique.uid.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remediation_references
    #   Remediation references, from the document's
    #   vulnerabilities\[\].remediation.references.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ocsf_class
    #   The OCSF class the document declared. Determines whether `posture`
    #   is populated.
    #   @return [String]
    #
    # @!attribute [rw] ocsf_schema_version
    #   The OCSF schema version the producer wrote against
    #   (metadata.version).
    #   @return [String]
    #
    # @!attribute [rw] product_name
    #   The producing product and vendor (metadata.product).
    #   @return [String]
    #
    # @!attribute [rw] product_vendor_name
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] product_version
    #   A vulnerability-taxonomy label: the producer's category,
    #   sub-category, or OWASP category. Deliberately unconstrained beyond
    #   length -- producers do not share a taxonomy, so this is NOT a stable
    #   filter key across finding types. Use `cweIds` when a stable
    #   classification is needed.
    #   @return [String]
    #
    # @!attribute [rw] source_status
    #   The producer's own status for the finding, and the enum value
    #   behind it. Distinct from `status`, which is Continuum's lifecycle
    #   state -- a producer may call a finding "New" while Continuum has it
    #   SUBMITTED.
    #   @return [String]
    #
    # @!attribute [rw] source_status_id
    #   The producer's numeric enum value for `sourceStatus`.
    #   @return [Integer]
    #
    # @!attribute [rw] first_seen_at
    #   When the producer first observed the finding
    #   (finding\_info.first\_seen\_time). The producer's own clock, not
    #   Continuum's.
    #   @return [Time]
    #
    # @!attribute [rw] finding_types
    #   The producer's own classification of the finding
    #   (finding\_info.types).
    #   @return [Array<String>]
    #
    # @!attribute [rw] vulnerabilities
    #   Every vulnerability the document reported. A document may report
    #   several; the flat `cveId`/`cvssBaseScore`/`filePath`/`lineNumber`
    #   members above carry the first one's identity so a caller that only
    #   needs "what and where" does not have to walk this list.
    #   @return [Array<Types::FindingVulnerability>]
    #
    # @!attribute [rw] resources
    #   Resources the document named (resources\[\]).
    #   @return [Array<Types::FindingResource>]
    #
    # @!attribute [rw] posture
    #   The compliance posture, for an Application Security Posture Finding.
    #   Absent for a vulnerability finding.
    #   @return [Types::FindingPosture]
    #
    # @!attribute [rw] finding_id
    #   The unique identifier of the finding.
    #   @return [String]
    #
    # @!attribute [rw] finding_arn
    #   The ARN of the finding.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the finding.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The system that produced the finding.
    #   @return [String]
    #
    # @!attribute [rw] source_finding_id
    #   The producer's own identifier for the finding.
    #   @return [String]
    #
    # @!attribute [rw] reported_at
    #   When the producer reported the finding -- its own clock, which is
    #   not Continuum's ingestion time. `createdAt` is when Continuum
    #   accepted it; these are genuinely different instants and a reader
    #   usually wants this one.
    #
    #   For CreateCodeFinding, this is the submitted OCSF document's own
    #   top-level `time`. For findings Continuum's scanner produces, it is
    #   the finding's own creation time.
    #
    #   Continuum does not validate it for plausibility: a producer's value
    #   is echoed as given, so a `timestamp` here asserts the unit and
    #   format, not that the instant is genuine.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the finding.
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status last transitioned.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the finding was ingested.
    #   @return [Time]
    #
    # @!attribute [rw] scan_run_id
    #   The scan that produced the finding, when it came from one. For a
    #   finding Continuum's scanner produced, this is the Continuum scan
    #   run (see GetCodeScan). For a finding submitted with
    #   CreateCodeFinding, it is the OCSF document's
    #   `metadata.correlation_uid`, when that value is a valid ScanRunId.
    #   Absent when the finding did not come from a scan.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Human-readable context about the current status.
    #   @return [String]
    #
    # @!attribute [rw] discard_reason
    #   Why the finding was not escalated. Present only when status is
    #   DISCARDED.
    #   @return [String]
    #
    # @!attribute [rw] discard_reasoning
    #   Customer-facing explanation accompanying `discardReason`.
    #   @return [String]
    #
    # @!attribute [rw] duplicate_of_issue_id
    #   The existing issue this finding duplicates. Present only for the
    #   DUPLICATE\_OF\_* discard reasons.
    #   @return [String]
    #
    # @!attribute [rw] created_issue_id
    #   The issue Continuum created from this finding.
    #   @return [String]
    #
    # @!attribute [rw] completed_at
    #   When processing finished, whether by creating an issue or
    #   discarding. Absent while the finding is still in flight.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeFindingOutput AWS API Documentation
    #
    class GetCodeFindingOutput < Struct.new(
      :type,
      :title,
      :severity,
      :summary,
      :detailed_description,
      :category,
      :sub_category,
      :cwe_ids,
      :owasp_category,
      :mitigation,
      :file_path,
      :line_number,
      :cve_id,
      :cvss_base_score,
      :affected_packages,
      :vulnerable_code,
      :relevant_inputs,
      :steps_to_reproduce,
      :validation,
      :end_line,
      :mitre_techniques,
      :remediation_references,
      :ocsf_class,
      :ocsf_schema_version,
      :product_name,
      :product_vendor_name,
      :product_version,
      :source_status,
      :source_status_id,
      :first_seen_at,
      :finding_types,
      :vulnerabilities,
      :resources,
      :posture,
      :finding_id,
      :finding_arn,
      :environment_id,
      :source,
      :source_finding_id,
      :reported_at,
      :status,
      :status_updated_at,
      :created_at,
      :scan_run_id,
      :status_message,
      :discard_reason,
      :discard_reasoning,
      :duplicate_of_issue_id,
      :created_issue_id,
      :completed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the artifact to retrieve.
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the issue.
    #   @return [String]
    #
    # @!attribute [rw] issue_id
    #   The issue the artifact is attached to.
    #   @return [String]
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssueArtifactInput AWS API Documentation
    #
    class GetCodeIssueArtifactInput < Struct.new(
      :environment_id,
      :issue_id,
      :artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the requested artifact and its content.
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   Semantic category of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   MIME type the producer declared for its content.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The artifact body, projected against the shape defined for its
    #   artifactType. A type with a defined shape is returned as that
    #   structure, and anything else through `IssueArtifactBody.raw`.
    #   @return [Types::IssueArtifactBody]
    #
    # @!attribute [rw] metadata
    #   Producer-defined structured metadata, when the producer supplied
    #   any.
    #
    #   Returned only for an artifactType whose content has no defined
    #   shape, so that the artifact stays inspectable. For an artifactType
    #   with a defined shape, `body` carries the content and this member is
    #   omitted.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] producer
    #   The agent that produced the artifact.
    #   @return [Types::IssueArtifactProducerSummary]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the artifact was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssueArtifactOutput AWS API Documentation
    #
    class GetCodeIssueArtifactOutput < Struct.new(
      :artifact_id,
      :artifact_type,
      :media_type,
      :body,
      :metadata,
      :producer,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the issue to retrieve.
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the issue.
    #   @return [String]
    #
    # @!attribute [rw] issue_id
    #   The unique identifier of the issue to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssueInput AWS API Documentation
    #
    class GetCodeIssueInput < Struct.new(
      :environment_id,
      :issue_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state and details of the requested issue.
    #
    # @!attribute [rw] issue_id
    #   The unique identifier of the issue.
    #   @return [String]
    #
    # @!attribute [rw] issue_arn
    #   The ARN of the issue.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the issue.
    #   @return [String]
    #
    # @!attribute [rw] synopsis
    #   A free-form synopsis of the issue.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Current severity: the FindingSeverity seed at create, overwritten by
    #   the authoritative severity that prioritization assigns after
    #   validation.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The likelihood that this issue is a true positive, expressed as a
    #   percentage (0-100).
    #   @return [Integer]
    #
    # @!attribute [rw] severity_reasoning
    #   The justification for the current severity. Always leads with a
    #   customer-facing basis clause synthesized from how the severity was
    #   determined (e.g. "Severity from finding.", "Severity from Continuum
    #   system."); when prioritization has run, its own reasoning follows.
    #   Issues created before the basis clause was introduced return their
    #   original reasoning without it.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   The remediation completion summary, when the green stage has run.
    #   @return [String]
    #
    # @!attribute [rw] finding_ids
    #   The findings that motivated this issue. Bare identifiers only -- a
    #   caller authorized for GetCodeIssue is not necessarily authorized to
    #   read finding detail; call GetCodeFinding for that. Every referenced
    #   finding is included regardless of origin (both CustomerUploaded and
    #   ContinuumScanner).
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the issue.
    #   @return [String]
    #
    # @!attribute [rw] phase
    #   The part of the workflow the issue is in. Present when status is
    #   IN\_PROGRESS, and when status is FAILED and the failing phase is
    #   known.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Why the issue failed. Present only when status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Customer-facing explanation of statusReason. Present only when
    #   status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status or phase last changed.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the issue was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when any field of the issue last changed. Advances on
    #   every mutation (including score-only updates that do not transition
    #   status), so it is greater than or equal to statusUpdatedAt.
    #   @return [Time]
    #
    # @!attribute [rw] evidence_availability
    #   Whether the issue has any attached evidence (formerly 'artifacts':
    #   tool output, remediation proposals, patches). NONE = no evidence;
    #   AVAILABLE = at least one evidence item exists. Computed at read
    #   time.
    #   @return [String]
    #
    # @!attribute [rw] patch_delivery
    #   Customer delivery of the issue's patches, summarized from its PATCH
    #   artifacts at read time. Absent when no patch has a destination
    #   delivery.
    #   @return [Types::IssuePatchDelivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeIssueOutput AWS API Documentation
    #
    class GetCodeIssueOutput < Struct.new(
      :issue_id,
      :issue_arn,
      :name,
      :synopsis,
      :severity,
      :confidence,
      :severity_reasoning,
      :summary,
      :finding_ids,
      :status,
      :phase,
      :status_reason,
      :status_message,
      :status_updated_at,
      :created_at,
      :updated_at,
      :evidence_availability,
      :patch_delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   Environment that owns the scan.
    #   @return [String]
    #
    # @!attribute [rw] scan_run_id
    #   Scan to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeScanInput AWS API Documentation
    #
    class GetCodeScanInput < Struct.new(
      :environment_id,
      :scan_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scan
    #   Complete customer-visible scan data.
    #   @return [Types::CodeScanData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCodeScanOutput AWS API Documentation
    #
    class GetCodeScanOutput < Struct.new(
      :scan)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the Collector whose inventory is requested.
    #
    # @!attribute [rw] account_id
    #   The AWS account that owns the Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The full ARN of the Environment requesting the Collector's data.
    #   The Environment must be in the caller's account. Continuum supplies
    #   this value as the continuum:EnvironmentArn condition key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollectorDataAccessAuthorizationInput AWS API Documentation
    #
    class GetCollectorDataAccessAuthorizationInput < Struct.new(
      :account_id,
      :collector_id,
      :environment_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty response returned when the authenticated caller is authorized to
    # access the Collector's data.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollectorDataAccessAuthorizationOutput AWS API Documentation
    #
    class GetCollectorDataAccessAuthorizationOutput < Aws::EmptyStructure; end

    # Specifies the Collector to retrieve.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollectorInput AWS API Documentation
    #
    class GetCollectorInput < Struct.new(
      :collector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state of the Collector.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the Collector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source collected by this Collector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status.
    #   @return [String]
    #
    # @!attribute [rw] config_recorder_arn
    #   The ARN of the provisioned AWS Config Recorder.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_cluster_role_arn
    #   IAM role used to collect Kubernetes cluster metadata.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Collector was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time of the last successful UpdateCollector call, returned at
    #   whole-second precision in the same date-time format as createdAt.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetCollectorOutput AWS API Documentation
    #
    class GetCollectorOutput < Struct.new(
      :collector_id,
      :collector_arn,
      :type,
      :status,
      :config_recorder_arn,
      :kubernetes_cluster_role_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the environment to retrieve.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetEnvironmentInput AWS API Documentation
    #
    class GetEnvironmentInput < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state and configuration of the requested
    # environment.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The customer-visible name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Human-readable details about the current status. Present when the
    #   status requires additional context (e.g., failure reason).
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status last transitioned.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the environment's properties were last updated.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   Type-specific configuration and state, including code sources,
    #   operating policy, Collector details, and the latest scan.
    #   @return [Types::EnvironmentConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetEnvironmentOutput AWS API Documentation
    #
    class GetEnvironmentOutput < Struct.new(
      :environment_id,
      :environment_arn,
      :name,
      :status,
      :status_message,
      :status_updated_at,
      :created_at,
      :updated_at,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the integration to retrieve.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetIntegrationInput AWS API Documentation
    #
    class GetIntegrationInput < Struct.new(
      :integration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metadata for the requested integration.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The ARN of the integration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The immutable provider type for the integration.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   Provider-specific details for the integration.
    #   @return [Types::ProviderDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the integration was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetIntegrationOutput AWS API Documentation
    #
    class GetIntegrationOutput < Struct.new(
      :integration_id,
      :integration_arn,
      :name,
      :integration_type,
      :provider_details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the resource.
    #
    # @!attribute [rw] arn
    #   The ARN of a resource in the caller's account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetResourcePolicyInput AWS API Documentation
    #
    class GetResourcePolicyInput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the resource policy.
    #
    # @!attribute [rw] arn
    #   The ARN of a Continuum resource that supports a resource policy.
    #   Collectors are the only supported resource type; other well-formed
    #   Continuum ARNs are rejected with ValidationException.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A resource policy in displayable JSON form.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Opaque optimistic-concurrency token for a resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GetResourcePolicyOutput AWS API Documentation
    #
    class GetResourcePolicyOutput < Struct.new(
      :arn,
      :policy,
      :revision_id)
      SENSITIVE = [:policy]
      include Aws::Structure
    end

    # Write-only OAuth credentials used to authorize a GitHub.com
    # integration. Not stored or returned after creation.
    #
    # @!attribute [rw] authorization_code
    #   The OAuth authorization code returned by GitHub after the user
    #   authorizes the application.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The `state` returned by GitHub in the OAuth callback. It must be the
    #   state that StartIntegrationAuthorization returned to the same AWS
    #   account, and the authorization request must have sent that call's
    #   codeChallenge. The state can be redeemed once. A stage that enforces
    #   authorization sessions rejects a missing, expired, already used, or
    #   other-account state with ValidationException; restart the
    #   authorization with StartIntegrationAuthorization.
    #   @return [String]
    #
    # @!attribute [rw] redirect_url
    #   The redirect URL used to obtain the authorization code. Must match
    #   one of the redirect URLs registered on the GitHub App. If omitted,
    #   the App's default redirect URL is used. Not stored or returned
    #   after creation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitHubAuthorizationConfiguration AWS API Documentation
    #
    class GitHubAuthorizationConfiguration < Struct.new(
      :authorization_code,
      :state,
      :redirect_url)
      SENSITIVE = [:authorization_code, :state]
      include Aws::Structure
    end

    # Configuration for a GitHub.com integration using the OAuth
    # authorization code flow.
    #
    # @!attribute [rw] authorization
    #   OAuth authorization used to establish the integration. Required on
    #   create; not returned on read operations.
    #   @return [Types::GitHubAuthorizationConfiguration]
    #
    # @!attribute [rw] organization_name
    #   The name of the GitHub organization to associate with the
    #   integration. If not specified, the integration is associated with
    #   the authenticated user's personal account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitHubConfiguration AWS API Documentation
    #
    class GitHubConfiguration < Struct.new(
      :authorization,
      :organization_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a GitHub.com integration.
    #
    # @!attribute [rw] organization_name
    #   The name of the GitHub organization associated with the integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitHubDetails AWS API Documentation
    #
    class GitHubDetails < Struct.new(
      :organization_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The GitHub repository a patch is delivered to, and the pull request
    # that carries it once opened.
    #
    # @!attribute [rw] owner
    #   The GitHub user or organization that owns the repository.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository name.
    #   @return [String]
    #
    # @!attribute [rw] pull_request_number
    #   Repository-scoped pull request number assigned by GitHub.
    #   @return [Integer]
    #
    # @!attribute [rw] head_sha
    #   The head commit SHA of the pull request. Absent until the pull
    #   request is opened.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitHubTarget AWS API Documentation
    #
    class GitHubTarget < Struct.new(
      :owner,
      :repository,
      :pull_request_number,
      :head_sha)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a GitLab integration using a pasted access token.
    #
    # @!attribute [rw] instance_url
    #   The HTTPS base URL of the GitLab instance (gitlab.com or
    #   self-managed).
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   Whether the integration targets a group or a single project.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The group or project path the integration targets.
    #   @return [String]
    #
    # @!attribute [rw] access_token
    #   The GitLab access token (personal, group or project). Write-only;
    #   not stored or returned after creation. If the token carries the
    #   self-rotate scope, rotation is opted in and Continuum manages the
    #   token thereafter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitLabConfiguration AWS API Documentation
    #
    class GitLabConfiguration < Struct.new(
      :instance_url,
      :target_type,
      :target_path,
      :access_token)
      SENSITIVE = [:access_token]
      include Aws::Structure
    end

    # Details for a GitLab integration.
    #
    # @!attribute [rw] instance_url
    #   The HTTPS base URL of the GitLab instance.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   Whether the integration targets a group or a single project.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The group or project path the integration targets.
    #   @return [String]
    #
    # @!attribute [rw] token_rotation
    #   How the integration's access token is rotated. AUTOMATIC only when
    #   the pasted token had the self-rotate scope and rotation was opted in
    #   at installation time.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The expiry of the stored access token, for non-rotating tokens only.
    #   A rotated token's original expiry is stale, so this is omitted when
    #   tokenRotation is AUTOMATIC.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/GitLabDetails AWS API Documentation
    #
    class GitLabDetails < Struct.new(
      :instance_url,
      :target_type,
      :target_path,
      :token_rotation,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an integration returned in list responses.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The ARN of the integration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The immutable provider type for the integration.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   Provider-specific details for the integration.
    #   @return [Types::ProviderDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the integration was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IntegrationSummary AWS API Documentation
    #
    class IntegrationSummary < Struct.new(
      :integration_id,
      :integration_arn,
      :name,
      :integration_type,
      :provider_details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request couldn't be processed because of an internal server
    # issue. Try again later. If the problem persists, contact AWS Support.
    #
    # @!attribute [rw] message
    #   Error description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The projected body of an artifact. The active member is selected by
    # the artifact's artifactType, and for a type that carries more than
    # one payload kind by the stored content's own discriminator; `raw`
    # carries content for types with no defined shape yet and for content
    # that did not match its shape.
    #
    # @note IssueArtifactBody is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IssueArtifactBody corresponding to the set member.
    #
    # @!attribute [rw] validation_evidence
    #   Projected VALIDATION\_EVIDENCE content.
    #   @return [Types::ValidationEvidenceBody]
    #
    # @!attribute [rw] prevalidation_signals
    #   Projected EVIDENCE content whose stored envelope declares
    #   `artifact_kind: prevalidation_signals` — the severity signals
    #   prioritization uses.
    #
    #   One artifactType can select different members here: EVIDENCE also
    #   carries the prioritization markdown narrative, which is not JSON and
    #   so returns through `raw`. The member is therefore chosen by
    #   artifactType AND, for a type that carries more than one payload
    #   kind, the content's own discriminator.
    #   @return [Types::PrevalidationSignalsBody]
    #
    # @!attribute [rw] remediation_proposal
    #   Projected REMEDIATION\_PROPOSAL content: a patch the remediation
    #   agent produced, with the descriptors needed to apply and verify it.
    #
    #   REMEDIATION\_PROPOSAL content that does not match this shape is
    #   returned through `raw`.
    #   @return [Types::RemediationProposalBody]
    #
    # @!attribute [rw] patch
    #   Projected PATCH content: the remediation patch for one repository,
    #   with the descriptors needed to verify and apply it and the state of
    #   its delivery to the customer's own bucket or repository.
    #
    #   Every PATCH projects here. The descriptors come from members Control
    #   Plane computes or owns when it stores the patch, not from producer
    #   metadata, so this member is the whole PATCH contract and `metadata`
    #   is omitted for it.
    #   @return [Types::PatchBody]
    #
    # @!attribute [rw] raw
    #   The producer's content verbatim, for an artifactType with no
    #   defined shape or content that failed to parse against its shape.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IssueArtifactBody AWS API Documentation
    #
    class IssueArtifactBody < Struct.new(
      :validation_evidence,
      :prevalidation_signals,
      :remediation_proposal,
      :patch,
      :raw,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ValidationEvidence < IssueArtifactBody; end
      class PrevalidationSignals < IssueArtifactBody; end
      class RemediationProposal < IssueArtifactBody; end
      class Patch < IssueArtifactBody; end
      class Raw < IssueArtifactBody; end
      class Unknown < IssueArtifactBody; end
    end

    # A summary of an artifact returned in list responses.
    #
    # @!attribute [rw] artifact_id
    #   The unique identifier of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   Semantic category of the artifact.
    #   @return [String]
    #
    # @!attribute [rw] media_type
    #   MIME type of the artifact content.
    #   @return [String]
    #
    # @!attribute [rw] producer
    #   The agent that produced the artifact.
    #   @return [Types::IssueArtifactProducerSummary]
    #
    # @!attribute [rw] content_size_bytes
    #   Size of the artifact content in bytes. The content itself is
    #   returned by GetCodeIssueArtifact.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the artifact was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IssueArtifactItem AWS API Documentation
    #
    class IssueArtifactItem < Struct.new(
      :artifact_id,
      :artifact_type,
      :media_type,
      :producer,
      :content_size_bytes,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The agent that produced an artifact.
    #
    # @!attribute [rw] agent
    #   Stable producer name, such as ContinuumValidation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IssueArtifactProducerSummary AWS API Documentation
    #
    class IssueArtifactProducerSummary < Struct.new(
      :agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # Customer delivery of the patches Continuum produced for an issue,
    # summarized across the issue's PATCH artifacts when the issue is read.
    # Each artifact keeps its own `delivery.destination` with the full
    # detail; this summary lets a caller see a failed delivery without
    # listing artifacts.
    #
    # @!attribute [rw] status
    #   The overall result, in priority order: FAILED when any patch's
    #   destination delivery failed or exhausted its retries; otherwise
    #   PENDING while any is still in progress; otherwise SUCCEEDED when at
    #   least one was delivered; otherwise SKIPPED.
    #   @return [String]
    #
    # @!attribute [rw] patch_count
    #   Number of the issue's patches that have a destination delivery.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded_count
    #   Number of those patches delivered to their destination.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_count
    #   Number of those patches whose delivery failed or exhausted its
    #   retries.
    #   @return [Integer]
    #
    # @!attribute [rw] failure_reasons
    #   Distinct reasons of the failed deliveries, in ascending order.
    #   Present only when failedCount is greater than zero.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IssuePatchDelivery AWS API Documentation
    #
    class IssuePatchDelivery < Struct.new(
      :status,
      :patch_count,
      :succeeded_count,
      :failed_count,
      :failure_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an issue returned in list responses.
    #
    # @!attribute [rw] issue_id
    #   The unique identifier of the issue.
    #   @return [String]
    #
    # @!attribute [rw] issue_arn
    #   The ARN of the issue.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the issue.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Scanner-derived severity assigned to the issue.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The likelihood that this issue is a true positive, expressed as a
    #   percentage (0-100).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current lifecycle status of the issue.
    #   @return [String]
    #
    # @!attribute [rw] phase
    #   The part of the workflow the issue is in. Present when status is
    #   IN\_PROGRESS, and when status is FAILED and the failing phase is
    #   known.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Why the issue failed. Present only when status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Customer-facing explanation of statusReason. Present only when
    #   status is FAILED.
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status or phase last changed.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the issue was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when any field of the issue last changed. Advances on
    #   every mutation (including score-only updates that do not transition
    #   status), so it is greater than or equal to statusUpdatedAt.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/IssueSummary AWS API Documentation
    #
    class IssueSummary < Struct.new(
      :issue_id,
      :issue_arn,
      :name,
      :severity,
      :confidence,
      :status,
      :phase,
      :status_reason,
      :status_message,
      :status_updated_at,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Complete configuration for the IAM role Continuum assumes to collect
    # Kubernetes cluster metadata.
    #
    # @!attribute [rw] role_arn
    #   IAM role the authenticated caller passes to Continuum.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   Optional external ID Continuum supplies when assuming roleArn. This
    #   must match the role trust policy when configured and does not
    #   replace the caller's iam:PassRole permission.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/KubernetesClusterRoleConfiguration AWS API Documentation
    #
    class KubernetesClusterRoleConfiguration < Struct.new(
      :role_arn,
      :external_id)
      SENSITIVE = [:external_id]
      include Aws::Structure
    end

    # One complete mutation of the Collector's Kubernetes IAM role
    # configuration.
    #
    # @note KubernetesClusterRoleUpdate is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] set
    #   Replace the complete role configuration.
    #   @return [Types::KubernetesClusterRoleConfiguration]
    #
    # @!attribute [rw] remove
    #   Remove the configured role and external ID.
    #   @return [Types::RemoveKubernetesClusterRole]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/KubernetesClusterRoleUpdate AWS API Documentation
    #
    class KubernetesClusterRoleUpdate < Struct.new(
      :set,
      :remove,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Set < KubernetesClusterRoleUpdate; end
      class Remove < KubernetesClusterRoleUpdate; end
      class Unknown < KubernetesClusterRoleUpdate; end
    end

    # Specifies the Environment whose Collector associations to list.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the Environment whose associations to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of associated Collectors to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by a prior request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedCollectorsInput AWS API Documentation
    #
    class ListAssociatedCollectorsInput < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one page of the Collectors associated with the requested
    # Environment.
    #
    # @!attribute [rw] associated_collectors
    #   The Collectors associated with this Environment, ordered by
    #   collectorId ascending. Empty when the Environment has no
    #   associations, and also when every association on the page predates
    #   Continuum persisting the ARN — the page is still advanced by
    #   `nextToken` in that case.
    #   @return [Array<Types::AssociatedCollector>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page, if present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedCollectorsOutput AWS API Documentation
    #
    class ListAssociatedCollectorsOutput < Struct.new(
      :associated_collectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the Collector whose Environment associations to list.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector whose associations to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of Environment associations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by a prior request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedEnvironmentsInput AWS API Documentation
    #
    class ListAssociatedEnvironmentsInput < Struct.new(
      :collector_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains one page of Environment summaries associated with the
    # requested Collector.
    #
    # @!attribute [rw] associated_environments
    #   Summaries of the Environments associated with this Collector,
    #   ordered by environmentArn lexicographically ascending. Each summary
    #   has the same fields as a ListEnvironments item but uses an
    #   independent model shape. Empty when the Collector has no
    #   associations.
    #   @return [Array<Types::AssociatedEnvironment>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page, if present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListAssociatedEnvironmentsOutput AWS API Documentation
    #
    class ListAssociatedEnvironmentsOutput < Struct.new(
      :associated_environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the environment and pagination parameters for listing
    # findings.
    #
    # @!attribute [rw] environment_id
    #   The environment whose findings to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeFindingsInput AWS API Documentation
    #
    class ListCodeFindingsInput < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of finding summaries and an optional pagination
    # token.
    #
    # @!attribute [rw] items
    #   The findings in the environment, ordered by findingId descending.
    #   @return [Array<Types::FindingSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeFindingsOutput AWS API Documentation
    #
    class ListCodeFindingsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the issue, optional filter, and pagination parameters for
    # listing artifacts.
    #
    # @!attribute [rw] environment_id
    #   The environment that owns the issue.
    #   @return [String]
    #
    # @!attribute [rw] issue_id
    #   The issue whose artifacts to list.
    #   @return [String]
    #
    # @!attribute [rw] artifact_type
    #   Optional filter for a semantic artifact category. Omit to list all
    #   artifacts attached to the issue.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssueArtifactsInput AWS API Documentation
    #
    class ListCodeIssueArtifactsInput < Struct.new(
      :environment_id,
      :issue_id,
      :artifact_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of artifact summaries and an optional pagination
    # token.
    #
    # @!attribute [rw] items
    #   The artifacts attached to the issue, ordered by artifactId
    #   descending.
    #   @return [Array<Types::IssueArtifactItem>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssueArtifactsOutput AWS API Documentation
    #
    class ListCodeIssueArtifactsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the environment and pagination parameters for listing
    # issues.
    #
    # @!attribute [rw] environment_id
    #   The environment whose issues to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssuesInput AWS API Documentation
    #
    class ListCodeIssuesInput < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of issue summaries and an optional pagination token.
    #
    # @!attribute [rw] items
    #   The issues in the environment, ordered by issueId descending.
    #   @return [Array<Types::IssueSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeIssuesOutput AWS API Documentation
    #
    class ListCodeIssuesOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   Environment whose scans to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of scans to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token returned by a prior request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeScansInput AWS API Documentation
    #
    class ListCodeScansInput < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scans
    #   Customer-visible scans ordered by scanRunId descending.
    #   @return [Array<Types::CodeScanSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token for the next page, if present.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCodeScansOutput AWS API Documentation
    #
    class ListCodeScansOutput < Struct.new(
      :scans,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies no request parameters. The target account is derived
    # exclusively from the authenticated calling context.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCollectorsInput AWS API Documentation
    #
    class ListCollectorsInput < Aws::EmptyStructure; end

    # Contains summaries of the caller account's Collectors.
    #
    # @!attribute [rw] items
    #   The Collectors owned by the authenticated caller's account. At most
    #   one result is currently returned, so no result ordering applies.
    #   @return [Array<Types::CollectorSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListCollectorsOutput AWS API Documentation
    #
    class ListCollectorsOutput < Struct.new(
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies pagination parameters for listing environments.
    #
    # Response-filtering justification: filtering is intentionally omitted
    # because every current consumer needs the canonical complete,
    # account-scoped environment inventory, and no useful selective
    # server-side query use case is defined. Environment ID already has the
    # GetEnvironment lookup operation, and status, name, or timestamp
    # filtering is not needed by any current workflow. Adding speculative
    # filters would require unsupported access patterns and ambiguous
    # semantics without reducing data returned for existing consumers. If a
    # concrete indexed query use case is introduced later, its filter values
    # must be bound to pagination tokens so a token cannot be replayed
    # against a different query. The formal API standards decision is
    # recorded in the package-root BR\_EXCEPTIONS.md file.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListEnvironmentsInput AWS API Documentation
    #
    class ListEnvironmentsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains environment metadata and an optional pagination token.
    #
    # @!attribute [rw] items
    #   Common metadata for the environments in the account, ordered by
    #   environmentId descending.
    #   @return [Array<Types::EnvironmentListEntry>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListEnvironmentsOutput AWS API Documentation
    #
    class ListEnvironmentsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies pagination parameters for listing integrations.
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned by a previous call. Set to null for the
    #   first request; use the returned token for subsequent calls.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListIntegrationsInput AWS API Documentation
    #
    class ListIntegrationsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the list of integration summaries and an optional pagination
    # token.
    #
    # @!attribute [rw] items
    #   The integrations in the account, ordered by integrationId
    #   descending.
    #   @return [Array<Types::IntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next page of results. Absent when
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ListIntegrationsOutput AWS API Documentation
    #
    class ListIntegrationsOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Projected content for a PATCH artifact: the remediation patch for one
    # repository, with the descriptors needed to verify and apply it and the
    # state of its delivery to the customer's own bucket or repository.
    #
    # @!attribute [rw] patch
    #   The patch exactly as stored, unmodified. Control Plane accepted it
    #   only as a text unified diff, so `git apply` applies it.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The patch's wire format, read from the patch itself, which
    #   determines how to apply it. Absent when the patch starts with
    #   neither a git mailbox header nor a `diff --git` header.
    #   @return [String]
    #
    # @!attribute [rw] repository_name
    #   The repository the patch applies to, as named in the source snapshot
    #   it was generated against.
    #   @return [String]
    #
    # @!attribute [rw] patch_sha_256
    #   SHA-256 of the patch's UTF-8 bytes in lowercase hex, computed by
    #   Control Plane when it stored the patch.
    #
    #   Lets a caller confirm the patch it applies is byte-for-byte the one
    #   that was reviewed. Computed over the patch bytes, so it is
    #   verifiable against `patch` without trusting this value.
    #   @return [String]
    #
    # @!attribute [rw] size_bytes
    #   Size of the patch in UTF-8 bytes, the unit the digest is computed
    #   over.
    #   @return [Integer]
    #
    # @!attribute [rw] delivery
    #   Delivery of the patch to the customer's bucket or repository.
    #   Absent when the artifact has no delivery destination.
    #   @return [Types::PatchDelivery]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PatchBody AWS API Documentation
    #
    class PatchBody < Struct.new(
      :patch,
      :format,
      :repository_name,
      :patch_sha_256,
      :size_bytes,
      :delivery)
      SENSITIVE = []
      include Aws::Structure
    end

    # Delivery of a patch to a destination the customer owns: an object in
    # the environment's source bucket or a pull request in the source
    # repository.
    #
    # @!attribute [rw] status
    #   How far delivery to the destination has progressed.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   Where the patch was or will be delivered. Absent while the
    #   destination is still being resolved, or when delivery was skipped
    #   before a destination was known.
    #   @return [Types::DestinationTarget]
    #
    # @!attribute [rw] updated_at
    #   When the delivery status last changed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PatchDelivery AWS API Documentation
    #
    class PatchDelivery < Struct.new(
      :status,
      :target,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Validation's result for one finding within a multi-finding bundle.
    #
    # @!attribute [rw] finding_id
    #   The finding assessed.
    #   @return [String]
    #
    # @!attribute [rw] exploitable
    #   Exploitability verdict for this finding.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence in this finding's verdict. Absent when out of range.
    #   @return [Float]
    #
    # @!attribute [rw] flow_verdicts
    #   Per-flow verdicts recorded for this finding.
    #   @return [Array<Types::FlowVerdict>]
    #
    # @!attribute [rw] reasoning_chain
    #   Reasoning chain recorded for this finding.
    #   @return [Array<Types::ReasoningStep>]
    #
    # @!attribute [rw] exploit_artifact
    #   Exploit artifact produced for this finding, when there was one.
    #   @return [Types::ValidationExploitArtifact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PerFindingResult AWS API Documentation
    #
    class PerFindingResult < Struct.new(
      :finding_id,
      :exploitable,
      :confidence,
      :flow_verdicts,
      :reasoning_chain,
      :exploit_artifact)
      SENSITIVE = []
      include Aws::Structure
    end

    # One producer's conclusion about one subject on one scoring dimension.
    #
    # @!attribute [rw] subject_ref
    #   What this signal is about, such as a finding or issue reference.
    #   @return [String]
    #
    # @!attribute [rw] dimension
    #   The axis this signal speaks to. Absent when the producer reported a
    #   dimension with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] signal_strength
    #   The signal's own rating. This is an input to scoring and is NOT the
    #   finding's severity.
    #   @return [String]
    #
    # @!attribute [rw] conclusion
    #   The producer's conclusion.
    #   @return [String]
    #
    # @!attribute [rw] producer_id
    #   Stable name of the producer that emitted this signal.
    #   @return [String]
    #
    # @!attribute [rw] producer_version
    #   Version of that producer.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The producer's confidence in this conclusion, on its native 0-1
    #   scale. Absent when the stored value falls outside 0-1.
    #   @return [Float]
    #
    # @!attribute [rw] confidence_reasoning
    #   Why the producer is or is not sure, kept structured rather than
    #   prose.
    #   @return [Types::SignalConfidenceReasoning]
    #
    # @!attribute [rw] computed
    #   The deterministic values the producer computed from its assessment.
    #   @return [Types::SignalComputation]
    #
    # @!attribute [rw] preconditions
    #   The four exploit preconditions a likelihood signal assessed, each
    #   with the basis the producer had for it.
    #   @return [Types::SignalPreconditions]
    #
    # @!attribute [rw] impact_dimensions
    #   The three impact dimensions an impact signal assessed, each with the
    #   basis the producer had for it. These are what the computed impact
    #   band is derived from.
    #   @return [Types::SignalImpactDimensions]
    #
    # @!attribute [rw] exploitability
    #   What validation established about exploitability, on an
    #   exploitability signal. This summarizes the verdict the signal was
    #   derived from; the proof itself is the VALIDATION\_EVIDENCE artifact
    #   it cites.
    #   @return [Types::SignalExploitability]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PrevalidationSignal AWS API Documentation
    #
    class PrevalidationSignal < Struct.new(
      :subject_ref,
      :dimension,
      :signal_strength,
      :conclusion,
      :producer_id,
      :producer_version,
      :confidence,
      :confidence_reasoning,
      :computed,
      :preconditions,
      :impact_dimensions,
      :exploitability)
      SENSITIVE = []
      include Aws::Structure
    end

    # Projected content for an EVIDENCE artifact carrying prioritization's
    # prevalidation signals.
    #
    # @!attribute [rw] produced_by
    #   The agent that produced this signal set.
    #   @return [String]
    #
    # @!attribute [rw] signals
    #   The signals backing the Issue's proposed severity.
    #   @return [Array<Types::PrevalidationSignal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PrevalidationSignalsBody AWS API Documentation
    #
    class PrevalidationSignalsBody < Struct.new(
      :produced_by,
      :signals)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provider-specific configuration for creating an integration. Only one
    # member may be specified.
    #
    # @note ProviderConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] github
    #   Configuration for a GitHub.com integration.
    #   @return [Types::GitHubConfiguration]
    #
    # @!attribute [rw] gitlab
    #   Configuration for a GitLab integration.
    #   @return [Types::GitLabConfiguration]
    #
    # @!attribute [rw] s3
    #   Configuration for a customer-managed S3 integration.
    #   @return [Types::S3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ProviderConfiguration AWS API Documentation
    #
    class ProviderConfiguration < Struct.new(
      :github,
      :gitlab,
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderConfiguration; end
      class Gitlab < ProviderConfiguration; end
      class S3 < ProviderConfiguration; end
      class Unknown < ProviderConfiguration; end
    end

    # Provider-specific details for an integration. Only one member will be
    # present.
    #
    # @note ProviderDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProviderDetails corresponding to the set member.
    #
    # @!attribute [rw] github
    #   Details for a GitHub.com integration.
    #   @return [Types::GitHubDetails]
    #
    # @!attribute [rw] gitlab
    #   Details for a GitLab integration.
    #   @return [Types::GitLabDetails]
    #
    # @!attribute [rw] s3
    #   Public details for a customer-managed S3 integration.
    #   @return [Types::S3Details]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ProviderDetails AWS API Documentation
    #
    class ProviderDetails < Struct.new(
      :github,
      :gitlab,
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Github < ProviderDetails; end
      class Gitlab < ProviderDetails; end
      class S3 < ProviderDetails; end
      class Unknown < ProviderDetails; end
    end

    # Specifies the resource and its new policy.
    #
    # @!attribute [rw] arn
    #   The ARN of a resource in the caller's account.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   Omit or supply an empty Statement array to clear resource-policy
    #   grants and store the canonical empty-statement policy. Cross-account
    #   access is denied; same-account access remains subject to identity
    #   policies. Use an explicit Deny statement to deny same-account
    #   principals too.
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   Optional optimistic-concurrency token for the currently observed
    #   policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PutResourcePolicyInput AWS API Documentation
    #
    class PutResourcePolicyInput < Struct.new(
      :arn,
      :policy,
      :expected_revision_id)
      SENSITIVE = [:policy]
      include Aws::Structure
    end

    # Contains the stored resource policy.
    #
    # @!attribute [rw] arn
    #   The ARN of a Continuum resource that supports a resource policy.
    #   Collectors are the only supported resource type; other well-formed
    #   Continuum ARNs are rejected with ValidationException.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A resource policy in displayable JSON form.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   Opaque optimistic-concurrency token for a resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/PutResourcePolicyOutput AWS API Documentation
    #
    class PutResourcePolicyOutput < Struct.new(
      :arn,
      :policy,
      :revision_id)
      SENSITIVE = [:policy]
      include Aws::Structure
    end

    # One step in the validation agent's reasoning chain.
    #
    # @!attribute [rw] step
    #   Position of this step in the chain.
    #   @return [Integer]
    #
    # @!attribute [rw] claim
    #   The claim or conclusion reached at this step.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Citation supporting the claim.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Confidence in this individual claim, on the producer's native 0-1
    #   scale.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ReasoningStep AWS API Documentation
    #
    class ReasoningStep < Struct.new(
      :step,
      :claim,
      :source,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Projected content for a REMEDIATION\_PROPOSAL artifact: the patch the
    # remediation agent produced, with the descriptors needed to apply and
    # verify it.
    #
    # @!attribute [rw] patch
    #   The patch exactly as the remediation agent produced it, unmodified.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The patch's wire format, which determines how to apply it. Absent
    #   when the producer recorded a format with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] filename
    #   Filename the producer suggests for the patch, when it named one.
    #   @return [String]
    #
    # @!attribute [rw] patch_sha_256
    #   SHA-256 of the patch bytes in lowercase hex, as recorded by the
    #   producer.
    #
    #   Lets a caller confirm the patch it applies is byte-for-byte the one
    #   that was reviewed. Computed over the patch bytes, so it is
    #   verifiable against `patch` without trusting this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/RemediationProposalBody AWS API Documentation
    #
    class RemediationProposalBody < Struct.new(
      :patch,
      :format,
      :filename,
      :patch_sha_256)
      SENSITIVE = []
      include Aws::Structure
    end

    # Empty marker selecting removal in KubernetesClusterRoleUpdate.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/RemoveKubernetesClusterRole AWS API Documentation
    #
    class RemoveKubernetesClusterRole < Aws::EmptyStructure; end

    # The specified resource was not found. Verify that the resource
    # identifier is correct and that the resource exists.
    #
    # @!attribute [rw] message
    #   Description of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for a customer-managed S3 integration.
    #
    # @!attribute [rw] bucket
    #   Customer-managed source bucket name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Role Continuum will assume to read from the source bucket.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   Caller-provided external ID required by the role trust policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :bucket,
      :role_arn,
      :external_id)
      SENSITIVE = [:external_id]
      include Aws::Structure
    end

    # Public details for a customer-managed S3 integration. The sensitive
    # external ID is intentionally omitted.
    #
    # @!attribute [rw] bucket
    #   Customer-managed S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   IAM role assumed by Continuum to read a customer-managed S3
    #   integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/S3Details AWS API Documentation
    #
    class S3Details < Struct.new(
      :bucket,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 object a patch is delivered to.
    #
    # @!attribute [rw] bucket
    #   Customer-managed S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The object key of the delivered patch.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The S3 version ID of the delivered object, when the bucket is
    #   versioned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/S3Target AWS API Documentation
    #
    class S3Target < Struct.new(
      :bucket,
      :key,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota. Review your quota and
    # request an increase if needed.
    #
    # @!attribute [rw] message
    #   Description of the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code for the exceeded limit.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code for the exceeded limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessed access-level precondition with the basis behind it.
    #
    # @!attribute [rw] value
    #   The level of access exploitation requires. Absent when the producer
    #   reported a level with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] basis
    #   Where the producer's determination came from.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The producer's explanation.
    #   @return [String]
    #
    # @!attribute [rw] missing_info
    #   What the producer could not determine, when anything was missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalAccessPrecondition AWS API Documentation
    #
    class SignalAccessPrecondition < Struct.new(
      :value,
      :basis,
      :reason,
      :missing_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessed attacker-gains dimension with the basis behind it.
    #
    # @!attribute [rw] value
    #   The capability exploitation grants. Absent when the producer
    #   reported a value with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] basis
    #   Where the producer's determination came from.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The producer's explanation.
    #   @return [String]
    #
    # @!attribute [rw] missing_info
    #   What the producer could not determine, when anything was missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalAttackerGainsDimension AWS API Documentation
    #
    class SignalAttackerGainsDimension < Struct.new(
      :value,
      :basis,
      :reason,
      :missing_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessed blast-radius dimension with the basis behind it.
    #
    # @!attribute [rw] value
    #   How far the consequences reach. Absent when the producer reported a
    #   value with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] basis
    #   Where the producer's determination came from.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The producer's explanation.
    #   @return [String]
    #
    # @!attribute [rw] missing_info
    #   What the producer could not determine, when anything was missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalBlastRadiusDimension AWS API Documentation
    #
    class SignalBlastRadiusDimension < Struct.new(
      :value,
      :basis,
      :reason,
      :missing_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deterministic values the producer computed from its assessment, as
    # distinct from the assessment itself.
    #
    # @!attribute [rw] likelihood_band
    #   Computed likelihood band, on a likelihood signal.
    #   @return [String]
    #
    # @!attribute [rw] impact_band
    #   Computed impact band, on an impact signal.
    #   @return [String]
    #
    # @!attribute [rw] barriers
    #   How many of the four exploit preconditions act as barriers (0-4).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalComputation AWS API Documentation
    #
    class SignalComputation < Struct.new(
      :likelihood_band,
      :impact_band,
      :barriers)
      SENSITIVE = []
      include Aws::Structure
    end

    # A producer's structured rationale for a signal's confidence.
    #
    # @!attribute [rw] summary
    #   One-line rationale.
    #   @return [String]
    #
    # @!attribute [rw] factors
    #   The individual factors behind it.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalConfidenceReasoning AWS API Documentation
    #
    class SignalConfidenceReasoning < Struct.new(
      :summary,
      :factors)
      SENSITIVE = []
      include Aws::Structure
    end

    # What validation established about exploitability, as summarized onto
    # the scoring signal derived from it.
    #
    # @!attribute [rw] verdict
    #   Validation's verdict. `UNCERTAIN` covers a run that was
    #   inconclusive — out of budget, an ambiguous failure, or no decisive
    #   layer reached — and is never a refutation.
    #   @return [String]
    #
    # @!attribute [rw] reached_crown_jewels
    #   Whether validation reached the high-value sink the attack path
    #   posited.
    #
    #   A Boolean rather than an enum: the sink was either reached or it was
    #   not, and how far the walk got when it was not is already carried,
    #   with more precision, by `highestLayerReached`. An unknown is the
    #   absent member.
    #   @return [Boolean]
    #
    # @!attribute [rw] highest_layer_reached
    #   The highest impact layer validation reached, 1-5, as a measure of
    #   how far the attack path was walked.
    #   @return [Integer]
    #
    # @!attribute [rw] confidence_tier
    #   How strong the evidence behind the verdict is.
    #   @return [String]
    #
    # @!attribute [rw] scriptable
    #   Whether the proven exploit is automatable rather than one-off.
    #
    #   A Boolean for the same reason as `SignalPrecondition.value`:
    #   validation records a bool, and an unknown is the absent member.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_validation_artifact_id
    #   The VALIDATION\_EVIDENCE artifact on this same issue holding the
    #   proof this verdict summarizes. Fetch it with GetCodeIssueArtifact
    #   for the full reasoning chain and exploit artifact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalExploitability AWS API Documentation
    #
    class SignalExploitability < Struct.new(
      :verdict,
      :reached_crown_jewels,
      :highest_layer_reached,
      :confidence_tier,
      :scriptable,
      :source_validation_artifact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The three impact dimensions an impact signal assessed. The computed
    # impact band is derived from attackerGains and blastRadius, then
    # shifted by targetValue.
    #
    # @!attribute [rw] attacker_gains
    #   What the attacker gains from exploitation.
    #   @return [Types::SignalAttackerGainsDimension]
    #
    # @!attribute [rw] blast_radius
    #   How far the consequences reach.
    #   @return [Types::SignalBlastRadiusDimension]
    #
    # @!attribute [rw] target_value
    #   How valuable the target is, which can shift the band off its base
    #   value.
    #   @return [Types::SignalTargetValueDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalImpactDimensions AWS API Documentation
    #
    class SignalImpactDimensions < Struct.new(
      :attacker_gains,
      :blast_radius,
      :target_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # One assessed precondition with the basis behind it.
    #
    # @!attribute [rw] value
    #   The producer's determination.
    #
    #   A Boolean rather than an enum, against the Common Terms preference
    #   for enums on extensibility grounds. The question each precondition
    #   answers is closed — is the code reachable, is configuration
    #   required, must a user other than the attacker interact — and the
    #   only third state, "not determined", is already expressed by omitting
    #   this member, which the projection does whenever the stored value is
    #   not a bool. An enum would give two ways to say the same thing, while
    #   `basis` and `missingInfo` already qualify how firm the answer is.
    #   @return [Boolean]
    #
    # @!attribute [rw] basis
    #   Where the producer's determination came from.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The producer's explanation.
    #   @return [String]
    #
    # @!attribute [rw] missing_info
    #   What the producer could not determine, when anything was missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalPrecondition AWS API Documentation
    #
    class SignalPrecondition < Struct.new(
      :value,
      :basis,
      :reason,
      :missing_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The four preconditions a likelihood signal assessed.
    #
    # @!attribute [rw] reachable_from_attacker
    #   Whether the vulnerable code path is reachable by an attacker.
    #   @return [Types::SignalPrecondition]
    #
    # @!attribute [rw] configuration_needed
    #   Whether exploitation depends on a non-default configuration.
    #   @return [Types::SignalPrecondition]
    #
    # @!attribute [rw] access_level
    #   What level of access exploitation requires.
    #   @return [Types::SignalAccessPrecondition]
    #
    # @!attribute [rw] user_interaction_required
    #   Whether exploitation requires a user other than the attacker to take
    #   part, for example by opening a link or a file (CVSS User
    #   Interaction).
    #   @return [Types::SignalPrecondition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalPreconditions AWS API Documentation
    #
    class SignalPreconditions < Struct.new(
      :reachable_from_attacker,
      :configuration_needed,
      :access_level,
      :user_interaction_required)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assessed target-value dimension with the basis behind it.
    #
    # @!attribute [rw] value
    #   How valuable the target is. Absent when the producer reported a
    #   value with no mapping yet.
    #   @return [String]
    #
    # @!attribute [rw] basis
    #   Where the producer's determination came from.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The producer's explanation.
    #   @return [String]
    #
    # @!attribute [rw] missing_info
    #   What the producer could not determine, when anything was missing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/SignalTargetValueDimension AWS API Documentation
    #
    class SignalTargetValueDimension < Struct.new(
      :value,
      :basis,
      :reason,
      :missing_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the provider to authorize and, optionally, the name the new
    # integration will use.
    #
    # @!attribute [rw] provider_type
    #   The provider to authorize. Only GITHUB is supported.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name the integration will be created with. When specified, the
    #   request fails with ConflictException if an integration with this
    #   name already exists in the account, before the caller leaves for the
    #   provider. The name is only checked: it is not reserved, stored, or
    #   authorized. CreateIntegration requires its own name, checks it
    #   again, and may use a different one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/StartIntegrationAuthorizationInput AWS API Documentation
    #
    class StartIntegrationAuthorizationInput < Struct.new(
      :provider_type,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the values to send to the provider's authorization endpoint.
    #
    # @!attribute [rw] state
    #   An opaque value to send as the OAuth `state` parameter. Pass the
    #   value the provider returns in its callback to CreateIntegration as
    #   `authorization.state`.
    #   @return [String]
    #
    # @!attribute [rw] code_challenge
    #   The PKCE code challenge to send as the OAuth `code_challenge`
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] code_challenge_method
    #   The PKCE challenge method to send as the OAuth
    #   `code_challenge_method` parameter.
    #   @return [String]
    #
    # @!attribute [rw] expires_at
    #   The time after which CreateIntegration no longer accepts this
    #   authorization.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/StartIntegrationAuthorizationOutput AWS API Documentation
    #
    class StartIntegrationAuthorizationOutput < Struct.new(
      :state,
      :code_challenge,
      :code_challenge_method,
      :expires_at)
      SENSITIVE = [:state]
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   Description of the throttling error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mutable source and operating-policy settings for a code environment.
    #
    # @!attribute [rw] source_configuration
    #   Source changes. s3Sources replaces the environment's S3 source, and
    #   repositorySources replaces its repository selections.
    #   @return [Types::EnvironmentSourceConfiguration]
    #
    # @!attribute [rw] environment_configuration
    #   Operating-policy changes. network replaces the environment's
    #   network policy; a network without allowedDomains allows no domains.
    #   Builds accepted before the change keep the domains they were
    #   accepted with. patchCreationPolicy replaces the patch creation
    #   policy. scanFrequency updates scan cadence. Omitted members preserve
    #   their stored values.
    #   @return [Types::EnvironmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateCodeConfiguration AWS API Documentation
    #
    class UpdateCodeConfiguration < Struct.new(
      :source_configuration,
      :environment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mutable Collector properties. At least one property must
    # be supplied. k8ClusterRole models an atomic set-or-remove mutation, so
    # roleArn and externalId are replaced or removed together.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the Collector to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new customer-visible name.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_cluster_role
    #   Atomic update to the IAM role configuration used to collect
    #   Kubernetes cluster metadata. The set variant requires a complete
    #   configuration; the authenticated caller must be allowed to pass its
    #   exact roleArn to Continuum. The remove variant clears both the role
    #   and external ID.
    #   @return [Types::KubernetesClusterRoleUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateCollectorInput AWS API Documentation
    #
    class UpdateCollectorInput < Struct.new(
      :collector_id,
      :name,
      :kubernetes_cluster_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state of the updated Collector.
    #
    # @!attribute [rw] collector_id
    #   The unique identifier of the updated Collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_arn
    #   The ARN of the updated Collector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The source collected by this Collector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current lifecycle status.
    #   @return [String]
    #
    # @!attribute [rw] config_recorder_arn
    #   The ARN of the provisioned AWS Config Recorder.
    #   @return [String]
    #
    # @!attribute [rw] kubernetes_cluster_role_arn
    #   IAM role used to collect Kubernetes cluster metadata.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the Collector was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The time of the last successful UpdateCollector call, returned at
    #   whole-second precision in the same date-time format as createdAt.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateCollectorOutput AWS API Documentation
    #
    class UpdateCollectorOutput < Struct.new(
      :collector_id,
      :collector_arn,
      :type,
      :status,
      :config_recorder_arn,
      :kubernetes_cluster_role_arn,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Type-specific changes to an environment. Omitted members preserve
    # stored values.
    #
    # @!attribute [rw] code_configuration
    #   Changes to a code-scanning environment.
    #   @return [Types::UpdateCodeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateEnvironmentConfiguration AWS API Documentation
    #
    class UpdateEnvironmentConfiguration < Struct.new(
      :code_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mutable environment properties. Supply a name or a
    # change under configuration.codeConfiguration. Its
    # sourceConfiguration.s3Sources and
    # sourceConfiguration.repositorySources replace the S3 source and
    # repository selections. Its environmentConfiguration has patch
    # semantics: omitted members preserve stored values, scanFrequency
    # updates scan cadence, and network and patchCreationPolicy replace the
    # corresponding policies.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the environment to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The new customer-visible name.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Type-specific configuration changes. Omission preserves the
    #   configuration.
    #   @return [Types::UpdateEnvironmentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateEnvironmentInput AWS API Documentation
    #
    class UpdateEnvironmentInput < Struct.new(
      :environment_id,
      :name,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state of the updated environment. Use
    # GetEnvironment to read its source and environment configuration.
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the updated environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN of the updated environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The current customer-visible name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the environment.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   Human-readable details about the current status.
    #   @return [String]
    #
    # @!attribute [rw] status_updated_at
    #   The timestamp when the status last transitioned. Uses the existing
    #   GetEnvironment/ListEnvironments ISO-8601 wire format for this field.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the environment was created. Uses the existing
    #   GetEnvironment/ListEnvironments ISO-8601 wire format for this field.
    #   @return [Time]
    #
    # @!attribute [rw] configuration
    #   Type-specific state, including Collector details and the latest
    #   scan. Read source and operating-policy settings through
    #   GetEnvironment.
    #   @return [Types::EnvironmentConfigurationDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateEnvironmentOutput AWS API Documentation
    #
    class UpdateEnvironmentOutput < Struct.new(
      :environment_id,
      :environment_arn,
      :name,
      :status,
      :status_message,
      :status_updated_at,
      :created_at,
      :configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the S3 integration and the credentials to validate and save.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier of the S3 integration to update.
    #   @return [String]
    #
    # @!attribute [rw] provider_configuration
    #   The provider-specific changes to apply. The member must match the
    #   integration's provider type, and only S3 integrations can be
    #   updated.
    #   @return [Types::UpdateProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateIntegrationInput AWS API Documentation
    #
    class UpdateIntegrationInput < Struct.new(
      :integration_id,
      :provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the current state of the updated S3 integration. The
    # sensitive external ID is omitted.
    #
    # @!attribute [rw] integration_id
    #   The unique identifier for an Integration resource.
    #   @return [String]
    #
    # @!attribute [rw] integration_arn
    #   The Amazon Resource Name (ARN) of an Integration resource, of the
    #   form
    #   arn:\{partition}:continuum:\{region}:\{account}:integrations/\{integrationId}.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for an integration.
    #   @return [String]
    #
    # @!attribute [rw] integration_type
    #   The immutable provider type for an integration.
    #   @return [String]
    #
    # @!attribute [rw] provider_details
    #   Provider-specific details for an integration. Only one member will
    #   be present.
    #   @return [Types::ProviderDetails]
    #
    # @!attribute [rw] created_at
    #   When the integration was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   When the integration was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateIntegrationOutput AWS API Documentation
    #
    class UpdateIntegrationOutput < Struct.new(
      :integration_id,
      :integration_arn,
      :name,
      :integration_type,
      :provider_details,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provider-specific changes for updating an integration. Only S3
    # integrations can be updated, so S3 is the only member.
    #
    # @note UpdateProviderConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3
    #   Replacement credentials for a customer-managed S3 integration.
    #   @return [Types::UpdateS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateProviderConfiguration AWS API Documentation
    #
    class UpdateProviderConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < UpdateProviderConfiguration; end
      class Unknown < UpdateProviderConfiguration; end
    end

    # Replacement credentials for a customer-managed S3 integration. The
    # bucket cannot be changed.
    #
    # @!attribute [rw] role_arn
    #   The role to use. Supply the current role when rotating only the
    #   external ID. The caller must be allowed to pass this exact role to
    #   Continuum.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The replacement external ID used when assuming the supplied role. If
    #   omitted, the existing external ID is preserved. This value is
    #   sensitive and is never included in the public integration response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/UpdateS3Configuration AWS API Documentation
    #
    class UpdateS3Configuration < Struct.new(
      :role_arn,
      :external_id)
      SENSITIVE = [:external_id]
      include Aws::Structure
    end

    # Projected content for a VALIDATION\_EVIDENCE artifact: the validation
    # agent's durable proof of exploitability.
    #
    # @!attribute [rw] exploitable
    #   Exploitability verdict. Explicit UNCERTAIN replaces the producer's
    #   tri-state `exploitable: true | false | null`, so an absent verdict
    #   is never confused with a negative one.
    #   @return [String]
    #
    # @!attribute [rw] terminal_status
    #   How the validation run ended. Absent when the producer reported a
    #   status with no mapping yet: the rest of the body still projects, so
    #   one unmapped enum never costs a customer the whole artifact.
    #   @return [String]
    #
    # @!attribute [rw] flow_verdicts
    #   One verdict per attack flow assessed in the bundle.
    #   @return [Array<Types::FlowVerdict>]
    #
    # @!attribute [rw] attack_flows_confirmed
    #   Identifiers of attack flows upgraded to Confirmed provenance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] exploit_artifact
    #   Concrete payload and its observed effect, when validation produced
    #   one by sending an HTTP request.
    #
    #   Only an HTTP proof projects here. A validation agent that proves
    #   exploitability by RUNNING code against the repository projects
    #   `executedProof`, and one that proves it by reading the source
    #   projects `sourceAnalysis`. All three are mutually exclusive: at most
    #   one is present.
    #   @return [Types::ValidationExploitArtifact]
    #
    # @!attribute [rw] executed_proof
    #   Proof the agent produced by executing code against the repository
    #   under test, with the output that execution produced.
    #   @return [Types::ValidationExecutedProof]
    #
    # @!attribute [rw] source_analysis
    #   Proof the agent produced by reading the repository's source, with
    #   nothing built or run.
    #   @return [Types::ValidationSourceAnalysis]
    #
    # @!attribute [rw] per_finding_results
    #   Per-finding breakdown for a multi-finding bundle. Absent for a
    #   single-finding bundle.
    #   @return [Array<Types::PerFindingResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationEvidenceBody AWS API Documentation
    #
    class ValidationEvidenceBody < Struct.new(
      :exploitable,
      :terminal_status,
      :flow_verdicts,
      :attack_flows_confirmed,
      :exploit_artifact,
      :executed_proof,
      :source_analysis,
      :per_finding_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :path,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Proof of exploitability the validation agent produced by executing
    # code against the repository under test, with the output that execution
    # produced.
    #
    # @!attribute [rw] code
    #   The code that was run. Not a request payload: it imports the
    #   repository's own modules and drives the vulnerable code path
    #   directly.
    #   @return [Types::ValidationProofCode]
    #
    # @!attribute [rw] output
    #   What the execution printed, including the agent's own PASS/FAIL
    #   assertions. Absent when the run printed nothing retained.
    #   @return [Types::ValidationProofOutput]
    #
    # @!attribute [rw] observed_effect
    #   Effect the execution actually produced. `observedEffect` rather than
    #   `effect`: this one was witnessed, and the name has to stay
    #   distinguishable from `ValidationSourceAnalysis.inferredEffect`,
    #   which was not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationExecutedProof AWS API Documentation
    #
    class ValidationExecutedProof < Struct.new(
      :code,
      :output,
      :observed_effect)
      SENSITIVE = []
      include Aws::Structure
    end

    # A concrete exploit payload and the effect validation observed from it.
    #
    # @!attribute [rw] payload
    #   The exact payload sent.
    #   @return [String]
    #
    # @!attribute [rw] target_url
    #   Target the payload was sent to.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   HTTP method the payload was sent with.
    #   @return [String]
    #
    # @!attribute [rw] headers
    #   Headers sent with the payload.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] response_status
    #   HTTP status observed in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] response_snippet
    #   Leading portion of the response body, bounded by the producer.
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   Effect observed from sending the payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationExploitArtifact AWS API Documentation
    #
    class ValidationExploitArtifact < Struct.new(
      :payload,
      :target_url,
      :http_method,
      :headers,
      :response_status,
      :response_snippet,
      :effect)
      SENSITIVE = []
      include Aws::Structure
    end

    # The executed proof's program. Further members, such as command,
    # workingDirectory and supportingInputs, can be added later as optional
    # details.
    #
    # @!attribute [rw] proof_code
    #   Proof program files, main file first, in their retained order.
    #   @return [Array<Types::ValidationProofMaterial>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationProofCode AWS API Documentation
    #
    class ValidationProofCode < Struct.new(
      :proof_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # One proof program file. Further members, such as path and purpose, can
    # be added later as optional details.
    #
    # @!attribute [rw] content
    #   The file's non-blank text, exactly as retained.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationProofMaterial AWS API Documentation
    #
    class ValidationProofMaterial < Struct.new(
      :content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retained run output. Further members, such as completion and
    # outputCompleteness, can be added later as optional details.
    #
    # @!attribute [rw] console_output
    #   What the run printed: standard output and standard error merged, as
    #   retained. The text may be empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationProofOutput AWS API Documentation
    #
    class ValidationProofOutput < Struct.new(
      :console_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Proof of exploitability the validation agent produced by reading the
    # repository's source, with nothing built or run. Further members, such
    # as diagram and references, can be added later as optional details.
    #
    # @!attribute [rw] summary
    #   The non-blank analysis as Markdown: the annotated entry-to-sink
    #   walk, its citations, and why the checked guards are absent or
    #   bypassed.
    #   @return [String]
    #
    # @!attribute [rw] inferred_effect
    #   Effect the agent concluded WOULD occur. Deliberately not `effect`:
    #   nothing was executed, so this is reasoned from the source and must
    #   not be read as an observation. See
    #   `ValidationExecutedProof.observedEffect`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/continuum-2022-07-26/ValidationSourceAnalysis AWS API Documentation
    #
    class ValidationSourceAnalysis < Struct.new(
      :summary,
      :inferred_effect)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

