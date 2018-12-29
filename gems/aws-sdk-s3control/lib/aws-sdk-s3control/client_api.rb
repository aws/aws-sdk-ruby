# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    DeletePublicAccessBlockRequest = Shapes::StructureShape.new(name: 'DeletePublicAccessBlockRequest')
    GetPublicAccessBlockOutput = Shapes::StructureShape.new(name: 'GetPublicAccessBlockOutput')
    GetPublicAccessBlockRequest = Shapes::StructureShape.new(name: 'GetPublicAccessBlockRequest')
    NoSuchPublicAccessBlockConfiguration = Shapes::StructureShape.new(name: 'NoSuchPublicAccessBlockConfiguration')
    NoSuchPublicAccessBlockConfigurationMessage = Shapes::StringShape.new(name: 'NoSuchPublicAccessBlockConfigurationMessage')
    PublicAccessBlockConfiguration = Shapes::StructureShape.new(name: 'PublicAccessBlockConfiguration')
    PutPublicAccessBlockRequest = Shapes::StructureShape.new(name: 'PutPublicAccessBlockRequest')
    Setting = Shapes::BooleanShape.new(name: 'Setting')

    DeletePublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "header", location_name: "x-amz-account-id"))
    DeletePublicAccessBlockRequest.struct_class = Types::DeletePublicAccessBlockRequest

    GetPublicAccessBlockOutput.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, location_name: "PublicAccessBlockConfiguration"))
    GetPublicAccessBlockOutput.struct_class = Types::GetPublicAccessBlockOutput
    GetPublicAccessBlockOutput[:payload] = :public_access_block_configuration
    GetPublicAccessBlockOutput[:payload_member] = GetPublicAccessBlockOutput.member(:public_access_block_configuration)

    GetPublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "header", location_name: "x-amz-account-id"))
    GetPublicAccessBlockRequest.struct_class = Types::GetPublicAccessBlockRequest

    PublicAccessBlockConfiguration.add_member(:block_public_acls, Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicAcls"))
    PublicAccessBlockConfiguration.add_member(:ignore_public_acls, Shapes::ShapeRef.new(shape: Setting, location_name: "IgnorePublicAcls"))
    PublicAccessBlockConfiguration.add_member(:block_public_policy, Shapes::ShapeRef.new(shape: Setting, location_name: "BlockPublicPolicy"))
    PublicAccessBlockConfiguration.add_member(:restrict_public_buckets, Shapes::ShapeRef.new(shape: Setting, location_name: "RestrictPublicBuckets"))
    PublicAccessBlockConfiguration.struct_class = Types::PublicAccessBlockConfiguration

    PutPublicAccessBlockRequest.add_member(:public_access_block_configuration, Shapes::ShapeRef.new(shape: PublicAccessBlockConfiguration, required: true, location_name: "PublicAccessBlockConfiguration", metadata: {"xmlNamespace"=>{"uri"=>"http://awss3control.amazonaws.com/doc/2018-08-20/"}}))
    PutPublicAccessBlockRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, required: true, location: "header", location_name: "x-amz-account-id"))
    PutPublicAccessBlockRequest.struct_class = Types::PutPublicAccessBlockRequest
    PutPublicAccessBlockRequest[:payload] = :public_access_block_configuration
    PutPublicAccessBlockRequest[:payload_member] = PutPublicAccessBlockRequest.member(:public_access_block_configuration)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-08-20"

      api.metadata = {
        "apiVersion" => "2018-08-20",
        "endpointPrefix" => "s3-control",
        "protocol" => "rest-xml",
        "serviceFullName" => "AWS S3 Control",
        "serviceId" => "S3 Control",
        "signatureVersion" => "s3v4",
        "signingName" => "s3",
        "uid" => "s3control-2018-08-20",
      }

      api.add_operation(:delete_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePublicAccessBlock"
        o.http_method = "DELETE"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.input = Shapes::ShapeRef.new(shape: DeletePublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:get_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPublicAccessBlock"
        o.http_method = "GET"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.input = Shapes::ShapeRef.new(shape: GetPublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPublicAccessBlockOutput)
        o.errors << Shapes::ShapeRef.new(shape: NoSuchPublicAccessBlockConfiguration)
      end)

      api.add_operation(:put_public_access_block, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPublicAccessBlock"
        o.http_method = "PUT"
        o.http_request_uri = "/v20180820/configuration/publicAccessBlock"
        o.input = Shapes::ShapeRef.new(shape: PutPublicAccessBlockRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)
    end

  end
end
