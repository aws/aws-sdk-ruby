# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SMS
  # @api private
  module ClientApi

    include Seahorse::Model

    AmiId = Shapes::StringShape.new(name: 'AmiId')
    Connector = Shapes::StructureShape.new(name: 'Connector')
    ConnectorCapability = Shapes::StringShape.new(name: 'ConnectorCapability')
    ConnectorCapabilityList = Shapes::ListShape.new(name: 'ConnectorCapabilityList')
    ConnectorId = Shapes::StringShape.new(name: 'ConnectorId')
    ConnectorList = Shapes::ListShape.new(name: 'ConnectorList')
    ConnectorStatus = Shapes::StringShape.new(name: 'ConnectorStatus')
    ConnectorVersion = Shapes::StringShape.new(name: 'ConnectorVersion')
    CreateReplicationJobRequest = Shapes::StructureShape.new(name: 'CreateReplicationJobRequest')
    CreateReplicationJobResponse = Shapes::StructureShape.new(name: 'CreateReplicationJobResponse')
    DeleteReplicationJobRequest = Shapes::StructureShape.new(name: 'DeleteReplicationJobRequest')
    DeleteReplicationJobResponse = Shapes::StructureShape.new(name: 'DeleteReplicationJobResponse')
    DeleteServerCatalogRequest = Shapes::StructureShape.new(name: 'DeleteServerCatalogRequest')
    DeleteServerCatalogResponse = Shapes::StructureShape.new(name: 'DeleteServerCatalogResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateConnectorRequest = Shapes::StructureShape.new(name: 'DisassociateConnectorRequest')
    DisassociateConnectorResponse = Shapes::StructureShape.new(name: 'DisassociateConnectorResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Frequency = Shapes::IntegerShape.new(name: 'Frequency')
    GetConnectorsRequest = Shapes::StructureShape.new(name: 'GetConnectorsRequest')
    GetConnectorsResponse = Shapes::StructureShape.new(name: 'GetConnectorsResponse')
    GetReplicationJobsRequest = Shapes::StructureShape.new(name: 'GetReplicationJobsRequest')
    GetReplicationJobsResponse = Shapes::StructureShape.new(name: 'GetReplicationJobsResponse')
    GetReplicationRunsRequest = Shapes::StructureShape.new(name: 'GetReplicationRunsRequest')
    GetReplicationRunsResponse = Shapes::StructureShape.new(name: 'GetReplicationRunsResponse')
    GetServersRequest = Shapes::StructureShape.new(name: 'GetServersRequest')
    GetServersResponse = Shapes::StructureShape.new(name: 'GetServersResponse')
    ImportServerCatalogRequest = Shapes::StructureShape.new(name: 'ImportServerCatalogRequest')
    ImportServerCatalogResponse = Shapes::StructureShape.new(name: 'ImportServerCatalogResponse')
    InternalError = Shapes::StructureShape.new(name: 'InternalError')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    IpAddress = Shapes::StringShape.new(name: 'IpAddress')
    LicenseType = Shapes::StringShape.new(name: 'LicenseType')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MissingRequiredParameterException = Shapes::StructureShape.new(name: 'MissingRequiredParameterException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoConnectorsAvailableException = Shapes::StructureShape.new(name: 'NoConnectorsAvailableException')
    OperationNotPermittedException = Shapes::StructureShape.new(name: 'OperationNotPermittedException')
    ReplicationJob = Shapes::StructureShape.new(name: 'ReplicationJob')
    ReplicationJobAlreadyExistsException = Shapes::StructureShape.new(name: 'ReplicationJobAlreadyExistsException')
    ReplicationJobId = Shapes::StringShape.new(name: 'ReplicationJobId')
    ReplicationJobList = Shapes::ListShape.new(name: 'ReplicationJobList')
    ReplicationJobNotFoundException = Shapes::StructureShape.new(name: 'ReplicationJobNotFoundException')
    ReplicationJobState = Shapes::StringShape.new(name: 'ReplicationJobState')
    ReplicationJobStatusMessage = Shapes::StringShape.new(name: 'ReplicationJobStatusMessage')
    ReplicationJobTerminated = Shapes::BooleanShape.new(name: 'ReplicationJobTerminated')
    ReplicationRun = Shapes::StructureShape.new(name: 'ReplicationRun')
    ReplicationRunId = Shapes::StringShape.new(name: 'ReplicationRunId')
    ReplicationRunLimitExceededException = Shapes::StructureShape.new(name: 'ReplicationRunLimitExceededException')
    ReplicationRunList = Shapes::ListShape.new(name: 'ReplicationRunList')
    ReplicationRunState = Shapes::StringShape.new(name: 'ReplicationRunState')
    ReplicationRunStatusMessage = Shapes::StringShape.new(name: 'ReplicationRunStatusMessage')
    ReplicationRunType = Shapes::StringShape.new(name: 'ReplicationRunType')
    RoleName = Shapes::StringShape.new(name: 'RoleName')
    Server = Shapes::StructureShape.new(name: 'Server')
    ServerCannotBeReplicatedException = Shapes::StructureShape.new(name: 'ServerCannotBeReplicatedException')
    ServerCatalogStatus = Shapes::StringShape.new(name: 'ServerCatalogStatus')
    ServerId = Shapes::StringShape.new(name: 'ServerId')
    ServerList = Shapes::ListShape.new(name: 'ServerList')
    ServerType = Shapes::StringShape.new(name: 'ServerType')
    StartOnDemandReplicationRunRequest = Shapes::StructureShape.new(name: 'StartOnDemandReplicationRunRequest')
    StartOnDemandReplicationRunResponse = Shapes::StructureShape.new(name: 'StartOnDemandReplicationRunResponse')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UnauthorizedOperationException = Shapes::StructureShape.new(name: 'UnauthorizedOperationException')
    UpdateReplicationJobRequest = Shapes::StructureShape.new(name: 'UpdateReplicationJobRequest')
    UpdateReplicationJobResponse = Shapes::StructureShape.new(name: 'UpdateReplicationJobResponse')
    VmId = Shapes::StringShape.new(name: 'VmId')
    VmManagerId = Shapes::StringShape.new(name: 'VmManagerId')
    VmManagerName = Shapes::StringShape.new(name: 'VmManagerName')
    VmManagerType = Shapes::StringShape.new(name: 'VmManagerType')
    VmName = Shapes::StringShape.new(name: 'VmName')
    VmPath = Shapes::StringShape.new(name: 'VmPath')
    VmServer = Shapes::StructureShape.new(name: 'VmServer')
    VmServerAddress = Shapes::StructureShape.new(name: 'VmServerAddress')

    Connector.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, location_name: "connectorId"))
    Connector.add_member(:version, Shapes::ShapeRef.new(shape: ConnectorVersion, location_name: "version"))
    Connector.add_member(:status, Shapes::ShapeRef.new(shape: ConnectorStatus, location_name: "status"))
    Connector.add_member(:capability_list, Shapes::ShapeRef.new(shape: ConnectorCapabilityList, location_name: "capabilityList"))
    Connector.add_member(:vm_manager_name, Shapes::ShapeRef.new(shape: VmManagerName, location_name: "vmManagerName"))
    Connector.add_member(:vm_manager_type, Shapes::ShapeRef.new(shape: VmManagerType, location_name: "vmManagerType"))
    Connector.add_member(:vm_manager_id, Shapes::ShapeRef.new(shape: VmManagerId, location_name: "vmManagerId"))
    Connector.add_member(:ip_address, Shapes::ShapeRef.new(shape: IpAddress, location_name: "ipAddress"))
    Connector.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, location_name: "macAddress"))
    Connector.add_member(:associated_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "associatedOn"))
    Connector.struct_class = Types::Connector

    ConnectorCapabilityList.member = Shapes::ShapeRef.new(shape: ConnectorCapability, location_name: "item")

    ConnectorList.member = Shapes::ShapeRef.new(shape: Connector, location_name: "item")

    CreateReplicationJobRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "serverId"))
    CreateReplicationJobRequest.add_member(:seed_replication_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "seedReplicationTime"))
    CreateReplicationJobRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, required: true, location_name: "frequency"))
    CreateReplicationJobRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    CreateReplicationJobRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    CreateReplicationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateReplicationJobRequest.struct_class = Types::CreateReplicationJobRequest

    CreateReplicationJobResponse.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    CreateReplicationJobResponse.struct_class = Types::CreateReplicationJobResponse

    DeleteReplicationJobRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    DeleteReplicationJobRequest.struct_class = Types::DeleteReplicationJobRequest

    DeleteReplicationJobResponse.struct_class = Types::DeleteReplicationJobResponse

    DeleteServerCatalogRequest.struct_class = Types::DeleteServerCatalogRequest

    DeleteServerCatalogResponse.struct_class = Types::DeleteServerCatalogResponse

    DisassociateConnectorRequest.add_member(:connector_id, Shapes::ShapeRef.new(shape: ConnectorId, required: true, location_name: "connectorId"))
    DisassociateConnectorRequest.struct_class = Types::DisassociateConnectorRequest

    DisassociateConnectorResponse.struct_class = Types::DisassociateConnectorResponse

    GetConnectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetConnectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetConnectorsRequest.struct_class = Types::GetConnectorsRequest

    GetConnectorsResponse.add_member(:connector_list, Shapes::ShapeRef.new(shape: ConnectorList, location_name: "connectorList"))
    GetConnectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetConnectorsResponse.struct_class = Types::GetConnectorsResponse

    GetReplicationJobsRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    GetReplicationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetReplicationJobsRequest.struct_class = Types::GetReplicationJobsRequest

    GetReplicationJobsResponse.add_member(:replication_job_list, Shapes::ShapeRef.new(shape: ReplicationJobList, location_name: "replicationJobList"))
    GetReplicationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationJobsResponse.struct_class = Types::GetReplicationJobsResponse

    GetReplicationRunsRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    GetReplicationRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetReplicationRunsRequest.struct_class = Types::GetReplicationRunsRequest

    GetReplicationRunsResponse.add_member(:replication_job, Shapes::ShapeRef.new(shape: ReplicationJob, location_name: "replicationJob"))
    GetReplicationRunsResponse.add_member(:replication_run_list, Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: "replicationRunList"))
    GetReplicationRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetReplicationRunsResponse.struct_class = Types::GetReplicationRunsResponse

    GetServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetServersRequest.struct_class = Types::GetServersRequest

    GetServersResponse.add_member(:last_modified_on, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedOn"))
    GetServersResponse.add_member(:server_catalog_status, Shapes::ShapeRef.new(shape: ServerCatalogStatus, location_name: "serverCatalogStatus"))
    GetServersResponse.add_member(:server_list, Shapes::ShapeRef.new(shape: ServerList, location_name: "serverList"))
    GetServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetServersResponse.struct_class = Types::GetServersResponse

    ImportServerCatalogRequest.struct_class = Types::ImportServerCatalogRequest

    ImportServerCatalogResponse.struct_class = Types::ImportServerCatalogResponse

    ReplicationJob.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    ReplicationJob.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "serverId"))
    ReplicationJob.add_member(:server_type, Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType"))
    ReplicationJob.add_member(:vm_server, Shapes::ShapeRef.new(shape: VmServer, location_name: "vmServer"))
    ReplicationJob.add_member(:seed_replication_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "seedReplicationTime"))
    ReplicationJob.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    ReplicationJob.add_member(:next_replication_run_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "nextReplicationRunStartTime"))
    ReplicationJob.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    ReplicationJob.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    ReplicationJob.add_member(:latest_ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "latestAmiId"))
    ReplicationJob.add_member(:state, Shapes::ShapeRef.new(shape: ReplicationJobState, location_name: "state"))
    ReplicationJob.add_member(:status_message, Shapes::ShapeRef.new(shape: ReplicationJobStatusMessage, location_name: "statusMessage"))
    ReplicationJob.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ReplicationJob.add_member(:replication_run_list, Shapes::ShapeRef.new(shape: ReplicationRunList, location_name: "replicationRunList"))
    ReplicationJob.struct_class = Types::ReplicationJob

    ReplicationJobList.member = Shapes::ShapeRef.new(shape: ReplicationJob, location_name: "item")

    ReplicationRun.add_member(:replication_run_id, Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: "replicationRunId"))
    ReplicationRun.add_member(:state, Shapes::ShapeRef.new(shape: ReplicationRunState, location_name: "state"))
    ReplicationRun.add_member(:type, Shapes::ShapeRef.new(shape: ReplicationRunType, location_name: "type"))
    ReplicationRun.add_member(:status_message, Shapes::ShapeRef.new(shape: ReplicationRunStatusMessage, location_name: "statusMessage"))
    ReplicationRun.add_member(:ami_id, Shapes::ShapeRef.new(shape: AmiId, location_name: "amiId"))
    ReplicationRun.add_member(:scheduled_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "scheduledStartTime"))
    ReplicationRun.add_member(:completed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "completedTime"))
    ReplicationRun.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    ReplicationRun.struct_class = Types::ReplicationRun

    ReplicationRunList.member = Shapes::ShapeRef.new(shape: ReplicationRun, location_name: "item")

    Server.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "serverId"))
    Server.add_member(:server_type, Shapes::ShapeRef.new(shape: ServerType, location_name: "serverType"))
    Server.add_member(:vm_server, Shapes::ShapeRef.new(shape: VmServer, location_name: "vmServer"))
    Server.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, location_name: "replicationJobId"))
    Server.add_member(:replication_job_terminated, Shapes::ShapeRef.new(shape: ReplicationJobTerminated, location_name: "replicationJobTerminated"))
    Server.struct_class = Types::Server

    ServerList.member = Shapes::ShapeRef.new(shape: Server, location_name: "item")

    StartOnDemandReplicationRunRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    StartOnDemandReplicationRunRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    StartOnDemandReplicationRunRequest.struct_class = Types::StartOnDemandReplicationRunRequest

    StartOnDemandReplicationRunResponse.add_member(:replication_run_id, Shapes::ShapeRef.new(shape: ReplicationRunId, location_name: "replicationRunId"))
    StartOnDemandReplicationRunResponse.struct_class = Types::StartOnDemandReplicationRunResponse

    UpdateReplicationJobRequest.add_member(:replication_job_id, Shapes::ShapeRef.new(shape: ReplicationJobId, required: true, location_name: "replicationJobId"))
    UpdateReplicationJobRequest.add_member(:frequency, Shapes::ShapeRef.new(shape: Frequency, location_name: "frequency"))
    UpdateReplicationJobRequest.add_member(:next_replication_run_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "nextReplicationRunStartTime"))
    UpdateReplicationJobRequest.add_member(:license_type, Shapes::ShapeRef.new(shape: LicenseType, location_name: "licenseType"))
    UpdateReplicationJobRequest.add_member(:role_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "roleName"))
    UpdateReplicationJobRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateReplicationJobRequest.struct_class = Types::UpdateReplicationJobRequest

    UpdateReplicationJobResponse.struct_class = Types::UpdateReplicationJobResponse

    VmServer.add_member(:vm_server_address, Shapes::ShapeRef.new(shape: VmServerAddress, location_name: "vmServerAddress"))
    VmServer.add_member(:vm_name, Shapes::ShapeRef.new(shape: VmName, location_name: "vmName"))
    VmServer.add_member(:vm_manager_name, Shapes::ShapeRef.new(shape: VmManagerName, location_name: "vmManagerName"))
    VmServer.add_member(:vm_manager_type, Shapes::ShapeRef.new(shape: VmManagerType, location_name: "vmManagerType"))
    VmServer.add_member(:vm_path, Shapes::ShapeRef.new(shape: VmPath, location_name: "vmPath"))
    VmServer.struct_class = Types::VmServer

    VmServerAddress.add_member(:vm_manager_id, Shapes::ShapeRef.new(shape: VmManagerId, location_name: "vmManagerId"))
    VmServerAddress.add_member(:vm_id, Shapes::ShapeRef.new(shape: VmId, location_name: "vmId"))
    VmServerAddress.struct_class = Types::VmServerAddress


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-10-24"

      api.metadata = {
        "apiVersion" => "2016-10-24",
        "endpointPrefix" => "sms",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "SMS",
        "serviceFullName" => "AWS Server Migration Service",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSServerMigrationService_V2016_10_24",
        "uid" => "sms-2016-10-24",
      }

      api.add_operation(:create_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
      end)

      api.add_operation(:delete_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
      end)

      api.add_operation(:delete_server_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServerCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServerCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
      end)

      api.add_operation(:disassociate_connector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateConnector"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateConnectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateConnectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
      end)

      api.add_operation(:get_connectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetConnectors"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetConnectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetConnectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_replication_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReplicationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_replication_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetReplicationRuns"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetReplicationRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetReplicationRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetServersRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:import_server_catalog, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportServerCatalog"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportServerCatalogRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportServerCatalogResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: NoConnectorsAvailableException)
      end)

      api.add_operation(:start_on_demand_replication_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartOnDemandReplicationRun"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartOnDemandReplicationRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationRunLimitExceededException)
      end)

      api.add_operation(:update_replication_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateReplicationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateReplicationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateReplicationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: MissingRequiredParameterException)
        o.errors << Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperationException)
        o.errors << Shapes::ShapeRef.new(shape: ServerCannotBeReplicatedException)
        o.errors << Shapes::ShapeRef.new(shape: ReplicationJobNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalError)
      end)
    end

  end
end
