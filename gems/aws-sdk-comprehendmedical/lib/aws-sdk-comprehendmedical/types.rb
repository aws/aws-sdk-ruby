# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ComprehendMedical
  module Types

    # An extracted segment of the text that is an attribute of an entity, or
    # otherwise related to an entity, such as the dosage of a medication
    # taken. It contains information about the attribute such as id, begin
    # and end offset within the input text, and the segment of the input
    # text.
    #
    # @!attribute [rw] type
    #   The type of attribute.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend Medical has that the
    #   segment of text is correctly recognized as an attribute.
    #   @return [Float]
    #
    # @!attribute [rw] relationship_score
    #   The level of confidence that Amazon Comprehend Medical has that this
    #   attribute is correctly related to this entity.
    #   @return [Float]
    #
    # @!attribute [rw] id
    #   The numeric identifier for this attribute. This is a monotonically
    #   increasing id unique within this response rather than a global
    #   unique identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] begin_offset
    #   The 0-based character offset in the input text that shows where the
    #   attribute begins. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The 0-based character offset in the input text that shows where the
    #   attribute ends. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The segment of input text extracted as this attribute.
    #   @return [String]
    #
    # @!attribute [rw] traits
    #   Contextual information for this attribute.
    #   @return [Array<Types::Trait>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Attribute AWS API Documentation
    #
    class Attribute < Struct.new(
      :type,
      :score,
      :relationship_score,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :traits)
      include Aws::Structure
    end

    # Provides information for filtering a list of detection jobs.
    #
    # @note When making an API call, you may pass ComprehendMedicalAsyncJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ComprehendMedicalAsyncJobFilter AWS API Documentation
    #
    class ComprehendMedicalAsyncJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      include Aws::Structure
    end

    # Provides information about a detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned to the detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the detection job. If the status is `FAILED`,
    #   the `Message` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the detection job was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the detection job completed.
    #   @return [Time]
    #
    # @!attribute [rw] expiration_time
    #   The date and time that job metadata is deleted from the server.
    #   Output files in your S3 bucket will not be deleted. After the
    #   metadata is deleted, the job will no longer appear in the results of
    #   the `ListEntitiesDetectionV2Job` or the `ListPHIDetectionJobs`
    #   operation.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend Medical
    #   read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] manifest_file_path
    #   The path to the file that describes the results of a batch job.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The AWS Key Management Service key, if any, used to encrypt the
    #   output files.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used to analyze the documents. The version
    #   number looks like X.X.X. You can use this information to track the
    #   model used for a particular batch of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ComprehendMedicalAsyncJobProperties AWS API Documentation
    #
    class ComprehendMedicalAsyncJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :expiration_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :manifest_file_path,
      :kms_key,
      :model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEntitiesDetectionV2JobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   The `StartEntitiesDetectionV2Job` operation returns this identifier
    #   in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribeEntitiesDetectionV2JobRequest AWS API Documentation
    #
    class DescribeEntitiesDetectionV2JobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] comprehend_medical_async_job_properties
    #   An object that contains the properties associated with a detection
    #   job.
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribeEntitiesDetectionV2JobResponse AWS API Documentation
    #
    class DescribeEntitiesDetectionV2JobResponse < Struct.new(
      :comprehend_medical_async_job_properties)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePHIDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend Medical generated for the job.
    #   The `StartPHIDetectionJob` operation returns this identifier in its
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribePHIDetectionJobRequest AWS API Documentation
    #
    class DescribePHIDetectionJobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] comprehend_medical_async_job_properties
    #   An object that contains the properties associated with a detection
    #   job.
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DescribePHIDetectionJobResponse AWS API Documentation
    #
    class DescribePHIDetectionJobResponse < Struct.new(
      :comprehend_medical_async_job_properties)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string containing the clinical content being examined
    #   for entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesRequest AWS API Documentation
    #
    class DetectEntitiesRequest < Struct.new(
      :text)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The collection of medical entities extracted from the input text and
    #   their associated information. For each entity, the response provides
    #   the entity text, the entity category, where the entity text begins
    #   and ends, and the level of confidence that Amazon Comprehend Medical
    #   has in the detection and analysis. Attributes and traits of the
    #   entity are also returned.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] unmapped_attributes
    #   Attributes extracted from the input text that we were unable to
    #   relate to an entity.
    #   @return [Array<Types::UnmappedAttribute>]
    #
    # @!attribute [rw] pagination_token
    #   If the result of the previous request to `DetectEntities` was
    #   truncated, include the `PaginationToken` to fetch the next page of
    #   entities.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used to analyze the documents. The version
    #   number looks like X.X.X. You can use this information to track the
    #   model used for a particular batch of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesResponse AWS API Documentation
    #
    class DetectEntitiesResponse < Struct.new(
      :entities,
      :unmapped_attributes,
      :pagination_token,
      :model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectEntitiesV2Request
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 string containing the clinical content being examined for
    #   entities. Each string must contain fewer than 20,000 bytes of
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesV2Request AWS API Documentation
    #
    class DetectEntitiesV2Request < Struct.new(
      :text)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The collection of medical entities extracted from the input text and
    #   their associated information. For each entity, the response provides
    #   the entity text, the entity category, where the entity text begins
    #   and ends, and the level of confidence in the detection and analysis.
    #   Attributes and traits of the entity are also returned.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] unmapped_attributes
    #   Attributes extracted from the input text that couldn't be related
    #   to an entity.
    #   @return [Array<Types::UnmappedAttribute>]
    #
    # @!attribute [rw] pagination_token
    #   If the result to the `DetectEntitiesV2` operation was truncated,
    #   include the `PaginationToken` to fetch the next page of entities.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used to analyze the documents. The version
    #   number looks like X.X.X. You can use this information to track the
    #   model used for a particular batch of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectEntitiesV2Response AWS API Documentation
    #
    class DetectEntitiesV2Response < Struct.new(
      :entities,
      :unmapped_attributes,
      :pagination_token,
      :model_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectPHIRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string containing the clinical content being examined
    #   for PHI entities. Each string must contain fewer than 20,000 bytes
    #   of characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectPHIRequest AWS API Documentation
    #
    class DetectPHIRequest < Struct.new(
      :text)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   The collection of PHI entities extracted from the input text and
    #   their associated information. For each entity, the response provides
    #   the entity text, the entity category, where the entity text begins
    #   and ends, and the level of confidence that Amazon Comprehend Medical
    #   has in its detection.
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] pagination_token
    #   If the result of the previous request to `DetectPHI` was truncated,
    #   include the `PaginationToken` to fetch the next page of PHI
    #   entities.
    #   @return [String]
    #
    # @!attribute [rw] model_version
    #   The version of the model used to analyze the documents. The version
    #   number looks like X.X.X. You can use this information to track the
    #   model used for a particular batch of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/DetectPHIResponse AWS API Documentation
    #
    class DetectPHIResponse < Struct.new(
      :entities,
      :pagination_token,
      :model_version)
      include Aws::Structure
    end

    # Provides information about an extracted medical entity.
    #
    # @!attribute [rw] id
    #   The numeric identifier for the entity. This is a monotonically
    #   increasing id unique within this response rather than a global
    #   unique identifier.
    #   @return [Integer]
    #
    # @!attribute [rw] begin_offset
    #   The 0-based character offset in the input text that shows where the
    #   entity begins. The offset returns the UTF-8 code point in the
    #   string.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The 0-based character offset in the input text that shows where the
    #   entity ends. The offset returns the UTF-8 code point in the string.
    #   @return [Integer]
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend Medical has in the
    #   accuracy of the detection.
    #   @return [Float]
    #
    # @!attribute [rw] text
    #   The segment of input text extracted as this entity.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the entity.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Describes the specific type of entity with category of entities.
    #   @return [String]
    #
    # @!attribute [rw] traits
    #   Contextual information for the entity
    #   @return [Array<Types::Trait>]
    #
    # @!attribute [rw] attributes
    #   The extracted attributes that relate to this entity.
    #   @return [Array<Types::Attribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :id,
      :begin_offset,
      :end_offset,
      :score,
      :text,
      :category,
      :type,
      :traits,
      :attributes)
      include Aws::Structure
    end

    # The input properties for an entities detection job
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The URI of the S3 bucket that contains the input data. The bucket
    #   must be in the same region as the API endpoint that you are calling.
    #
    #   Each file in the document collection must be less than 40 KB. You
    #   can store a maximum of 30 GB in the bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The path to the input data files in the S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The input text was not in valid UTF-8 character encoding. Check your
    # text then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InvalidEncodingException AWS API Documentation
    #
    class InvalidEncodingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The request that you made is invalid. Check your request to determine
    # why it's invalid and then retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEntitiesDetectionV2JobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs based on
    #   their names, status, or the date and time that they were submitted.
    #   You can only set one filter at a time.
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListEntitiesDetectionV2JobsRequest AWS API Documentation
    #
    class ListEntitiesDetectionV2JobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] comprehend_medical_async_job_properties_list
    #   A list containing the properties of each job returned.
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListEntitiesDetectionV2JobsResponse AWS API Documentation
    #
    class ListEntitiesDetectionV2JobsResponse < Struct.new(
      :comprehend_medical_async_job_properties_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPHIDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, PARTIAL_SUCCESS, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs based on
    #   their names, status, or the date and time that they were submitted.
    #   You can only set one filter at a time.
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListPHIDetectionJobsRequest AWS API Documentation
    #
    class ListPHIDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] comprehend_medical_async_job_properties_list
    #   A list containing the properties of each job returned.
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ListPHIDetectionJobsResponse AWS API Documentation
    #
    class ListPHIDetectionJobsResponse < Struct.new(
      :comprehend_medical_async_job_properties_list,
      :next_token)
      include Aws::Structure
    end

    # The output properties for a detection job.
    #
    # @note When making an API call, you may pass OutputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket", # required
    #         s3_key: "S3Key",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   When you use the `OutputDataConfig` object with asynchronous
    #   operations, you specify the Amazon S3 location where you want to
    #   write the output data. The URI must be in the same region as the API
    #   endpoint that you are calling. The location is used as the prefix
    #   for the actual location of the output.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The path to the output data files in the S3 bucket. Amazon
    #   Comprehend Medical creates an output directory using the job ID so
    #   that the output from one job does not overwrite the output of
    #   another.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_bucket,
      :s3_key)
      include Aws::Structure
    end

    # The resource identified by the specified Amazon Resource Name (ARN)
    # was not found. Check the ARN and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The Amazon Comprehend Medical service is temporarily unavailable.
    # Please wait and then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartEntitiesDetectionV2JobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key",
    #         },
    #         output_data_config: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         client_request_token: "ClientRequestTokenString",
    #         kms_key: "KMSKey",
    #         language_code: "en", # required, accepts en
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   An AWS Key Management Service key to encrypt your output files. If
    #   you do not specify a key, the files are written in plain text.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. All documents must be in the
    #   same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartEntitiesDetectionV2JobRequest AWS API Documentation
    #
    class StartEntitiesDetectionV2JobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the `DescribeEntitiesDetectionV2Job`
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartEntitiesDetectionV2JobResponse AWS API Documentation
    #
    class StartEntitiesDetectionV2JobResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartPHIDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key",
    #         },
    #         output_data_config: { # required
    #           s3_bucket: "S3Bucket", # required
    #           s3_key: "S3Key",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         client_request_token: "ClientRequestTokenString",
    #         kms_key: "KMSKey",
    #         language_code: "en", # required, accepts en
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend Medical read
    #   access to your input data. For more information, see [ Role-Based
    #   Permissions Required for Asynchronous Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend Medical generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   An AWS Key Management Service key to encrypt your output files. If
    #   you do not specify a key, the files are written in plain text.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. All documents must be in the
    #   same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartPHIDetectionJobRequest AWS API Documentation
    #
    class StartPHIDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the `DescribePHIDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StartPHIDetectionJobResponse AWS API Documentation
    #
    class StartPHIDetectionJobResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopEntitiesDetectionV2JobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the medical entities job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopEntitiesDetectionV2JobRequest AWS API Documentation
    #
    class StopEntitiesDetectionV2JobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the medical entities detection job that was
    #   stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopEntitiesDetectionV2JobResponse AWS API Documentation
    #
    class StopEntitiesDetectionV2JobResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopPHIDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the PHI detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopPHIDetectionJobRequest AWS API Documentation
    #
    class StopPHIDetectionJobRequest < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the PHI detection job that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/StopPHIDetectionJobResponse AWS API Documentation
    #
    class StopPHIDetectionJobResponse < Struct.new(
      :job_id)
      include Aws::Structure
    end

    # The size of the text you submitted exceeds the size limit. Reduce the
    # size of the text or use a smaller document and then retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/TextSizeLimitExceededException AWS API Documentation
    #
    class TextSizeLimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You have made too many requests within a short period of time. Wait
    # for a short time and then try your request again. Contact customer
    # support for more information about a service limit increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Provides contextual information about the extracted entity.
    #
    # @!attribute [rw] name
    #   Provides a name or contextual description about the trait.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend Medical has in the
    #   accuracy of this trait.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/Trait AWS API Documentation
    #
    class Trait < Struct.new(
      :name,
      :score)
      include Aws::Structure
    end

    # An attribute that we extracted, but were unable to relate to an
    # entity.
    #
    # @!attribute [rw] type
    #   The type of the attribute, could be one of the following values:
    #   "MEDICATION", "MEDICAL\_CONDITION", "ANATOMY",
    #   "TEST\_AND\_TREATMENT\_PROCEDURE" or
    #   "PROTECTED\_HEALTH\_INFORMATION".
    #   @return [String]
    #
    # @!attribute [rw] attribute
    #   The specific attribute that has been extracted but not mapped to an
    #   entity.
    #   @return [Types::Attribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/UnmappedAttribute AWS API Documentation
    #
    class UnmappedAttribute < Struct.new(
      :type,
      :attribute)
      include Aws::Structure
    end

    # The filter that you specified for the operation is invalid. Check the
    # filter values that you entered and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehendmedical-2018-10-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
