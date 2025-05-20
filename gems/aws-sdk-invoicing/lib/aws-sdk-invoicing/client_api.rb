# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Invoicing
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
    AccountIdString = Shapes::StringShape.new(name: 'AccountIdString')
    AsOfTimestamp = Shapes::TimestampShape.new(name: 'AsOfTimestamp')
    BasicString = Shapes::StringShape.new(name: 'BasicString')
    BatchGetInvoiceProfileRequest = Shapes::StructureShape.new(name: 'BatchGetInvoiceProfileRequest')
    BatchGetInvoiceProfileResponse = Shapes::StructureShape.new(name: 'BatchGetInvoiceProfileResponse')
    CreateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'CreateInvoiceUnitRequest')
    CreateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'CreateInvoiceUnitResponse')
    DeleteInvoiceUnitRequest = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitRequest')
    DeleteInvoiceUnitResponse = Shapes::StructureShape.new(name: 'DeleteInvoiceUnitResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    Filters = Shapes::StructureShape.new(name: 'Filters')
    GetInvoiceUnitRequest = Shapes::StructureShape.new(name: 'GetInvoiceUnitRequest')
    GetInvoiceUnitResponse = Shapes::StructureShape.new(name: 'GetInvoiceUnitResponse')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvoiceProfile = Shapes::StructureShape.new(name: 'InvoiceProfile')
    InvoiceUnit = Shapes::StructureShape.new(name: 'InvoiceUnit')
    InvoiceUnitArnString = Shapes::StringShape.new(name: 'InvoiceUnitArnString')
    InvoiceUnitName = Shapes::StringShape.new(name: 'InvoiceUnitName')
    InvoiceUnitNames = Shapes::ListShape.new(name: 'InvoiceUnitNames')
    InvoiceUnitRule = Shapes::StructureShape.new(name: 'InvoiceUnitRule')
    InvoiceUnits = Shapes::ListShape.new(name: 'InvoiceUnits')
    LastModifiedTimestamp = Shapes::TimestampShape.new(name: 'LastModifiedTimestamp')
    ListInvoiceUnitsRequest = Shapes::StructureShape.new(name: 'ListInvoiceUnitsRequest')
    ListInvoiceUnitsResponse = Shapes::StructureShape.new(name: 'ListInvoiceUnitsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsInteger = Shapes::IntegerShape.new(name: 'MaxResultsInteger')
    NextTokenString = Shapes::StringShape.new(name: 'NextTokenString')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    ReceiverAddress = Shapes::StructureShape.new(name: 'ReceiverAddress')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTag = Shapes::StructureShape.new(name: 'ResourceTag')
    ResourceTagKey = Shapes::StringShape.new(name: 'ResourceTagKey')
    ResourceTagKeyList = Shapes::ListShape.new(name: 'ResourceTagKeyList')
    ResourceTagList = Shapes::ListShape.new(name: 'ResourceTagList')
    ResourceTagValue = Shapes::StringShape.new(name: 'ResourceTagValue')
    SensitiveBasicString = Shapes::StringShape.new(name: 'SensitiveBasicString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagrisArn = Shapes::StringShape.new(name: 'TagrisArn')
    TaxInheritanceDisabledFlag = Shapes::BooleanShape.new(name: 'TaxInheritanceDisabledFlag')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateInvoiceUnitRequest = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitRequest')
    UpdateInvoiceUnitResponse = Shapes::StructureShape.new(name: 'UpdateInvoiceUnitResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    AccessDeniedException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountIdList.member = Shapes::ShapeRef.new(shape: AccountIdString)

    BatchGetInvoiceProfileRequest.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, required: true, location_name: "AccountIds"))
    BatchGetInvoiceProfileRequest.struct_class = Types::BatchGetInvoiceProfileRequest

    BatchGetInvoiceProfileResponse.add_member(:profiles, Shapes::ShapeRef.new(shape: ProfileList, location_name: "Profiles"))
    BatchGetInvoiceProfileResponse.struct_class = Types::BatchGetInvoiceProfileResponse

    CreateInvoiceUnitRequest.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, required: true, location_name: "Name"))
    CreateInvoiceUnitRequest.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, required: true, location_name: "InvoiceReceiver"))
    CreateInvoiceUnitRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    CreateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled"))
    CreateInvoiceUnitRequest.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, required: true, location_name: "Rule"))
    CreateInvoiceUnitRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    CreateInvoiceUnitRequest.struct_class = Types::CreateInvoiceUnitRequest

    CreateInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    CreateInvoiceUnitResponse.struct_class = Types::CreateInvoiceUnitResponse

    DeleteInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    DeleteInvoiceUnitRequest.struct_class = Types::DeleteInvoiceUnitRequest

    DeleteInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    DeleteInvoiceUnitResponse.struct_class = Types::DeleteInvoiceUnitResponse

    Filters.add_member(:names, Shapes::ShapeRef.new(shape: InvoiceUnitNames, location_name: "Names"))
    Filters.add_member(:invoice_receivers, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "InvoiceReceivers"))
    Filters.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "Accounts"))
    Filters.struct_class = Types::Filters

    GetInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    GetInvoiceUnitRequest.add_member(:as_of, Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: "AsOf"))
    GetInvoiceUnitRequest.struct_class = Types::GetInvoiceUnitRequest

    GetInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    GetInvoiceUnitResponse.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "InvoiceReceiver"))
    GetInvoiceUnitResponse.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: "Name"))
    GetInvoiceUnitResponse.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    GetInvoiceUnitResponse.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    GetInvoiceUnitResponse.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    GetInvoiceUnitResponse.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    GetInvoiceUnitResponse.struct_class = Types::GetInvoiceUnitResponse

    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "retryAfterSeconds"))
    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvoiceProfile.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "AccountId"))
    InvoiceProfile.add_member(:receiver_name, Shapes::ShapeRef.new(shape: BasicString, location_name: "ReceiverName"))
    InvoiceProfile.add_member(:receiver_address, Shapes::ShapeRef.new(shape: ReceiverAddress, location_name: "ReceiverAddress"))
    InvoiceProfile.add_member(:receiver_email, Shapes::ShapeRef.new(shape: SensitiveBasicString, location_name: "ReceiverEmail"))
    InvoiceProfile.add_member(:issuer, Shapes::ShapeRef.new(shape: BasicString, location_name: "Issuer"))
    InvoiceProfile.add_member(:tax_registration_number, Shapes::ShapeRef.new(shape: SensitiveBasicString, location_name: "TaxRegistrationNumber"))
    InvoiceProfile.struct_class = Types::InvoiceProfile

    InvoiceUnit.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    InvoiceUnit.add_member(:invoice_receiver, Shapes::ShapeRef.new(shape: AccountIdString, location_name: "InvoiceReceiver"))
    InvoiceUnit.add_member(:name, Shapes::ShapeRef.new(shape: InvoiceUnitName, location_name: "Name"))
    InvoiceUnit.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    InvoiceUnit.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    InvoiceUnit.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    InvoiceUnit.add_member(:last_modified, Shapes::ShapeRef.new(shape: LastModifiedTimestamp, location_name: "LastModified"))
    InvoiceUnit.struct_class = Types::InvoiceUnit

    InvoiceUnitNames.member = Shapes::ShapeRef.new(shape: InvoiceUnitName)

    InvoiceUnitRule.add_member(:linked_accounts, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "LinkedAccounts"))
    InvoiceUnitRule.struct_class = Types::InvoiceUnitRule

    InvoiceUnits.member = Shapes::ShapeRef.new(shape: InvoiceUnit)

    ListInvoiceUnitsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: Filters, location_name: "Filters"))
    ListInvoiceUnitsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsInteger, location_name: "MaxResults"))
    ListInvoiceUnitsRequest.add_member(:as_of, Shapes::ShapeRef.new(shape: AsOfTimestamp, location_name: "AsOf"))
    ListInvoiceUnitsRequest.struct_class = Types::ListInvoiceUnitsRequest

    ListInvoiceUnitsResponse.add_member(:invoice_units, Shapes::ShapeRef.new(shape: InvoiceUnits, location_name: "InvoiceUnits"))
    ListInvoiceUnitsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextTokenString, location_name: "NextToken"))
    ListInvoiceUnitsResponse.struct_class = Types::ListInvoiceUnitsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, location_name: "ResourceTags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ProfileList.member = Shapes::ShapeRef.new(shape: InvoiceProfile)

    ReceiverAddress.add_member(:address_line_1, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine1"))
    ReceiverAddress.add_member(:address_line_2, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine2"))
    ReceiverAddress.add_member(:address_line_3, Shapes::ShapeRef.new(shape: BasicString, location_name: "AddressLine3"))
    ReceiverAddress.add_member(:district_or_county, Shapes::ShapeRef.new(shape: BasicString, location_name: "DistrictOrCounty"))
    ReceiverAddress.add_member(:city, Shapes::ShapeRef.new(shape: BasicString, location_name: "City"))
    ReceiverAddress.add_member(:state_or_region, Shapes::ShapeRef.new(shape: BasicString, location_name: "StateOrRegion"))
    ReceiverAddress.add_member(:country_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "CountryCode"))
    ReceiverAddress.add_member(:company_name, Shapes::ShapeRef.new(shape: BasicString, location_name: "CompanyName"))
    ReceiverAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: BasicString, location_name: "PostalCode"))
    ReceiverAddress.struct_class = Types::ReceiverAddress

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTag.add_member(:key, Shapes::ShapeRef.new(shape: ResourceTagKey, required: true, location_name: "Key"))
    ResourceTag.add_member(:value, Shapes::ShapeRef.new(shape: ResourceTagValue, required: true, location_name: "Value"))
    ResourceTag.struct_class = Types::ResourceTag

    ResourceTagKeyList.member = Shapes::ShapeRef.new(shape: ResourceTagKey)

    ResourceTagList.member = Shapes::ShapeRef.new(shape: ResourceTag)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagList, required: true, location_name: "ResourceTags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagrisArn, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:resource_tag_keys, Shapes::ShapeRef.new(shape: ResourceTagKeyList, required: true, location_name: "ResourceTagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateInvoiceUnitRequest.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, required: true, location_name: "InvoiceUnitArn"))
    UpdateInvoiceUnitRequest.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "Description"))
    UpdateInvoiceUnitRequest.add_member(:tax_inheritance_disabled, Shapes::ShapeRef.new(shape: TaxInheritanceDisabledFlag, location_name: "TaxInheritanceDisabled", metadata: {"box" => true}))
    UpdateInvoiceUnitRequest.add_member(:rule, Shapes::ShapeRef.new(shape: InvoiceUnitRule, location_name: "Rule"))
    UpdateInvoiceUnitRequest.struct_class = Types::UpdateInvoiceUnitRequest

    UpdateInvoiceUnitResponse.add_member(:invoice_unit_arn, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "InvoiceUnitArn"))
    UpdateInvoiceUnitResponse.struct_class = Types::UpdateInvoiceUnitResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, location_name: "message"))
    ValidationException.add_member(:resource_name, Shapes::ShapeRef.new(shape: InvoiceUnitArnString, location_name: "resourceName"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: BasicString, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2024-12-01"

      api.metadata = {
        "apiVersion" => "2024-12-01",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "invoicing",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "protocols" => ["json"],
        "serviceFullName" => "AWS Invoicing",
        "serviceId" => "Invoicing",
        "signatureVersion" => "v4",
        "signingName" => "invoicing",
        "targetPrefix" => "Invoicing",
        "uid" => "invoicing-2024-12-01",
      }

      api.add_operation(:batch_get_invoice_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchGetInvoiceProfile"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchGetInvoiceProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_invoice_units, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInvoiceUnits"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListInvoiceUnitsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInvoiceUnitsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_invoice_unit, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInvoiceUnit"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateInvoiceUnitRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInvoiceUnitResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
