# frozen_string_literal: true

# This is generated code!

module Aws::PartnerCentralBenefits
  # This module contains the types returned by client operations.
  module Types

    # <p>Thrown when the caller does not have sufficient permissions to perform the requested operation.</p>
    # @!attribute message
    #   <p>A message describing the access denial.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about access-based benefit fulfillment, such as service permissions or feature access.</p>
    # @!attribute description
    #   <p>A description of the access privileges or permissions granted by this benefit.</p>
    #   @return [String]
    class AccessDetails < Struct.new(
      nil,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the amendment request.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the benefit application to ensure optimistic concurrency control.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to be amended.</p>
    #   @return [String]
    # @!attribute amendment_reason
    #   <p>A descriptive reason explaining why the benefit application is being amended.</p>
    #   @return [String]
    # @!attribute amendments
    #   <p>A list of specific field amendments to apply to the benefit application.</p>
    #   @return [Array<Types::Amendment>]
    class AmendBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :revision,
      :identifier,
      :amendment_reason,
      :amendments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AmendBenefitApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a specific change to be made to a benefit application field.</p>
    # @!attribute field_path
    #   <p>The JSON path or field identifier specifying which field in the benefit application to modify.</p>
    #   @return [String]
    # @!attribute new_value
    #   <p>The new value to set for the specified field in the benefit application.</p>
    #   @return [String]
    class Amendment < Struct.new(
      nil,
      :field_path,
      :new_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute benefit_application_identifier
    #   <p>The unique identifier of the benefit application to associate the resource with.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS resource to associate with the benefit application.</p>
    #   @return [String]
    class AssociateBenefitApplicationResourceInput < Struct.new(
      nil,
      :catalog,
      :benefit_application_identifier,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the benefit application after the resource association.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit application after the resource association.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The updated revision number of the benefit application after the resource association.</p>
    #   @return [String]
    class AssociateBenefitApplicationResourceOutput < Struct.new(
      nil,
      :id,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS resource that is associated with a benefit application for tracking and management.</p>
    # @!attribute resource_type
    #   <p>The type of AWS resource (e.g., EC2 instance, S3 bucket, Lambda function).</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>The unique identifier of the AWS resource within its service.</p>
    #   @deprecated
    #     This field is no longer used
    #     Since: Oct 08 2025
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the AWS resource.</p>
    #   @return [String]
    class AssociatedResource < Struct.new(
      nil,
      :resource_type,
      :resource_identifier,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a benefit allocation containing key information for list operations.</p>
    # @!attribute id
    #   <p>The unique identifier of the benefit allocation.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit allocation belongs to.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit allocation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the benefit allocation.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information explaining the current status of the benefit allocation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit allocation.</p>
    #   @return [String]
    # @!attribute benefit_id
    #   <p>The identifier of the benefit that this allocation is based on.</p>
    #   @return [String]
    # @!attribute benefit_application_id
    #   <p>The identifier of the benefit application that resulted in this allocation.</p>
    #   @return [String]
    # @!attribute fulfillment_types
    #   <p>The fulfillment types used for this benefit allocation.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp when the benefit allocation was created.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the benefit allocation expires.</p>
    #   @return [Time]
    # @!attribute applicable_benefit_ids
    #   <p>The identifiers of the benefits applicable for this allocation.</p>
    #   @return [Array<String>]
    class BenefitAllocationSummary < Struct.new(
      nil,
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
      :applicable_benefit_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a benefit application containing key information for list operations.</p>
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit application belongs to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit application.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the benefit application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit application.</p>
    #   @return [String]
    # @!attribute benefit_id
    #   <p>The identifier of the benefit being requested in this application.</p>
    #   @return [String]
    # @!attribute programs
    #   <p>The AWS partner programs associated with this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_types
    #   <p>The fulfillment types requested for this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current processing status of the benefit application.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The current stage in the benefit application processing workflow..</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the benefit application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the benefit application was last updated.</p>
    #   @return [Time]
    # @!attribute benefit_application_details
    #   <p>Additional attributes and metadata associated with the benefit application.</p>
    #   @return [Hash<String, String>]
    # @!attribute associated_resources
    #   <p>AWS resources that are associated with this benefit application.</p>
    #   @return [Array<String>]
    class BenefitApplicationSummary < Struct.new(
      nil,
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
      :associated_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary view of a benefit containing key information for list operations.</p>
    # @!attribute id
    #   <p>The unique identifier of the benefit.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit belongs to.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the benefit and its purpose.</p>
    #   @return [String]
    # @!attribute programs
    #   <p>The AWS partner programs that this benefit is associated with.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_types
    #   <p>The available fulfillment types for this benefit.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the benefit.</p>
    #   @return [String]
    class BenefitSummary < Struct.new(
      nil,
      :id,
      :catalog,
      :arn,
      :name,
      :description,
      :programs,
      :fulfillment_types,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the cancellation request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to cancel.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A descriptive reason explaining why the benefit application is being cancelled.</p>
    #   @return [String]
    class CancelBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :identifier,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelBenefitApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the request conflicts with the current state of the resource, such as attempting to modify a resource that has been changed by another process.</p>
    # @!attribute message
    #   <p>A message describing the conflict.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about consumable benefit fulfillment, such as usage quotas or service limits.</p>
    # @!attribute allocated_amount
    #   <p>The total amount of the consumable benefit that has been allocated.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute remaining_amount
    #   <p>The remaining amount of the consumable benefit that is still available for use.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute utilized_amount
    #   <p>The amount of the consumable benefit that has already been used.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute issuance_details
    #   <p>Detailed information about how the consumable benefit was issued and distributed.</p>
    #   @return [Types::IssuanceDetail]
    class ConsumableDetails < Struct.new(
      nil,
      :allocated_amount,
      :remaining_amount,
      :utilized_amount,
      :issuance_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents contact information for a partner representative.</p>
    # @!attribute email
    #   <p>The email address of the contact person.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name of the contact person.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the contact person.</p>
    #   @return [String]
    # @!attribute business_title
    #   <p>The business title or role of the contact person within the organization.</p>
    #   @return [String]
    # @!attribute phone
    #   <p>The phone number of the contact person.</p>
    #   @return [String]
    class Contact < Struct.new(
      nil,
      :email,
      :first_name,
      :last_name,
      :business_title,
      :phone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog to create the application in.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the creation request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A human-readable name for the benefit application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the benefit application and its intended use.</p>
    #   @return [String]
    # @!attribute benefit_identifier
    #   <p>The unique identifier of the benefit being requested in this application.</p>
    #   @return [String]
    # @!attribute fulfillment_types
    #   <p>The types of fulfillment requested for this benefit application (e.g., credits, access, disbursement).</p>
    #   @return [Array<String>]
    # @!attribute benefit_application_details
    #   <p>Detailed information and requirements specific to the benefit being requested.</p>
    #   @return [JSON]
    # @!attribute tags
    #   <p>Key-value pairs to categorize and organize the benefit application.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute associated_resources
    #   <p>AWS resources that are associated with this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute partner_contacts
    #   <p>Contact information for partner representatives responsible for this benefit application.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute file_details
    #   <p>Supporting documents and files attached to the benefit application.</p>
    #   @return [Array<Types::FileInput>]
    class CreateBenefitApplicationInput < Struct.new(
      nil,
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
      :file_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier assigned to the newly created benefit application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the newly created benefit application.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The initial revision number of the newly created benefit application.</p>
    #   @return [String]
    class CreateBenefitApplicationOutput < Struct.new(
      nil,
      :id,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an AWS credit code that can be applied to an AWS account for billing purposes.</p>
    # @!attribute aws_account_id
    #   <p>The AWS account ID that the credit code is associated with or can be applied to.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The monetary value of the credit code.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute aws_credit_code
    #   <p>The actual credit code string that can be redeemed in the AWS billing console.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the credit code (e.g., active, redeemed, expired).</p>
    #   @return [String]
    # @!attribute issued_at
    #   <p>The timestamp when the credit code was issued.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the credit code expires and can no longer be redeemed.</p>
    #   @return [Time]
    class CreditCode < Struct.new(
      nil,
      :aws_account_id,
      :value,
      :aws_credit_code,
      :status,
      :issued_at,
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about credit-based benefit fulfillment, including AWS promotional credits.</p>
    # @!attribute allocated_amount
    #   <p>The total amount of credits that have been allocated for this benefit.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute issued_amount
    #   <p>The amount of credits that have actually been issued and are available for use.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute codes
    #   <p>A list of credit codes that have been generated for this benefit allocation.</p>
    #   @return [Array<Types::CreditCode>]
    class CreditDetails < Struct.new(
      nil,
      :allocated_amount,
      :issued_amount,
      :codes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute benefit_application_identifier
    #   <p>The unique identifier of the benefit application to disassociate the resource from.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS resource to disassociate from the benefit application.</p>
    #   @return [String]
    class DisassociateBenefitApplicationResourceInput < Struct.new(
      nil,
      :catalog,
      :benefit_application_identifier,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the benefit application after the resource disassociation.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit application after the resource disassociation.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The updated revision number of the benefit application after the resource disassociation.</p>
    #   @return [String]
    class DisassociateBenefitApplicationResourceOutput < Struct.new(
      nil,
      :id,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about disbursement-based benefit fulfillment, such as direct payments or reimbursements.</p>
    # @!attribute disbursed_amount
    #   <p>The total amount that has been disbursed for this benefit allocation.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute issuance_details
    #   <p>Detailed information about how the disbursement was issued and processed.</p>
    #   @return [Types::IssuanceDetail]
    class DisbursementDetails < Struct.new(
      nil,
      :disbursed_amount,
      :issuance_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents detailed information about a file attached to a benefit application.</p>
    # @!attribute file_uri
    #   <p>The URI or location where the file is stored.</p>
    #   @return [String]
    # @!attribute business_use_case
    #   <p>The business purpose or use case that this file supports in the benefit application.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The original name of the uploaded file.</p>
    #   @return [String]
    # @!attribute file_status
    #   <p>The current processing status of the file (e.g., uploaded, processing, approved, rejected).</p>
    #   @return [String]
    # @!attribute file_status_reason
    #   <p>The reason for that particulat file status.</p>
    #   @return [String]
    # @!attribute file_type
    #   <p>The type or category of the file (e.g., document, image, spreadsheet).</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The identifier of the user who uploaded the file.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the file was uploaded.</p>
    #   @return [Time]
    class FileDetail < Struct.new(
      nil,
      :file_uri,
      :business_use_case,
      :file_name,
      :file_status,
      :file_status_reason,
      :file_type,
      :created_by,
      :created_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents input information for uploading a file to a benefit application.</p>
    # @!attribute file_uri
    #   <p>The URI or location where the file should be stored or has been uploaded.</p>
    #   @return [String]
    # @!attribute business_use_case
    #   <p>The business purpose or use case that this file supports in the benefit application.</p>
    #   @return [String]
    class FileInput < Struct.new(
      nil,
      :file_uri,
      :business_use_case,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains comprehensive information about how a benefit allocation is fulfilled across different fulfillment types.</p>
    # @!attribute disbursement_details
    #   <p>Details about disbursement-based fulfillment, if applicable to this benefit allocation.</p>
    #   @return [Types::DisbursementDetails]
    # @!attribute consumable_details
    #   <p>Details about consumable-based fulfillment, if applicable to this benefit allocation.</p>
    #   @return [Types::ConsumableDetails]
    # @!attribute credit_details
    #   <p>Details about credit-based fulfillment, if applicable to this benefit allocation.</p>
    #   @return [Types::CreditDetails]
    # @!attribute access_details
    #   <p>Details about access-based fulfillment, if applicable to this benefit allocation.</p>
    #   @return [Types::AccessDetails]
    class FulfillmentDetails < Struct.new(
      :disbursement_details,
      :consumable_details,
      :credit_details,
      :access_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DisbursementDetails < FulfillmentDetails; end
      class ConsumableDetails < FulfillmentDetails; end
      class CreditDetails < FulfillmentDetails; end
      class AccessDetails < FulfillmentDetails; end
      class Unknown < FulfillmentDetails; end
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit allocation to retrieve.</p>
    #   @return [String]
    class GetBenefitAllocationInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the benefit allocation.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit allocation belongs to.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit allocation.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit allocation.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the benefit allocation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the benefit allocation (e.g., active, expired, consumed).</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information explaining the current status of the benefit allocation.</p>
    #   @return [String]
    # @!attribute benefit_application_id
    #   <p>The identifier of the benefit application that resulted in this allocation.</p>
    #   @return [String]
    # @!attribute benefit_id
    #   <p>The identifier of the benefit that this allocation is based on.</p>
    #   @return [String]
    # @!attribute fulfillment_type
    #   <p>The fulfillment type used for this benefit allocation.</p>
    #   @return [String]
    # @!attribute applicable_benefit_ids
    #   <p>A list of benefit identifiers that this allocation can be applied to.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_detail
    #   <p>Detailed information about how the benefit allocation is fulfilled.</p>
    #   @return [Types::FulfillmentDetails]
    # @!attribute created_at
    #   <p>The timestamp when the benefit allocation was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the benefit allocation was last updated.</p>
    #   @return [Time]
    # @!attribute starts_at
    #   <p>The timestamp when the benefit allocation becomes active and usable.</p>
    #   @return [Time]
    # @!attribute expires_at
    #   <p>The timestamp when the benefit allocation expires and is no longer usable.</p>
    #   @return [Time]
    class GetBenefitAllocationOutput < Struct.new(
      nil,
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
      :expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to retrieve.</p>
    #   @return [String]
    class GetBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the benefit application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit application.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit application belongs to.</p>
    #   @return [String]
    # @!attribute benefit_id
    #   <p>The identifier of the benefit being requested in this application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the benefit application.</p>
    #   @return [String]
    # @!attribute fulfillment_types
    #   <p>The fulfillment types requested for this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute benefit_application_details
    #   <p>Detailed information and requirements specific to the benefit being requested.</p>
    #   @return [JSON]
    # @!attribute programs
    #   <p>The AWS partner programs associated with this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current processing status of the benefit application.</p>
    #   @return [String]
    # @!attribute stage
    #   <p>The current stage in the benefit application processing workflow.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Additional information explaining the current status of the benefit application.</p>
    #   @return [String]
    # @!attribute status_reason_code
    #   <p>A standardized code representing the reason for the current status.</p>
    #   @deprecated
    #     This field is no longer used
    #     Since: Nov 08 2025
    #   @return [String]
    # @!attribute status_reason_codes
    #   <p>The list of standardized codes representing the reason for the current status.</p>
    #   @return [Array<String>]
    # @!attribute created_at
    #   <p>The timestamp when the benefit application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the benefit application was last updated.</p>
    #   @return [Time]
    # @!attribute revision
    #   <p>The current revision number of the benefit application.</p>
    #   @return [String]
    # @!attribute associated_resources
    #   <p>AWS resources that are associated with this benefit application.</p>
    #   @return [Array<String>]
    # @!attribute partner_contacts
    #   <p>Contact information for partner representatives responsible for this benefit application.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute file_details
    #   <p>Supporting documents and files attached to the benefit application.</p>
    #   @return [Array<Types::FileDetail>]
    class GetBenefitApplicationOutput < Struct.new(
      nil,
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
      :file_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog to query.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit to retrieve.</p>
    #   @return [String]
    class GetBenefitInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the benefit.</p>
    #   @return [String]
    # @!attribute catalog
    #   <p>The catalog identifier that the benefit belongs to.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the benefit.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The human-readable name of the benefit.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the benefit and its purpose.</p>
    #   @return [String]
    # @!attribute programs
    #   <p>The AWS partner programs that this benefit is associated with.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_types
    #   <p>The available fulfillment types for this benefit (e.g., credits, access, disbursement).</p>
    #   @return [Array<String>]
    # @!attribute benefit_request_schema
    #   <p>The schema definition that describes the required fields for requesting this benefit.</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The current status of the benefit (e.g., active, inactive, deprecated).</p>
    #   @return [String]
    class GetBenefitOutput < Struct.new(
      nil,
      :id,
      :catalog,
      :arn,
      :name,
      :description,
      :programs,
      :fulfillment_types,
      :benefit_request_schema,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when an unexpected error occurs on the server side during request processing.</p>
    # @!attribute message
    #   <p>A message describing the internal server error.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents detailed information about a specific issuance of benefit value.</p>
    # @!attribute issuance_id
    #   <p>The unique identifier for this specific issuance.</p>
    #   @return [String]
    # @!attribute issuance_amount
    #   <p>The monetary amount or value that was issued in this specific issuance.</p>
    #   @return [Types::MonetaryValue]
    # @!attribute issued_at
    #   <p>The timestamp when this specific issuance was processed.</p>
    #   @return [Time]
    class IssuanceDetail < Struct.new(
      nil,
      :issuance_id,
      :issuance_amount,
      :issued_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier to filter benefit allocations by catalog.</p>
    #   @return [String]
    # @!attribute fulfillment_types
    #   <p>Filter benefit allocations by specific fulfillment types.</p>
    #   @return [Array<String>]
    # @!attribute benefit_identifiers
    #   <p>Filter benefit allocations by specific benefit identifiers.</p>
    #   @return [Array<String>]
    # @!attribute benefit_application_identifiers
    #   <p>Filter benefit allocations by specific benefit application identifiers.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Filter benefit allocations by their current status.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of benefit allocations to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    #   @return [String]
    class ListBenefitAllocationsInput < Struct.new(
      nil,
      :catalog,
      :fulfillment_types,
      :benefit_identifiers,
      :benefit_application_identifiers,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute benefit_allocation_summaries
    #   <p>A list of benefit allocation summaries matching the specified criteria.</p>
    #   @return [Array<Types::BenefitAllocationSummary>]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results, if more results are available.</p>
    #   @return [String]
    class ListBenefitAllocationsOutput < Struct.new(
      nil,
      :benefit_allocation_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier to filter benefit applications by catalog.</p>
    #   @return [String]
    # @!attribute programs
    #   <p>Filter benefit applications by specific AWS partner programs.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_types
    #   <p>Filter benefit applications by specific fulfillment types.</p>
    #   @return [Array<String>]
    # @!attribute benefit_identifiers
    #   <p>Filter benefit applications by specific benefit identifiers.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Filter benefit applications by their current processing status.</p>
    #   @return [Array<String>]
    # @!attribute stages
    #   <p>Filter benefit applications by their current processing stage.</p>
    #   @return [Array<String>]
    # @!attribute associated_resources
    #   <p>Filter benefit applications by associated AWS resources.</p>
    #   @deprecated
    #     This field is no longer used.
    #     Since: Oct 08 2025
    #   @return [Array<Types::AssociatedResource>]
    # @!attribute associated_resource_arns
    #   <p>Filter benefit applications by specific AWS resource ARNs.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of benefit applications to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    #   @return [String]
    class ListBenefitApplicationsInput < Struct.new(
      nil,
      :catalog,
      :programs,
      :fulfillment_types,
      :benefit_identifiers,
      :status,
      :stages,
      :associated_resources,
      :associated_resource_arns,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute benefit_application_summaries
    #   <p>A list of benefit application summaries matching the specified criteria.</p>
    #   @return [Array<Types::BenefitApplicationSummary>]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results, if more results are available.</p>
    #   @return [String]
    class ListBenefitApplicationsOutput < Struct.new(
      nil,
      :benefit_application_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier to filter benefits by catalog.</p>
    #   @return [String]
    # @!attribute programs
    #   <p>Filter benefits by specific AWS partner programs.</p>
    #   @return [Array<String>]
    # @!attribute fulfillment_types
    #   <p>Filter benefits by specific fulfillment types.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Filter benefits by their current status.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of benefits to return in a single response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results from a previous request.</p>
    #   @return [String]
    class ListBenefitsInput < Struct.new(
      nil,
      :catalog,
      :programs,
      :fulfillment_types,
      :status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute benefit_summaries
    #   <p>A list of benefit summaries matching the specified criteria.</p>
    #   @return [Array<Types::BenefitSummary>]
    # @!attribute next_token
    #   <p>A pagination token to retrieve the next set of results, if more results are available.</p>
    #   @return [String]
    class ListBenefitsOutput < Struct.new(
      nil,
      :benefit_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to list tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of key-value pairs representing the tags associated with the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a monetary amount with its associated currency.</p>
    # @!attribute amount
    #   <p>The numeric amount of the monetary value.</p>
    #   @return [String]
    # @!attribute currency_code
    #   <p>The ISO 4217 currency code (e.g., USD, EUR) for the monetary amount.</p>
    #   @return [String]
    class MonetaryValue < Struct.new(
      nil,
      :amount,
      :currency_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the recall request.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to recall.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>A descriptive reason explaining why the benefit application is being recalled.</p>
    #   @return [String]
    class RecallBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :identifier,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RecallBenefitApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the requested resource cannot be found or does not exist.</p>
    # @!attribute message
    #   <p>A message describing the resource not found error.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the request would exceed the service quotas or limits for the account.</p>
    # @!attribute message
    #   <p>A message describing the service quota exceeded error.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that would exceed the quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that would exceed the quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code identifying the specific quota that would be exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to submit.</p>
    #   @return [String]
    class SubmitBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class SubmitBenefitApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a key-value pair used for categorizing and organizing AWS resources.</p>
    # @!attribute key
    #   <p>The tag key, which acts as a category or label for the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value, which provides additional information or context for the tag key.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to add tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to add as tags to the resource.</p>
    #   @return [Array<Types::Tag>]
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

    # <p>Thrown when the request rate exceeds the allowed limits and the request is being throttled.</p>
    # @!attribute message
    #   <p>A message describing the throttling error.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the resource.</p>
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

    # @!attribute catalog
    #   <p>The catalog identifier that specifies which benefit catalog the application belongs to.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotent processing of the update request.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated human-readable name for the benefit application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The updated detailed description of the benefit application.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>The unique identifier of the benefit application to update.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The current revision number of the benefit application to ensure optimistic concurrency control.</p>
    #   @return [String]
    # @!attribute benefit_application_details
    #   <p>Updated detailed information and requirements specific to the benefit being requested.</p>
    #   @return [JSON]
    # @!attribute partner_contacts
    #   <p>Updated contact information for partner representatives responsible for this benefit application.</p>
    #   @return [Array<Types::Contact>]
    # @!attribute file_details
    #   <p>Updated supporting documents and files attached to the benefit application.</p>
    #   @return [Array<Types::FileInput>]
    class UpdateBenefitApplicationInput < Struct.new(
      nil,
      :catalog,
      :client_token,
      :name,
      :description,
      :identifier,
      :revision,
      :benefit_application_details,
      :partner_contacts,
      :file_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the updated benefit application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated benefit application.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The new revision number of the benefit application after the update.</p>
    #   @return [String]
    class UpdateBenefitApplicationOutput < Struct.new(
      nil,
      :id,
      :arn,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when the request contains invalid parameters or fails input validation requirements.</p>
    # @!attribute message
    #   <p>A message describing the validation error.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation failure.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>A list of fields that failed validation.</p>
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

    # <p>Represents a field-specific validation error with detailed information.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A detailed message explaining why the field validation failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>An error code explaining why the field validation failed.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
