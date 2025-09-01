# frozen_string_literal: true

# This is generated code!

module Aws::SSM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SSM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SSM::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {AccessDeniedException}
  # * {AlreadyExistsException}
  # * {AssociatedInstances}
  # * {AssociationAlreadyExists}
  # * {AssociationDoesNotExist}
  # * {AssociationExecutionDoesNotExist}
  # * {AssociationLimitExceeded}
  # * {AssociationVersionLimitExceeded}
  # * {AutomationDefinitionNotApprovedException}
  # * {AutomationDefinitionNotFoundException}
  # * {AutomationDefinitionVersionNotFoundException}
  # * {AutomationExecutionLimitExceededException}
  # * {AutomationExecutionNotFoundException}
  # * {AutomationStepNotFoundException}
  # * {ComplianceTypeCountLimitExceededException}
  # * {CustomSchemaCountLimitExceededException}
  # * {DocumentAlreadyExists}
  # * {DocumentLimitExceeded}
  # * {DocumentPermissionLimit}
  # * {DocumentVersionLimitExceeded}
  # * {DoesNotExistException}
  # * {DuplicateDocumentContent}
  # * {DuplicateDocumentVersionName}
  # * {DuplicateInstanceId}
  # * {FeatureNotAvailableException}
  # * {HierarchyLevelLimitExceededException}
  # * {HierarchyTypeMismatchException}
  # * {IdempotentParameterMismatch}
  # * {IncompatiblePolicyException}
  # * {InternalServerError}
  # * {InvalidActivation}
  # * {InvalidActivationId}
  # * {InvalidAggregatorException}
  # * {InvalidAllowedPatternException}
  # * {InvalidAssociation}
  # * {InvalidAssociationVersion}
  # * {InvalidAutomationExecutionParametersException}
  # * {InvalidAutomationSignalException}
  # * {InvalidAutomationStatusUpdateException}
  # * {InvalidCommandId}
  # * {InvalidDeleteInventoryParametersException}
  # * {InvalidDeletionIdException}
  # * {InvalidDocument}
  # * {InvalidDocumentContent}
  # * {InvalidDocumentOperation}
  # * {InvalidDocumentSchemaVersion}
  # * {InvalidDocumentType}
  # * {InvalidDocumentVersion}
  # * {InvalidFilter}
  # * {InvalidFilterKey}
  # * {InvalidFilterOption}
  # * {InvalidFilterValue}
  # * {InvalidInstanceId}
  # * {InvalidInstanceInformationFilterValue}
  # * {InvalidInstancePropertyFilterValue}
  # * {InvalidInventoryGroupException}
  # * {InvalidInventoryItemContextException}
  # * {InvalidInventoryRequestException}
  # * {InvalidItemContentException}
  # * {InvalidKeyId}
  # * {InvalidNextToken}
  # * {InvalidNotificationConfig}
  # * {InvalidOptionException}
  # * {InvalidOutputFolder}
  # * {InvalidOutputLocation}
  # * {InvalidParameters}
  # * {InvalidPermissionType}
  # * {InvalidPluginName}
  # * {InvalidPolicyAttributeException}
  # * {InvalidPolicyTypeException}
  # * {InvalidResourceId}
  # * {InvalidResourceType}
  # * {InvalidResultAttributeException}
  # * {InvalidRole}
  # * {InvalidSchedule}
  # * {InvalidTag}
  # * {InvalidTarget}
  # * {InvalidTargetMaps}
  # * {InvalidTypeNameException}
  # * {InvalidUpdate}
  # * {InvocationDoesNotExist}
  # * {ItemContentMismatchException}
  # * {ItemSizeLimitExceededException}
  # * {MalformedResourcePolicyDocumentException}
  # * {MaxDocumentSizeExceeded}
  # * {OpsItemAccessDeniedException}
  # * {OpsItemAlreadyExistsException}
  # * {OpsItemConflictException}
  # * {OpsItemInvalidParameterException}
  # * {OpsItemLimitExceededException}
  # * {OpsItemNotFoundException}
  # * {OpsItemRelatedItemAlreadyExistsException}
  # * {OpsItemRelatedItemAssociationNotFoundException}
  # * {OpsMetadataAlreadyExistsException}
  # * {OpsMetadataInvalidArgumentException}
  # * {OpsMetadataKeyLimitExceededException}
  # * {OpsMetadataLimitExceededException}
  # * {OpsMetadataNotFoundException}
  # * {OpsMetadataTooManyUpdatesException}
  # * {ParameterAlreadyExists}
  # * {ParameterLimitExceeded}
  # * {ParameterMaxVersionLimitExceeded}
  # * {ParameterNotFound}
  # * {ParameterPatternMismatchException}
  # * {ParameterVersionLabelLimitExceeded}
  # * {ParameterVersionNotFound}
  # * {PoliciesLimitExceededException}
  # * {ResourceDataSyncAlreadyExistsException}
  # * {ResourceDataSyncConflictException}
  # * {ResourceDataSyncCountExceededException}
  # * {ResourceDataSyncInvalidConfigurationException}
  # * {ResourceDataSyncNotFoundException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ResourcePolicyConflictException}
  # * {ResourcePolicyInvalidParameterException}
  # * {ResourcePolicyLimitExceededException}
  # * {ResourcePolicyNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ServiceSettingNotFound}
  # * {StatusUnchanged}
  # * {SubTypeCountLimitExceededException}
  # * {TargetInUseException}
  # * {TargetNotConnected}
  # * {ThrottlingException}
  # * {TooManyTagsError}
  # * {TooManyUpdates}
  # * {TotalSizeLimitExceededException}
  # * {UnsupportedCalendarException}
  # * {UnsupportedFeatureRequiredException}
  # * {UnsupportedInventoryItemContextException}
  # * {UnsupportedInventorySchemaVersionException}
  # * {UnsupportedOperatingSystem}
  # * {UnsupportedOperationException}
  # * {UnsupportedParameterType}
  # * {UnsupportedPlatformType}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The requester doesn't have permissions to perform the requested operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error returned if an attempt is made to register a patch group with a patch baseline that is
    #    already registered with a different patch baseline.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You must disassociate a document from all managed nodes before you can delete it.</p>
    class AssociatedInstances < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociatedInstances] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The specified association already exists.</p>
    class AssociationAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociationAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The specified association doesn't exist.</p>
    class AssociationDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociationDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified execution ID doesn't exist. Verify the ID number and try again.</p>
    class AssociationExecutionDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociationExecutionDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can have at most 2,000 active associations.</p>
    class AssociationLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociationLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>You have reached the maximum number versions allowed for an association. Each association
    #    has a limit of 1,000 versions. </p>
    class AssociationVersionLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AssociationVersionLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Change Manager change template used in the change request was rejected or is
    #    still in a pending state.</p>
    class AutomationDefinitionNotApprovedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationDefinitionNotApprovedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An Automation runbook with the specified name couldn't be found.</p>
    class AutomationDefinitionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationDefinitionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An Automation runbook with the specified name and version couldn't be found.</p>
    class AutomationDefinitionVersionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationDefinitionVersionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of simultaneously running Automation executions exceeded the allowable
    #    limit.</p>
    class AutomationExecutionLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationExecutionLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no automation execution information for the requested automation execution
    #    ID.</p>
    class AutomationExecutionNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationExecutionNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified step name and execution ID don't exist. Verify the information and try
    #    again.</p>
    class AutomationStepNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::AutomationStepNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You specified too many custom compliance types. You can specify a maximum of 10 different
    #    types. </p>
    class ComplianceTypeCountLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ComplianceTypeCountLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try
    #    again.</p>
    class CustomSchemaCountLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::CustomSchemaCountLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified document already exists.</p>
    class DocumentAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DocumentAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can have at most 500 active SSM documents.</p>
    class DocumentLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DocumentLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The document can't be shared with more Amazon Web Services accounts. You can specify a maximum of 20
    #    accounts per API operation to share a private document.</p>
    #          <p>By default, you can share a private document with a maximum of 1,000 accounts and publicly
    #    share up to five documents.</p>
    #          <p>If you need to increase the quota for privately or publicly shared Systems Manager documents, contact
    #    Amazon Web Services Support.</p>
    class DocumentPermissionLimit < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DocumentPermissionLimit] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The document has too many versions. Delete one or more document versions and try
    #    again.</p>
    class DocumentVersionLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DocumentVersionLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error returned when the ID specified for a resource, such as a maintenance window or patch
    #    baseline, doesn't exist.</p>
    #          <p>For information about resource quotas in Amazon Web Services Systems Manager, see <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm">Systems Manager service quotas</a> in the
    #     <i>Amazon Web Services General Reference</i>.</p>
    class DoesNotExistException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DoesNotExistException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The content of the association document matches another document. Change the content of the
    #    document and try again.</p>
    class DuplicateDocumentContent < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DuplicateDocumentContent] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The version name has already been used in this document. Specify a different version name,
    #    and then try again.</p>
    class DuplicateDocumentVersionName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DuplicateDocumentVersionName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't specify a managed node ID in more than one association.</p>
    class DuplicateInstanceId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::DuplicateInstanceId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>You attempted to register a <code>LAMBDA</code> or <code>STEP_FUNCTIONS</code> task in a
    #    region where the corresponding service isn't available. </p>
    class FeatureNotAvailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::FeatureNotAvailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A hierarchy can have a maximum of 15 levels. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html">Requirements and
    #     constraints for parameter names</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    class HierarchyLevelLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::HierarchyLevelLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A hierarchy can have a maximum of 15 levels. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html#sysman-parameter-name-constraints">About requirements and constraints for parameter names</a> in the
      #     <i>Amazon Web Services Systems Manager User Guide</i>. </p>
      def message
        @data[:message]
      end
    end

    # <p>Parameter Store doesn't support changing a parameter type in a hierarchy. For example, you
    #    can't change a parameter from a <code>String</code> type to a <code>SecureString</code> type. You
    #    must create a new, unique parameter.</p>
    class HierarchyTypeMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::HierarchyTypeMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Parameter Store doesn't support changing a parameter type in a hierarchy. For example, you
      #    can't change a parameter from a <code>String</code> type to a <code>SecureString</code> type. You
      #    must create a new, unique parameter.</p>
      def message
        @data[:message]
      end
    end

    # <p>Error returned when an idempotent operation is retried and the parameters don't match the
    #    original call to the API with the same idempotency token. </p>
    class IdempotentParameterMismatch < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::IdempotentParameterMismatch] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is a conflict in the policies specified for this parameter. You can't, for example,
    #    specify two Expiration policies for a parameter. Review your policies, and try again.</p>
    class IncompatiblePolicyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::IncompatiblePolicyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred on the server side.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The activation isn't valid. The activation might have been deleted, or the ActivationId and
    #    the ActivationCode don't match.</p>
    class InvalidActivation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidActivation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The activation ID isn't valid. Verify that you entered the correct ActivationId or
    #    ActivationCode and try again.</p>
    class InvalidActivationId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidActivationId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified aggregator isn't valid for the group type. Verify that the aggregator you
    #    provided is supported.</p>
    class InvalidAggregatorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAggregatorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request doesn't meet the regular expression requirement.</p>
    class InvalidAllowedPatternException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAllowedPatternException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The request doesn't meet the regular expression requirement.</p>
      def message
        @data[:message]
      end
    end

    # <p>The association isn't valid or doesn't exist. </p>
    class InvalidAssociation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAssociation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The version you specified isn't valid. Use ListAssociationVersions to view all versions of
    #    an association according to the association ID. Or, use the <code>$LATEST</code> parameter to
    #    view the latest version of the association.</p>
    class InvalidAssociationVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAssociationVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The supplied parameters for invoking the specified Automation runbook are incorrect. For
    #    example, they may not match the set of parameters permitted for the specified Automation
    #    document.</p>
    class InvalidAutomationExecutionParametersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAutomationExecutionParametersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The signal isn't valid for the current Automation execution.</p>
    class InvalidAutomationSignalException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAutomationSignalException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified update status operation isn't valid.</p>
    class InvalidAutomationStatusUpdateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidAutomationStatusUpdateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified command ID isn't valid. Verify the ID and try again.</p>
    class InvalidCommandId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidCommandId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>One or more of the parameters specified for the delete operation isn't valid. Verify all
    #    parameters and try again.</p>
    class InvalidDeleteInventoryParametersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDeleteInventoryParametersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The ID specified for the delete operation doesn't exist or isn't valid. Verify the ID and
    #    try again.</p>
    class InvalidDeletionIdException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDeletionIdException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified SSM document doesn't exist.</p>
    class InvalidDocument < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocument] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The SSM document doesn't exist or the document isn't available to the user. This exception
      #    can be issued by various API operations. </p>
      def message
        @data[:message]
      end
    end

    # <p>The content for the document isn't valid.</p>
    class InvalidDocumentContent < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocumentContent] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of the validation error.</p>
      def message
        @data[:message]
      end
    end

    # <p>You attempted to delete a document while it is still shared. You must stop sharing the
    #    document before you can delete it.</p>
    class InvalidDocumentOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocumentOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The version of the document schema isn't supported.</p>
    class InvalidDocumentSchemaVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocumentSchemaVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The SSM document type isn't valid. Valid document types are described in the
    #     <code>DocumentType</code> property.</p>
    class InvalidDocumentType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocumentType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The document version isn't valid or doesn't exist.</p>
    class InvalidDocumentVersion < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidDocumentVersion] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The filter name isn't valid. Verify that you entered the correct name and try again.</p>
    class InvalidFilter < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidFilter] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified key isn't valid.</p>
    class InvalidFilterKey < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidFilterKey] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The specified filter option isn't valid. Valid options are Equals and BeginsWith. For Path
    #    filter, valid options are Recursive and OneLevel.</p>
    class InvalidFilterOption < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidFilterOption] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The specified filter option isn't valid. Valid options are Equals and BeginsWith. For Path
      #    filter, valid options are Recursive and OneLevel.</p>
      def message
        @data[:message]
      end
    end

    # <p>The filter value isn't valid. Verify the value and try again.</p>
    class InvalidFilterValue < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidFilterValue] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The following problems can cause this exception:</p>
    #          <ul>
    #             <li>
    #                <p>You don't have permission to access the managed node.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Web Services Systems Manager Agent (SSM Agent) isn't running. Verify that SSM Agent is
    #      running.</p>
    #             </li>
    #             <li>
    #                <p>SSM Agent isn't registered with the SSM endpoint. Try reinstalling SSM Agent.</p>
    #             </li>
    #             <li>
    #                <p>The managed node isn't in a valid state. Valid states are: <code>Running</code>,
    #       <code>Pending</code>, <code>Stopped</code>, and <code>Stopping</code>. Invalid states are:
    #       <code>Shutting-down</code> and <code>Terminated</code>.</p>
    #             </li>
    #          </ul>
    class InvalidInstanceId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInstanceId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified filter value isn't valid.</p>
    class InvalidInstanceInformationFilterValue < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInstanceInformationFilterValue] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified filter value isn't valid.</p>
    class InvalidInstancePropertyFilterValue < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInstancePropertyFilterValue] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified inventory group isn't valid.</p>
    class InvalidInventoryGroupException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInventoryGroupException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You specified invalid keys or values in the <code>Context</code> attribute for
    #     <code>InventoryItem</code>. Verify the keys and values, and try again.</p>
    class InvalidInventoryItemContextException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInventoryItemContextException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request isn't valid.</p>
    class InvalidInventoryRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidInventoryRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more content items isn't valid.</p>
    class InvalidItemContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidItemContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type_name
        @data[:type_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>The query key ID isn't valid.</p>
    class InvalidKeyId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidKeyId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified token isn't valid.</p>
    class InvalidNextToken < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidNextToken] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more configuration items isn't valid. Verify that a valid Amazon Resource Name (ARN)
    #    was provided for an Amazon Simple Notification Service topic.</p>
    class InvalidNotificationConfig < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidNotificationConfig] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The delete inventory option specified isn't valid. Verify the option and try again.</p>
    class InvalidOptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidOptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The S3 bucket doesn't exist.</p>
    class InvalidOutputFolder < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidOutputFolder] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The output location isn't valid or doesn't exist.</p>
    class InvalidOutputLocation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidOutputLocation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>You must specify values for all required parameters in the Amazon Web Services Systems Manager document (SSM
    #    document). You can only supply values to parameters defined in the SSM document.</p>
    class InvalidParameters < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidParameters] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The permission type isn't supported. <i>Share</i> is the only supported
    #    permission type.</p>
    class InvalidPermissionType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidPermissionType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The plugin name isn't valid.</p>
    class InvalidPluginName < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidPluginName] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>A policy attribute or its value is invalid. </p>
    class InvalidPolicyAttributeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidPolicyAttributeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The policy type isn't supported. Parameter Store supports the following policy types:
    #    Expiration, ExpirationNotification, and NoChangeNotification.</p>
    class InvalidPolicyTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidPolicyTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource ID isn't valid. Verify that you entered the correct ID and try again.</p>
    class InvalidResourceId < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidResourceId] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The resource type isn't valid. For example, if you are attempting to tag an EC2 instance,
    #    the instance must be a registered managed node.</p>
    class InvalidResourceType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidResourceType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The specified inventory item result attribute isn't valid.</p>
    class InvalidResultAttributeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidResultAttributeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about
    #    configuring the IAM role for Run Command notifications, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/monitoring-sns-notifications.html">Monitoring Systems Manager status changes using Amazon SNS notifications</a> in
    #    the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    class InvalidRole < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidRole] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
    class InvalidSchedule < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidSchedule] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified tag key or value isn't valid.</p>
    class InvalidTag < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidTag] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The target isn't valid or doesn't exist. It might not be configured for Systems Manager or you might
    #    not have permission to perform the operation.</p>
    class InvalidTarget < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidTarget] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>TargetMap parameter isn't valid.</p>
    class InvalidTargetMaps < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidTargetMaps] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter type name isn't valid.</p>
    class InvalidTypeNameException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidTypeNameException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The update isn't valid.</p>
    class InvalidUpdate < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvalidUpdate] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The command ID and managed node ID you specified didn't match any invocations. Verify the
    #    command ID and the managed node ID and try again. </p>
    class InvocationDoesNotExist < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::InvocationDoesNotExist] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The inventory item has invalid content. </p>
    class ItemContentMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ItemContentMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type_name
        @data[:type_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>The inventory item size has exceeded the size limit.</p>
    class ItemSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ItemSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type_name
        @data[:type_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified policy document is malformed or invalid, or excessive
    #     <code>PutResourcePolicy</code> or <code>DeleteResourcePolicy</code> calls have been made.</p>
    class MalformedResourcePolicyDocumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::MalformedResourcePolicyDocumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The size limit of a document is 64 KB.</p>
    class MaxDocumentSizeExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::MaxDocumentSizeExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You don't have permission to view OpsItems in the specified account. Verify that your account
    #    is configured either as a Systems Manager delegated administrator or that you are logged into the Organizations
    #    management account.</p>
    class OpsItemAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The OpsItem already exists.</p>
    class OpsItemAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def ops_item_id
        @data[:ops_item_id]
      end
    end

    # <p>The specified OpsItem is in the process of being deleted.</p>
    class OpsItemConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified parameter argument isn't valid. Verify the available arguments and try
    #    again.</p>
    class OpsItemInvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemInvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def parameter_names
        @data[:parameter_names]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request caused OpsItems to exceed one or more quotas.</p>
    class OpsItemLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def resource_types
        @data[:resource_types]
      end

      def limit
        @data[:limit]
      end

      def limit_type
        @data[:limit_type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified OpsItem ID doesn't exist. Verify the ID and try again.</p>
    class OpsItemNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Resource Name (ARN) is already associated with the OpsItem.</p>
    class OpsItemRelatedItemAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemRelatedItemAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def resource_uri
        @data[:resource_uri]
      end

      def ops_item_id
        @data[:ops_item_id]
      end
    end

    # <p>The association wasn't found using the parameters you specified in the call. Verify the
    #    information and try again.</p>
    class OpsItemRelatedItemAssociationNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsItemRelatedItemAssociationNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An OpsMetadata object already exists for the selected resource.</p>
    class OpsMetadataAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One of the arguments passed is invalid. </p>
    class OpsMetadataInvalidArgumentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataInvalidArgumentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The OpsMetadata object exceeds the maximum number of OpsMetadata keys that you can assign to
    #    an application in Application Manager.</p>
    class OpsMetadataKeyLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataKeyLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your account reached the maximum number of OpsMetadata objects allowed by Application Manager. The
    #    maximum is 200 OpsMetadata objects. Delete one or more OpsMetadata object and try again.</p>
    class OpsMetadataLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The OpsMetadata object doesn't exist. </p>
    class OpsMetadataNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The system is processing too many concurrent updates. Wait a few moments and try
    #    again.</p>
    class OpsMetadataTooManyUpdatesException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::OpsMetadataTooManyUpdatesException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter already exists. You can't create duplicate parameters.</p>
    class ParameterAlreadyExists < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterAlreadyExists] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the number of parameters for this Amazon Web Services account. Delete one or more
    #    parameters and try again.</p>
    class ParameterLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Parameter Store retains the 100 most recently created versions of a parameter. After this
    #    number of versions has been created, Parameter Store deletes the oldest version when a new one is
    #    created. However, if the oldest version has a <i>label</i> attached to it,
    #    Parameter Store won't delete the version and instead presents this error message:</p>
    #          <p>
    #             <code>An error occurred (ParameterMaxVersionLimitExceeded) when calling the PutParameter
    #     operation: You attempted to create a new version of <i>parameter-name</i> by
    #     calling the PutParameter API with the overwrite flag. Version
    #      <i>version-number</i>, the oldest version, can't be deleted because it has a
    #     label associated with it. Move the label to another version of the parameter, and try
    #     again.</code>
    #          </p>
    #          <p>This safeguard is to prevent parameter versions with mission critical labels assigned to
    #    them from being deleted. To continue creating new parameters, first move the label from the
    #    oldest version of the parameter to a newer one for use in your operations. For information about
    #    moving parameter labels, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-console-move">Move a parameter label (console)</a> or <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-labels.html#sysman-paramstore-labels-cli-move">Move a parameter label (CLI)</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. </p>
    class ParameterMaxVersionLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterMaxVersionLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter couldn't be found. Verify the name and try again.</p>
    #          <note>
    #             <p>For the <code>DeleteParameter</code> and <code>GetParameter</code> actions, if the
    #     specified parameter doesn't exist, the <code>ParameterNotFound</code> exception is
    #      <i>not</i> recorded in CloudTrail event logs.</p>
    #          </note>
    class ParameterNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter name isn't valid.</p>
    class ParameterPatternMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterPatternMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The parameter name isn't valid.</p>
      def message
        @data[:message]
      end
    end

    # <p>A parameter version can have a maximum of ten labels.</p>
    class ParameterVersionLabelLimitExceeded < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterVersionLabelLimitExceeded] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter version wasn't found. Verify the parameter name and version, and try
    #    again.</p>
    class ParameterVersionNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ParameterVersionNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You specified more than the maximum number of allowed policies for the parameter. The
    #    maximum is 10.</p>
    class PoliciesLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::PoliciesLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A sync configuration with the same name already exists.</p>
    class ResourceDataSyncAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceDataSyncAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def sync_name
        @data[:sync_name]
      end
    end

    # <p>Another <code>UpdateResourceDataSync</code> request is being processed. Wait a few minutes
    #    and try again.</p>
    class ResourceDataSyncConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceDataSyncConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the allowed maximum sync configurations.</p>
    class ResourceDataSyncCountExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceDataSyncCountExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified sync configuration is invalid.</p>
    class ResourceDataSyncInvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceDataSyncInvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified sync name wasn't found.</p>
    class ResourceDataSyncNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceDataSyncNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def sync_name
        @data[:sync_name]
      end

      def sync_type
        @data[:sync_type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Error returned if an attempt is made to delete a patch baseline that is registered for a
    #    patch group.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Error returned when the caller has exceeded the default resource quotas. For example, too
    #    many maintenance windows or patch baselines have been created.</p>
    #          <p>For information about resource quotas in Systems Manager, see <a href="https://docs.aws.amazon.com/general/latest/gr/ssm.html#limits_ssm">Systems Manager service quotas</a> in the
    #     <i>Amazon Web Services General Reference</i>.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified parameter to be shared could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The hash provided in the call doesn't match the stored hash. This exception is thrown when
    #    trying to update an obsolete policy version or when multiple requests to update a policy are
    #    sent.</p>
    class ResourcePolicyConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourcePolicyConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameters specified for the call aren't valid. Verify the parameters and their
    #    values and try again.</p>
    class ResourcePolicyInvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourcePolicyInvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def parameter_names
        @data[:parameter_names]
      end

      def message
        @data[:message]
      end
    end

    # <p>The <a>PutResourcePolicy</a> API action enforces two limits. A policy can't be
    #    greater than 1024 bytes in size. And only one policy can be attached to
    #    <code>OpsItemGroup</code>. Verify these limits and try again.</p>
    class ResourcePolicyLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourcePolicyLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def limit
        @data[:limit]
      end

      def limit_type
        @data[:limit_type]
      end

      def message
        @data[:message]
      end
    end

    # <p>No policies with the specified policy ID and hash could be found.</p>
    class ResourcePolicyNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ResourcePolicyNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request exceeds the service quota. Service quotas, also referred to as limits, are the
    #    maximum number of service resources or operations for your Amazon Web Services account.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The unique ID of the resource referenced in the failed request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the resource referenced in the failed request.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the Amazon Web Services service that owns the quota.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The specified service setting wasn't found. Either the service name or the setting hasn't
    #    been provisioned by the Amazon Web Services service team.</p>
    class ServiceSettingNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ServiceSettingNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The updated status is the same as the current status.</p>
    class StatusUnchanged < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::StatusUnchanged] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>The sub-type count exceeded the limit for the inventory type.</p>
    class SubTypeCountLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::SubTypeCountLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You specified the <code>Safe</code> option for the DeregisterTargetFromMaintenanceWindow
    #    operation, but the target is still referenced in a task.</p>
    class TargetInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::TargetInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified target managed node for the session isn't fully configured for use with Session Manager.
    #    For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html">Setting up
    #     Session Manager</a> in the <i>Amazon Web Services Systems Manager User Guide</i>. This error is also returned if you
    #    attempt to start a session on a managed node that is located in a different account or
    #    Region</p>
    class TargetNotConnected < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::TargetNotConnected] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request or operation couldn't be performed because the service is throttling
    #    requests.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The quota code recognized by the Amazon Web Services Service Quotas service.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the Amazon Web Services service that owns the quota.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The <code>Targets</code> parameter includes too many tags. Remove one or more tags and try
    #    the command again.</p>
    class TooManyTagsError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::TooManyTagsError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end
    end

    # <p>There are concurrent updates for a resource that supports one update at a time.</p>
    class TooManyUpdates < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::TooManyUpdates] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The size of inventory data has exceeded the total size limit for the resource.</p>
    class TotalSizeLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::TotalSizeLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The calendar entry contained in the specified SSM document isn't supported.</p>
    class UnsupportedCalendarException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedCalendarException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Patching for applications released by Microsoft is only available on EC2 instances and
    #    advanced instances. To patch applications released by Microsoft on on-premises servers and VMs,
    #    you must enable advanced instances. For more information, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-managedinstances-advanced.html">Turning on
    #     the advanced-instances tier</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
    class UnsupportedFeatureRequiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedFeatureRequiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>Context</code> attribute that you specified for the <code>InventoryItem</code>
    #    isn't allowed for this inventory type. You can only use the <code>Context</code> attribute with
    #    inventory types like <code>AWS:ComplianceItem</code>.</p>
    class UnsupportedInventoryItemContextException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedInventoryItemContextException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type_name
        @data[:type_name]
      end

      def message
        @data[:message]
      end
    end

    # <p>Inventory item type schema version has to match supported versions in the service. Check
    #    output of GetInventorySchema to see the available schema version for each type.</p>
    class UnsupportedInventorySchemaVersionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedInventorySchemaVersionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operating systems you specified isn't supported, or the operation isn't supported for
    #    the operating system.</p>
    class UnsupportedOperatingSystem < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedOperatingSystem] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation is not supported for the current account. You must first enable the Systems Manager integrated experience in your account.</p>
    class UnsupportedOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter type isn't supported.</p>
    class UnsupportedParameterType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedParameterType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The document doesn't support the platform type of the given managed node IDs. For example,
    #    you sent an document for a Windows managed node to a Linux node.</p>
    class UnsupportedPlatformType < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::UnsupportedPlatformType] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request isn't valid. Verify that you entered valid contents for the command and try
    #    again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SSM::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason code for the invalid request.</p>
      def reason_code
        @data[:reason_code]
      end
    end
  end
end
