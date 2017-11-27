# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaStore
  # @api private
  module ClientApi

    include Seahorse::Model

    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerARN = Shapes::StringShape.new(name: 'ContainerARN')
    ContainerInUseException = Shapes::StructureShape.new(name: 'ContainerInUseException')
    ContainerList = Shapes::ListShape.new(name: 'ContainerList')
    ContainerListLimit = Shapes::IntegerShape.new(name: 'ContainerListLimit')
    ContainerName = Shapes::StringShape.new(name: 'ContainerName')
    ContainerNotFoundException = Shapes::StructureShape.new(name: 'ContainerNotFoundException')
    ContainerPolicy = Shapes::StringShape.new(name: 'ContainerPolicy')
    ContainerStatus = Shapes::StringShape.new(name: 'ContainerStatus')
    CreateContainerInput = Shapes::StructureShape.new(name: 'CreateContainerInput')
    CreateContainerOutput = Shapes::StructureShape.new(name: 'CreateContainerOutput')
    DeleteContainerInput = Shapes::StructureShape.new(name: 'DeleteContainerInput')
    DeleteContainerOutput = Shapes::StructureShape.new(name: 'DeleteContainerOutput')
    DeleteContainerPolicyInput = Shapes::StructureShape.new(name: 'DeleteContainerPolicyInput')
    DeleteContainerPolicyOutput = Shapes::StructureShape.new(name: 'DeleteContainerPolicyOutput')
    DescribeContainerInput = Shapes::StructureShape.new(name: 'DescribeContainerInput')
    DescribeContainerOutput = Shapes::StructureShape.new(name: 'DescribeContainerOutput')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    GetContainerPolicyInput = Shapes::StructureShape.new(name: 'GetContainerPolicyInput')
    GetContainerPolicyOutput = Shapes::StructureShape.new(name: 'GetContainerPolicyOutput')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListContainersInput = Shapes::StructureShape.new(name: 'ListContainersInput')
    ListContainersOutput = Shapes::StructureShape.new(name: 'ListContainersOutput')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PolicyNotFoundException = Shapes::StructureShape.new(name: 'PolicyNotFoundException')
    PutContainerPolicyInput = Shapes::StructureShape.new(name: 'PutContainerPolicyInput')
    PutContainerPolicyOutput = Shapes::StructureShape.new(name: 'PutContainerPolicyOutput')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')

    Container.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Container.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreationTime"))
    Container.add_member(:arn, Shapes::ShapeRef.new(shape: ContainerARN, location_name: "ARN"))
    Container.add_member(:name, Shapes::ShapeRef.new(shape: ContainerName, location_name: "Name"))
    Container.add_member(:status, Shapes::ShapeRef.new(shape: ContainerStatus, location_name: "Status"))
    Container.struct_class = Types::Container

    ContainerList.member = Shapes::ShapeRef.new(shape: Container)

    CreateContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    CreateContainerInput.struct_class = Types::CreateContainerInput

    CreateContainerOutput.add_member(:container, Shapes::ShapeRef.new(shape: Container, required: true, location_name: "Container"))
    CreateContainerOutput.struct_class = Types::CreateContainerOutput

    DeleteContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteContainerInput.struct_class = Types::DeleteContainerInput

    DeleteContainerOutput.struct_class = Types::DeleteContainerOutput

    DeleteContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteContainerPolicyInput.struct_class = Types::DeleteContainerPolicyInput

    DeleteContainerPolicyOutput.struct_class = Types::DeleteContainerPolicyOutput

    DescribeContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, location_name: "ContainerName"))
    DescribeContainerInput.struct_class = Types::DescribeContainerInput

    DescribeContainerOutput.add_member(:container, Shapes::ShapeRef.new(shape: Container, location_name: "Container"))
    DescribeContainerOutput.struct_class = Types::DescribeContainerOutput

    GetContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    GetContainerPolicyInput.struct_class = Types::GetContainerPolicyInput

    GetContainerPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: ContainerPolicy, required: true, location_name: "Policy"))
    GetContainerPolicyOutput.struct_class = Types::GetContainerPolicyOutput

    ListContainersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContainersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ContainerListLimit, location_name: "MaxResults"))
    ListContainersInput.struct_class = Types::ListContainersInput

    ListContainersOutput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerList, required: true, location_name: "Containers"))
    ListContainersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContainersOutput.struct_class = Types::ListContainersOutput

    PutContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    PutContainerPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: ContainerPolicy, required: true, location_name: "Policy"))
    PutContainerPolicyInput.struct_class = Types::PutContainerPolicyInput

    PutContainerPolicyOutput.struct_class = Types::PutContainerPolicyOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-01"

      api.metadata = {
        "endpointPrefix" => "mediastore",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Elemental MediaStore",
        "signatureVersion" => "v4",
        "signingName" => "mediastore",
        "targetPrefix" => "MediaStore_20170901",
      }

      api.add_operation(:create_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContainerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContainerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContainerInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_containers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContainers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContainersInput)
        o.output = Shapes::ShapeRef.new(shape: ListContainersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
