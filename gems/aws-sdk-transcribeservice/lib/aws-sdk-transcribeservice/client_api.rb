# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  # @api private
  module ClientApi

    include Seahorse::Model

    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DateTime = Shapes::TimestampShape.new(name: 'DateTime')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    GetTranscriptionJobRequest = Shapes::StructureShape.new(name: 'GetTranscriptionJobRequest')
    GetTranscriptionJobResponse = Shapes::StructureShape.new(name: 'GetTranscriptionJobResponse')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    LanguageCode = Shapes::StringShape.new(name: 'LanguageCode')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTranscriptionJobsRequest = Shapes::StructureShape.new(name: 'ListTranscriptionJobsRequest')
    ListTranscriptionJobsResponse = Shapes::StructureShape.new(name: 'ListTranscriptionJobsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Media = Shapes::StructureShape.new(name: 'Media')
    MediaFormat = Shapes::StringShape.new(name: 'MediaFormat')
    MediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MediaSampleRateHertz')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    StartTranscriptionJobRequest = Shapes::StructureShape.new(name: 'StartTranscriptionJobRequest')
    StartTranscriptionJobResponse = Shapes::StructureShape.new(name: 'StartTranscriptionJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    Transcript = Shapes::StructureShape.new(name: 'Transcript')
    TranscriptionJob = Shapes::StructureShape.new(name: 'TranscriptionJob')
    TranscriptionJobName = Shapes::StringShape.new(name: 'TranscriptionJobName')
    TranscriptionJobStatus = Shapes::StringShape.new(name: 'TranscriptionJobStatus')
    TranscriptionJobSummaries = Shapes::ListShape.new(name: 'TranscriptionJobSummaries')
    TranscriptionJobSummary = Shapes::StructureShape.new(name: 'TranscriptionJobSummary')
    Uri = Shapes::StringShape.new(name: 'Uri')

    GetTranscriptionJobRequest.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "TranscriptionJobName"))
    GetTranscriptionJobRequest.struct_class = Types::GetTranscriptionJobRequest

    GetTranscriptionJobResponse.add_member(:transcription_job, Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: "TranscriptionJob"))
    GetTranscriptionJobResponse.struct_class = Types::GetTranscriptionJobResponse

    ListTranscriptionJobsRequest.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, required: true, location_name: "Status"))
    ListTranscriptionJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTranscriptionJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTranscriptionJobsRequest.struct_class = Types::ListTranscriptionJobsRequest

    ListTranscriptionJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "Status"))
    ListTranscriptionJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTranscriptionJobsResponse.add_member(:transcription_job_summaries, Shapes::ShapeRef.new(shape: TranscriptionJobSummaries, location_name: "TranscriptionJobSummaries"))
    ListTranscriptionJobsResponse.struct_class = Types::ListTranscriptionJobsResponse

    Media.add_member(:media_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "MediaFileUri"))
    Media.struct_class = Types::Media

    StartTranscriptionJobRequest.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, required: true, location_name: "TranscriptionJobName"))
    StartTranscriptionJobRequest.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, required: true, location_name: "LanguageCode"))
    StartTranscriptionJobRequest.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    StartTranscriptionJobRequest.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, required: true, location_name: "MediaFormat"))
    StartTranscriptionJobRequest.add_member(:media, Shapes::ShapeRef.new(shape: Media, required: true, location_name: "Media"))
    StartTranscriptionJobRequest.struct_class = Types::StartTranscriptionJobRequest

    StartTranscriptionJobResponse.add_member(:transcription_job, Shapes::ShapeRef.new(shape: TranscriptionJob, location_name: "TranscriptionJob"))
    StartTranscriptionJobResponse.struct_class = Types::StartTranscriptionJobResponse

    Transcript.add_member(:transcript_file_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "TranscriptFileUri"))
    Transcript.struct_class = Types::Transcript

    TranscriptionJob.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "TranscriptionJobName"))
    TranscriptionJob.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    TranscriptionJob.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    TranscriptionJob.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MediaSampleRateHertz, location_name: "MediaSampleRateHertz"))
    TranscriptionJob.add_member(:media_format, Shapes::ShapeRef.new(shape: MediaFormat, location_name: "MediaFormat"))
    TranscriptionJob.add_member(:media, Shapes::ShapeRef.new(shape: Media, location_name: "Media"))
    TranscriptionJob.add_member(:transcript, Shapes::ShapeRef.new(shape: Transcript, location_name: "Transcript"))
    TranscriptionJob.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    TranscriptionJob.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    TranscriptionJob.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TranscriptionJob.struct_class = Types::TranscriptionJob

    TranscriptionJobSummaries.member = Shapes::ShapeRef.new(shape: TranscriptionJobSummary)

    TranscriptionJobSummary.add_member(:transcription_job_name, Shapes::ShapeRef.new(shape: TranscriptionJobName, location_name: "TranscriptionJobName"))
    TranscriptionJobSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CreationTime"))
    TranscriptionJobSummary.add_member(:completion_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "CompletionTime"))
    TranscriptionJobSummary.add_member(:language_code, Shapes::ShapeRef.new(shape: LanguageCode, location_name: "LanguageCode"))
    TranscriptionJobSummary.add_member(:transcription_job_status, Shapes::ShapeRef.new(shape: TranscriptionJobStatus, location_name: "TranscriptionJobStatus"))
    TranscriptionJobSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    TranscriptionJobSummary.struct_class = Types::TranscriptionJobSummary


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-26"

      api.metadata = {
        "endpointPrefix" => "transcribe",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "Amazon Transcribe Service",
        "signatureVersion" => "v4",
        "signingName" => "transcribe",
        "targetPrefix" => "Transcribe",
      }

      api.add_operation(:get_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
      end)

      api.add_operation(:list_transcription_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTranscriptionJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTranscriptionJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTranscriptionJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_transcription_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTranscriptionJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartTranscriptionJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTranscriptionJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
