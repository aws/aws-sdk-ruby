# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorksCM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSOpsWorksCMResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AWSOpsWorksCMResourceArn', name: 'AWSOpsWorksCMResourceArn', traits: {"smithy.api#pattern" => "^arn:aws.*:opsworks-cm:.*:[0-9]{12}:"})
    AccountAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AccountAttribute', name: 'AccountAttribute')
    AccountAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#AccountAttributes', name: 'AccountAttributes')
    AssociateNodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AssociateNodeRequest', name: 'AssociateNodeRequest')
    AssociateNodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AssociateNodeResponse', name: 'AssociateNodeResponse')
    AttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z][A-Z0-9_]*$"})
    AttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Backup = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Backup', name: 'Backup')
    BackupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#BackupId', name: 'BackupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 79}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-\\.\\:]*$"})
    BackupRetentionCountDefinition = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#BackupRetentionCountDefinition', name: 'BackupRetentionCountDefinition', traits: {"smithy.api#range" => {"min" => 1}})
    BackupStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#BackupStatus', name: 'BackupStatus')
    BackupType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#BackupType', name: 'BackupType')
    Backups = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Backups', name: 'Backups')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opsworkscm#Boolean', name: 'Boolean')
    CreateBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateBackupRequest', name: 'CreateBackupRequest')
    CreateBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateBackupResponse', name: 'CreateBackupResponse')
    CreateServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateServerRequest', name: 'CreateServerRequest')
    CreateServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateServerResponse', name: 'CreateServerResponse')
    CustomCertificate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomCertificate', name: 'CustomCertificate', traits: {"smithy.api#length" => {"min" => 0, "max" => 2097152}, "smithy.api#pattern" => "^(?s)\\s*-----BEGIN CERTIFICATE-----.+-----END CERTIFICATE-----\\s*$"})
    CustomDomain = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomDomain', name: 'CustomDomain', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    CustomPrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomPrivateKey', name: 'CustomPrivateKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^(?ms)\\s*^-----BEGIN (?-s:.*)PRIVATE KEY-----$.*?^-----END (?-s:.*)PRIVATE KEY-----$\\s*$", "smithy.api#sensitive" => {}})
    DeleteBackupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteBackupRequest', name: 'DeleteBackupRequest')
    DeleteBackupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteBackupResponse', name: 'DeleteBackupResponse')
    DeleteServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteServerRequest', name: 'DeleteServerRequest')
    DeleteServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteServerResponse', name: 'DeleteServerResponse')
    DescribeAccountAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeAccountAttributesRequest', name: 'DescribeAccountAttributesRequest')
    DescribeAccountAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeAccountAttributesResponse', name: 'DescribeAccountAttributesResponse')
    DescribeBackupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeBackupsRequest', name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeBackupsResponse', name: 'DescribeBackupsResponse')
    DescribeEventsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeEventsRequest', name: 'DescribeEventsRequest')
    DescribeEventsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeEventsResponse', name: 'DescribeEventsResponse')
    DescribeNodeAssociationStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeNodeAssociationStatusRequest', name: 'DescribeNodeAssociationStatusRequest')
    DescribeNodeAssociationStatusResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeNodeAssociationStatusResponse', name: 'DescribeNodeAssociationStatusResponse')
    DescribeServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeServersRequest', name: 'DescribeServersRequest')
    DescribeServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeServersResponse', name: 'DescribeServersResponse')
    DisassociateNodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DisassociateNodeRequest', name: 'DisassociateNodeRequest')
    DisassociateNodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DisassociateNodeResponse', name: 'DisassociateNodeResponse')
    EngineAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#EngineAttribute', name: 'EngineAttribute')
    EngineAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributeName', name: 'EngineAttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    EngineAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributeValue', name: 'EngineAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    EngineAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributes', name: 'EngineAttributes')
    ExportServerEngineAttributeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ExportServerEngineAttributeRequest', name: 'ExportServerEngineAttributeRequest')
    ExportServerEngineAttributeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ExportServerEngineAttributeResponse', name: 'ExportServerEngineAttributeResponse')
    InstanceProfileArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#InstanceProfileArn', name: 'InstanceProfileArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:instance-profile/"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#Integer', name: 'Integer')
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    KeyPair = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#KeyPair', name: 'KeyPair', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => ".*"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaintenanceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#MaintenanceStatus', name: 'MaintenanceStatus')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    NodeAssociationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#NodeAssociationStatus', name: 'NodeAssociationStatus')
    NodeAssociationStatusToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NodeAssociationStatusToken', name: 'NodeAssociationStatusToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    NodeName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NodeName', name: 'NodeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\-\\p{Alnum}_:.]+$"})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RestoreServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#RestoreServerRequest', name: 'RestoreServerRequest')
    RestoreServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#RestoreServerResponse', name: 'RestoreServerResponse')
    Server = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Server', name: 'Server')
    ServerEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ServerEvent', name: 'ServerEvent')
    ServerEvents = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#ServerEvents', name: 'ServerEvents')
    ServerName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#ServerName', name: 'ServerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    ServerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#ServerStatus', name: 'ServerStatus')
    Servers = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Servers', name: 'Servers')
    ServiceRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#ServiceRoleArn', name: 'ServiceRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/"})
    StartMaintenanceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#StartMaintenanceRequest', name: 'StartMaintenanceRequest')
    StartMaintenanceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#StartMaintenanceResponse', name: 'StartMaintenanceResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Strings = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Strings', name: 'Strings')
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TimeWindowDefinition = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TimeWindowDefinition', name: 'TimeWindowDefinition', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opsworkscm#Timestamp', name: 'Timestamp')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateServerEngineAttributesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerEngineAttributesRequest', name: 'UpdateServerEngineAttributesRequest')
    UpdateServerEngineAttributesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerEngineAttributesResponse', name: 'UpdateServerEngineAttributesResponse')
    UpdateServerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerRequest', name: 'UpdateServerRequest')
    UpdateServerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerResponse', name: 'UpdateServerResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    AccountAttribute.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name'))
    AccountAttribute.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Maximum'))
    AccountAttribute.add_member(:used, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Used'))
    AccountAttribute.type = Types::AccountAttribute
    AccountAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttribute)
    AssociateNodeRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    AssociateNodeRequest.add_member(:node_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#required" => {}}))
    AssociateNodeRequest.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#required" => {}}))
    AssociateNodeRequest.type = Types::AssociateNodeRequest
    AssociateNodeResponse.add_member(:node_association_status_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken'))
    AssociateNodeResponse.type = Types::AssociateNodeResponse
    Backup.add_member(:backup_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupArn'))
    Backup.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId'))
    Backup.add_member(:backup_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupType, location_name: 'BackupType'))
    Backup.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Backup.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    Backup.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    Backup.add_member(:engine_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel'))
    Backup.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    Backup.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn'))
    Backup.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    Backup.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPair'))
    Backup.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow'))
    Backup.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow'))
    Backup.add_member(:s3_data_size, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'S3DataSize', traits: {"smithy.api#deprecated" => {}}))
    Backup.add_member(:s3_data_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3DataUrl', traits: {"smithy.api#deprecated" => {}}))
    Backup.add_member(:s3_log_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3LogUrl'))
    Backup.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds'))
    Backup.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName'))
    Backup.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn'))
    Backup.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupStatus, location_name: 'Status'))
    Backup.add_member(:status_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusDescription'))
    Backup.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds'))
    Backup.add_member(:tools_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ToolsVersion'))
    Backup.add_member(:user_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserArn'))
    Backup.type = Types::Backup
    BackupStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BackupStatus.add_member(:ok, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    BackupStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    BackupType.add_member(:automated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED', traits: {"smithy.api#enumValue" => "AUTOMATED"}))
    BackupType.add_member(:manual, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    Backups.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup)
    CreateBackupRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    CreateBackupRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    CreateBackupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateBackupRequest.type = Types::CreateBackupRequest
    CreateBackupResponse.add_member(:backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup'))
    CreateBackupResponse.type = Types::CreateBackupResponse
    CreateServerRequest.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AssociatePublicIpAddress'))
    CreateServerRequest.add_member(:custom_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain'))
    CreateServerRequest.add_member(:custom_certificate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCertificate, location_name: 'CustomCertificate'))
    CreateServerRequest.add_member(:custom_private_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPrivateKey, location_name: 'CustomPrivateKey'))
    CreateServerRequest.add_member(:disable_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup'))
    CreateServerRequest.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#required" => {}}))
    CreateServerRequest.add_member(:engine_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel'))
    CreateServerRequest.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    CreateServerRequest.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes'))
    CreateServerRequest.add_member(:backup_retention_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionCountDefinition, location_name: 'BackupRetentionCount'))
    CreateServerRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    CreateServerRequest.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'InstanceProfileArn', traits: {"smithy.api#required" => {}}))
    CreateServerRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#required" => {}}))
    CreateServerRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: 'KeyPair'))
    CreateServerRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow'))
    CreateServerRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow'))
    CreateServerRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds'))
    CreateServerRequest.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: 'ServiceRoleArn', traits: {"smithy.api#required" => {}}))
    CreateServerRequest.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds'))
    CreateServerRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    CreateServerRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId'))
    CreateServerRequest.type = Types::CreateServerRequest
    CreateServerResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    CreateServerResponse.type = Types::CreateServerResponse
    DeleteBackupRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    DeleteBackupRequest.type = Types::DeleteBackupRequest
    DeleteBackupResponse.type = Types::DeleteBackupResponse
    DeleteServerRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    DeleteServerRequest.type = Types::DeleteServerRequest
    DeleteServerResponse.type = Types::DeleteServerResponse
    DescribeAccountAttributesRequest.type = Types::DescribeAccountAttributesRequest
    DescribeAccountAttributesResponse.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttributes, location_name: 'Attributes'))
    DescribeAccountAttributesResponse.type = Types::DescribeAccountAttributesResponse
    DescribeBackupsRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId'))
    DescribeBackupsRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName'))
    DescribeBackupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeBackupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeBackupsRequest.type = Types::DescribeBackupsRequest
    DescribeBackupsResponse.add_member(:backups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Backups, location_name: 'Backups'))
    DescribeBackupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeBackupsResponse.type = Types::DescribeBackupsResponse
    DescribeEventsRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    DescribeEventsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeEventsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:server_events, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEvents, location_name: 'ServerEvents'))
    DescribeEventsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeNodeAssociationStatusRequest.add_member(:node_association_status_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken', traits: {"smithy.api#required" => {}}))
    DescribeNodeAssociationStatusRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    DescribeNodeAssociationStatusRequest.type = Types::DescribeNodeAssociationStatusRequest
    DescribeNodeAssociationStatusResponse.add_member(:node_association_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatus, location_name: 'NodeAssociationStatus'))
    DescribeNodeAssociationStatusResponse.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes'))
    DescribeNodeAssociationStatusResponse.type = Types::DescribeNodeAssociationStatusResponse
    DescribeServersRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName'))
    DescribeServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeServersRequest.type = Types::DescribeServersRequest
    DescribeServersResponse.add_member(:servers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Servers, location_name: 'Servers'))
    DescribeServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    DescribeServersResponse.type = Types::DescribeServersResponse
    DisassociateNodeRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    DisassociateNodeRequest.add_member(:node_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#required" => {}}))
    DisassociateNodeRequest.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes'))
    DisassociateNodeRequest.type = Types::DisassociateNodeRequest
    DisassociateNodeResponse.add_member(:node_association_status_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken'))
    DisassociateNodeResponse.type = Types::DisassociateNodeResponse
    EngineAttribute.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributeName, location_name: 'Name'))
    EngineAttribute.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributeValue, location_name: 'Value'))
    EngineAttribute.type = Types::EngineAttribute
    EngineAttributes.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttribute)
    ExportServerEngineAttributeRequest.add_member(:export_attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportAttributeName', traits: {"smithy.api#required" => {}}))
    ExportServerEngineAttributeRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    ExportServerEngineAttributeRequest.add_member(:input_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'InputAttributes'))
    ExportServerEngineAttributeRequest.type = Types::ExportServerEngineAttributeRequest
    ExportServerEngineAttributeResponse.add_member(:engine_attribute, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttribute, location_name: 'EngineAttribute'))
    ExportServerEngineAttributeResponse.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName'))
    ExportServerEngineAttributeResponse.type = Types::ExportServerEngineAttributeResponse
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidStateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InvalidStateException.type = Types::InvalidStateException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MaintenanceStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NodeAssociationStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    NodeAssociationStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NodeAssociationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreServerRequest.add_member(:backup_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#required" => {}}))
    RestoreServerRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    RestoreServerRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    RestoreServerRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: 'KeyPair'))
    RestoreServerRequest.type = Types::RestoreServerRequest
    RestoreServerResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    RestoreServerResponse.type = Types::RestoreServerResponse
    Server.add_member(:associate_public_ip_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AssociatePublicIpAddress'))
    Server.add_member(:backup_retention_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionCount'))
    Server.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerName'))
    Server.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Server.add_member(:cloud_formation_stack_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudFormationStackArn'))
    Server.add_member(:custom_domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain'))
    Server.add_member(:disable_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup'))
    Server.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint'))
    Server.add_member(:engine, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine'))
    Server.add_member(:engine_model, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel'))
    Server.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes'))
    Server.add_member(:engine_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion'))
    Server.add_member(:instance_profile_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn'))
    Server.add_member(:instance_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType'))
    Server.add_member(:key_pair, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPair'))
    Server.add_member(:maintenance_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'MaintenanceStatus'))
    Server.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow'))
    Server.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow'))
    Server.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds'))
    Server.add_member(:service_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn'))
    Server.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerStatus, location_name: 'Status'))
    Server.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusReason'))
    Server.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds'))
    Server.add_member(:server_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerArn'))
    Server.type = Types::Server
    ServerEvent.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    ServerEvent.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerName'))
    ServerEvent.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServerEvent.add_member(:log_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogUrl'))
    ServerEvent.type = Types::ServerEvent
    ServerEvents.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEvent)
    ServerStatus.add_member(:backing_up, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKING_UP', traits: {"smithy.api#enumValue" => "BACKING_UP"}))
    ServerStatus.add_member(:connection_lost, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_LOST', traits: {"smithy.api#enumValue" => "CONNECTION_LOST"}))
    ServerStatus.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ServerStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ServerStatus.add_member(:modifying, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ServerStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ServerStatus.add_member(:healthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ServerStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServerStatus.add_member(:restoring, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "RESTORING"}))
    ServerStatus.add_member(:setup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SETUP', traits: {"smithy.api#enumValue" => "SETUP"}))
    ServerStatus.add_member(:under_maintenance, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_MAINTENANCE', traits: {"smithy.api#enumValue" => "UNDER_MAINTENANCE"}))
    ServerStatus.add_member(:unhealthy, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    ServerStatus.add_member(:terminated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    Servers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server)
    StartMaintenanceRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    StartMaintenanceRequest.add_member(:engine_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes'))
    StartMaintenanceRequest.type = Types::StartMaintenanceRequest
    StartMaintenanceResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    StartMaintenanceResponse.type = Types::StartMaintenanceResponse
    Strings.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServerEngineAttributesRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    UpdateServerEngineAttributesRequest.add_member(:attribute_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'AttributeName', traits: {"smithy.api#required" => {}}))
    UpdateServerEngineAttributesRequest.add_member(:attribute_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'AttributeValue'))
    UpdateServerEngineAttributesRequest.type = Types::UpdateServerEngineAttributesRequest
    UpdateServerEngineAttributesResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    UpdateServerEngineAttributesResponse.type = Types::UpdateServerEngineAttributesResponse
    UpdateServerRequest.add_member(:disable_automated_backup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup'))
    UpdateServerRequest.add_member(:backup_retention_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionCount'))
    UpdateServerRequest.add_member(:server_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#required" => {}}))
    UpdateServerRequest.add_member(:preferred_maintenance_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow'))
    UpdateServerRequest.add_member(:preferred_backup_window, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow'))
    UpdateServerRequest.type = Types::UpdateServerRequest
    UpdateServerResponse.add_member(:server, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    UpdateServerResponse.type = Types::UpdateServerResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    OpsWorksCMV20161101 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opsworkscm#OpsWorksCM_V2016_11_01"
      service.name = "OpsWorksCMV20161101"
      service.version = "2016-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpsWorksCM", "arnNamespace" => "opsworks-cm", "cloudFormationName" => "OpsWorksCM", "cloudTrailEventSource" => "opsworkscm.amazonaws.com", "endpointPrefix" => "opsworks-cm"}, "aws.auth#sigv4" => {"name" => "opsworks-cm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS OpsWorks CM", "smithy.api#xmlNamespace" => {"uri" => "http://opsworks-cm.amazonaws.com/doc/2016-11-01/"}}
      service.add_operation(:associate_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#AssociateNode"
        operation.name = "AssociateNode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#CreateBackup"
        operation.name = "CreateBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#CreateServer"
        operation.name = "CreateServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_backup, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DeleteServer"
        operation.name = "DeleteServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_backups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeBackups"
        operation.name = "DescribeBackups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBackups.new
      end)
      service.add_operation(:describe_events, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_node_association_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeNodeAssociationStatus"
        operation.name = "DescribeNodeAssociationStatus"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeServers"
        operation.name = "DescribeServers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServers.new
      end)
      service.add_operation(:disassociate_node, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DisassociateNode"
        operation.name = "DisassociateNode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:export_server_engine_attribute, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#ExportServerEngineAttribute"
        operation.name = "ExportServerEngineAttribute"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerEngineAttributeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerEngineAttributeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:restore_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#RestoreServer"
        operation.name = "RestoreServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_maintenance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#StartMaintenance"
        operation.name = "StartMaintenance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMaintenanceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartMaintenanceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_server, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UpdateServer"
        operation.name = "UpdateServer"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_server_engine_attributes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UpdateServerEngineAttributes"
        operation.name = "UpdateServerEngineAttributes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
