# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeGuruReviewer
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssociateRepositoryRequest = Shapes::StructureShape.new(name: 'AssociateRepositoryRequest')
    AssociateRepositoryResponse = Shapes::StructureShape.new(name: 'AssociateRepositoryResponse')
    AssociationId = Shapes::StringShape.new(name: 'AssociationId')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    CodeCommitRepository = Shapes::StructureShape.new(name: 'CodeCommitRepository')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DescribeRepositoryAssociationRequest = Shapes::StructureShape.new(name: 'DescribeRepositoryAssociationRequest')
    DescribeRepositoryAssociationResponse = Shapes::StructureShape.new(name: 'DescribeRepositoryAssociationResponse')
    DisassociateRepositoryRequest = Shapes::StructureShape.new(name: 'DisassociateRepositoryRequest')
    DisassociateRepositoryResponse = Shapes::StructureShape.new(name: 'DisassociateRepositoryResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListRepositoryAssociationsRequest = Shapes::StructureShape.new(name: 'ListRepositoryAssociationsRequest')
    ListRepositoryAssociationsResponse = Shapes::StructureShape.new(name: 'ListRepositoryAssociationsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Name = Shapes::StringShape.new(name: 'Name')
    Names = Shapes::ListShape.new(name: 'Names')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Owner = Shapes::StringShape.new(name: 'Owner')
    Owners = Shapes::ListShape.new(name: 'Owners')
    ProviderType = Shapes::StringShape.new(name: 'ProviderType')
    ProviderTypes = Shapes::ListShape.new(name: 'ProviderTypes')
    Repository = Shapes::StructureShape.new(name: 'Repository')
    RepositoryAssociation = Shapes::StructureShape.new(name: 'RepositoryAssociation')
    RepositoryAssociationState = Shapes::StringShape.new(name: 'RepositoryAssociationState')
    RepositoryAssociationStates = Shapes::ListShape.new(name: 'RepositoryAssociationStates')
    RepositoryAssociationSummaries = Shapes::ListShape.new(name: 'RepositoryAssociationSummaries')
    RepositoryAssociationSummary = Shapes::StructureShape.new(name: 'RepositoryAssociationSummary')
    StateReason = Shapes::StringShape.new(name: 'StateReason')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssociateRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: Repository, required: true, location_name: "Repository"))
    AssociateRepositoryRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "ClientRequestToken", metadata: {"idempotencyToken"=>true}))
    AssociateRepositoryRequest.struct_class = Types::AssociateRepositoryRequest

    AssociateRepositoryResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    AssociateRepositoryResponse.struct_class = Types::AssociateRepositoryResponse

    CodeCommitRepository.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CodeCommitRepository.struct_class = Types::CodeCommitRepository

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    DescribeRepositoryAssociationRequest.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "AssociationArn"))
    DescribeRepositoryAssociationRequest.struct_class = Types::DescribeRepositoryAssociationRequest

    DescribeRepositoryAssociationResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DescribeRepositoryAssociationResponse.struct_class = Types::DescribeRepositoryAssociationResponse

    DisassociateRepositoryRequest.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "AssociationArn"))
    DisassociateRepositoryRequest.struct_class = Types::DisassociateRepositoryRequest

    DisassociateRepositoryResponse.add_member(:repository_association, Shapes::ShapeRef.new(shape: RepositoryAssociation, location_name: "RepositoryAssociation"))
    DisassociateRepositoryResponse.struct_class = Types::DisassociateRepositoryResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListRepositoryAssociationsRequest.add_member(:provider_types, Shapes::ShapeRef.new(shape: ProviderTypes, location: "querystring", location_name: "ProviderType"))
    ListRepositoryAssociationsRequest.add_member(:states, Shapes::ShapeRef.new(shape: RepositoryAssociationStates, location: "querystring", location_name: "State"))
    ListRepositoryAssociationsRequest.add_member(:names, Shapes::ShapeRef.new(shape: Names, location: "querystring", location_name: "Name"))
    ListRepositoryAssociationsRequest.add_member(:owners, Shapes::ShapeRef.new(shape: Owners, location: "querystring", location_name: "Owner"))
    ListRepositoryAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults"))
    ListRepositoryAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListRepositoryAssociationsRequest.struct_class = Types::ListRepositoryAssociationsRequest

    ListRepositoryAssociationsResponse.add_member(:repository_association_summaries, Shapes::ShapeRef.new(shape: RepositoryAssociationSummaries, location_name: "RepositoryAssociationSummaries"))
    ListRepositoryAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListRepositoryAssociationsResponse.struct_class = Types::ListRepositoryAssociationsResponse

    Names.member = Shapes::ShapeRef.new(shape: Name)

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    Owners.member = Shapes::ShapeRef.new(shape: Owner)

    ProviderTypes.member = Shapes::ShapeRef.new(shape: ProviderType)

    Repository.add_member(:code_commit, Shapes::ShapeRef.new(shape: CodeCommitRepository, location_name: "CodeCommit"))
    Repository.struct_class = Types::Repository

    RepositoryAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    RepositoryAssociation.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AssociationArn"))
    RepositoryAssociation.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    RepositoryAssociation.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    RepositoryAssociation.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    RepositoryAssociation.add_member(:state, Shapes::ShapeRef.new(shape: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociation.add_member(:state_reason, Shapes::ShapeRef.new(shape: StateReason, location_name: "StateReason"))
    RepositoryAssociation.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociation.add_member(:created_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreatedTimeStamp"))
    RepositoryAssociation.struct_class = Types::RepositoryAssociation

    RepositoryAssociationStates.member = Shapes::ShapeRef.new(shape: RepositoryAssociationState)

    RepositoryAssociationSummaries.member = Shapes::ShapeRef.new(shape: RepositoryAssociationSummary)

    RepositoryAssociationSummary.add_member(:association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AssociationArn"))
    RepositoryAssociationSummary.add_member(:last_updated_time_stamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "LastUpdatedTimeStamp"))
    RepositoryAssociationSummary.add_member(:association_id, Shapes::ShapeRef.new(shape: AssociationId, location_name: "AssociationId"))
    RepositoryAssociationSummary.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    RepositoryAssociationSummary.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    RepositoryAssociationSummary.add_member(:provider_type, Shapes::ShapeRef.new(shape: ProviderType, location_name: "ProviderType"))
    RepositoryAssociationSummary.add_member(:state, Shapes::ShapeRef.new(shape: RepositoryAssociationState, location_name: "State"))
    RepositoryAssociationSummary.struct_class = Types::RepositoryAssociationSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-09-19"

      api.metadata = {
        "apiVersion" => "2019-09-19",
        "endpointPrefix" => "codeguru-reviewer",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "CodeGuruReviewer",
        "serviceFullName" => "Amazon CodeGuru Reviewer",
        "serviceId" => "CodeGuru Reviewer",
        "signatureVersion" => "v4",
        "signingName" => "codeguru-reviewer",
        "uid" => "codeguru-reviewer-2019-09-19",
      }

      api.add_operation(:associate_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: AssociateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_repository_association, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRepositoryAssociation"
        o.http_method = "GET"
        o.http_request_uri = "/associations/{AssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRepositoryAssociationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRepositoryAssociationResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:disassociate_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateRepository"
        o.http_method = "DELETE"
        o.http_request_uri = "/associations/{AssociationArn}"
        o.input = Shapes::ShapeRef.new(shape: DisassociateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateRepositoryResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_repository_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositoryAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/associations"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoryAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoryAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
