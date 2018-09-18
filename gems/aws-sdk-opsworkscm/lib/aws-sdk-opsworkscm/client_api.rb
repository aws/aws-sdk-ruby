# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OpsWorksCM
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountAttribute = Shapes::StructureShape.new(name: 'AccountAttribute')
    AccountAttributes = Shapes::ListShape.new(name: 'AccountAttributes')
    AssociateNodeRequest = Shapes::StructureShape.new(name: 'AssociateNodeRequest')
    AssociateNodeResponse = Shapes::StructureShape.new(name: 'AssociateNodeResponse')
    AttributeName = Shapes::StringShape.new(name: 'AttributeName')
    AttributeValue = Shapes::StringShape.new(name: 'AttributeValue')
    Backup = Shapes::StructureShape.new(name: 'Backup')
    BackupId = Shapes::StringShape.new(name: 'BackupId')
    BackupRetentionCountDefinition = Shapes::IntegerShape.new(name: 'BackupRetentionCountDefinition')
    BackupStatus = Shapes::StringShape.new(name: 'BackupStatus')
    BackupType = Shapes::StringShape.new(name: 'BackupType')
    Backups = Shapes::ListShape.new(name: 'Backups')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateBackupRequest = Shapes::StructureShape.new(name: 'CreateBackupRequest')
    CreateBackupResponse = Shapes::StructureShape.new(name: 'CreateBackupResponse')
    CreateServerRequest = Shapes::StructureShape.new(name: 'CreateServerRequest')
    CreateServerResponse = Shapes::StructureShape.new(name: 'CreateServerResponse')
    DeleteBackupRequest = Shapes::StructureShape.new(name: 'DeleteBackupRequest')
    DeleteBackupResponse = Shapes::StructureShape.new(name: 'DeleteBackupResponse')
    DeleteServerRequest = Shapes::StructureShape.new(name: 'DeleteServerRequest')
    DeleteServerResponse = Shapes::StructureShape.new(name: 'DeleteServerResponse')
    DescribeAccountAttributesRequest = Shapes::StructureShape.new(name: 'DescribeAccountAttributesRequest')
    DescribeAccountAttributesResponse = Shapes::StructureShape.new(name: 'DescribeAccountAttributesResponse')
    DescribeBackupsRequest = Shapes::StructureShape.new(name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Shapes::StructureShape.new(name: 'DescribeBackupsResponse')
    DescribeEventsRequest = Shapes::StructureShape.new(name: 'DescribeEventsRequest')
    DescribeEventsResponse = Shapes::StructureShape.new(name: 'DescribeEventsResponse')
    DescribeNodeAssociationStatusRequest = Shapes::StructureShape.new(name: 'DescribeNodeAssociationStatusRequest')
    DescribeNodeAssociationStatusResponse = Shapes::StructureShape.new(name: 'DescribeNodeAssociationStatusResponse')
    DescribeServersRequest = Shapes::StructureShape.new(name: 'DescribeServersRequest')
    DescribeServersResponse = Shapes::StructureShape.new(name: 'DescribeServersResponse')
    DisassociateNodeRequest = Shapes::StructureShape.new(name: 'DisassociateNodeRequest')
    DisassociateNodeResponse = Shapes::StructureShape.new(name: 'DisassociateNodeResponse')
    EngineAttribute = Shapes::StructureShape.new(name: 'EngineAttribute')
    EngineAttributeName = Shapes::StringShape.new(name: 'EngineAttributeName')
    EngineAttributeValue = Shapes::StringShape.new(name: 'EngineAttributeValue')
    EngineAttributes = Shapes::ListShape.new(name: 'EngineAttributes')
    InstanceProfileArn = Shapes::StringShape.new(name: 'InstanceProfileArn')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidStateException = Shapes::StructureShape.new(name: 'InvalidStateException')
    KeyPair = Shapes::StringShape.new(name: 'KeyPair')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MaintenanceStatus = Shapes::StringShape.new(name: 'MaintenanceStatus')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NodeAssociationStatus = Shapes::StringShape.new(name: 'NodeAssociationStatus')
    NodeAssociationStatusToken = Shapes::StringShape.new(name: 'NodeAssociationStatusToken')
    NodeName = Shapes::StringShape.new(name: 'NodeName')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RestoreServerRequest = Shapes::StructureShape.new(name: 'RestoreServerRequest')
    RestoreServerResponse = Shapes::StructureShape.new(name: 'RestoreServerResponse')
    Server = Shapes::StructureShape.new(name: 'Server')
    ServerEvent = Shapes::StructureShape.new(name: 'ServerEvent')
    ServerEvents = Shapes::ListShape.new(name: 'ServerEvents')
    ServerName = Shapes::StringShape.new(name: 'ServerName')
    ServerStatus = Shapes::StringShape.new(name: 'ServerStatus')
    Servers = Shapes::ListShape.new(name: 'Servers')
    ServiceRoleArn = Shapes::StringShape.new(name: 'ServiceRoleArn')
    StartMaintenanceRequest = Shapes::StructureShape.new(name: 'StartMaintenanceRequest')
    StartMaintenanceResponse = Shapes::StructureShape.new(name: 'StartMaintenanceResponse')
    String = Shapes::StringShape.new(name: 'String')
    Strings = Shapes::ListShape.new(name: 'Strings')
    TimeWindowDefinition = Shapes::StringShape.new(name: 'TimeWindowDefinition')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateServerEngineAttributesRequest = Shapes::StructureShape.new(name: 'UpdateServerEngineAttributesRequest')
    UpdateServerEngineAttributesResponse = Shapes::StructureShape.new(name: 'UpdateServerEngineAttributesResponse')
    UpdateServerRequest = Shapes::StructureShape.new(name: 'UpdateServerRequest')
    UpdateServerResponse = Shapes::StructureShape.new(name: 'UpdateServerResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccountAttribute.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    AccountAttribute.add_member(:maximum, Shapes::ShapeRef.new(shape: Integer, location_name: "Maximum"))
    AccountAttribute.add_member(:used, Shapes::ShapeRef.new(shape: Integer, location_name: "Used"))
    AccountAttribute.struct_class = Types::AccountAttribute

    AccountAttributes.member = Shapes::ShapeRef.new(shape: AccountAttribute)

    AssociateNodeRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    AssociateNodeRequest.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "NodeName"))
    AssociateNodeRequest.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, required: true, location_name: "EngineAttributes"))
    AssociateNodeRequest.struct_class = Types::AssociateNodeRequest

    AssociateNodeResponse.add_member(:node_association_status_token, Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: "NodeAssociationStatusToken"))
    AssociateNodeResponse.struct_class = Types::AssociateNodeResponse

    Backup.add_member(:backup_arn, Shapes::ShapeRef.new(shape: String, location_name: "BackupArn"))
    Backup.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    Backup.add_member(:backup_type, Shapes::ShapeRef.new(shape: BackupType, location_name: "BackupType"))
    Backup.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Backup.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    Backup.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    Backup.add_member(:engine_model, Shapes::ShapeRef.new(shape: String, location_name: "EngineModel"))
    Backup.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    Backup.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    Backup.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    Backup.add_member(:key_pair, Shapes::ShapeRef.new(shape: String, location_name: "KeyPair"))
    Backup.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredBackupWindow"))
    Backup.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredMaintenanceWindow"))
    Backup.add_member(:s3_data_size, Shapes::ShapeRef.new(shape: Integer, deprecated: true, location_name: "S3DataSize"))
    Backup.add_member(:s3_data_url, Shapes::ShapeRef.new(shape: String, deprecated: true, location_name: "S3DataUrl"))
    Backup.add_member(:s3_log_url, Shapes::ShapeRef.new(shape: String, location_name: "S3LogUrl"))
    Backup.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SecurityGroupIds"))
    Backup.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, location_name: "ServerName"))
    Backup.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRoleArn"))
    Backup.add_member(:status, Shapes::ShapeRef.new(shape: BackupStatus, location_name: "Status"))
    Backup.add_member(:status_description, Shapes::ShapeRef.new(shape: String, location_name: "StatusDescription"))
    Backup.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SubnetIds"))
    Backup.add_member(:tools_version, Shapes::ShapeRef.new(shape: String, location_name: "ToolsVersion"))
    Backup.add_member(:user_arn, Shapes::ShapeRef.new(shape: String, location_name: "UserArn"))
    Backup.struct_class = Types::Backup

    Backups.member = Shapes::ShapeRef.new(shape: Backup)

    CreateBackupRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    CreateBackupRequest.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    CreateBackupRequest.struct_class = Types::CreateBackupRequest

    CreateBackupResponse.add_member(:backup, Shapes::ShapeRef.new(shape: Backup, location_name: "Backup"))
    CreateBackupResponse.struct_class = Types::CreateBackupResponse

    CreateServerRequest.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociatePublicIpAddress"))
    CreateServerRequest.add_member(:disable_automated_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableAutomatedBackup"))
    CreateServerRequest.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    CreateServerRequest.add_member(:engine_model, Shapes::ShapeRef.new(shape: String, location_name: "EngineModel"))
    CreateServerRequest.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    CreateServerRequest.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, location_name: "EngineAttributes"))
    CreateServerRequest.add_member(:backup_retention_count, Shapes::ShapeRef.new(shape: BackupRetentionCountDefinition, location_name: "BackupRetentionCount"))
    CreateServerRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    CreateServerRequest.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: InstanceProfileArn, required: true, location_name: "InstanceProfileArn"))
    CreateServerRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "InstanceType"))
    CreateServerRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "KeyPair"))
    CreateServerRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredMaintenanceWindow"))
    CreateServerRequest.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredBackupWindow"))
    CreateServerRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SecurityGroupIds"))
    CreateServerRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRoleArn, required: true, location_name: "ServiceRoleArn"))
    CreateServerRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SubnetIds"))
    CreateServerRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    CreateServerRequest.struct_class = Types::CreateServerRequest

    CreateServerResponse.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "Server"))
    CreateServerResponse.struct_class = Types::CreateServerResponse

    DeleteBackupRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    DeleteBackupRequest.struct_class = Types::DeleteBackupRequest

    DeleteBackupResponse.struct_class = Types::DeleteBackupResponse

    DeleteServerRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    DeleteServerRequest.struct_class = Types::DeleteServerRequest

    DeleteServerResponse.struct_class = Types::DeleteServerResponse

    DescribeAccountAttributesRequest.struct_class = Types::DescribeAccountAttributesRequest

    DescribeAccountAttributesResponse.add_member(:attributes, Shapes::ShapeRef.new(shape: AccountAttributes, location_name: "Attributes"))
    DescribeAccountAttributesResponse.struct_class = Types::DescribeAccountAttributesResponse

    DescribeBackupsRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, location_name: "BackupId"))
    DescribeBackupsRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, location_name: "ServerName"))
    DescribeBackupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeBackupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeBackupsRequest.struct_class = Types::DescribeBackupsRequest

    DescribeBackupsResponse.add_member(:backups, Shapes::ShapeRef.new(shape: Backups, location_name: "Backups"))
    DescribeBackupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeBackupsResponse.struct_class = Types::DescribeBackupsResponse

    DescribeEventsRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    DescribeEventsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeEventsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeEventsRequest.struct_class = Types::DescribeEventsRequest

    DescribeEventsResponse.add_member(:server_events, Shapes::ShapeRef.new(shape: ServerEvents, location_name: "ServerEvents"))
    DescribeEventsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEventsResponse.struct_class = Types::DescribeEventsResponse

    DescribeNodeAssociationStatusRequest.add_member(:node_association_status_token, Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, required: true, location_name: "NodeAssociationStatusToken"))
    DescribeNodeAssociationStatusRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    DescribeNodeAssociationStatusRequest.struct_class = Types::DescribeNodeAssociationStatusRequest

    DescribeNodeAssociationStatusResponse.add_member(:node_association_status, Shapes::ShapeRef.new(shape: NodeAssociationStatus, location_name: "NodeAssociationStatus"))
    DescribeNodeAssociationStatusResponse.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, location_name: "EngineAttributes"))
    DescribeNodeAssociationStatusResponse.struct_class = Types::DescribeNodeAssociationStatusResponse

    DescribeServersRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, location_name: "ServerName"))
    DescribeServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeServersRequest.struct_class = Types::DescribeServersRequest

    DescribeServersResponse.add_member(:servers, Shapes::ShapeRef.new(shape: Servers, location_name: "Servers"))
    DescribeServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeServersResponse.struct_class = Types::DescribeServersResponse

    DisassociateNodeRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    DisassociateNodeRequest.add_member(:node_name, Shapes::ShapeRef.new(shape: NodeName, required: true, location_name: "NodeName"))
    DisassociateNodeRequest.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, location_name: "EngineAttributes"))
    DisassociateNodeRequest.struct_class = Types::DisassociateNodeRequest

    DisassociateNodeResponse.add_member(:node_association_status_token, Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: "NodeAssociationStatusToken"))
    DisassociateNodeResponse.struct_class = Types::DisassociateNodeResponse

    EngineAttribute.add_member(:name, Shapes::ShapeRef.new(shape: EngineAttributeName, location_name: "Name"))
    EngineAttribute.add_member(:value, Shapes::ShapeRef.new(shape: EngineAttributeValue, location_name: "Value"))
    EngineAttribute.struct_class = Types::EngineAttribute

    EngineAttributes.member = Shapes::ShapeRef.new(shape: EngineAttribute)

    RestoreServerRequest.add_member(:backup_id, Shapes::ShapeRef.new(shape: BackupId, required: true, location_name: "BackupId"))
    RestoreServerRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    RestoreServerRequest.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    RestoreServerRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: KeyPair, location_name: "KeyPair"))
    RestoreServerRequest.struct_class = Types::RestoreServerRequest

    RestoreServerResponse.struct_class = Types::RestoreServerResponse

    Server.add_member(:associate_public_ip_address, Shapes::ShapeRef.new(shape: Boolean, location_name: "AssociatePublicIpAddress"))
    Server.add_member(:backup_retention_count, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionCount"))
    Server.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    Server.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Server.add_member(:cloud_formation_stack_arn, Shapes::ShapeRef.new(shape: String, location_name: "CloudFormationStackArn"))
    Server.add_member(:disable_automated_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableAutomatedBackup"))
    Server.add_member(:endpoint, Shapes::ShapeRef.new(shape: String, location_name: "Endpoint"))
    Server.add_member(:engine, Shapes::ShapeRef.new(shape: String, location_name: "Engine"))
    Server.add_member(:engine_model, Shapes::ShapeRef.new(shape: String, location_name: "EngineModel"))
    Server.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, location_name: "EngineAttributes"))
    Server.add_member(:engine_version, Shapes::ShapeRef.new(shape: String, location_name: "EngineVersion"))
    Server.add_member(:instance_profile_arn, Shapes::ShapeRef.new(shape: String, location_name: "InstanceProfileArn"))
    Server.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    Server.add_member(:key_pair, Shapes::ShapeRef.new(shape: String, location_name: "KeyPair"))
    Server.add_member(:maintenance_status, Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: "MaintenanceStatus"))
    Server.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredMaintenanceWindow"))
    Server.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredBackupWindow"))
    Server.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SecurityGroupIds"))
    Server.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRoleArn"))
    Server.add_member(:status, Shapes::ShapeRef.new(shape: ServerStatus, location_name: "Status"))
    Server.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "StatusReason"))
    Server.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: Strings, location_name: "SubnetIds"))
    Server.add_member(:server_arn, Shapes::ShapeRef.new(shape: String, location_name: "ServerArn"))
    Server.struct_class = Types::Server

    ServerEvent.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    ServerEvent.add_member(:server_name, Shapes::ShapeRef.new(shape: String, location_name: "ServerName"))
    ServerEvent.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServerEvent.add_member(:log_url, Shapes::ShapeRef.new(shape: String, location_name: "LogUrl"))
    ServerEvent.struct_class = Types::ServerEvent

    ServerEvents.member = Shapes::ShapeRef.new(shape: ServerEvent)

    Servers.member = Shapes::ShapeRef.new(shape: Server)

    StartMaintenanceRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    StartMaintenanceRequest.add_member(:engine_attributes, Shapes::ShapeRef.new(shape: EngineAttributes, location_name: "EngineAttributes"))
    StartMaintenanceRequest.struct_class = Types::StartMaintenanceRequest

    StartMaintenanceResponse.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "Server"))
    StartMaintenanceResponse.struct_class = Types::StartMaintenanceResponse

    Strings.member = Shapes::ShapeRef.new(shape: String)

    UpdateServerEngineAttributesRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    UpdateServerEngineAttributesRequest.add_member(:attribute_name, Shapes::ShapeRef.new(shape: AttributeName, required: true, location_name: "AttributeName"))
    UpdateServerEngineAttributesRequest.add_member(:attribute_value, Shapes::ShapeRef.new(shape: AttributeValue, location_name: "AttributeValue"))
    UpdateServerEngineAttributesRequest.struct_class = Types::UpdateServerEngineAttributesRequest

    UpdateServerEngineAttributesResponse.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "Server"))
    UpdateServerEngineAttributesResponse.struct_class = Types::UpdateServerEngineAttributesResponse

    UpdateServerRequest.add_member(:disable_automated_backup, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableAutomatedBackup"))
    UpdateServerRequest.add_member(:backup_retention_count, Shapes::ShapeRef.new(shape: Integer, location_name: "BackupRetentionCount"))
    UpdateServerRequest.add_member(:server_name, Shapes::ShapeRef.new(shape: ServerName, required: true, location_name: "ServerName"))
    UpdateServerRequest.add_member(:preferred_maintenance_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredMaintenanceWindow"))
    UpdateServerRequest.add_member(:preferred_backup_window, Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: "PreferredBackupWindow"))
    UpdateServerRequest.struct_class = Types::UpdateServerRequest

    UpdateServerResponse.add_member(:server, Shapes::ShapeRef.new(shape: Server, location_name: "Server"))
    UpdateServerResponse.struct_class = Types::UpdateServerResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2016-11-01"

      api.metadata = {
        "apiVersion" => "2016-11-01",
        "endpointPrefix" => "opsworks-cm",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "OpsWorksCM",
        "serviceFullName" => "AWS OpsWorks for Chef Automate",
        "serviceId" => "OpsWorksCM",
        "signatureVersion" => "v4",
        "signingName" => "opsworks-cm",
        "targetPrefix" => "OpsWorksCM_V2016_11_01",
        "uid" => "opsworkscm-2016-11-01",
      }

      api.add_operation(:associate_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_backup, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteBackup"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteServerRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
      end)

      api.add_operation(:describe_backups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeBackups"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_node_association_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNodeAssociationStatus"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
      end)

      api.add_operation(:disassociate_node, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateNode"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateNodeRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateNodeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:restore_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestoreServerRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_maintenance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMaintenance"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartMaintenanceRequest)
        o.output = Shapes::ShapeRef.new(shape: StartMaintenanceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServerResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_server_engine_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServerEngineAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidStateException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
