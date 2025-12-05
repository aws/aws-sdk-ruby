# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralBenefits
  module Types

    # Thrown when the caller does not have sufficient permissions to perform
    # the requested operation.
    #
    # @!attribute [rw] message
    #   A message describing the access denial.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about access-based benefit fulfillment, such as
    # service permissions or feature access.
    #
    # @!attribute [rw] description
    #   A description of the access privileges or permissions granted by
    #   this benefit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AccessDetails AWS API Documentation
    #
    class AccessDetails < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the amendment request.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the benefit application to ensure
    #   optimistic concurrency control.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to be amended.
    #   @return [String]
    #
    # @!attribute [rw] amendment_reason
    #   A descriptive reason explaining why the benefit application is being
    #   amended.
    #   @return [String]
    #
    # @!attribute [rw] amendments
    #   A list of specific field amendments to apply to the benefit
    #   application.
    #   @return [Array<Types::Amendment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AmendBenefitApplicationInput AWS API Documentation
    #
    class AmendBenefitApplicationInput < Struct.new(
      :catalog,
      :client_token,
      :revision,
      :identifier,
      :amendment_reason,
      :amendments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AmendBenefitApplicationOutput AWS API Documentation
    #
    class AmendBenefitApplicationOutput < Aws::EmptyStructure; end

    # Represents a specific change to be made to a benefit application
    # field.
    #
    # @!attribute [rw] field_path
    #   The JSON path or field identifier specifying which field in the
    #   benefit application to modify.
    #   @return [String]
    #
    # @!attribute [rw] new_value
    #   The new value to set for the specified field in the benefit
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/Amendment AWS API Documentation
    #
    class Amendment < Struct.new(
      :field_path,
      :new_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] benefit_application_identifier
    #   The unique identifier of the benefit application to associate the
    #   resource with.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the AWS resource to associate with
    #   the benefit application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AssociateBenefitApplicationResourceInput AWS API Documentation
    #
    class AssociateBenefitApplicationResourceInput < Struct.new(
      :catalog,
      :benefit_application_identifier,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the benefit application after the resource
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit application after the
    #   resource association.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The updated revision number of the benefit application after the
    #   resource association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AssociateBenefitApplicationResourceOutput AWS API Documentation
    #
    class AssociateBenefitApplicationResourceOutput < Struct.new(
      :id,
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an AWS resource that is associated with a benefit
    # application for tracking and management.
    #
    # @!attribute [rw] resource_type
    #   The type of AWS resource (e.g., EC2 instance, S3 bucket, Lambda
    #   function).
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   The unique identifier of the AWS resource within its service.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the AWS
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/AssociatedResource AWS API Documentation
    #
    class AssociatedResource < Struct.new(
      :resource_type,
      :resource_identifier,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a benefit allocation containing key information for
    # list operations.
    #
    # @!attribute [rw] id
    #   The unique identifier of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit allocation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information explaining the current status of the benefit
    #   allocation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] benefit_id
    #   The identifier of the benefit that this allocation is based on.
    #   @return [String]
    #
    # @!attribute [rw] benefit_application_id
    #   The identifier of the benefit application that resulted in this
    #   allocation.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_types
    #   The fulfillment types used for this benefit allocation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the benefit allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the benefit allocation expires.
    #   @return [Time]
    #
    # @!attribute [rw] applicable_benefit_ids
    #   The identifiers of the benefits applicable for this allocation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/BenefitAllocationSummary AWS API Documentation
    #
    class BenefitAllocationSummary < Struct.new(
      :id,
      :catalog,
      :arn,
      :status,
      :status_reason,
      :name,
      :benefit_id,
      :benefit_application_id,
      :fulfillment_types,
      :created_at,
      :expires_at,
      :applicable_benefit_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a benefit application containing key information for
    # list operations.
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] benefit_id
    #   The identifier of the benefit being requested in this application.
    #   @return [String]
    #
    # @!attribute [rw] programs
    #   The AWS partner programs associated with this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_types
    #   The fulfillment types requested for this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current processing status of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The current stage in the benefit application processing workflow..
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the benefit application was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the benefit application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] benefit_application_details
    #   Additional attributes and metadata associated with the benefit
    #   application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] associated_resources
    #   AWS resources that are associated with this benefit application.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/BenefitApplicationSummary AWS API Documentation
    #
    class BenefitApplicationSummary < Struct.new(
      :catalog,
      :name,
      :id,
      :arn,
      :benefit_id,
      :programs,
      :fulfillment_types,
      :status,
      :stage,
      :created_at,
      :updated_at,
      :benefit_application_details,
      :associated_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary view of a benefit containing key information for list
    # operations.
    #
    # @!attribute [rw] id
    #   The unique identifier of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A brief description of the benefit and its purpose.
    #   @return [String]
    #
    # @!attribute [rw] programs
    #   The AWS partner programs that this benefit is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_types
    #   The available fulfillment types for this benefit.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the benefit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/BenefitSummary AWS API Documentation
    #
    class BenefitSummary < Struct.new(
      :id,
      :catalog,
      :arn,
      :name,
      :description,
      :programs,
      :fulfillment_types,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the cancellation request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to cancel.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A descriptive reason explaining why the benefit application is being
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CancelBenefitApplicationInput AWS API Documentation
    #
    class CancelBenefitApplicationInput < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CancelBenefitApplicationOutput AWS API Documentation
    #
    class CancelBenefitApplicationOutput < Aws::EmptyStructure; end

    # Thrown when the request conflicts with the current state of the
    # resource, such as attempting to modify a resource that has been
    # changed by another process.
    #
    # @!attribute [rw] message
    #   A message describing the conflict.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about consumable benefit fulfillment, such as
    # usage quotas or service limits.
    #
    # @!attribute [rw] allocated_amount
    #   The total amount of the consumable benefit that has been allocated.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] remaining_amount
    #   The remaining amount of the consumable benefit that is still
    #   available for use.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] utilized_amount
    #   The amount of the consumable benefit that has already been used.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] issuance_details
    #   Detailed information about how the consumable benefit was issued and
    #   distributed.
    #   @return [Types::IssuanceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ConsumableDetails AWS API Documentation
    #
    class ConsumableDetails < Struct.new(
      :allocated_amount,
      :remaining_amount,
      :utilized_amount,
      :issuance_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents contact information for a partner representative.
    #
    # @!attribute [rw] email
    #   The email address of the contact person.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the contact person.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the contact person.
    #   @return [String]
    #
    # @!attribute [rw] business_title
    #   The business title or role of the contact person within the
    #   organization.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   The phone number of the contact person.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone)
      SENSITIVE = [:email, :first_name, :last_name, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog to
    #   create the application in.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the creation request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A human-readable name for the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the benefit application and its intended
    #   use.
    #   @return [String]
    #
    # @!attribute [rw] benefit_identifier
    #   The unique identifier of the benefit being requested in this
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_types
    #   The types of fulfillment requested for this benefit application
    #   (e.g., credits, access, disbursement).
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_application_details
    #   Detailed information and requirements specific to the benefit being
    #   requested.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] tags
    #   Key-value pairs to categorize and organize the benefit application.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] associated_resources
    #   AWS resources that are associated with this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partner_contacts
    #   Contact information for partner representatives responsible for this
    #   benefit application.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] file_details
    #   Supporting documents and files attached to the benefit application.
    #   @return [Array<Types::FileInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CreateBenefitApplicationInput AWS API Documentation
    #
    class CreateBenefitApplicationInput < Struct.new(
      :catalog,
      :client_token,
      :name,
      :description,
      :benefit_identifier,
      :fulfillment_types,
      :benefit_application_details,
      :tags,
      :associated_resources,
      :partner_contacts,
      :file_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier assigned to the newly created benefit
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the newly created benefit
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The initial revision number of the newly created benefit
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CreateBenefitApplicationOutput AWS API Documentation
    #
    class CreateBenefitApplicationOutput < Struct.new(
      :id,
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an AWS credit code that can be applied to an AWS account
    # for billing purposes.
    #
    # @!attribute [rw] aws_account_id
    #   The AWS account ID that the credit code is associated with or can be
    #   applied to.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The monetary value of the credit code.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] aws_credit_code
    #   The actual credit code string that can be redeemed in the AWS
    #   billing console.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the credit code (e.g., active, redeemed,
    #   expired).
    #   @return [String]
    #
    # @!attribute [rw] issued_at
    #   The timestamp when the credit code was issued.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the credit code expires and can no longer be
    #   redeemed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CreditCode AWS API Documentation
    #
    class CreditCode < Struct.new(
      :aws_account_id,
      :value,
      :aws_credit_code,
      :status,
      :issued_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about credit-based benefit fulfillment, including
    # AWS promotional credits.
    #
    # @!attribute [rw] allocated_amount
    #   The total amount of credits that have been allocated for this
    #   benefit.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] issued_amount
    #   The amount of credits that have actually been issued and are
    #   available for use.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] codes
    #   A list of credit codes that have been generated for this benefit
    #   allocation.
    #   @return [Array<Types::CreditCode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/CreditDetails AWS API Documentation
    #
    class CreditDetails < Struct.new(
      :allocated_amount,
      :issued_amount,
      :codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] benefit_application_identifier
    #   The unique identifier of the benefit application to disassociate the
    #   resource from.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the AWS resource to disassociate
    #   from the benefit application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/DisassociateBenefitApplicationResourceInput AWS API Documentation
    #
    class DisassociateBenefitApplicationResourceInput < Struct.new(
      :catalog,
      :benefit_application_identifier,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the benefit application after the resource
    #   disassociation.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit application after the
    #   resource disassociation.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The updated revision number of the benefit application after the
    #   resource disassociation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/DisassociateBenefitApplicationResourceOutput AWS API Documentation
    #
    class DisassociateBenefitApplicationResourceOutput < Struct.new(
      :id,
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about disbursement-based benefit fulfillment,
    # such as direct payments or reimbursements.
    #
    # @!attribute [rw] disbursed_amount
    #   The total amount that has been disbursed for this benefit
    #   allocation.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] issuance_details
    #   Detailed information about how the disbursement was issued and
    #   processed.
    #   @return [Types::IssuanceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/DisbursementDetails AWS API Documentation
    #
    class DisbursementDetails < Struct.new(
      :disbursed_amount,
      :issuance_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents detailed information about a file attached to a benefit
    # application.
    #
    # @!attribute [rw] file_uri
    #   The URI or location where the file is stored.
    #   @return [String]
    #
    # @!attribute [rw] business_use_case
    #   The business purpose or use case that this file supports in the
    #   benefit application.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The original name of the uploaded file.
    #   @return [String]
    #
    # @!attribute [rw] file_status
    #   The current processing status of the file (e.g., uploaded,
    #   processing, approved, rejected).
    #   @return [String]
    #
    # @!attribute [rw] file_status_reason
    #   The reason for that particulat file status.
    #   @return [String]
    #
    # @!attribute [rw] file_type
    #   The type or category of the file (e.g., document, image,
    #   spreadsheet).
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The identifier of the user who uploaded the file.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the file was uploaded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/FileDetail AWS API Documentation
    #
    class FileDetail < Struct.new(
      :file_uri,
      :business_use_case,
      :file_name,
      :file_status,
      :file_status_reason,
      :file_type,
      :created_by,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents input information for uploading a file to a benefit
    # application.
    #
    # @!attribute [rw] file_uri
    #   The URI or location where the file should be stored or has been
    #   uploaded.
    #   @return [String]
    #
    # @!attribute [rw] business_use_case
    #   The business purpose or use case that this file supports in the
    #   benefit application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/FileInput AWS API Documentation
    #
    class FileInput < Struct.new(
      :file_uri,
      :business_use_case)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains comprehensive information about how a benefit allocation is
    # fulfilled across different fulfillment types.
    #
    # @note FulfillmentDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FulfillmentDetails corresponding to the set member.
    #
    # @!attribute [rw] disbursement_details
    #   Details about disbursement-based fulfillment, if applicable to this
    #   benefit allocation.
    #   @return [Types::DisbursementDetails]
    #
    # @!attribute [rw] consumable_details
    #   Details about consumable-based fulfillment, if applicable to this
    #   benefit allocation.
    #   @return [Types::ConsumableDetails]
    #
    # @!attribute [rw] credit_details
    #   Details about credit-based fulfillment, if applicable to this
    #   benefit allocation.
    #   @return [Types::CreditDetails]
    #
    # @!attribute [rw] access_details
    #   Details about access-based fulfillment, if applicable to this
    #   benefit allocation.
    #   @return [Types::AccessDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/FulfillmentDetails AWS API Documentation
    #
    class FulfillmentDetails < Struct.new(
      :disbursement_details,
      :consumable_details,
      :credit_details,
      :access_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DisbursementDetails < FulfillmentDetails; end
      class ConsumableDetails < FulfillmentDetails; end
      class CreditDetails < FulfillmentDetails; end
      class AccessDetails < FulfillmentDetails; end
      class Unknown < FulfillmentDetails; end
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog to
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit allocation to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitAllocationInput AWS API Documentation
    #
    class GetBenefitAllocationInput < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit allocation belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the benefit allocation (e.g., active, expired,
    #   consumed).
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information explaining the current status of the benefit
    #   allocation.
    #   @return [String]
    #
    # @!attribute [rw] benefit_application_id
    #   The identifier of the benefit application that resulted in this
    #   allocation.
    #   @return [String]
    #
    # @!attribute [rw] benefit_id
    #   The identifier of the benefit that this allocation is based on.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_type
    #   The fulfillment type used for this benefit allocation.
    #   @return [String]
    #
    # @!attribute [rw] applicable_benefit_ids
    #   A list of benefit identifiers that this allocation can be applied
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_detail
    #   Detailed information about how the benefit allocation is fulfilled.
    #   @return [Types::FulfillmentDetails]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the benefit allocation was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the benefit allocation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] starts_at
    #   The timestamp when the benefit allocation becomes active and usable.
    #   @return [Time]
    #
    # @!attribute [rw] expires_at
    #   The timestamp when the benefit allocation expires and is no longer
    #   usable.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitAllocationOutput AWS API Documentation
    #
    class GetBenefitAllocationOutput < Struct.new(
      :id,
      :catalog,
      :arn,
      :name,
      :description,
      :status,
      :status_reason,
      :benefit_application_id,
      :benefit_id,
      :fulfillment_type,
      :applicable_benefit_ids,
      :fulfillment_detail,
      :created_at,
      :updated_at,
      :starts_at,
      :expires_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog to
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitApplicationInput AWS API Documentation
    #
    class GetBenefitApplicationInput < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] benefit_id
    #   The identifier of the benefit being requested in this application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_types
    #   The fulfillment types requested for this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_application_details
    #   Detailed information and requirements specific to the benefit being
    #   requested.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] programs
    #   The AWS partner programs associated with this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current processing status of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   The current stage in the benefit application processing workflow.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Additional information explaining the current status of the benefit
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] status_reason_code
    #   A standardized code representing the reason for the current status.
    #   @return [String]
    #
    # @!attribute [rw] status_reason_codes
    #   The list of standardized codes representing the reason for the
    #   current status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the benefit application was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the benefit application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] revision
    #   The current revision number of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] associated_resources
    #   AWS resources that are associated with this benefit application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partner_contacts
    #   Contact information for partner representatives responsible for this
    #   benefit application.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] file_details
    #   Supporting documents and files attached to the benefit application.
    #   @return [Array<Types::FileDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitApplicationOutput AWS API Documentation
    #
    class GetBenefitApplicationOutput < Struct.new(
      :id,
      :arn,
      :catalog,
      :benefit_id,
      :name,
      :description,
      :fulfillment_types,
      :benefit_application_details,
      :programs,
      :status,
      :stage,
      :status_reason,
      :status_reason_code,
      :status_reason_codes,
      :created_at,
      :updated_at,
      :revision,
      :associated_resources,
      :partner_contacts,
      :file_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog to
    #   query.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitInput AWS API Documentation
    #
    class GetBenefitInput < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   The catalog identifier that the benefit belongs to.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The human-readable name of the benefit.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the benefit and its purpose.
    #   @return [String]
    #
    # @!attribute [rw] programs
    #   The AWS partner programs that this benefit is associated with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_types
    #   The available fulfillment types for this benefit (e.g., credits,
    #   access, disbursement).
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_request_schema
    #   The schema definition that describes the required fields for
    #   requesting this benefit.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the benefit (e.g., active, inactive,
    #   deprecated).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/GetBenefitOutput AWS API Documentation
    #
    class GetBenefitOutput < Struct.new(
      :id,
      :catalog,
      :arn,
      :name,
      :description,
      :programs,
      :fulfillment_types,
      :benefit_request_schema,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when an unexpected error occurs on the server side during
    # request processing.
    #
    # @!attribute [rw] message
    #   A message describing the internal server error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents detailed information about a specific issuance of benefit
    # value.
    #
    # @!attribute [rw] issuance_id
    #   The unique identifier for this specific issuance.
    #   @return [String]
    #
    # @!attribute [rw] issuance_amount
    #   The monetary amount or value that was issued in this specific
    #   issuance.
    #   @return [Types::MonetaryValue]
    #
    # @!attribute [rw] issued_at
    #   The timestamp when this specific issuance was processed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/IssuanceDetail AWS API Documentation
    #
    class IssuanceDetail < Struct.new(
      :issuance_id,
      :issuance_amount,
      :issued_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to filter benefit allocations by catalog.
    #   @return [String]
    #
    # @!attribute [rw] fulfillment_types
    #   Filter benefit allocations by specific fulfillment types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_identifiers
    #   Filter benefit allocations by specific benefit identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_application_identifiers
    #   Filter benefit allocations by specific benefit application
    #   identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Filter benefit allocations by their current status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of benefit allocations to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results from a
    #   previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitAllocationsInput AWS API Documentation
    #
    class ListBenefitAllocationsInput < Struct.new(
      :catalog,
      :fulfillment_types,
      :benefit_identifiers,
      :benefit_application_identifiers,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] benefit_allocation_summaries
    #   A list of benefit allocation summaries matching the specified
    #   criteria.
    #   @return [Array<Types::BenefitAllocationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if more
    #   results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitAllocationsOutput AWS API Documentation
    #
    class ListBenefitAllocationsOutput < Struct.new(
      :benefit_allocation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to filter benefit applications by catalog.
    #   @return [String]
    #
    # @!attribute [rw] programs
    #   Filter benefit applications by specific AWS partner programs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_types
    #   Filter benefit applications by specific fulfillment types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] benefit_identifiers
    #   Filter benefit applications by specific benefit identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Filter benefit applications by their current processing status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] stages
    #   Filter benefit applications by their current processing stage.
    #   @return [Array<String>]
    #
    # @!attribute [rw] associated_resources
    #   Filter benefit applications by associated AWS resources.
    #   @return [Array<Types::AssociatedResource>]
    #
    # @!attribute [rw] associated_resource_arns
    #   Filter benefit applications by specific AWS resource ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of benefit applications to return in a single
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results from a
    #   previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitApplicationsInput AWS API Documentation
    #
    class ListBenefitApplicationsInput < Struct.new(
      :catalog,
      :programs,
      :fulfillment_types,
      :benefit_identifiers,
      :status,
      :stages,
      :associated_resources,
      :associated_resource_arns,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] benefit_application_summaries
    #   A list of benefit application summaries matching the specified
    #   criteria.
    #   @return [Array<Types::BenefitApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if more
    #   results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitApplicationsOutput AWS API Documentation
    #
    class ListBenefitApplicationsOutput < Struct.new(
      :benefit_application_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier to filter benefits by catalog.
    #   @return [String]
    #
    # @!attribute [rw] programs
    #   Filter benefits by specific AWS partner programs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] fulfillment_types
    #   Filter benefits by specific fulfillment types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Filter benefits by their current status.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of benefits to return in a single response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results from a
    #   previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitsInput AWS API Documentation
    #
    class ListBenefitsInput < Struct.new(
      :catalog,
      :programs,
      :fulfillment_types,
      :status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] benefit_summaries
    #   A list of benefit summaries matching the specified criteria.
    #   @return [Array<Types::BenefitSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to retrieve the next set of results, if more
    #   results are available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListBenefitsOutput AWS API Documentation
    #
    class ListBenefitsOutput < Struct.new(
      :benefit_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to list tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of key-value pairs representing the tags associated with the
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a monetary amount with its associated currency.
    #
    # @!attribute [rw] amount
    #   The numeric amount of the monetary value.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   The ISO 4217 currency code (e.g., USD, EUR) for the monetary amount.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/MonetaryValue AWS API Documentation
    #
    class MonetaryValue < Struct.new(
      :amount,
      :currency_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the recall request.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to recall.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   A descriptive reason explaining why the benefit application is being
    #   recalled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/RecallBenefitApplicationInput AWS API Documentation
    #
    class RecallBenefitApplicationInput < Struct.new(
      :catalog,
      :client_token,
      :identifier,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/RecallBenefitApplicationOutput AWS API Documentation
    #
    class RecallBenefitApplicationOutput < Aws::EmptyStructure; end

    # Thrown when the requested resource cannot be found or does not exist.
    #
    # @!attribute [rw] message
    #   A message describing the resource not found error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when the request would exceed the service quotas or limits for
    # the account.
    #
    # @!attribute [rw] message
    #   A message describing the service quota exceeded error.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that would exceed the quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that would exceed the quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code identifying the specific quota that would be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to submit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/SubmitBenefitApplicationInput AWS API Documentation
    #
    class SubmitBenefitApplicationInput < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/SubmitBenefitApplicationOutput AWS API Documentation
    #
    class SubmitBenefitApplicationOutput < Aws::EmptyStructure; end

    # Represents a key-value pair used for categorizing and organizing AWS
    # resources.
    #
    # @!attribute [rw] key
    #   The tag key, which acts as a category or label for the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value, which provides additional information or context for
    #   the tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to add tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to add as tags to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Thrown when the request rate exceeds the allowed limits and the
    # request is being throttled.
    #
    # @!attribute [rw] message
    #   A message describing the throttling error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] catalog
    #   The catalog identifier that specifies which benefit catalog the
    #   application belongs to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure idempotent processing
    #   of the update request.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The updated human-readable name for the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated detailed description of the benefit application.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the benefit application to update.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision number of the benefit application to ensure
    #   optimistic concurrency control.
    #   @return [String]
    #
    # @!attribute [rw] benefit_application_details
    #   Updated detailed information and requirements specific to the
    #   benefit being requested.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] partner_contacts
    #   Updated contact information for partner representatives responsible
    #   for this benefit application.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] file_details
    #   Updated supporting documents and files attached to the benefit
    #   application.
    #   @return [Array<Types::FileInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UpdateBenefitApplicationInput AWS API Documentation
    #
    class UpdateBenefitApplicationInput < Struct.new(
      :catalog,
      :client_token,
      :name,
      :description,
      :identifier,
      :revision,
      :benefit_application_details,
      :partner_contacts,
      :file_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the updated benefit application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the updated benefit application.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The new revision number of the benefit application after the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/UpdateBenefitApplicationOutput AWS API Documentation
    #
    class UpdateBenefitApplicationOutput < Struct.new(
      :id,
      :arn,
      :revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # Thrown when the request contains invalid parameters or fails input
    # validation requirements.
    #
    # @!attribute [rw] message
    #   A message describing the validation error.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   A list of fields that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a field-specific validation error with detailed
    # information.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A detailed message explaining why the field validation failed.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   An error code explaining why the field validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-benefits-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

