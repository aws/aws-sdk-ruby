# frozen_string_literal: true

# This is generated code!

module Aws::ComprehendMedical
  # This module contains the types returned by client operations.
  module Types

    # <p> An extracted segment of the text that is an attribute of an entity, or otherwise related
    #       to an entity, such as the dosage of a medication taken. It contains information about the
    #       attribute such as id, begin and end offset within the input text, and the segment of the input
    #       text. </p>
    # @!attribute type
    #   <p> The type of attribute. </p>
    #   @return [String]
    # @!attribute score
    #   <p> The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized
    #         as an attribute. </p>
    #   @return [Float]
    # @!attribute relationship_score
    #   <p> The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this
    #         entity. </p>
    #   @return [Float]
    # @!attribute relationship_type
    #   <p>The type of relationship between the entity and attribute. Type for the relationship is
    #           <code>OVERLAP</code>, indicating that the entity occurred at the same time as the
    #           <code>Date_Expression</code>. </p>
    #   @return [String]
    # @!attribute id
    #   <p> The numeric identifier for this attribute. This is a monotonically increasing id unique
    #         within this response rather than a global unique identifier. </p>
    #   @return [Integer]
    # @!attribute begin_offset
    #   <p> The 0-based character offset in the input text that shows where the attribute begins. The
    #         offset returns the UTF-8 code point in the string. </p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p> The 0-based character offset in the input text that shows where the attribute ends. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p> The segment of input text extracted as this attribute.</p>
    #   @return [String]
    # @!attribute category
    #   <p> The category of attribute. </p>
    #   @return [String]
    # @!attribute traits
    #   <p> Contextual information for this attribute. </p>
    #   @return [Array<Types::Trait>]
    class Attribute < Struct.new(
      nil,
      :type,
      :score,
      :relationship_score,
      :relationship_type,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :category,
      :traits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The number of characters in the input text to be analyzed. 
    #     </p>
    # @!attribute original_text_characters
    #   <p>
    #         The number of characters present in the input text document as processed by Amazon Comprehend Medical.
    #       </p>
    #   @return [Integer]
    class Characters < Struct.new(
      nil,
      :original_text_characters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of detection jobs.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class ComprehendMedicalAsyncJobFilter < Struct.new(
      nil,
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides information about a detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the detection job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned to the detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the detection job. If the status is <code>FAILED</code>, the
    #           <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the detection job completed.</p>
    #   @return [Time]
    # @!attribute expiration_time
    #   <p>The date and time that job metadata is deleted from the server. Output files in your S3
    #         bucket will not be deleted. After the metadata is deleted, the job will no longer appear in
    #         the results of the <code>ListEntitiesDetectionV2Job</code> or the
    #           <code>ListPHIDetectionJobs</code> operation.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the detection job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the detection job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives Amazon Comprehend Medical read access to your input data.</p>
    #   @return [String]
    # @!attribute manifest_file_path
    #   <p>The path to the file that describes the results of a batch job.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>The AWS Key Management Service key, if any, used to encrypt the output files. </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents. The version number looks like
    #         X.X.X. You can use this information to track the model used for a particular batch of
    #         documents.</p>
    #   @return [String]
    class ComprehendMedicalAsyncJobProperties < Struct.new(
      nil,
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
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The
    #           <code>StartEntitiesDetectionV2Job</code> operation returns this identifier in its
    #         response.</p>
    #   @return [String]
    class DescribeEntitiesDetectionV2JobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties
    #   <p>An object that contains the properties associated with a detection job.</p>
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    class DescribeEntitiesDetectionV2JobResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. <code>The
    #           StartICD10CMInferenceJob</code> operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeICD10CMInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties
    #   <p>An object that contains the properties associated with a detection job.</p>
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    class DescribeICD10CMInferenceJobResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The <code>StartPHIDetectionJob</code>
    #         operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribePHIDetectionJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties
    #   <p>An object that contains the properties associated with a detection job.</p>
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    class DescribePHIDetectionJobResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend Medical generated for the job. The
    #         StartRxNormInferenceJob operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeRxNormInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties
    #   <p>An object that contains the properties associated with a detection job.</p>
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    class DescribeRxNormInferenceJobResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #         The identifier that Amazon Comprehend Medical generated for the job. The StartSNOMEDCTInferenceJob operation returns this identifier in its response.
    #       </p>
    #   @return [String]
    class DescribeSNOMEDCTInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties
    #   <p>Provides information about a detection job.</p>
    #   @return [Types::ComprehendMedicalAsyncJobProperties]
    class DescribeSNOMEDCTInferenceJobResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p> A UTF-8 text string containing the clinical content being examined for entities.</p>
    #   @return [String]
    class DetectEntitiesRequest < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The collection of medical entities extracted from the input text and their associated
    #         information. For each entity, the response provides the entity text, the entity category,
    #         where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the
    #         detection and analysis. Attributes and traits of the entity are also returned.</p>
    #   @return [Array<Types::Entity>]
    # @!attribute unmapped_attributes
    #   <p>Attributes extracted from the input text that we were unable to relate to an
    #         entity.</p>
    #   @return [Array<Types::UnmappedAttribute>]
    # @!attribute pagination_token
    #   <p>If the result of the previous request to <code>DetectEntities</code> was truncated,
    #         include the <code>PaginationToken</code> to fetch the next page of entities.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents. The version number looks like
    #         X.X.X. You can use this information to track the model used for a particular batch of
    #         documents.</p>
    #   @return [String]
    class DetectEntitiesResponse < Struct.new(
      nil,
      :entities,
      :unmapped_attributes,
      :pagination_token,
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 string containing the clinical content being examined for entities.</p>
    #   @return [String]
    class DetectEntitiesV2Request < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The collection of medical entities extracted from the input text and their associated
    #         information. For each entity, the response provides the entity text, the entity category,
    #         where the entity text begins and ends, and the level of confidence in the detection and
    #         analysis. Attributes and traits of the entity are also returned.</p>
    #   @return [Array<Types::Entity>]
    # @!attribute unmapped_attributes
    #   <p>Attributes extracted from the input text that couldn't be related to an entity.</p>
    #   @return [Array<Types::UnmappedAttribute>]
    # @!attribute pagination_token
    #   <p>If the result to the <code>DetectEntitiesV2</code> operation was truncated, include the
    #           <code>PaginationToken</code> to fetch the next page of entities.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents. The version number looks like
    #         X.X.X. You can use this information to track the model used for a particular batch of
    #         documents.</p>
    #   @return [String]
    class DetectEntitiesV2Response < Struct.new(
      nil,
      :entities,
      :unmapped_attributes,
      :pagination_token,
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string containing the clinical content being examined for PHI entities.</p>
    #   @return [String]
    class DetectPHIRequest < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The collection of PHI entities extracted from the input text and their associated
    #         information. For each entity, the response provides the entity text, the entity category,
    #         where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in its
    #         detection.</p>
    #   @return [Array<Types::Entity>]
    # @!attribute pagination_token
    #   <p>If the result of the previous request to <code>DetectPHI</code> was truncated, include
    #         the <code>PaginationToken</code> to fetch the next page of PHI entities. </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents. The version number looks like
    #         X.X.X. You can use this information to track the model used for a particular batch of
    #         documents.</p>
    #   @return [String]
    class DetectPHIResponse < Struct.new(
      nil,
      :entities,
      :pagination_token,
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides information about an extracted medical entity.</p>
    # @!attribute id
    #   <p> The numeric identifier for the entity. This is a monotonically increasing id unique
    #         within this response rather than a global unique identifier. </p>
    #   @return [Integer]
    # @!attribute begin_offset
    #   <p> The 0-based character offset in the input text that shows where the entity begins. The
    #         offset returns the UTF-8 code point in the string. </p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p> The 0-based character offset in the input text that shows where the entity ends. The
    #         offset returns the UTF-8 code point in the string. </p>
    #   @return [Integer]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detection.</p>
    #   @return [Float]
    # @!attribute text
    #   <p> The segment of input text extracted as this entity.</p>
    #   @return [String]
    # @!attribute category
    #   <p> The category of the entity.</p>
    #   @return [String]
    # @!attribute type
    #   <p> Describes the specific type of entity with category of entities.</p>
    #   @return [String]
    # @!attribute traits
    #   <p>Contextual information for the entity.</p>
    #   @return [Array<Types::Trait>]
    # @!attribute attributes
    #   <p> The extracted attributes that relate to this entity.</p>
    #   @return [Array<Types::Attribute>]
    class Entity < Struct.new(
      nil,
      :id,
      :begin_offset,
      :end_offset,
      :score,
      :text,
      :category,
      :type,
      :traits,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The detected attributes that relate to an entity. This includes an extracted segment of
    #       the text that is an attribute of an entity, or otherwise related to an entity. InferICD10CM
    #       detects the following attributes: <code>Direction</code>, <code>System, Organ or Site</code>,
    #       and <code>Acuity</code>.</p>
    # @!attribute type
    #   <p>The type of attribute. InferICD10CM detects entities of the type <code>DX_NAME</code>.
    #       </p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the segment of text is
    #         correctly recognized as an attribute.</p>
    #   @return [Float]
    # @!attribute relationship_score
    #   <p>The level of confidence that Amazon Comprehend Medical has that this attribute is
    #         correctly related to this entity.</p>
    #   @return [Float]
    # @!attribute id
    #   <p>The numeric identifier for this attribute. This is a monotonically increasing id unique
    #         within this response rather than a global unique identifier.</p>
    #   @return [Integer]
    # @!attribute begin_offset
    #   <p>The 0-based character offset in the input text that shows where the attribute begins. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The 0-based character offset in the input text that shows where the attribute ends. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p>The segment of input text which contains the detected attribute.</p>
    #   @return [String]
    # @!attribute traits
    #   <p>The contextual information for the attribute. The traits recognized by InferICD10CM are
    #           <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
    #         <code>NEGATION</code>.</p>
    #   @return [Array<Types::ICD10CMTrait>]
    # @!attribute category
    #   <p>The category of attribute. Can be either of <code>DX_NAME</code> or <code>TIME_EXPRESSION</code>.</p>
    #   @return [String]
    # @!attribute relationship_type
    #   <p>The type of relationship between the entity and attribute. Type for the relationship can
    #           be either of <code>OVERLAP</code> or <code>SYSTEM_ORGAN_SITE</code>.</p>
    #   @return [String]
    class ICD10CMAttribute < Struct.new(
      nil,
      :type,
      :score,
      :relationship_score,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :traits,
      :category,
      :relationship_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The ICD-10-CM concepts that the entity could refer to, along with a score indicating the
    #       likelihood of the match.</p>
    # @!attribute description
    #   <p>The long description of the ICD-10-CM code in the ontology.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The ICD-10-CM code that identifies the concept found in the knowledge base from the
    #         Centers for Disease Control.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately
    #         linked to an ICD-10-CM concept.</p>
    #   @return [Float]
    class ICD10CMConcept < Struct.new(
      nil,
      :description,
      :code,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of medical entities extracted from the input text and their associated
    #       information. For each entity, the response provides the entity text, the entity category,
    #       where the entity text begins and ends, and the level of confidence that Amazon Comprehend
    #       Medical has in the detection and analysis. Attributes and traits of the entity are also
    #       returned. </p>
    # @!attribute id
    #   <p>The numeric identifier for the entity. This is a monotonically increasing id unique within
    #         this response rather than a global unique identifier.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p>The segment of input text that is matched to the detected entity.</p>
    #   @return [String]
    # @!attribute category
    #   <p> The category of the entity. InferICD10CM detects entities in the
    #           <code>MEDICAL_CONDITION</code> category. </p>
    #   @return [String]
    # @!attribute type
    #   <p>Describes the specific type of entity with category of entities. InferICD10CM detects
    #         entities of the type <code>DX_NAME</code> and <code>TIME_EXPRESSION</code>.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    # @!attribute begin_offset
    #   <p>The 0-based character offset in the input text that shows where the entity begins. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The 0-based character offset in the input text that shows where the entity ends. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>The detected attributes that relate to the entity. An extracted segment of the text that
    #         is an attribute of an entity, or otherwise related to an entity, such as the nature of a
    #         medical condition.</p>
    #   @return [Array<Types::ICD10CMAttribute>]
    # @!attribute traits
    #   <p>Provides Contextual information for the entity. The traits recognized by InferICD10CM are
    #           <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
    #         <code>NEGATION.</code>
    #            </p>
    #   @return [Array<Types::ICD10CMTrait>]
    # @!attribute icd10_cm_concepts
    #   <p>The ICD-10-CM concepts that the entity could refer to, along with a score indicating the
    #         likelihood of the match.</p>
    #   @return [Array<Types::ICD10CMConcept>]
    class ICD10CMEntity < Struct.new(
      nil,
      :id,
      :text,
      :category,
      :type,
      :score,
      :begin_offset,
      :end_offset,
      :attributes,
      :traits,
      :icd10_cm_concepts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contextual information for the entity. The traits recognized by InferICD10CM are
    #         <code>DIAGNOSIS</code>, <code>SIGN</code>, <code>SYMPTOM</code>, and
    #       <code>NEGATION</code>.</p>
    # @!attribute name
    #   <p>Provides a name or contextual description about the trait.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized
    #         as a trait.</p>
    #   @return [Float]
    class ICD10CMTrait < Struct.new(
      nil,
      :name,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>The input text used for analysis.</p>
    #   @return [String]
    class InferICD10CMRequest < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The medical conditions detected in the text linked to ICD-10-CM concepts. If the action is
    #         successful, the service sends back an HTTP 200 response, as well as the entities
    #         detected.</p>
    #   @return [Array<Types::ICD10CMEntity>]
    # @!attribute pagination_token
    #   <p>If the result of the previous request to <code>InferICD10CM</code> was truncated, include
    #         the <code>PaginationToken</code> to fetch the next page of medical condition entities. </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents, in the format
    #           <i>n</i>.<i>n</i>.<i>n</i> You can use this
    #         information to track the model used for a particular batch of documents.</p>
    #   @return [String]
    class InferICD10CMResponse < Struct.new(
      nil,
      :entities,
      :pagination_token,
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>The input text used for analysis.</p>
    #   @return [String]
    class InferRxNormRequest < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>The medication entities detected in the text linked to RxNorm concepts. If the action is
    #         successful, the service sends back an HTTP 200 response, as well as the entities
    #         detected.</p>
    #   @return [Array<Types::RxNormEntity>]
    # @!attribute pagination_token
    #   <p>If the result of the previous request to <code>InferRxNorm</code> was truncated, include
    #         the <code>PaginationToken</code> to fetch the next page of medication entities.</p>
    #   @return [String]
    # @!attribute model_version
    #   <p>The version of the model used to analyze the documents, in the format
    #           <i>n</i>.<i>n</i>.<i>n</i> You can use this
    #         information to track the model used for a particular batch of documents.</p>
    #   @return [String]
    class InferRxNormResponse < Struct.new(
      nil,
      :entities,
      :pagination_token,
      :model_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>The input text to be analyzed using InferSNOMEDCT.</p>
    #   @return [String]
    class InferSNOMEDCTRequest < Struct.new(
      nil,
      :text,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>
    #         The collection of medical concept entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned.
    #       </p>
    #   @return [Array<Types::SNOMEDCTEntity>]
    # @!attribute pagination_token
    #   <p>
    #         If the result of the request is truncated, the pagination token can be used to fetch the next page of entities.
    #       </p>
    #   @return [String]
    # @!attribute model_version
    #   <p>
    #         The version of the model used to analyze the documents, in the format n.n.n You can use this information to track the model used for a particular batch of documents.
    #       </p>
    #   @return [String]
    # @!attribute snomedct_details
    #   <p>
    #         The details of the SNOMED-CT revision, including the edition, language, and version date. 
    #       </p>
    #   @return [Types::SNOMEDCTDetails]
    # @!attribute characters
    #   <p>
    #         The number of characters in the input request documentation. 
    #       </p>
    #   @return [Types::Characters]
    class InferSNOMEDCTResponse < Struct.new(
      nil,
      :entities,
      :pagination_token,
      :model_version,
      :snomedct_details,
      :characters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input properties for an entities detection job. This includes the name of the S3
    #       bucket and the path to the files to be analyzed. </p>
    # @!attribute s3_bucket
    #   <p>The URI of the S3 bucket that contains the input data. The bucket must be in the same
    #         region as the API endpoint that you are calling.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The path to the input data files in the S3 bucket.</p>
    #   @return [String]
    class InputDataConfig < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An internal server error occurred. Retry your request. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The input text was not in valid UTF-8 character encoding. Check your text then retry your
    #       request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEncodingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The request that you made is invalid. Check your request to determine why it's invalid
    #       and then retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListEntitiesDetectionV2JobsRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEntitiesDetectionV2JobsResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListICD10CMInferenceJobsRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListICD10CMInferenceJobsResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListPHIDetectionJobsRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListPHIDetectionJobsResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs based on their names, status, or
    #         the date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Identifies the next page of results to return.</p>
    #   @return [Integer]
    class ListRxNormInferenceJobsRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties_list
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListRxNormInferenceJobsResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Provides information for filtering a list of detection jobs.</p>
    #   @return [Types::ComprehendMedicalAsyncJobFilter]
    # @!attribute next_token
    #   <p>
    #         Identifies the next page of InferSNOMEDCT results to return.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #         The maximum number of results to return in each page. The default is 100.
    #       </p>
    #   @return [Integer]
    class ListSNOMEDCTInferenceJobsRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comprehend_medical_async_job_properties_list
    #   <p>
    #         A list containing the properties of each job that is returned.
    #       </p>
    #   @return [Array<Types::ComprehendMedicalAsyncJobProperties>]
    # @!attribute next_token
    #   <p>
    #         Identifies the next page of results to return.
    #       </p>
    #   @return [String]
    class ListSNOMEDCTInferenceJobsResponse < Struct.new(
      nil,
      :comprehend_medical_async_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output properties for a detection job.</p>
    # @!attribute s3_bucket
    #   <p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
    #         specify the Amazon S3 location where you want to write the output data. The URI must be in the
    #         same region as the API endpoint that you are calling. The location is used as the prefix for
    #         the actual location of the output.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The path to the output data files in the S3 bucket. Amazon Comprehend Medical creates an output directory
    #         using the job ID so that the output from one job does not overwrite the output of
    #         another.</p>
    #   @return [String]
    class OutputDataConfig < Struct.new(
      nil,
      :s3_bucket,
      :s3_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource identified by the specified Amazon Resource Name (ARN) was not found. Check
    #       the ARN and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The extracted attributes that relate to this entity. The attributes recognized by
    #       InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>,
    #         <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>.</p>
    # @!attribute type
    #   <p>The type of attribute. The types of attributes recognized by InferRxNorm are
    #           <code>BRAND_NAME</code> and <code>GENERIC_NAME</code>.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly
    #         recognized as an attribute.</p>
    #   @return [Float]
    # @!attribute relationship_score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the attribute is
    #         accurately linked to an entity.</p>
    #   @return [Float]
    # @!attribute id
    #   <p>The numeric identifier for this attribute. This is a monotonically increasing id unique
    #         within this response rather than a global unique identifier.</p>
    #   @return [Integer]
    # @!attribute begin_offset
    #   <p>The 0-based character offset in the input text that shows where the attribute begins. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The 0-based character offset in the input text that shows where the attribute ends. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p>The segment of input text which corresponds to the detected attribute.</p>
    #   @return [String]
    # @!attribute traits
    #   <p>Contextual information for the attribute. InferRxNorm recognizes the trait
    #           <code>NEGATION</code> for attributes, i.e. that the patient is not taking a specific dose or
    #         form of a medication.</p>
    #   @return [Array<Types::RxNormTrait>]
    class RxNormAttribute < Struct.new(
      nil,
      :type,
      :score,
      :relationship_score,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :traits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The RxNorm concept that the entity could refer to, along with a score indicating the
    #       likelihood of the match.</p>
    # @!attribute description
    #   <p>The description of the RxNorm concept.</p>
    #   @return [String]
    # @!attribute code
    #   <p>RxNorm concept ID, also known as the RxCUI.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has that the entity is accurately
    #         linked to the reported RxNorm concept.</p>
    #   @return [Float]
    class RxNormConcept < Struct.new(
      nil,
      :description,
      :code,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The collection of medical entities extracted from the input text and their associated
    #       information. For each entity, the response provides the entity text, the entity category,
    #       where the entity text begins and ends, and the level of confidence that Amazon Comprehend
    #       Medical has in the detection and analysis. Attributes and traits of the entity are also
    #       returned. </p>
    # @!attribute id
    #   <p>The numeric identifier for the entity. This is a monotonically increasing id unique within
    #         this response rather than a global unique identifier.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p>The segment of input text extracted from which the entity was detected.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the entity. The recognized categories are <code>GENERIC</code> or
    #           <code>BRAND_NAME</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p> Describes the specific type of entity. For InferRxNorm, the recognized entity type is
    #           <code>MEDICATION</code>.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected
    #         entity.</p>
    #   @return [Float]
    # @!attribute begin_offset
    #   <p>The 0-based character offset in the input text that shows where the entity begins. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The 0-based character offset in the input text that shows where the entity ends. The
    #         offset returns the UTF-8 code point in the string.</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>The extracted attributes that relate to the entity. The attributes recognized by
    #         InferRxNorm are <code>DOSAGE</code>, <code>DURATION</code>, <code>FORM</code>,
    #           <code>FREQUENCY</code>, <code>RATE</code>, <code>ROUTE_OR_MODE</code>, and
    #           <code>STRENGTH</code>.</p>
    #   @return [Array<Types::RxNormAttribute>]
    # @!attribute traits
    #   <p>Contextual information for the entity.</p>
    #   @return [Array<Types::RxNormTrait>]
    # @!attribute rx_norm_concepts
    #   <p>The RxNorm concepts that the entity could refer to, along with a score indicating the
    #         likelihood of the match.</p>
    #   @return [Array<Types::RxNormConcept>]
    class RxNormEntity < Struct.new(
      nil,
      :id,
      :text,
      :category,
      :type,
      :score,
      :begin_offset,
      :end_offset,
      :attributes,
      :traits,
      :rx_norm_concepts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The contextual information for the entity. InferRxNorm recognizes the trait
    #         <code>NEGATION</code>, which is any indication that the patient is not taking a medication.
    #     </p>
    # @!attribute name
    #   <p>Provides a name or contextual description about the trait.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected
    #         trait.</p>
    #   @return [Float]
    class RxNormTrait < Struct.new(
      nil,
      :name,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The extracted attributes that relate to an entity. An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken.
    #     </p>
    # @!attribute category
    #   <p>
    #         The category of the detected attribute. Possible categories include MEDICAL_CONDITION, ANATOMY, and TEST_TREATMENT_PROCEDURE.
    #       </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #         The type of attribute. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE,TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, and TREATMENT_NAME.
    #       </p>
    #   @return [String]
    # @!attribute score
    #   <p>
    #         The level of confidence that Amazon Comprehend Medical has that the segment of text is correctly recognized as an attribute.
    #       </p>
    #   @return [Float]
    # @!attribute relationship_score
    #   <p>
    #         The level of confidence that Amazon Comprehend Medical has that this attribute is correctly related to this entity.
    #       </p>
    #   @return [Float]
    # @!attribute relationship_type
    #   <p>
    #         The type of relationship that exists between the entity and the related attribute. 
    #       </p>
    #   @return [String]
    # @!attribute id
    #   <p>
    #         The numeric identifier for this attribute. This is a monotonically increasing id unique within this response rather than a global unique identifier.
    #       </p>
    #   @return [Integer]
    # @!attribute begin_offset
    #   <p>
    #         The 0-based character offset in the input text that shows where the attribute begins. The offset returns the UTF-8 code point in the string.
    #       </p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>
    #         The 0-based character offset in the input text that shows where the attribute ends. The offset returns the UTF-8 code point in the string.
    #       </p>
    #   @return [Integer]
    # @!attribute text
    #   <p>
    #         The segment of input text extracted as this attribute.
    #       </p>
    #   @return [String]
    # @!attribute traits
    #   <p>
    #         Contextual information for an attribute. Examples include signs, symptoms, diagnosis, and negation.
    #       </p>
    #   @return [Array<Types::SNOMEDCTTrait>]
    # @!attribute snomedct_concepts
    #   <p>
    #         The SNOMED-CT concepts specific to an attribute, along with a score indicating the likelihood of the match.
    #       </p>
    #   @return [Array<Types::SNOMEDCTConcept>]
    class SNOMEDCTAttribute < Struct.new(
      nil,
      :category,
      :type,
      :score,
      :relationship_score,
      :relationship_type,
      :id,
      :begin_offset,
      :end_offset,
      :text,
      :traits,
      :snomedct_concepts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The SNOMED-CT concepts that the entity could refer to, along with a score indicating the likelihood of the match.
    #     </p>
    # @!attribute description
    #   <p>
    #         The description of the SNOMED-CT concept. 
    #       </p>
    #   @return [String]
    # @!attribute code
    #   <p>
    #         The numeric ID for the SNOMED-CT concept.
    #       </p>
    #   @return [String]
    # @!attribute score
    #   <p>
    #         The level of confidence Amazon Comprehend Medical has that the entity should be linked to the identified SNOMED-CT concept.
    #       </p>
    #   @return [Float]
    class SNOMEDCTConcept < Struct.new(
      nil,
      :description,
      :code,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The information about the revision of the SNOMED-CT ontology in the response. Specifically, the details include the SNOMED-CT edition, language, and version date. 
    #     </p>
    # @!attribute edition
    #   <p>
    #         The edition of SNOMED-CT used. The edition used for the InferSNOMEDCT editions is the US edition. 
    #       </p>
    #   @return [String]
    # @!attribute language
    #   <p>
    #         The language used in the SNOMED-CT ontology. All Amazon Comprehend Medical operations are US English (en).
    #       </p>
    #   @return [String]
    # @!attribute version_date
    #   <p>
    #         The version date of the SNOMED-CT ontology used. 
    #       </p>
    #   @return [String]
    class SNOMEDCTDetails < Struct.new(
      nil,
      :edition,
      :language,
      :version_date,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The collection of medical entities extracted from the input text and their associated information. For each entity, the response provides the entity text, the entity category, where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in the detection and analysis. Attributes and traits of the entity are also returned.
    #     </p>
    # @!attribute id
    #   <p>
    #         The numeric identifier for the entity. This is a monotonically increasing id unique within this response rather than a global unique identifier.
    #       </p>
    #   @return [Integer]
    # @!attribute text
    #   <p>
    #         The segment of input text extracted as this entity.
    #       </p>
    #   @return [String]
    # @!attribute category
    #   <p>
    #         The category of the detected entity. Possible categories are MEDICAL_CONDITION, ANATOMY, or TEST_TREATMENT_PROCEDURE. 
    #       </p>
    #   @return [String]
    # @!attribute type
    #   <p>
    #         Describes the specific type of entity with category of entities. Possible types include DX_NAME, ACUITY, DIRECTION, SYSTEM_ORGAN_SITE, TEST_NAME, TEST_VALUE, TEST_UNIT, PROCEDURE_NAME, or TREATMENT_NAME. 
    #       </p>
    #   @return [String]
    # @!attribute score
    #   <p>
    #         The level of confidence that Amazon Comprehend Medical has in the accuracy of the detected entity.
    #       </p>
    #   @return [Float]
    # @!attribute begin_offset
    #   <p>
    #         The 0-based character offset in the input text that shows where the entity begins. The offset returns the UTF-8 code point in the string.
    #       </p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>
    #         The 0-based character offset in the input text that shows where the entity ends. The offset returns the UTF-8 code point in the string.
    #       </p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>
    #         An extracted segment of the text that is an attribute of an entity, or otherwise related to an entity, such as the dosage of a medication taken.
    #       </p>
    #   @return [Array<Types::SNOMEDCTAttribute>]
    # @!attribute traits
    #   <p>
    #         Contextual information for the entity.
    #       </p>
    #   @return [Array<Types::SNOMEDCTTrait>]
    # @!attribute snomedct_concepts
    #   <p>
    #         The SNOMED concepts that the entity could refer to, along with a score indicating the likelihood of the match.
    #       </p>
    #   @return [Array<Types::SNOMEDCTConcept>]
    class SNOMEDCTEntity < Struct.new(
      nil,
      :id,
      :text,
      :category,
      :type,
      :score,
      :begin_offset,
      :end_offset,
      :attributes,
      :traits,
      :snomedct_concepts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Contextual information for an entity.
    #     </p>
    # @!attribute name
    #   <p>
    #         The name or contextual description of a detected trait.
    #       </p>
    #   @return [String]
    # @!attribute score
    #   <p>
    #         The level of confidence that Amazon Comprehend Medical has in the accuracy of a detected trait.
    #       </p>
    #   @return [Float]
    class SNOMEDCTTrait < Struct.new(
      nil,
      :name,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The Amazon Comprehend Medical service is temporarily unavailable. Please wait and then retry your request.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>The input configuration that specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output configuration that specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med">Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one for you.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language. Amazon Comprehend Medical processes files in US English (en).</p>
    #   @return [String]
    class StartEntitiesDetectionV2JobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the <code>DescribeEntitiesDetectionV2Job</code> operation.</p>
    #   @return [String]
    class StartEntitiesDetectionV2JobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #   @return [String]
    class StartICD10CMInferenceJobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the <code>StartICD10CMInferenceJob</code> operation.</p>
    #   @return [String]
    class StartICD10CMInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #   @return [String]
    class StartPHIDetectionJobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the <code>DescribePHIDetectionJob</code> operation.</p>
    #   @return [String]
    class StartPHIDetectionJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that
    #         grants Amazon Comprehend Medical read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions-med.html#auth-role-permissions-med"> Role-Based Permissions Required for Asynchronous Operations</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical
    #         generates one.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>An AWS Key Management Service key to encrypt your output files. If you do not specify a
    #         key, the files are written in plain text.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language.</p>
    #   @return [String]
    class StartRxNormInferenceJobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the job.</p>
    #   @return [String]
    class StartRxNormInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>The input properties for an entities detection job. This includes the name of the S3
    #         bucket and the path to the files to be analyzed. </p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output properties for a detection job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend Medical read access to your input data. 
    #       </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>
    #         The user generated name the asynchronous InferSNOMEDCT job.
    #       </p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>
    #         A unique identifier for the request. If you don't set the client request token, Amazon Comprehend Medical generates one.
    #       </p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>
    #         An AWS Key Management Service key used to encrypt your output files. If you do not specify a key, the files are written in plain text.
    #       </p>
    #   @return [String]
    # @!attribute language_code
    #   <p>
    #         The language of the input documents. All documents must be in the same language.
    #       </p>
    #   @return [String]
    class StartSNOMEDCTInferenceJobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :kms_key,
      :language_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #         The identifier generated for the job. To get the status of a job, use this identifier with the StartSNOMEDCTInferenceJob operation.
    #       </p>
    #   @return [String]
    class StartSNOMEDCTInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the medical entities job to stop.</p>
    #   @return [String]
    class StopEntitiesDetectionV2JobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the medical entities detection job that was stopped.</p>
    #   @return [String]
    class StopEntitiesDetectionV2JobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the job.</p>
    #   @return [String]
    class StopICD10CMInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of job, use this identifier with
    #         the <code>DescribeICD10CMInferenceJob</code> operation.</p>
    #   @return [String]
    class StopICD10CMInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PHI detection job to stop.</p>
    #   @return [String]
    class StopPHIDetectionJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PHI detection job that was stopped.</p>
    #   @return [String]
    class StopPHIDetectionJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the job.</p>
    #   @return [String]
    class StopRxNormInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of job, use this identifier with
    #         the <code>DescribeRxNormInferenceJob</code> operation.</p>
    #   @return [String]
    class StopRxNormInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #         The job id of the asynchronous InferSNOMEDCT job to be stopped.
    #       </p>
    #   @return [String]
    class StopSNOMEDCTInferenceJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>
    #         The identifier generated for the job. To get the status of job, use this identifier with the DescribeSNOMEDCTInferenceJob operation.
    #       </p>
    #   @return [String]
    class StopSNOMEDCTInferenceJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The size of the text you submitted exceeds the size limit. Reduce the size of the text or
    #       use a smaller document and then retry your request. </p>
    # @!attribute message
    #   @return [String]
    class TextSizeLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> You have made too many requests within a short period of time. Wait for a short time and
    #       then try your request again. Contact customer support for more information about a service
    #       limit increase. </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Provides contextual information about the extracted entity. </p>
    # @!attribute name
    #   <p> Provides a name or contextual description about the trait. </p>
    #   @return [String]
    # @!attribute score
    #   <p> The level of confidence that Amazon Comprehend Medical has in the accuracy of this trait.</p>
    #   @return [Float]
    class Trait < Struct.new(
      nil,
      :name,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An attribute that was extracted, but Amazon Comprehend Medical was unable to relate to an entity. </p>
    # @!attribute type
    #   <p> The type of the unmapped attribute, could be one of the following values: "MEDICATION",
    #         "MEDICAL_CONDITION", "ANATOMY", "TEST_AND_TREATMENT_PROCEDURE" or
    #         "PROTECTED_HEALTH_INFORMATION". </p>
    #   @return [String]
    # @!attribute attribute
    #   <p> The specific attribute that has been extracted but not mapped to an entity. </p>
    #   @return [Types::Attribute]
    class UnmappedAttribute < Struct.new(
      nil,
      :type,
      :attribute,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter that you specified for the operation is invalid. Check the filter values that
    #       you entered and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
