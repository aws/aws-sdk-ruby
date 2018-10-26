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
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    ListClustersRequest = Shapes::StructureShape.new(name: 'ListClustersRequest')
    ListClustersRequestMaxResults = Shapes::IntegerShape.new(name: 'ListClustersRequestMaxResults')
    ListClustersResponse = Shapes::StructureShape.new(name: 'ListClustersResponse')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceLimitExceededException = Shapes::StructureShape.new(name: 'ResourceLimitExceededException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServerException = Shapes::StructureShape.new(name: 'ServerException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnsupportedAvailabilityZoneException = Shapes::StructureShape.new(name: 'UnsupportedAvailabilityZoneException')
    VpcConfigRequest = Shapes::StructureShape.new(name: 'VpcConfigRequest')
    VpcConfigResponse = Shapes::StructureShape.new(name: 'VpcConfigResponse')

    Certificate.add_member(:data, Shapes::ShapeRef.new(shape: String, location_name: "data"))
    Certificate.struct_class = Types::Certificate

    Cluster.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    Cluster.add_member(:arn, Shapes::ShapeRef.new(shape: String, location_name: "arn"))
    Cluster.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    Cluster.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    Cluster.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "endpoint"))
    Cluster.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "roleArn"))
    Cluster.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigResponse, location_name: "resourcesVpcConfig"))
    Cluster.add_member(:status, Shapes::ShapeRef.new(shape: ClusterStatus, location_name: "status"))
    Cluster.add_member(:certificate_authority, Shapes::ShapeRef.new(shape: Certificate, location_name: "certificateAuthority"))
    Cluster.add_member(:client_request_token, Shapes::ShapeRef.new(shape: String, location_name: "clientRequestToken"))
    Cluster.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "platformVersion"))
    Cluster.struct_class = Types::Cluster

    CreateClusterRequest.add_member(:name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location_name: "name"))
    CreateClusterRequest.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "version"))
    CreateClusterRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "roleArn"))
    CreateClusterRequest.add_member(:resources_vpc_config, Shapes::ShapeRef.new(shape: VpcConfigRequest, required: true, location_name: "resourcesVpcConfig"))
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

    ListClustersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListClustersRequestMaxResults, location: "querystring", location_name: "maxResults"))
    ListClustersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListClustersRequest.struct_class = Types::ListClustersRequest

    ListClustersResponse.add_member(:clusters, Shapes::ShapeRef.new(shape: StringList, location_name: "clusters"))
    ListClustersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListClustersResponse.struct_class = Types::ListClustersResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    VpcConfigRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "subnetIds"))
    VpcConfigRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigRequest.struct_class = Types::VpcConfigRequest

    VpcConfigResponse.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "subnetIds"))
    VpcConfigResponse.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: StringList, location_name: "securityGroupIds"))
    VpcConfigResponse.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "vpcId"))
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
    end

  end
end
