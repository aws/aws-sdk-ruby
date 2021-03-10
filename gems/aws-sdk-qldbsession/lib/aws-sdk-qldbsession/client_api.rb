# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QLDBSession
  # @api private
  module ClientApi

    include Seahorse::Model

    AbortTransactionRequest = Shapes::StructureShape.new(name: 'AbortTransactionRequest')
    AbortTransactionResult = Shapes::StructureShape.new(name: 'AbortTransactionResult')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CapacityExceededException = Shapes::StructureShape.new(name: 'CapacityExceededException')
    CommitDigest = Shapes::BlobShape.new(name: 'CommitDigest')
    CommitTransactionRequest = Shapes::StructureShape.new(name: 'CommitTransactionRequest')
    CommitTransactionResult = Shapes::StructureShape.new(name: 'CommitTransactionResult')
    EndSessionRequest = Shapes::StructureShape.new(name: 'EndSessionRequest')
    EndSessionResult = Shapes::StructureShape.new(name: 'EndSessionResult')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecuteStatementRequest = Shapes::StructureShape.new(name: 'ExecuteStatementRequest')
    ExecuteStatementResult = Shapes::StructureShape.new(name: 'ExecuteStatementResult')
    FetchPageRequest = Shapes::StructureShape.new(name: 'FetchPageRequest')
    FetchPageResult = Shapes::StructureShape.new(name: 'FetchPageResult')
    IOUsage = Shapes::StructureShape.new(name: 'IOUsage')
    InvalidSessionException = Shapes::StructureShape.new(name: 'InvalidSessionException')
    IonBinary = Shapes::BlobShape.new(name: 'IonBinary')
    IonText = Shapes::StringShape.new(name: 'IonText')
    LedgerName = Shapes::StringShape.new(name: 'LedgerName')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    OccConflictException = Shapes::StructureShape.new(name: 'OccConflictException')
    Page = Shapes::StructureShape.new(name: 'Page')
    PageToken = Shapes::StringShape.new(name: 'PageToken')
    ProcessingTimeMilliseconds = Shapes::IntegerShape.new(name: 'ProcessingTimeMilliseconds')
    RateExceededException = Shapes::StructureShape.new(name: 'RateExceededException')
    ReadIOs = Shapes::IntegerShape.new(name: 'ReadIOs')
    SendCommandRequest = Shapes::StructureShape.new(name: 'SendCommandRequest')
    SendCommandResult = Shapes::StructureShape.new(name: 'SendCommandResult')
    SessionToken = Shapes::StringShape.new(name: 'SessionToken')
    StartSessionRequest = Shapes::StructureShape.new(name: 'StartSessionRequest')
    StartSessionResult = Shapes::StructureShape.new(name: 'StartSessionResult')
    StartTransactionRequest = Shapes::StructureShape.new(name: 'StartTransactionRequest')
    StartTransactionResult = Shapes::StructureShape.new(name: 'StartTransactionResult')
    Statement = Shapes::StringShape.new(name: 'Statement')
    StatementParameters = Shapes::ListShape.new(name: 'StatementParameters')
    TimingInformation = Shapes::StructureShape.new(name: 'TimingInformation')
    TransactionId = Shapes::StringShape.new(name: 'TransactionId')
    ValueHolder = Shapes::StructureShape.new(name: 'ValueHolder')
    ValueHolders = Shapes::ListShape.new(name: 'ValueHolders')
    WriteIOs = Shapes::IntegerShape.new(name: 'WriteIOs')

    AbortTransactionRequest.struct_class = Types::AbortTransactionRequest

    AbortTransactionResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    AbortTransactionResult.struct_class = Types::AbortTransactionResult

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    BadRequestException.struct_class = Types::BadRequestException

    CapacityExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CapacityExceededException.struct_class = Types::CapacityExceededException

    CommitTransactionRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionId, required: true, location_name: "TransactionId"))
    CommitTransactionRequest.add_member(:commit_digest, Shapes::ShapeRef.new(shape: CommitDigest, required: true, location_name: "CommitDigest"))
    CommitTransactionRequest.struct_class = Types::CommitTransactionRequest

    CommitTransactionResult.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionId, location_name: "TransactionId"))
    CommitTransactionResult.add_member(:commit_digest, Shapes::ShapeRef.new(shape: CommitDigest, location_name: "CommitDigest"))
    CommitTransactionResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    CommitTransactionResult.add_member(:consumed_i_os, Shapes::ShapeRef.new(shape: IOUsage, location_name: "ConsumedIOs"))
    CommitTransactionResult.struct_class = Types::CommitTransactionResult

    EndSessionRequest.struct_class = Types::EndSessionRequest

    EndSessionResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    EndSessionResult.struct_class = Types::EndSessionResult

    ExecuteStatementRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionId, required: true, location_name: "TransactionId"))
    ExecuteStatementRequest.add_member(:statement, Shapes::ShapeRef.new(shape: Statement, required: true, location_name: "Statement"))
    ExecuteStatementRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: StatementParameters, location_name: "Parameters"))
    ExecuteStatementRequest.struct_class = Types::ExecuteStatementRequest

    ExecuteStatementResult.add_member(:first_page, Shapes::ShapeRef.new(shape: Page, location_name: "FirstPage"))
    ExecuteStatementResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    ExecuteStatementResult.add_member(:consumed_i_os, Shapes::ShapeRef.new(shape: IOUsage, location_name: "ConsumedIOs"))
    ExecuteStatementResult.struct_class = Types::ExecuteStatementResult

    FetchPageRequest.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionId, required: true, location_name: "TransactionId"))
    FetchPageRequest.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, required: true, location_name: "NextPageToken"))
    FetchPageRequest.struct_class = Types::FetchPageRequest

    FetchPageResult.add_member(:page, Shapes::ShapeRef.new(shape: Page, location_name: "Page"))
    FetchPageResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    FetchPageResult.add_member(:consumed_i_os, Shapes::ShapeRef.new(shape: IOUsage, location_name: "ConsumedIOs"))
    FetchPageResult.struct_class = Types::FetchPageResult

    IOUsage.add_member(:read_i_os, Shapes::ShapeRef.new(shape: ReadIOs, location_name: "ReadIOs"))
    IOUsage.add_member(:write_i_os, Shapes::ShapeRef.new(shape: WriteIOs, location_name: "WriteIOs"))
    IOUsage.struct_class = Types::IOUsage

    InvalidSessionException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidSessionException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    InvalidSessionException.struct_class = Types::InvalidSessionException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    OccConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    OccConflictException.struct_class = Types::OccConflictException

    Page.add_member(:values, Shapes::ShapeRef.new(shape: ValueHolders, location_name: "Values"))
    Page.add_member(:next_page_token, Shapes::ShapeRef.new(shape: PageToken, location_name: "NextPageToken"))
    Page.struct_class = Types::Page

    RateExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RateExceededException.struct_class = Types::RateExceededException

    SendCommandRequest.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, location_name: "SessionToken"))
    SendCommandRequest.add_member(:start_session, Shapes::ShapeRef.new(shape: StartSessionRequest, location_name: "StartSession"))
    SendCommandRequest.add_member(:start_transaction, Shapes::ShapeRef.new(shape: StartTransactionRequest, location_name: "StartTransaction"))
    SendCommandRequest.add_member(:end_session, Shapes::ShapeRef.new(shape: EndSessionRequest, location_name: "EndSession"))
    SendCommandRequest.add_member(:commit_transaction, Shapes::ShapeRef.new(shape: CommitTransactionRequest, location_name: "CommitTransaction"))
    SendCommandRequest.add_member(:abort_transaction, Shapes::ShapeRef.new(shape: AbortTransactionRequest, location_name: "AbortTransaction"))
    SendCommandRequest.add_member(:execute_statement, Shapes::ShapeRef.new(shape: ExecuteStatementRequest, location_name: "ExecuteStatement"))
    SendCommandRequest.add_member(:fetch_page, Shapes::ShapeRef.new(shape: FetchPageRequest, location_name: "FetchPage"))
    SendCommandRequest.struct_class = Types::SendCommandRequest

    SendCommandResult.add_member(:start_session, Shapes::ShapeRef.new(shape: StartSessionResult, location_name: "StartSession"))
    SendCommandResult.add_member(:start_transaction, Shapes::ShapeRef.new(shape: StartTransactionResult, location_name: "StartTransaction"))
    SendCommandResult.add_member(:end_session, Shapes::ShapeRef.new(shape: EndSessionResult, location_name: "EndSession"))
    SendCommandResult.add_member(:commit_transaction, Shapes::ShapeRef.new(shape: CommitTransactionResult, location_name: "CommitTransaction"))
    SendCommandResult.add_member(:abort_transaction, Shapes::ShapeRef.new(shape: AbortTransactionResult, location_name: "AbortTransaction"))
    SendCommandResult.add_member(:execute_statement, Shapes::ShapeRef.new(shape: ExecuteStatementResult, location_name: "ExecuteStatement"))
    SendCommandResult.add_member(:fetch_page, Shapes::ShapeRef.new(shape: FetchPageResult, location_name: "FetchPage"))
    SendCommandResult.struct_class = Types::SendCommandResult

    StartSessionRequest.add_member(:ledger_name, Shapes::ShapeRef.new(shape: LedgerName, required: true, location_name: "LedgerName"))
    StartSessionRequest.struct_class = Types::StartSessionRequest

    StartSessionResult.add_member(:session_token, Shapes::ShapeRef.new(shape: SessionToken, location_name: "SessionToken"))
    StartSessionResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    StartSessionResult.struct_class = Types::StartSessionResult

    StartTransactionRequest.struct_class = Types::StartTransactionRequest

    StartTransactionResult.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionId, location_name: "TransactionId"))
    StartTransactionResult.add_member(:timing_information, Shapes::ShapeRef.new(shape: TimingInformation, location_name: "TimingInformation"))
    StartTransactionResult.struct_class = Types::StartTransactionResult

    StatementParameters.member = Shapes::ShapeRef.new(shape: ValueHolder)

    TimingInformation.add_member(:processing_time_milliseconds, Shapes::ShapeRef.new(shape: ProcessingTimeMilliseconds, location_name: "ProcessingTimeMilliseconds"))
    TimingInformation.struct_class = Types::TimingInformation

    ValueHolder.add_member(:ion_binary, Shapes::ShapeRef.new(shape: IonBinary, location_name: "IonBinary"))
    ValueHolder.add_member(:ion_text, Shapes::ShapeRef.new(shape: IonText, location_name: "IonText"))
    ValueHolder.struct_class = Types::ValueHolder

    ValueHolders.member = Shapes::ShapeRef.new(shape: ValueHolder)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-07-11"

      api.metadata = {
        "apiVersion" => "2019-07-11",
        "endpointPrefix" => "session.qldb",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceAbbreviation" => "QLDB Session",
        "serviceFullName" => "Amazon QLDB Session",
        "serviceId" => "QLDB Session",
        "signatureVersion" => "v4",
        "signingName" => "qldb",
        "targetPrefix" => "QLDBSession",
        "uid" => "qldb-session-2019-07-11",
      }

      api.add_operation(:send_command, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendCommand"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendCommandRequest)
        o.output = Shapes::ShapeRef.new(shape: SendCommandResult)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidSessionException)
        o.errors << Shapes::ShapeRef.new(shape: OccConflictException)
        o.errors << Shapes::ShapeRef.new(shape: RateExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: CapacityExceededException)
      end)
    end

  end
end
