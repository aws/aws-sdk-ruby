# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SQS
  # @api private
  module ClientApi

    include Seahorse::Model

    AWSAccountIdList = Shapes::ListShape.new(name: 'AWSAccountIdList', flattened: true)
    ActionNameList = Shapes::ListShape.new(name: 'ActionNameList', flattened: true)
    AddPermissionRequest = Shapes::StructureShape.new(name: 'AddPermissionRequest')
    AttributeNameList = Shapes::ListShape.new(name: 'AttributeNameList', flattened: true)
    BatchEntryIdsNotDistinct = Shapes::StructureShape.new(name: 'BatchEntryIdsNotDistinct')
    BatchRequestTooLong = Shapes::StructureShape.new(name: 'BatchRequestTooLong')
    BatchResultErrorEntry = Shapes::StructureShape.new(name: 'BatchResultErrorEntry')
    BatchResultErrorEntryList = Shapes::ListShape.new(name: 'BatchResultErrorEntryList', flattened: true)
    Binary = Shapes::BlobShape.new(name: 'Binary')
    BinaryList = Shapes::ListShape.new(name: 'BinaryList', flattened: true)
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    ChangeMessageVisibilityBatchRequest = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchRequest')
    ChangeMessageVisibilityBatchRequestEntry = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchRequestEntry')
    ChangeMessageVisibilityBatchRequestEntryList = Shapes::ListShape.new(name: 'ChangeMessageVisibilityBatchRequestEntryList', flattened: true)
    ChangeMessageVisibilityBatchResult = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchResult')
    ChangeMessageVisibilityBatchResultEntry = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityBatchResultEntry')
    ChangeMessageVisibilityBatchResultEntryList = Shapes::ListShape.new(name: 'ChangeMessageVisibilityBatchResultEntryList', flattened: true)
    ChangeMessageVisibilityRequest = Shapes::StructureShape.new(name: 'ChangeMessageVisibilityRequest')
    CreateQueueRequest = Shapes::StructureShape.new(name: 'CreateQueueRequest')
    CreateQueueResult = Shapes::StructureShape.new(name: 'CreateQueueResult')
    DeleteMessageBatchRequest = Shapes::StructureShape.new(name: 'DeleteMessageBatchRequest')
    DeleteMessageBatchRequestEntry = Shapes::StructureShape.new(name: 'DeleteMessageBatchRequestEntry')
    DeleteMessageBatchRequestEntryList = Shapes::ListShape.new(name: 'DeleteMessageBatchRequestEntryList', flattened: true)
    DeleteMessageBatchResult = Shapes::StructureShape.new(name: 'DeleteMessageBatchResult')
    DeleteMessageBatchResultEntry = Shapes::StructureShape.new(name: 'DeleteMessageBatchResultEntry')
    DeleteMessageBatchResultEntryList = Shapes::ListShape.new(name: 'DeleteMessageBatchResultEntryList', flattened: true)
    DeleteMessageRequest = Shapes::StructureShape.new(name: 'DeleteMessageRequest')
    DeleteQueueRequest = Shapes::StructureShape.new(name: 'DeleteQueueRequest')
    EmptyBatchRequest = Shapes::StructureShape.new(name: 'EmptyBatchRequest')
    GetQueueAttributesRequest = Shapes::StructureShape.new(name: 'GetQueueAttributesRequest')
    GetQueueAttributesResult = Shapes::StructureShape.new(name: 'GetQueueAttributesResult')
    GetQueueUrlRequest = Shapes::StructureShape.new(name: 'GetQueueUrlRequest')
    GetQueueUrlResult = Shapes::StructureShape.new(name: 'GetQueueUrlResult')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidAttributeName = Shapes::StructureShape.new(name: 'InvalidAttributeName')
    InvalidBatchEntryId = Shapes::StructureShape.new(name: 'InvalidBatchEntryId')
    InvalidIdFormat = Shapes::StructureShape.new(name: 'InvalidIdFormat')
    InvalidMessageContents = Shapes::StructureShape.new(name: 'InvalidMessageContents')
    ListDeadLetterSourceQueuesRequest = Shapes::StructureShape.new(name: 'ListDeadLetterSourceQueuesRequest')
    ListDeadLetterSourceQueuesResult = Shapes::StructureShape.new(name: 'ListDeadLetterSourceQueuesResult')
    ListQueueTagsRequest = Shapes::StructureShape.new(name: 'ListQueueTagsRequest')
    ListQueueTagsResult = Shapes::StructureShape.new(name: 'ListQueueTagsResult')
    ListQueuesRequest = Shapes::StructureShape.new(name: 'ListQueuesRequest')
    ListQueuesResult = Shapes::StructureShape.new(name: 'ListQueuesResult')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageAttributeName = Shapes::StringShape.new(name: 'MessageAttributeName')
    MessageAttributeNameList = Shapes::ListShape.new(name: 'MessageAttributeNameList', flattened: true)
    MessageAttributeValue = Shapes::StructureShape.new(name: 'MessageAttributeValue')
    MessageBodyAttributeMap = Shapes::MapShape.new(name: 'MessageBodyAttributeMap', flattened: true)
    MessageList = Shapes::ListShape.new(name: 'MessageList', flattened: true)
    MessageNotInflight = Shapes::StructureShape.new(name: 'MessageNotInflight')
    MessageSystemAttributeMap = Shapes::MapShape.new(name: 'MessageSystemAttributeMap', flattened: true)
    MessageSystemAttributeName = Shapes::StringShape.new(name: 'MessageSystemAttributeName')
    OverLimit = Shapes::StructureShape.new(name: 'OverLimit')
    PurgeQueueInProgress = Shapes::StructureShape.new(name: 'PurgeQueueInProgress')
    PurgeQueueRequest = Shapes::StructureShape.new(name: 'PurgeQueueRequest')
    QueueAttributeMap = Shapes::MapShape.new(name: 'QueueAttributeMap', flattened: true)
    QueueAttributeName = Shapes::StringShape.new(name: 'QueueAttributeName')
    QueueDeletedRecently = Shapes::StructureShape.new(name: 'QueueDeletedRecently')
    QueueDoesNotExist = Shapes::StructureShape.new(name: 'QueueDoesNotExist')
    QueueNameExists = Shapes::StructureShape.new(name: 'QueueNameExists')
    QueueUrlList = Shapes::ListShape.new(name: 'QueueUrlList', flattened: true)
    ReceiptHandleIsInvalid = Shapes::StructureShape.new(name: 'ReceiptHandleIsInvalid')
    ReceiveMessageRequest = Shapes::StructureShape.new(name: 'ReceiveMessageRequest')
    ReceiveMessageResult = Shapes::StructureShape.new(name: 'ReceiveMessageResult')
    RemovePermissionRequest = Shapes::StructureShape.new(name: 'RemovePermissionRequest')
    SendMessageBatchRequest = Shapes::StructureShape.new(name: 'SendMessageBatchRequest')
    SendMessageBatchRequestEntry = Shapes::StructureShape.new(name: 'SendMessageBatchRequestEntry')
    SendMessageBatchRequestEntryList = Shapes::ListShape.new(name: 'SendMessageBatchRequestEntryList', flattened: true)
    SendMessageBatchResult = Shapes::StructureShape.new(name: 'SendMessageBatchResult')
    SendMessageBatchResultEntry = Shapes::StructureShape.new(name: 'SendMessageBatchResultEntry')
    SendMessageBatchResultEntryList = Shapes::ListShape.new(name: 'SendMessageBatchResultEntryList', flattened: true)
    SendMessageRequest = Shapes::StructureShape.new(name: 'SendMessageRequest')
    SendMessageResult = Shapes::StructureShape.new(name: 'SendMessageResult')
    SetQueueAttributesRequest = Shapes::StructureShape.new(name: 'SetQueueAttributesRequest')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList', flattened: true)
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList', flattened: true)
    TagMap = Shapes::MapShape.new(name: 'TagMap', flattened: true)
    TagQueueRequest = Shapes::StructureShape.new(name: 'TagQueueRequest')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TooManyEntriesInBatchRequest = Shapes::StructureShape.new(name: 'TooManyEntriesInBatchRequest')
    UnsupportedOperation = Shapes::StructureShape.new(name: 'UnsupportedOperation')
    UntagQueueRequest = Shapes::StructureShape.new(name: 'UntagQueueRequest')

    AWSAccountIdList.member = Shapes::ShapeRef.new(shape: String, location_name: "AWSAccountId")

    ActionNameList.member = Shapes::ShapeRef.new(shape: String, location_name: "ActionName")

    AddPermissionRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    AddPermissionRequest.add_member(:label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Label"))
    AddPermissionRequest.add_member(:aws_account_ids, Shapes::ShapeRef.new(shape: AWSAccountIdList, required: true, location_name: "AWSAccountIds"))
    AddPermissionRequest.add_member(:actions, Shapes::ShapeRef.new(shape: ActionNameList, required: true, location_name: "Actions"))
    AddPermissionRequest.struct_class = Types::AddPermissionRequest

    AttributeNameList.member = Shapes::ShapeRef.new(shape: QueueAttributeName, location_name: "AttributeName")

    BatchResultErrorEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    BatchResultErrorEntry.add_member(:sender_fault, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "SenderFault"))
    BatchResultErrorEntry.add_member(:code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Code"))
    BatchResultErrorEntry.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    BatchResultErrorEntry.struct_class = Types::BatchResultErrorEntry

    BatchResultErrorEntryList.member = Shapes::ShapeRef.new(shape: BatchResultErrorEntry, location_name: "BatchResultErrorEntry")

    BinaryList.member = Shapes::ShapeRef.new(shape: Binary, location_name: "BinaryListValue")

    ChangeMessageVisibilityBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ChangeMessageVisibilityBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntryList, required: true, location_name: "Entries"))
    ChangeMessageVisibilityBatchRequest.struct_class = Types::ChangeMessageVisibilityBatchRequest

    ChangeMessageVisibilityBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    ChangeMessageVisibilityBatchRequestEntry.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "VisibilityTimeout"))
    ChangeMessageVisibilityBatchRequestEntry.struct_class = Types::ChangeMessageVisibilityBatchRequestEntry

    ChangeMessageVisibilityBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequestEntry, location_name: "ChangeMessageVisibilityBatchRequestEntry")

    ChangeMessageVisibilityBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntryList, required: true, location_name: "Successful"))
    ChangeMessageVisibilityBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    ChangeMessageVisibilityBatchResult.struct_class = Types::ChangeMessageVisibilityBatchResult

    ChangeMessageVisibilityBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    ChangeMessageVisibilityBatchResultEntry.struct_class = Types::ChangeMessageVisibilityBatchResultEntry

    ChangeMessageVisibilityBatchResultEntryList.member = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResultEntry, location_name: "ChangeMessageVisibilityBatchResultEntry")

    ChangeMessageVisibilityRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ChangeMessageVisibilityRequest.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    ChangeMessageVisibilityRequest.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "VisibilityTimeout"))
    ChangeMessageVisibilityRequest.struct_class = Types::ChangeMessageVisibilityRequest

    CreateQueueRequest.add_member(:queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueName"))
    CreateQueueRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: "Attribute"))
    CreateQueueRequest.struct_class = Types::CreateQueueRequest

    CreateQueueResult.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, location_name: "QueueUrl"))
    CreateQueueResult.struct_class = Types::CreateQueueResult

    DeleteMessageBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteMessageBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntryList, required: true, location_name: "Entries"))
    DeleteMessageBatchRequest.struct_class = Types::DeleteMessageBatchRequest

    DeleteMessageBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    DeleteMessageBatchRequestEntry.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    DeleteMessageBatchRequestEntry.struct_class = Types::DeleteMessageBatchRequestEntry

    DeleteMessageBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: DeleteMessageBatchRequestEntry, location_name: "DeleteMessageBatchRequestEntry")

    DeleteMessageBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntryList, required: true, location_name: "Successful"))
    DeleteMessageBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    DeleteMessageBatchResult.struct_class = Types::DeleteMessageBatchResult

    DeleteMessageBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    DeleteMessageBatchResultEntry.struct_class = Types::DeleteMessageBatchResultEntry

    DeleteMessageBatchResultEntryList.member = Shapes::ShapeRef.new(shape: DeleteMessageBatchResultEntry, location_name: "DeleteMessageBatchResultEntry")

    DeleteMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteMessageRequest.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ReceiptHandle"))
    DeleteMessageRequest.struct_class = Types::DeleteMessageRequest

    DeleteQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    DeleteQueueRequest.struct_class = Types::DeleteQueueRequest

    GetQueueAttributesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    GetQueueAttributesRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    GetQueueAttributesRequest.struct_class = Types::GetQueueAttributesRequest

    GetQueueAttributesResult.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, location_name: "Attribute"))
    GetQueueAttributesResult.struct_class = Types::GetQueueAttributesResult

    GetQueueUrlRequest.add_member(:queue_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueName"))
    GetQueueUrlRequest.add_member(:queue_owner_aws_account_id, Shapes::ShapeRef.new(shape: String, location_name: "QueueOwnerAWSAccountId"))
    GetQueueUrlRequest.struct_class = Types::GetQueueUrlRequest

    GetQueueUrlResult.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, location_name: "QueueUrl"))
    GetQueueUrlResult.struct_class = Types::GetQueueUrlResult

    ListDeadLetterSourceQueuesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ListDeadLetterSourceQueuesRequest.struct_class = Types::ListDeadLetterSourceQueuesRequest

    ListDeadLetterSourceQueuesResult.add_member(:queue_urls, Shapes::ShapeRef.new(shape: QueueUrlList, required: true, location_name: "queueUrls"))
    ListDeadLetterSourceQueuesResult.struct_class = Types::ListDeadLetterSourceQueuesResult

    ListQueueTagsRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ListQueueTagsRequest.struct_class = Types::ListQueueTagsRequest

    ListQueueTagsResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tag"))
    ListQueueTagsResult.struct_class = Types::ListQueueTagsResult

    ListQueuesRequest.add_member(:queue_name_prefix, Shapes::ShapeRef.new(shape: String, location_name: "QueueNamePrefix"))
    ListQueuesRequest.struct_class = Types::ListQueuesRequest

    ListQueuesResult.add_member(:queue_urls, Shapes::ShapeRef.new(shape: QueueUrlList, location_name: "QueueUrls"))
    ListQueuesResult.struct_class = Types::ListQueuesResult

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    Message.add_member(:receipt_handle, Shapes::ShapeRef.new(shape: String, location_name: "ReceiptHandle"))
    Message.add_member(:md5_of_body, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfBody"))
    Message.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "Body"))
    Message.add_member(:attributes, Shapes::ShapeRef.new(shape: MessageSystemAttributeMap, location_name: "Attribute"))
    Message.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    Message.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttribute"))
    Message.struct_class = Types::Message

    MessageAttributeNameList.member = Shapes::ShapeRef.new(shape: MessageAttributeName, location_name: "MessageAttributeName")

    MessageAttributeValue.add_member(:string_value, Shapes::ShapeRef.new(shape: String, location_name: "StringValue"))
    MessageAttributeValue.add_member(:binary_value, Shapes::ShapeRef.new(shape: Binary, location_name: "BinaryValue"))
    MessageAttributeValue.add_member(:string_list_values, Shapes::ShapeRef.new(shape: StringList, location_name: "StringListValue"))
    MessageAttributeValue.add_member(:binary_list_values, Shapes::ShapeRef.new(shape: BinaryList, location_name: "BinaryListValue"))
    MessageAttributeValue.add_member(:data_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "DataType"))
    MessageAttributeValue.struct_class = Types::MessageAttributeValue

    MessageBodyAttributeMap.key = Shapes::ShapeRef.new(shape: String, location_name: "Name")
    MessageBodyAttributeMap.value = Shapes::ShapeRef.new(shape: MessageAttributeValue, location_name: "Value")

    MessageList.member = Shapes::ShapeRef.new(shape: Message, location_name: "Message")

    MessageSystemAttributeMap.key = Shapes::ShapeRef.new(shape: MessageSystemAttributeName, location_name: "Name")
    MessageSystemAttributeMap.value = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    PurgeQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    PurgeQueueRequest.struct_class = Types::PurgeQueueRequest

    QueueAttributeMap.key = Shapes::ShapeRef.new(shape: QueueAttributeName, location_name: "Name")
    QueueAttributeMap.value = Shapes::ShapeRef.new(shape: String, location_name: "Value")

    QueueUrlList.member = Shapes::ShapeRef.new(shape: String, location_name: "QueueUrl")

    ReceiveMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    ReceiveMessageRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: AttributeNameList, location_name: "AttributeNames"))
    ReceiveMessageRequest.add_member(:message_attribute_names, Shapes::ShapeRef.new(shape: MessageAttributeNameList, location_name: "MessageAttributeNames"))
    ReceiveMessageRequest.add_member(:max_number_of_messages, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxNumberOfMessages"))
    ReceiveMessageRequest.add_member(:visibility_timeout, Shapes::ShapeRef.new(shape: Integer, location_name: "VisibilityTimeout"))
    ReceiveMessageRequest.add_member(:wait_time_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "WaitTimeSeconds"))
    ReceiveMessageRequest.add_member(:receive_request_attempt_id, Shapes::ShapeRef.new(shape: String, location_name: "ReceiveRequestAttemptId"))
    ReceiveMessageRequest.struct_class = Types::ReceiveMessageRequest

    ReceiveMessageResult.add_member(:messages, Shapes::ShapeRef.new(shape: MessageList, location_name: "Messages"))
    ReceiveMessageResult.struct_class = Types::ReceiveMessageResult

    RemovePermissionRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    RemovePermissionRequest.add_member(:label, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Label"))
    RemovePermissionRequest.struct_class = Types::RemovePermissionRequest

    SendMessageBatchRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SendMessageBatchRequest.add_member(:entries, Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntryList, required: true, location_name: "Entries"))
    SendMessageBatchRequest.struct_class = Types::SendMessageBatchRequest

    SendMessageBatchRequestEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    SendMessageBatchRequestEntry.add_member(:message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageBody"))
    SendMessageBatchRequestEntry.add_member(:delay_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DelaySeconds"))
    SendMessageBatchRequestEntry.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttribute"))
    SendMessageBatchRequestEntry.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageDeduplicationId"))
    SendMessageBatchRequestEntry.add_member(:message_group_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageGroupId"))
    SendMessageBatchRequestEntry.struct_class = Types::SendMessageBatchRequestEntry

    SendMessageBatchRequestEntryList.member = Shapes::ShapeRef.new(shape: SendMessageBatchRequestEntry, location_name: "SendMessageBatchRequestEntry")

    SendMessageBatchResult.add_member(:successful, Shapes::ShapeRef.new(shape: SendMessageBatchResultEntryList, required: true, location_name: "Successful"))
    SendMessageBatchResult.add_member(:failed, Shapes::ShapeRef.new(shape: BatchResultErrorEntryList, required: true, location_name: "Failed"))
    SendMessageBatchResult.struct_class = Types::SendMessageBatchResult

    SendMessageBatchResultEntry.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Id"))
    SendMessageBatchResultEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageId"))
    SendMessageBatchResultEntry.add_member(:md5_of_message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MD5OfMessageBody"))
    SendMessageBatchResultEntry.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    SendMessageBatchResultEntry.add_member(:sequence_number, Shapes::ShapeRef.new(shape: String, location_name: "SequenceNumber"))
    SendMessageBatchResultEntry.struct_class = Types::SendMessageBatchResultEntry

    SendMessageBatchResultEntryList.member = Shapes::ShapeRef.new(shape: SendMessageBatchResultEntry, location_name: "SendMessageBatchResultEntry")

    SendMessageRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SendMessageRequest.add_member(:message_body, Shapes::ShapeRef.new(shape: String, required: true, location_name: "MessageBody"))
    SendMessageRequest.add_member(:delay_seconds, Shapes::ShapeRef.new(shape: Integer, location_name: "DelaySeconds"))
    SendMessageRequest.add_member(:message_attributes, Shapes::ShapeRef.new(shape: MessageBodyAttributeMap, location_name: "MessageAttribute"))
    SendMessageRequest.add_member(:message_deduplication_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageDeduplicationId"))
    SendMessageRequest.add_member(:message_group_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageGroupId"))
    SendMessageRequest.struct_class = Types::SendMessageRequest

    SendMessageResult.add_member(:md5_of_message_body, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageBody"))
    SendMessageResult.add_member(:md5_of_message_attributes, Shapes::ShapeRef.new(shape: String, location_name: "MD5OfMessageAttributes"))
    SendMessageResult.add_member(:message_id, Shapes::ShapeRef.new(shape: String, location_name: "MessageId"))
    SendMessageResult.add_member(:sequence_number, Shapes::ShapeRef.new(shape: String, location_name: "SequenceNumber"))
    SendMessageResult.struct_class = Types::SendMessageResult

    SetQueueAttributesRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    SetQueueAttributesRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: QueueAttributeMap, required: true, location_name: "Attribute"))
    SetQueueAttributesRequest.struct_class = Types::SetQueueAttributesRequest

    StringList.member = Shapes::ShapeRef.new(shape: String, location_name: "StringListValue")

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey")

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey, location_name: "Key")
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue, location_name: "Value")

    TagQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    TagQueueRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagQueueRequest.struct_class = Types::TagQueueRequest

    UntagQueueRequest.add_member(:queue_url, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueueUrl"))
    UntagQueueRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagQueueRequest.struct_class = Types::UntagQueueRequest


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2012-11-05"

      api.metadata = {
        "apiVersion" => "2012-11-05",
        "endpointPrefix" => "sqs",
        "errorPrefix" => "AWS.SimpleQueueService.",
        "protocol" => "query",
        "serviceAbbreviation" => "Amazon SQS",
        "serviceFullName" => "Amazon Simple Queue Service",
        "signatureVersion" => "v4",
        "uid" => "sqs-2012-11-05",
        "xmlNamespace" => "http://queue.amazonaws.com/doc/2012-11-05/",
      }

      api.add_operation(:add_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddPermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AddPermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: OverLimit)
      end)

      api.add_operation(:change_message_visibility, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeMessageVisibility"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: MessageNotInflight)
        o.errors << Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
      end)

      api.add_operation(:change_message_visibility_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ChangeMessageVisibilityBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: ChangeMessageVisibilityBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
      end)

      api.add_operation(:create_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateQueueResult)
        o.errors << Shapes::ShapeRef.new(shape: QueueDeletedRecently)
        o.errors << Shapes::ShapeRef.new(shape: QueueNameExists)
      end)

      api.add_operation(:delete_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidIdFormat)
        o.errors << Shapes::ShapeRef.new(shape: ReceiptHandleIsInvalid)
      end)

      api.add_operation(:delete_message_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMessageBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMessageBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteMessageBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
      end)

      api.add_operation(:delete_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:get_queue_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueueAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeName)
      end)

      api.add_operation(:get_queue_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetQueueUrl"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetQueueUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetQueueUrlResult)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
      end)

      api.add_operation(:list_dead_letter_source_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeadLetterSourceQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeadLetterSourceQueuesResult)
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
      end)

      api.add_operation(:list_queue_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueueTags"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueueTagsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueueTagsResult)
      end)

      api.add_operation(:list_queues, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListQueues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListQueuesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListQueuesResult)
      end)

      api.add_operation(:purge_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PurgeQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PurgeQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: QueueDoesNotExist)
        o.errors << Shapes::ShapeRef.new(shape: PurgeQueueInProgress)
      end)

      api.add_operation(:receive_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ReceiveMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ReceiveMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: ReceiveMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: OverLimit)
      end)

      api.add_operation(:remove_permission, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemovePermission"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RemovePermissionRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:send_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessage"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidMessageContents)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:send_message_batch, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendMessageBatch"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendMessageBatchRequest)
        o.output = Shapes::ShapeRef.new(shape: SendMessageBatchResult)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEntriesInBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: EmptyBatchRequest)
        o.errors << Shapes::ShapeRef.new(shape: BatchEntryIdsNotDistinct)
        o.errors << Shapes::ShapeRef.new(shape: BatchRequestTooLong)
        o.errors << Shapes::ShapeRef.new(shape: InvalidBatchEntryId)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedOperation)
      end)

      api.add_operation(:set_queue_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SetQueueAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SetQueueAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InvalidAttributeName)
      end)

      api.add_operation(:tag_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:untag_queue, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagQueue"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagQueueRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)
    end

  end
end
