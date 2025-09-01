# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorksCM
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSOpsWorksCMResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AWSOpsWorksCMResourceArn', name: 'AWSOpsWorksCMResourceArn', traits: {"smithy.api#pattern" => "^arn:aws.*:opsworks-cm:.*:[0-9]{12}:"})
    AccountAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AccountAttribute', name: 'AccountAttribute')
    AccountAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#AccountAttributes', name: 'AccountAttributes')
    AssociateNodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AssociateNodeRequest', name: 'AssociateNodeRequest')
    AssociateNodeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#AssociateNodeResponse', name: 'AssociateNodeResponse')
    AttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AttributeName', name: 'AttributeName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Z][A-Z0-9_]*$"})
    AttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#AttributeValue', name: 'AttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Backup = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Backup', name: 'Backup')
    BackupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#BackupId', name: 'BackupId', traits: {"smithy.api#length" => {"min" => 0, "max" => 79}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-\\.\\:]*$"})
    BackupRetentionCountDefinition = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#BackupRetentionCountDefinition', name: 'BackupRetentionCountDefinition', traits: {"smithy.api#range" => {"min" => 1}})
    BackupStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#BackupStatus', name: 'BackupStatus')
    BackupType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#BackupType', name: 'BackupType')
    Backups = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Backups', name: 'Backups')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.opsworkscm#Boolean', name: 'Boolean')
    CreateBackupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateBackupRequest', name: 'CreateBackupRequest')
    CreateBackupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateBackupResponse', name: 'CreateBackupResponse')
    CreateServerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateServerRequest', name: 'CreateServerRequest')
    CreateServerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#CreateServerResponse', name: 'CreateServerResponse')
    CustomCertificate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomCertificate', name: 'CustomCertificate', traits: {"smithy.api#length" => {"min" => 0, "max" => 2097152}, "smithy.api#pattern" => "^(?s)\\s*-----BEGIN CERTIFICATE-----.+-----END CERTIFICATE-----\\s*$"})
    CustomDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomDomain', name: 'CustomDomain', traits: {"smithy.api#length" => {"min" => 0, "max" => 253}, "smithy.api#pattern" => "^(((?!-)[A-Za-z0-9-]{0,62}[A-Za-z0-9])\\.)+((?!-)[A-Za-z0-9-]{1,62}[A-Za-z0-9])$"})
    CustomPrivateKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#CustomPrivateKey', name: 'CustomPrivateKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^(?ms)\\s*^-----BEGIN (?-s:.*)PRIVATE KEY-----$.*?^-----END (?-s:.*)PRIVATE KEY-----$\\s*$", "smithy.api#sensitive" => {}})
    DeleteBackupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteBackupRequest', name: 'DeleteBackupRequest')
    DeleteBackupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteBackupResponse', name: 'DeleteBackupResponse')
    DeleteServerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteServerRequest', name: 'DeleteServerRequest')
    DeleteServerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DeleteServerResponse', name: 'DeleteServerResponse')
    DescribeAccountAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeAccountAttributesRequest', name: 'DescribeAccountAttributesRequest')
    DescribeAccountAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeAccountAttributesResponse', name: 'DescribeAccountAttributesResponse')
    DescribeBackupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeBackupsRequest', name: 'DescribeBackupsRequest')
    DescribeBackupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeBackupsResponse', name: 'DescribeBackupsResponse')
    DescribeEventsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeEventsRequest', name: 'DescribeEventsRequest')
    DescribeEventsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeEventsResponse', name: 'DescribeEventsResponse')
    DescribeNodeAssociationStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeNodeAssociationStatusRequest', name: 'DescribeNodeAssociationStatusRequest')
    DescribeNodeAssociationStatusResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeNodeAssociationStatusResponse', name: 'DescribeNodeAssociationStatusResponse')
    DescribeServersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeServersRequest', name: 'DescribeServersRequest')
    DescribeServersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DescribeServersResponse', name: 'DescribeServersResponse')
    DisassociateNodeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DisassociateNodeRequest', name: 'DisassociateNodeRequest')
    DisassociateNodeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#DisassociateNodeResponse', name: 'DisassociateNodeResponse')
    EngineAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#EngineAttribute', name: 'EngineAttribute')
    EngineAttributeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributeName', name: 'EngineAttributeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    EngineAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributeValue', name: 'EngineAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)", "smithy.api#sensitive" => {}})
    EngineAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#EngineAttributes', name: 'EngineAttributes')
    ExportServerEngineAttributeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ExportServerEngineAttributeRequest', name: 'ExportServerEngineAttributeRequest')
    ExportServerEngineAttributeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ExportServerEngineAttributeResponse', name: 'ExportServerEngineAttributeResponse')
    InstanceProfileArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#InstanceProfileArn', name: 'InstanceProfileArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:instance-profile/"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#Integer', name: 'Integer')
    InvalidNextTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"smithy.api#error" => "client"})
    InvalidStateException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#InvalidStateException', name: 'InvalidStateException', traits: {"smithy.api#error" => "client"})
    KeyPair = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#KeyPair', name: 'KeyPair', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => ".*"})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaintenanceStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#MaintenanceStatus', name: 'MaintenanceStatus')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.opsworkscm#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    NodeAssociationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#NodeAssociationStatus', name: 'NodeAssociationStatus')
    NodeAssociationStatusToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NodeAssociationStatusToken', name: 'NodeAssociationStatusToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    NodeName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#NodeName', name: 'NodeName', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^[\\-\\p{Alnum}_:.]+$"})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RestoreServerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#RestoreServerRequest', name: 'RestoreServerRequest')
    RestoreServerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#RestoreServerResponse', name: 'RestoreServerResponse')
    Server = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Server', name: 'Server')
    ServerEvent = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ServerEvent', name: 'ServerEvent')
    ServerEvents = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#ServerEvents', name: 'ServerEvents')
    ServerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#ServerName', name: 'ServerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => "^[a-zA-Z][a-zA-Z0-9\\-]*$"})
    ServerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.opsworkscm#ServerStatus', name: 'ServerStatus')
    Servers = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Servers', name: 'Servers')
    ServiceRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#ServiceRoleArn', name: 'ServiceRoleArn', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/"})
    StartMaintenanceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#StartMaintenanceRequest', name: 'StartMaintenanceRequest')
    StartMaintenanceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#StartMaintenanceResponse', name: 'StartMaintenanceResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^(?s)"})
    Strings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#Strings', name: 'Strings')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.opsworkscm#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TimeWindowDefinition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.opsworkscm#TimeWindowDefinition', name: 'TimeWindowDefinition', traits: {"smithy.api#length" => {"min" => 0, "max" => 10000}, "smithy.api#pattern" => "^((Mon|Tue|Wed|Thu|Fri|Sat|Sun):)?([0-1][0-9]|2[0-3]):[0-5][0-9]$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.opsworkscm#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateServerEngineAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerEngineAttributesRequest', name: 'UpdateServerEngineAttributesRequest')
    UpdateServerEngineAttributesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerEngineAttributesResponse', name: 'UpdateServerEngineAttributesResponse')
    UpdateServerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerRequest', name: 'UpdateServerRequest')
    UpdateServerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#UpdateServerResponse', name: 'UpdateServerResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.opsworkscm#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client"})

    AccountAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>\n      The attribute name. The following are supported attribute names.\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <i>ServerLimit:</i> The number of current servers/maximum number of servers allowed. By default, you can have a \n        maximum of 10 servers.\n      </p>\n            </li>\n            <li>\n               <p>\n                  <i>ManualBackupLimit:</i> The number of current manual backups/maximum number of backups allowed. By default, \n        you can have a maximum \n        of 50 manual backups saved.\n      </p>\n            </li>\n         </ul>"}))
    AccountAttribute.add_member(:maximum, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Maximum', traits: {"smithy.api#documentation" => "<p>\n      The maximum allowed value.\n    </p>"}))
    AccountAttribute.add_member(:used, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Used', traits: {"smithy.api#documentation" => "<p>\n      The current usage, such as the current number of servers that are associated with the account.\n    </p>"}))
    AccountAttribute.type = Types::AccountAttribute
    AccountAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttribute)
    AssociateNodeRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server with which to associate the node.\n    </p>", "smithy.api#required" => {}}))
    AssociateNodeRequest.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>The name of the node.\n    </p>", "smithy.api#required" => {}}))
    AssociateNodeRequest.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>Engine attributes used for associating the node.\n    </p>\n         <p class=\"title\">\n            <b>Attributes accepted in a AssociateNode request for Chef</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHEF_ORGANIZATION</code>: The Chef organization\n          with which the node is associated. By default only one organization\n          named <code>default</code> can exist.\n      </p>\n            </li>\n            <li>\n               <p>\n                  <code>CHEF_AUTOMATE_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API.\n    </p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Attributes accepted in a AssociateNode request for Puppet</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node.\n    </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    AssociateNodeRequest.type = Types::AssociateNodeRequest
    AssociateNodeResponse.add_member(:node_association_status_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken', traits: {"smithy.api#documentation" => "<p>Contains a token which can be passed to the <code>DescribeNodeAssociationStatus</code> API call to get the status of the association request.\n    </p>"}))
    AssociateNodeResponse.type = Types::AssociateNodeResponse
    Backup.add_member(:backup_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BackupArn', traits: {"smithy.api#documentation" => "<p>The ARN of the backup.\n    </p>"}))
    Backup.add_member(:backup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#documentation" => "<p>\n      The generated ID of the backup. Example: <code>myServerName-yyyyMMddHHmmssSSS</code>\n         </p>"}))
    Backup.add_member(:backup_type, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupType, location_name: 'BackupType', traits: {"smithy.api#documentation" => "<p>\n      The backup type. Valid values are <code>automated</code> or <code>manual</code>.\n    </p>"}))
    Backup.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>\n      The time stamp when the backup was created in the database. Example: <code>2016-07-29T13:38:47.520Z</code>\n         </p>"}))
    Backup.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      A user-provided description for a manual backup. This field is empty for automated backups.\n    </p>"}))
    Backup.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>\n      The engine type that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:engine_model, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel', traits: {"smithy.api#documentation" => "<p>\n      The engine model that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>\n      The engine version that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn', traits: {"smithy.api#documentation" => "<p>\n      The EC2 instance profile ARN that is obtained from the server when the backup is created. Because this value is stored,\n      you are not required to provide the InstanceProfileArn again if you restore a backup.\n    </p>"}))
    Backup.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>\n      The instance type that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPair', traits: {"smithy.api#documentation" => "<p>\n      The key pair that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow', traits: {"smithy.api#documentation" => "<p>\n      The preferred backup period that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>\n      The preferred maintenance period that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:s3_data_size, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'S3DataSize', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>\n      This field is deprecated and is no longer used.\n    </p>"}))
    Backup.add_member(:s3_data_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3DataUrl', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>\n      This field is deprecated and is no longer used.\n    </p>"}))
    Backup.add_member(:s3_log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3LogUrl', traits: {"smithy.api#documentation" => "<p>\n      The Amazon S3 URL of the backup's log file.\n    </p>"}))
    Backup.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>\n      The security group IDs that are obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>\n      The name of the server from which the backup was made.\n    </p>"}))
    Backup.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>\n      The service role ARN that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of a backup while in progress.\n    </p>"}))
    Backup.add_member(:status_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusDescription', traits: {"smithy.api#documentation" => "<p>\n      An informational message about backup status.\n    </p>"}))
    Backup.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>\n      The subnet IDs that are obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:tools_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ToolsVersion', traits: {"smithy.api#documentation" => "<p>\n      The version of OpsWorks CM-specific tools that is obtained from the server when the backup is created.\n    </p>"}))
    Backup.add_member(:user_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'UserArn', traits: {"smithy.api#documentation" => "<p>\n      The user ARN of the requester for manual backups. This field is empty for automated backups.\n    </p>"}))
    Backup.type = Types::Backup
    BackupStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    BackupStatus.add_member(:ok, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OK', traits: {"smithy.api#enumValue" => "OK"}))
    BackupStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    BackupStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    BackupType.add_member(:automated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATED', traits: {"smithy.api#enumValue" => "AUTOMATED"}))
    BackupType.add_member(:manual, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MANUAL', traits: {"smithy.api#enumValue" => "MANUAL"}))
    Backups.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Backup)
    CreateBackupRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server that you want to back up.\n    </p>", "smithy.api#required" => {}}))
    CreateBackupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>\n      A user-defined description of the backup.\n    </p>"}))
    CreateBackupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values to attach to an OpsWorks CM server backup.</p>\n         <ul>\n            <li>\n               <p>The key cannot be empty.</p>\n            </li>\n            <li>\n               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the \n        following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the \n        following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>\n            </li>\n            <li>\n               <p>A maximum of 50 user-applied tags is allowed for tag-supported OpsWorks CM resources.</p>\n            </li>\n         </ul>"}))
    CreateBackupRequest.type = Types::CreateBackupRequest
    CreateBackupResponse.add_member(:backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Backup, location_name: 'Backup', traits: {"smithy.api#documentation" => "<p>Backup created by request.</p>"}))
    CreateBackupResponse.type = Types::CreateBackupResponse
    CreateServerRequest.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AssociatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>\n        Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.\n      </p>"}))
    CreateServerRequest.add_member(:custom_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain', traits: {"smithy.api#documentation" => "<p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom \n      domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the \n      generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code> \n      and <code>CustomPrivateKey</code>.</p>"}))
    CreateServerRequest.add_member(:custom_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomCertificate, location_name: 'CustomCertificate', traits: {"smithy.api#documentation" => "<p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a \n      custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>\n         <ul>\n            <li>\n               <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>\n            </li>\n            <li>\n               <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>\n            </li>\n            <li>\n               <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires \n        (the certificate's <code>NotAfter</code> date).</p>\n            </li>\n            <li>\n               <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>\n            </li>\n            <li>\n               <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>\n            </li>\n         </ul>"}))
    CreateServerRequest.add_member(:custom_private_key, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomPrivateKey, location_name: 'CustomPrivateKey', traits: {"smithy.api#documentation" => "<p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. \n      If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>"}))
    CreateServerRequest.add_member(:disable_automated_backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup', traits: {"smithy.api#documentation" => "<p>\n        Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.\n      </p>"}))
    CreateServerRequest.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>\n        The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.\n      </p>", "smithy.api#required" => {}}))
    CreateServerRequest.add_member(:engine_model, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel', traits: {"smithy.api#documentation" => "<p>\n        The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.\n      </p>"}))
    CreateServerRequest.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>\n        The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion \n        is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.\n      </p>"}))
    CreateServerRequest.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>Optional engine attributes on a specified server.\n    </p>\n         <p class=\"title\">\n            <b>Attributes accepted in a Chef createServer request:</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A\n      base64-encoded RSA public key. The corresponding private key is required to\n      access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is\n      generated and returned in the response.\n      </p>\n            </li>\n            <li>\n               <p>\n                  <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:\n      The password for the administrative user in the Chef Automate web-based dashboard. The\n      password length is a minimum of eight characters, and a maximum of 32. The\n      password can contain letters, numbers, and special characters\n      (!/@\#$%^&+=_). The password must contain at least one lower case letter, one upper\n      case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is\n      generated and returned in the response.</p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Attributes accepted in a Puppet createServer request:</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository \n        (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add \n        PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>\n            </li>\n         </ul>"}))
    CreateServerRequest.add_member(:backup_retention_count, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupRetentionCountDefinition, location_name: 'BackupRetentionCount', traits: {"smithy.api#documentation" => "<p>\n        The number of automated backups that you want to keep. Whenever a new backup is created, OpsWorks CM deletes the oldest backups if this number is exceeded.\n        The default value is <code>1</code>.\n      </p>"}))
    CreateServerRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>\n        The name of the server. The server name must be unique within your Amazon Web Services account, within each region.\n        Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.\n      </p>", "smithy.api#required" => {}}))
    CreateServerRequest.add_member(:instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceProfileArn, location_name: 'InstanceProfileArn', traits: {"smithy.api#documentation" => "<p>\n        The ARN of the instance profile that your Amazon EC2\n        instances use. The OpsWorks console typically creates\n        the instance profile for you</p>", "smithy.api#required" => {}}))
    CreateServerRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>\n        The Amazon EC2 instance type to use. For example, <code>m5.large</code>.\n      </p>", "smithy.api#required" => {}}))
    CreateServerRequest.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: 'KeyPair', traits: {"smithy.api#documentation" => "<p>\n        The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.\n      </p>"}))
    CreateServerRequest.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>\n      The start time for a one-hour period each week during which OpsWorks CM performs maintenance on the instance.\n      Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).\n      The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.\n    </p>\n         <p>\n            <b>Example:</b>\n            <code>Mon:08:00</code>,\n      which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)\n    </p>"}))
    CreateServerRequest.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow', traits: {"smithy.api#documentation" => "<p>\n      The start time for a one-hour period during which OpsWorks CM backs up application-level data on your server\n      if automated backups are enabled. Valid values must be specified in one of the following formats:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>HH:MM</code> for daily backups</p>\n            </li>\n            <li>\n               <p>\n                  <code>DDD:HH:MM</code> for weekly backups</p>\n            </li>\n         </ul>\n         <p>\n            <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>\n         <p>\n            <b>Example:</b>\n            <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>\n         <p>\n            <b>Example:</b>\n            <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>"}))
    CreateServerRequest.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>\n      A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups\n      must be within the VPC that is specified by <code>SubnetIds</code>.\n    </p>\n         <p>\n      If you do not specify this parameter, OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to\n      0.0.0.0/0 (everyone).\n    </p>"}))
    CreateServerRequest.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceRoleArn, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>\n      The service role that the OpsWorks CM service backend uses to work with your account.</p>", "smithy.api#required" => {}}))
    CreateServerRequest.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>\n      The IDs of subnets in which to launch the server EC2 instance.\n    </p>\n         <p>\n      Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have \"Auto Assign Public IP\" enabled.\n    </p>\n         <p>\n      EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that \n      is selected by Amazon EC2. If you specify subnet IDs, the VPC must have \"Auto Assign Public IP\" enabled.\n    </p>\n         <p>For more information about supported Amazon EC2 platforms, see\n      <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html\">Supported Platforms</a>.</p>"}))
    CreateServerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values to attach to an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server.</p>\n         <ul>\n            <li>\n               <p>The key cannot be empty.</p>\n            </li>\n            <li>\n               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>\n               </p>\n            </li>\n            <li>\n               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>\n               </p>\n            </li>\n            <li>\n               <p>Leading and trailing spaces are trimmed from both the key and value.</p>\n            </li>\n            <li>\n               <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server.</p>\n            </li>\n         </ul>"}))
    CreateServerRequest.add_member(:backup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#documentation" => "<p>\n      If you specify this field, OpsWorks CM creates the server by using the backup represented by BackupId.\n    </p>"}))
    CreateServerRequest.type = Types::CreateServerRequest
    CreateServerResponse.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server', traits: {"smithy.api#documentation" => "<p>The server that is created by the request.\n    </p>"}))
    CreateServerResponse.type = Types::CreateServerResponse
    DeleteBackupRequest.add_member(:backup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#documentation" => "<p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs.\n      Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>.\n    </p>", "smithy.api#required" => {}}))
    DeleteBackupRequest.type = Types::DeleteBackupRequest
    DeleteBackupResponse.type = Types::DeleteBackupResponse
    DeleteServerRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The ID of the server to delete.</p>", "smithy.api#required" => {}}))
    DeleteServerRequest.type = Types::DeleteServerRequest
    DeleteServerResponse.type = Types::DeleteServerResponse
    DescribeAccountAttributesRequest.type = Types::DescribeAccountAttributesRequest
    DescribeAccountAttributesResponse.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountAttributes, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>\n      The attributes that are currently set for the account.\n    </p>"}))
    DescribeAccountAttributesResponse.type = Types::DescribeAccountAttributesResponse
    DescribeBackupsRequest.add_member(:backup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#documentation" => "<p>Describes a single backup.\n    </p>"}))
    DescribeBackupsRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>Returns backups for the server with the specified ServerName.\n    </p>"}))
    DescribeBackupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"}))
    DescribeBackupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"}))
    DescribeBackupsRequest.type = Types::DescribeBackupsRequest
    DescribeBackupsResponse.add_member(:backups, Smithy::Schema::Shapes::ShapeRef.new(shape: Backups, location_name: 'Backups', traits: {"smithy.api#documentation" => "<p>Contains the response to a <code>DescribeBackups</code> request.\n    </p>"}))
    DescribeBackupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>"}))
    DescribeBackupsResponse.type = Types::DescribeBackupsResponse
    DescribeEventsRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server for which you want to view events.</p>", "smithy.api#required" => {}}))
    DescribeEventsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>NextToken is a string that is returned in some command responses. It indicates that\n      not all entries have been returned, and that you must run at least one more request to get remaining\n      items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous\n      results as the value of the <code>nextToken</code> parameter. If there are no more results,\n      the response object's <code>nextToken</code> parameter value is <code>null</code>.\n      Setting a <code>nextToken</code> value that was not returned in\n      your previous results causes an <code>InvalidNextTokenException</code> to occur.\n    </p>"}))
    DescribeEventsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>To receive a paginated response, use this parameter to specify the maximum number\n      of results to be returned with a single call. If the number of available results exceeds\n      this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>\n      request parameter to get the next set of results.\n    </p>"}))
    DescribeEventsRequest.type = Types::DescribeEventsRequest
    DescribeEventsResponse.add_member(:server_events, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEvents, location_name: 'ServerEvents', traits: {"smithy.api#documentation" => "<p>Contains the response to a <code>DescribeEvents</code> request.\n    </p>"}))
    DescribeEventsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>NextToken is a string that is returned in some command responses. It indicates that\n      not all entries have been returned, and that you must run at least one more request to get remaining\n      items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous\n      results as the value of the <code>nextToken</code> parameter. If there are no more results,\n      the response object's <code>nextToken</code> parameter value is <code>null</code>.\n      Setting a <code>nextToken</code> value that was not returned in\n      your previous results causes an <code>InvalidNextTokenException</code> to occur.\n    </p>"}))
    DescribeEventsResponse.type = Types::DescribeEventsResponse
    DescribeNodeAssociationStatusRequest.add_member(:node_association_status_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken', traits: {"smithy.api#documentation" => "<p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.\n    </p>", "smithy.api#required" => {}}))
    DescribeNodeAssociationStatusRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server from which to disassociate the node.\n    </p>", "smithy.api#required" => {}}))
    DescribeNodeAssociationStatusRequest.type = Types::DescribeNodeAssociationStatusRequest
    DescribeNodeAssociationStatusResponse.add_member(:node_association_status, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatus, location_name: 'NodeAssociationStatus', traits: {"smithy.api#documentation" => "<p>The status of the association or disassociation request.\n    </p>\n         <p class=\"title\">\n            <b>Possible values:</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>SUCCESS</code>: The association or disassociation succeeded.\n      </p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code>: The association or disassociation failed.\n      </p>\n            </li>\n            <li>\n               <p>\n                  <code>IN_PROGRESS</code>: The association or disassociation is still in progress.\n      </p>\n            </li>\n         </ul>"}))
    DescribeNodeAssociationStatusResponse.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>Attributes specific to the node association. \n      In Puppet, the attribute PUPPET_NODE_CERT contains the signed certificate (the result of the CSR).\n    </p>"}))
    DescribeNodeAssociationStatusResponse.type = Types::DescribeNodeAssociationStatusResponse
    DescribeServersRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>Describes the server with the specified ServerName.</p>"}))
    DescribeServersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeServers</code> requests.\n    </p>"}))
    DescribeServersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeServers</code> requests.\n    </p>"}))
    DescribeServersRequest.type = Types::DescribeServersRequest
    DescribeServersResponse.add_member(:servers, Smithy::Schema::Shapes::ShapeRef.new(shape: Servers, location_name: 'Servers', traits: {"smithy.api#documentation" => "<p>Contains the response to a <code>DescribeServers</code> request.</p>\n         <p>\n            <i>For Chef Automate servers:</i>  If <code>DescribeServersResponse$Servers$EngineAttributes</code> includes \n      CHEF_MAJOR_UPGRADE_AVAILABLE, you can upgrade the Chef Automate server to Chef Automate 2. To be eligible for upgrade, a server running \n      Chef Automate 1 must have had at least one successful maintenance run after November 1, 2019.</p>\n         <p>\n            <i>For Puppet servers:</i>\n            <code>DescribeServersResponse$Servers$EngineAttributes</code> contains\n      the following two responses:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PUPPET_API_CA_CERT</code>, the PEM-encoded CA certificate that is used by the Puppet API over TCP port number 8140. \n        The CA certificate is also used to sign node certificates.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PUPPET_API_CRL</code>, a certificate revocation list. The certificate revocation list is for internal \n        maintenance purposes only. For more information about the Puppet certificate revocation list, see \n        <a href=\"https://puppet.com/docs/puppet/5.5/man/certificate_revocation_list.html\">Man Page: puppet certificate_revocation_list</a> in the Puppet documentation.</p>\n            </li>\n         </ul>"}))
    DescribeServersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>This is not currently implemented for <code>DescribeServers</code> requests.\n    </p>"}))
    DescribeServersResponse.type = Types::DescribeServersResponse
    DisassociateNodeRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server from which to disassociate the node.\n    </p>", "smithy.api#required" => {}}))
    DisassociateNodeRequest.add_member(:node_name, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeName, location_name: 'NodeName', traits: {"smithy.api#documentation" => "<p>The name of the client node.\n    </p>", "smithy.api#required" => {}}))
    DisassociateNodeRequest.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet.\n    </p>\n         <p class=\"title\">\n            <b>Attributes required in a DisassociateNode request for Chef</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHEF_ORGANIZATION</code>: The Chef organization\n          with which the node was associated. By default only one organization\n          named <code>default</code> can exist.\n      </p>\n            </li>\n         </ul>"}))
    DisassociateNodeRequest.type = Types::DisassociateNodeRequest
    DisassociateNodeResponse.add_member(:node_association_status_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NodeAssociationStatusToken, location_name: 'NodeAssociationStatusToken', traits: {"smithy.api#documentation" => "<p>Contains a token which can be passed to the\n      <code>DescribeNodeAssociationStatus</code> API call to get the status of\n      the disassociation request.\n    </p>"}))
    DisassociateNodeResponse.type = Types::DisassociateNodeResponse
    EngineAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributeName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the engine attribute.\n    </p>"}))
    EngineAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The value of the engine attribute.\n    </p>"}))
    EngineAttribute.type = Types::EngineAttribute
    EngineAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttribute)
    ExportServerEngineAttributeRequest.add_member(:export_attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExportAttributeName', traits: {"smithy.api#documentation" => "<p>The name of the export attribute. Currently, the supported export attribute is <code>Userdata</code>. \n      This exports a user data script that includes parameters and values provided in the <code>InputAttributes</code> list.</p>", "smithy.api#required" => {}}))
    ExportServerEngineAttributeRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server from which you are exporting the attribute.</p>", "smithy.api#required" => {}}))
    ExportServerEngineAttributeRequest.add_member(:input_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'InputAttributes', traits: {"smithy.api#documentation" => "<p>The list of engine attributes. The list type is <code>EngineAttribute</code>. An <code>EngineAttribute</code> list item \n      is a pair that includes an attribute name and its value. For the <code>Userdata</code> ExportAttributeName, the following are \n      supported engine attribute names.</p>\n         <ul>\n            <li>\n               <p>\n                  <b>RunList</b> In Chef, a list of roles or recipes that are run in the specified order. \n        In Puppet, this parameter is ignored.</p>\n            </li>\n            <li>\n               <p>\n                  <b>OrganizationName</b> In Chef, an organization name. OpsWorks for Chef Automate \n        always creates the organization <code>default</code>. In Puppet, this parameter is ignored.</p>\n            </li>\n            <li>\n               <p>\n                  <b>NodeEnvironment</b> In Chef, a node environment (for example, development, staging, or one-box). \n        In Puppet, this parameter is ignored.</p>\n            </li>\n            <li>\n               <p>\n                  <b>NodeClientVersion</b> In Chef, the version of the Chef engine (three numbers separated \n        by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, \n        this parameter is ignored.</p>\n            </li>\n         </ul>"}))
    ExportServerEngineAttributeRequest.type = Types::ExportServerEngineAttributeRequest
    ExportServerEngineAttributeResponse.add_member(:engine_attribute, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttribute, location_name: 'EngineAttribute', traits: {"smithy.api#documentation" => "<p>The requested engine attribute pair with attribute name and value.</p>"}))
    ExportServerEngineAttributeResponse.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The server name used in the request.</p>"}))
    ExportServerEngineAttributeResponse.type = Types::ExportServerEngineAttributeResponse
    InvalidNextTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message that can contain more detail about a nextToken failure.\n    </p>"}))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    InvalidStateException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message that provides more detail if a resource is\n      in a state that is not valid for performing a specified action.\n    </p>"}))
    InvalidStateException.type = Types::InvalidStateException
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message that the maximum allowed number of servers or backups has been exceeded.\n    </p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, \n        <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>NextToken is a string that is returned in some command responses. It indicates that\n        not all entries have been returned, and that you must run at least one more request to get remaining\n        items. To get remaining results, call <code>ListTagsForResource</code> again, and assign the token from the previous\n        results as the value of the <code>nextToken</code> parameter. If there are no more results,\n        the response object's <code>nextToken</code> parameter value is <code>null</code>.\n        Setting a <code>nextToken</code> value that was not returned in\n        your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>"}))
    ListTagsForResourceRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>To receive a paginated response, use this parameter to specify the maximum number\n        of results to be returned with a single call. If the number of available results exceeds\n        this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>\n        request parameter to get the next set of results.</p>"}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Tags that have been applied to the resource.</p>"}))
    ListTagsForResourceResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that you can use as the value of <code>NextToken</code> in subsequent calls to the API to show more results.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MaintenanceStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    MaintenanceStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NodeAssociationStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    NodeAssociationStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    NodeAssociationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists.\n    </p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message that can contain more detail about problems locating or accessing a resource.\n    </p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RestoreServerRequest.add_member(:backup_id, Smithy::Schema::Shapes::ShapeRef.new(shape: BackupId, location_name: 'BackupId', traits: {"smithy.api#documentation" => "<p> The ID of the backup that you want to use to restore a server.\n    </p>", "smithy.api#required" => {}}))
    RestoreServerRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p> The name of the server that you want to restore.\n    </p>", "smithy.api#required" => {}}))
    RestoreServerRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p> The type of instance to restore. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code>\n      For example, <code>m5.large</code>. Valid values are <code>m5.large</code>, <code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not specify this parameter,\n      RestoreServer uses the instance type from the specified backup.\n    </p>"}))
    RestoreServerRequest.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: KeyPair, location_name: 'KeyPair', traits: {"smithy.api#documentation" => "<p> The name of the key pair to set on the new EC2 instance. This can be helpful\n      if the administrator no longer has the SSH key.\n    </p>"}))
    RestoreServerRequest.type = Types::RestoreServerRequest
    RestoreServerResponse.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server'))
    RestoreServerResponse.type = Types::RestoreServerResponse
    Server.add_member(:associate_public_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AssociatePublicIpAddress', traits: {"smithy.api#documentation" => "<p>Associate a public IP address with a server that you are launching.\n    </p>"}))
    Server.add_member(:backup_retention_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionCount', traits: {"smithy.api#documentation" => "<p>The number of automated backups to keep.\n    </p>"}))
    Server.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server.\n    </p>"}))
    Server.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>Time stamp of server creation. Example <code>2016-07-29T13:38:47.520Z</code>\n         </p>"}))
    Server.add_member(:cloud_formation_stack_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CloudFormationStackArn', traits: {"smithy.api#documentation" => "<p>The ARN of the CloudFormation stack that was used to create the server.\n    </p>"}))
    Server.add_member(:custom_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomDomain, location_name: 'CustomDomain', traits: {"smithy.api#documentation" => "<p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. \n      You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.</p>"}))
    Server.add_member(:disable_automated_backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup', traits: {"smithy.api#documentation" => "<p>Disables automated backups. The number of stored backups is dependent on the value of PreferredBackupCount.\n    </p>"}))
    Server.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>\n      A DNS name that can be used to access the engine. Example: <code>myserver-asdfghjkl.us-east-1.opsworks.io</code>. \n      You cannot access the server by using the <code>Endpoint</code> value if the server has a <code>CustomDomain</code> specified.\n    </p>"}))
    Server.add_member(:engine, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Engine', traits: {"smithy.api#documentation" => "<p>The engine type of the server. Valid values in this release include <code>ChefAutomate</code> and <code>Puppet</code>.\n    </p>"}))
    Server.add_member(:engine_model, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineModel', traits: {"smithy.api#documentation" => "<p>The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.\n    </p>"}))
    Server.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>The response of a createServer() request returns the master\n    credential to access the server in EngineAttributes. These\n    credentials are not stored by OpsWorks CM; they are returned only as part of the result of createServer().\n    </p>\n         <p class=\"title\">\n            <b>Attributes returned in a createServer response for Chef</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A base64-encoded RSA private key that is\n        generated by OpsWorks for Chef Automate. This private key is required to access\n      the Chef API.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CHEF_STARTER_KIT</code>: A base64-encoded ZIP file.\n      The ZIP file contains a Chef starter kit, which includes a README, a\n      configuration file, and the required RSA private key. Save this file, unzip it,\n      and then change to the directory where you've unzipped the file contents.\n      From this directory, you can run Knife commands.</p>\n            </li>\n         </ul>\n         <p class=\"title\">\n            <b>Attributes returned in a createServer response for Puppet</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>PUPPET_STARTER_KIT</code>: A base64-encoded ZIP file.\n        The ZIP file contains a Puppet starter kit, including a README and a\n        required private key. Save this file, unzip it,\n        and then change to the directory where you've unzipped the file contents.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PUPPET_ADMIN_PASSWORD</code>: An administrator password that you can use to sign in to the \n        Puppet Enterprise console after the server is online.</p>\n            </li>\n         </ul>"}))
    Server.add_member(:engine_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EngineVersion', traits: {"smithy.api#documentation" => "<p>The engine version of the server. For a Chef server, the valid value for EngineVersion is \n      currently <code>2</code>. For a Puppet server, specify either <code>2019</code> or <code>2017</code>.\n    </p>"}))
    Server.add_member(:instance_profile_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceProfileArn', traits: {"smithy.api#documentation" => "<p>The instance profile ARN of the server.\n    </p>"}))
    Server.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>\n      The instance type for the server, as specified in the CloudFormation stack. This might not be the same instance type \n      that is shown in the EC2 console.\n    </p>"}))
    Server.add_member(:key_pair, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPair', traits: {"smithy.api#documentation" => "<p>The key pair associated with the server.\n    </p>"}))
    Server.add_member(:maintenance_status, Smithy::Schema::Shapes::ShapeRef.new(shape: MaintenanceStatus, location_name: 'MaintenanceStatus', traits: {"smithy.api#documentation" => "<p>The status of the most recent server maintenance run. Shows <code>SUCCESS</code> or <code>FAILED</code>.\n    </p>"}))
    Server.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow', traits: {"smithy.api#documentation" => "<p>The preferred maintenance period specified for the server.\n    </p>"}))
    Server.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow', traits: {"smithy.api#documentation" => "<p>The preferred backup period specified for the server.\n    </p>"}))
    Server.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>\n      The security group IDs for the server, as specified in the CloudFormation stack.\n      These might not be the same security groups that are shown in the EC2 console.\n    </p>"}))
    Server.add_member(:service_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServiceRoleArn', traits: {"smithy.api#documentation" => "<p>The service role ARN used to create the server.\n    </p>"}))
    Server.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>\n      The server's status. This field displays the states of actions in progress, such as creating, running, or backing up the server,\n      as well as the server's health state.\n    </p>"}))
    Server.add_member(:status_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusReason', traits: {"smithy.api#documentation" => "<p>\n      Depending on the server status, this field has either a human-readable\n      message (such as a create or backup error), or an escaped block of JSON (used for health check results).\n    </p>"}))
    Server.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Strings, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>\n      The subnet IDs specified in a CreateServer request.\n    </p>"}))
    Server.add_member(:server_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerArn', traits: {"smithy.api#documentation" => "<p>The ARN of the server.\n    </p>"}))
    Server.type = Types::Server
    ServerEvent.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The time when the event occurred.\n    </p>"}))
    ServerEvent.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server on or for which the event occurred.\n    </p>"}))
    ServerEvent.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A human-readable informational or status message.</p>"}))
    ServerEvent.add_member(:log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LogUrl', traits: {"smithy.api#documentation" => "<p>The Amazon S3 URL of the event's log file.</p>"}))
    ServerEvent.type = Types::ServerEvent
    ServerEvents.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerEvent)
    ServerStatus.add_member(:backing_up, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BACKING_UP', traits: {"smithy.api#enumValue" => "BACKING_UP"}))
    ServerStatus.add_member(:connection_lost, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTION_LOST', traits: {"smithy.api#enumValue" => "CONNECTION_LOST"}))
    ServerStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ServerStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ServerStatus.add_member(:modifying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MODIFYING', traits: {"smithy.api#enumValue" => "MODIFYING"}))
    ServerStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ServerStatus.add_member(:healthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEALTHY', traits: {"smithy.api#enumValue" => "HEALTHY"}))
    ServerStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ServerStatus.add_member(:restoring, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESTORING', traits: {"smithy.api#enumValue" => "RESTORING"}))
    ServerStatus.add_member(:setup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SETUP', traits: {"smithy.api#enumValue" => "SETUP"}))
    ServerStatus.add_member(:under_maintenance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNDER_MAINTENANCE', traits: {"smithy.api#enumValue" => "UNDER_MAINTENANCE"}))
    ServerStatus.add_member(:unhealthy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNHEALTHY', traits: {"smithy.api#enumValue" => "UNHEALTHY"}))
    ServerStatus.add_member(:terminated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TERMINATED', traits: {"smithy.api#enumValue" => "TERMINATED"}))
    Servers.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Server)
    StartMaintenanceRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server on which to run maintenance.\n    </p>", "smithy.api#required" => {}}))
    StartMaintenanceRequest.add_member(:engine_attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EngineAttributes, location_name: 'EngineAttributes', traits: {"smithy.api#documentation" => "<p>Engine attributes that are specific to the server on which you want to run maintenance.</p>\n         <p class=\"title\">\n            <b>Attributes accepted in a StartMaintenance request for Chef</b>\n         </p>\n         <ul>\n            <li>\n               <p>\n                  <code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is eligible for upgrade to Chef Automate 2, \n        add this engine attribute to a <code>StartMaintenance</code> request and set the value to <code>true</code> to upgrade the server to Chef Automate 2. For more information, see \n        <a href=\"https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html\">Upgrade an OpsWorks for Chef Automate Server to Chef Automate 2</a>.\n      </p>\n            </li>\n         </ul>"}))
    StartMaintenanceRequest.type = Types::StartMaintenanceRequest
    StartMaintenanceResponse.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server', traits: {"smithy.api#documentation" => "<p>Contains the response to a <code>StartMaintenance</code> request.\n    </p>"}))
    StartMaintenanceResponse.type = Types::StartMaintenanceResponse
    Strings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>A tag key, such as <code>Stage</code> or <code>Name</code>. A tag key cannot be empty. The key can be a maximum of 127 characters, \n      and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>An optional tag value, such as <code>Production</code> or <code>test-owcm-server</code>. The value can be a maximum of 255 characters, \n      and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>\n         </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of a resource to which you want to apply tags. For example, \n      <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A map that contains tag keys and tag values to attach to OpsWorks CM servers or backups.</p>\n         <ul>\n            <li>\n               <p>The key cannot be empty.</p>\n            </li>\n            <li>\n               <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>\n               </p>\n            </li>\n            <li>\n               <p>Leading and trailing white spaces are trimmed from both the key and value.</p>\n            </li>\n            <li>\n               <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server or backup.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AWSOpsWorksCMResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Number (ARN) of a resource from which you want to remove tags. For example, \n      <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The keys of tags that you want to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateServerEngineAttributesRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server to update.\n    </p>", "smithy.api#required" => {}}))
    UpdateServerEngineAttributesRequest.add_member(:attribute_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeName, location_name: 'AttributeName', traits: {"smithy.api#documentation" => "<p>The name of the engine attribute to update.\n    </p>", "smithy.api#required" => {}}))
    UpdateServerEngineAttributesRequest.add_member(:attribute_value, Smithy::Schema::Shapes::ShapeRef.new(shape: AttributeValue, location_name: 'AttributeValue', traits: {"smithy.api#documentation" => "<p>The value to set for the attribute.\n    </p>"}))
    UpdateServerEngineAttributesRequest.type = Types::UpdateServerEngineAttributesRequest
    UpdateServerEngineAttributesResponse.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server', traits: {"smithy.api#documentation" => "<p>Contains the response to an <code>UpdateServerEngineAttributes</code> request.\n    </p>"}))
    UpdateServerEngineAttributesResponse.type = Types::UpdateServerEngineAttributesResponse
    UpdateServerRequest.add_member(:disable_automated_backup, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DisableAutomatedBackup', traits: {"smithy.api#documentation" => "<p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. \n      Automated backups are enabled by default.\n    </p>"}))
    UpdateServerRequest.add_member(:backup_retention_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'BackupRetentionCount', traits: {"smithy.api#documentation" => "<p>Sets the number of automated backups that you want to keep.\n      </p>"}))
    UpdateServerRequest.add_member(:server_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerName, location_name: 'ServerName', traits: {"smithy.api#documentation" => "<p>The name of the server to update.\n    </p>", "smithy.api#required" => {}}))
    UpdateServerRequest.add_member(:preferred_maintenance_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredMaintenanceWindow'))
    UpdateServerRequest.add_member(:preferred_backup_window, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeWindowDefinition, location_name: 'PreferredBackupWindow'))
    UpdateServerRequest.type = Types::UpdateServerRequest
    UpdateServerResponse.add_member(:server, Smithy::Schema::Shapes::ShapeRef.new(shape: Server, location_name: 'Server', traits: {"smithy.api#documentation" => "<p>Contains the response to a <code>UpdateServer</code> request.\n    </p>"}))
    UpdateServerResponse.type = Types::UpdateServerResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Error or informational message that can contain more detail about a validation failure.\n    </p>"}))
    ValidationException.type = Types::ValidationException

    OpsWorksCMV20161101 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.opsworkscm#OpsWorksCM_V2016_11_01"
      service.name = "OpsWorksCMV20161101"
      service.version = "2016-11-01"
      service.traits = {"aws.api#service" => {"sdkId" => "OpsWorksCM", "arnNamespace" => "opsworks-cm", "cloudFormationName" => "OpsWorksCM", "cloudTrailEventSource" => "opsworkscm.amazonaws.com", "endpointPrefix" => "opsworks-cm"}, "aws.auth#sigv4" => {"name" => "opsworks-cm"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS OpsWorks CM", "smithy.api#xmlNamespace" => {"uri" => "http://opsworks-cm.amazonaws.com/doc/2016-11-01/"}}
      service.add_operation(:associate_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#AssociateNode"
        operation.name = "AssociateNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateNodeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_backup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#CreateBackup"
        operation.name = "CreateBackup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateBackupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#CreateServer"
        operation.name = "CreateServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateServerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_backup, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DeleteBackup"
        operation.name = "DeleteBackup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteBackupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DeleteServer"
        operation.name = "DeleteServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteServerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_account_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeAccountAttributes"
        operation.name = "DescribeAccountAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAccountAttributesResponse)
        operation.traits = {}
      end)
      service.add_operation(:describe_backups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeBackups"
        operation.name = "DescribeBackups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeBackupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeBackups.new
      end)
      service.add_operation(:describe_events, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeEvents"
        operation.name = "DescribeEvents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEventsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeEvents.new
      end)
      service.add_operation(:describe_node_association_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeNodeAssociationStatus"
        operation.name = "DescribeNodeAssociationStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeNodeAssociationStatusResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DescribeServers"
        operation.name = "DescribeServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeServers.new
      end)
      service.add_operation(:disassociate_node, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#DisassociateNode"
        operation.name = "DisassociateNode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNodeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateNodeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:export_server_engine_attribute, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#ExportServerEngineAttribute"
        operation.name = "ExportServerEngineAttribute"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerEngineAttributeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerEngineAttributeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListTagsForResource.new
      end)
      service.add_operation(:restore_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#RestoreServer"
        operation.name = "RestoreServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreServerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RestoreServerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_maintenance, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#StartMaintenance"
        operation.name = "StartMaintenance"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMaintenanceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartMaintenanceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_server, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UpdateServer"
        operation.name = "UpdateServer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_server_engine_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.opsworkscm#UpdateServerEngineAttributes"
        operation.name = "UpdateServerEngineAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerEngineAttributesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidStateException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
