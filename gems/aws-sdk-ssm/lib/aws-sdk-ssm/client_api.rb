# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module SSM
    # @api private
    module ClientApi

      include Seahorse::Model

      AccountId = Shapes::StringShape.new(name: 'AccountId')
      AccountIdList = Shapes::ListShape.new(name: 'AccountIdList')
      Activation = Shapes::StructureShape.new(name: 'Activation')
      ActivationCode = Shapes::StringShape.new(name: 'ActivationCode')
      ActivationDescription = Shapes::StringShape.new(name: 'ActivationDescription')
      ActivationId = Shapes::StringShape.new(name: 'ActivationId')
      ActivationList = Shapes::ListShape.new(name: 'ActivationList')
      AddTagsToResourceRequest = Shapes::StructureShape.new(name: 'AddTagsToResourceRequest')
      AddTagsToResourceResult = Shapes::StructureShape.new(name: 'AddTagsToResourceResult')
      AssociatedInstances = Shapes::StructureShape.new(name: 'AssociatedInstances')
      Association = Shapes::StructureShape.new(name: 'Association')
      AssociationAlreadyExists = Shapes::StructureShape.new(name: 'AssociationAlreadyExists')
      AssociationDescription = Shapes::StructureShape.new(name: 'AssociationDescription')
      AssociationDescriptionList = Shapes::ListShape.new(name: 'AssociationDescriptionList')
      AssociationDoesNotExist = Shapes::StructureShape.new(name: 'AssociationDoesNotExist')
      AssociationFilter = Shapes::StructureShape.new(name: 'AssociationFilter')
      AssociationFilterKey = Shapes::StringShape.new(name: 'AssociationFilterKey')
      AssociationFilterList = Shapes::ListShape.new(name: 'AssociationFilterList')
      AssociationFilterValue = Shapes::StringShape.new(name: 'AssociationFilterValue')
      AssociationLimitExceeded = Shapes::StructureShape.new(name: 'AssociationLimitExceeded')
      AssociationList = Shapes::ListShape.new(name: 'AssociationList')
      AssociationStatus = Shapes::StructureShape.new(name: 'AssociationStatus')
      AssociationStatusName = Shapes::StringShape.new(name: 'AssociationStatusName')
      BatchErrorMessage = Shapes::StringShape.new(name: 'BatchErrorMessage')
      Boolean = Shapes::BooleanShape.new(name: 'Boolean')
      CancelCommandRequest = Shapes::StructureShape.new(name: 'CancelCommandRequest')
      CancelCommandResult = Shapes::StructureShape.new(name: 'CancelCommandResult')
      Command = Shapes::StructureShape.new(name: 'Command')
      CommandFilter = Shapes::StructureShape.new(name: 'CommandFilter')
      CommandFilterKey = Shapes::StringShape.new(name: 'CommandFilterKey')
      CommandFilterList = Shapes::ListShape.new(name: 'CommandFilterList')
      CommandFilterValue = Shapes::StringShape.new(name: 'CommandFilterValue')
      CommandId = Shapes::StringShape.new(name: 'CommandId')
      CommandInvocation = Shapes::StructureShape.new(name: 'CommandInvocation')
      CommandInvocationList = Shapes::ListShape.new(name: 'CommandInvocationList')
      CommandInvocationStatus = Shapes::StringShape.new(name: 'CommandInvocationStatus')
      CommandList = Shapes::ListShape.new(name: 'CommandList')
      CommandMaxResults = Shapes::IntegerShape.new(name: 'CommandMaxResults')
      CommandPlugin = Shapes::StructureShape.new(name: 'CommandPlugin')
      CommandPluginList = Shapes::ListShape.new(name: 'CommandPluginList')
      CommandPluginName = Shapes::StringShape.new(name: 'CommandPluginName')
      CommandPluginOutput = Shapes::StringShape.new(name: 'CommandPluginOutput')
      CommandPluginStatus = Shapes::StringShape.new(name: 'CommandPluginStatus')
      CommandStatus = Shapes::StringShape.new(name: 'CommandStatus')
      Comment = Shapes::StringShape.new(name: 'Comment')
      ComputerName = Shapes::StringShape.new(name: 'ComputerName')
      CreateActivationRequest = Shapes::StructureShape.new(name: 'CreateActivationRequest')
      CreateActivationResult = Shapes::StructureShape.new(name: 'CreateActivationResult')
      CreateAssociationBatchRequest = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequest')
      CreateAssociationBatchRequestEntries = Shapes::ListShape.new(name: 'CreateAssociationBatchRequestEntries')
      CreateAssociationBatchRequestEntry = Shapes::StructureShape.new(name: 'CreateAssociationBatchRequestEntry')
      CreateAssociationBatchResult = Shapes::StructureShape.new(name: 'CreateAssociationBatchResult')
      CreateAssociationRequest = Shapes::StructureShape.new(name: 'CreateAssociationRequest')
      CreateAssociationResult = Shapes::StructureShape.new(name: 'CreateAssociationResult')
      CreateDocumentRequest = Shapes::StructureShape.new(name: 'CreateDocumentRequest')
      CreateDocumentResult = Shapes::StructureShape.new(name: 'CreateDocumentResult')
      CreatedDate = Shapes::TimestampShape.new(name: 'CreatedDate')
      DateTime = Shapes::TimestampShape.new(name: 'DateTime')
      DefaultInstanceName = Shapes::StringShape.new(name: 'DefaultInstanceName')
      DeleteActivationRequest = Shapes::StructureShape.new(name: 'DeleteActivationRequest')
      DeleteActivationResult = Shapes::StructureShape.new(name: 'DeleteActivationResult')
      DeleteAssociationRequest = Shapes::StructureShape.new(name: 'DeleteAssociationRequest')
      DeleteAssociationResult = Shapes::StructureShape.new(name: 'DeleteAssociationResult')
      DeleteDocumentRequest = Shapes::StructureShape.new(name: 'DeleteDocumentRequest')
      DeleteDocumentResult = Shapes::StructureShape.new(name: 'DeleteDocumentResult')
      DeregisterManagedInstanceRequest = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceRequest')
      DeregisterManagedInstanceResult = Shapes::StructureShape.new(name: 'DeregisterManagedInstanceResult')
      DescribeActivationsFilter = Shapes::StructureShape.new(name: 'DescribeActivationsFilter')
      DescribeActivationsFilterKeys = Shapes::StringShape.new(name: 'DescribeActivationsFilterKeys')
      DescribeActivationsFilterList = Shapes::ListShape.new(name: 'DescribeActivationsFilterList')
      DescribeActivationsRequest = Shapes::StructureShape.new(name: 'DescribeActivationsRequest')
      DescribeActivationsResult = Shapes::StructureShape.new(name: 'DescribeActivationsResult')
      DescribeAssociationRequest = Shapes::StructureShape.new(name: 'DescribeAssociationRequest')
      DescribeAssociationResult = Shapes::StructureShape.new(name: 'DescribeAssociationResult')
      DescribeDocumentPermissionRequest = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionRequest')
      DescribeDocumentPermissionResponse = Shapes::StructureShape.new(name: 'DescribeDocumentPermissionResponse')
      DescribeDocumentRequest = Shapes::StructureShape.new(name: 'DescribeDocumentRequest')
      DescribeDocumentResult = Shapes::StructureShape.new(name: 'DescribeDocumentResult')
      DescribeInstanceInformationRequest = Shapes::StructureShape.new(name: 'DescribeInstanceInformationRequest')
      DescribeInstanceInformationResult = Shapes::StructureShape.new(name: 'DescribeInstanceInformationResult')
      DescriptionInDocument = Shapes::StringShape.new(name: 'DescriptionInDocument')
      DocumentARN = Shapes::StringShape.new(name: 'DocumentARN')
      DocumentAlreadyExists = Shapes::StructureShape.new(name: 'DocumentAlreadyExists')
      DocumentContent = Shapes::StringShape.new(name: 'DocumentContent')
      DocumentDescription = Shapes::StructureShape.new(name: 'DocumentDescription')
      DocumentFilter = Shapes::StructureShape.new(name: 'DocumentFilter')
      DocumentFilterKey = Shapes::StringShape.new(name: 'DocumentFilterKey')
      DocumentFilterList = Shapes::ListShape.new(name: 'DocumentFilterList')
      DocumentFilterValue = Shapes::StringShape.new(name: 'DocumentFilterValue')
      DocumentHash = Shapes::StringShape.new(name: 'DocumentHash')
      DocumentHashType = Shapes::StringShape.new(name: 'DocumentHashType')
      DocumentIdentifier = Shapes::StructureShape.new(name: 'DocumentIdentifier')
      DocumentIdentifierList = Shapes::ListShape.new(name: 'DocumentIdentifierList')
      DocumentLimitExceeded = Shapes::StructureShape.new(name: 'DocumentLimitExceeded')
      DocumentName = Shapes::StringShape.new(name: 'DocumentName')
      DocumentOwner = Shapes::StringShape.new(name: 'DocumentOwner')
      DocumentParameter = Shapes::StructureShape.new(name: 'DocumentParameter')
      DocumentParameterDefaultValue = Shapes::StringShape.new(name: 'DocumentParameterDefaultValue')
      DocumentParameterDescrption = Shapes::StringShape.new(name: 'DocumentParameterDescrption')
      DocumentParameterList = Shapes::ListShape.new(name: 'DocumentParameterList')
      DocumentParameterName = Shapes::StringShape.new(name: 'DocumentParameterName')
      DocumentParameterType = Shapes::StringShape.new(name: 'DocumentParameterType')
      DocumentPermissionLimit = Shapes::StructureShape.new(name: 'DocumentPermissionLimit')
      DocumentPermissionType = Shapes::StringShape.new(name: 'DocumentPermissionType')
      DocumentSha1 = Shapes::StringShape.new(name: 'DocumentSha1')
      DocumentStatus = Shapes::StringShape.new(name: 'DocumentStatus')
      DuplicateInstanceId = Shapes::StructureShape.new(name: 'DuplicateInstanceId')
      ExpirationDate = Shapes::TimestampShape.new(name: 'ExpirationDate')
      FailedCreateAssociation = Shapes::StructureShape.new(name: 'FailedCreateAssociation')
      FailedCreateAssociationList = Shapes::ListShape.new(name: 'FailedCreateAssociationList')
      Fault = Shapes::StringShape.new(name: 'Fault')
      GetDocumentRequest = Shapes::StructureShape.new(name: 'GetDocumentRequest')
      GetDocumentResult = Shapes::StructureShape.new(name: 'GetDocumentResult')
      IPAddress = Shapes::StringShape.new(name: 'IPAddress')
      IamRole = Shapes::StringShape.new(name: 'IamRole')
      InstanceId = Shapes::StringShape.new(name: 'InstanceId')
      InstanceIdList = Shapes::ListShape.new(name: 'InstanceIdList')
      InstanceInformation = Shapes::StructureShape.new(name: 'InstanceInformation')
      InstanceInformationFilter = Shapes::StructureShape.new(name: 'InstanceInformationFilter')
      InstanceInformationFilterKey = Shapes::StringShape.new(name: 'InstanceInformationFilterKey')
      InstanceInformationFilterList = Shapes::ListShape.new(name: 'InstanceInformationFilterList')
      InstanceInformationFilterValue = Shapes::StringShape.new(name: 'InstanceInformationFilterValue')
      InstanceInformationFilterValueSet = Shapes::ListShape.new(name: 'InstanceInformationFilterValueSet')
      InstanceInformationList = Shapes::ListShape.new(name: 'InstanceInformationList')
      InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
      InvalidActivation = Shapes::StructureShape.new(name: 'InvalidActivation')
      InvalidActivationId = Shapes::StructureShape.new(name: 'InvalidActivationId')
      InvalidCommandId = Shapes::StructureShape.new(name: 'InvalidCommandId')
      InvalidDocument = Shapes::StructureShape.new(name: 'InvalidDocument')
      InvalidDocumentContent = Shapes::StructureShape.new(name: 'InvalidDocumentContent')
      InvalidDocumentOperation = Shapes::StructureShape.new(name: 'InvalidDocumentOperation')
      InvalidFilter = Shapes::StructureShape.new(name: 'InvalidFilter')
      InvalidFilterKey = Shapes::StructureShape.new(name: 'InvalidFilterKey')
      InvalidInstanceId = Shapes::StructureShape.new(name: 'InvalidInstanceId')
      InvalidInstanceInformationFilterValue = Shapes::StructureShape.new(name: 'InvalidInstanceInformationFilterValue')
      InvalidNextToken = Shapes::StructureShape.new(name: 'InvalidNextToken')
      InvalidNotificationConfig = Shapes::StructureShape.new(name: 'InvalidNotificationConfig')
      InvalidOutputFolder = Shapes::StructureShape.new(name: 'InvalidOutputFolder')
      InvalidParameters = Shapes::StructureShape.new(name: 'InvalidParameters')
      InvalidPermissionType = Shapes::StructureShape.new(name: 'InvalidPermissionType')
      InvalidResourceId = Shapes::StructureShape.new(name: 'InvalidResourceId')
      InvalidResourceType = Shapes::StructureShape.new(name: 'InvalidResourceType')
      InvalidRole = Shapes::StructureShape.new(name: 'InvalidRole')
      InvocationTraceOutput = Shapes::StringShape.new(name: 'InvocationTraceOutput')
      KeyList = Shapes::ListShape.new(name: 'KeyList')
      ListAssociationsRequest = Shapes::StructureShape.new(name: 'ListAssociationsRequest')
      ListAssociationsResult = Shapes::StructureShape.new(name: 'ListAssociationsResult')
      ListCommandInvocationsRequest = Shapes::StructureShape.new(name: 'ListCommandInvocationsRequest')
      ListCommandInvocationsResult = Shapes::StructureShape.new(name: 'ListCommandInvocationsResult')
      ListCommandsRequest = Shapes::StructureShape.new(name: 'ListCommandsRequest')
      ListCommandsResult = Shapes::StructureShape.new(name: 'ListCommandsResult')
      ListDocumentsRequest = Shapes::StructureShape.new(name: 'ListDocumentsRequest')
      ListDocumentsResult = Shapes::StructureShape.new(name: 'ListDocumentsResult')
      ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
      ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
      ManagedInstanceId = Shapes::StringShape.new(name: 'ManagedInstanceId')
      MaxDocumentSizeExceeded = Shapes::StructureShape.new(name: 'MaxDocumentSizeExceeded')
      MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
      MaxResultsEC2Compatible = Shapes::IntegerShape.new(name: 'MaxResultsEC2Compatible')
      ModifyDocumentPermissionRequest = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionRequest')
      ModifyDocumentPermissionResponse = Shapes::StructureShape.new(name: 'ModifyDocumentPermissionResponse')
      NextToken = Shapes::StringShape.new(name: 'NextToken')
      NotificationArn = Shapes::StringShape.new(name: 'NotificationArn')
      NotificationConfig = Shapes::StructureShape.new(name: 'NotificationConfig')
      NotificationEvent = Shapes::StringShape.new(name: 'NotificationEvent')
      NotificationEventList = Shapes::ListShape.new(name: 'NotificationEventList')
      NotificationType = Shapes::StringShape.new(name: 'NotificationType')
      ParameterName = Shapes::StringShape.new(name: 'ParameterName')
      ParameterValue = Shapes::StringShape.new(name: 'ParameterValue')
      ParameterValueList = Shapes::ListShape.new(name: 'ParameterValueList')
      Parameters = Shapes::MapShape.new(name: 'Parameters')
      PingStatus = Shapes::StringShape.new(name: 'PingStatus')
      PlatformType = Shapes::StringShape.new(name: 'PlatformType')
      PlatformTypeList = Shapes::ListShape.new(name: 'PlatformTypeList')
      RegistrationLimit = Shapes::IntegerShape.new(name: 'RegistrationLimit')
      RegistrationsCount = Shapes::IntegerShape.new(name: 'RegistrationsCount')
      RemoveTagsFromResourceRequest = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceRequest')
      RemoveTagsFromResourceResult = Shapes::StructureShape.new(name: 'RemoveTagsFromResourceResult')
      ResourceId = Shapes::StringShape.new(name: 'ResourceId')
      ResourceType = Shapes::StringShape.new(name: 'ResourceType')
      ResourceTypeForTagging = Shapes::StringShape.new(name: 'ResourceTypeForTagging')
      ResponseCode = Shapes::IntegerShape.new(name: 'ResponseCode')
      S3BucketName = Shapes::StringShape.new(name: 'S3BucketName')
      S3KeyPrefix = Shapes::StringShape.new(name: 'S3KeyPrefix')
      SendCommandRequest = Shapes::StructureShape.new(name: 'SendCommandRequest')
      SendCommandResult = Shapes::StructureShape.new(name: 'SendCommandResult')
      ServiceRole = Shapes::StringShape.new(name: 'ServiceRole')
      StatusAdditionalInfo = Shapes::StringShape.new(name: 'StatusAdditionalInfo')
      StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
      StatusUnchanged = Shapes::StructureShape.new(name: 'StatusUnchanged')
      String = Shapes::StringShape.new(name: 'String')
      StringList = Shapes::ListShape.new(name: 'StringList')
      Tag = Shapes::StructureShape.new(name: 'Tag')
      TagKey = Shapes::StringShape.new(name: 'TagKey')
      TagList = Shapes::ListShape.new(name: 'TagList')
      TagValue = Shapes::StringShape.new(name: 'TagValue')
      TimeoutSeconds = Shapes::IntegerShape.new(name: 'TimeoutSeconds')
      TooManyUpdates = Shapes::StructureShape.new(name: 'TooManyUpdates')
      UnsupportedPlatformType = Shapes::StructureShape.new(name: 'UnsupportedPlatformType')
      UpdateAssociationStatusRequest = Shapes::StructureShape.new(name: 'UpdateAssociationStatusRequest')
      UpdateAssociationStatusResult = Shapes::StructureShape.new(name: 'UpdateAssociationStatusResult')
      UpdateManagedInstanceRoleRequest = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleRequest')
      UpdateManagedInstanceRoleResult = Shapes::StructureShape.new(name: 'UpdateManagedInstanceRoleResult')
      Version = Shapes::StringShape.new(name: 'Version')

      AccountIdList.member = Shapes::ShapeRef.new(shape: AccountId, location_name: "AccountId")

      Activation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
      Activation.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
      Activation.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
      Activation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
      Activation.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit"))
      Activation.add_member(:registrations_count, Shapes::ShapeRef.new(shape: RegistrationsCount, location_name: "RegistrationsCount"))
      Activation.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
      Activation.add_member(:expired, Shapes::ShapeRef.new(shape: Boolean, location_name: "Expired"))
      Activation.add_member(:created_date, Shapes::ShapeRef.new(shape: CreatedDate, location_name: "CreatedDate"))
      Activation.struct_class = Types::Activation

      ActivationList.member = Shapes::ShapeRef.new(shape: Activation)

      AddTagsToResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
      AddTagsToResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
      AddTagsToResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
      AddTagsToResourceRequest.struct_class = Types::AddTagsToResourceRequest

      AddTagsToResourceResult.struct_class = Types::AddTagsToResourceResult

      Association.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
      Association.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      Association.struct_class = Types::Association

      AssociationDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
      AssociationDescription.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      AssociationDescription.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, location_name: "Date"))
      AssociationDescription.add_member(:status, Shapes::ShapeRef.new(shape: AssociationStatus, location_name: "Status"))
      AssociationDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      AssociationDescription.struct_class = Types::AssociationDescription

      AssociationDescriptionList.member = Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription")

      AssociationFilter.add_member(:key, Shapes::ShapeRef.new(shape: AssociationFilterKey, required: true, location_name: "key"))
      AssociationFilter.add_member(:value, Shapes::ShapeRef.new(shape: AssociationFilterValue, required: true, location_name: "value"))
      AssociationFilter.struct_class = Types::AssociationFilter

      AssociationFilterList.member = Shapes::ShapeRef.new(shape: AssociationFilter, location_name: "AssociationFilter")

      AssociationList.member = Shapes::ShapeRef.new(shape: Association, location_name: "Association")

      AssociationStatus.add_member(:date, Shapes::ShapeRef.new(shape: DateTime, required: true, location_name: "Date"))
      AssociationStatus.add_member(:name, Shapes::ShapeRef.new(shape: AssociationStatusName, required: true, location_name: "Name"))
      AssociationStatus.add_member(:message, Shapes::ShapeRef.new(shape: StatusMessage, required: true, location_name: "Message"))
      AssociationStatus.add_member(:additional_info, Shapes::ShapeRef.new(shape: StatusAdditionalInfo, location_name: "AdditionalInfo"))
      AssociationStatus.struct_class = Types::AssociationStatus

      CancelCommandRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, required: true, location_name: "CommandId"))
      CancelCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
      CancelCommandRequest.struct_class = Types::CancelCommandRequest

      CancelCommandResult.struct_class = Types::CancelCommandResult

      Command.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
      Command.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
      Command.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
      Command.add_member(:expires_after, Shapes::ShapeRef.new(shape: DateTime, location_name: "ExpiresAfter"))
      Command.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      Command.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, location_name: "InstanceIds"))
      Command.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
      Command.add_member(:status, Shapes::ShapeRef.new(shape: CommandStatus, location_name: "Status"))
      Command.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
      Command.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
      Command.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
      Command.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
      Command.struct_class = Types::Command

      CommandFilter.add_member(:key, Shapes::ShapeRef.new(shape: CommandFilterKey, required: true, location_name: "key"))
      CommandFilter.add_member(:value, Shapes::ShapeRef.new(shape: CommandFilterValue, required: true, location_name: "value"))
      CommandFilter.struct_class = Types::CommandFilter

      CommandFilterList.member = Shapes::ShapeRef.new(shape: CommandFilter)

      CommandInvocation.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
      CommandInvocation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      CommandInvocation.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
      CommandInvocation.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "DocumentName"))
      CommandInvocation.add_member(:requested_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "RequestedDateTime"))
      CommandInvocation.add_member(:status, Shapes::ShapeRef.new(shape: CommandInvocationStatus, location_name: "Status"))
      CommandInvocation.add_member(:trace_output, Shapes::ShapeRef.new(shape: InvocationTraceOutput, location_name: "TraceOutput"))
      CommandInvocation.add_member(:command_plugins, Shapes::ShapeRef.new(shape: CommandPluginList, location_name: "CommandPlugins"))
      CommandInvocation.add_member(:service_role, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRole"))
      CommandInvocation.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
      CommandInvocation.struct_class = Types::CommandInvocation

      CommandInvocationList.member = Shapes::ShapeRef.new(shape: CommandInvocation)

      CommandList.member = Shapes::ShapeRef.new(shape: Command)

      CommandPlugin.add_member(:name, Shapes::ShapeRef.new(shape: CommandPluginName, location_name: "Name"))
      CommandPlugin.add_member(:status, Shapes::ShapeRef.new(shape: CommandPluginStatus, location_name: "Status"))
      CommandPlugin.add_member(:response_code, Shapes::ShapeRef.new(shape: ResponseCode, location_name: "ResponseCode"))
      CommandPlugin.add_member(:response_start_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseStartDateTime"))
      CommandPlugin.add_member(:response_finish_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "ResponseFinishDateTime"))
      CommandPlugin.add_member(:output, Shapes::ShapeRef.new(shape: CommandPluginOutput, location_name: "Output"))
      CommandPlugin.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
      CommandPlugin.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
      CommandPlugin.struct_class = Types::CommandPlugin

      CommandPluginList.member = Shapes::ShapeRef.new(shape: CommandPlugin)

      CreateActivationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ActivationDescription, location_name: "Description"))
      CreateActivationRequest.add_member(:default_instance_name, Shapes::ShapeRef.new(shape: DefaultInstanceName, location_name: "DefaultInstanceName"))
      CreateActivationRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
      CreateActivationRequest.add_member(:registration_limit, Shapes::ShapeRef.new(shape: RegistrationLimit, location_name: "RegistrationLimit", metadata: {"box"=>true}))
      CreateActivationRequest.add_member(:expiration_date, Shapes::ShapeRef.new(shape: ExpirationDate, location_name: "ExpirationDate"))
      CreateActivationRequest.struct_class = Types::CreateActivationRequest

      CreateActivationResult.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
      CreateActivationResult.add_member(:activation_code, Shapes::ShapeRef.new(shape: ActivationCode, location_name: "ActivationCode"))
      CreateActivationResult.struct_class = Types::CreateActivationResult

      CreateAssociationBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntries, required: true, location_name: "Entries"))
      CreateAssociationBatchRequest.struct_class = Types::CreateAssociationBatchRequest

      CreateAssociationBatchRequestEntries.member = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "entries")

      CreateAssociationBatchRequestEntry.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, location_name: "Name"))
      CreateAssociationBatchRequestEntry.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      CreateAssociationBatchRequestEntry.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      CreateAssociationBatchRequestEntry.struct_class = Types::CreateAssociationBatchRequestEntry

      CreateAssociationBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: AssociationDescriptionList, location_name: "Successful"))
      CreateAssociationBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: FailedCreateAssociationList, location_name: "Failed"))
      CreateAssociationBatchResult.struct_class = Types::CreateAssociationBatchResult

      CreateAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      CreateAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
      CreateAssociationRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      CreateAssociationRequest.struct_class = Types::CreateAssociationRequest

      CreateAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
      CreateAssociationResult.struct_class = Types::CreateAssociationResult

      CreateDocumentRequest.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, required: true, location_name: "Content"))
      CreateDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      CreateDocumentRequest.struct_class = Types::CreateDocumentRequest

      CreateDocumentResult.add_member(:document_description, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "DocumentDescription"))
      CreateDocumentResult.struct_class = Types::CreateDocumentResult

      DeleteActivationRequest.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, required: true, location_name: "ActivationId"))
      DeleteActivationRequest.struct_class = Types::DeleteActivationRequest

      DeleteActivationResult.struct_class = Types::DeleteActivationResult

      DeleteAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      DeleteAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
      DeleteAssociationRequest.struct_class = Types::DeleteAssociationRequest

      DeleteAssociationResult.struct_class = Types::DeleteAssociationResult

      DeleteDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      DeleteDocumentRequest.struct_class = Types::DeleteDocumentRequest

      DeleteDocumentResult.struct_class = Types::DeleteDocumentResult

      DeregisterManagedInstanceRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
      DeregisterManagedInstanceRequest.struct_class = Types::DeregisterManagedInstanceRequest

      DeregisterManagedInstanceResult.struct_class = Types::DeregisterManagedInstanceResult

      DescribeActivationsFilter.add_member(:filter_key, Shapes::ShapeRef.new(shape: DescribeActivationsFilterKeys, location_name: "FilterKey"))
      DescribeActivationsFilter.add_member(:filter_values, Shapes::ShapeRef.new(shape: StringList, location_name: "FilterValues"))
      DescribeActivationsFilter.struct_class = Types::DescribeActivationsFilter

      DescribeActivationsFilterList.member = Shapes::ShapeRef.new(shape: DescribeActivationsFilter)

      DescribeActivationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DescribeActivationsFilterList, location_name: "Filters"))
      DescribeActivationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
      DescribeActivationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      DescribeActivationsRequest.struct_class = Types::DescribeActivationsRequest

      DescribeActivationsResult.add_member(:activation_list, Shapes::ShapeRef.new(shape: ActivationList, location_name: "ActivationList"))
      DescribeActivationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      DescribeActivationsResult.struct_class = Types::DescribeActivationsResult

      DescribeAssociationRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      DescribeAssociationRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
      DescribeAssociationRequest.struct_class = Types::DescribeAssociationRequest

      DescribeAssociationResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
      DescribeAssociationResult.struct_class = Types::DescribeAssociationResult

      DescribeDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      DescribeDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
      DescribeDocumentPermissionRequest.struct_class = Types::DescribeDocumentPermissionRequest

      DescribeDocumentPermissionResponse.add_member(:account_ids, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIds"))
      DescribeDocumentPermissionResponse.struct_class = Types::DescribeDocumentPermissionResponse

      DescribeDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
      DescribeDocumentRequest.struct_class = Types::DescribeDocumentRequest

      DescribeDocumentResult.add_member(:document, Shapes::ShapeRef.new(shape: DocumentDescription, location_name: "Document"))
      DescribeDocumentResult.struct_class = Types::DescribeDocumentResult

      DescribeInstanceInformationRequest.add_member(:instance_information_filter_list, Shapes::ShapeRef.new(shape: InstanceInformationFilterList, location_name: "InstanceInformationFilterList"))
      DescribeInstanceInformationRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsEC2Compatible, location_name: "MaxResults", metadata: {"box"=>true}))
      DescribeInstanceInformationRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      DescribeInstanceInformationRequest.struct_class = Types::DescribeInstanceInformationRequest

      DescribeInstanceInformationResult.add_member(:instance_information_list, Shapes::ShapeRef.new(shape: InstanceInformationList, location_name: "InstanceInformationList"))
      DescribeInstanceInformationResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      DescribeInstanceInformationResult.struct_class = Types::DescribeInstanceInformationResult

      DocumentDescription.add_member(:sha_1, Shapes::ShapeRef.new(shape: DocumentSha1, location_name: "Sha1"))
      DocumentDescription.add_member(:hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "Hash"))
      DocumentDescription.add_member(:hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "HashType"))
      DocumentDescription.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
      DocumentDescription.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
      DocumentDescription.add_member(:created_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreatedDate"))
      DocumentDescription.add_member(:status, Shapes::ShapeRef.new(shape: DocumentStatus, location_name: "Status"))
      DocumentDescription.add_member(:description, Shapes::ShapeRef.new(shape: DescriptionInDocument, location_name: "Description"))
      DocumentDescription.add_member(:parameters, Shapes::ShapeRef.new(shape: DocumentParameterList, location_name: "Parameters"))
      DocumentDescription.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
      DocumentDescription.struct_class = Types::DocumentDescription

      DocumentFilter.add_member(:key, Shapes::ShapeRef.new(shape: DocumentFilterKey, required: true, location_name: "key"))
      DocumentFilter.add_member(:value, Shapes::ShapeRef.new(shape: DocumentFilterValue, required: true, location_name: "value"))
      DocumentFilter.struct_class = Types::DocumentFilter

      DocumentFilterList.member = Shapes::ShapeRef.new(shape: DocumentFilter, location_name: "DocumentFilter")

      DocumentIdentifier.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
      DocumentIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: DocumentOwner, location_name: "Owner"))
      DocumentIdentifier.add_member(:platform_types, Shapes::ShapeRef.new(shape: PlatformTypeList, location_name: "PlatformTypes"))
      DocumentIdentifier.struct_class = Types::DocumentIdentifier

      DocumentIdentifierList.member = Shapes::ShapeRef.new(shape: DocumentIdentifier, location_name: "DocumentIdentifier")

      DocumentParameter.add_member(:name, Shapes::ShapeRef.new(shape: DocumentParameterName, location_name: "Name"))
      DocumentParameter.add_member(:type, Shapes::ShapeRef.new(shape: DocumentParameterType, location_name: "Type"))
      DocumentParameter.add_member(:description, Shapes::ShapeRef.new(shape: DocumentParameterDescrption, location_name: "Description"))
      DocumentParameter.add_member(:default_value, Shapes::ShapeRef.new(shape: DocumentParameterDefaultValue, location_name: "DefaultValue"))
      DocumentParameter.struct_class = Types::DocumentParameter

      DocumentParameterList.member = Shapes::ShapeRef.new(shape: DocumentParameter, location_name: "DocumentParameter")

      FailedCreateAssociation.add_member(:entry, Shapes::ShapeRef.new(shape: CreateAssociationBatchRequestEntry, location_name: "Entry"))
      FailedCreateAssociation.add_member(:message, Shapes::ShapeRef.new(shape: BatchErrorMessage, location_name: "Message"))
      FailedCreateAssociation.add_member(:fault, Shapes::ShapeRef.new(shape: Fault, location_name: "Fault"))
      FailedCreateAssociation.struct_class = Types::FailedCreateAssociation

      FailedCreateAssociationList.member = Shapes::ShapeRef.new(shape: FailedCreateAssociation, location_name: "FailedCreateAssociationEntry")

      GetDocumentRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "Name"))
      GetDocumentRequest.struct_class = Types::GetDocumentRequest

      GetDocumentResult.add_member(:name, Shapes::ShapeRef.new(shape: DocumentARN, location_name: "Name"))
      GetDocumentResult.add_member(:content, Shapes::ShapeRef.new(shape: DocumentContent, location_name: "Content"))
      GetDocumentResult.struct_class = Types::GetDocumentResult

      InstanceIdList.member = Shapes::ShapeRef.new(shape: InstanceId)

      InstanceInformation.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      InstanceInformation.add_member(:ping_status, Shapes::ShapeRef.new(shape: PingStatus, location_name: "PingStatus"))
      InstanceInformation.add_member(:last_ping_date_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "LastPingDateTime", metadata: {"box"=>true}))
      InstanceInformation.add_member(:agent_version, Shapes::ShapeRef.new(shape: Version, location_name: "AgentVersion"))
      InstanceInformation.add_member(:is_latest_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsLatestVersion", metadata: {"box"=>true}))
      InstanceInformation.add_member(:platform_type, Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType"))
      InstanceInformation.add_member(:platform_name, Shapes::ShapeRef.new(shape: String, location_name: "PlatformName"))
      InstanceInformation.add_member(:platform_version, Shapes::ShapeRef.new(shape: String, location_name: "PlatformVersion"))
      InstanceInformation.add_member(:activation_id, Shapes::ShapeRef.new(shape: ActivationId, location_name: "ActivationId"))
      InstanceInformation.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, location_name: "IamRole"))
      InstanceInformation.add_member(:registration_date, Shapes::ShapeRef.new(shape: DateTime, location_name: "RegistrationDate", metadata: {"box"=>true}))
      InstanceInformation.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
      InstanceInformation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
      InstanceInformation.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, location_name: "IPAddress"))
      InstanceInformation.add_member(:computer_name, Shapes::ShapeRef.new(shape: ComputerName, location_name: "ComputerName"))
      InstanceInformation.struct_class = Types::InstanceInformation

      InstanceInformationFilter.add_member(:key, Shapes::ShapeRef.new(shape: InstanceInformationFilterKey, required: true, location_name: "key"))
      InstanceInformationFilter.add_member(:value_set, Shapes::ShapeRef.new(shape: InstanceInformationFilterValueSet, required: true, location_name: "valueSet"))
      InstanceInformationFilter.struct_class = Types::InstanceInformationFilter

      InstanceInformationFilterList.member = Shapes::ShapeRef.new(shape: InstanceInformationFilter, location_name: "InstanceInformationFilter")

      InstanceInformationFilterValueSet.member = Shapes::ShapeRef.new(shape: InstanceInformationFilterValue, location_name: "InstanceInformationFilterValue")

      InstanceInformationList.member = Shapes::ShapeRef.new(shape: InstanceInformation, location_name: "InstanceInformation")

      KeyList.member = Shapes::ShapeRef.new(shape: TagKey)

      ListAssociationsRequest.add_member(:association_filter_list, Shapes::ShapeRef.new(shape: AssociationFilterList, required: true, location_name: "AssociationFilterList"))
      ListAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
      ListAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListAssociationsRequest.struct_class = Types::ListAssociationsRequest

      ListAssociationsResult.add_member(:associations, Shapes::ShapeRef.new(shape: AssociationList, location_name: "Associations"))
      ListAssociationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListAssociationsResult.struct_class = Types::ListAssociationsResult

      ListCommandInvocationsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
      ListCommandInvocationsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      ListCommandInvocationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
      ListCommandInvocationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListCommandInvocationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
      ListCommandInvocationsRequest.add_member(:details, Shapes::ShapeRef.new(shape: Boolean, location_name: "Details"))
      ListCommandInvocationsRequest.struct_class = Types::ListCommandInvocationsRequest

      ListCommandInvocationsResult.add_member(:command_invocations, Shapes::ShapeRef.new(shape: CommandInvocationList, location_name: "CommandInvocations"))
      ListCommandInvocationsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListCommandInvocationsResult.struct_class = Types::ListCommandInvocationsResult

      ListCommandsRequest.add_member(:command_id, Shapes::ShapeRef.new(shape: CommandId, location_name: "CommandId"))
      ListCommandsRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
      ListCommandsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: CommandMaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
      ListCommandsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListCommandsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: CommandFilterList, location_name: "Filters"))
      ListCommandsRequest.struct_class = Types::ListCommandsRequest

      ListCommandsResult.add_member(:commands, Shapes::ShapeRef.new(shape: CommandList, location_name: "Commands"))
      ListCommandsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListCommandsResult.struct_class = Types::ListCommandsResult

      ListDocumentsRequest.add_member(:document_filter_list, Shapes::ShapeRef.new(shape: DocumentFilterList, location_name: "DocumentFilterList"))
      ListDocumentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
      ListDocumentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListDocumentsRequest.struct_class = Types::ListDocumentsRequest

      ListDocumentsResult.add_member(:document_identifiers, Shapes::ShapeRef.new(shape: DocumentIdentifierList, location_name: "DocumentIdentifiers"))
      ListDocumentsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
      ListDocumentsResult.struct_class = Types::ListDocumentsResult

      ListTagsForResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
      ListTagsForResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
      ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

      ListTagsForResourceResult.add_member(:tag_list, Shapes::ShapeRef.new(shape: TagList, location_name: "TagList"))
      ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

      ModifyDocumentPermissionRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      ModifyDocumentPermissionRequest.add_member(:permission_type, Shapes::ShapeRef.new(shape: DocumentPermissionType, required: true, location_name: "PermissionType"))
      ModifyDocumentPermissionRequest.add_member(:account_ids_to_add, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToAdd"))
      ModifyDocumentPermissionRequest.add_member(:account_ids_to_remove, Shapes::ShapeRef.new(shape: AccountIdList, location_name: "AccountIdsToRemove"))
      ModifyDocumentPermissionRequest.struct_class = Types::ModifyDocumentPermissionRequest

      ModifyDocumentPermissionResponse.struct_class = Types::ModifyDocumentPermissionResponse

      NotificationConfig.add_member(:notification_arn, Shapes::ShapeRef.new(shape: NotificationArn, location_name: "NotificationArn"))
      NotificationConfig.add_member(:notification_events, Shapes::ShapeRef.new(shape: NotificationEventList, location_name: "NotificationEvents"))
      NotificationConfig.add_member(:notification_type, Shapes::ShapeRef.new(shape: NotificationType, location_name: "NotificationType"))
      NotificationConfig.struct_class = Types::NotificationConfig

      NotificationEventList.member = Shapes::ShapeRef.new(shape: NotificationEvent)

      ParameterValueList.member = Shapes::ShapeRef.new(shape: ParameterValue)

      Parameters.key = Shapes::ShapeRef.new(shape: ParameterName)
      Parameters.value = Shapes::ShapeRef.new(shape: ParameterValueList)

      PlatformTypeList.member = Shapes::ShapeRef.new(shape: PlatformType, location_name: "PlatformType")

      RemoveTagsFromResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceTypeForTagging, required: true, location_name: "ResourceType"))
      RemoveTagsFromResourceRequest.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ResourceId"))
      RemoveTagsFromResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: KeyList, required: true, location_name: "TagKeys"))
      RemoveTagsFromResourceRequest.struct_class = Types::RemoveTagsFromResourceRequest

      RemoveTagsFromResourceResult.struct_class = Types::RemoveTagsFromResourceResult

      SendCommandRequest.add_member(:instance_ids, Shapes::ShapeRef.new(shape: InstanceIdList, required: true, location_name: "InstanceIds"))
      SendCommandRequest.add_member(:document_name, Shapes::ShapeRef.new(shape: DocumentARN, required: true, location_name: "DocumentName"))
      SendCommandRequest.add_member(:document_hash, Shapes::ShapeRef.new(shape: DocumentHash, location_name: "DocumentHash"))
      SendCommandRequest.add_member(:document_hash_type, Shapes::ShapeRef.new(shape: DocumentHashType, location_name: "DocumentHashType"))
      SendCommandRequest.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: TimeoutSeconds, location_name: "TimeoutSeconds", metadata: {"box"=>true}))
      SendCommandRequest.add_member(:comment, Shapes::ShapeRef.new(shape: Comment, location_name: "Comment"))
      SendCommandRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
      SendCommandRequest.add_member(:output_s3_bucket_name, Shapes::ShapeRef.new(shape: S3BucketName, location_name: "OutputS3BucketName"))
      SendCommandRequest.add_member(:output_s3_key_prefix, Shapes::ShapeRef.new(shape: S3KeyPrefix, location_name: "OutputS3KeyPrefix"))
      SendCommandRequest.add_member(:service_role_arn, Shapes::ShapeRef.new(shape: ServiceRole, location_name: "ServiceRoleArn"))
      SendCommandRequest.add_member(:notification_config, Shapes::ShapeRef.new(shape: NotificationConfig, location_name: "NotificationConfig"))
      SendCommandRequest.struct_class = Types::SendCommandRequest

      SendCommandResult.add_member(:command, Shapes::ShapeRef.new(shape: Command, location_name: "Command"))
      SendCommandResult.struct_class = Types::SendCommandResult

      StringList.member = Shapes::ShapeRef.new(shape: String)

      Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
      Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
      Tag.struct_class = Types::Tag

      TagList.member = Shapes::ShapeRef.new(shape: Tag)

      UpdateAssociationStatusRequest.add_member(:name, Shapes::ShapeRef.new(shape: DocumentName, required: true, location_name: "Name"))
      UpdateAssociationStatusRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
      UpdateAssociationStatusRequest.add_member(:association_status, Shapes::ShapeRef.new(shape: AssociationStatus, required: true, location_name: "AssociationStatus"))
      UpdateAssociationStatusRequest.struct_class = Types::UpdateAssociationStatusRequest

      UpdateAssociationStatusResult.add_member(:association_description, Shapes::ShapeRef.new(shape: AssociationDescription, location_name: "AssociationDescription"))
      UpdateAssociationStatusResult.struct_class = Types::UpdateAssociationStatusResult

      UpdateManagedInstanceRoleRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: ManagedInstanceId, required: true, location_name: "InstanceId"))
      UpdateManagedInstanceRoleRequest.add_member(:iam_role, Shapes::ShapeRef.new(shape: IamRole, required: true, location_name: "IamRole"))
      UpdateManagedInstanceRoleRequest.struct_class = Types::UpdateManagedInstanceRoleRequest

      UpdateManagedInstanceRoleResult.struct_class = Types::UpdateManagedInstanceRoleResult


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2014-11-06"

        api.metadata = {
          "endpointPrefix" => "ssm",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "Amazon Simple Systems Management Service",
          "signatureVersion" => "v4",
          "targetPrefix" => "AmazonSSM",
        }

        api.add_operation(:add_tags_to_resource, Seahorse::Model::Operation.new.tap do |o|
          o.name = "AddTagsToResource"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: AddTagsToResourceRequest)
          o.output = Shapes::ShapeRef.new(shape: AddTagsToResourceResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:cancel_command, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CancelCommand"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CancelCommandRequest)
          o.output = Shapes::ShapeRef.new(shape: CancelCommandResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
        end)

        api.add_operation(:create_activation, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateActivation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateActivationRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateActivationResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:create_association, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateAssociation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateAssociationRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateAssociationResult)
          o.errors << Shapes::ShapeRef.new(shape: AssociationAlreadyExists)
          o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
        end)

        api.add_operation(:create_association_batch, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateAssociationBatch"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateAssociationBatchRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateAssociationBatchResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
          o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: AssociationLimitExceeded)
          o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
        end)

        api.add_operation(:create_document, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateDocument"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateDocumentRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateDocumentResult)
          o.errors << Shapes::ShapeRef.new(shape: DocumentAlreadyExists)
          o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentContent)
          o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
        end)

        api.add_operation(:delete_activation, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteActivation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteActivationRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteActivationResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidActivationId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidActivation)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:delete_association, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteAssociation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteAssociationRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteAssociationResult)
          o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        end)

        api.add_operation(:delete_document, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteDocument"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteDocumentRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteDocumentResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocumentOperation)
          o.errors << Shapes::ShapeRef.new(shape: AssociatedInstances)
        end)

        api.add_operation(:deregister_managed_instance, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeregisterManagedInstance"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceRequest)
          o.output = Shapes::ShapeRef.new(shape: DeregisterManagedInstanceResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:describe_activations, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeActivations"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeActivationsRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeActivationsResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidFilter)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:describe_association, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeAssociation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeAssociationRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeAssociationResult)
          o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
        end)

        api.add_operation(:describe_document, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeDocument"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeDocumentRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeDocumentResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        end)

        api.add_operation(:describe_document_permission, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeDocumentPermission"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeDocumentPermissionResponse)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
        end)

        api.add_operation(:describe_instance_information, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DescribeInstanceInformation"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DescribeInstanceInformationRequest)
          o.output = Shapes::ShapeRef.new(shape: DescribeInstanceInformationResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceInformationFilterValue)
          o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:get_document, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetDocument"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetDocumentRequest)
          o.output = Shapes::ShapeRef.new(shape: GetDocumentResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
        end)

        api.add_operation(:list_associations, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListAssociations"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListAssociationsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListAssociationsResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:list_command_invocations, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListCommandInvocations"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListCommandInvocationsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListCommandInvocationsResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:list_commands, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListCommands"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListCommandsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListCommandsResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidCommandId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:list_documents, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListDocuments"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListDocumentsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListDocumentsResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNextToken)
          o.errors << Shapes::ShapeRef.new(shape: InvalidFilterKey)
          o[:pager] = Aws::Pager.new(
            limit_key: "max_results",
            tokens: {
              "next_token" => "next_token"
            }
          )
        end)

        api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListTagsForResource"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
          o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:modify_document_permission, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ModifyDocumentPermission"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionRequest)
          o.output = Shapes::ShapeRef.new(shape: ModifyDocumentPermissionResponse)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidPermissionType)
          o.errors << Shapes::ShapeRef.new(shape: DocumentPermissionLimit)
          o.errors << Shapes::ShapeRef.new(shape: DocumentLimitExceeded)
        end)

        api.add_operation(:remove_tags_from_resource, Seahorse::Model::Operation.new.tap do |o|
          o.name = "RemoveTagsFromResource"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceRequest)
          o.output = Shapes::ShapeRef.new(shape: RemoveTagsFromResourceResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceType)
          o.errors << Shapes::ShapeRef.new(shape: InvalidResourceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)

        api.add_operation(:send_command, Seahorse::Model::Operation.new.tap do |o|
          o.name = "SendCommand"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: SendCommandRequest)
          o.output = Shapes::ShapeRef.new(shape: SendCommandResult)
          o.errors << Shapes::ShapeRef.new(shape: DuplicateInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: InvalidOutputFolder)
          o.errors << Shapes::ShapeRef.new(shape: InvalidParameters)
          o.errors << Shapes::ShapeRef.new(shape: UnsupportedPlatformType)
          o.errors << Shapes::ShapeRef.new(shape: MaxDocumentSizeExceeded)
          o.errors << Shapes::ShapeRef.new(shape: InvalidRole)
          o.errors << Shapes::ShapeRef.new(shape: InvalidNotificationConfig)
        end)

        api.add_operation(:update_association_status, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateAssociationStatus"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateAssociationStatusRequest)
          o.output = Shapes::ShapeRef.new(shape: UpdateAssociationStatusResult)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InvalidDocument)
          o.errors << Shapes::ShapeRef.new(shape: AssociationDoesNotExist)
          o.errors << Shapes::ShapeRef.new(shape: StatusUnchanged)
          o.errors << Shapes::ShapeRef.new(shape: TooManyUpdates)
        end)

        api.add_operation(:update_managed_instance_role, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateManagedInstanceRole"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleRequest)
          o.output = Shapes::ShapeRef.new(shape: UpdateManagedInstanceRoleResult)
          o.errors << Shapes::ShapeRef.new(shape: InvalidInstanceId)
          o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        end)
      end

    end
  end
end
