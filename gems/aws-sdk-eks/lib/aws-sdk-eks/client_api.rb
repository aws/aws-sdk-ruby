# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EKS
  # @api private
  module ClientApi

    include Seahorse::Model

    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    Certificate = Shapes::StructureShape.new(name: 'Certificate')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    Cluster = Shapes::StructureShape.new(name: 'Cluster')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    ClusterStatus = Shapes::StringShape.new(name: 'ClusterStatus')
    CreateClusterRequest = Shapes::StructureShape.new(name: 'CreateClusterRequest')
    CreateClusterResponse = Shapes::StructureShape.new(name: 'CreateClusterResponse')
    DeleteClusterRequest = Shapes::StructureShape.new(name: 'DeleteClusterRequest')
    DeleteClusterResponse = Shapes::StructureShape.new(name: 'DeleteClusterResponse')
    DescribeClusterRequest = Shapes::StructureShape.new(name: 'DescribeClusterRequest')
    DescribeClusterResponse = Shapes::StructureShape.new(name: 'DescribeClusterResponse')
    DescribeUpdateRequest = Shapes::StructureShape.new(name: 'DescribeUpdateRequest')
    DescribeUpdateResponse = Shapes::StructureShape.new(name: 'DescribeUpdateResponse')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorDetail = Shapes::StructureShape.new(name: 'ErrorDetail')
    ErrorDetails = Shapes::ListShape.new(name: 'ErrorDetails')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersRequestMaxResults = Shapes::IntegerShape.new(name: 'ListClustersRequestMaxResults')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ListUpdatesRequest = Shapes::StructureShape.new(name: 'ListUpdatesRequest')
    ListUpdatesRequestMaxResults = Shapes::IntegerShape.new(name: 'ListUpdatesRequestMaxResults')
    ListUpdatesResponse = Shapes::StructureShape.new(name: 'ListUpdatesResponse')
    LogSetup = Shapes::StructureShape.new(name: 'LogSetup')
    LogSetups = Shapes::ListShape.new(name: 'LogSetups')
    LogType = Shapes::StringShape.new(name: 'LogType')
    LogTypes = Shapes::ListShape.new(name: 'LogTypes')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedAvailabilityZoneException = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZoneException')
    Update = Shapes::StructureShape.new(name: 'Update')
    UpdateClusterConfigRequest = Shapes::StructureShape.new(name: 'UpdateClusterConfigRequest')
    UpdateClusterConfigResponse = Shapes::StructureShape.new(name: 'UpdateClusterConfigResponse')
    UpdateClusterVersionRequest = Shapes::StructureShape.new(name: 'UpdateClusterVersionRequest')
    UpdateClusterVersionResponse = Shapes::StructureShape.new(name: 'UpdateClusterVersionResponse')
    UpdateParam = Shapes::StructureShape.new(name: 'UpdateParam')
    UpdateParamType = Shapes::StringShape.new(name: 'UpdateParamType')
    UpdateParams = Shapes::ListShape.new(name: 'UpdateParams')
    UpdateStatus = Shapes::StringShape.new(name: 'UpdateStatus')
    UpdateType = Shapes::StringShape.new(name: 'UpdateType')
    VpcConfigRequest = Shapes::StructureShape.new(name: 'VpcConfigRequest')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')

    Certificate.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    Certificate.struct_class = Types::Certificate

    ClientException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Cluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Cluster.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Cluster.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Cluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    Cluster.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Cluster.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: "resourcesVpcConfig"))
    Cluster.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    Cluster.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateAuthority"))
    Cluster.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken"))
    Cluster.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Cluster.struct_class = Types::Cluster

    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    CreateClusterRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateClusterRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, required: true, location_name: "resourcesVpcConfig"))
    CreateClusterRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateClusterRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    CreateClusterRequest.struct_class = Types::CreateClusterRequest

    CreateClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    CreateClusterResponse.struct_class = Types::CreateClusterResponse

    DeleteClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DeleteClusterRequest.struct_class = Types::DeleteClusterRequest

    DeleteClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DeleteClusterResponse.struct_class = Types::DeleteClusterResponse

    DescribeClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeClusterRequest.struct_class = Types::DescribeClusterRequest

    DescribeClusterResponse.add_member(:cluster, Shapes::ShapeRef.new(shape: Cluster, location_name: "cluster"))
    DescribeClusterResponse.struct_class = Types::DescribeClusterResponse

    DescribeUpdateRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    DescribeUpdateRequest.add_member(:update_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "updateId"))
    DescribeUpdateRequest.struct_class = Types::DescribeUpdateRequest

    DescribeUpdateResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    DescribeUpdateResponse.struct_class = Types::DescribeUpdateResponse

    ErrorDetail.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    ErrorDetail.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "errorMessage"))
    ErrorDetail.add_member(:resource_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "resourceIds"))
    ErrorDetail.struct_class = Types::ErrorDetail

    ErrorDetails.member = Shapes::ShapeRef.new(shape: ErrorDetail)

    InvalidParameterException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    ListUpdatesRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    ListUpdatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListUpdatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListUpdatesRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListUpdatesRequest.struct_class = Types::ListUpdatesRequest

    ListUpdatesResponse.add_member(:update_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "updateIds"))
    ListUpdatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListUpdatesResponse.struct_class = Types::ListUpdatesResponse

    LogSetup.add_member(:types, Shapes::ShapeRef.new(shape: LogTypes, location_name: "types"))
    LogSetup.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "enabled"))
    LogSetup.struct_class = Types::LogSetup

    LogSetups.member = Shapes::ShapeRef.new(shape: LogSetup)

    LogTypes.member = Shapes::ShapeRef.new(shape: LogType)

    Logging.add_member(:cluster_logging, Shapes::ShapeRef.new(shape: LogSetups, location_name: "clusterLogging"))
    Logging.struct_class = Types::Logging

    ResourceInUseException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceLimitExceededException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitExceededException.struct_class = Types::ResourceLimitExceededException

    ResourceNotFoundException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServerException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    ServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServerException.struct_class = Types::ServerException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StringList.member = Shapes::ShapeRef.new(shape: String)

    UnsupportedAvailabilityZoneException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    UnsupportedAvailabilityZoneException.add_member(:cluster_name, Shapes::ShapeRef.new(shape: String, location_name: "clusterName"))
    UnsupportedAvailabilityZoneException.add_member(:valid_zones, Shapes::ShapeRef.new(shape: StringList, location_name: "validZones"))
    UnsupportedAvailabilityZoneException.struct_class = Types::UnsupportedAvailabilityZoneException

    Update.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    Update.add_member(:status, Shapes::ShapeRef.new(shape: UpdateStatus, location_name: "status"))
    Update.add_member(:type, Shapes::ShapeRef.new(shape: UpdateType, location_name: "type"))
    Update.add_member(:params, Shapes::ShapeRef.new(shape: UpdateParams, location_name: "params"))
    Update.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Update.add_member(:errors, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "errors"))
    Update.struct_class = Types::Update

    UpdateClusterConfigRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterConfigRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, location_name: "resourcesVpcConfig"))
    UpdateClusterConfigRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateClusterConfigRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateClusterConfigRequest.struct_class = Types::UpdateClusterConfigRequest

    UpdateClusterConfigResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterConfigResponse.struct_class = Types::UpdateClusterConfigResponse

    UpdateClusterVersionRequest.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "name"))
    UpdateClusterVersionRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "version"))
    UpdateClusterVersionRequest.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken", metadata: {"idempotencyToken"=>true}))
    UpdateClusterVersionRequest.struct_class = Types::UpdateClusterVersionRequest

    UpdateClusterVersionResponse.add_member(:update, Shapes::ShapeRef.new(shape: Update, location_name: "update"))
    UpdateClusterVersionResponse.struct_class = Types::UpdateClusterVersionResponse

    UpdateParam.add_member(:type, Shapes::ShapeRef.new(shape: UpdateParamType, location_name: "type"))
    UpdateParam.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    UpdateParam.struct_class = Types::UpdateParam

    UpdateParams.member = Shapes::ShapeRef.new(shape: UpdateParam)

    VpcConfigRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    VpcConfigRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigRequest.add_member(:endpoint_public_access, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "endpointPublicAccess"))
    VpcConfigRequest.add_member(:endpoint_private_access, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "endpointPrivateAccess"))
    VpcConfigRequest.struct_class = Types::VpcConfigRequest

    VpcConfigResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
    VpcConfigResponse.add_member(:endpoint_public_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "endpointPublicAccess"))
    VpcConfigResponse.add_member(:endpoint_private_access, Shapes::ShapeRef.new(shape: Boolean, location_name: "endpointPrivateAccess"))
    VpcConfigResponse.struct_class = Types::VpcConfigResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-01"

      api.metadata = {
        "apiVersion" => "2017-11-01",
        "endpointPrefix" => "eks",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon EKS",
        "serviceFullName" => "Amazon Elastic Container Service for Kubernetes",
        "serviceId" => "EKS",
        "signatureVersion" => "v4",
        "signingName" => "eks",
        "uid" => "eks-2017-11-01",
      }

      api.add_operation(:create_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCluster"
        o.http_method = "POST"
        o.http_request_uri = "/clusters"
        o.input = Shapes::ShapeRef.new(shape: CreateClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedAvailabilityZoneException)
      end)

      api.add_operation(:delete_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCluster"
        o.http_method = "DELETE"
        o.http_request_uri = "/clusters/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_cluster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCluster"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}"
        o.input = Shapes::ShapeRef.new(shape: DescribeClusterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeClusterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:describe_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUpdate"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/updates/{updateId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_clusters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListClusters"
        o.http_method = "GET"
        o.http_request_uri = "/clusters"
        o.input = Shapes::ShapeRef.new(shape: ListClustersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListClustersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_updates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUpdates"
        o.http_method = "GET"
        o.http_request_uri = "/clusters/{name}/updates"
        o.input = Shapes::ShapeRef.new(shape: ListUpdatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUpdatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_cluster_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterConfig"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/update-config"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)

      api.add_operation(:update_cluster_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateClusterVersion"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{name}/updates"
        o.input = Shapes::ShapeRef.new(shape: UpdateClusterVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateClusterVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
      end)
    end

  end
end
