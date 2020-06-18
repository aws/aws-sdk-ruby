# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTEventsData
  # @api private
  module ClientApi

    include Seahorse::Model

    BatchPutMessageErrorEntries = Shapes::ListShape.new(name: 'BatchPutMessageErrorEntries')
    BatchPutMessageErrorEntry = Shapes::StructureShape.new(name: 'BatchPutMessageErrorEntry')
    BatchPutMessageRequest = Shapes::StructureShape.new(name: 'BatchPutMessageRequest')
    BatchPutMessageResponse = Shapes::StructureShape.new(name: 'BatchPutMessageResponse')
    BatchUpdateDetectorErrorEntries = Shapes::ListShape.new(name: 'BatchUpdateDetectorErrorEntries')
    BatchUpdateDetectorErrorEntry = Shapes::StructureShape.new(name: 'BatchUpdateDetectorErrorEntry')
    BatchUpdateDetectorRequest = Shapes::StructureShape.new(name: 'BatchUpdateDetectorRequest')
    BatchUpdateDetectorResponse = Shapes::StructureShape.new(name: 'BatchUpdateDetectorResponse')
    DescribeDetectorRequest = Shapes::StructureShape.new(name: 'DescribeDetectorRequest')
    DescribeDetectorResponse = Shapes::StructureShape.new(name: 'DescribeDetectorResponse')
    Detector = Shapes::StructureShape.new(name: 'Detector')
    DetectorModelName = Shapes::StringShape.new(name: 'DetectorModelName')
    DetectorModelVersion = Shapes::StringShape.new(name: 'DetectorModelVersion')
    DetectorState = Shapes::StructureShape.new(name: 'DetectorState')
    DetectorStateDefinition = Shapes::StructureShape.new(name: 'DetectorStateDefinition')
    DetectorStateSummary = Shapes::StructureShape.new(name: 'DetectorStateSummary')
    DetectorSummaries = Shapes::ListShape.new(name: 'DetectorSummaries')
    DetectorSummary = Shapes::StructureShape.new(name: 'DetectorSummary')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InputName = Shapes::StringShape.new(name: 'InputName')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KeyValue = Shapes::StringShape.new(name: 'KeyValue')
    ListDetectorsRequest = Shapes::StructureShape.new(name: 'ListDetectorsRequest')
    ListDetectorsResponse = Shapes::StructureShape.new(name: 'ListDetectorsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StructureShape.new(name: 'Message')
    MessageId = Shapes::StringShape.new(name: 'MessageId')
    Messages = Shapes::ListShape.new(name: 'Messages')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Payload = Shapes::BlobShape.new(name: 'Payload')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Seconds = Shapes::IntegerShape.new(name: 'Seconds')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    StateName = Shapes::StringShape.new(name: 'StateName')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timer = Shapes::StructureShape.new(name: 'Timer')
    TimerDefinition = Shapes::StructureShape.new(name: 'TimerDefinition')
    TimerDefinitions = Shapes::ListShape.new(name: 'TimerDefinitions')
    TimerName = Shapes::StringShape.new(name: 'TimerName')
    Timers = Shapes::ListShape.new(name: 'Timers')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateDetectorRequest = Shapes::StructureShape.new(name: 'UpdateDetectorRequest')
    UpdateDetectorRequests = Shapes::ListShape.new(name: 'UpdateDetectorRequests')
    Variable = Shapes::StructureShape.new(name: 'Variable')
    VariableDefinition = Shapes::StructureShape.new(name: 'VariableDefinition')
    VariableDefinitions = Shapes::ListShape.new(name: 'VariableDefinitions')
    VariableName = Shapes::StringShape.new(name: 'VariableName')
    VariableValue = Shapes::StringShape.new(name: 'VariableValue')
    Variables = Shapes::ListShape.new(name: 'Variables')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    BatchPutMessageErrorEntries.member = Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntry)

    BatchPutMessageErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchPutMessageErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchPutMessageErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchPutMessageErrorEntry.struct_class = Types::BatchPutMessageErrorEntry

    BatchPutMessageRequest.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, required: true, location_name: "messages"))
    BatchPutMessageRequest.struct_class = Types::BatchPutMessageRequest

    BatchPutMessageResponse.add_member(:batch_put_message_error_entries, Shapes::ShapeRef.new(shape: BatchPutMessageErrorEntries, location_name: "BatchPutMessageErrorEntries"))
    BatchPutMessageResponse.struct_class = Types::BatchPutMessageResponse

    BatchUpdateDetectorErrorEntries.member = Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntry)

    BatchUpdateDetectorErrorEntry.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, location_name: "messageId"))
    BatchUpdateDetectorErrorEntry.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "errorCode"))
    BatchUpdateDetectorErrorEntry.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    BatchUpdateDetectorErrorEntry.struct_class = Types::BatchUpdateDetectorErrorEntry

    BatchUpdateDetectorRequest.add_member(:detectors, Shapes::ShapeRef.new(shape: UpdateDetectorRequests, required: true, location_name: "detectors"))
    BatchUpdateDetectorRequest.struct_class = Types::BatchUpdateDetectorRequest

    BatchUpdateDetectorResponse.add_member(:batch_update_detector_error_entries, Shapes::ShapeRef.new(shape: BatchUpdateDetectorErrorEntries, location_name: "batchUpdateDetectorErrorEntries"))
    BatchUpdateDetectorResponse.struct_class = Types::BatchUpdateDetectorResponse

    DescribeDetectorRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    DescribeDetectorRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location: "querystring", location_name: "keyValue"))
    DescribeDetectorRequest.struct_class = Types::DescribeDetectorRequest

    DescribeDetectorResponse.add_member(:detector, Shapes::ShapeRef.new(shape: Detector, location_name: "detector"))
    DescribeDetectorResponse.struct_class = Types::DescribeDetectorResponse

    Detector.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    Detector.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    Detector.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    Detector.add_member(:state, Shapes::ShapeRef.new(shape: DetectorState, location_name: "state"))
    Detector.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    Detector.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    Detector.struct_class = Types::Detector

    DetectorState.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "stateName"))
    DetectorState.add_member(:variables, Shapes::ShapeRef.new(shape: Variables, required: true, location_name: "variables"))
    DetectorState.add_member(:timers, Shapes::ShapeRef.new(shape: Timers, required: true, location_name: "timers"))
    DetectorState.struct_class = Types::DetectorState

    DetectorStateDefinition.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, required: true, location_name: "stateName"))
    DetectorStateDefinition.add_member(:variables, Shapes::ShapeRef.new(shape: VariableDefinitions, required: true, location_name: "variables"))
    DetectorStateDefinition.add_member(:timers, Shapes::ShapeRef.new(shape: TimerDefinitions, required: true, location_name: "timers"))
    DetectorStateDefinition.struct_class = Types::DetectorStateDefinition

    DetectorStateSummary.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, location_name: "stateName"))
    DetectorStateSummary.struct_class = Types::DetectorStateSummary

    DetectorSummaries.member = Shapes::ShapeRef.new(shape: DetectorSummary)

    DetectorSummary.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, location_name: "detectorModelName"))
    DetectorSummary.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    DetectorSummary.add_member(:detector_model_version, Shapes::ShapeRef.new(shape: DetectorModelVersion, location_name: "detectorModelVersion"))
    DetectorSummary.add_member(:state, Shapes::ShapeRef.new(shape: DetectorStateSummary, location_name: "state"))
    DetectorSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "creationTime"))
    DetectorSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdateTime"))
    DetectorSummary.struct_class = Types::DetectorSummary

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListDetectorsRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location: "uri", location_name: "detectorModelName"))
    ListDetectorsRequest.add_member(:state_name, Shapes::ShapeRef.new(shape: StateName, location: "querystring", location_name: "stateName"))
    ListDetectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListDetectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListDetectorsRequest.struct_class = Types::ListDetectorsRequest

    ListDetectorsResponse.add_member(:detector_summaries, Shapes::ShapeRef.new(shape: DetectorSummaries, location_name: "detectorSummaries"))
    ListDetectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDetectorsResponse.struct_class = Types::ListDetectorsResponse

    Message.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    Message.add_member(:input_name, Shapes::ShapeRef.new(shape: InputName, required: true, location_name: "inputName"))
    Message.add_member(:payload, Shapes::ShapeRef.new(shape: Payload, required: true, location_name: "payload"))
    Message.struct_class = Types::Message

    Messages.member = Shapes::ShapeRef.new(shape: Message)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    Timer.add_member(:name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "name"))
    Timer.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "timestamp"))
    Timer.struct_class = Types::Timer

    TimerDefinition.add_member(:name, Shapes::ShapeRef.new(shape: TimerName, required: true, location_name: "name"))
    TimerDefinition.add_member(:seconds, Shapes::ShapeRef.new(shape: Seconds, required: true, location_name: "seconds"))
    TimerDefinition.struct_class = Types::TimerDefinition

    TimerDefinitions.member = Shapes::ShapeRef.new(shape: TimerDefinition)

    Timers.member = Shapes::ShapeRef.new(shape: Timer)

    UpdateDetectorRequest.add_member(:message_id, Shapes::ShapeRef.new(shape: MessageId, required: true, location_name: "messageId"))
    UpdateDetectorRequest.add_member(:detector_model_name, Shapes::ShapeRef.new(shape: DetectorModelName, required: true, location_name: "detectorModelName"))
    UpdateDetectorRequest.add_member(:key_value, Shapes::ShapeRef.new(shape: KeyValue, location_name: "keyValue"))
    UpdateDetectorRequest.add_member(:state, Shapes::ShapeRef.new(shape: DetectorStateDefinition, required: true, location_name: "state"))
    UpdateDetectorRequest.struct_class = Types::UpdateDetectorRequest

    UpdateDetectorRequests.member = Shapes::ShapeRef.new(shape: UpdateDetectorRequest)

    Variable.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    Variable.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    Variable.struct_class = Types::Variable

    VariableDefinition.add_member(:name, Shapes::ShapeRef.new(shape: VariableName, required: true, location_name: "name"))
    VariableDefinition.add_member(:value, Shapes::ShapeRef.new(shape: VariableValue, required: true, location_name: "value"))
    VariableDefinition.struct_class = Types::VariableDefinition

    VariableDefinitions.member = Shapes::ShapeRef.new(shape: VariableDefinition)

    Variables.member = Shapes::ShapeRef.new(shape: Variable)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-23"

      api.metadata = {
        "apiVersion" => "2018-10-23",
        "endpointPrefix" => "data.iotevents",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Events Data",
        "serviceId" => "IoT Events Data",
        "signatureVersion" => "v4",
        "signingName" => "ioteventsdata",
        "uid" => "iotevents-data-2018-10-23",
      }

      api.add_operation(:batch_put_message, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchPutMessage"
        o.http_method = "POST"
        o.http_request_uri = "/inputs/messages"
        o.input = Shapes::ShapeRef.new(shape: BatchPutMessageRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchPutMessageResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:batch_update_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BatchUpdateDetector"
        o.http_method = "POST"
        o.http_request_uri = "/detectors"
        o.input = Shapes::ShapeRef.new(shape: BatchUpdateDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: BatchUpdateDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_detector, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDetector"
        o.http_method = "GET"
        o.http_request_uri = "/detectors/{detectorModelName}/keyValues/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDetectorRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDetectorResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_detectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDetectors"
        o.http_method = "GET"
        o.http_request_uri = "/detectors/{detectorModelName}"
        o.input = Shapes::ShapeRef.new(shape: ListDetectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDetectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
