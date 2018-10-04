# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountId = Shapes::StringShape.new(name: 'AWSAccountId')
    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssociateMemberAccountRequest = Shapes::StructureShape.new(name: 'AssociateMemberAccountRequest')
    AssociateS3ResourcesRequest = Shapes::StructureShape.new(name: 'AssociateS3ResourcesRequest')
    AssociateS3ResourcesResult = Shapes::StructureShape.new(name: 'AssociateS3ResourcesResult')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    ClassificationType = Shapes::StructureShape.new(name: 'ClassificationType')
    ClassificationTypeUpdate = Shapes::StructureShape.new(name: 'ClassificationTypeUpdate')
    DisassociateMemberAccountRequest = Shapes::StructureShape.new(name: 'DisassociateMemberAccountRequest')
    DisassociateS3ResourcesRequest = Shapes::StructureShape.new(name: 'DisassociateS3ResourcesRequest')
    DisassociateS3ResourcesResult = Shapes::StructureShape.new(name: 'DisassociateS3ResourcesResult')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FailedS3Resource = Shapes::StructureShape.new(name: 'FailedS3Resource')
    FailedS3Resources = Shapes::ListShape.new(name: 'FailedS3Resources')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListMemberAccountsRequest = Shapes::StructureShape.new(name: 'ListMemberAccountsRequest')
    ListMemberAccountsResult = Shapes::StructureShape.new(name: 'ListMemberAccountsResult')
    ListS3ResourcesRequest = Shapes::StructureShape.new(name: 'ListS3ResourcesRequest')
    ListS3ResourcesResult = Shapes::StructureShape.new(name: 'ListS3ResourcesResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MemberAccount = Shapes::StructureShape.new(name: 'MemberAccount')
    MemberAccounts = Shapes::ListShape.new(name: 'MemberAccounts')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3ContinuousClassificationType = Shapes::StringShape.new(name: 'S3ContinuousClassificationType')
    S3OneTimeClassificationType = Shapes::StringShape.new(name: 'S3OneTimeClassificationType')
    S3Resource = Shapes::StructureShape.new(name: 'S3Resource')
    S3ResourceClassification = Shapes::StructureShape.new(name: 'S3ResourceClassification')
    S3ResourceClassificationUpdate = Shapes::StructureShape.new(name: 'S3ResourceClassificationUpdate')
    S3Resources = Shapes::ListShape.new(name: 'S3Resources')
    S3ResourcesClassification = Shapes::ListShape.new(name: 'S3ResourcesClassification')
    S3ResourcesClassificationUpdate = Shapes::ListShape.new(name: 'S3ResourcesClassificationUpdate')
    UpdateS3ResourcesRequest = Shapes::StructureShape.new(name: 'UpdateS3ResourcesRequest')
    UpdateS3ResourcesResult = Shapes::StructureShape.new(name: 'UpdateS3ResourcesResult')

    AssociateMemberAccountRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "memberAccountId"))
    AssociateMemberAccountRequest.struct_class = Types::AssociateMemberAccountRequest

    AssociateS3ResourcesRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "memberAccountId"))
    AssociateS3ResourcesRequest.add_member(:s3_resources, Shapes::ShapeRef.new(shape: S3ResourcesClassification, required: true, location_name: "s3Resources"))
    AssociateS3ResourcesRequest.struct_class = Types::AssociateS3ResourcesRequest

    AssociateS3ResourcesResult.add_member(:failed_s3_resources, Shapes::ShapeRef.new(shape: FailedS3Resources, location_name: "failedS3Resources"))
    AssociateS3ResourcesResult.struct_class = Types::AssociateS3ResourcesResult

    ClassificationType.add_member(:one_time, Shapes::ShapeRef.new(shape: S3OneTimeClassificationType, required: true, location_name: "oneTime"))
    ClassificationType.add_member(:continuous, Shapes::ShapeRef.new(shape: S3ContinuousClassificationType, required: true, location_name: "continuous"))
    ClassificationType.struct_class = Types::ClassificationType

    ClassificationTypeUpdate.add_member(:one_time, Shapes::ShapeRef.new(shape: S3OneTimeClassificationType, location_name: "oneTime"))
    ClassificationTypeUpdate.add_member(:continuous, Shapes::ShapeRef.new(shape: S3ContinuousClassificationType, location_name: "continuous"))
    ClassificationTypeUpdate.struct_class = Types::ClassificationTypeUpdate

    DisassociateMemberAccountRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, required: true, location_name: "memberAccountId"))
    DisassociateMemberAccountRequest.struct_class = Types::DisassociateMemberAccountRequest

    DisassociateS3ResourcesRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "memberAccountId"))
    DisassociateS3ResourcesRequest.add_member(:associated_s3_resources, Shapes::ShapeRef.new(shape: S3Resources, required: true, location_name: "associatedS3Resources"))
    DisassociateS3ResourcesRequest.struct_class = Types::DisassociateS3ResourcesRequest

    DisassociateS3ResourcesResult.add_member(:failed_s3_resources, Shapes::ShapeRef.new(shape: FailedS3Resources, location_name: "failedS3Resources"))
    DisassociateS3ResourcesResult.struct_class = Types::DisassociateS3ResourcesResult

    FailedS3Resource.add_member(:failed_item, Shapes::ShapeRef.new(shape: S3Resource, location_name: "failedItem"))
    FailedS3Resource.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    FailedS3Resource.add_member(:error_message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "errorMessage"))
    FailedS3Resource.struct_class = Types::FailedS3Resource

    FailedS3Resources.member = Shapes::ShapeRef.new(shape: FailedS3Resource)

    ListMemberAccountsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMemberAccountsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListMemberAccountsRequest.struct_class = Types::ListMemberAccountsRequest

    ListMemberAccountsResult.add_member(:member_accounts, Shapes::ShapeRef.new(shape: MemberAccounts, location_name: "memberAccounts"))
    ListMemberAccountsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListMemberAccountsResult.struct_class = Types::ListMemberAccountsResult

    ListS3ResourcesRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "memberAccountId"))
    ListS3ResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListS3ResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListS3ResourcesRequest.struct_class = Types::ListS3ResourcesRequest

    ListS3ResourcesResult.add_member(:s3_resources, Shapes::ShapeRef.new(shape: S3ResourcesClassification, location_name: "s3Resources"))
    ListS3ResourcesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListS3ResourcesResult.struct_class = Types::ListS3ResourcesResult

    MemberAccount.add_member(:account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "accountId"))
    MemberAccount.struct_class = Types::MemberAccount

    MemberAccounts.member = Shapes::ShapeRef.new(shape: MemberAccount)

    S3Resource.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3Resource.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3Resource.struct_class = Types::S3Resource

    S3ResourceClassification.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3ResourceClassification.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3ResourceClassification.add_member(:classification_type, Shapes::ShapeRef.new(shape: ClassificationType, required: true, location_name: "classificationType"))
    S3ResourceClassification.struct_class = Types::S3ResourceClassification

    S3ResourceClassificationUpdate.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "bucketName"))
    S3ResourceClassificationUpdate.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "prefix"))
    S3ResourceClassificationUpdate.add_member(:classification_type_update, Shapes::ShapeRef.new(shape: ClassificationTypeUpdate, required: true, location_name: "classificationTypeUpdate"))
    S3ResourceClassificationUpdate.struct_class = Types::S3ResourceClassificationUpdate

    S3Resources.member = Shapes::ShapeRef.new(shape: S3Resource)

    S3ResourcesClassification.member = Shapes::ShapeRef.new(shape: S3ResourceClassification)

    S3ResourcesClassificationUpdate.member = Shapes::ShapeRef.new(shape: S3ResourceClassificationUpdate)

    UpdateS3ResourcesRequest.add_member(:member_account_id, Shapes::ShapeRef.new(shape: AWSAccountId, location_name: "memberAccountId"))
    UpdateS3ResourcesRequest.add_member(:s3_resources_update, Shapes::ShapeRef.new(shape: S3ResourcesClassificationUpdate, required: true, location_name: "s3ResourcesUpdate"))
    UpdateS3ResourcesRequest.struct_class = Types::UpdateS3ResourcesRequest

    UpdateS3ResourcesResult.add_member(:failed_s3_resources, Shapes::ShapeRef.new(shape: FailedS3Resources, location_name: "failedS3Resources"))
    UpdateS3ResourcesResult.struct_class = Types::UpdateS3ResourcesResult


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-12-19"

      api.metadata = {
        "apiVersion" => "2017-12-19",
        "endpointPrefix" => "macie",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Macie",
        "serviceId" => "Macie",
        "signatureVersion" => "v4",
        "targetPrefix" => "MacieService",
        "uid" => "macie-2017-12-19",
      }

      api.add_operation(:associate_member_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateMemberAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateMemberAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:associate_s3_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateS3Resources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateS3ResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateS3ResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:disassociate_member_account, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateMemberAccount"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateMemberAccountRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:disassociate_s3_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateS3Resources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateS3ResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateS3ResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:list_member_accounts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMemberAccounts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMemberAccountsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMemberAccountsResult)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_s3_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListS3Resources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListS3ResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListS3ResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_s3_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateS3Resources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateS3ResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateS3ResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)
    end

  end
end
