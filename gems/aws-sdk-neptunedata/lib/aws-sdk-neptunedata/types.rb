# frozen_string_literal: true

# This is generated code!

module Aws::Neptunedata
  # This module contains the types returned by client operations.
  module Types

    # <p>Raised in case of an authentication or authorization failure.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Action
      INITIALIZE_RESET = 'initiateDatabaseReset'
      PERFORM_RESET = 'performDatabaseReset'
    end

    # <p>Raised when a request is submitted that cannot be processed.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the bad request.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class BadRequestException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a specified bulk-load job ID cannot be found.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The bulk-load job ID that could not be found.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class BulkLoadIdNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The unique identifier that identifies the query to be canceled.</p>
    #   @return [String]
    class CancelGremlinQueryInput < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the cancelation</p>
    #   @return [String]
    class CancelGremlinQueryOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute load_id
    #   <p>The ID of the load job to be deleted.</p>
    #   @return [String]
    class CancelLoaderJobInput < Struct.new(
      :load_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The cancellation status.</p>
    #   @return [String]
    class CancelLoaderJobOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the data-processing job.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute clean
    #   <p>If set to <code>TRUE</code>, this flag specifies that all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class CancelMLDataProcessingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the cancellation request.</p>
    #   @return [String]
    class CancelMLDataProcessingJobOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the model-training job to be canceled.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute clean
    #   <p>If set to <code>TRUE</code>, this flag specifies that all Amazon S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class CancelMLModelTrainingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the cancellation.</p>
    #   @return [String]
    class CancelMLModelTrainingJobOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the model transform job to be canceled.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute clean
    #   <p>If this flag is set to <code>TRUE</code>, all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class CancelMLModelTransformJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>the status of the cancelation.</p>
    #   @return [String]
    class CancelMLModelTransformJobOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The unique ID of the openCypher query to cancel.</p>
    #   @return [String]
    # @!attribute silent
    #   <p>If set to <code>TRUE</code>, causes the cancelation of the openCypher query to happen silently.</p>
    #   @return [Boolean]
    class CancelOpenCypherQueryInput < Struct.new(
      :query_id,
      :silent,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The cancellation status of the openCypher query.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The cancelation payload for the openCypher query.</p>
    #   @return [Boolean]
    class CancelOpenCypherQueryOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a user cancelled a request.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class CancelledByUserException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request timed out in the client.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ClientTimeoutException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request attempts to modify data that is concurrently being modified by another process.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a value in a request field did not satisfy required constraints.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ConstraintViolationException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A unique identifier for the new inference endpoint. The default is an autogenerated timestamped name.</p>
    #   @return [String]
    # @!attribute ml_model_training_job_id
    #   <p>The job Id of the completed model-training job that has created the model that the inference endpoint will point to. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    #   @return [String]
    # @!attribute ml_model_transform_job_id
    #   <p>The job Id of the completed model-transform job. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    #   @return [String]
    # @!attribute update
    #   <p>If set to <code>true</code>, <code>update</code> indicates that this is an update request. The default is <code>false</code>. You must supply either the <code>mlModelTrainingJobId</code> or the <code>mlModelTransformJobId</code>.</p>
    #   @return [Boolean]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role providing Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will be thrown.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>Model type for training. By default the Neptune ML model is automatically based on the <code>modelType</code> used in data processing, but you can specify a different model type here. The default is <code>rgcn</code> for heterogeneous graphs and <code>kge</code> for knowledge graphs. The only valid value for heterogeneous graphs is <code>rgcn</code>. Valid values for knowledge graphs are: <code>kge</code>, <code>transe</code>, <code>distmult</code>, and <code>rotate</code>.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of Neptune ML instance to use for online servicing. The default is <code>ml.m5.xlarge</code>. Choosing the ML instance for an inference endpoint depends on the task type, the graph size, and your budget.</p>
    #   @return [String]
    # @!attribute instance_count
    #   <p>The minimum number of Amazon EC2 instances to deploy to an endpoint for prediction. The default is 1</p>
    #   @return [Integer]
    # @!attribute volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    #   @return [String]
    class CreateMLEndpointInput < Struct.new(
      :id,
      :ml_model_training_job_id,
      :ml_model_transform_job_id,
      :update,
      :neptune_iam_role_arn,
      :model_name,
      :instance_type,
      :instance_count,
      :volume_encryption_kms_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the new inference endpoint.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN for the new inference endpoint.</p>
    #   @return [String]
    # @!attribute creation_time_in_millis
    #   <p>The endpoint creation time, in milliseconds.</p>
    #   @return [Integer]
    class CreateMLEndpointOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains custom model training parameters. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-custom-models.html">Custom models in Neptune ML</a>.</p>
    # @!attribute source_s3_directory_path
    #   <p>The path to the Amazon S3 location where the Python module implementing your model is located. This must point to a valid existing Amazon S3 location that contains, at a minimum, a training script, a transform script, and a <code>model-hpo-configuration.json</code> file.</p>
    #   @return [String]
    # @!attribute training_entry_point_script
    #   <p>The name of the entry point in your module of a script that performs model training and takes hyperparameters as command-line arguments, including fixed hyperparameters. The default is <code>training.py</code>.</p>
    #   @return [String]
    # @!attribute transform_entry_point_script
    #   <p>The name of the entry point in your module of a script that should be run after the best model from the hyperparameter search has been identified, to compute the model artifacts necessary for model deployment. It should be able to run with no command-line arguments.The default is <code>transform.py</code>.</p>
    #   @return [String]
    class CustomModelTrainingParameters < Struct.new(
      :source_s3_directory_path,
      :training_entry_point_script,
      :transform_entry_point_script,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains custom model transform parameters. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html">Use a trained model to generate new model artifacts</a>.</p>
    # @!attribute source_s3_directory_path
    #   <p>The path to the Amazon S3 location where the Python module implementing your model is located. This must point to a valid existing Amazon S3 location that contains, at a minimum, a training script, a transform script, and a <code>model-hpo-configuration.json</code> file.</p>
    #   @return [String]
    # @!attribute transform_entry_point_script
    #   <p>The name of the entry point in your module of a script that should be run after the best model from the hyperparameter search has been identified, to compute the model artifacts necessary for model deployment. It should be able to run with no command-line arguments. The default is <code>transform.py</code>.</p>
    #   @return [String]
    class CustomModelTransformParameters < Struct.new(
      :source_s3_directory_path,
      :transform_entry_point_script,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the inference endpoint.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role providing Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will be thrown.</p>
    #   @return [String]
    # @!attribute clean
    #   <p>If this flag is set to <code>TRUE</code>, all Neptune ML S3 artifacts should be deleted when the job is stopped. The default is <code>FALSE</code>.</p>
    #   @return [Boolean]
    class DeleteMLEndpointInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      :clean,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the cancellation.</p>
    #   @return [String]
    class DeleteMLEndpointOutput < Struct.new(
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP response code: 200 if the delete was successful, or 204 if there were no statistics to delete.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The cancel status.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The deletion payload.</p>
    #   @return [Types::DeleteStatisticsValueMap]
    class DeletePropertygraphStatisticsOutput < Struct.new(
      :status_code,
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP response code: 200 if the delete was successful, or 204 if there were no statistics to delete.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The cancel status.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The deletion payload.</p>
    #   @return [Types::DeleteStatisticsValueMap]
    class DeleteSparqlStatisticsOutput < Struct.new(
      :status_code,
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The payload for DeleteStatistics.</p>
    # @!attribute active
    #   <p>The current status of the statistics.</p>
    #   @return [Boolean]
    # @!attribute statistics_id
    #   <p>The ID of the statistics generation run that is currently occurring.</p>
    #   @return [String]
    class DeleteStatisticsValueMap < Struct.new(
      :active,
      :statistics_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An edge structure.</p>
    # @!attribute count
    #   <p>The number of edges that have this specific structure.</p>
    #   @return [Integer]
    # @!attribute edge_properties
    #   <p>A list of edge properties present in this specific structure.</p>
    #   @return [Array<String>]
    class EdgeStructure < Struct.new(
      :count,
      :edge_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Encoding
      GZIP = 'gzip'
    end

    # @!attribute action
    #   <p>The fast reset action. One of the following values:</p> <ul> <li> <p> <b> <code>initiateDatabaseReset</code> </b>   –   This action generates a unique token needed to actually perform the fast reset.</p> </li> <li> <p> <b> <code>performDatabaseReset</code> </b>   –   This action uses the token generated by the <code>initiateDatabaseReset</code> action to actually perform the fast reset.</p> <p/> </li> </ul>
    #   @return [String]
    # @!attribute token
    #   <p>The fast-reset token to initiate the reset.</p>
    #   @return [String]
    class ExecuteFastResetInput < Struct.new(
      :action,
      :token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The <code>status</code> is only returned for the <code>performDatabaseReset</code> action, and indicates whether or not the fast reset rquest is accepted.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The <code>payload</code> is only returned by the <code>initiateDatabaseReset</code> action, and contains the unique token to use with the <code>performDatabaseReset</code> action to make the reset occur.</p>
    #   @return [Types::FastResetToken]
    class ExecuteFastResetOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gremlin_query
    #   <p>The Gremlin explain query string.</p>
    #   @return [String]
    class ExecuteGremlinExplainQueryInput < Struct.new(
      :gremlin_query,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute output
    #   <p>A text blob containing the Gremlin explain result, as described in <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html">Tuning Gremlin queries</a>.</p>
    #   @return [String]
    class ExecuteGremlinExplainQueryOutput < Struct.new(
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gremlin_query
    #   <p>The Gremlin query string to profile.</p>
    #   @return [String]
    # @!attribute results
    #   <p>If this flag is set to <code>TRUE</code>, the query results are gathered and displayed as part of the profile report. If <code>FALSE</code>, only the result count is displayed.</p>
    #   @return [Boolean]
    # @!attribute chop
    #   <p>If non-zero, causes the results string to be truncated at that number of characters. If set to zero, the string contains all the results.</p>
    #   @return [Integer]
    # @!attribute serializer
    #   <p>If non-null, the gathered results are returned in a serialized response message in the format specified by this parameter. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html">Gremlin profile API in Neptune</a> for more information.</p>
    #   @return [String]
    # @!attribute index_ops
    #   <p>If this flag is set to <code>TRUE</code>, the results include a detailed report of all index operations that took place during query execution and serialization.</p>
    #   @return [Boolean]
    class ExecuteGremlinProfileQueryInput < Struct.new(
      :gremlin_query,
      :results,
      :chop,
      :serializer,
      :index_ops,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute output
    #   <p>A text blob containing the Gremlin Profile result. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html">Gremlin profile API in Neptune</a> for details.</p>
    #   @return [String]
    class ExecuteGremlinProfileQueryOutput < Struct.new(
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gremlin_query
    #   <p>Using this API, you can run Gremlin queries in string format much as you can using the HTTP endpoint. The interface is compatible with whatever Gremlin version your DB cluster is using (see the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin-client.html#best-practices-gremlin-java-latest">Tinkerpop client section</a> to determine which Gremlin releases your engine version supports).</p>
    #   @return [String]
    # @!attribute serializer
    #   <p>If non-null, the query results are returned in a serialized response message in the format specified by this parameter. See the <a href="https://tinkerpop.apache.org/docs/current/reference/#_graphson">GraphSON</a> section in the TinkerPop documentation for a list of the formats that are currently supported.</p>
    #   @return [String]
    class ExecuteGremlinQueryInput < Struct.new(
      :gremlin_query,
      :serializer,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_id
    #   <p>The unique identifier of the Gremlin query.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Gremlin query.</p>
    #   @return [Types::GremlinQueryStatusAttributes]
    # @!attribute result
    #   <p>The Gremlin query output from the server.</p>
    #   @return [JSON]
    # @!attribute meta
    #   <p>Metadata about the Gremlin query.</p>
    #   @return [JSON]
    class ExecuteGremlinQueryOutput < Struct.new(
      :request_id,
      :status,
      :result,
      :meta,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_cypher_query
    #   <p>The openCypher query string.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The openCypher query parameters.</p>
    #   @return [String]
    # @!attribute explain_mode
    #   <p>The openCypher <code>explain</code> mode. Can be one of: <code>static</code>, <code>dynamic</code>, or <code>details</code>.</p>
    #   @return [String]
    class ExecuteOpenCypherExplainQueryInput < Struct.new(
      :open_cypher_query,
      :parameters,
      :explain_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>A text blob containing the openCypher <code>explain</code> results.</p>
    #   @return [String]
    class ExecuteOpenCypherExplainQueryOutput < Struct.new(
      :results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute open_cypher_query
    #   <p>The openCypher query string to be executed.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The openCypher query parameters for query execution. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/opencypher-parameterized-queries.html">Examples of openCypher parameterized queries</a> for more information.</p>
    #   @return [String]
    class ExecuteOpenCypherQueryInput < Struct.new(
      :open_cypher_query,
      :parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute results
    #   <p>The openCypherquery results.</p>
    #   @return [JSON]
    class ExecuteOpenCypherQueryOutput < Struct.new(
      :results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request attempts to access an stream that has expired.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ExpiredStreamException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request fails.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class FailureByQueryException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A structure containing the fast reset token used to initiate a fast reset.</p>
    # @!attribute token
    #   <p>A UUID generated by the database in the <code>initiateDatabaseReset</code> action, and then consumed by the <code>performDatabaseReset</code> to reset the database.</p>
    #   @return [String]
    class FastResetToken < Struct.new(
      :token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Format
      CSV = 'csv'
      OPENCYPHER = 'opencypher'
      NTRIPLES = 'ntriples'
      NQUADS = 'nquads'
      RDFXML = 'rdfxml'
      TURTLE = 'turtle'
    end

    # @!attribute status
    #   <p>Set to <code>healthy</code> if the instance is not experiencing problems. If the instance is recovering from a crash or from being rebooted and there are active transactions running from the latest server shutdown, status is set to <code>recovery</code>.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Set to the UTC time at which the current server process started.</p>
    #   @return [String]
    # @!attribute db_engine_version
    #   <p>Set to the Neptune engine version running on your DB cluster. If this engine version has been manually patched since it was released, the version number is prefixed by <code>Patch-</code>.</p>
    #   @return [String]
    # @!attribute role
    #   <p>Set to <code>reader</code> if the instance is a read-replica, or to <code>writer</code> if the instance is the primary instance.</p>
    #   @return [String]
    # @!attribute dfe_query_engine
    #   <p>Set to <code>enabled</code> if the DFE engine is fully enabled, or to <code>viaQueryHint</code> (the default) if the DFE engine is only used with queries that have the <code>useDFE</code> query hint set to <code>true</code>.</p>
    #   @return [String]
    # @!attribute gremlin
    #   <p>Contains information about the Gremlin query language available on your cluster. Specifically, it contains a version field that specifies the current TinkerPop version being used by the engine.</p>
    #   @return [Types::QueryLanguageVersion]
    # @!attribute sparql
    #   <p>Contains information about the SPARQL query language available on your cluster. Specifically, it contains a version field that specifies the current SPARQL version being used by the engine.</p>
    #   @return [Types::QueryLanguageVersion]
    # @!attribute opencypher
    #   <p>Contains information about the openCypher query language available on your cluster. Specifically, it contains a version field that specifies the current operCypher version being used by the engine.</p>
    #   @return [Types::QueryLanguageVersion]
    # @!attribute lab_mode
    #   <p>Contains Lab Mode settings being used by the engine.</p>
    #   @return [Hash<String, String>]
    # @!attribute rolling_back_trx_count
    #   <p>If there are transactions being rolled back, this field is set to the number of such transactions. If there are none, the field doesn't appear at all.</p>
    #   @return [Integer]
    # @!attribute rolling_back_trx_earliest_start_time
    #   <p>Set to the start time of the earliest transaction being rolled back. If no transactions are being rolled back, the field doesn't appear at all.</p>
    #   @return [String]
    # @!attribute features
    #   <p>Contains status information about the features enabled on your DB cluster.</p>
    #   @return [Hash<String, JSON>]
    # @!attribute settings
    #   <p>Contains information about the current settings on your DB cluster. For example, contains the current cluster query timeout setting (<code>clusterQueryTimeoutInMs</code>).</p>
    #   @return [Hash<String, String>]
    class GetEngineStatusOutput < Struct.new(
      :status,
      :start_time,
      :db_engine_version,
      :role,
      :dfe_query_engine,
      :gremlin,
      :sparql,
      :opencypher,
      :lab_mode,
      :rolling_back_trx_count,
      :rolling_back_trx_earliest_start_time,
      :features,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The unique identifier that identifies the Gremlin query.</p>
    #   @return [String]
    class GetGremlinQueryStatusInput < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The ID of the query for which status is being returned.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The Gremlin query string.</p>
    #   @return [String]
    # @!attribute query_eval_stats
    #   <p>The evaluation status of the Gremlin query.</p>
    #   @return [Types::QueryEvalStats]
    class GetGremlinQueryStatusOutput < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute load_id
    #   <p>The load ID of the load job to get the status of.</p>
    #   @return [String]
    # @!attribute details
    #   <p>Flag indicating whether or not to include details beyond the overall status (<code>TRUE</code> or <code>FALSE</code>; the default is <code>FALSE</code>).</p>
    #   @return [Boolean]
    # @!attribute errors
    #   <p>Flag indicating whether or not to include a list of errors encountered (<code>TRUE</code> or <code>FALSE</code>; the default is <code>FALSE</code>).</p> <p>The list of errors is paged. The <code>page</code> and <code>errorsPerPage</code> parameters allow you to page through all the errors.</p>
    #   @return [Boolean]
    # @!attribute page
    #   <p>The error page number (a positive integer; the default is <code>1</code>). Only valid when the <code>errors</code> parameter is set to <code>TRUE</code>.</p>
    #   @return [Integer]
    # @!attribute errors_per_page
    #   <p>The number of errors returned in each page (a positive integer; the default is <code>10</code>). Only valid when the <code>errors</code> parameter set to <code>TRUE</code>.</p>
    #   @return [Integer]
    class GetLoaderJobStatusInput < Struct.new(
      :load_id,
      :details,
      :errors,
      :page,
      :errors_per_page,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP response code for the request.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Status information about the load job, in a layout that could look like this:</p>
    #   @return [JSON]
    class GetLoaderJobStatusOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the data-processing job to be retrieved.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class GetMLDataProcessingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Status of the data processing job.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of this data-processing job.</p>
    #   @return [String]
    # @!attribute processing_job
    #   <p>Definition of the data processing job.</p>
    #   @return [Types::MlResourceDefinition]
    class GetMLDataProcessingJobOutput < Struct.new(
      :status,
      :id,
      :processing_job,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the inference endpoint.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class GetMLEndpointInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the inference endpoint.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the inference endpoint.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint definition.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute endpoint_config
    #   <p>The endpoint configuration</p>
    #   @return [Types::MlConfigDefinition]
    class GetMLEndpointOutput < Struct.new(
      :status,
      :id,
      :endpoint,
      :endpoint_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the model-training job to retrieve.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class GetMLModelTrainingJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the model training job.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of this model-training job.</p>
    #   @return [String]
    # @!attribute processing_job
    #   <p>The data processing job.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute hpo_job
    #   <p>The HPO job.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute model_transform_job
    #   <p>The model transform job.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute ml_models
    #   <p>A list of the configurations of the ML models being used.</p>
    #   @return [Array<Types::MlConfigDefinition>]
    class GetMLModelTrainingJobOutput < Struct.new(
      :status,
      :id,
      :processing_job,
      :hpo_job,
      :model_transform_job,
      :ml_models,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the model-transform job to be reetrieved.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class GetMLModelTransformJobInput < Struct.new(
      :id,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of the model-transform job.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the model-transform job to be retrieved.</p>
    #   @return [String]
    # @!attribute base_processing_job
    #   <p>The base data processing job.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute remote_model_transform_job
    #   <p>The remote model transform job.</p>
    #   @return [Types::MlResourceDefinition]
    # @!attribute models
    #   <p>A list of the configuration information for the models being used.</p>
    #   @return [Array<Types::MlConfigDefinition>]
    class GetMLModelTransformJobOutput < Struct.new(
      :status,
      :id,
      :base_processing_job,
      :remote_model_transform_job,
      :models,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The unique ID of the openCypher query for which to retrieve the query status.</p>
    #   @return [String]
    class GetOpenCypherQueryStatusInput < Struct.new(
      :query_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute query_id
    #   <p>The unique ID of the query for which status is being returned.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The openCypher query string.</p>
    #   @return [String]
    # @!attribute query_eval_stats
    #   <p>The openCypher query evaluation status.</p>
    #   @return [Types::QueryEvalStats]
    class GetOpenCypherQueryStatusOutput < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html#neptune-dfe-statistics-errors">Common error codes for DFE statistics request</a> for a list of common errors.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Statistics for property-graph data.</p>
    #   @return [Types::Statistics]
    class GetPropertygraphStatisticsOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>Specifies the maximum number of records to return. There is also a size limit of 10 MB on the response that can't be modified and that takes precedence over the number of records specified in the <code>limit</code> parameter. The response does include a threshold-breaching record if the 10 MB limit was reached.</p> <p>The range for <code>limit</code> is 1 to 100,000, with a default of 10.</p>
    #   @return [Integer]
    # @!attribute iterator_type
    #   <p>Can be one of:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code>   –   Indicates that reading should start from the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code>   –   Indicates that reading should start right after the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>TRIM_HORIZON</code>   –   Indicates that reading should start at the last untrimmed record in the system, which is the oldest unexpired (not yet deleted) record in the change-log stream.</p> </li> <li> <p> <code>LATEST</code>   –   Indicates that reading should start at the most recent record in the system, which is the latest unexpired (not yet deleted) record in the change-log stream.</p> </li> </ul>
    #   @return [String]
    # @!attribute commit_num
    #   <p>The commit number of the starting record to read from the change-log stream. This parameter is required when <code>iteratorType</code> is<code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>, and ignored when <code>iteratorType</code> is <code>TRIM_HORIZON</code> or <code>LATEST</code>.</p>
    #   @return [Integer]
    # @!attribute op_num
    #   <p>The operation sequence number within the specified commit to start reading from in the change-log stream data. The default is <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute encoding
    #   <p>If set to TRUE, Neptune compresses the response using gzip encoding.</p>
    #   @return [String]
    class GetPropertygraphStreamInput < Struct.new(
      :limit,
      :iterator_type,
      :commit_num,
      :op_num,
      :encoding,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute last_event_id
    #   <p>Sequence identifier of the last change in the stream response.</p> <p>An event ID is composed of two fields: a <code>commitNum</code>, which identifies a transaction that changed the graph, and an <code>opNum</code>, which identifies a specific operation within that transaction:</p>
    #   @return [Hash<String, String>]
    # @!attribute last_trx_timestamp_in_millis
    #   <p>The time at which the commit for the transaction was requested, in milliseconds from the Unix epoch.</p>
    #   @return [Integer]
    # @!attribute format
    #   <p>Serialization format for the change records being returned. Currently, the only supported value is <code>PG_JSON</code>.</p>
    #   @return [String]
    # @!attribute records
    #   <p>An array of serialized change-log stream records included in the response.</p>
    #   @return [Array<Types::PropertygraphRecord>]
    # @!attribute total_records
    #   <p>The total number of records in the response.</p>
    #   @return [Integer]
    class GetPropertygraphStreamOutput < Struct.new(
      :last_event_id,
      :last_trx_timestamp_in_millis,
      :format,
      :records,
      :total_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mode
    #   <p>Mode can take one of two values: <code>BASIC</code> (the default), and <code>DETAILED</code>.</p>
    #   @return [String]
    class GetPropertygraphSummaryInput < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200.</p>
    #   @return [Integer]
    # @!attribute payload
    #   <p>Payload containing the property graph summary response.</p>
    #   @return [Types::PropertygraphSummaryValueMap]
    class GetPropertygraphSummaryOutput < Struct.new(
      :status_code,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mode
    #   <p>Mode can take one of two values: <code>BASIC</code> (the default), and <code>DETAILED</code>.</p>
    #   @return [String]
    class GetRDFGraphSummaryInput < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status_code
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200.</p>
    #   @return [Integer]
    # @!attribute payload
    #   <p>Payload for an RDF graph summary response</p>
    #   @return [Types::RDFGraphSummaryValueMap]
    class GetRDFGraphSummaryOutput < Struct.new(
      :status_code,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html#neptune-dfe-statistics-errors">Common error codes for DFE statistics request</a> for a list of common errors.</p> <p>When invoking this operation in a Neptune cluster that has IAM authentication enabled, the IAM user or role making the request must have a policy attached that allows the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus">neptune-db:GetStatisticsStatus</a> IAM action in that cluster.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Statistics for RDF data.</p>
    #   @return [Types::Statistics]
    class GetSparqlStatisticsOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>Specifies the maximum number of records to return. There is also a size limit of 10 MB on the response that can't be modified and that takes precedence over the number of records specified in the <code>limit</code> parameter. The response does include a threshold-breaching record if the 10 MB limit was reached.</p> <p>The range for <code>limit</code> is 1 to 100,000, with a default of 10.</p>
    #   @return [Integer]
    # @!attribute iterator_type
    #   <p>Can be one of:</p> <ul> <li> <p> <code>AT_SEQUENCE_NUMBER</code>   –   Indicates that reading should start from the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>AFTER_SEQUENCE_NUMBER</code>   –   Indicates that reading should start right after the event sequence number specified jointly by the <code>commitNum</code> and <code>opNum</code> parameters.</p> </li> <li> <p> <code>TRIM_HORIZON</code>   –   Indicates that reading should start at the last untrimmed record in the system, which is the oldest unexpired (not yet deleted) record in the change-log stream.</p> </li> <li> <p> <code>LATEST</code>   –   Indicates that reading should start at the most recent record in the system, which is the latest unexpired (not yet deleted) record in the change-log stream.</p> </li> </ul>
    #   @return [String]
    # @!attribute commit_num
    #   <p>The commit number of the starting record to read from the change-log stream. This parameter is required when <code>iteratorType</code> is<code>AT_SEQUENCE_NUMBER</code> or <code>AFTER_SEQUENCE_NUMBER</code>, and ignored when <code>iteratorType</code> is <code>TRIM_HORIZON</code> or <code>LATEST</code>.</p>
    #   @return [Integer]
    # @!attribute op_num
    #   <p>The operation sequence number within the specified commit to start reading from in the change-log stream data. The default is <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute encoding
    #   <p>If set to TRUE, Neptune compresses the response using gzip encoding.</p>
    #   @return [String]
    class GetSparqlStreamInput < Struct.new(
      :limit,
      :iterator_type,
      :commit_num,
      :op_num,
      :encoding,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute last_event_id
    #   <p>Sequence identifier of the last change in the stream response.</p> <p>An event ID is composed of two fields: a <code>commitNum</code>, which identifies a transaction that changed the graph, and an <code>opNum</code>, which identifies a specific operation within that transaction:</p>
    #   @return [Hash<String, String>]
    # @!attribute last_trx_timestamp_in_millis
    #   <p>The time at which the commit for the transaction was requested, in milliseconds from the Unix epoch.</p>
    #   @return [Integer]
    # @!attribute format
    #   <p>Serialization format for the change records being returned. Currently, the only supported value is <code>NQUADS</code>.</p>
    #   @return [String]
    # @!attribute records
    #   <p>An array of serialized change-log stream records included in the response.</p>
    #   @return [Array<Types::SparqlRecord>]
    # @!attribute total_records
    #   <p>The total number of records in the response.</p>
    #   @return [Integer]
    class GetSparqlStreamOutput < Struct.new(
      :last_event_id,
      :last_trx_timestamp_in_millis,
      :format,
      :records,
      :total_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GraphSummaryType
      BASIC = 'basic'
      DETAILED = 'detailed'
    end

    # <p>Captures the status of a Gremlin query (see the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html">Gremlin query status API</a> page).</p>
    # @!attribute query_id
    #   <p>The ID of the Gremlin query.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query string of the Gremlin query.</p>
    #   @return [String]
    # @!attribute query_eval_stats
    #   <p>The query statistics of the Gremlin query.</p>
    #   @return [Types::QueryEvalStats]
    class GremlinQueryStatus < Struct.new(
      :query_id,
      :query_string,
      :query_eval_stats,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains status components of a Gremlin query.</p>
    # @!attribute message
    #   <p>The status message.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP response code returned fro the Gremlin query request..</p>
    #   @return [Integer]
    # @!attribute attributes
    #   <p>Attributes of the Gremlin query status.</p>
    #   @return [JSON]
    class GremlinQueryStatusAttributes < Struct.new(
      :message,
      :code,
      :attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when an argument in a request is not supported.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class IllegalArgumentException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the processing of the request failed unexpectedly.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class InternalFailureException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when an argument in a request has an invalid value.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when invalid numerical data is encountered when servicing a request.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class InvalidNumericDataException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a parameter value is not valid.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that includes an invalid parameter.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IteratorType
      AT_SEQUENCE_NUMBER = 'AT_SEQUENCE_NUMBER'
      AFTER_SEQUENCE_NUMBER = 'AFTER_SEQUENCE_NUMBER'
      TRIM_HORIZON = 'TRIM_HORIZON'
      LATEST = 'LATEST'
    end

    # @!attribute include_waiting
    #   <p>If set to <code>TRUE</code>, the list returned includes waiting queries. The default is <code>FALSE</code>;</p>
    #   @return [Boolean]
    class ListGremlinQueriesInput < Struct.new(
      :include_waiting,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accepted_query_count
    #   <p>The number of queries that have been accepted but not yet completed, including queries in the queue.</p>
    #   @return [Integer]
    # @!attribute running_query_count
    #   <p>The number of Gremlin queries currently running.</p>
    #   @return [Integer]
    # @!attribute queries
    #   <p>A list of the current queries.</p>
    #   @return [Array<Types::GremlinQueryStatus>]
    class ListGremlinQueriesOutput < Struct.new(
      :accepted_query_count,
      :running_query_count,
      :queries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute limit
    #   <p>The number of load IDs to list. Must be a positive integer greater than zero and not more than <code>100</code> (which is the default).</p>
    #   @return [Integer]
    # @!attribute include_queued_loads
    #   <p>An optional parameter that can be used to exclude the load IDs of queued load requests when requesting a list of load IDs by setting the parameter to <code>FALSE</code>. The default value is <code>TRUE</code>.</p>
    #   @return [Boolean]
    class ListLoaderJobsInput < Struct.new(
      :limit,
      :include_queued_loads,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Returns the status of the job list request.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>The requested list of job IDs.</p>
    #   @return [Types::LoaderIdResult]
    class ListLoaderJobsOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    #   @return [Integer]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class ListMLDataProcessingJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A page listing data processing job IDs.</p>
    #   @return [Array<String>]
    class ListMLDataProcessingJobsOutput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10.</p>
    #   @return [Integer]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class ListMLEndpointsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A page from the list of inference endpoint IDs.</p>
    #   @return [Array<String>]
    class ListMLEndpointsOutput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    #   @return [Integer]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class ListMLModelTrainingJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A page of the list of model training job IDs.</p>
    #   @return [Array<String>]
    class ListMLModelTrainingJobsOutput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_items
    #   <p>The maximum number of items to return (from 1 to 1024; the default is 10).</p>
    #   @return [Integer]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    class ListMLModelTransformJobsInput < Struct.new(
      :max_items,
      :neptune_iam_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute ids
    #   <p>A page from the list of model transform IDs.</p>
    #   @return [Array<String>]
    class ListMLModelTransformJobsOutput < Struct.new(
      :ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute include_waiting
    #   <p> When set to <code>TRUE</code> and other parameters are not present, causes status information to be returned for waiting queries as well as for running queries.</p>
    #   @return [Boolean]
    class ListOpenCypherQueriesInput < Struct.new(
      :include_waiting,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute accepted_query_count
    #   <p>The number of queries that have been accepted but not yet completed, including queries in the queue.</p>
    #   @return [Integer]
    # @!attribute running_query_count
    #   <p>The number of currently running openCypher queries.</p>
    #   @return [Integer]
    # @!attribute queries
    #   <p>A list of current openCypher queries.</p>
    #   @return [Array<Types::GremlinQueryStatus>]
    class ListOpenCypherQueriesOutput < Struct.new(
      :accepted_query_count,
      :running_query_count,
      :queries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when access is denied to a specified load URL.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class LoadUrlAccessDeniedException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a list of load IDs.</p>
    # @!attribute load_ids
    #   <p>A list of load IDs.</p>
    #   @return [Array<String>]
    class LoaderIdResult < Struct.new(
      :load_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a specified machine-learning resource could not be found.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class MLResourceNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a query is submitted that is syntactically incorrect or does not pass additional validation.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the malformed query request.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class MalformedQueryException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mode
    #   <p>The statistics generation mode. One of: <code>DISABLE_AUTOCOMPUTE</code>, <code>ENABLE_AUTOCOMPUTE</code>, or <code>REFRESH</code>, the last of which manually triggers DFE statistics generation.</p>
    #   @return [String]
    class ManagePropertygraphStatisticsInput < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>This is only returned for refresh mode.</p>
    #   @return [Types::RefreshStatisticsIdMap]
    class ManagePropertygraphStatisticsOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute mode
    #   <p>The statistics generation mode. One of: <code>DISABLE_AUTOCOMPUTE</code>, <code>ENABLE_AUTOCOMPUTE</code>, or <code>REFRESH</code>, the last of which manually triggers DFE statistics generation.</p>
    #   @return [String]
    class ManageSparqlStatisticsInput < Struct.new(
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP return code of the request. If the request succeeded, the code is 200.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>This is only returned for refresh mode.</p>
    #   @return [Types::RefreshStatisticsIdMap]
    class ManageSparqlStatisticsOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request fails because of insufficient memory resources. The request can be retried.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class MemoryLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the HTTP method used by a request is not supported by the endpoint being used.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class MethodNotAllowedException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a required parameter is missing.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in which the parameter is missing.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class MissingParameterException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a Neptune ML configuration.</p>
    # @!attribute name
    #   <p>The configuration name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN for the configuration.</p>
    #   @return [String]
    class MlConfigDefinition < Struct.new(
      :name,
      :arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines a Neptune ML resource.</p>
    # @!attribute name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The resource status.</p>
    #   @return [String]
    # @!attribute output_location
    #   <p>The output location.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>The failure reason, in case of a failure.</p>
    #   @return [String]
    # @!attribute cloudwatch_log_url
    #   <p>The CloudWatch log URL for the resource.</p>
    #   @return [String]
    class MlResourceDefinition < Struct.new(
      :name,
      :arn,
      :status,
      :output_location,
      :failure_reason,
      :cloudwatch_log_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Mode
      RESUME = 'RESUME'
      NEW = 'NEW'
      AUTO = 'AUTO'
    end

    # <p>A node structure.</p>
    # @!attribute count
    #   <p>Number of nodes that have this specific structure.</p>
    #   @return [Integer]
    # @!attribute node_properties
    #   <p>A list of the node properties present in this specific structure.</p>
    #   @return [Array<String>]
    # @!attribute distinct_outgoing_edge_labels
    #   <p>A list of distinct outgoing edge labels present in this specific structure.</p>
    #   @return [Array<String>]
    class NodeStructure < Struct.new(
      :count,
      :node_properties,
      :distinct_outgoing_edge_labels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OpenCypherExplainMode
      STATIC = 'static'
      DYNAMIC = 'dynamic'
      DETAILS = 'details'
    end

    module Parallelism
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      OVERSUBSCRIBE = 'OVERSUBSCRIBE'
    end

    # <p>Raised when a parsing issue is encountered.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ParsingException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a precondition for processing a request is not satisfied.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class PreconditionsFailedException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A Gremlin or openCypher change record.</p>
    # @!attribute id
    #   <p>The ID of the Gremlin or openCypher element.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of this Gremlin or openCypher element. Must be one of:</p> <ul> <li> <p> <b> <code>v1</code> </b>   -   Vertex label for Gremlin, or node label for openCypher.</p> </li> <li> <p> <b> <code>vp</code> </b>   -   Vertex properties for Gremlin, or node properties for openCypher.</p> </li> <li> <p> <b> <code>e</code> </b>   -   Edge and edge label for Gremlin, or relationship and relationship type for openCypher.</p> </li> <li> <p> <b> <code>ep</code> </b>   -   Edge properties for Gremlin, or relationship properties for openCypher.</p> </li> </ul>
    #   @return [String]
    # @!attribute key
    #   <p>The property name. For element labels, this is <code>label</code>.</p>
    #   @return [String]
    # @!attribute value
    #   <p>This is a JSON object that contains a value field for the value itself, and a datatype field for the JSON data type of that value:</p>
    #   @return [JSON]
    # @!attribute from
    #   <p>If this is an edge (type = <code>e</code>), the ID of the corresponding <code>from</code> vertex or source node.</p>
    #   @return [String]
    # @!attribute to
    #   <p>If this is an edge (type = <code>e</code>), the ID of the corresponding <code>to</code> vertex or target node.</p>
    #   @return [String]
    class PropertygraphData < Struct.new(
      :id,
      :type,
      :key,
      :value,
      :from,
      :to,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Structure of a property graph record.</p>
    # @!attribute commit_timestamp_in_millis
    #   <p>The time at which the commit for the transaction was requested, in milliseconds from the Unix epoch.</p>
    #   @return [Integer]
    # @!attribute event_id
    #   <p>The sequence identifier of the stream change record.</p>
    #   @return [Hash<String, String>]
    # @!attribute data
    #   <p>The serialized Gremlin or openCypher change record.</p>
    #   @return [Types::PropertygraphData]
    # @!attribute op
    #   <p>The operation that created the change.</p>
    #   @return [String]
    # @!attribute is_last_op
    #   <p>Only present if this operation is the last one in its transaction. If present, it is set to true. It is useful for ensuring that an entire transaction is consumed.</p>
    #   @return [Boolean]
    class PropertygraphRecord < Struct.new(
      :commit_timestamp_in_millis,
      :event_id,
      :data,
      :op,
      :is_last_op,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The graph summary API returns a read-only list of node and edge labels and property keys, along with counts of nodes, edges, and properties. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-graph-summary.html#neptune-graph-summary-pg-response">Graph summary response for a property graph (PG)</a>.</p>
    # @!attribute num_nodes
    #   <p>The number of nodes in the graph.</p>
    #   @return [Integer]
    # @!attribute num_edges
    #   <p>The number of edges in the graph.</p>
    #   @return [Integer]
    # @!attribute num_node_labels
    #   <p>The number of distinct node labels in the graph.</p>
    #   @return [Integer]
    # @!attribute num_edge_labels
    #   <p>The number of distinct edge labels in the graph.</p>
    #   @return [Integer]
    # @!attribute node_labels
    #   <p>A list of the distinct node labels in the graph.</p>
    #   @return [Array<String>]
    # @!attribute edge_labels
    #   <p>A list of the distinct edge labels in the graph.</p>
    #   @return [Array<String>]
    # @!attribute num_node_properties
    #   <p>A list of the distinct node properties in the graph, along with the count of nodes where each property is used.</p>
    #   @return [Integer]
    # @!attribute num_edge_properties
    #   <p>The number of distinct edge properties in the graph.</p>
    #   @return [Integer]
    # @!attribute node_properties
    #   <p>The number of distinct node properties in the graph.</p>
    #   @return [Array<Hash<String, Integer>>]
    # @!attribute edge_properties
    #   <p>A list of the distinct edge properties in the graph, along with the count of edges where each property is used.</p>
    #   @return [Array<Hash<String, Integer>>]
    # @!attribute total_node_property_values
    #   <p>The total number of usages of all node properties.</p>
    #   @return [Integer]
    # @!attribute total_edge_property_values
    #   <p>The total number of usages of all edge properties.</p>
    #   @return [Integer]
    # @!attribute node_structures
    #   <p>This field is only present when the requested mode is <code>DETAILED</code>. It contains a list of node structures.</p>
    #   @return [Array<Types::NodeStructure>]
    # @!attribute edge_structures
    #   <p>This field is only present when the requested mode is <code>DETAILED</code>. It contains a list of edge structures.</p>
    #   @return [Array<Types::EdgeStructure>]
    class PropertygraphSummary < Struct.new(
      :num_nodes,
      :num_edges,
      :num_node_labels,
      :num_edge_labels,
      :node_labels,
      :edge_labels,
      :num_node_properties,
      :num_edge_properties,
      :node_properties,
      :edge_properties,
      :total_node_property_values,
      :total_edge_property_values,
      :node_structures,
      :edge_structures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Payload for the property graph summary response.</p>
    # @!attribute version
    #   <p>The version of this graph summary response.</p>
    #   @return [String]
    # @!attribute last_statistics_computation_time
    #   <p>The timestamp, in ISO 8601 format, of the time at which Neptune last computed statistics.</p>
    #   @return [Time]
    # @!attribute graph_summary
    #   <p>The graph summary.</p>
    #   @return [Types::PropertygraphSummary]
    class PropertygraphSummaryValueMap < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Structure to capture query statistics such as how many queries are running, accepted or waiting and their details.</p>
    # @!attribute waited
    #   <p>Indicates how long the query waited, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute elapsed
    #   <p>The number of milliseconds the query has been running so far.</p>
    #   @return [Integer]
    # @!attribute cancelled
    #   <p>Set to <code>TRUE</code> if the query was cancelled, or FALSE otherwise.</p>
    #   @return [Boolean]
    # @!attribute subqueries
    #   <p>The number of subqueries in this query.</p>
    #   @return [JSON]
    class QueryEvalStats < Struct.new(
      :waited,
      :elapsed,
      :cancelled,
      :subqueries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Structure for expressing the query language version.</p>
    # @!attribute version
    #   <p>The version of the query language.</p>
    #   @return [String]
    class QueryLanguageVersion < Struct.new(
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the number of active queries exceeds what the server can process. The query in question can be retried when the system is less busy.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request which exceeded the limit.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class QueryLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the size of a query exceeds the system limit.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that exceeded the limit.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class QueryLimitException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the body of a query is too large.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that is too large.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class QueryTooLargeException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The RDF graph summary API returns a read-only list of classes and predicate keys, along with counts of quads, subjects, and predicates.</p>
    # @!attribute num_distinct_subjects
    #   <p>The number of distinct subjects in the graph.</p>
    #   @return [Integer]
    # @!attribute num_distinct_predicates
    #   <p>The number of distinct predicates in the graph.</p>
    #   @return [Integer]
    # @!attribute num_quads
    #   <p>The number of quads in the graph.</p>
    #   @return [Integer]
    # @!attribute num_classes
    #   <p>The number of classes in the graph.</p>
    #   @return [Integer]
    # @!attribute classes
    #   <p>A list of the classes in the graph.</p>
    #   @return [Array<String>]
    # @!attribute predicates
    #   <p>"A list of predicates in the graph, along with the predicate counts.</p>
    #   @return [Array<Hash<String, Integer>>]
    # @!attribute subject_structures
    #   <p>This field is only present when the request mode is <code>DETAILED</code>. It contains a list of subject structures.</p>
    #   @return [Array<Types::SubjectStructure>]
    class RDFGraphSummary < Struct.new(
      :num_distinct_subjects,
      :num_distinct_predicates,
      :num_quads,
      :num_classes,
      :classes,
      :predicates,
      :subject_structures,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Payload for an RDF graph summary response.</p>
    # @!attribute version
    #   <p>The version of this graph summary response.</p>
    #   @return [String]
    # @!attribute last_statistics_computation_time
    #   <p>The timestamp, in ISO 8601 format, of the time at which Neptune last computed statistics.</p>
    #   @return [Time]
    # @!attribute graph_summary
    #   <p>The graph summary of an RDF graph. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-graph-summary.html#neptune-graph-summary-rdf-response">Graph summary response for an RDF graph</a>.</p>
    #   @return [Types::RDFGraphSummary]
    class RDFGraphSummaryValueMap < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request attempts to write to a read-only resource.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in which the parameter is missing.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ReadOnlyViolationException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Statistics for <code>REFRESH</code> mode.</p>
    # @!attribute statistics_id
    #   <p>The ID of the statistics generation run that is currently occurring.</p>
    #   @return [String]
    class RefreshStatisticsIdMap < Struct.new(
      :statistics_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module S3BucketRegion
      US_EAST_1 = 'us-east-1'
      US_EAST_2 = 'us-east-2'
      US_WEST_1 = 'us-west-1'
      US_WEST_2 = 'us-west-2'
      CA_CENTRAL_1 = 'ca-central-1'
      SA_EAST_1 = 'sa-east-1'
      EU_NORTH_1 = 'eu-north-1'
      EU_WEST_1 = 'eu-west-1'
      EU_WEST_2 = 'eu-west-2'
      EU_WEST_3 = 'eu-west-3'
      EU_CENTRAL_1 = 'eu-central-1'
      ME_SOUTH_1 = 'me-south-1'
      AF_SOUTH_1 = 'af-south-1'
      AP_EAST_1 = 'ap-east-1'
      AP_NORTHEAST_1 = 'ap-northeast-1'
      AP_NORTHEAST_2 = 'ap-northeast-2'
      AP_SOUTHEAST_1 = 'ap-southeast-1'
      AP_SOUTHEAST_2 = 'ap-southeast-2'
      AP_SOUTH_1 = 'ap-south-1'
      CN_NORTH_1 = 'cn-north-1'
      CN_NORTHWEST_1 = 'cn-northwest-1'
      US_GOV_WEST_1 = 'us-gov-west-1'
      US_GOV_EAST_1 = 'us-gov-east-1'
      CA_WEST_1 = 'ca-west-1'
      EU_SOUTH_2 = 'eu-south-2'
      IL_CENTRAL_1 = 'il-central-1'
      ME_CENTRAL_1 = 'me-central-1'
      AP_NORTHEAST_3 = 'ap-northeast-3'
      AP_SOUTHEAST_3 = 'ap-southeast-3'
      AP_SOUTHEAST_4 = 'ap-southeast-4'
      AP_SOUTHEAST_5 = 'ap-southeast-5'
      AP_SOUTHEAST_7 = 'ap-southeast-7'
      MX_CENTRAL_1 = 'mx-central-1'
      AP_EAST_2 = 'ap-east-2'
      AP_SOUTH_2 = 'ap-south-2'
      EU_CENTRAL_2 = 'eu-central-2'
    end

    # <p>Raised when there is a problem accessing Amazon S3.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class S3Exception < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the server shuts down while processing a request.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ServerShutdownException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Neptune logs are converted to SPARQL quads in the graph using the Resource Description Framework (RDF) <a href="https://www.w3.org/TR/n-quads/">N-QUADS</a> language defined in the W3C RDF 1.1 N-Quads specification</p>
    # @!attribute stmt
    #   <p>Holds an <a href="https://www.w3.org/TR/n-quads/">N-QUADS</a> statement expressing the changed quad.</p>
    #   @return [String]
    class SparqlData < Struct.new(
      :stmt,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A serialized SPARQL stream record capturing a change-log entry for the RDF graph.</p>
    # @!attribute commit_timestamp_in_millis
    #   <p>The time at which the commit for the transaction was requested, in milliseconds from the Unix epoch.</p>
    #   @return [Integer]
    # @!attribute event_id
    #   <p>The sequence identifier of the stream change record.</p>
    #   @return [Hash<String, String>]
    # @!attribute data
    #   <p>The serialized SPARQL change record. The serialization formats of each record are described in more detail in <a href="https://docs.aws.amazon.com/neptune/latest/userguide/streams-change-formats.html">Serialization Formats in Neptune Streams</a>.</p>
    #   @return [Types::SparqlData]
    # @!attribute op
    #   <p>The operation that created the change.</p>
    #   @return [String]
    # @!attribute is_last_op
    #   <p>Only present if this operation is the last one in its transaction. If present, it is set to true. It is useful for ensuring that an entire transaction is consumed.</p>
    #   @return [Boolean]
    class SparqlRecord < Struct.new(
      :commit_timestamp_in_millis,
      :event_id,
      :data,
      :op,
      :is_last_op,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source
    #   <p>The <code>source</code> parameter accepts an S3 URI that identifies a single file, multiple files, a folder, or multiple folders. Neptune loads every data file in any folder that is specified.</p> <p>The URI can be in any of the following formats.</p> <ul> <li> <p> <code>s3://(bucket_name)/(object-key-name)</code> </p> </li> <li> <p> <code>https://s3.amazonaws.com/(bucket_name)/(object-key-name)</code> </p> </li> <li> <p> <code>https://s3.us-east-1.amazonaws.com/(bucket_name)/(object-key-name)</code> </p> </li> </ul> <p>The <code>object-key-name</code> element of the URI is equivalent to the <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html#API_ListObjects_RequestParameters">prefix</a> parameter in an S3 <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html">ListObjects</a> API call. It identifies all the objects in the specified S3 bucket whose names begin with that prefix. That can be a single file or folder, or multiple files and/or folders.</p> <p>The specified folder or folders can contain multiple vertex files and multiple edge files.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the data. For more information about data formats for the Neptune <code>Loader</code> command, see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format.html">Load Data Formats</a>.</p> <p class="title"> <b>Allowed values</b> </p> <ul> <li> <p> <b> <code>csv</code> </b> for the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV data format</a>.</p> </li> <li> <p> <b> <code>opencypher</code> </b> for the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher CSV data format</a>.</p> </li> <li> <p> <b> <code>ntriples</code> </b> for the <a href="https://www.w3.org/TR/n-triples/">N-Triples RDF data format</a>.</p> </li> <li> <p> <b> <code>nquads</code> </b> for the <a href="https://www.w3.org/TR/n-quads/">N-Quads RDF data format</a>.</p> </li> <li> <p> <b> <code>rdfxml</code> </b> for the <a href="https://www.w3.org/TR/rdf-syntax-grammar/">RDF\XML RDF data format</a>.</p> </li> <li> <p> <b> <code>turtle</code> </b> for the <a href="https://www.w3.org/TR/turtle/">Turtle RDF data format</a>.</p> </li> </ul>
    #   @return [String]
    # @!attribute s3_bucket_region
    #   <p>The Amazon region of the S3 bucket. This must match the Amazon Region of the DB cluster.</p>
    #   @return [String]
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) for an IAM role to be assumed by the Neptune DB instance for access to the S3 bucket. The IAM role ARN provided here should be attached to the DB cluster (see <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-IAM-add-role-cluster.html">Adding the IAM Role to an Amazon Neptune Cluster</a>.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The load job mode.</p> <p> <i>Allowed values</i>: <code>RESUME</code>, <code>NEW</code>, <code>AUTO</code>.</p> <p> <i>Default value</i>: <code>AUTO</code>.</p> <p class="title"> <b/> </p> <ul> <li> <p> <code>RESUME</code>   –   In RESUME mode, the loader looks for a previous load from this source, and if it finds one, resumes that load job. If no previous load job is found, the loader stops.</p> <p>The loader avoids reloading files that were successfully loaded in a previous job. It only tries to process failed files. If you dropped previously loaded data from your Neptune cluster, that data is not reloaded in this mode. If a previous load job loaded all files from the same source successfully, nothing is reloaded, and the loader returns success.</p> </li> <li> <p> <code>NEW</code>   –   In NEW mode, the creates a new load request regardless of any previous loads. You can use this mode to reload all the data from a source after dropping previously loaded data from your Neptune cluster, or to load new data available at the same source.</p> </li> <li> <p> <code>AUTO</code>   –   In AUTO mode, the loader looks for a previous load job from the same source, and if it finds one, resumes that job, just as in <code>RESUME</code> mode.</p> <p>If the loader doesn't find a previous load job from the same source, it loads all data from the source, just as in <code>NEW</code> mode.</p> </li> </ul>
    #   @return [String]
    # @!attribute fail_on_error
    #   <p> <b> <code>failOnError</code> </b>   –   A flag to toggle a complete stop on an error.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"TRUE"</code>.</p> <p>When this parameter is set to <code>"FALSE"</code>, the loader tries to load all the data in the location specified, skipping any entries with errors.</p> <p>When this parameter is set to <code>"TRUE"</code>, the loader stops as soon as it encounters an error. Data loaded up to that point persists.</p>
    #   @return [Boolean]
    # @!attribute parallelism
    #   <p>The optional <code>parallelism</code> parameter can be set to reduce the number of threads used by the bulk load process.</p> <p> <i>Allowed values</i>:</p> <ul> <li> <p> <code>LOW</code> –   The number of threads used is the number of available vCPUs divided by 8.</p> </li> <li> <p> <code>MEDIUM</code> –   The number of threads used is the number of available vCPUs divided by 2.</p> </li> <li> <p> <code>HIGH</code> –   The number of threads used is the same as the number of available vCPUs.</p> </li> <li> <p> <code>OVERSUBSCRIBE</code> –   The number of threads used is the number of available vCPUs multiplied by 2. If this value is used, the bulk loader takes up all available resources.</p> <p>This does not mean, however, that the <code>OVERSUBSCRIBE</code> setting results in 100% CPU utilization. Because the load operation is I/O bound, the highest CPU utilization to expect is in the 60% to 70% range.</p> </li> </ul> <p> <i>Default value</i>: <code>HIGH</code> </p> <p>The <code>parallelism</code> setting can sometimes result in a deadlock between threads when loading openCypher data. When this happens, Neptune returns the <code>LOAD_DATA_DEADLOCK</code> error. You can generally fix the issue by setting <code>parallelism</code> to a lower setting and retrying the load command.</p>
    #   @return [String]
    # @!attribute parser_configuration
    #   <p> <b> <code>parserConfiguration</code> </b>   –   An optional object with additional parser configuration values. Each of the child parameters is also optional:</p> <p class="title"> <b/> </p> <ul> <li> <p> <b> <code>namedGraphUri</code> </b>   –   The default graph for all RDF formats when no graph is specified (for non-quads formats and NQUAD entries with no graph).</p> <p>The default is <code>https://aws.amazon.com/neptune/vocab/v01/DefaultNamedGraph</code>.</p> </li> <li> <p> <b> <code>baseUri</code> </b>   –   The base URI for RDF/XML and Turtle formats.</p> <p>The default is <code>https://aws.amazon.com/neptune/default</code>.</p> </li> <li> <p> <b> <code>allowEmptyStrings</code> </b>   –   Gremlin users need to be able to pass empty string values("") as node and edge properties when loading CSV data. If <code>allowEmptyStrings</code> is set to <code>false</code> (the default), such empty strings are treated as nulls and are not loaded.</p> <p>If <code>allowEmptyStrings</code> is set to <code>true</code>, the loader treats empty strings as valid property values and loads them accordingly.</p> </li> </ul>
    #   @return [Hash<String, String>]
    # @!attribute update_single_cardinality_properties
    #   <p> <code>updateSingleCardinalityProperties</code> is an optional parameter that controls how the bulk loader treats a new value for single-cardinality vertex or edge properties. This is not supported for loading openCypher data.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"FALSE"</code>.</p> <p>By default, or when <code>updateSingleCardinalityProperties</code> is explicitly set to <code>"FALSE"</code>, the loader treats a new value as an error, because it violates single cardinality.</p> <p>When <code>updateSingleCardinalityProperties</code> is set to <code>"TRUE"</code>, on the other hand, the bulk loader replaces the existing value with the new one. If multiple edge or single-cardinality vertex property values are provided in the source file(s) being loaded, the final value at the end of the bulk load could be any one of those new values. The loader only guarantees that the existing value has been replaced by one of the new ones.</p>
    #   @return [Boolean]
    # @!attribute queue_request
    #   <p>This is an optional flag parameter that indicates whether the load request can be queued up or not. </p> <p>You don't have to wait for one load job to complete before issuing the next one, because Neptune can queue up as many as 64 jobs at a time, provided that their <code>queueRequest</code> parameters are all set to <code>"TRUE"</code>. The queue order of the jobs will be first-in-first-out (FIFO).</p> <p>If the <code>queueRequest</code> parameter is omitted or set to <code>"FALSE"</code>, the load request will fail if another load job is already running.</p> <p> <i>Allowed values</i>: <code>"TRUE"</code>, <code>"FALSE"</code>.</p> <p> <i>Default value</i>: <code>"FALSE"</code>.</p>
    #   @return [Boolean]
    # @!attribute dependencies
    #   <p>This is an optional parameter that can make a queued load request contingent on the successful completion of one or more previous jobs in the queue.</p> <p>Neptune can queue up as many as 64 load requests at a time, if their <code>queueRequest</code> parameters are set to <code>"TRUE"</code>. The <code>dependencies</code> parameter lets you make execution of such a queued request dependent on the successful completion of one or more specified previous requests in the queue.</p> <p>For example, if load <code>Job-A</code> and <code>Job-B</code> are independent of each other, but load <code>Job-C</code> needs <code>Job-A</code> and <code>Job-B</code> to be finished before it begins, proceed as follows:</p> <ol> <li> <p>Submit <code>load-job-A</code> and <code>load-job-B</code> one after another in any order, and save their load-ids.</p> </li> <li> <p>Submit <code>load-job-C</code> with the load-ids of the two jobs in its <code>dependencies</code> field:</p> </li> </ol> <p>Because of the <code>dependencies</code> parameter, the bulk loader will not start <code>Job-C</code> until <code>Job-A</code> and <code>Job-B</code> have completed successfully. If either one of them fails, Job-C will not be executed, and its status will be set to <code>LOAD_FAILED_BECAUSE_DEPENDENCY_NOT_SATISFIED</code>.</p> <p>You can set up multiple levels of dependency in this way, so that the failure of one job will cause all requests that are directly or indirectly dependent on it to be cancelled.</p>
    #   @return [Array<String>]
    # @!attribute user_provided_edge_ids
    #   <p>This parameter is required only when loading openCypher data that contains relationship IDs. It must be included and set to <code>True</code> when openCypher relationship IDs are explicitly provided in the load data (recommended).</p> <p>When <code>userProvidedEdgeIds</code> is absent or set to <code>True</code>, an <code>:ID</code> column must be present in every relationship file in the load.</p> <p>When <code>userProvidedEdgeIds</code> is present and set to <code>False</code>, relationship files in the load <b>must not</b> contain an <code>:ID</code> column. Instead, the Neptune loader automatically generates an ID for each relationship.</p> <p>It's useful to provide relationship IDs explicitly so that the loader can resume loading after error in the CSV data have been fixed, without having to reload any relationships that have already been loaded. If relationship IDs have not been explicitly assigned, the loader cannot resume a failed load if any relationship file has had to be corrected, and must instead reload all the relationships.</p>
    #   @return [Boolean]
    class StartLoaderJobInput < Struct.new(
      :source,
      :format,
      :s3_bucket_region,
      :iam_role_arn,
      :mode,
      :fail_on_error,
      :parallelism,
      :parser_configuration,
      :update_single_cardinality_properties,
      :queue_request,
      :dependencies,
      :user_provided_edge_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The HTTP return code indicating the status of the load job.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Contains a <code>loadId</code> name-value pair that provides an identifier for the load operation.</p>
    #   @return [Hash<String, String>]
    class StartLoaderJobOutput < Struct.new(
      :status,
      :payload,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A unique identifier for the new job. The default is an autogenerated UUID.</p>
    #   @return [String]
    # @!attribute previous_data_processing_job_id
    #   <p>The job ID of a completed data processing job run on an earlier version of the data.</p>
    #   @return [String]
    # @!attribute input_data_s3_location
    #   <p>The URI of the Amazon S3 location where you want SageMaker to download the data needed to run the data processing job.</p>
    #   @return [String]
    # @!attribute processed_data_s3_location
    #   <p>The URI of the Amazon S3 location where you want SageMaker to save the results of a data processing job.</p>
    #   @return [String]
    # @!attribute sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that SageMaker can assume to perform tasks on your behalf. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute processing_instance_type
    #   <p>The type of ML instance used during data processing. Its memory should be large enough to hold the processed dataset. The default is the smallest ml.r5 type whose memory is ten times larger than the size of the exported graph data on disk.</p>
    #   @return [String]
    # @!attribute processing_instance_volume_size_in_gb
    #   <p>The disk volume size of the processing instance. Both input data and processed data are stored on disk, so the volume size must be large enough to hold both data sets. The default is 0. If not specified or 0, Neptune ML chooses the volume size automatically based on the data size.</p>
    #   @return [Integer]
    # @!attribute processing_time_out_in_seconds
    #   <p>Timeout in seconds for the data processing job. The default is 86,400 (1 day).</p>
    #   @return [Integer]
    # @!attribute model_type
    #   <p>One of the two model types that Neptune ML currently supports: heterogeneous graph models (<code>heterogeneous</code>), and knowledge graph (<code>kge</code>). The default is none. If not specified, Neptune ML chooses the model type automatically based on the data.</p>
    #   @return [String]
    # @!attribute config_file_name
    #   <p>A data specification file that describes how to load the exported graph data for training. The file is automatically generated by the Neptune export toolkit. The default is <code>training-data-configuration.json</code>.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    #   @return [String]
    # @!attribute s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (Amazon KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    #   @return [String]
    class StartMLDataProcessingJobInput < Struct.new(
      :id,
      :previous_data_processing_job_id,
      :input_data_s3_location,
      :processed_data_s3_location,
      :sagemaker_iam_role_arn,
      :neptune_iam_role_arn,
      :processing_instance_type,
      :processing_instance_volume_size_in_gb,
      :processing_time_out_in_seconds,
      :model_type,
      :config_file_name,
      :subnets,
      :security_group_ids,
      :volume_encryption_kms_key,
      :s3_output_encryption_kms_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the new data processing job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the data processing job.</p>
    #   @return [String]
    # @!attribute creation_time_in_millis
    #   <p>The time it took to create the new processing job, in milliseconds.</p>
    #   @return [Integer]
    class StartMLDataProcessingJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A unique identifier for the new job. The default is An autogenerated UUID.</p>
    #   @return [String]
    # @!attribute previous_model_training_job_id
    #   <p>The job ID of a completed model-training job that you want to update incrementally based on updated data.</p>
    #   @return [String]
    # @!attribute data_processing_job_id
    #   <p>The job ID of the completed data-processing job that has created the data that the training will work with.</p>
    #   @return [String]
    # @!attribute train_model_s3_location
    #   <p>The location in Amazon S3 where the model artifacts are to be stored.</p>
    #   @return [String]
    # @!attribute sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution.This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute base_processing_instance_type
    #   <p>The type of ML instance used in preparing and managing training of ML models. This is a CPU instance chosen based on memory requirements for processing the training data and model.</p>
    #   @return [String]
    # @!attribute training_instance_type
    #   <p>The type of ML instance used for model training. All Neptune ML models support CPU, GPU, and multiGPU training. The default is <code>ml.p3.2xlarge</code>. Choosing the right instance type for training depends on the task type, graph size, and your budget.</p>
    #   @return [String]
    # @!attribute training_instance_volume_size_in_gb
    #   <p>The disk volume size of the training instance. Both input data and the output model are stored on disk, so the volume size must be large enough to hold both data sets. The default is 0. If not specified or 0, Neptune ML selects a disk volume size based on the recommendation generated in the data processing step.</p>
    #   @return [Integer]
    # @!attribute training_time_out_in_seconds
    #   <p>Timeout in seconds for the training job. The default is 86,400 (1 day).</p>
    #   @return [Integer]
    # @!attribute max_hpo_number_of_training_jobs
    #   <p>Maximum total number of training jobs to start for the hyperparameter tuning job. The default is 2. Neptune ML automatically tunes the hyperparameters of the machine learning model. To obtain a model that performs well, use at least 10 jobs (in other words, set <code>maxHPONumberOfTrainingJobs</code> to 10). In general, the more tuning runs, the better the results.</p>
    #   @return [Integer]
    # @!attribute max_hpo_parallel_training_jobs
    #   <p>Maximum number of parallel training jobs to start for the hyperparameter tuning job. The default is 2. The number of parallel jobs you can run is limited by the available resources on your training instance.</p>
    #   @return [Integer]
    # @!attribute subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    #   @return [String]
    # @!attribute s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    #   @return [String]
    # @!attribute enable_managed_spot_training
    #   <p>Optimizes the cost of training machine-learning models by using Amazon Elastic Compute Cloud spot instances. The default is <code>False</code>.</p>
    #   @return [Boolean]
    # @!attribute custom_model_training_parameters
    #   <p>The configuration for custom model training. This is a JSON object.</p>
    #   @return [Types::CustomModelTrainingParameters]
    class StartMLModelTrainingJobInput < Struct.new(
      :id,
      :previous_model_training_job_id,
      :data_processing_job_id,
      :train_model_s3_location,
      :sagemaker_iam_role_arn,
      :neptune_iam_role_arn,
      :base_processing_instance_type,
      :training_instance_type,
      :training_instance_volume_size_in_gb,
      :training_time_out_in_seconds,
      :max_hpo_number_of_training_jobs,
      :max_hpo_parallel_training_jobs,
      :subnets,
      :security_group_ids,
      :volume_encryption_kms_key,
      :s3_output_encryption_kms_key,
      :enable_managed_spot_training,
      :custom_model_training_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the new model training job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the new model training job.</p>
    #   @return [String]
    # @!attribute creation_time_in_millis
    #   <p>The model training job creation time, in milliseconds.</p>
    #   @return [Integer]
    class StartMLModelTrainingJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>A unique identifier for the new job. The default is an autogenerated UUID.</p>
    #   @return [String]
    # @!attribute data_processing_job_id
    #   <p>The job ID of a completed data-processing job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    #   @return [String]
    # @!attribute ml_model_training_job_id
    #   <p>The job ID of a completed model-training job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    #   @return [String]
    # @!attribute training_job_name
    #   <p>The name of a completed SageMaker training job. You must include either <code>dataProcessingJobId</code> and a <code>mlModelTrainingJobId</code>, or a <code>trainingJobName</code>.</p>
    #   @return [String]
    # @!attribute model_transform_output_s3_location
    #   <p>The location in Amazon S3 where the model artifacts are to be stored.</p>
    #   @return [String]
    # @!attribute sagemaker_iam_role_arn
    #   <p>The ARN of an IAM role for SageMaker execution. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute neptune_iam_role_arn
    #   <p>The ARN of an IAM role that provides Neptune access to SageMaker and Amazon S3 resources. This must be listed in your DB cluster parameter group or an error will occur.</p>
    #   @return [String]
    # @!attribute custom_model_transform_parameters
    #   <p>Configuration information for a model transform using a custom model. The <code>customModelTransformParameters</code> object contains the following fields, which must have values compatible with the saved model parameters from the training job:</p>
    #   @return [Types::CustomModelTransformParameters]
    # @!attribute base_processing_instance_type
    #   <p>The type of ML instance used in preparing and managing training of ML models. This is an ML compute instance chosen based on memory requirements for processing the training data and model.</p>
    #   @return [String]
    # @!attribute base_processing_instance_volume_size_in_gb
    #   <p>The disk volume size of the training instance in gigabytes. The default is 0. Both input data and the output model are stored on disk, so the volume size must be large enough to hold both data sets. If not specified or 0, Neptune ML selects a disk volume size based on the recommendation generated in the data processing step.</p>
    #   @return [Integer]
    # @!attribute subnets
    #   <p>The IDs of the subnets in the Neptune VPC. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The VPC security group IDs. The default is None.</p>
    #   @return [Array<String>]
    # @!attribute volume_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt data on the storage volume attached to the ML compute instances that run the training job. The default is None.</p>
    #   @return [String]
    # @!attribute s3_output_encryption_kms_key
    #   <p>The Amazon Key Management Service (KMS) key that SageMaker uses to encrypt the output of the processing job. The default is none.</p>
    #   @return [String]
    class StartMLModelTransformJobInput < Struct.new(
      :id,
      :data_processing_job_id,
      :ml_model_training_job_id,
      :training_job_name,
      :model_transform_output_s3_location,
      :sagemaker_iam_role_arn,
      :neptune_iam_role_arn,
      :custom_model_transform_parameters,
      :base_processing_instance_type,
      :base_processing_instance_volume_size_in_gb,
      :subnets,
      :security_group_ids,
      :volume_encryption_kms_key,
      :s3_output_encryption_kms_key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique ID of the new model transform job.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the model transform job.</p>
    #   @return [String]
    # @!attribute creation_time_in_millis
    #   <p>The creation time of the model transform job, in milliseconds.</p>
    #   @return [Integer]
    class StartMLModelTransformJobOutput < Struct.new(
      :id,
      :arn,
      :creation_time_in_millis,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains statistics information. The DFE engine uses information about the data in your Neptune graph to make effective trade-offs when planning query execution. This information takes the form of statistics that include so-called characteristic sets and predicate statistics that can guide query planning. See <a href="https://docs.aws.amazon.com/neptune/latest/userguide/neptune-dfe-statistics.html">Managing statistics for the Neptune DFE to use</a>.</p>
    # @!attribute auto_compute
    #   <p>Indicates whether or not automatic statistics generation is enabled.</p>
    #   @return [Boolean]
    # @!attribute active
    #   <p>Indicates whether or not DFE statistics generation is enabled at all.</p>
    #   @return [Boolean]
    # @!attribute statistics_id
    #   <p>Reports the ID of the current statistics generation run. A value of -1 indicates that no statistics have been generated.</p>
    #   @return [String]
    # @!attribute date
    #   <p>The UTC time at which DFE statistics have most recently been generated.</p>
    #   @return [Time]
    # @!attribute note
    #   <p>A note about problems in the case where statistics are invalid.</p>
    #   @return [String]
    # @!attribute signature_info
    #   <p>A StatisticsSummary structure that contains:</p> <ul> <li> <p> <code>signatureCount</code> - The total number of signatures across all characteristic sets.</p> </li> <li> <p> <code>instanceCount</code> - The total number of characteristic-set instances.</p> </li> <li> <p> <code>predicateCount</code> - The total number of unique predicates.</p> </li> </ul>
    #   @return [Types::StatisticsSummary]
    class Statistics < Struct.new(
      :auto_compute,
      :active,
      :statistics_id,
      :date,
      :note,
      :signature_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StatisticsAutoGenerationMode
      DISABLE_AUTOCOMPUTE = 'disableAutoCompute'
      ENABLE_AUTOCOMPUTE = 'enableAutoCompute'
      REFRESH = 'refresh'
    end

    # <p>Raised when statistics needed to satisfy a request are not available.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class StatisticsNotAvailableException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the characteristic sets generated in the statistics.</p>
    # @!attribute signature_count
    #   <p>The total number of signatures across all characteristic sets.</p>
    #   @return [Integer]
    # @!attribute instance_count
    #   <p>The total number of characteristic-set instances.</p>
    #   @return [Integer]
    # @!attribute predicate_count
    #   <p>The total number of unique predicates.</p>
    #   @return [Integer]
    class StatisticsSummary < Struct.new(
      :signature_count,
      :instance_count,
      :predicate_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when stream records requested by a query cannot be found.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class StreamRecordsNotFoundException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A subject structure.</p>
    # @!attribute count
    #   <p>Number of occurrences of this specific structure.</p>
    #   @return [Integer]
    # @!attribute predicates
    #   <p>A list of predicates present in this specific structure.</p>
    #   @return [Array<String>]
    class SubjectStructure < Struct.new(
      :count,
      :predicates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the rate of requests exceeds the maximum throughput. Requests can be retried after encountering this exception.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that could not be processed for this reason.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the an operation exceeds the time limit allowed for it.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that could not be processed for this reason.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class TimeLimitExceededException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when the number of requests being processed exceeds the limit.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request that could not be processed for this reason.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Raised when a request attempts to initiate an operation that is not supported.</p>
    # @!attribute detailed_message
    #   <p>A detailed message describing the problem.</p>
    #   @return [String]
    # @!attribute request_id
    #   <p>The ID of the request in question.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code returned with the exception.</p>
    #   @return [String]
    class UnsupportedOperationException < Struct.new(
      :detailed_message,
      :request_id,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
