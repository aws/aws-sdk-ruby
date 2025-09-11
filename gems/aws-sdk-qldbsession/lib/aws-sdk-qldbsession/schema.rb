# frozen_string_literal: true

# This is generated code!

module Aws::QLDBSession
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#AbortTransactionRequest', name: 'AbortTransactionRequest')
    AbortTransactionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#AbortTransactionResult', name: 'AbortTransactionResult')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client"})
    CapacityExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#CapacityExceededException', name: 'CapacityExceededException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    CommitDigest = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.qldbsession#CommitDigest', name: 'CommitDigest')
    CommitTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#CommitTransactionRequest', name: 'CommitTransactionRequest')
    CommitTransactionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#CommitTransactionResult', name: 'CommitTransactionResult')
    EndSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#EndSessionRequest', name: 'EndSessionRequest')
    EndSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#EndSessionResult', name: 'EndSessionResult')
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#ErrorCode', name: 'ErrorCode')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#ErrorMessage', name: 'ErrorMessage')
    ExecuteStatementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#ExecuteStatementRequest', name: 'ExecuteStatementRequest')
    ExecuteStatementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#ExecuteStatementResult', name: 'ExecuteStatementResult')
    FetchPageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#FetchPageRequest', name: 'FetchPageRequest')
    FetchPageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#FetchPageResult', name: 'FetchPageResult')
    IOUsage = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#IOUsage', name: 'IOUsage')
    InvalidSessionException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#InvalidSessionException', name: 'InvalidSessionException', traits: {"smithy.api#error" => "client"})
    IonBinary = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.qldbsession#IonBinary', name: 'IonBinary', traits: {"smithy.api#length" => {"min" => 1, "max" => 131072}})
    IonText = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#IonText', name: 'IonText', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}})
    LedgerName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#LedgerName', name: 'LedgerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    OccConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#OccConflictException', name: 'OccConflictException', traits: {"smithy.api#error" => "client"})
    Page = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#Page', name: 'Page')
    PageToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#PageToken', name: 'PageToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z-0-9+/=]+$"})
    ProcessingTimeMilliseconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qldbsession#ProcessingTimeMilliseconds', name: 'ProcessingTimeMilliseconds', traits: {"smithy.api#default" => 0})
    RateExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#RateExceededException', name: 'RateExceededException', traits: {"smithy.api#error" => "client"})
    ReadIOs = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qldbsession#ReadIOs', name: 'ReadIOs', traits: {"smithy.api#default" => 0})
    SendCommandRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#SendCommandRequest', name: 'SendCommandRequest')
    SendCommandResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#SendCommandResult', name: 'SendCommandResult')
    SessionToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#SessionToken', name: 'SessionToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z-0-9+/=]+$"})
    StartSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#StartSessionRequest', name: 'StartSessionRequest')
    StartSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#StartSessionResult', name: 'StartSessionResult')
    StartTransactionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#StartTransactionRequest', name: 'StartTransactionRequest')
    StartTransactionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#StartTransactionResult', name: 'StartTransactionResult')
    Statement = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#Statement', name: 'Statement', traits: {"smithy.api#length" => {"min" => 1, "max" => 100000}})
    StatementParameters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldbsession#StatementParameters', name: 'StatementParameters')
    TimingInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#TimingInformation', name: 'TimingInformation')
    TransactionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldbsession#TransactionId', name: 'TransactionId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[A-Za-z-0-9]+$"})
    ValueHolder = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldbsession#ValueHolder', name: 'ValueHolder')
    ValueHolders = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldbsession#ValueHolders', name: 'ValueHolders')
    WriteIOs = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qldbsession#WriteIOs', name: 'WriteIOs', traits: {"smithy.api#default" => 0})

    AbortTransactionRequest.type = Types::AbortTransactionRequest
    AbortTransactionResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    AbortTransactionResult.type = Types::AbortTransactionResult
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequestException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BadRequestException.type = Types::BadRequestException
    CapacityExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CapacityExceededException.type = Types::CapacityExceededException
    CommitTransactionRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionId, location_name: 'TransactionId', traits: {"smithy.api#required" => {}}))
    CommitTransactionRequest.add_member(:commit_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDigest, location_name: 'CommitDigest', traits: {"smithy.api#required" => {}}))
    CommitTransactionRequest.type = Types::CommitTransactionRequest
    CommitTransactionResult.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionId, location_name: 'TransactionId'))
    CommitTransactionResult.add_member(:commit_digest, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitDigest, location_name: 'CommitDigest'))
    CommitTransactionResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    CommitTransactionResult.add_member(:consumed_i_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IOUsage, location_name: 'ConsumedIOs'))
    CommitTransactionResult.type = Types::CommitTransactionResult
    EndSessionRequest.type = Types::EndSessionRequest
    EndSessionResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    EndSessionResult.type = Types::EndSessionResult
    ExecuteStatementRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionId, location_name: 'TransactionId', traits: {"smithy.api#required" => {}}))
    ExecuteStatementRequest.add_member(:statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Statement, location_name: 'Statement', traits: {"smithy.api#required" => {}}))
    ExecuteStatementRequest.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StatementParameters, location_name: 'Parameters'))
    ExecuteStatementRequest.type = Types::ExecuteStatementRequest
    ExecuteStatementResult.add_member(:first_page, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Page, location_name: 'FirstPage'))
    ExecuteStatementResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    ExecuteStatementResult.add_member(:consumed_i_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IOUsage, location_name: 'ConsumedIOs'))
    ExecuteStatementResult.type = Types::ExecuteStatementResult
    FetchPageRequest.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionId, location_name: 'TransactionId', traits: {"smithy.api#required" => {}}))
    FetchPageRequest.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken', traits: {"smithy.api#required" => {}}))
    FetchPageRequest.type = Types::FetchPageRequest
    FetchPageResult.add_member(:page, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Page, location_name: 'Page'))
    FetchPageResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    FetchPageResult.add_member(:consumed_i_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IOUsage, location_name: 'ConsumedIOs'))
    FetchPageResult.type = Types::FetchPageResult
    IOUsage.add_member(:read_i_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ReadIOs, location_name: 'ReadIOs', traits: {"smithy.api#default" => 0}))
    IOUsage.add_member(:write_i_os, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WriteIOs, location_name: 'WriteIOs', traits: {"smithy.api#default" => 0}))
    IOUsage.type = Types::IOUsage
    InvalidSessionException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidSessionException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    InvalidSessionException.type = Types::InvalidSessionException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    OccConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    OccConflictException.type = Types::OccConflictException
    Page.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolders, location_name: 'Values'))
    Page.add_member(:next_page_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PageToken, location_name: 'NextPageToken'))
    Page.type = Types::Page
    RateExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RateExceededException.type = Types::RateExceededException
    SendCommandRequest.add_member(:session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: 'SessionToken'))
    SendCommandRequest.add_member(:start_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionRequest, location_name: 'StartSession'))
    SendCommandRequest.add_member(:start_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTransactionRequest, location_name: 'StartTransaction'))
    SendCommandRequest.add_member(:end_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndSessionRequest, location_name: 'EndSession'))
    SendCommandRequest.add_member(:commit_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionRequest, location_name: 'CommitTransaction'))
    SendCommandRequest.add_member(:abort_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortTransactionRequest, location_name: 'AbortTransaction'))
    SendCommandRequest.add_member(:execute_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementRequest, location_name: 'ExecuteStatement'))
    SendCommandRequest.add_member(:fetch_page, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FetchPageRequest, location_name: 'FetchPage'))
    SendCommandRequest.type = Types::SendCommandRequest
    SendCommandResult.add_member(:start_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSessionResult, location_name: 'StartSession'))
    SendCommandResult.add_member(:start_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTransactionResult, location_name: 'StartTransaction'))
    SendCommandResult.add_member(:end_session, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EndSessionResult, location_name: 'EndSession'))
    SendCommandResult.add_member(:commit_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CommitTransactionResult, location_name: 'CommitTransaction'))
    SendCommandResult.add_member(:abort_transaction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AbortTransactionResult, location_name: 'AbortTransaction'))
    SendCommandResult.add_member(:execute_statement, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExecuteStatementResult, location_name: 'ExecuteStatement'))
    SendCommandResult.add_member(:fetch_page, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FetchPageResult, location_name: 'FetchPage'))
    SendCommandResult.type = Types::SendCommandResult
    StartSessionRequest.add_member(:ledger_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#required" => {}}))
    StartSessionRequest.type = Types::StartSessionRequest
    StartSessionResult.add_member(:session_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionToken, location_name: 'SessionToken'))
    StartSessionResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    StartSessionResult.type = Types::StartSessionResult
    StartTransactionRequest.type = Types::StartTransactionRequest
    StartTransactionResult.add_member(:transaction_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TransactionId, location_name: 'TransactionId'))
    StartTransactionResult.add_member(:timing_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimingInformation, location_name: 'TimingInformation'))
    StartTransactionResult.type = Types::StartTransactionResult
    StatementParameters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder)
    TimingInformation.add_member(:processing_time_milliseconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProcessingTimeMilliseconds, location_name: 'ProcessingTimeMilliseconds', traits: {"smithy.api#default" => 0}))
    TimingInformation.type = Types::TimingInformation
    ValueHolder.add_member(:ion_binary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IonBinary, location_name: 'IonBinary'))
    ValueHolder.add_member(:ion_text, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IonText, location_name: 'IonText'))
    ValueHolder.type = Types::ValueHolder
    ValueHolders.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder)

    QLDBSession = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qldbsession#QLDBSession"
      service.name = "QLDBSession"
      service.version = "2019-07-11"
      service.traits = {"aws.api#service" => {"sdkId" => "QLDB Session", "arnNamespace" => "qldb", "cloudFormationName" => "QLDBSession", "cloudTrailEventSource" => "qldbsession.amazonaws.com", "endpointPrefix" => "session.qldb"}, "aws.auth#sigv4" => {"name" => "qldb"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon QLDB Session"}
      service.add_operation(:send_command, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldbsession#SendCommand"
        operation.name = "SendCommand"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendCommandRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendCommandResult)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: CapacityExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidSessionException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: OccConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RateExceededException)
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
